@interface _PFAbstractString
- (const)cStringUsingEncoding:(unint64_t)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation _PFAbstractString

- (id)description
{
  v2 = [(_PFAbstractString *)self copy];

  return v2;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AD60]);
  v5 = [(_PFAbstractString *)self UTF8String];

  return [v4 initWithUTF8String:v5];
}

- (const)cStringUsingEncoding:(unint64_t)a3
{
  if (a3 <= 5 && ((1 << a3) & 0x32) != 0)
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