@interface FSMimic
+ (id)basePropertyClasses;
+ (id)resourceValueClassesWithNull;
+ (void)checkSelectors;
- (BOOL)getCachedResourceValueIfPresent:(id *)present forKey:(id)key error:(id *)error;
- (BOOL)getDeviceNumber:(int *)number error:(id *)error;
- (BOOL)getFileSystemRepresentation:(char)representation[1024] error:(id *)error;
- (BOOL)getHFSType:(unsigned int *)type creator:(unsigned int *)creator error:(id *)error;
- (BOOL)getOwnerUID:(unsigned int *)d error:(id *)error;
- (BOOL)getResourceValue:(id *)value forKey:(id)key options:(unsigned __int8)options error:(id *)error;
- (BOOL)hasHiddenExtension;
- (BOOL)hasObjectValueForSelector:(SEL)selector;
- (BOOL)hasPackageBit;
- (BOOL)hasResourceValueForKey:(id)key;
- (BOOL)isAVCHDCollection;
- (BOOL)isAliasFile;
- (BOOL)isBusyDirectory;
- (BOOL)isDataContainer;
- (BOOL)isDirectory;
- (BOOL)isExecutable;
- (BOOL)isExecutableModeFile;
- (BOOL)isHidden;
- (BOOL)isInTrash;
- (BOOL)isMountTrigger;
- (BOOL)isOnDiskImage;
- (BOOL)isOnLocalVolume;
- (BOOL)isOnTimeMachineVolume;
- (BOOL)isRegularFile;
- (BOOL)isResolvable;
- (BOOL)isSecuredSystemContent;
- (BOOL)isSideFault;
- (BOOL)isSymbolicLink;
- (BOOL)isTrashFolder;
- (BOOL)isVolume;
- (FSMimic)initWithCoder:(id)coder;
- (FSMimic)initWithURL:(id)l;
- (id)canonicalPathWithError:(id *)error;
- (id)extensionWithError:(id *)error;
- (id)nameWithError:(id *)error;
- (id)pathWithError:(id *)error;
- (id)sideFaultResourceValuesWithError:(id *)error;
- (void)askedForMissingResourceKey:(id)key;
- (void)askedForMissingSelector:(SEL)selector;
- (void)encodeWithCoder:(id)coder;
- (void)setHFSType:(unsigned int)type creator:(unsigned int)creator;
- (void)setObjectValue:(id)value forSelector:(SEL)selector;
@end

@implementation FSMimic

+ (id)resourceValueClassesWithNull
{
  if (+[FSMimic resourceValueClassesWithNull]::onceToken != -1)
  {
    +[FSMimic resourceValueClassesWithNull];
  }

  v3 = +[FSMimic resourceValueClassesWithNull]::result;

  return v3;
}

- (BOOL)isVolume
{
  baseProperties = self->_baseProperties;
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = [(NSMutableDictionary *)baseProperties objectForKey:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    [(FSMimic *)self askedForMissingSelector:a2];
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)isDirectory
{
  baseProperties = self->_baseProperties;
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = [(NSMutableDictionary *)baseProperties objectForKey:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    [(FSMimic *)self askedForMissingSelector:a2];
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)isSymbolicLink
{
  baseProperties = self->_baseProperties;
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = [(NSMutableDictionary *)baseProperties objectForKey:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    [(FSMimic *)self askedForMissingSelector:a2];
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)isAliasFile
{
  baseProperties = self->_baseProperties;
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = [(NSMutableDictionary *)baseProperties objectForKey:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    [(FSMimic *)self askedForMissingSelector:a2];
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)isRegularFile
{
  baseProperties = self->_baseProperties;
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = [(NSMutableDictionary *)baseProperties objectForKey:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    [(FSMimic *)self askedForMissingSelector:a2];
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (FSMimic)initWithURL:(id)l
{
  lCopy = l;
  v15.receiver = self;
  v15.super_class = FSMimic;
  v6 = [(FSMimic *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    baseProperties = v7->_baseProperties;
    v7->_baseProperties = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    resourceValues = v7->_resourceValues;
    v7->_resourceValues = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    relativePathsThatExist = v7->_relativePathsThatExist;
    v7->_relativePathsThatExist = v12;

    *&v7->_flags &= 0xFCu;
  }

  return v7;
}

+ (id)basePropertyClasses
{
  if (+[FSMimic basePropertyClasses]::onceToken != -1)
  {
    +[FSMimic basePropertyClasses];
  }

  v3 = +[FSMimic basePropertyClasses]::result;

  return v3;
}

void __30__FSMimic_basePropertyClasses__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFA8]);
  v1 = objc_opt_class();
  v2 = [v0 initWithObjects:{v1, objc_opt_class(), 0}];
  v3 = +[FSMimic basePropertyClasses]::result;
  +[FSMimic basePropertyClasses]::result = v2;
}

void __39__FSMimic_resourceValueClassesWithNull__block_invoke()
{
  v0 = _LSGetURLPropertyClasses();
  v1 = [v0 mutableCopy];

  [v1 addObject:objc_opt_class()];
  v2 = +[FSMimic resourceValueClassesWithNull]::result;
  +[FSMimic resourceValueClassesWithNull]::result = v1;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_url forKey:@"url"];
  [coderCopy encodeObject:self->_baseProperties forKey:@"baseProperties"];
  v4 = _LSEncodeURLPropertyDictionary(self->_resourceValues);
  [coderCopy encodeObject:v4 forKey:@"resourceValues"];

  [coderCopy encodeObject:self->_relativePathsThatExist forKey:@"relativePathsThatExist"];
  [coderCopy encodeInt32:self->_hfsType forKey:@"hfsType"];
  [coderCopy encodeInt32:self->_creator forKey:@"creator"];
  [coderCopy encodeBool:*&self->_flags & 1 forKey:@"HFSTypesSet"];
  [coderCopy encodeBool:(*&self->_flags >> 1) & 1 forKey:@"HFSTypesUnavailable"];
}

- (FSMimic)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = FSMimic;
  v5 = [(FSMimic *)&v24 init];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = objc_opt_class();
    v9 = +[FSMimic resourceValueClassesWithNull];
    v10 = [coderCopy ls_decodeDictionaryWithKeysOfClass:v8 valuesOfClasses:v9 forKey:@"baseProperties"];
    v11 = [v10 mutableCopy];
    baseProperties = v5->_baseProperties;
    v5->_baseProperties = v11;

    v13 = objc_opt_class();
    v14 = +[FSMimic resourceValueClassesWithNull];
    v15 = [coderCopy ls_decodeDictionaryWithKeysOfClass:v13 valuesOfClasses:v14 forKey:@"resourceValues"];
    v16 = _LSDecodeURLPropertyDictionary(v15);
    v17 = [v16 mutableCopy];
    resourceValues = v5->_resourceValues;
    v5->_resourceValues = v17;

    v19 = [coderCopy ls_decodeSetWithValuesOfClass:objc_opt_class() forKey:@"relativePathsThatExist"];
    v20 = [v19 mutableCopy];
    relativePathsThatExist = v5->_relativePathsThatExist;
    v5->_relativePathsThatExist = v20;

    v5->_hfsType = [coderCopy decodeInt32ForKey:@"hfsType"];
    v5->_creator = [coderCopy decodeInt32ForKey:@"creator"];
    *&v5->_flags = *&v5->_flags & 0xFE | [coderCopy decodeBoolForKey:@"HFSTypesSet"];
    if ([coderCopy decodeBoolForKey:@"HFSTypesUnavailable"])
    {
      v22 = 2;
    }

    else
    {
      v22 = 0;
    }

    *&v5->_flags = *&v5->_flags & 0xFD | v22;
  }

  return v5;
}

- (void)askedForMissingSelector:(SEL)selector
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = _LSDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    Name = sel_getName(selector);
    [(FSMimic *)Name askedForMissingSelector:v7, v4];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)askedForMissingResourceKey:(id)key
{
  keyCopy = key;
  v4 = _LSDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [(FSMimic *)keyCopy askedForMissingResourceKey:v4];
  }
}

- (void)setObjectValue:(id)value forSelector:(SEL)selector
{
  valueCopy = value;
  baseProperties = self->_baseProperties;
  v7 = NSStringFromSelector(selector);
  [(NSMutableDictionary *)baseProperties setObject:valueCopy forKey:v7];
}

- (BOOL)hasObjectValueForSelector:(SEL)selector
{
  baseProperties = self->_baseProperties;
  v4 = NSStringFromSelector(selector);
  v5 = [(NSMutableDictionary *)baseProperties objectForKey:v4];
  LOBYTE(baseProperties) = v5 != 0;

  return baseProperties;
}

- (BOOL)getResourceValue:(id *)value forKey:(id)key options:(unsigned __int8)options error:(id *)error
{
  keyCopy = key;
  v17 = 0;
  v10 = [(FSMimic *)self getCachedResourceValueIfPresent:value forKey:keyCopy error:&v17];
  v11 = v17;
  v12 = v11;
  if (!v10)
  {
    if (error)
    {
      v13 = v11;
      *error = v12;
    }

    if ([v12 code] == 5)
    {
      domain = [v12 domain];
      v15 = [domain isEqualToString:*MEMORY[0x1E696A798]];

      if (v15)
      {
        [(FSMimic *)self askedForMissingResourceKey:keyCopy];
      }
    }
  }

  return v10;
}

- (BOOL)getCachedResourceValueIfPresent:(id *)present forKey:(id)key error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v9 = [(NSMutableDictionary *)self->_resourceValues objectForKey:keyCopy];
  if (v9)
  {
    if (present)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = 0;
      }

      else
      {
        v10 = v9;
      }

      objc_storeStrong(present, v10);
    }
  }

  else if (error)
  {
    v14 = *MEMORY[0x1E696A278];
    v15[0] = keyCopy;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 5, v11, "[FSMimic getCachedResourceValueIfPresent:forKey:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSMimic.mm", 237);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9 != 0;
}

- (BOOL)hasResourceValueForKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_resourceValues objectForKey:key];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isBusyDirectory
{
  baseProperties = self->_baseProperties;
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = [(NSMutableDictionary *)baseProperties objectForKey:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    [(FSMimic *)self askedForMissingSelector:a2];
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)isExecutableModeFile
{
  baseProperties = self->_baseProperties;
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = [(NSMutableDictionary *)baseProperties objectForKey:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    [(FSMimic *)self askedForMissingSelector:a2];
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)isExecutable
{
  baseProperties = self->_baseProperties;
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = [(NSMutableDictionary *)baseProperties objectForKey:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    [(FSMimic *)self askedForMissingSelector:a2];
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)isResolvable
{
  baseProperties = self->_baseProperties;
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = [(NSMutableDictionary *)baseProperties objectForKey:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    [(FSMimic *)self askedForMissingSelector:a2];
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)isSideFault
{
  baseProperties = self->_baseProperties;
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = [(NSMutableDictionary *)baseProperties objectForKey:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    [(FSMimic *)self askedForMissingSelector:a2];
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasPackageBit
{
  baseProperties = self->_baseProperties;
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = [(NSMutableDictionary *)baseProperties objectForKey:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    [(FSMimic *)self askedForMissingSelector:a2];
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)isHidden
{
  baseProperties = self->_baseProperties;
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = [(NSMutableDictionary *)baseProperties objectForKey:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    [(FSMimic *)self askedForMissingSelector:a2];
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)hasHiddenExtension
{
  baseProperties = self->_baseProperties;
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = [(NSMutableDictionary *)baseProperties objectForKey:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    [(FSMimic *)self askedForMissingSelector:a2];
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)isDataContainer
{
  baseProperties = self->_baseProperties;
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = [(NSMutableDictionary *)baseProperties objectForKey:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    [(FSMimic *)self askedForMissingSelector:a2];
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)getFileSystemRepresentation:(char)representation[1024] error:(id *)error
{
  v6 = [(FSMimic *)self pathWithError:error];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  if (([v6 getFileSystemRepresentation:representation maxLength:1024] & 1) == 0)
  {
    if (error)
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -2110, 0, "[FSMimic getFileSystemRepresentation:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSMimic.mm", 322);
      *error = v8 = 0;
      goto LABEL_7;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = 1;
LABEL_7:

  return v8;
}

- (id)pathWithError:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  baseProperties = self->_baseProperties;
  v7 = NSStringFromSelector(a2);
  v8 = objc_opt_class();
  v9 = [(NSMutableDictionary *)baseProperties objectForKey:v7];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {

    if (v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_14;
    }
  }

  [(FSMimic *)self askedForMissingSelector:a2];
  if (error)
  {
    v16 = *MEMORY[0x1E696A278];
    v17[0] = @"path";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 5, v13, "[FSMimic pathWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSMimic.mm", 329);
  }

  v10 = 0;
LABEL_14:
  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)canonicalPathWithError:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  baseProperties = self->_baseProperties;
  v7 = NSStringFromSelector(a2);
  v8 = objc_opt_class();
  v9 = [(NSMutableDictionary *)baseProperties objectForKey:v7];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {

    if (v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_14;
    }
  }

  [(FSMimic *)self askedForMissingSelector:a2];
  if (error)
  {
    v16 = *MEMORY[0x1E696A278];
    v17[0] = @"canonicalPath";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 5, v13, "[FSMimic canonicalPathWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSMimic.mm", 330);
  }

  v10 = 0;
LABEL_14:
  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)nameWithError:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  baseProperties = self->_baseProperties;
  v7 = NSStringFromSelector(a2);
  v8 = objc_opt_class();
  v9 = [(NSMutableDictionary *)baseProperties objectForKey:v7];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {

    if (v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_14;
    }
  }

  [(FSMimic *)self askedForMissingSelector:a2];
  if (error)
  {
    v16 = *MEMORY[0x1E696A278];
    v17[0] = @"name";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 5, v13, "[FSMimic nameWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSMimic.mm", 331);
  }

  v10 = 0;
LABEL_14:
  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)extensionWithError:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  baseProperties = self->_baseProperties;
  v7 = NSStringFromSelector(a2);
  v8 = objc_opt_class();
  v9 = [(NSMutableDictionary *)baseProperties objectForKey:v7];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {

    if (v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_14;
    }
  }

  [(FSMimic *)self askedForMissingSelector:a2];
  if (error)
  {
    v16 = *MEMORY[0x1E696A278];
    v17[0] = @"extension";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 5, v13, "[FSMimic extensionWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSMimic.mm", 332);
  }

  v10 = 0;
LABEL_14:
  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)isMountTrigger
{
  baseProperties = self->_baseProperties;
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = [(NSMutableDictionary *)baseProperties objectForKey:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    [(FSMimic *)self askedForMissingSelector:a2];
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)isSecuredSystemContent
{
  baseProperties = self->_baseProperties;
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = [(NSMutableDictionary *)baseProperties objectForKey:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    [(FSMimic *)self askedForMissingSelector:a2];
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)isOnDiskImage
{
  baseProperties = self->_baseProperties;
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = [(NSMutableDictionary *)baseProperties objectForKey:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    [(FSMimic *)self askedForMissingSelector:a2];
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)isOnLocalVolume
{
  baseProperties = self->_baseProperties;
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = [(NSMutableDictionary *)baseProperties objectForKey:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    [(FSMimic *)self askedForMissingSelector:a2];
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)isOnTimeMachineVolume
{
  baseProperties = self->_baseProperties;
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = [(NSMutableDictionary *)baseProperties objectForKey:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    [(FSMimic *)self askedForMissingSelector:a2];
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)getHFSType:(unsigned int *)type creator:(unsigned int *)creator error:(id *)error
{
  flags = self->_flags;
  if ((flags & 1) == 0)
  {
    if ((*&self->_flags & 2) != 0)
    {
      if (!error)
      {
        return flags & 1;
      }

      v7 = *MEMORY[0x1E696A768];
      v8 = -10813;
      v9 = 362;
    }

    else
    {
      if (!error)
      {
        return flags & 1;
      }

      v7 = *MEMORY[0x1E696A798];
      v8 = 5;
      v9 = 364;
    }

    *error = _LSMakeNSErrorImpl(v7, v8, 0, "[FSMimic getHFSType:creator:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSMimic.mm", v9);
    return flags & 1;
  }

  if (type)
  {
    *type = self->_hfsType;
  }

  if (creator)
  {
    *creator = self->_creator;
  }

  return flags & 1;
}

- (void)setHFSType:(unsigned int)type creator:(unsigned int)creator
{
  *&self->_flags = *&self->_flags & 0xFC | 1;
  self->_hfsType = type;
  self->_creator = creator;
}

- (BOOL)getDeviceNumber:(int *)number error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  baseProperties = self->_baseProperties;
  selfCopy = self;
  v9 = baseProperties;
  v10 = NSStringFromSelector(a2);
  v11 = objc_opt_class();
  v12 = [(NSMutableDictionary *)v9 objectForKey:v10];
  v13 = v12;
  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (v12)
    {
LABEL_9:
      *number = [v13 intValue];
      v16 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      goto LABEL_9;
    }
  }

  [(FSMimic *)selfCopy askedForMissingSelector:a2];
  if (!error)
  {
    v16 = 0;
    goto LABEL_14;
  }

  v20 = *MEMORY[0x1E696A278];
  v21[0] = v10;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 5, v17, "getFailableNumericFromBaseProperties", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSMimic.mm", 284);
  *error = v16 = 0;
  v13 = v17;
LABEL_13:

LABEL_14:
  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)getOwnerUID:(unsigned int *)d error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  baseProperties = self->_baseProperties;
  selfCopy = self;
  v9 = baseProperties;
  v10 = NSStringFromSelector(a2);
  v11 = objc_opt_class();
  v12 = [(NSMutableDictionary *)v9 objectForKey:v10];
  v13 = v12;
  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (v12)
    {
LABEL_9:
      *d = [v13 unsignedIntValue];
      v16 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      goto LABEL_9;
    }
  }

  [(FSMimic *)selfCopy askedForMissingSelector:a2];
  if (!error)
  {
    v16 = 0;
    goto LABEL_14;
  }

  v20 = *MEMORY[0x1E696A278];
  v21[0] = v10;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 5, v17, "getFailableNumericFromBaseProperties", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSMimic.mm", 284);
  *error = v16 = 0;
  v13 = v17;
LABEL_13:

LABEL_14:
  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)isInTrash
{
  baseProperties = self->_baseProperties;
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = [(NSMutableDictionary *)baseProperties objectForKey:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    [(FSMimic *)self askedForMissingSelector:a2];
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)isTrashFolder
{
  baseProperties = self->_baseProperties;
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = [(NSMutableDictionary *)baseProperties objectForKey:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    [(FSMimic *)self askedForMissingSelector:a2];
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (BOOL)isAVCHDCollection
{
  baseProperties = self->_baseProperties;
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = [(NSMutableDictionary *)baseProperties objectForKey:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_12;
    }

LABEL_11:
    v8 = 0;
    [(FSMimic *)self askedForMissingSelector:a2];
    goto LABEL_12;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  bOOLValue = [v8 BOOLValue];

  return bOOLValue;
}

- (id)sideFaultResourceValuesWithError:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  baseProperties = self->_baseProperties;
  v7 = NSStringFromSelector(a2);
  v8 = objc_opt_class();
  v9 = [(NSMutableDictionary *)baseProperties objectForKey:v7];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {

    if (v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {

      goto LABEL_14;
    }
  }

  [(FSMimic *)self askedForMissingSelector:a2];
  if (error)
  {
    v16 = *MEMORY[0x1E696A278];
    v17[0] = @"sideFaultResourceValues";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *error = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 5, v13, "[FSMimic sideFaultResourceValuesWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSMimic.mm", 400);
  }

  v10 = 0;
LABEL_14:
  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (void)checkSelectors
{
  v17 = *MEMORY[0x1E69E9840];
  outCount = 0;
  v2 = protocol_copyMethodDescriptionList(&unk_1EEF910C0, 1, 1, &outCount);
  v3 = v2;
  if (outCount)
  {
    v4 = 0;
    v5 = v2;
    do
    {
      v6 = categorizeSelector(*v5);
      v7 = _LSDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        Name = sel_getName(*v5);
        *buf = 136315394;
        v14 = Name;
        v15 = 1024;
        v16 = v6;
        _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_INFO, "Category for %s is %d", buf, 0x12u);
      }

      if (v6 == 6)
      {
        v9 = _LSDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
        {
          v10 = sel_getName(*v5);
          *buf = 136315138;
          v14 = v10;
          _os_log_fault_impl(&dword_18162D000, v9, OS_LOG_TYPE_FAULT, "unknown category for %s!", buf, 0xCu);
        }
      }

      ++v4;
      v5 += 2;
    }

    while (v4 < outCount);
  }

  free(v3);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)askedForMissingSelector:(os_log_t)log .cold.1(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_18162D000, log, OS_LOG_TYPE_FAULT, "asked for missing selector %s", buf, 0xCu);
}

- (void)askedForMissingResourceKey:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_18162D000, a2, OS_LOG_TYPE_FAULT, "asked for missing resource key %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end