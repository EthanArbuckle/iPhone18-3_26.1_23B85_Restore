@interface MTLDynamicLibraryDescriptorSPI
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLDynamicLibraryDescriptorSPI

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v17 = v5;
    v18 = v4;
    v19 = v3;
    Class = object_getClass(self);
    if (Class == object_getClass(equal))
    {
      library = self->_library;
      if (library == [equal library] || (v12 = -[MTLLibrary isEqual:](self->_library, "isEqual:", objc_msgSend(equal, "library"))) != 0)
      {
        url = self->_url;
        if (url == [equal url] || (v12 = -[NSURL isEqual:](self->_url, "isEqual:", objc_msgSend(equal, "url"))) != 0)
        {
          options = self->_options;
          LOBYTE(v12) = options == [equal options];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_new();
  v6 = v5;
  if (v5)
  {
    [v5 setLibrary:self->_library];
    v6[1] = [(NSURL *)self->_url copyWithZone:zone];
    v6[3] = self->_options;
  }

  return v6;
}

@end