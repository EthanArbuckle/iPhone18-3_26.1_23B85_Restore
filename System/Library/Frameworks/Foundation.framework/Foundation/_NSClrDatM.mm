@interface _NSClrDatM
- (void)_freeBytes;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = _NSClrDatM;
  [(NSData *)&v4 encodeWithCoder:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [a3 encodeBool:1 forKey:@"NS.zeroing"];
  }
}

@end