@interface MTL4LibraryDescriptor
- (BOOL)isEqual:(id)a3;
- (MTL4LibraryDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTL4LibraryDescriptor

- (MTL4LibraryDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4LibraryDescriptor;
  return [(MTL4LibraryDescriptor *)&v3 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setSource:{-[MTL4LibraryDescriptor source](self, "source")}];
  [v4 setOptions:{-[MTL4LibraryDescriptor options](self, "options")}];
  [v4 setName:{-[MTL4LibraryDescriptor name](self, "name")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    goto LABEL_12;
  }

  Class = object_getClass(self);
  if (Class != object_getClass(a3))
  {
    LOBYTE(v6) = 0;
    return v6;
  }

  source = self->_source;
  if (source == *(a3 + 1) || (v6 = [(NSString *)source isEqual:?]) != 0)
  {
    options = self->_options;
    if (options == *(a3 + 2) || (v6 = [(MTLCompileOptions *)options isEqual:?]) != 0)
    {
      name = self->_name;
      if (name != *(a3 + 3))
      {

        LOBYTE(v6) = [(NSString *)name isEqual:?];
        return v6;
      }

LABEL_12:
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  bzero(v4, 0x18uLL);
  v4[0] = [(NSString *)self->_source hash];
  v4[1] = [(MTLCompileOptions *)self->_options hash];
  v4[2] = [(NSString *)self->_name hash];
  return _MTLHashState(v4, 0x18uLL);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4LibraryDescriptor;
  [(MTL4LibraryDescriptor *)&v3 dealloc];
}

@end