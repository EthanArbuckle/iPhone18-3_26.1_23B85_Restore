@interface MTLBinaryArchiveDescriptor
- (BOOL)isEqual:(id)a3;
- (MTLBinaryArchiveDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation MTLBinaryArchiveDescriptor

- (MTLBinaryArchiveDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTLBinaryArchiveDescriptor;
  result = [(MTLBinaryArchiveDescriptor *)&v3 init];
  if (result)
  {
    result->_options = 2;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLBinaryArchiveDescriptor;
  [(MTLBinaryArchiveDescriptor *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    url = self->_url;
    if (url == *(a3 + 1) || (v6 = [(NSURL *)url isEqual:?]) != 0)
    {
      LOBYTE(v6) = self->_options == *(a3 + 2);
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_new();
  if (v5)
  {
    v5[1] = [(NSURL *)self->_url copyWithZone:a3];
    v5[2] = self->_options;
  }

  return v5;
}

@end