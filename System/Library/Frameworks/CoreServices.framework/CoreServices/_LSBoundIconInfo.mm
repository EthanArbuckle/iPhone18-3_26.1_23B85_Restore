@interface _LSBoundIconInfo
- (NSDictionary)bundleIconsDictionary;
- (_LSBoundIconInfo)initWithCoder:(id)coder;
- (uint64_t)documentAllowOverride;
- (uint64_t)fileNames;
- (uint64_t)iconsDictionary;
- (uint64_t)isBadge;
- (uint64_t)setBadge:(uint64_t)result;
- (uint64_t)setDocumentAllowOverride:(uint64_t)result;
- (uint64_t)setPrerendered:(uint64_t)result;
- (void)encodeWithCoder:(id)coder;
- (void)setCacheKey:(void *)key;
- (void)setContainerURL:(uint64_t)l;
- (void)setDataContainerURL:(uint64_t)l;
- (void)setFileNames:(void *)names;
- (void)setIconsDictionary:(void *)dictionary;
@end

@implementation _LSBoundIconInfo

- (_LSBoundIconInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = _LSBoundIconInfo;
  v5 = [(_LSBoundIconInfo *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;

    v8 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"containerURL"];
    containerURL = v5->_containerURL;
    v5->_containerURL = v8;

    v10 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"dataContainerURL"];
    dataContainerURL = v5->_dataContainerURL;
    v5->_dataContainerURL = v10;

    v12 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"resourcesDirectoryURL"];
    resourcesDirectoryURL = v5->_resourcesDirectoryURL;
    v5->_resourcesDirectoryURL = v12;

    v14 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"iconsDictionary"];
    iconsDictionary = v5->_iconsDictionary;
    v5->_iconsDictionary = v14;

    v16 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"cacheKey"];
    cacheKey = v5->_cacheKey;
    v5->_cacheKey = v16;

    v18 = [coderCopy ls_decodeArrayWithValuesOfClass:objc_opt_class() forKey:@"fileNames"];
    fileNames = v5->_fileNames;
    v5->_fileNames = v18;

    v5->_prerendered = [coderCopy decodeBoolForKey:@"prerendered"];
    v5->_badge = [coderCopy decodeBoolForKey:@"badge"];
    v5->_documentAllowOverride = [coderCopy decodeBoolForKey:@"documentAllowOverride"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  applicationIdentifier = self->_applicationIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:applicationIdentifier forKey:@"applicationIdentifier"];
  [coderCopy encodeObject:self->_containerURL forKey:@"containerURL"];
  [coderCopy encodeObject:self->_dataContainerURL forKey:@"dataContainerURL"];
  [coderCopy encodeObject:self->_resourcesDirectoryURL forKey:@"resourcesDirectoryURL"];
  [coderCopy encodeObject:self->_iconsDictionary forKey:@"iconsDictionary"];
  [coderCopy encodeObject:self->_cacheKey forKey:@"cacheKey"];
  [coderCopy encodeObject:self->_fileNames forKey:@"fileNames"];
  [coderCopy encodeBool:self->_prerendered forKey:@"prerendered"];
  [coderCopy encodeBool:self->_badge forKey:@"badge"];
  [coderCopy encodeBool:self->_documentAllowOverride forKey:@"documentAllowOverride"];
}

- (NSDictionary)bundleIconsDictionary
{
  selfCopy = self;
  v20[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    self = self->_iconsDictionary;
  }

  propertyList = [(_LSLazyPropertyList *)self propertyList];
  if (selfCopy)
  {
    iconsDictionary = selfCopy->_iconsDictionary;
  }

  else
  {
    iconsDictionary = 0;
  }

  v5 = iconsDictionary;
  v6 = [(_LSLazyPropertyList *)v5 objectForKey:@"CFBundlePrimaryIcon" ofClass:objc_opt_class()];

  if (!v6)
  {
    if (selfCopy)
    {
      v7 = selfCopy->_fileNames;
      if (v7)
      {
        v8 = v7;
        if ([(NSArray *)v7 count]< 2)
        {
          firstObject = [(NSArray *)v8 firstObject];
          v10 = [firstObject isEqual:@"-"];

          if (v10)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }

        v17 = @"CFBundleIconFiles";
        fileNames = selfCopy->_fileNames;
        v19 = @"CFBundlePrimaryIcon";
        v11 = MEMORY[0x1E695DF20];
        v12 = fileNames;
        v13 = [v11 dictionaryWithObjects:&fileNames forKeys:&v17 count:1];
        v20[0] = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];

        propertyList = v14;
      }
    }
  }

LABEL_12:
  v15 = *MEMORY[0x1E69E9840];

  return propertyList;
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

- (void)setContainerURL:(uint64_t)l
{
  if (l)
  {
    objc_storeStrong((l + 32), a2);
  }
}

- (void)setDataContainerURL:(uint64_t)l
{
  if (l)
  {
    objc_storeStrong((l + 40), a2);
  }
}

- (void)setIconsDictionary:(void *)dictionary
{
  if (dictionary)
  {
    objc_setProperty_nonatomic_copy(dictionary, newValue, newValue, 48);
  }
}

- (void)setCacheKey:(void *)key
{
  if (key)
  {
    objc_setProperty_nonatomic_copy(key, newValue, newValue, 56);
  }
}

- (void)setFileNames:(void *)names
{
  if (names)
  {
    objc_setProperty_nonatomic_copy(names, newValue, newValue, 64);
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
  if (self)
  {
    return OUTLINED_FUNCTION_0_5(*(self + 9));
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
  if (self)
  {
    return OUTLINED_FUNCTION_0_5(*(self + 10));
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