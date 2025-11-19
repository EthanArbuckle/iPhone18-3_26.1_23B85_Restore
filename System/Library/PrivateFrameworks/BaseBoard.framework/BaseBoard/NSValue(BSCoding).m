@interface NSValue(BSCoding)
+ (id)bs_valueWithCGPoint:()BSCoding;
+ (id)bs_valueWithCGRect:()BSCoding;
+ (id)bs_valueWithCGSize:()BSCoding;
- (BOOL)bs_getValue:()BSCoding ofSize:;
- (double)bs_CGPointValue;
- (double)bs_CGRectValue;
- (double)bs_CGSizeValue;
- (id)initWithBSXPCCoder:()BSCoding;
- (uint64_t)bs_CGAffineTransformValue;
- (void)encodeWithBSXPCCoder:()BSCoding;
@end

@implementation NSValue(BSCoding)

- (double)bs_CGRectValue
{
  v1 = *(MEMORY[0x1E695F050] + 16);
  v3[0] = *MEMORY[0x1E695F050];
  v3[1] = v1;
  [a1 bs_getValue:v3 ofSize:32];
  return *v3;
}

- (double)bs_CGSizeValue
{
  v2 = *MEMORY[0x1E695F060];
  [a1 bs_getValue:&v2 ofSize:16];
  return *&v2;
}

- (BOOL)bs_getValue:()BSCoding ofSize:
{
  sizep = 0;
  NSGetSizeAndAlignment([a1 objCType], &sizep, 0);
  v7 = sizep;
  if (a3 && sizep == a4)
  {
    [a1 getValue:a3 size:a4];
  }

  return v7 == a4;
}

+ (id)bs_valueWithCGRect:()BSCoding
{
  *v6 = a1;
  *&v6[1] = a2;
  *&v6[2] = a3;
  *&v6[3] = a4;
  v4 = [MEMORY[0x1E696B098] valueWithBytes:v6 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];

  return v4;
}

+ (id)bs_valueWithCGSize:()BSCoding
{
  *v4 = a1;
  *&v4[1] = a2;
  v2 = [MEMORY[0x1E696B098] valueWithBytes:v4 objCType:"{CGSize=dd}"];

  return v2;
}

+ (id)bs_valueWithCGPoint:()BSCoding
{
  *v4 = a1;
  *&v4[1] = a2;
  v2 = [MEMORY[0x1E696B098] valueWithBytes:v4 objCType:"{CGPoint=dd}"];

  return v2;
}

- (double)bs_CGPointValue
{
  v2 = *MEMORY[0x1E695EFF8];
  [a1 bs_getValue:&v2 ofSize:16];
  return *&v2;
}

- (uint64_t)bs_CGAffineTransformValue
{
  v4 = MEMORY[0x1E695EFD0];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  *x8_0 = *MEMORY[0x1E695EFD0];
  x8_0[1] = v5;
  x8_0[2] = *(v4 + 32);
  return [a1 bs_getValue:? ofSize:?];
}

- (void)encodeWithBSXPCCoder:()BSCoding
{
  sizep[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 objCType];
  sizep[0] = 0;
  v6 = NSGetSizeAndAlignment(v5, sizep, 0);
  v7 = sizep[0];
  if (sizep[0])
  {
    MEMORY[0x1EEE9AC00](v6);
    bzero(sizep - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    if ([a1 bs_getValue:sizep - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) ofSize:v7])
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithBytes:sizep - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) length:v7];
      [v4 encodeObject:v8 forKey:@"data"];

      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:4];
      [v4 encodeObject:v9 forKey:@"type"];
    }
  }
}

- (id)initWithBSXPCCoder:()BSCoding
{
  v4 = a3;
  v5 = [v4 decodeStringForKey:@"type"];
  v6 = [v5 UTF8String];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  v8 = v7;
  v9 = 0;
  if (v7 && v6)
  {
    v10 = [v7 length];
    sizep = 0;
    NSGetSizeAndAlignment(v6, &sizep, 0);
    if (v10 == sizep)
    {
      a1 = [a1 initWithBytes:objc_msgSend(v8 objCType:{"bytes"), v6}];
      v9 = a1;
    }

    else
    {
      v11 = MEMORY[0x1E695DF30];
      v12 = [v8 length];
      sizep = 0;
      NSGetSizeAndAlignment(v6, &sizep, 0);
      [v11 raise:*MEMORY[0x1E696A4C8] format:{@"Size of input data (%zu) does not match size of type '%s' (%zu)", v12, v6, sizep}];
      v9 = 0;
    }
  }

  return v9;
}

@end