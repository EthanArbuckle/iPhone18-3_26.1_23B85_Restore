@interface _LSBoundIconInfo
- (NSDictionary)bundleIconsDictionary;
- (_LSBoundIconInfo)initWithCoder:(id)a3;
- (uint64_t)documentAllowOverride;
- (uint64_t)fileNames;
- (uint64_t)iconsDictionary;
- (uint64_t)isBadge;
- (uint64_t)setBadge:(uint64_t)result;
- (uint64_t)setDocumentAllowOverride:(uint64_t)result;
- (uint64_t)setPrerendered:(uint64_t)result;
- (void)encodeWithCoder:(id)a3;
- (void)setCacheKey:(void *)a1;
- (void)setContainerURL:(uint64_t)a1;
- (void)setDataContainerURL:(uint64_t)a1;
- (void)setFileNames:(void *)a1;
- (void)setIconsDictionary:(void *)a1;
@end

@implementation _LSBoundIconInfo

- (_LSBoundIconInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = _LSBoundIconInfo;
  v5 = [(_LSBoundIconInfo *)&v21 init];
  if (v5)
  {
    v6 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v8 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"containerURL"];
    containerURL = v5->_containerURL;
    v5->_containerURL = v8;

    v10 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"dataContainerURL"];
    dataContainerURL = v5->_dataContainerURL;
    v5->_dataContainerURL = v10;

    v12 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"resourcesDirectoryURL"];
    resourcesDirectoryURL = v5->_resourcesDirectoryURL;
    v5->_resourcesDirectoryURL = v12;

    v14 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"iconsDictionary"];
    iconsDictionary = v5->_iconsDictionary;
    v5->_iconsDictionary = v14;

    v16 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"cacheKey"];
    cacheKey = v5->_cacheKey;
    v5->_cacheKey = v16;

    v18 = [v4 ls_decodeArrayWithValuesOfClass:objc_opt_class() forKey:@"fileNames"];
    fileNames = v5->_fileNames;
    v5->_fileNames = v18;

    v5->_prerendered = [v4 decodeBoolForKey:@"prerendered"];
    v5->_badge = [v4 decodeBoolForKey:@"badge"];
    v5->_documentAllowOverride = [v4 decodeBoolForKey:@"documentAllowOverride"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  applicationIdentifier = self->_applicationIdentifier;
  v5 = a3;
  [v5 encodeObject:applicationIdentifier forKey:@"applicationIdentifier"];
  [v5 encodeObject:self->_containerURL forKey:@"containerURL"];
  [v5 encodeObject:self->_dataContainerURL forKey:@"dataContainerURL"];
  [v5 encodeObject:self->_resourcesDirectoryURL forKey:@"resourcesDirectoryURL"];
  [v5 encodeObject:self->_iconsDictionary forKey:@"iconsDictionary"];
  [v5 encodeObject:self->_cacheKey forKey:@"cacheKey"];
  [v5 encodeObject:self->_fileNames forKey:@"fileNames"];
  [v5 encodeBool:self->_prerendered forKey:@"prerendered"];
  [v5 encodeBool:self->_badge forKey:@"badge"];
  [v5 encodeBool:self->_documentAllowOverride forKey:@"documentAllowOverride"];
}

- (NSDictionary)bundleIconsDictionary
{
  v2 = self;
  v20[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_iconsDictionary;
  }

  v3 = [(_LSLazyPropertyList *)self propertyList];
  if (v2)
  {
    iconsDictionary = v2->_iconsDictionary;
  }

  else
  {
    iconsDictionary = 0;
  }

  v5 = iconsDictionary;
  v6 = [(_LSLazyPropertyList *)v5 objectForKey:@"CFBundlePrimaryIcon" ofClass:objc_opt_class()];

  if (!v6)
  {
    if (v2)
    {
      v7 = v2->_fileNames;
      if (v7)
      {
        v8 = v7;
        if ([(NSArray *)v7 count]< 2)
        {
          v9 = [(NSArray *)v8 firstObject];
          v10 = [v9 isEqual:@"-"];

          if (v10)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }

        v17 = @"CFBundleIconFiles";
        fileNames = v2->_fileNames;
        v19 = @"CFBundlePrimaryIcon";
        v11 = MEMORY[0x1E695DF20];
        v12 = fileNames;
        v13 = [v11 dictionaryWithObjects:&fileNames forKeys:&v17 count:1];
        v20[0] = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];

        v3 = v14;
      }
    }
  }

LABEL_12:
  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (uint64_t)iconsDictionary
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)fileNames
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (void)setContainerURL:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

- (void)setDataContainerURL:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

- (void)setIconsDictionary:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 48);
  }
}

- (void)setCacheKey:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 56);
  }
}

- (void)setFileNames:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 64);
  }
}

- (uint64_t)setPrerendered:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

- (uint64_t)isBadge
{
  if (a1)
  {
    return OUTLINED_FUNCTION_0_5(*(a1 + 9));
  }

  else
  {
    return OUTLINED_FUNCTION_0_5(0);
  }
}

- (uint64_t)setBadge:(uint64_t)result
{
  if (result)
  {
    *(result + 9) = a2;
  }

  return result;
}

- (uint64_t)documentAllowOverride
{
  if (a1)
  {
    return OUTLINED_FUNCTION_0_5(*(a1 + 10));
  }

  else
  {
    return OUTLINED_FUNCTION_0_5(0);
  }
}

- (uint64_t)setDocumentAllowOverride:(uint64_t)result
{
  if (result)
  {
    *(result + 10) = a2;
  }

  return result;
}

@end