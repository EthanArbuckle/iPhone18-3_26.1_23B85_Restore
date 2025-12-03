@interface BSCFBundle
- (BSCFBundle)initWithPath:(id)path;
- (BSCFBundle)initWithURL:(id)l;
- (id)bundlePath;
- (id)description;
- (id)executablePath;
- (id)localizedStringForKey:(id)key value:(id)value table:(id)table;
- (id)pathForResource:(id)resource ofType:(id)type;
- (id)pathForResource:(id)resource ofType:(id)type inDirectory:(id)directory;
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

- (BSCFBundle)initWithURL:(id)l
{
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BSCFBundle.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"url != nil"}];
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

- (BSCFBundle)initWithPath:(id)path
{
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:path];
  v5 = [(BSCFBundle *)self initWithURL:v4];

  return v5;
}

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  bundleIdentifier = [(BSCFBundle *)self bundleIdentifier];
  v5 = [v3 appendObject:bundleIdentifier withName:0];

  bundlePath = [(BSCFBundle *)self bundlePath];
  v7 = [v3 appendObject:bundlePath withName:@"path" skipIfNil:1];

  v8 = [v3 appendBool:CFBundleIsExecutableLoaded(self->_cfBundle) != 0 withName:@"loaded"];
  build = [v3 build];

  return build;
}

- (id)executablePath
{
  v2 = CFBundleCopyExecutableURL(self->_cfBundle);
  if (v2)
  {
    v3 = v2;
    path = [(__CFURL *)v2 path];
    CFRelease(v3);
    if (path && [path hasPrefix:@"/private/var/"])
    {
      v5 = [path stringByReplacingCharactersInRange:0 withString:{objc_msgSend(@"/private/var/", "length"), @"/var/"}];

      path = v5;
    }
  }

  else
  {
    path = 0;
  }

  return path;
}

- (id)bundlePath
{
  v2 = CFBundleCopyBundleURL(self->_cfBundle);
  if (v2)
  {
    v3 = v2;
    path = [(__CFURL *)v2 path];
    CFRelease(v3);
  }

  else
  {
    path = 0;
  }

  return path;
}

- (id)pathForResource:(id)resource ofType:(id)type
{
  v4 = CFBundleCopyResourceURL(self->_cfBundle, resource, type, 0);
  if (v4)
  {
    v5 = v4;
    path = [(__CFURL *)v4 path];
    CFRelease(v5);
  }

  else
  {
    path = 0;
  }

  return path;
}

- (id)pathForResource:(id)resource ofType:(id)type inDirectory:(id)directory
{
  v36 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  typeCopy = type;
  v10 = resourceCopy;
  v11 = typeCopy;
  directoryCopy = directory;
  v29 = v11;
  v27 = directoryCopy;
  if (self)
  {
    v13 = CFBundleCopyResourceURLsOfType(self->_cfBundle, v11, directoryCopy);
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
            path = [v19 path];
            if (!v10 || ([v19 relativePath], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "isEqualToString:", v14), v21, v22))
            {
              [(BSCFBundle *)self addObject:path];
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

  firstObject = [(BSCFBundle *)self firstObject];

  return firstObject;
}

- (id)localizedStringForKey:(id)key value:(id)value table:(id)table
{
  v5 = CFBundleCopyLocalizedString(self->_cfBundle, key, value, table);

  return v5;
}

@end