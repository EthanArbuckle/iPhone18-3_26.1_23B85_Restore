@interface LSBundleURLRelationshipPrecondition
- (BOOL)isMet;
- (LSBundleURLRelationshipPrecondition)initWithCoder:(id)a3;
- (LSBundleURLRelationshipPrecondition)initWithURL:(id)a3 bundleIdentifier:(id)a4 placeholderFetchBehavior:(int64_t)a5 requiredRelationship:(int64_t)a6;
- (void)encodeWithCoder:(id)a3;
- (void)isMet;
@end

@implementation LSBundleURLRelationshipPrecondition

- (LSBundleURLRelationshipPrecondition)initWithURL:(id)a3 bundleIdentifier:(id)a4 placeholderFetchBehavior:(int64_t)a5 requiredRelationship:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v18.receiver = self;
  v18.super_class = LSBundleURLRelationshipPrecondition;
  v12 = [(LSBundleURLRelationshipPrecondition *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    url = v12->_url;
    v12->_url = v13;

    v15 = [v11 copy];
    bundleIdentifier = v12->_bundleIdentifier;
    v12->_bundleIdentifier = v15;

    v12->_placeholderFetchBehavior = a5;
    v12->_requiredRelationship = a6;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_url forKey:@"url"];
  [v4 encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [v4 encodeInteger:self->_placeholderFetchBehavior forKey:@"placeholderFetchBehavior"];
  [v4 encodeInteger:self->_requiredRelationship forKey:@"requiredRelationship"];
}

- (LSBundleURLRelationshipPrecondition)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v7 = -[LSBundleURLRelationshipPrecondition initWithURL:bundleIdentifier:placeholderFetchBehavior:requiredRelationship:](self, "initWithURL:bundleIdentifier:placeholderFetchBehavior:requiredRelationship:", v5, v6, [v4 decodeIntegerForKey:@"placeholderFetchBehavior"], objc_msgSend(v4, "decodeIntegerForKey:", @"requiredRelationship"));

  return v7;
}

- (BOOL)isMet
{
  v44[3] = *MEMORY[0x1E69E9840];
  v43 = 2;
  CurrentContext = _LSDatabaseContextGetCurrentContext(self);
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v3 = +[_LSDServiceDomain defaultServiceDomain];
  v4 = LaunchServices::Database::Context::_get(&CurrentContext, v3, 0);

  if (v4)
  {
    v5 = [LSApplicationRecord alloc];
    bundleIdentifier = self->_bundleIdentifier;
    placeholderFetchBehavior = self->_placeholderFetchBehavior;
    v38 = 0;
    v8 = [(LSApplicationRecord *)v5 _initWithNode:0 bundleIdentifier:bundleIdentifier placeholderBehavior:placeholderFetchBehavior systemPlaceholder:0 itemID:0 forceInBundleContainer:0 context:v4 error:&v38];
    v9 = v38;
    v10 = v9;
    if (v8)
    {
      v11 = [v8 URL];
      v12 = *MEMORY[0x1E695DAD0];
      v44[0] = *MEMORY[0x1E695DD70];
      v44[1] = v12;
      v13 = *MEMORY[0x1E695DB78];
      v44[2] = *MEMORY[0x1E695DB78];
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
      url = self->_url;
      v37 = v10;
      v16 = [(NSURL *)url resourceValuesForKeys:v14 error:&v37];
      v17 = v37;

      if (v16)
      {
        v36 = v17;
        v18 = [v11 resourceValuesForKeys:v14 error:&v36];
        v19 = v36;

        if (v18)
        {
          v20 = [v16 objectForKey:v13];
          v21 = [v20 BOOLValue];

          if (v21)
          {
            v22 = [MEMORY[0x1E696AC08] defaultManager];
            v23 = self->_url;
            v35 = v19;
            v24 = [v22 getRelationship:&v43 ofDirectoryAtURL:v23 toItemAtURL:v11 error:&v35];
            v25 = v35;

            v19 = v25;
          }

          else
          {
            v24 = 1;
            if ([v16 isEqual:v18])
            {
              v28 = 1;
            }

            else
            {
              v28 = 2;
            }

            v43 = v28;
          }
        }

        else
        {
          v24 = 0;
        }

        v17 = v19;
      }

      else
      {
        v24 = 0;
      }

      if (v24)
      {
        v29 = v43 == self->_requiredRelationship;
        goto LABEL_24;
      }
    }

    else
    {
      v17 = v9;
    }
  }

  else
  {
    v26 = +[_LSDServiceDomain defaultServiceDomain];
    v27 = LaunchServices::Database::Context::_get(&CurrentContext, v26, 0);

    if (v27)
    {
      v17 = 0;
    }

    else
    {
      v17 = v42;
    }
  }

  v30 = _LSDefaultLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    [(LSBundleURLRelationshipPrecondition *)self isMet];
  }

  v29 = 0;
LABEL_24:
  if (CurrentContext && v41 == 1)
  {
    _LSContextDestroy(CurrentContext);
  }

  v31 = v40;
  CurrentContext = 0;
  v40 = 0;

  v41 = 0;
  v32 = v42;
  v42 = 0;

  v33 = *MEMORY[0x1E69E9840];
  return v29;
}

- (void)isMet
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = 138412802;
  v7 = v3;
  v8 = 2112;
  v9 = v4;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Couldn't get URL relationship for %@ and %@: %@", &v6, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

@end