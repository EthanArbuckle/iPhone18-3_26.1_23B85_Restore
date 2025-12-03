@interface NSOutputStream(NSOutputStream)
+ (__objc2_class)allocWithZone:()NSOutputStream;
+ (id)outputStreamToBuffer:()NSOutputStream capacity:;
+ (id)outputStreamToFileAtPath:()NSOutputStream append:;
+ (id)outputStreamToMemory;
+ (id)outputStreamWithURL:()NSOutputStream append:;
- (id)dealloc;
- (id)initToBuffer:()NSOutputStream capacity:;
- (id)initToMemory;
- (id)initWithURL:()NSOutputStream append:;
@end

@implementation NSOutputStream(NSOutputStream)

+ (id)outputStreamToMemory
{
  initToMemory = [objc_allocWithZone(self) initToMemory];

  return initToMemory;
}

+ (__objc2_class)allocWithZone:()NSOutputStream
{
  v3 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1E695DFC0] == self)
  {
    return &___placeholderOutputStream;
  }

  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___NSOutputStream_0;
  return objc_msgSendSuper2(&v2, sel_allocWithZone_);
}

+ (id)outputStreamToBuffer:()NSOutputStream capacity:
{
  v4 = [objc_allocWithZone(self) initToBuffer:a3 capacity:a4];

  return v4;
}

+ (id)outputStreamToFileAtPath:()NSOutputStream append:
{
  v4 = [objc_allocWithZone(self) initToFileAtPath:a3 append:a4];

  return v4;
}

+ (id)outputStreamWithURL:()NSOutputStream append:
{
  v4 = [objc_allocWithZone(self) initWithURL:a3 append:a4];

  return v4;
}

- (id)initToMemory
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = NSOutputStream_0;
  return objc_msgSendSuper2(&v2, sel_init);
}

- (id)initToBuffer:()NSOutputStream capacity:
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = NSOutputStream_0;
  return objc_msgSendSuper2(&v2, sel_init);
}

- (id)initWithURL:()NSOutputStream append:
{
  v3 = *MEMORY[0x1E69E9840];
  v2.receiver = self;
  v2.super_class = NSOutputStream_0;
  return objc_msgSendSuper2(&v2, sel_init);
}

- (id)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  MEMORY[0x1865CFAD0]();
  v3.receiver = self;
  v3.super_class = NSOutputStream_0;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

@end