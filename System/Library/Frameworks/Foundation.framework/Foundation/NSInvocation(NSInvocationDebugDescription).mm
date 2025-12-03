@interface NSInvocation(NSInvocationDebugDescription)
- (NSMutableString)debugDescription;
@end

@implementation NSInvocation(NSInvocationDebugDescription)

- (NSMutableString)debugDescription
{
  methodSignature = [self methodSignature];
  _frameDescriptor = [methodSignature _frameDescriptor];
  numberOfArguments = [methodSignature numberOfArguments];
  v5 = [[NSMutableString alloc] initWithCapacity:100];
  [(NSMutableString *)v5 appendFormat:@"<NSInvocation: %p>\n", self];
  [(NSMutableString *)v5 appendFormat:@"return value: "];
  appendArgumentInfoToDescription(self, 0, *_frameDescriptor, 1, v5);
  if (numberOfArguments)
  {
    [(NSMutableString *)v5 appendFormat:@"target: "];
    v6 = *(_frameDescriptor + 8);
    appendArgumentInfoToDescription(self, 0, v6, 0, v5);
    if (numberOfArguments != 1)
    {
      v7 = v6[1];
      if (v7)
      {
        v8 = 1;
        do
        {
          if (v8 == 1 && *(v7 + 36) == 58)
          {
            v9 = v5;
            v10 = @"selector: ";
          }

          else
          {
            v12 = v8;
            v9 = v5;
            v10 = @"argument %lu: ";
          }

          [(NSMutableString *)v9 appendFormat:v10, v12];
          appendArgumentInfoToDescription(self, v8++, v7, 0, v5);
          v7 = *(v7 + 8);
        }

        while (v7);
      }
    }
  }

  return v5;
}

@end