@interface FSMimic
+ (id)basePropertyClasses;
+ (id)resourceValueClassesWithNull;
+ (void)checkSelectors;
- (BOOL)getCachedResourceValueIfPresent:(id *)a3 forKey:(id)a4 error:(id *)a5;
- (BOOL)getDeviceNumber:(int *)a3 error:(id *)a4;
- (BOOL)getFileSystemRepresentation:(char)a3[1024] error:(id *)a4;
- (BOOL)getHFSType:(unsigned int *)a3 creator:(unsigned int *)a4 error:(id *)a5;
- (BOOL)getOwnerUID:(unsigned int *)a3 error:(id *)a4;
- (BOOL)getResourceValue:(id *)a3 forKey:(id)a4 options:(unsigned __int8)a5 error:(id *)a6;
- (BOOL)hasHiddenExtension;
- (BOOL)hasObjectValueForSelector:(SEL)a3;
- (BOOL)hasPackageBit;
- (BOOL)hasResourceValueForKey:(id)a3;
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
- (FSMimic)initWithCoder:(id)a3;
- (FSMimic)initWithURL:(id)a3;
- (id)canonicalPathWithError:(id *)a3;
- (id)extensionWithError:(id *)a3;
- (id)nameWithError:(id *)a3;
- (id)pathWithError:(id *)a3;
- (id)sideFaultResourceValuesWithError:(id *)a3;
- (void)askedForMissingResourceKey:(id)a3;
- (void)askedForMissingSelector:(SEL)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setHFSType:(unsigned int)a3 creator:(unsigned int)a4;
- (void)setObjectValue:(id)a3 forSelector:(SEL)a4;
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
  v11 = [v8 BOOLValue];

  return v11;
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
  v11 = [v8 BOOLValue];

  return v11;
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
  v11 = [v8 BOOLValue];

  return v11;
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
  v11 = [v8 BOOLValue];

  return v11;
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
  v11 = [v8 BOOLValue];

  return v11;
}

- (FSMimic)initWithURL:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = FSMimic;
  v6 = [(FSMimic *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
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

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_url forKey:@"url"];
  [v5 encodeObject:self->_baseProperties forKey:@"baseProperties"];
  v4 = _LSEncodeURLPropertyDictionary(self->_resourceValues);
  [v5 encodeObject:v4 forKey:@"resourceValues"];

  [v5 encodeObject:self->_relativePathsThatExist forKey:@"relativePathsThatExist"];
  [v5 encodeInt32:self->_hfsType forKey:@"hfsType"];
  [v5 encodeInt32:self->_creator forKey:@"creator"];
  [v5 encodeBool:*&self->_flags & 1 forKey:@"HFSTypesSet"];
  [v5 encodeBool:(*&self->_flags >> 1) & 1 forKey:@"HFSTypesUnavailable"];
}

- (FSMimic)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = FSMimic;
  v5 = [(FSMimic *)&v24 init];
  if (v5)
  {
    v6 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v6;

    v8 = objc_opt_class();
    v9 = +[FSMimic resourceValueClassesWithNull];
    v10 = [v4 ls_decodeDictionaryWithKeysOfClass:v8 valuesOfClasses:v9 forKey:@"baseProperties"];
    v11 = [v10 mutableCopy];
    baseProperties = v5->_baseProperties;
    v5->_baseProperties = v11;

    v13 = objc_opt_class();
    v14 = +[FSMimic resourceValueClassesWithNull];
    v15 = [v4 ls_decodeDictionaryWithKeysOfClass:v13 valuesOfClasses:v14 forKey:@"resourceValues"];
    v16 = _LSDecodeURLPropertyDictionary(v15);
    v17 = [v16 mutableCopy];
    resourceValues = v5->_resourceValues;
    v5->_resourceValues = v17;

    v19 = [v4 ls_decodeSetWithValuesOfClass:objc_opt_class() forKey:@"relativePathsThatExist"];
    v20 = [v19 mutableCopy];
    relativePathsThatExist = v5->_relativePathsThatExist;
    v5->_relativePathsThatExist = v20;

    v5->_hfsType = [v4 decodeInt32ForKey:@"hfsType"];
    v5->_creator = [v4 decodeInt32ForKey:@"creator"];
    *&v5->_flags = *&v5->_flags & 0xFE | [v4 decodeBoolForKey:@"HFSTypesSet"];
    if ([v4 decodeBoolForKey:@"HFSTypesUnavailable"])
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

- (void)askedForMissingSelector:(SEL)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = _LSDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    Name = sel_getName(a3);
    [(FSMimic *)Name askedForMissingSelector:v7, v4];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)askedForMissingResourceKey:(id)a3
{
  v3 = a3;
  v4 = _LSDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    [(FSMimic *)v3 askedForMissingResourceKey:v4];
  }
}

- (void)setObjectValue:(id)a3 forSelector:(SEL)a4
{
  v8 = a3;
  baseProperties = self->_baseProperties;
  v7 = NSStringFromSelector(a4);
  [(NSMutableDictionary *)baseProperties setObject:v8 forKey:v7];
}

- (BOOL)hasObjectValueForSelector:(SEL)a3
{
  baseProperties = self->_baseProperties;
  v4 = NSStringFromSelector(a3);
  v5 = [(NSMutableDictionary *)baseProperties objectForKey:v4];
  LOBYTE(baseProperties) = v5 != 0;

  return baseProperties;
}

- (BOOL)getResourceValue:(id *)a3 forKey:(id)a4 options:(unsigned __int8)a5 error:(id *)a6
{
  v9 = a4;
  v17 = 0;
  v10 = [(FSMimic *)self getCachedResourceValueIfPresent:a3 forKey:v9 error:&v17];
  v11 = v17;
  v12 = v11;
  if (!v10)
  {
    if (a6)
    {
      v13 = v11;
      *a6 = v12;
    }

    if ([v12 code] == 5)
    {
      v14 = [v12 domain];
      v15 = [v14 isEqualToString:*MEMORY[0x1E696A798]];

      if (v15)
      {
        [(FSMimic *)self askedForMissingResourceKey:v9];
      }
    }
  }

  return v10;
}

- (BOOL)getCachedResourceValueIfPresent:(id *)a3 forKey:(id)a4 error:(id *)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [(NSMutableDictionary *)self->_resourceValues objectForKey:v8];
  if (v9)
  {
    if (a3)
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

      objc_storeStrong(a3, v10);
    }
  }

  else if (a5)
  {
    v14 = *MEMORY[0x1E696A278];
    v15[0] = v8;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *a5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 5, v11, "[FSMimic getCachedResourceValueIfPresent:forKey:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSMimic.mm", 237);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v9 != 0;
}

- (BOOL)hasResourceValueForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_resourceValues objectForKey:a3];
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
  v11 = [v8 BOOLValue];

  return v11;
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
  v11 = [v8 BOOLValue];

  return v11;
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
  v11 = [v8 BOOLValue];

  return v11;
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
  v11 = [v8 BOOLValue];

  return v11;
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
  v11 = [v8 BOOLValue];

  return v11;
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
  v11 = [v8 BOOLValue];

  return v11;
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
  v11 = [v8 BOOLValue];

  return v11;
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
  v11 = [v8 BOOLValue];

  return v11;
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
  v11 = [v8 BOOLValue];

  return v11;
}

- (BOOL)getFileSystemRepresentation:(char)a3[1024] error:(id *)a4
{
  v6 = [(FSMimic *)self pathWithError:a4];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  if (([v6 getFileSystemRepresentation:a3 maxLength:1024] & 1) == 0)
  {
    if (a4)
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -2110, 0, "[FSMimic getFileSystemRepresentation:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSMimic.mm", 322);
      *a4 = v8 = 0;
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

- (id)pathWithError:(id *)a3
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
  if (a3)
  {
    v16 = *MEMORY[0x1E696A278];
    v17[0] = @"path";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 5, v13, "[FSMimic pathWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSMimic.mm", 329);
  }

  v10 = 0;
LABEL_14:
  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)canonicalPathWithError:(id *)a3
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
  if (a3)
  {
    v16 = *MEMORY[0x1E696A278];
    v17[0] = @"canonicalPath";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 5, v13, "[FSMimic canonicalPathWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSMimic.mm", 330);
  }

  v10 = 0;
LABEL_14:
  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)nameWithError:(id *)a3
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
  if (a3)
  {
    v16 = *MEMORY[0x1E696A278];
    v17[0] = @"name";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 5, v13, "[FSMimic nameWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSMimic.mm", 331);
  }

  v10 = 0;
LABEL_14:
  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)extensionWithError:(id *)a3
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
  if (a3)
  {
    v16 = *MEMORY[0x1E696A278];
    v17[0] = @"extension";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 5, v13, "[FSMimic extensionWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSMimic.mm", 332);
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
  v11 = [v8 BOOLValue];

  return v11;
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
  v11 = [v8 BOOLValue];

  return v11;
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
  v11 = [v8 BOOLValue];

  return v11;
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
  v11 = [v8 BOOLValue];

  return v11;
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
  v11 = [v8 BOOLValue];

  return v11;
}

- (BOOL)getHFSType:(unsigned int *)a3 creator:(unsigned int *)a4 error:(id *)a5
{
  flags = self->_flags;
  if ((flags & 1) == 0)
  {
    if ((*&self->_flags & 2) != 0)
    {
      if (!a5)
      {
        return flags & 1;
      }

      v7 = *MEMORY[0x1E696A768];
      v8 = -10813;
      v9 = 362;
    }

    else
    {
      if (!a5)
      {
        return flags & 1;
      }

      v7 = *MEMORY[0x1E696A798];
      v8 = 5;
      v9 = 364;
    }

    *a5 = _LSMakeNSErrorImpl(v7, v8, 0, "[FSMimic getHFSType:creator:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSMimic.mm", v9);
    return flags & 1;
  }

  if (a3)
  {
    *a3 = self->_hfsType;
  }

  if (a4)
  {
    *a4 = self->_creator;
  }

  return flags & 1;
}

- (void)setHFSType:(unsigned int)a3 creator:(unsigned int)a4
{
  *&self->_flags = *&self->_flags & 0xFC | 1;
  self->_hfsType = a3;
  self->_creator = a4;
}

- (BOOL)getDeviceNumber:(int *)a3 error:(id *)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  baseProperties = self->_baseProperties;
  v8 = self;
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
      *a3 = [v13 intValue];
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

  [(FSMimic *)v8 askedForMissingSelector:a2];
  if (!a4)
  {
    v16 = 0;
    goto LABEL_14;
  }

  v20 = *MEMORY[0x1E696A278];
  v21[0] = v10;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 5, v17, "getFailableNumericFromBaseProperties", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSMimic.mm", 284);
  *a4 = v16 = 0;
  v13 = v17;
LABEL_13:

LABEL_14:
  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)getOwnerUID:(unsigned int *)a3 error:(id *)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  baseProperties = self->_baseProperties;
  v8 = self;
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
      *a3 = [v13 unsignedIntValue];
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

  [(FSMimic *)v8 askedForMissingSelector:a2];
  if (!a4)
  {
    v16 = 0;
    goto LABEL_14;
  }

  v20 = *MEMORY[0x1E696A278];
  v21[0] = v10;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 5, v17, "getFailableNumericFromBaseProperties", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSMimic.mm", 284);
  *a4 = v16 = 0;
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
  v11 = [v8 BOOLValue];

  return v11;
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
  v11 = [v8 BOOLValue];

  return v11;
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
  v11 = [v8 BOOLValue];

  return v11;
}

- (id)sideFaultResourceValuesWithError:(id *)a3
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
  if (a3)
  {
    v16 = *MEMORY[0x1E696A278];
    v17[0] = @"sideFaultResourceValues";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 5, v13, "[FSMimic sideFaultResourceValuesWithError:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/FSMimic.mm", 400);
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