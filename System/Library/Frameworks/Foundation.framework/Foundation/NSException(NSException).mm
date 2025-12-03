@interface NSException(NSException)
- (NSString)debugDescription;
- (uint64_t)encodeWithCoder:()NSException;
- (uint64_t)initWithCoder:()NSException;
@end

@implementation NSException(NSException)

- (uint64_t)encodeWithCoder:()NSException
{
  allowsKeyedCoding = [a3 allowsKeyedCoding];
  name = [self name];
  if (allowsKeyedCoding)
  {
    [a3 encodeObject:name forKey:@"NS.name"];
    [a3 encodeObject:objc_msgSend(self forKey:{"reason"), @"NS.reason"}];
    userInfo = [self userInfo];

    return [a3 encodeObject:userInfo forKey:@"NS.userinfo"];
  }

  else
  {
    [a3 encodeObject:name];
    [a3 encodeObject:{objc_msgSend(self, "reason")}];
    userInfo2 = [self userInfo];

    return [a3 encodeObject:userInfo2];
  }
}

- (uint64_t)initWithCoder:()NSException
{
  v39 = *MEMORY[0x1E69E9840];
  if ([a3 allowsKeyedCoding])
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v5 = [&unk_1EEF57ED8 countByEnumeratingWithState:&v35 objects:v34 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v36;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v36 != v7)
          {
            objc_enumerationMutation(&unk_1EEF57ED8);
          }

          v9 = *(*(&v35 + 1) + 8 * i);
          if (([a3 containsValueForKey:v9] & 1) == 0)
          {
            v32 = @"NSDebugDescription";
            v33 = [NSString stringWithFormat:@"Missing required key '%@'", v9];
            v20 = MEMORY[0x1E695DF20];
            v21 = &v33;
            v22 = &v32;
            goto LABEL_21;
          }
        }

        v6 = [&unk_1EEF57ED8 countByEnumeratingWithState:&v35 objects:v34 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v10 = objc_opt_class();
    v11 = [a3 decodeObjectOfClass:v10 forKey:@"NS.name"];
    if (v11)
    {
      v12 = v11;
      if (_NSIsNSString())
      {
        v13 = [a3 decodeObjectOfClass:v10 forKey:@"NS.reason"];
        if (v13 && (_NSIsNSString() & 1) == 0)
        {
          v26 = @"NSDebugDescription";
          v27 = [NSString stringWithFormat:@"Reason must be a string - got: %@", objc_opt_class()];
          v20 = MEMORY[0x1E695DF20];
          v21 = &v27;
          v22 = &v26;
        }

        else
        {
          v14 = [a3 decodeObjectOfClasses:objc_msgSend(objc_msgSend(a3 forKey:{"allowedClasses"), "setByAddingObjectsFromSet:", __NSPropertyListClasses_ForArchival_ErrorAndException()), @"NS.userinfo"}];
          if (!v14 || (_NSIsNSDictionary() & 1) != 0)
          {
            v15 = [self initWithName:v12 reason:v13 userInfo:v14];
            [v15 _markAsUnarchived];
            return v15;
          }

          v24 = @"NSDebugDescription";
          v25 = [NSString stringWithFormat:@"UserInfo must be a dictionary - got: %@", objc_opt_class()];
          v20 = MEMORY[0x1E695DF20];
          v21 = &v25;
          v22 = &v24;
        }
      }

      else
      {
        v28 = @"NSDebugDescription";
        v29 = [NSString stringWithFormat:@"Name must be a string - got: %@", objc_opt_class()];
        v20 = MEMORY[0x1E695DF20];
        v21 = &v29;
        v22 = &v28;
      }
    }

    else
    {
      v30 = @"NSDebugDescription";
      v31 = [NSString stringWithFormat:@"Missing required 'name' for the exception."];
      v20 = MEMORY[0x1E695DF20];
      v21 = &v31;
      v22 = &v30;
    }

LABEL_21:
    v23 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4864, [v20 dictionaryWithObjects:v21 forKeys:v22 count:1]);

    [a3 failWithError:v23];
    return 0;
  }

  decodeObject = [a3 decodeObject];
  decodeObject2 = [a3 decodeObject];
  decodeObject3 = [a3 decodeObject];

  return [self initWithName:decodeObject reason:decodeObject2 userInfo:decodeObject3];
}

- (NSString)debugDescription
{
  _isUnarchived = [self _isUnarchived];
  v3 = [self description];
  if (_isUnarchived)
  {
    return [NSString stringWithFormat:@"%@\n UNARCHIVED", v3, v5];
  }

  else
  {
    return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@\n%@", v3, [self callStackSymbols]);
  }
}

@end