@interface HashDigest
+ (id)_stringRepresentationForDigest:(char *)a3 length:(unsigned int)a4;
- (HashDigest)initWithDigestType:(int64_t)a3;
- (id)finalAndCompute;
- (void)dealloc;
- (void)updateWithBuffer:(const char *)a3 length:(unint64_t)a4;
- (void)updateWithData:(id)a3;
@end

@implementation HashDigest

- (HashDigest)initWithDigestType:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = HashDigest;
  v4 = [(HashDigest *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_digestType = a3;
    switch(a3)
    {
      case 2:
        v8 = malloc_type_calloc(1uLL, 0x68uLL, 0x1000040ED882C02uLL);
        v5->_context = v8;
        CC_SHA256_Init(v8);
        break;
      case 1:
        v7 = malloc_type_calloc(1uLL, 0x60uLL, 0x1000040565EDBD2uLL);
        v5->_context = v7;
        CC_SHA1_Init(v7);
        break;
      case 0:
        v6 = malloc_type_calloc(1uLL, 0x5CuLL, 0x100004034A301B9uLL);
        v5->_context = v6;
        CC_MD5_Init(v6);
        break;
    }
  }

  return v5;
}

- (void)dealloc
{
  free(self->_context);
  v3.receiver = self;
  v3.super_class = HashDigest;
  [(HashDigest *)&v3 dealloc];
}

- (id)finalAndCompute
{
  digestType = self->_digestType;
  if (digestType == 2)
  {
    v5 = 0u;
    v6 = 0u;
    CC_SHA256_Final(&v5, self->_context);
    v3 = 32;
  }

  else if (digestType == 1)
  {
    v5 = 0uLL;
    LODWORD(v6) = 0;
    CC_SHA1_Final(&v5, self->_context);
    v3 = 20;
  }

  else
  {
    if (digestType)
    {
      goto LABEL_8;
    }

    v5 = 0uLL;
    CC_MD5_Final(&v5, self->_context);
    v3 = 16;
  }

  a2 = [HashDigest _stringRepresentationForDigest:&v5 length:v3];
LABEL_8:

  return a2;
}

- (void)updateWithBuffer:(const char *)a3 length:(unint64_t)a4
{
  digestType = self->_digestType;
  switch(digestType)
  {
    case 2:
      CC_SHA256_Update(self->_context, a3, a4);
      break;
    case 1:
      CC_SHA1_Update(self->_context, a3, a4);
      break;
    case 0:
      CC_MD5_Update(self->_context, a3, a4);
      break;
  }
}

- (void)updateWithData:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10007D2B0;
  v4[3] = &unk_100383270;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  [v3 lib_enumerateSubdataWithOffset:0 length:0xFFFFFFFFLL usingBlock:v4];
}

+ (id)_stringRepresentationForDigest:(char *)a3 length:(unsigned int)a4
{
  v6 = [[NSMutableString alloc] initWithCapacity:2 * a4];
  if (a4)
  {
    v7 = a4;
    do
    {
      v8 = *a3++;
      [v6 appendFormat:@"%02x", v8];
      --v7;
    }

    while (v7);
  }

  v9 = [v6 copy];

  return v9;
}

@end