@interface CLHeading
- (CLHeading)initWithClientHeading:(id *)a3;
- (CLHeading)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)shortDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLHeading

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLHeading;
  [(CLHeading *)&v3 dealloc];
}

- (CLHeading)initWithClientHeading:(id *)a3
{
  v11.receiver = self;
  v11.super_class = CLHeading;
  v4 = [(CLHeading *)&v11 init];
  if (v4)
  {
    v5 = [CLHeadingInternal alloc];
    v6 = *&a3->var6;
    v9[2] = *&a3->var4;
    v9[3] = v6;
    v9[4] = *&a3->var8;
    v10 = *&a3->var10;
    v7 = *&a3->var2;
    v9[0] = *&a3->var0;
    v9[1] = v7;
    v4->_internal = [(CLHeadingInternal *)v5 initWithClientHeading:v9];
  }

  return v4;
}

- (CLHeading)initWithCoder:(id)a3
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  if ([a3 allowsKeyedCoding])
  {
    [a3 decodeDoubleForKey:@"kCLHeadingCodingKeyMagneticHeading"];
    *(&v16 + 1) = v5;
    [a3 decodeDoubleForKey:@"kCLHeadingCodingKeyTrueHeading"];
    *&v17 = v6;
    [a3 decodeDoubleForKey:@"kCLHeadingCodingKeyAccuracy"];
    *(&v17 + 1) = v7;
    HIDWORD(v20) = [a3 decodeIntForKey:@"kCLHeadingCodingKeyHeadingMode"];
    [a3 decodeDoubleForKey:@"kCLHeadingCodingKeyX"];
    *&v15 = v8;
    [a3 decodeDoubleForKey:@"kCLHeadingCodingKeyY"];
    *(&v15 + 1) = v9;
    [a3 decodeDoubleForKey:@"kCLHeadingCodingKeyZ"];
    *&v16 = v10;
    [a3 decodeDoubleForKey:@"kCLHeadingCodingKeyTimestamp"];
    *&v18 = v11;
  }

  else
  {
    [a3 decodeValueOfObjCType:"d" at:&v16 + 8];
    [a3 decodeValueOfObjCType:"d" at:&v17];
    [a3 decodeValueOfObjCType:"d" at:&v17 + 8];
    [a3 decodeValueOfObjCType:"i" at:&v20 + 4];
    [a3 decodeValueOfObjCType:"d" at:&v15];
    [a3 decodeValueOfObjCType:"d" at:&v15 + 8];
    [a3 decodeValueOfObjCType:"d" at:&v16];
    [a3 decodeValueOfObjCType:"d" at:&v18];
  }

  v13[2] = v17;
  v13[3] = v18;
  v13[4] = v19;
  v14 = v20;
  v13[0] = v15;
  v13[1] = v16;
  return [(CLHeading *)self initWithClientHeading:v13];
}

- (void)encodeWithCoder:(id)a3
{
  internal = self->_internal;
  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeDouble:@"kCLHeadingCodingKeyMagneticHeading" forKey:internal[4]];
    [a3 encodeDouble:@"kCLHeadingCodingKeyTrueHeading" forKey:internal[5]];
    [a3 encodeDouble:@"kCLHeadingCodingKeyAccuracy" forKey:internal[6]];
    [a3 encodeInt:*(internal + 23) forKey:@"kCLHeadingCodingKeyHeadingMode"];
    [a3 encodeDouble:@"kCLHeadingCodingKeyX" forKey:internal[1]];
    [a3 encodeDouble:@"kCLHeadingCodingKeyY" forKey:internal[2]];
    [a3 encodeDouble:@"kCLHeadingCodingKeyZ" forKey:internal[3]];
    v5 = internal[7];

    [a3 encodeDouble:@"kCLHeadingCodingKeyTimestamp" forKey:v5];
  }

  else
  {
    [a3 encodeValueOfObjCType:"d" at:internal + 4];
    [a3 encodeValueOfObjCType:"d" at:internal + 5];
    [a3 encodeValueOfObjCType:"d" at:internal + 6];
    [a3 encodeValueOfObjCType:"i" at:internal + 92];
    [a3 encodeValueOfObjCType:"d" at:internal + 1];
    [a3 encodeValueOfObjCType:"d" at:internal + 2];
    [a3 encodeValueOfObjCType:"d" at:internal + 3];

    [a3 encodeValueOfObjCType:"d" at:internal + 7];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v5[1] = [self->_internal copyWithZone:a3];
  return v5;
}

- (id)shortDescription
{
  internal = self->_internal;
  v3 = internal[5];
  if (v3 >= 0.0)
  {
    v4 = 116;
  }

  else
  {
    v3 = internal[4];
    v4 = 109;
  }

  v5 = internal[6];
  v6 = @"±";
  if (v5 < 0.0)
  {
    v6 = &stru_1F0E6F140;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%.2f%c %@%.2f° %d %d (%.1f, %.1f, %.1f) %.1fµT %.1f°", *&v3, v4, v6, *&v5, *(internal + 23), *(internal + 22), *(internal + 1), *(internal + 2), *(internal + 3), *(internal + 9), *(internal + 10)];
}

@end