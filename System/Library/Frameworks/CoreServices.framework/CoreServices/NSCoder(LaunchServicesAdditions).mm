@interface NSCoder(LaunchServicesAdditions)
- (id)ls_decodeArrayWithValuesOfClass:()LaunchServicesAdditions forKey:;
- (id)ls_decodeDictionaryWithKeysOfClass:()LaunchServicesAdditions valuesOfClass:forKey:;
- (id)ls_decodeDictionaryWithKeysOfClass:()LaunchServicesAdditions valuesOfClasses:forKey:;
- (id)ls_decodeObjectOfClass:()LaunchServicesAdditions forKey:;
- (id)ls_decodeObjectOfClasses:()LaunchServicesAdditions forKey:;
- (id)ls_decodeSetWithValuesOfClass:()LaunchServicesAdditions forKey:;
@end

@implementation NSCoder(LaunchServicesAdditions)

- (id)ls_decodeObjectOfClass:()LaunchServicesAdditions forKey:
{
  v10 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = a4;
  v7 = [[v5 alloc] initWithObjects:&v10 count:1];
  v8 = [self ls_decodeObjectOfClasses:v7 forKey:v6];

  return v8;
}

- (id)ls_decodeObjectOfClasses:()LaunchServicesAdditions forKey:
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  if (_LSClassListContainsBundleRecord(v6))
  {
    v9 = _LSDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [NSCoder(LaunchServicesAdditions) ls_decodeObjectOfClasses:v9 forKey:?];
    }

    v10 = [v6 setByAddingObject:objc_opt_class()];

    v6 = v10;
  }

  v11 = [self decodeObjectOfClasses:v6 forKey:v7];
  objc_autoreleasePoolPop(v8);
  if (v11 && (_LSIsKindOfClasses(v11, v6) & 1) == 0)
  {

    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 4864, 0, "[NSCoder(LaunchServicesAdditions) ls_decodeObjectOfClasses:forKey:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/NSCoder+LaunchServicesAdditions.m", 197);
    [self failWithError:v12];

    v11 = 0;
  }

  return v11;
}

- (id)ls_decodeArrayWithValuesOfClass:()LaunchServicesAdditions forKey:
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a4;
  v8 = [v6 setWithObjects:{objc_opt_class(), a3, 0}];
  v9 = [self ls_decodeObjectOfClasses:v8 forKey:v7];

  if (v9)
  {
    v10 = [MEMORY[0x1E695DFD8] setWithObject:a3];
    v11 = _LSIsArrayWithValuesOfClasses(v9, v10);

    if ((v11 & 1) == 0)
    {

      v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 4864, 0, "[NSCoder(LaunchServicesAdditions) ls_decodeArrayWithValuesOfClass:forKey:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/NSCoder+LaunchServicesAdditions.m", 210);
      [self failWithError:v12];

      v9 = 0;
    }
  }

  return v9;
}

- (id)ls_decodeSetWithValuesOfClass:()LaunchServicesAdditions forKey:
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a4;
  v8 = [v6 setWithObjects:{objc_opt_class(), a3, 0}];
  v9 = [self ls_decodeObjectOfClasses:v8 forKey:v7];

  if (v9 && (_LSIsSetWithValuesOfClass(v9, a3) & 1) == 0)
  {

    v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 4864, 0, "[NSCoder(LaunchServicesAdditions) ls_decodeSetWithValuesOfClass:forKey:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/NSCoder+LaunchServicesAdditions.m", 222);
    [self failWithError:v10];

    v9 = 0;
  }

  return v9;
}

- (id)ls_decodeDictionaryWithKeysOfClass:()LaunchServicesAdditions valuesOfClass:forKey:
{
  v8 = MEMORY[0x1E695DFD8];
  v9 = a5;
  v10 = [v8 setWithObject:a4];
  v11 = [self ls_decodeDictionaryWithKeysOfClass:a3 valuesOfClasses:v10 forKey:v9];

  return v11;
}

- (id)ls_decodeDictionaryWithKeysOfClass:()LaunchServicesAdditions valuesOfClasses:forKey:
{
  v18[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v18[0] = objc_opt_class();
  v18[1] = a3;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v11 = [v8 setByAddingObjectsFromArray:v10];

  v12 = [self ls_decodeObjectOfClasses:v11 forKey:v9];

  if (v12)
  {
    if (a3)
    {
      v13 = [MEMORY[0x1E695DFD8] setWithObject:a3];
      v14 = _LSIsDictionaryWithKeysAndValuesOfClasses(v12, v13, v8);

      if (v14)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if ((_LSIsDictionaryWithKeysAndValuesOfClasses(v12, 0, v8) & 1) == 0)
    {
LABEL_4:

      v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 4864, 0, "[NSCoder(LaunchServicesAdditions) ls_decodeDictionaryWithKeysOfClass:valuesOfClasses:forKey:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/NSCoder+LaunchServicesAdditions.m", 241);
      [self failWithError:v15];

      v12 = 0;
    }
  }

LABEL_5:

  v16 = *MEMORY[0x1E69E9840];

  return v12;
}

@end