@interface NSCoder(AXMExtras)
- (double)axmDecodePointForKey:()AXMExtras;
- (double)axmDecodeRectForKey:()AXMExtras;
- (double)axmDecodeSizeForKey:()AXMExtras;
- (void)axmEncodePoint:()AXMExtras forKey:;
- (void)axmEncodeRect:()AXMExtras forKey:;
- (void)axmEncodeSize:()AXMExtras forKey:;
@end

@implementation NSCoder(AXMExtras)

- (void)axmEncodeSize:()AXMExtras forKey:
{
  v9 = a2;
  v10 = a3;
  v6 = MEMORY[0x1E696B098];
  v7 = a5;
  v8 = [v6 value:&v9 withObjCType:"{CGSize=dd}"];
  [a1 encodeObject:v8 forKey:{v7, *&v9, *&v10}];
}

- (double)axmDecodeSizeForKey:()AXMExtras
{
  v4 = a3;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];

  v7 = *MEMORY[0x1E695F060];
  [v5 getValue:&v7 size:16];

  return *&v7;
}

- (void)axmEncodePoint:()AXMExtras forKey:
{
  v9 = a2;
  v10 = a3;
  v6 = MEMORY[0x1E696B098];
  v7 = a5;
  v8 = [v6 value:&v9 withObjCType:"{CGPoint=dd}"];
  [a1 encodeObject:v8 forKey:{v7, *&v9, *&v10}];
}

- (double)axmDecodePointForKey:()AXMExtras
{
  v4 = a3;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];

  v7 = *MEMORY[0x1E695EFF8];
  [v5 getValue:&v7 size:16];

  return *&v7;
}

- (void)axmEncodeRect:()AXMExtras forKey:
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v8 = MEMORY[0x1E696B098];
  v9 = a7;
  v10 = [v8 value:&v11 withObjCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [a1 encodeObject:v10 forKey:{v9, *&v11, *&v12, *&v13, *&v14}];
}

- (double)axmDecodeRectForKey:()AXMExtras
{
  v4 = a3;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];

  v6 = *(MEMORY[0x1E695F058] + 16);
  v8[0] = *MEMORY[0x1E695F058];
  v8[1] = v6;
  [v5 getValue:v8 size:32];

  return *v8;
}

@end