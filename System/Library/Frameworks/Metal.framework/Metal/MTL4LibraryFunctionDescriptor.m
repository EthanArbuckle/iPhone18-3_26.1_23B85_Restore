@interface MTL4LibraryFunctionDescriptor
- (BOOL)isEqual:(id)a3;
- (MTL4LibraryFunctionDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTL4LibraryFunctionDescriptor

- (MTL4LibraryFunctionDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTL4LibraryFunctionDescriptor;
  return [(MTL4FunctionDescriptor *)&v3 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTL4LibraryFunctionDescriptor;
  [(MTL4FunctionDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MTL4LibraryFunctionDescriptor;
  v4 = [(MTL4FunctionDescriptor *)&v6 copyWithZone:a3];
  [v4 setLibrary:{-[MTL4LibraryFunctionDescriptor library](self, "library")}];
  [v4 setName:{-[MTL4LibraryFunctionDescriptor name](self, "name")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v12 = v3;
    v13 = v4;
    Class = object_getClass(self);
    if (Class == object_getClass(a3))
    {
      v11.receiver = self;
      v11.super_class = MTL4LibraryFunctionDescriptor;
      v8 = [(MTL4FunctionDescriptor *)&v11 isEqual:a3];
      if (v8)
      {
        name = self->_name;
        if (name == *(a3 + 2) || (v8 = [(NSString *)name isEqual:?]) != 0)
        {
          LOBYTE(v8) = [objc_msgSend(*(a3 + 3) "libraryIdentifier")] == 0;
        }
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  bzero(v5, 0x18uLL);
  v5[0] = [(NSString *)self->_name hash];
  v5[1] = [(MTLLibrary *)self->_library hash];
  v4.receiver = self;
  v4.super_class = MTL4LibraryFunctionDescriptor;
  v5[2] = [(MTL4FunctionDescriptor *)&v4 hash];
  return _MTLHashState(v5, 0x18uLL);
}

@end