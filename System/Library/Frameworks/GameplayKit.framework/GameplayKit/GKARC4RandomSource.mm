@interface GKARC4RandomSource
- (BOOL)nextBool;
- (GKARC4RandomSource)init;
- (GKARC4RandomSource)initWithCoder:(id)coder;
- (GKARC4RandomSource)initWithSeed:(NSData *)seed;
- (float)nextUniform;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)nextInt;
- (unint64_t)nextBits:(int)bits;
- (unint64_t)nextIntWithUpperBound:(unint64_t)bound;
- (void)dealloc;
- (void)dropValuesWithCount:(NSUInteger)count;
- (void)encodeWithCoder:(id)coder;
- (void)setSeed:(NSData *)seed;
@end

@implementation GKARC4RandomSource

- (GKARC4RandomSource)init
{
  v3 = malloc_type_malloc(0x10uLL, 0xC4350870uLL);
  if (SecRandomCopyBytes(0, 0x10uLL, v3))
  {
    v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"failed to generate secure random bytes" userInfo:MEMORY[0x277CBEC10]];
    objc_exception_throw(v7);
  }

  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v3 length:16 freeWhenDone:1];
  v5 = [(GKARC4RandomSource *)self initWithSeed:v4];

  return v5;
}

- (GKARC4RandomSource)initWithSeed:(NSData *)seed
{
  v4 = seed;
  v11.receiver = self;
  v11.super_class = GKARC4RandomSource;
  v5 = [(GKRandomSource *)&v11 init];
  if (v5)
  {
    v6 = malloc_type_malloc(0x10uLL, 0x1010040466105CCuLL);
    v5->_state = v6;
    if (v6)
    {
      v7 = v6;
      *&v6->var0 = 0;
      v8 = malloc_type_malloc(0x100uLL, 0x3DED560uLL);
      v9 = 0;
      v7->var2 = v8;
      do
      {
        v7->var2[v9] = v9;
        ++v9;
      }

      while (v9 != 256);
    }

    [(GKARC4RandomSource *)v5 setSeed:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_alloc(objc_opt_class()) initWithSeed:self->_seed];
  state = self->_state;
  v6 = *(result + 1);
  *v6 = *&state->var0;
  v7 = v6[1];
  var2 = state->var2;
  v10 = *(var2 + 8);
  v9 = *(var2 + 9);
  v11 = *(var2 + 11);
  v7[10] = *(var2 + 10);
  v7[11] = v11;
  v7[8] = v10;
  v7[9] = v9;
  v13 = *(var2 + 4);
  v12 = *(var2 + 5);
  v14 = *(var2 + 7);
  v7[6] = *(var2 + 6);
  v7[7] = v14;
  v7[4] = v13;
  v7[5] = v12;
  v16 = *var2;
  v15 = *(var2 + 1);
  v17 = *(var2 + 3);
  v7[2] = *(var2 + 2);
  v7[3] = v17;
  *v7 = v16;
  v7[1] = v15;
  v18 = *(var2 + 15);
  v20 = *(var2 + 12);
  v19 = *(var2 + 13);
  v7[14] = *(var2 + 14);
  v7[15] = v18;
  v7[12] = v20;
  v7[13] = v19;
  return result;
}

- (GKARC4RandomSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(GKARC4RandomSource *)self init];
  if (v5)
  {
    v6 = malloc_type_malloc(0x10uLL, 0x1010040466105CCuLL);
    v5->_state = v6;
    if (v6)
    {
      v7 = v6;
      *&v6->var0 = 0;
      v8 = malloc_type_malloc(0x100uLL, 0x3DED560uLL);
      v9 = 0;
      v7->var2 = v8;
      do
      {
        v7->var2[v9] = v9;
        ++v9;
      }

      while (v9 != 256);
    }

    v5->_state->var0 = [coderCopy decodeIntForKey:@"i"];
    v5->_state->var1 = [coderCopy decodeIntForKey:@"j"];
    v13 = 0;
    v10 = [coderCopy decodeBytesForKey:@"bytes" returnedLength:&v13];
    if (v13 >= 0x100)
    {
      v11 = 256;
    }

    else
    {
      v11 = v13;
    }

    memcpy(v5->_state->var2, v10, v11);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GKARC4RandomSource;
  coderCopy = coder;
  [(GKRandomSource *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt:self->_state->var0 forKey:{@"i", v5.receiver, v5.super_class}];
  [coderCopy encodeInt:self->_state->var1 forKey:@"j"];
  [coderCopy encodeBytes:self->_state->var2 length:256 forKey:@"bytes"];
}

- (void)dealloc
{
  state = self->_state;
  if (state->var2)
  {
    free(state->var2);
    state = self->_state;
  }

  free(state);
  v4.receiver = self;
  v4.super_class = GKARC4RandomSource;
  [(GKARC4RandomSource *)&v4 dealloc];
}

- (void)setSeed:(NSData *)seed
{
  v13 = seed;
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithData:v13];
  v5 = self->_seed;
  self->_seed = v4;

  state = self->_state;
  bytes = [(NSData *)self->_seed bytes];
  v8 = [(NSData *)self->_seed length];
  v9 = 0;
  v10 = 0;
  var2 = state->var2;
  do
  {
    v12 = var2[v9];
    v10 += v12 + bytes[v9 % v8];
    var2[v9] = var2[v10];
    var2[v10] = v12;
    ++v9;
  }

  while (v9 != 255);
}

- (unint64_t)nextBits:(int)bits
{
  v24 = *MEMORY[0x277D85DE8];
  if (bits < 1)
  {
    result = 0;
    v22 = *MEMORY[0x277D85DE8];
  }

  else
  {
    if (bits >= 0x40)
    {
      bitsCopy = 64;
    }

    else
    {
      bitsCopy = bits;
    }

    state = self->_state;
    v5 = (bitsCopy + 7) >> 3;
    var2 = state->var2;
    var0 = state->var0;
    v8 = (state->var0 + 1);
    v9 = var2[v8];
    v10 = v9 + LOBYTE(state->var1);
    var2[v8] = var2[v10];
    var2[v10] = v9;
    v23[0] = var2[(var2[v8] + v9)];
    if (v5 != 1)
    {
      v8 = (var0 + 2);
      v11 = var2[v8];
      v10 += v11;
      var2[v8] = var2[v10];
      var2[v10] = v11;
      v23[1] = var2[(var2[v8] + v11)];
      if (v5 != 2)
      {
        v8 = (var0 + 3);
        v12 = var2[v8];
        v10 += v12;
        var2[v8] = var2[v10];
        var2[v10] = v12;
        v23[2] = var2[(var2[v8] + v12)];
        if (v5 != 3)
        {
          v8 = (var0 + 4);
          v13 = var2[v8];
          v10 += v13;
          var2[v8] = var2[v10];
          var2[v10] = v13;
          v23[3] = var2[(var2[v8] + v13)];
          if (v5 != 4)
          {
            v8 = (var0 + 5);
            v14 = var2[v8];
            v10 += v14;
            var2[v8] = var2[v10];
            var2[v10] = v14;
            v23[4] = var2[(var2[v8] + v14)];
            if (v5 != 5)
            {
              v8 = (var0 + 6);
              v15 = var2[v8];
              v10 += v15;
              var2[v8] = var2[v10];
              var2[v10] = v15;
              v23[5] = var2[(var2[v8] + v15)];
              if (v5 != 6)
              {
                v8 = (var0 + 7);
                v16 = var2[v8];
                v10 += v16;
                var2[v8] = var2[v10];
                var2[v10] = v16;
                v23[6] = var2[(var2[v8] + v16)];
                if (v5 != 7)
                {
                  v8 = (var0 + 8);
                  v17 = var2[v8];
                  v10 += v17;
                  var2[v8] = var2[v10];
                  var2[v10] = v17;
                  v23[7] = var2[(var2[v8] + v17)];
                }
              }
            }
          }
        }
      }
    }

    v18 = 0;
    v19 = 0;
    state->var0 = v8;
    state->var1 = v10;
    do
    {
      v19 = v23[v18++] | (v19 << 8);
    }

    while (v5 != v18);
    result = v19 >> (((bitsCopy + 7) & 0xF8u) - bitsCopy);
    v21 = *MEMORY[0x277D85DE8];
  }

  return result;
}

- (int64_t)nextInt
{
  state = self->_state;
  var2 = state->var2;
  var0 = state->var0;
  v5 = (var0 + 1);
  v6 = var2[v5];
  v7 = v6 + LOBYTE(state->var1);
  var2[v5] = var2[v7];
  var2[v7] = v6;
  v8 = (var2[v5] + v6);
  v9 = (var0 + 2);
  v10 = var2[v9];
  v11 = v10 + v7;
  LODWORD(v8) = var2[v8];
  var2[v9] = var2[v11];
  var2[v11] = v10;
  v12 = var2[(var2[v9] + v10)];
  v13 = (var0 + 3);
  v14 = var2[v13];
  v15 = v14 + v11;
  var2[v13] = var2[v15];
  var2[v15] = v14;
  v16 = var2[(var2[v13] + v14)];
  v17 = (var0 + 4);
  v18 = var2[v17];
  v19 = v18 + v15;
  var2[v17] = var2[v19];
  var2[v19] = v18;
  v20 = var2[(var2[v17] + v18)];
  state->var0 = v17;
  state->var1 = v19;
  return (v8 << 24) | (v12 << 16) | (v16 << 8) | v20;
}

- (unint64_t)nextIntWithUpperBound:(unint64_t)bound
{
  if (bound < 2)
  {
    return 0;
  }

  if ((bound & (bound - 1)) != 0)
  {
    do
    {
      state = self->_state;
      var2 = state->var2;
      var0 = state->var0;
      v26 = (var0 + 1);
      v27 = var2[v26];
      v28 = v27 + LOBYTE(state->var1);
      var2[v26] = var2[v28];
      var2[v28] = v27;
      v29 = var2[(var2[v26] + v27)];
      v30 = (var0 + 2);
      v31 = var2[v30];
      v32 = v31 + v28;
      var2[v30] = var2[v32];
      var2[v32] = v31;
      v33 = var2[(var2[v30] + v31)];
      v34 = (var0 + 3);
      v35 = var2[v34];
      v36 = v35 + v32;
      var2[v34] = var2[v36];
      var2[v36] = v35;
      v37 = var2[(var2[v34] + v35)];
      v38 = (var0 + 4);
      v39 = var2[v38];
      v40 = v39 + v36;
      var2[v38] = var2[v40];
      var2[v40] = v39;
      v41 = var2[(var2[v38] + v39)];
      state->var0 = v38;
      state->var1 = v40;
      v42 = (v29 << 24) | (v33 << 16) | (v37 << 8) | v41;
    }

    while (bound - 1 + v42 < v42 % bound);
    return v42 % bound;
  }

  else
  {
    v4 = self->_state;
    v5 = v4->var2;
    v6 = v4->var0;
    v7 = (v6 + 1);
    v8 = v5[v7];
    v9 = v8 + LOBYTE(v4->var1);
    v5[v7] = v5[v9];
    v5[v9] = v8;
    v10 = v5[(v5[v7] + v8)];
    v11 = (v6 + 2);
    v12 = v5[v11];
    v13 = v12 + v9;
    v5[v11] = v5[v13];
    v5[v13] = v12;
    v14 = v5[(v5[v11] + v12)];
    v15 = (v6 + 3);
    v16 = v5[v15];
    v17 = v16 + v13;
    v5[v15] = v5[v17];
    v5[v17] = v16;
    v18 = v5[(v5[v15] + v16)];
    v19 = (v6 + 4);
    v20 = v5[v19];
    v21 = v20 + v17;
    v5[v19] = v5[v21];
    v5[v21] = v20;
    v22 = v5[(v5[v19] + v20)];
    v4->var0 = v19;
    v4->var1 = v21;
    return (((v10 << 24) | (v14 << 16) | (v18 << 8) | v22) * bound) >> 32;
  }
}

- (float)nextUniform
{
  state = self->_state;
  var2 = state->var2;
  var0 = state->var0;
  v5 = (var0 + 1);
  v6 = var2[v5];
  v7 = v6 + LOBYTE(state->var1);
  var2[v5] = var2[v7];
  var2[v7] = v6;
  LODWORD(v5) = var2[(var2[v5] + v6)];
  v8 = (var0 + 2);
  v9 = var2[v8];
  v10 = v9 + v7;
  var2[v8] = var2[v10];
  var2[v10] = v9;
  LODWORD(v8) = var2[(var2[v8] + v9)];
  v11 = (var0 + 3);
  v12 = var2[v11];
  v13 = v12 + v10;
  var2[v11] = var2[v13];
  var2[v13] = v12;
  LODWORD(var2) = var2[(var2[v11] + v12)];
  state->var0 = v11;
  state->var1 = v13;
  return ((v5 << 16) | (v8 << 8) | var2) * 0.000000059605;
}

- (BOOL)nextBool
{
  state = self->_state;
  var2 = state->var2;
  v4 = (state->var0 + 1);
  v5 = var2[v4];
  v6 = v5 + LOBYTE(state->var1);
  var2[v4] = var2[v6];
  var2[v6] = v5;
  LOBYTE(var2) = var2[(var2[v4] + v5)];
  state->var0 = v4;
  state->var1 = v6;
  return var2 & 1;
}

- (void)dropValuesWithCount:(NSUInteger)count
{
  state = self->_state;
  LODWORD(v5) = state->var0;
  var1 = state->var1;
  if (count)
  {
    var2 = state->var2;
    do
    {
      v5 = (v5 + 1);
      v7 = var2[v5];
      LOBYTE(var1) = v7 + var1;
      var2[v5] = var2[var1];
      var2[var1] = v7;
      --count;
    }

    while (count);
    var1 = var1;
  }

  state->var0 = v5;
  state->var1 = var1;
}

@end