@interface DecoderByNSCoding
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)decodeCMTimeForKey:(SEL)key;
- ($E36B78CDAC119E0352F6B513F3BB0FF8)decodeCMTimeRangeForKey:(SEL)key;
- (const)decodeBytesForKey:(id)key returnedLength:(int64_t *)length;
- (double)decodeDoubleForKey:(id)key;
- (float)decodeFloatForKey:(id)key;
- (id)decodeObjectForKey:(id)key;
@end

@implementation DecoderByNSCoding

- (const)decodeBytesForKey:(id)key returnedLength:(int64_t *)length
{
  v6 = sub_1C9A924A8();
  v8 = v7;
  selfCopy = self;
  v10 = sub_1C9983774(v6, v8, length);

  return v10;
}

- (id)decodeObjectForKey:(id)key
{
  sub_1C9A924A8();
  v5 = v4;
  selfCopy = self;
  sub_1C9983A1C(v5, v14);

  v7 = v15;
  if (v15)
  {
    v8 = sub_1C97A5A8C(v14, v15);
    v9 = *(v7 - 8);
    MEMORY[0x1EEE9AC00](v8);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_1C9A93B08();
    (*(v9 + 8))(v11, v7);
    sub_1C97A592C(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (double)decodeDoubleForKey:(id)key
{
  sub_1C9A924A8();
  selfCopy = self;
  sub_1C9983F10();
  v6 = v5;

  return v6;
}

- (float)decodeFloatForKey:(id)key
{
  sub_1C9A924A8();
  selfCopy = self;
  sub_1C9983FDC();
  v6 = v5;

  return v6;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)decodeCMTimeForKey:(SEL)key
{
  sub_1C9A924A8();
  selfCopy = self;
  v7 = sub_1C99840A8();
  v9 = v8;
  v11 = v10;

  retstr->var0 = v7;
  *&retstr->var1 = v9;
  retstr->var3 = v11;
  return result;
}

- ($E36B78CDAC119E0352F6B513F3BB0FF8)decodeCMTimeRangeForKey:(SEL)key
{
  sub_1C9A924A8();
  v7 = v6;
  selfCopy = self;
  sub_1C99841B8(v7, v16);
  v9 = v16[0];
  v10 = v16[2];
  v11 = v16[3];
  v12 = v16[5];

  v14 = v16[4];
  v15 = v16[1];
  retstr->var0.var0 = v9;
  *&retstr->var0.var1 = v15;
  retstr->var0.var3 = v10;
  retstr->var1.var0 = v11;
  *&retstr->var1.var1 = v14;
  retstr->var1.var3 = v12;
  return result;
}

@end