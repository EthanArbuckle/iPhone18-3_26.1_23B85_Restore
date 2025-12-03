@interface BSObjCIvar
+ (id)ivarWithName:(objc_ivar *)name ivar:(void *)ivar containedClasses:(void *)classes alternateNames:;
- (BOOL)isEqual:(id)equal;
@end

@implementation BSObjCIvar

+ (id)ivarWithName:(objc_ivar *)name ivar:(void *)ivar containedClasses:(void *)classes alternateNames:
{
  v57 = *MEMORY[0x1E69E9840];
  v45 = a2;
  ivarCopy = ivar;
  classesCopy = classes;
  v44 = objc_opt_self();
  v10 = [MEMORY[0x1E696AEC0] bs_stringWithUTF8String:ivar_getTypeEncoding(name)];
  if ([v10 hasPrefix:@"{"])
  {
    if (v10)
    {
      if ([v10 rangeOfString:@""] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = v10;
      }

      else
      {
        string = [MEMORY[0x1E696AD60] string];
        v13 = [MEMORY[0x1E696AE88] scannerWithString:v10];
        v14 = 0;
        while (1)
        {
          *buf = v14;
          v15 = [v13 scanUpToString:@"" intoString:buf];
          v16 = *buf;

          if (!v15)
          {
            break;
          }

          [string appendString:v16];
          [v13 scanString:@"" intoString:0];
          [v13 scanUpToString:@"" intoString:0];
          v14 = v16;
          [v13 scanString:@"" intoString:0];
        }

        v11 = [string copy];
      }
    }

    else
    {
      v11 = 0;
    }

    v10 = v11;
  }

  v17 = objc_opt_new();
  v18 = [v45 copy];
  v19 = *(v17 + 16);
  *(v17 + 16) = v18;

  *(v17 + 8) = name;
  v20 = [BSObjCValue _valueWithEncoding:v10];
  v21 = *(v17 + 24);
  *(v17 + 24) = v20;

  *(v17 + 32) = ivar_getOffset(name);
  v22 = [classesCopy copy];
  v23 = *(v17 + 40);
  *(v17 + 40) = v22;

  firstObject = [ivarCopy firstObject];
  if (firstObject)
  {
    v25 = *(v17 + 24);
    if (([v25 isObject] & 1) == 0)
    {
      ivarCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"The value of ivar %@ is not an object (%@), so cannot specify any class(es): %@", v17, v25, ivarCopy];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v33 = NSStringFromSelector(sel_ivarWithName_ivar_containedClasses_alternateNames_);
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        *buf = 138544642;
        *&buf[4] = v33;
        v47 = 2114;
        v48 = v35;
        v49 = 2048;
        v50 = v44;
        v51 = 2114;
        v52 = @"BSObjCRuntime.m";
        v53 = 1024;
        v54 = 2001;
        v55 = 2114;
        v56 = ivarCopy;
        _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v36 = ivarCopy;
      qword_1EAD33B00 = [ivarCopy UTF8String];
      __break(0);
      JUMPOUT(0x18FF43B70);
    }

    if (![v25 objectClass] || (v26 = objc_msgSend(v25, "objectClass"), v26 == objc_opt_class()) || objc_msgSend(v25, "isXPCObject"))
    {
      if (v25)
      {
        v25[2] = firstObject;
      }

      if ([ivarCopy count] < 2)
      {
        v27 = 0;
      }

      else
      {
        if (([(objc_class *)firstObject instancesRespondToSelector:sel_bs_array]& 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v37 = MEMORY[0x1E696AEC0];
            v38 = NSStringFromClass(firstObject);
            v39 = [v37 stringWithFormat:@"%@ is not a supported collection for ivar %@", v38, v45];

            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v40 = NSStringFromSelector(sel_ivarWithName_ivar_containedClasses_alternateNames_);
              v41 = objc_opt_class();
              v42 = NSStringFromClass(v41);
              *buf = 138544642;
              *&buf[4] = v40;
              v47 = 2114;
              v48 = v42;
              v49 = 2048;
              v50 = v44;
              v51 = 2114;
              v52 = @"BSObjCRuntime.m";
              v53 = 1024;
              v54 = 2010;
              v55 = 2114;
              v56 = v39;
              _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
            }

            v43 = v39;
            qword_1EAD33B00 = [v39 UTF8String];
            __break(0);
            JUMPOUT(0x18FF43C90);
          }
        }

        v27 = [ivarCopy subarrayWithRange:{1, objc_msgSend(ivarCopy, "count") - 1}];
      }

      ivarCopy = v27;
    }

    v28 = ivarCopy;
    ivarCopy = v28;
    if (v25)
    {
      v29 = [v28 count];
      if (v29)
      {
        v29 = [ivarCopy copy];
      }

      v30 = v25[4];
      v25[4] = v29;
    }
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  name = self->_name;
  if (equal)
  {
    equal = *(equal + 2);
  }

  if (name == equal)
  {
    return 1;
  }

  if (name)
  {
    v4 = equal == 0;
  }

  else
  {
    v4 = 1;
  }

  return !v4 && [(NSString *)name isEqualToString:?];
}

@end