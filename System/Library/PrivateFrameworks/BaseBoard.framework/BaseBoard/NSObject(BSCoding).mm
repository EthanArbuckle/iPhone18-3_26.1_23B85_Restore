@interface NSObject(BSCoding)
+ (id)bs_secureDataFromObject:()BSCoding;
+ (id)bs_secureDecodedFromData:()BSCoding;
+ (id)bs_secureDecodedFromData:()BSCoding withAdditionalClasses:;
+ (id)bs_secureObjectFromData:()BSCoding ofClass:;
+ (id)bs_secureObjectFromData:()BSCoding ofClasses:;
+ (uint64_t)bs_isPlistableType;
- (id)bs_secureEncoded;
- (uint64_t)bs_isPlist;
- (uint64_t)bs_isPlistableType;
@end

@implementation NSObject(BSCoding)

+ (uint64_t)bs_isPlistableType
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED450048 != -1)
  {
    dispatch_once(&qword_1ED450048, &__block_literal_global_32);
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = _MergedGlobals_32;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([self isSubclassOfClass:{*(*(&v8 + 1) + 8 * i), v8}])
        {
          v6 = 1;
          goto LABEL_13;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v6 = 0;
LABEL_13:

  return v6;
}

- (uint64_t)bs_isPlistableType
{
  v0 = objc_opt_class();

  return [v0 bs_isPlistableType];
}

- (uint64_t)bs_isPlist
{
  v23 = *MEMORY[0x1E69E9840];
  if ((_NSIsNSString() & 1) == 0 && (_NSIsNSDate() & 1) == 0 && (_NSIsNSData() & 1) == 0 && (_NSIsNSNumber() & 1) == 0)
  {
    if (_NSIsNSArray())
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      selfCopy = self;
      v5 = [selfCopy countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v5)
      {
        v6 = *v18;
LABEL_10:
        v7 = 0;
        while (1)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(selfCopy);
          }

          if (([*(*(&v17 + 1) + 8 * v7) bs_isPlist] & 1) == 0)
          {
            break;
          }

          if (v5 == ++v7)
          {
            v5 = [selfCopy countByEnumeratingWithState:&v17 objects:v22 count:16];
            v2 = 1;
            if (v5)
            {
              goto LABEL_10;
            }

            goto LABEL_32;
          }
        }

LABEL_31:
        v2 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      if (!_NSIsNSDictionary())
      {
        return 0;
      }

      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      selfCopy2 = self;
      v9 = [selfCopy2 countByEnumeratingWithState:&v13 objects:v21 count:16];
      if (v9)
      {
        v10 = *v14;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(selfCopy2);
            }

            v12 = [selfCopy2 objectForKey:{*(*(&v13 + 1) + 8 * i), v13}];
            if (!_NSIsNSString() || ([v12 bs_isPlist] & 1) == 0)
            {

              goto LABEL_31;
            }
          }

          v9 = [selfCopy2 countByEnumeratingWithState:&v13 objects:v21 count:16];
          v2 = 1;
          if (v9)
          {
            continue;
          }

          goto LABEL_32;
        }
      }
    }

    v2 = 1;
LABEL_32:

    return v2;
  }

  return 1;
}

- (id)bs_secureEncoded
{
  v1 = _BSCreateDataFromObject(self);

  return v1;
}

+ (id)bs_secureDecodedFromData:()BSCoding
{
  v5 = a3;
  if (v5)
  {
    v6 = _BSCreateObjectOfClassFromData(self, v5);
    if (v6)
    {
      goto LABEL_6;
    }

    if (([(objc_class *)self conformsToProtocol:&unk_1F03BA528]& 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"NSObject+BSCoding.m" lineNumber:151 description:{@"%@ does not implement NSSecureCoding", self}];
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

+ (id)bs_secureDecodedFromData:()BSCoding withAdditionalClasses:
{
  v28 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v7 = a3;
  v8 = a4;
  if ([self supportsSecureCoding])
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = NSStringFromClass(self);
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSObject+BSCoding.m" lineNumber:159 description:{@"%@ does not support secure coding", v18}];

    if (v7)
    {
LABEL_3:
      v9 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:&selfCopy count:1];
      v10 = v9;
      if (v8)
      {
        [v9 unionSet:v8];
      }

      v11 = _BSCreateObjectOfClassesFromData(v10, v7);
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
        if (v12)
        {
LABEL_15:

          goto LABEL_18;
        }
      }

      else if (v11)
      {
        v13 = BSLogCommon();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = selfCopy;
          v15 = objc_opt_class();
          *buf = 136315650;
          v23 = "+[NSObject(BSCoding) bs_secureDecodedFromData:withAdditionalClasses:]";
          v24 = 2114;
          v25 = v14;
          v26 = 2114;
          v27 = v15;
          v16 = v15;
          _os_log_error_impl(&dword_18FEF6000, v13, OS_LOG_TYPE_ERROR, "%s decoded an unexpected type : expected=%{public}@ decoded=%{public}@", buf, 0x20u);
        }
      }

      if (([selfCopy conformsToProtocol:&unk_1F03BA528] & 1) == 0)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:? lineNumber:? description:?];
      }

      v12 = 0;
      goto LABEL_15;
    }
  }

  v12 = 0;
LABEL_18:

  return v12;
}

+ (id)bs_secureDataFromObject:()BSCoding
{
  v3 = _BSCreateDataFromObject(a3);

  return v3;
}

+ (id)bs_secureObjectFromData:()BSCoding ofClass:
{
  v5 = a3;
  v6 = 0;
  if (v5 && a4)
  {
    v6 = _BSCreateObjectOfClassFromData(a4, v5);
  }

  return v6;
}

+ (id)bs_secureObjectFromData:()BSCoding ofClasses:
{
  v4 = _BSCreateObjectOfClassesFromData(a4, a3);

  return v4;
}

@end