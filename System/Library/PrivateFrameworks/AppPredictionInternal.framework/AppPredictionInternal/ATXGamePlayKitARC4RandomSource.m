@interface ATXGamePlayKitARC4RandomSource
- (ATXGamePlayKitARC4RandomSource)init;
- (ATXGamePlayKitARC4RandomSource)initWithCoder:(id)a3;
- (ATXGamePlayKitARC4RandomSource)initWithSeed:(id)a3;
- (BOOL)nextBool;
- (float)nextUniform;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)nextInt;
- (unint64_t)nextBits:(int)a3;
- (unint64_t)nextIntWithUpperBound:(unint64_t)a3;
- (void)dealloc;
- (void)dropValuesWithCount:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setSeed:(id)a3;
@end

@implementation ATXGamePlayKitARC4RandomSource

- (ATXGamePlayKitARC4RandomSource)init
{
  v3 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
  if (SecRandomCopyBytes(0, 0x10uLL, v3))
  {
    v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"failed to generate secure random bytes" userInfo:MEMORY[0x277CBEC10]];
    objc_exception_throw(v7);
  }

  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v3 length:16 freeWhenDone:1];
  v5 = [(ATXGamePlayKitARC4RandomSource *)self initWithSeed:v4];

  return v5;
}

- (ATXGamePlayKitARC4RandomSource)initWithSeed:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ATXGamePlayKitARC4RandomSource;
  v5 = [(ATXGamePlayKitRandomSource *)&v11 init];
  if (v5)
  {
    v6 = malloc_type_malloc(0x10uLL, 0x1010040466105CCuLL);
    v7 = v6;
    v5->_state = v6;
    if (v6)
    {
      *&v6->var0 = 0;
      v8 = malloc_type_malloc(0x100uLL, 0x100004077774924uLL);
      v9 = 0;
      v7->var2 = v8;
      do
      {
        v7->var2[v9] = v9;
        ++v9;
      }

      while (v9 != 256);
    }

    [(ATXGamePlayKitARC4RandomSource *)v5 setSeed:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (ATXGamePlayKitARC4RandomSource)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXGamePlayKitARC4RandomSource *)self init];
  if (v5)
  {
    v6 = malloc_type_malloc(0x10uLL, 0x1010040466105CCuLL);
    v7 = v6;
    v5->_state = v6;
    if (v6)
    {
      *&v6->var0 = 0;
      v8 = malloc_type_malloc(0x100uLL, 0x100004077774924uLL);
      v9 = 0;
      v7->var2 = v8;
      do
      {
        v7->var2[v9] = v9;
        ++v9;
      }

      while (v9 != 256);
    }

    v5->_state->var0 = [v4 decodeIntForKey:@"i"];
    v5->_state->var1 = [v4 decodeIntForKey:@"j"];
    v13 = 0;
    v10 = [v4 decodeBytesForKey:@"bytes" returnedLength:&v13];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = ATXGamePlayKitARC4RandomSource;
  [(ATXGamePlayKitRandomSource *)&v5 encodeWithCoder:v4];
  [v4 encodeInt:self->_state->var0 forKey:@"i"];
  [v4 encodeInt:self->_state->var1 forKey:@"j"];
  [v4 encodeBytes:self->_state->var2 length:256 forKey:@"bytes"];
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
  v4.super_class = ATXGamePlayKitARC4RandomSource;
  [(ATXGamePlayKitARC4RandomSource *)&v4 dealloc];
}

- (void)setSeed:(id)a3
{
  v13 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithData:v13];
  seed = self->_seed;
  self->_seed = v4;

  state = self->_state;
  v7 = [(NSData *)self->_seed bytes];
  v8 = [(NSData *)self->_seed length];
  v9 = 0;
  v10 = 0;
  var2 = state->var2;
  do
  {
    v12 = var2[v9];
    v10 += v12 + v7[v9 % v8];
    var2[v9] = var2[v10];
    var2[v10] = v12;
    ++v9;
  }

  while (v9 != 255);
}

- (unint64_t)nextBits:(int)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3 < 1)
  {
    result = 0;
  }

  else
  {
    v3 = 0;
    if (a3 >= 0x40)
    {
      v4 = 64;
    }

    else
    {
      v4 = a3;
    }

    v5 = (v4 + 7) >> 3;
    state = self->_state;
    var2 = state->var2;
    LODWORD(v8) = state->var0;
    var1 = state->var1;
    do
    {
      v8 = (v8 + 1);
      v10 = var2[v8];
      LOBYTE(var1) = v10 + var1;
      var2[v8] = var2[var1];
      var2[var1] = v10;
      v15[v3++] = var2[(var2[v8] + v10)];
    }

    while (v5 != v3);
    v11 = 0;
    v12 = 0;
    state->var0 = v8;
    state->var1 = var1;
    do
    {
      v12 = v15[v11++] | (v12 << 8);
    }

    while (v5 != v11);
    result = v12 >> (((v4 + 7) & 0xF8u) - v4);
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)nextInt
{
  v2 = 0;
  state = self->_state;
  var2 = state->var2;
  LODWORD(v5) = state->var0;
  var1 = state->var1;
  do
  {
    v5 = (v5 + 1);
    v7 = var2[v5];
    LOBYTE(var1) = v7 + var1;
    var2[v5] = var2[var1];
    var2[var1] = v7;
    v9[v2++] = var2[(var2[v5] + v7)];
  }

  while (v2 != 4);
  state->var0 = v5;
  state->var1 = var1;
  return (v9[0] << 24) | (v9[1] << 16) | (v9[2] << 8) | v9[3];
}

- (unint64_t)nextIntWithUpperBound:(unint64_t)a3
{
  if (a3 < 2)
  {
    return 0;
  }

  v18 = 0;
  if ((a3 & (a3 - 1)) != 0)
  {
    do
    {
      v10 = 0;
      state = self->_state;
      var2 = state->var2;
      LODWORD(v13) = state->var0;
      var1 = state->var1;
      do
      {
        v13 = (v13 + 1);
        v15 = var2[v13];
        LOBYTE(var1) = v15 + var1;
        var2[v13] = var2[var1];
        var2[var1] = v15;
        *(&v18 + v10++) = var2[(var2[v13] + v15)];
      }

      while (v10 != 4);
      state->var0 = v13;
      state->var1 = var1;
      v16 = bswap32(v18);
      v3 = v16 % a3;
    }

    while (a3 - 1 + v16 < v16 % a3);
  }

  else
  {
    v4 = 0;
    v5 = self->_state;
    v6 = v5->var2;
    LODWORD(v7) = v5->var0;
    v8 = v5->var1;
    do
    {
      v7 = (v7 + 1);
      v9 = v6[v7];
      LOBYTE(v8) = v9 + v8;
      v6[v7] = v6[v8];
      v6[v8] = v9;
      *(&v18 + v4++) = v6[(v6[v7] + v9)];
    }

    while (v4 != 4);
    v5->var0 = v7;
    v5->var1 = v8;
    return (bswap32(v18) * a3) >> 32;
  }

  return v3;
}

- (float)nextUniform
{
  v2 = 0;
  state = self->_state;
  var2 = state->var2;
  LODWORD(v5) = state->var0;
  var1 = state->var1;
  do
  {
    v5 = (v5 + 1);
    v7 = var2[v5];
    LOBYTE(var1) = v7 + var1;
    var2[v5] = var2[var1];
    var2[var1] = v7;
    v9[v2++] = var2[(var2[v5] + v7)];
  }

  while (v2 != 3);
  state->var0 = v5;
  state->var1 = var1;
  return ((v9[0] << 16) | (v9[1] << 8) | v9[2]) / 16777000.0;
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

- (void)dropValuesWithCount:(unint64_t)a3
{
  state = self->_state;
  LODWORD(v5) = state->var0;
  var1 = state->var1;
  if (a3)
  {
    var2 = state->var2;
    do
    {
      v5 = (v5 + 1);
      v7 = var2[v5];
      LOBYTE(var1) = v7 + var1;
      var2[v5] = var2[var1];
      var2[var1] = v7;
      --a3;
    }

    while (a3);
    var1 = var1;
  }

  state->var0 = v5;
  state->var1 = var1;
}

@end