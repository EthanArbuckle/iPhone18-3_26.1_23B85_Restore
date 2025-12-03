@interface _VNModelResourceDescriptor
- (_VNModelResourceDescriptor)initWithModelURL:(id)l;
@end

@implementation _VNModelResourceDescriptor

- (_VNModelResourceDescriptor)initWithModelURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = _VNModelResourceDescriptor;
  _init = [(VNResourceDescriptor *)&v9 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(_init + 1, l);
  }

  return v7;
}

@end