@interface NSKeyedUnarchiver(AXMExtras)
+ (void)axmSecurelyUnarchiveData:()AXMExtras withExpectedClass:otherAllowedClasses:error:;
@end

@implementation NSKeyedUnarchiver(AXMExtras)

+ (void)axmSecurelyUnarchiveData:()AXMExtras withExpectedClass:otherAllowedClasses:error:
{
  v9 = a3;
  v10 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = 0;
    v17 = 0;
    v21 = 0;
    v22 = @"'data' was not of required type NSData";
LABEL_6:
    v23 = _AXMMakeError(0, v22, v11, v12, v13, v14, v15, v16, v30);
    goto LABEL_7;
  }

  v32 = 0;
  v17 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v9 error:&v32];
  v18 = v32;
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = 0;
    if (!a6)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v30 = 0;
  v27 = [MEMORY[0x1E695DFD8] setWithObjects:a4];
  v21 = v27;
  if (v10)
  {
    v28 = [v27 setByAddingObjectsFromSet:v10];

    v21 = v28;
  }

  v29 = *MEMORY[0x1E696A508];
  v31 = 0;
  v20 = [v17 decodeTopLevelObjectOfClasses:v21 forKey:v29 error:&v31];
  v23 = v31;
  if (!v23)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = 0;
      if (!a6)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v22 = @"'unarchivedResult' was not of type 'expectedClass'";
    goto LABEL_6;
  }

LABEL_7:
  v19 = v23;
  if (a6)
  {
LABEL_8:
    v24 = v19;
    *a6 = v19;
  }

LABEL_9:
  v25 = v20;

  return v20;
}

@end