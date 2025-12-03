@interface _NSClrDat
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _NSClrDat

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  memset_s(self->super._bytes, self->super._length, 0, self->super._length);
  v3.receiver = self;
  v3.super_class = _NSClrDat;
  [(NSConcreteData *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = _NSClrDat;
  [(NSData *)&v4 encodeWithCoder:?];
  if (objc_opt_isKindOfClass())
  {
    [coder encodeBool:1 forKey:@"NS.zeroing"];
  }
}

@end