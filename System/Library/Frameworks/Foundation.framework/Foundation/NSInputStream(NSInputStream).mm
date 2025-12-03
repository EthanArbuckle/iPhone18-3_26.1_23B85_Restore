@interface NSInputStream(NSInputStream)
+ (__objc2_class)allocWithZone:()NSInputStream;
+ (id)inputStreamWithData:()NSInputStream;
+ (id)inputStreamWithFileAtPath:()NSInputStream;
+ (id)inputStreamWithURL:()NSInputStream;
- (id)dealloc;
- (id)initWithData:()NSInputStream;
- (id)initWithURL:()NSInputStream;
@end

@implementation NSInputStream(NSInputStream)

+ (__objc2_class)allocWithZone:()NSInputStream
{
  v3 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1E695DF48] == self)
  {
    return &___placeholderInputStream;
  }

  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___NSInputStream_0;
  return objc_msgSendSuper2(&v2, sel_allocWithZone_);
}

+ (id)inputStreamWithData:()NSInputStream
{
  v3 = [objc_allocWithZone(self) initWithData:a3];

  return v3;
}

+ (id)inputStreamWithFileAtPath:()NSInputStream
{
  v3 = [objc_allocWithZone(self) initWithFileAtPath:a3];

  return v3;
}

+ (id)inputStreamWithURL:()NSInputStream
{
  v3 = [objc_allocWithZone(self) initWithURL:a3];

  return v3;
}

- (id)initWithData:()NSInputStream
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = NSInputStream_0;
  return objc_msgSendSuper2(&v2, sel_init);
}

- (id)initWithURL:()NSInputStream
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = NSInputStream_0;
  return objc_msgSendSuper2(&v2, sel_init);
}

- (id)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  MEMORY[0x1865CF740]();
  v3.receiver = self;
  v3.super_class = NSInputStream_0;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

@end