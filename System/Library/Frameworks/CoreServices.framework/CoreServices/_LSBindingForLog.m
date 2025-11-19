@interface _LSBindingForLog
- (_LSBindingForLog)initWithState:(const void *)a3 binding:(const LSBinding *)a4;
- (id).cxx_construct;
- (id)description;
- (id)redactedDescription;
@end

@implementation _LSBindingForLog

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 3) = 0;
  *(self + 8) = 0;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  return self;
}

- (_LSBindingForLog)initWithState:(const void *)a3 binding:(const LSBinding *)a4
{
  v10.receiver = self;
  v10.super_class = _LSBindingForLog;
  v6 = [(_LSBindingForLog *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_db, **a3);
    v8 = *&a4->claim;
    *&v7->_binding.bundle = *&a4->bundle;
    *&v7->_binding.claim = v8;
    objc_storeStrong(&v7->_binding.userInfo, a4->userInfo);
    objc_storeStrong(&v7->_binding.var0, a4->var0);
    v7->_binding.provenance = a4->provenance;
  }

  return v7;
}

- (id)description
{
  bundleName = self->_binding.bundleData->base.bundleName;
  [(_LSDatabase *)self->_db store];
  v4 = _CSStringCopyCFString();
  if (!v4)
  {
    secondaryCategoryType = self->_binding.bundleData->secondaryCategoryType;
    [(_LSDatabase *)self->_db store];
    v4 = _CSStringCopyCFString();
    if (!v4)
    {
      exactIdentifier = self->_binding.bundleData->base.exactIdentifier;
      [(_LSDatabase *)self->_db store];
      v4 = _CSStringCopyCFString();
    }
  }

  v7 = v4;
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@ (B:0x%llx, C:0x%llx)", v4, &stru_1EEF65710, self->_binding.bundle, self->_binding.claim];

  return v8;
}

- (id)redactedDescription
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<private>%@ (B:0x%llx, C:0x%llx)", &stru_1EEF65710, self->_binding.bundle, self->_binding.claim];

  return v2;
}

@end