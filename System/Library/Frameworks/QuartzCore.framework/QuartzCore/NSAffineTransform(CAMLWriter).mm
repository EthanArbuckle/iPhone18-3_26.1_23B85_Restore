@interface NSAffineTransform(CAMLWriter)
- (void)encodeWithCAMLWriter:()CAMLWriter;
@end

@implementation NSAffineTransform(CAMLWriter)

- (void)encodeWithCAMLWriter:()CAMLWriter
{
  v11 = *MEMORY[0x1E69E9840];
  if (self)
  {
    [self transformStruct];
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
  }

  v10[0] = v7;
  v10[1] = v8;
  v10[2] = v9;
  v4 = CACreateStringWithDoubleArray(v10, 6uLL, 1.0e-12);
  if (v4)
  {
    v5 = v4;
    v6 = CFStringCreateWithFormat(0, 0, @"matrix(%@)", v4);
    [a3 setElementContent:v6];
    CFRelease(v6);
    CFRelease(v5);
  }
}

@end