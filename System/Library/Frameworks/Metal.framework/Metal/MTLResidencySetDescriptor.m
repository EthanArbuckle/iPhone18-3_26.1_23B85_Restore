@interface MTLResidencySetDescriptor
- (BOOL)isEqual:(id)a3;
- (MTLResidencySetDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLResidencySetDescriptor

- (MTLResidencySetDescriptor)init
{
  v4.receiver = self;
  v4.super_class = MTLResidencySetDescriptor;
  [(MTLResidencySetDescriptor *)&v4 init];
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLResidencySetDescriptor;
  [(MTLResidencySetDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setLabel:{-[MTLResidencySetDescriptor label](self, "label")}];
  [v4 setEvictsImmediately:{-[MTLResidencySetDescriptor evictsImmediately](self, "evictsImmediately")}];
  [v4 setInitialCapacity:{-[MTLResidencySetDescriptor initialCapacity](self, "initialCapacity")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    Class = object_getClass(self);
    if (Class != object_getClass(a3))
    {
LABEL_3:
      LOBYTE(v6) = 0;
      return v6;
    }

    v7 = *(a3 + 1);
    if (v7 == self->_label || (v6 = [(NSString *)v7 isEqual:?]) != 0)
    {
      if (*(a3 + 24) != self->_evictsImmediately)
      {
        goto LABEL_3;
      }

      LOBYTE(v6) = *(a3 + 2) == self->_initialCapacity;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  bzero(v6, 0x18uLL);
  v3 = [(NSString *)self->_label hash];
  initialCapacity = self->_initialCapacity;
  v6[0] = v3;
  v6[1] = initialCapacity;
  evictsImmediately = self->_evictsImmediately;
  return _MTLHashState(v6, 0x18uLL);
}

@end