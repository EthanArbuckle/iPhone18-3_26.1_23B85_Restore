@interface MTLDynamicLibraryDescriptorSPI
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLDynamicLibraryDescriptorSPI

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v17 = v5;
    v18 = v4;
    v19 = v3;
    Class = object_getClass(self);
    if (Class == object_getClass(a3))
    {
      library = self->_library;
      if (library == [a3 library] || (v12 = -[MTLLibrary isEqual:](self->_library, "isEqual:", objc_msgSend(a3, "library"))) != 0)
      {
        url = self->_url;
        if (url == [a3 url] || (v12 = -[NSURL isEqual:](self->_url, "isEqual:", objc_msgSend(a3, "url"))) != 0)
        {
          options = self->_options;
          LOBYTE(v12) = options == [a3 options];
        }
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLDynamicLibraryDescriptorSPI;
  [(MTLDynamicLibraryDescriptorSPI *)&v3 dealloc];
}

- (unint64_t)hash
{
  bzero(v4, 0x18uLL);
  v4[0] = [(MTLLibrary *)[(MTLDynamicLibraryDescriptorSPI *)self library] hash];
  v4[1] = [(NSURL *)[(MTLDynamicLibraryDescriptorSPI *)self url] hash];
  v4[2] = [(MTLDynamicLibraryDescriptorSPI *)self options];
  return _MTLHashState(v4, 0x18uLL);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_new();
  v6 = v5;
  if (v5)
  {
    [v5 setLibrary:self->_library];
    v6[1] = [(NSURL *)self->_url copyWithZone:a3];
    v6[3] = self->_options;
  }

  return v6;
}

@end