@interface _PFAbstractString
- (const)cStringUsingEncoding:(unint64_t)encoding;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation _PFAbstractString

- (id)description
{
  v2 = [(_PFAbstractString *)self copy];

  return v2;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(MEMORY[0x1E696AD60]);
  uTF8String = [(_PFAbstractString *)self UTF8String];

  return [v4 initWithUTF8String:uTF8String];
}

- (const)cStringUsingEncoding:(unint64_t)encoding
{
  if (encoding <= 5 && ((1 << encoding) & 0x32) != 0)
  {

    return [(_PFAbstractString *)self UTF8String];
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6.receiver = self;
    v6.super_class = _PFAbstractString;
    return [(_PFAbstractString *)&v6 cStringUsingEncoding:?];
  }
}

@end