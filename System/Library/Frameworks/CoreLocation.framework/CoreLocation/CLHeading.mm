@interface CLHeading
- (CLHeading)initWithClientHeading:(id *)heading;
- (CLHeading)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)shortDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLHeading

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLHeading;
  [(CLHeading *)&v3 dealloc];
}

- (CLHeading)initWithClientHeading:(id *)heading
{
  v11.receiver = self;
  v11.super_class = CLHeading;
  v4 = [(CLHeading *)&v11 init];
  if (v4)
  {
    v5 = [CLHeadingInternal alloc];
    v6 = *&heading->var6;
    v9[2] = *&heading->var4;
    v9[3] = v6;
    v9[4] = *&heading->var8;
    v10 = *&heading->var10;
    v7 = *&heading->var2;
    v9[0] = *&heading->var0;
    v9[1] = v7;
    v4->_internal = [(CLHeadingInternal *)v5 initWithClientHeading:v9];
  }

  return v4;
}

- (CLHeading)initWithCoder:(id)coder
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  if ([coder allowsKeyedCoding])
  {
    [coder decodeDoubleForKey:@"kCLHeadingCodingKeyMagneticHeading"];
    *(&v16 + 1) = v5;
    [coder decodeDoubleForKey:@"kCLHeadingCodingKeyTrueHeading"];
    *&v17 = v6;
    [coder decodeDoubleForKey:@"kCLHeadingCodingKeyAccuracy"];
    *(&v17 + 1) = v7;
    HIDWORD(v20) = [coder decodeIntForKey:@"kCLHeadingCodingKeyHeadingMode"];
    [coder decodeDoubleForKey:@"kCLHeadingCodingKeyX"];
    *&v15 = v8;
    [coder decodeDoubleForKey:@"kCLHeadingCodingKeyY"];
    *(&v15 + 1) = v9;
    [coder decodeDoubleForKey:@"kCLHeadingCodingKeyZ"];
    *&v16 = v10;
    [coder decodeDoubleForKey:@"kCLHeadingCodingKeyTimestamp"];
    *&v18 = v11;
  }

  else
  {
    [coder decodeValueOfObjCType:"d" at:&v16 + 8];
    [coder decodeValueOfObjCType:"d" at:&v17];
    [coder decodeValueOfObjCType:"d" at:&v17 + 8];
    [coder decodeValueOfObjCType:"i" at:&v20 + 4];
    [coder decodeValueOfObjCType:"d" at:&v15];
    [coder decodeValueOfObjCType:"d" at:&v15 + 8];
    [coder decodeValueOfObjCType:"d" at:&v16];
    [coder decodeValueOfObjCType:"d" at:&v18];
  }

  v13[2] = v17;
  v13[3] = v18;
  v13[4] = v19;
  v14 = v20;
  v13[0] = v15;
  v13[1] = v16;
  return [(CLHeading *)self initWithClientHeading:v13];
}

- (void)encodeWithCoder:(id)coder
{
  internal = self->_internal;
  if ([coder allowsKeyedCoding])
  {
    [coder encodeDouble:@"kCLHeadingCodingKeyMagneticHeading" forKey:internal[4]];
    [coder encodeDouble:@"kCLHeadingCodingKeyTrueHeading" forKey:internal[5]];
    [coder encodeDouble:@"kCLHeadingCodingKeyAccuracy" forKey:internal[6]];
    [coder encodeInt:*(internal + 23) forKey:@"kCLHeadingCodingKeyHeadingMode"];
    [coder encodeDouble:@"kCLHeadingCodingKeyX" forKey:internal[1]];
    [coder encodeDouble:@"kCLHeadingCodingKeyY" forKey:internal[2]];
    [coder encodeDouble:@"kCLHeadingCodingKeyZ" forKey:internal[3]];
    v5 = internal[7];

    [coder encodeDouble:@"kCLHeadingCodingKeyTimestamp" forKey:v5];
  }

  else
  {
    [coder encodeValueOfObjCType:"d" at:internal + 4];
    [coder encodeValueOfObjCType:"d" at:internal + 5];
    [coder encodeValueOfObjCType:"d" at:internal + 6];
    [coder encodeValueOfObjCType:"i" at:internal + 92];
    [coder encodeValueOfObjCType:"d" at:internal + 1];
    [coder encodeValueOfObjCType:"d" at:internal + 2];
    [coder encodeValueOfObjCType:"d" at:internal + 3];

    [coder encodeValueOfObjCType:"d" at:internal + 7];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v5[1] = [self->_internal copyWithZone:zone];
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