@interface _NSClrDatM
- (void)_freeBytes;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _NSClrDatM

- (void)_freeBytes
{
  v4 = *MEMORY[0x1E69E9840];
  memset_s(self->super._bytes, self->super._capacity, 0, self->super._capacity);
  v3.receiver = self;
  v3.super_class = _NSClrDatM;
  [(NSConcreteMutableData *)&v3 _freeBytes];
}

- (void)encodeWithCoder:(id)coder
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = _NSClrDatM;
  [(NSData *)&v4 encodeWithCoder:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [coder encodeBool:1 forKey:@"NS.zeroing"];
  }
}

@end