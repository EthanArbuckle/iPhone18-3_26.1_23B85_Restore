@interface NSCoder(BSXPCCoder)
- (BOOL)decodeStruct:()BSXPCCoder withObjCType:forKey:;
- (id)decodeCollectionOfClass:()BSXPCCoder containingClass:forKey:;
- (id)decodeDictionaryOfClass:()BSXPCCoder forKey:;
- (id)decodeValueWithObjCType:()BSXPCCoder forKey:;
- (uint64_t)decodeStringForKey:()BSXPCCoder;
- (void)encodeCollection:()BSXPCCoder forKey:;
- (void)encodeStruct:()BSXPCCoder withObjCType:forKey:;
@end

@implementation NSCoder(BSXPCCoder)

- (void)encodeCollection:()BSXPCCoder forKey:
{
  v6 = [a3 objectEnumerator];
  v7 = [v6 allObjects];

  [a1 encodeObject:v7 forKey:a4];
}

- (void)encodeStruct:()BSXPCCoder withObjCType:forKey:
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"bytes"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *sizep = 138544642;
      *&sizep[4] = v10;
      v21 = 2114;
      v22 = v12;
      v23 = 2048;
      v24 = a1;
      v25 = 2114;
      v26 = @"BSXPCCoder.m";
      v27 = 1024;
      v28 = 85;
      v29 = 2114;
      v30 = v9;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", sizep, 0x3Au);
    }

    v13 = v9;
    qword_1EAD33B00 = [v9 UTF8String];
    __break(0);
    JUMPOUT(0x18FF8E468);
  }

  if (!a4)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"encoding"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a2);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *sizep = 138544642;
      *&sizep[4] = v15;
      v21 = 2114;
      v22 = v17;
      v23 = 2048;
      v24 = a1;
      v25 = 2114;
      v26 = @"BSXPCCoder.m";
      v27 = 1024;
      v28 = 86;
      v29 = 2114;
      v30 = v14;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", sizep, 0x3Au);
    }

    v18 = v14;
    qword_1EAD33B00 = [v14 UTF8String];
    __break(0);
    JUMPOUT(0x18FF8E570);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [MEMORY[0x1E696B098] valueWithBytes:a3 objCType:a4];
    [a1 encodeObject:? forKey:?];
  }

  else
  {
    v8 = MEMORY[0x1E695DEF0];
    *sizep = 0;
    NSGetSizeAndAlignment(a4, sizep, 0);
    v19 = [v8 dataWithBytes:a3 length:*sizep];
    [a1 encodeObject:? forKey:?];
  }
}

- (id)decodeCollectionOfClass:()BSXPCCoder containingClass:forKey:
{
  v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), a4, 0}];
  v9 = [a1 decodeObjectOfClasses:v8 forKey:a5];

  if ([v9 isNSArray])
  {
    v10 = [[a3 alloc] initWithArray:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (uint64_t)decodeStringForKey:()BSXPCCoder
{
  v5 = objc_opt_class();

  return [a1 decodeObjectOfClass:v5 forKey:a3];
}

- (id)decodeDictionaryOfClass:()BSXPCCoder forKey:
{
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), a3, 0}];
  v10 = [a1 decodeObjectOfClasses:v9 forKey:a4];

  return v10;
}

- (BOOL)decodeStruct:()BSXPCCoder withObjCType:forKey:
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"BSXPCCoder.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"bytes != NULL"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:a2 object:a1 file:@"BSXPCCoder.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"encoding != NULL"}];

LABEL_3:
  v10 = [a1 decodeValueWithObjCType:a4 forKey:a5];
  if (v10)
  {
    sizep = 0;
    NSGetSizeAndAlignment(a4, &sizep, 0);
    [v10 getValue:a3 size:sizep];
  }

  return v10 != 0;
}

- (id)decodeValueWithObjCType:()BSXPCCoder forKey:
{
  if (!a3)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"BSXPCCoder.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"encoding != NULL"}];
  }

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [a1 decodeObjectOfClasses:v10 forKey:a4];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
      sizep = 0;
      NSGetSizeAndAlignment(a3, &sizep, 0);
      v13 = sizep;
      if (v13 != [v12 length])
      {
        v17 = [MEMORY[0x1E696AAA8] currentHandler];
        [v17 handleFailureInMethod:a2 object:a1 file:@"BSXPCCoder.m" lineNumber:138 description:{@"Decoded NSData for %@ does not match expected encoding %s (%lu vs %lu)", a4, a3, v13, objc_msgSend(v12, "length")}];
      }

      v14 = [MEMORY[0x1E696B098] valueWithBytes:objc_msgSend(v12 objCType:{"bytes"), a3}];

      v11 = v14;
      goto LABEL_8;
    }

    if (strcmp(a3, [v11 objCType]))
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:a1 file:@"BSXPCCoder.m" lineNumber:141 description:{@"Decoded NSValue for %@ does not match expected encoding %s", a4, a3}];
LABEL_8:
    }
  }

  return v11;
}

@end