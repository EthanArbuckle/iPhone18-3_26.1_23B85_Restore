@interface LSResourceProxy
- (BOOL)boundIconIsBadge;
- (LSIconResourceLocator)iconResourceLocator;
- (LSResourceProxy)initWithCoder:(id)a3;
- (NSDictionary)iconsDictionary;
- (NSString)primaryIconName;
- (id)_initWithLocalizedName:(id)a3;
- (id)_privateDocumentFileNamesAsCacheKey;
- (id)uniqueIdentifier;
- (void)encodeWithCoder:(id)a3;
- (void)primaryIconName;
@end

@implementation LSResourceProxy

- (id)_initWithLocalizedName:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = LSResourceProxy;
  v5 = [(_LSQueryResult *)&v11 _init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = v5[1];
    v5[1] = v6;

    if (IconServicesLibrary_frameworkLibrary_3 || (IconServicesLibrary_frameworkLibrary_3 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2)) != 0)
    {
      v8 = objc_alloc_init(_LSBoundIconInfo);
      v9 = v5[2];
      v5[2] = v8;
    }
  }

  return v5;
}

- (BOOL)boundIconIsBadge
{
  if (IconServicesLibrary_frameworkLibrary_3 || (v3 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2), (IconServicesLibrary_frameworkLibrary_3 = v3) != 0))
  {
    v4 = [(LSResourceProxy *)self _boundIconInfo];
    v5 = [(_LSBoundIconInfo *)v4 isBadge];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (LSResourceProxy)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = LSResourceProxy;
  v5 = [(_LSQueryResult *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
    localizedName = v5->_localizedName;
    v5->_localizedName = v6;

    if (IconServicesLibrary_frameworkLibrary_3)
    {
      v8 = &OBJC_IVAR___LSResourceProxy___boundIconInfo;
      v9 = @"boundIconInfo";
      v10 = off_1E6A182F8;
    }

    else
    {
      v11 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
      IconServicesLibrary_frameworkLibrary_3 = v11;
      v10 = off_1E6A182F8;
      if (v11)
      {
        v9 = @"boundIconInfo";
      }

      else
      {
        v10 = off_1E6A18328;
        v9 = @"iconsDictionary";
      }

      if (v11)
      {
        v8 = &OBJC_IVAR___LSResourceProxy___boundIconInfo;
      }

      else
      {
        v8 = &OBJC_IVAR___LSResourceProxy___iconsDictionary;
      }
    }

    v12 = *v10;
    v13 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:v9];
    v14 = *v8;
    v15 = *(&v5->super.super.isa + v14);
    *(&v5->super.super.isa + v14) = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_localizedName forKey:@"localizedName"];
  v4 = @"boundIconInfo";
  v5 = &OBJC_IVAR___LSResourceProxy___boundIconInfo;
  if (!IconServicesLibrary_frameworkLibrary_3)
  {
    IconServicesLibrary_frameworkLibrary_3 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
    if (!IconServicesLibrary_frameworkLibrary_3)
    {
      v5 = &OBJC_IVAR___LSResourceProxy___iconsDictionary;
      v4 = @"iconsDictionary";
    }
  }

  [v6 encodeObject:*(&self->super.super.isa + *v5) forKey:v4];
}

- (id)uniqueIdentifier
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:@"Unimplemented exception" reason:@"Subclasses must implement -uniqueIdentifier" userInfo:0];
  objc_exception_throw(v2);
}

- (LSIconResourceLocator)iconResourceLocator
{
  if (IconServicesLibrary_frameworkLibrary_3 || (v3 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2), (IconServicesLibrary_frameworkLibrary_3 = v3) != 0))
  {
    v3 = [(LSResourceProxy *)self _boundIconInfo];
  }

  return v3;
}

- (NSDictionary)iconsDictionary
{
  if (IconServicesLibrary_frameworkLibrary_3 || (IconServicesLibrary_frameworkLibrary_3 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2)) != 0)
  {
    v3 = [(LSResourceProxy *)self _boundIconInfo];
    v4 = [(_LSBoundIconInfo *)v3 iconsDictionary];
    v5 = [(_LSLazyPropertyList *)v4 propertyList];
  }

  else
  {
    v3 = [(LSResourceProxy *)self _iconsDictionary];
    v5 = [(_LSLazyPropertyList *)v3 propertyList];
  }

  return v5;
}

- (NSString)primaryIconName
{
  if (IconServicesLibrary_frameworkLibrary_3 || (IconServicesLibrary_frameworkLibrary_3 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2)) != 0)
  {
    v3 = [(LSResourceProxy *)self _boundIconInfo];
    v4 = [(_LSBoundIconInfo *)v3 iconsDictionary];

    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = [(LSResourceProxy *)self _iconsDictionary];
    if (v4)
    {
LABEL_4:
      v5 = [v4 objectForKey:@"CFBundlePrimaryIcon" ofClass:0];
      if (_NSIsNSDictionary())
      {
        v6 = [v5 objectForKey:@"CFBundleIconName"];
      }

      else
      {
        if (!_NSIsNSString())
        {
          goto LABEL_13;
        }

        v6 = v5;
      }

      v7 = v6;
      if (!v6 || (_NSIsNSString() & 1) != 0)
      {
        goto LABEL_14;
      }

      v8 = _LSDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(LSResourceProxy *)v7 primaryIconName];
      }

LABEL_13:
      v7 = 0;
LABEL_14:

      goto LABEL_17;
    }
  }

  v7 = 0;
LABEL_17:

  return v7;
}

- (id)_privateDocumentFileNamesAsCacheKey
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [(LSResourceProxy *)self _boundIconInfo];
  v3 = [(_LSBoundIconInfo *)v2 fileNames];

  if (v3)
  {
    v4 = MEMORY[0x1E695DF70];
    v5 = [(_LSBoundIconInfo *)v2 fileNames];
    v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(_LSBoundIconInfo *)v2 fileNames];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v16 + 1) + 8 * i) stringByReplacingOccurrencesOfString:@"/" withString:{@":", v16}];
          [v6 addObject:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    v13 = [v6 componentsJoinedByString:@"_"];
  }

  else
  {
    v13 = @"defaultIcon";
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)primaryIconName
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 138543362;
  v5 = objc_opt_class();
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "Expected icon name to be a string, but it was a %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end