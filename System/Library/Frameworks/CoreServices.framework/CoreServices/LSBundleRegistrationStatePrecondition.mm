@interface LSBundleRegistrationStatePrecondition
- (BOOL)isMet;
- (LSBundleRegistrationStatePrecondition)initWithCoder:(id)coder;
- (id)initForBundleWithIdentifier:(id)identifier placeholderInstalled:(id)installed fullApplicationInstalled:(id)applicationInstalled;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSBundleRegistrationStatePrecondition

- (id)initForBundleWithIdentifier:(id)identifier placeholderInstalled:(id)installed fullApplicationInstalled:(id)applicationInstalled
{
  identifierCopy = identifier;
  installedCopy = installed;
  applicationInstalledCopy = applicationInstalled;
  v15.receiver = self;
  v15.super_class = LSBundleRegistrationStatePrecondition;
  v11 = [(LSBundleRegistrationStatePrecondition *)&v15 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    bundleID = v11->_bundleID;
    v11->_bundleID = v12;

    objc_storeStrong(&v11->_placeholderInstalled, installed);
    objc_storeStrong(&v11->_fullAppInstalled, applicationInstalled);
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_bundleID forKey:@"bundleID"];
  [coderCopy encodeObject:self->_placeholderInstalled forKey:@"placeholderInstalled"];
  [coderCopy encodeObject:self->_fullAppInstalled forKey:@"fullAppInstalled"];
}

- (LSBundleRegistrationStatePrecondition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeholderInstalled"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fullAppInstalled"];
  v8 = [(LSBundleRegistrationStatePrecondition *)self initForBundleWithIdentifier:v5 placeholderInstalled:v6 fullApplicationInstalled:v7];

  return v8;
}

- (BOOL)isMet
{
  v26 = *MEMORY[0x1E69E9840];
  CurrentContext = _LSDatabaseContextGetCurrentContext(self);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v3 = +[_LSDServiceDomain defaultServiceDomain];
  v4 = LaunchServices::Database::Context::_get(&CurrentContext, v3, 0);

  if (!v4)
  {
    v12 = _LSDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = +[_LSDServiceDomain defaultServiceDomain];
      v18 = LaunchServices::Database::Context::_get(&CurrentContext, v17, 0);

      if (v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = v23;
      }

      *buf = 138412290;
      *&buf[4] = v19;
      _os_log_error_impl(&dword_18162D000, v12, OS_LOG_TYPE_ERROR, "Cannot reach database! %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  bundleID = self->_bundleID;
  *buf = kLSVersionNumberNull;
  v25 = unk_1817E90C0;
  v6 = _LSBundleFindWithInfo(v4, 0, bundleID, 0, buf, 2, 1024, 0, 0);
  v7 = self->_bundleID;
  *buf = kLSVersionNumberNull;
  v25 = unk_1817E90C0;
  v8 = _LSBundleFindWithInfo(v4, 0, v7, 0, buf, 2, 0, 0, 0);
  placeholderInstalled = self->_placeholderInstalled;
  if (placeholderInstalled && (v6 != 0) == [(NSNumber *)placeholderInstalled BOOLValue])
  {
LABEL_8:
    LOBYTE(v11) = 0;
    goto LABEL_10;
  }

  fullAppInstalled = self->_fullAppInstalled;
  if (fullAppInstalled)
  {
    v11 = (v8 != 0) ^ [(NSNumber *)fullAppInstalled BOOLValue];
  }

  else
  {
    LOBYTE(v11) = 1;
  }

LABEL_10:
  if (CurrentContext && v22 == 1)
  {
    _LSContextDestroy(CurrentContext);
  }

  v13 = v21;
  CurrentContext = 0;
  v21 = 0;

  v22 = 0;
  v14 = v23;
  v23 = 0;

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

@end