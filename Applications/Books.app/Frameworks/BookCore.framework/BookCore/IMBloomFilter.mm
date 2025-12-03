@interface IMBloomFilter
- (BOOL)mightContainKey:(const void *)key;
- (IMBloomFilter)initWithCoder:(id)coder;
- (IMBloomFilter)initWithSpecification:(id *)specification hashProvider:(id)provider;
- (NSString)usageDescription;
- (void)addKey:(const void *)key;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMBloomFilter

- (IMBloomFilter)initWithSpecification:(id *)specification hashProvider:(id)provider
{
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = IMBloomFilter;
  v7 = [(IMBloomFilter *)&v15 init];
  v8 = v7;
  if (v7)
  {
    v9 = *&specification->var0;
    v7->_specification.numberOfHashFunctions = specification->var2;
    *&v7->_specification.expectedNumberOfInsertions = v9;
    v10 = [providerCopy copy];
    hashProvider = v8->_hashProvider;
    v8->_hashProvider = v10;

    v12 = v8->_specification.loadFactor * v8->_specification.expectedNumberOfInsertions * 0.125;
    if (v12 < 1.0)
    {
      v12 = 1.0;
    }

    v13 = malloc_good_size(v12);
    v8->_bitVector.byteCount = v13;
    v8->_bitVector.bytes = malloc_type_calloc(1uLL, v13, 0x2E4EB9DAuLL);
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBytes:&self->_specification length:24 forKey:@"specification"];
  [coderCopy encodeBytes:self->_bitVector.bytes length:self->_bitVector.byteCount forKey:@"bytes"];
}

- (IMBloomFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = IMBloomFilter;
  v5 = [(IMBloomFilter *)&v17 init];
  if (v5)
  {
    v16 = 0;
    v6 = [coderCopy decodeBytesForKey:@"specification" returnedLength:&v16];
    v7 = v6[2];
    *&v5->_specification.expectedNumberOfInsertions = *v6;
    v5->_specification.numberOfHashFunctions = v7;
    size = 0;
    v8 = [coderCopy decodeBytesForKey:@"bytes" returnedLength:&size];
    v9 = size;
    v5->_bitVector.byteCount = size;
    v10 = malloc_type_malloc(v9, 0xEF4A4EBCuLL);
    v5->_bitVector.bytes = v10;
    memcpy(v10, v8, v5->_bitVector.byteCount);
    v11 = IMBloomFilterCharacterHashProvider();
    v12 = [v11 copy];
    hashProvider = v5->_hashProvider;
    v5->_hashProvider = v12;
  }

  return v5;
}

- (void)dealloc
{
  bytes = self->_bitVector.bytes;
  if (bytes)
  {
    free(bytes);
    self->_bitVector.bytes = 0;
  }

  v4.receiver = self;
  v4.super_class = IMBloomFilter;
  [(IMBloomFilter *)&v4 dealloc];
}

- (void)addKey:(const void *)key
{
  memset(v8, 0, sizeof(v8));
  sub_177428(v8, self);
  if (self->_specification.numberOfHashFunctions >= 1)
  {
    v4 = 0;
    v5 = v8 + 1;
    do
    {
      v6 = 1 << *(v5 - 8);
      v7 = *v5;
      v5 += 2;
      self->_bitVector.bytes[v7] |= v6;
      ++v4;
    }

    while (v4 < self->_specification.numberOfHashFunctions);
  }
}

- (BOOL)mightContainKey:(const void *)key
{
  memset(v9, 0, sizeof(v9));
  sub_177428(v9, self);
  v4 = (self->_specification.numberOfHashFunctions & ~(self->_specification.numberOfHashFunctions >> 63)) + 1;
  v5 = v9 + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v6 = *v5;
    v7 = *(v5 - 8);
    v5 += 2;
  }

  while (((self->_bitVector.bytes[v6] >> v7) & 1) != 0);
  return v4 == 0;
}

- (NSString)usageDescription
{
  byteCount = self->_bitVector.byteCount;
  if (byteCount)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = v4;
      v6 = vdup_n_s32(self->_bitVector.bytes[v3]);
      v7 = 8;
      v8 = 0x100000000;
      do
      {
        v5 = vaddw_u32(v5, (*&vshl_u32(v6, vneg_s32(v8)) & 0xFFFFFF01FFFFFF01));
        v8 = vadd_s32(v8, 0x200000002);
        v7 -= 2;
      }

      while (v7);
      v9 = vaddvq_s64(v5);
      v4 = v9;
      ++v3;
    }

    while (v3 != byteCount);
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  return [NSString stringWithFormat:@"%.2f%% of bits turned on.", ((v10 / (8 * byteCount)) * 100.0)];
}

@end