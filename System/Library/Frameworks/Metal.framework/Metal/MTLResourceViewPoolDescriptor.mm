@interface MTLResourceViewPoolDescriptor
- (BOOL)isEqual:(id)equal;
- (MTLResourceViewPoolDescriptor)init;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLResourceViewPoolDescriptor

- (MTLResourceViewPoolDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTLResourceViewPoolDescriptor;
  return [(MTLResourceViewPoolDescriptor *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLResourceViewPoolDescriptor;
  [(MTLResourceViewPoolDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 setLabel:{-[MTLResourceViewPoolDescriptor label](self, "label")}];
  [v4 setResourceViewCount:{-[MTLResourceViewPoolDescriptor resourceViewCount](self, "resourceViewCount")}];
  [v4 setForceBaseResourceID:{-[MTLResourceViewPoolDescriptor forceBaseResourceID](self, "forceBaseResourceID")}];
  [v4 setBaseResourceID:{-[MTLResourceViewPoolDescriptor baseResourceID](self, "baseResourceID")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  ClassName = object_getClassName(self);
  if (ClassName != object_getClassName(equal) || *(equal + 2) != self->_resourceViewCount || *(equal + 24) != self->_forceBaseResourceID || *(equal + 4) != self->_baseResourceID)
  {
    return 0;
  }

  v6 = *(equal + 1);
  if (v6 == self->_label)
  {
    return 1;
  }

  return [(NSString *)v6 isEqual:?];
}

- (unint64_t)hash
{
  bzero(v6, 0x20uLL);
  v3 = [(NSString *)self->_label hash];
  resourceViewCount = self->_resourceViewCount;
  v6[0] = v3;
  v6[1] = resourceViewCount;
  forceBaseResourceID = self->_forceBaseResourceID;
  baseResourceID = self->_baseResourceID;
  return _MTLHashState(v6, 0x20uLL);
}

@end