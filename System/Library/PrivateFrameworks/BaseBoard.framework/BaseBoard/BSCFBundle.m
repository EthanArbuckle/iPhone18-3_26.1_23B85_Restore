@interface BSCFBundle
- (BSCFBundle)initWithPath:(id)a3;
- (BSCFBundle)initWithURL:(id)a3;
- (id)bundlePath;
- (id)description;
- (id)executablePath;
- (id)localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5;
- (id)pathForResource:(id)a3 ofType:(id)a4;
- (id)pathForResource:(id)a3 ofType:(id)a4 inDirectory:(id)a5;
- (void)dealloc;
@end

@implementation BSCFBundle

- (void)dealloc
{
  cfBundle = self->_cfBundle;
  if (cfBundle)
  {
    CFRelease(cfBundle);
  }

  v4.receiver = self;
  v4.super_class = BSCFBundle;
  [(BSCFBundle *)&v4 dealloc];
}

- (BSCFBundle)initWithURL:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"BSCFBundle.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"url != nil"}];
  }

  Unique = _CFBundleCreateUnique();
  if (Unique)
  {
    if (self)
    {
      v9.receiver = self;
      v9.super_class = BSCFBundle;
      self = [(BSCFBundle *)&v9 init];
      if (self)
      {
        CFRetain(Unique);
        self->_cfBundle = Unique;
      }
    }

    CFRelease(Unique);
  }

  else
  {

    self = 0;
  }

  return self;
}

- (BSCFBundle)initWithPath:(id)a3
{
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:a3];
  v5 = [(BSCFBundle *)self initWithURL:v4];

  return v5;
}

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [(BSCFBundle *)self bundleIdentifier];
  v5 = [v3 appendObject:v4 withName:0];

  v6 = [(BSCFBundle *)self bundlePath];
  v7 = [v3 appendObject:v6 withName:@"path" skipIfNil:1];

  v8 = [v3 appendBool:CFBundleIsExecutableLoaded(self->_cfBundle) != 0 withName:@"loaded"];
  v9 = [v3 build];

  return v9;
}

- (id)executablePath
{
  v2 = CFBundleCopyExecutableURL(self->_cfBundle);
  if (v2)
  {
    v3 = v2;
    v4 = [(__CFURL *)v2 path];
    CFRelease(v3);
    if (v4 && [v4 hasPrefix:@"/private/var/"])
    {
      v5 = [v4 stringByReplacingCharactersInRange:0 withString:{objc_msgSend(@"/private/var/", "length"), @"/var/"}];

      v4 = v5;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)bundlePath
{
  v2 = CFBundleCopyBundleURL(self->_cfBundle);
  if (v2)
  {
    v3 = v2;
    v4 = [(__CFURL *)v2 path];
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)pathForResource:(id)a3 ofType:(id)a4
{
  v4 = CFBundleCopyResourceURL(self->_cfBundle, a3, a4, 0);
  if (v4)
  {
    v5 = v4;
    v6 = [(__CFURL *)v4 path];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pathForResource:(id)a3 ofType:(id)a4 inDirectory:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = v9;
  v12 = a5;
  v29 = v11;
  v27 = v12;
  if (self)
  {
    v13 = CFBundleCopyResourceURLsOfType(self->_cfBundle, v11, v12);
    v28 = v13;
    if (v13)
    {
      self = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[__CFArray count](v13, "count")}];
      v14 = [v10 stringByAppendingPathExtension:v11];
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v15 = v28;
      v16 = [(__CFArray *)v15 countByEnumeratingWithState:&v30 objects:buf count:16];
      if (v16)
      {
        v17 = *v31;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v31 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v30 + 1) + 8 * i);
            v20 = [v19 path];
            if (!v10 || ([v19 relativePath], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", v14), v21, v22))
            {
              [(BSCFBundle *)self addObject:v20];
            }
          }

          v16 = [(__CFArray *)v15 countByEnumeratingWithState:&v30 objects:buf count:16];
        }

        while (v16);
      }
    }

    else
    {
      self = 0;
    }
  }

  if ([(BSCFBundle *)self count]>= 2)
  {
    v23 = BSLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = [v10 stringByAppendingPathExtension:v29];
      *buf = 138543362;
      v35 = v26;
      _os_log_error_impl(&dword_18FEF6000, v23, OS_LOG_TYPE_ERROR, "More than one resource matches the given filename %{public}@", buf, 0xCu);
    }
  }

  v24 = [(BSCFBundle *)self firstObject];

  return v24;
}

- (id)localizedStringForKey:(id)a3 value:(id)a4 table:(id)a5
{
  v5 = CFBundleCopyLocalizedString(self->_cfBundle, a3, a4, a5);

  return v5;
}

@end