@interface NSError(BaseBoard)
+ (id)bs_errorWithDomain:()BaseBoard code:configuration:;
- (id)descriptionBuilderWithMultilinePrefix:()BaseBoard;
- (id)descriptionWithMultilinePrefix:()BaseBoard;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation NSError(BaseBoard)

+ (id)bs_errorWithDomain:()BaseBoard code:configuration:
{
  v35 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  if (!v10)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"block != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138544642;
      v24 = v19;
      v25 = 2114;
      v26 = v21;
      v27 = 2048;
      selfCopy = self;
      v29 = 2114;
      v30 = @"NSError+BaseBoard.m";
      v31 = 1024;
      v32 = 114;
      v33 = 2114;
      v34 = v18;
      _os_log_error_impl(&dword_18FEF6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v22 = v18;
    qword_1EAD33B00 = [v18 UTF8String];
    __break(0);
    JUMPOUT(0x18FF5C5BCLL);
  }

  v11 = [[_BSErrorConfiguration alloc] initWithDomain:v9 code:a4];
  v10[2](v10, v11);
  if (v11)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = v11[1];
    v14 = v11[2];
    if ([v11[3] count])
    {
      v15 = v11[3];
    }

    else
    {
      v15 = 0;
    }

    v16 = [v12 errorWithDomain:v13 code:v14 userInfo:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v2 = [BSDescriptionBuilder builderWithObject:self];
  domain = [self domain];
  v4 = [v2 appendObject:domain withName:@"domain"];

  userInfo = [self userInfo];
  v6 = [userInfo objectForKey:@"BSErrorCodeDescription"];

  if (v6)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld (\"%@\", objc_msgSend(self, "code""), v6];
    v8 = [v2 appendObject:v7 withName:@"code"];
  }

  else
  {
    v9 = [v2 appendInteger:objc_msgSend(self withName:{"code"), @"code"}];
  }

  userInfo2 = [self userInfo];
  v11 = [userInfo2 objectForKey:*MEMORY[0x1E696A580]];

  userInfo3 = [self userInfo];
  v13 = [userInfo3 objectForKey:*MEMORY[0x1E696A588]];

  if (v11 && v13)
  {
    if ([v11 hasSuffix:@"."])
    {
      v14 = @"%@ %@";
    }

    else
    {
      v14 = @"%@. %@";
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:v14, v11, v13];
  }

  else
  {
    if (v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = v11;
    }

    v15 = v16;
  }

  v17 = v15;
  [v2 appendString:v15 withName:0 skipIfEmpty:1];

  return v2;
}

- (id)descriptionWithMultilinePrefix:()BaseBoard
{
  v1 = [self descriptionBuilderWithMultilinePrefix:?];
  build = [v1 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:()BaseBoard
{
  v4 = a3;
  if (qword_1ED44FF10 != -1)
  {
    dispatch_once(&qword_1ED44FF10, &__block_literal_global_24);
  }

  userInfo = [self userInfo];
  allKeys = [userInfo allKeys];
  v7 = [allKeys mutableCopy];

  [v7 removeObjectsInArray:_MergedGlobals_23];
  [v7 sortUsingSelector:sel_compare_];
  underlyingErrors = [self underlyingErrors];
  bs_orderedSet = [underlyingErrors bs_orderedSet];

  succinctDescriptionBuilder = [self succinctDescriptionBuilder];
  if ([v7 count] || objc_msgSend(bs_orderedSet, "count"))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __60__NSError_BaseBoard__descriptionBuilderWithMultilinePrefix___block_invoke_2;
    v12[3] = &unk_1E72CB9A8;
    v13 = v7;
    v14 = userInfo;
    v15 = succinctDescriptionBuilder;
    v16 = bs_orderedSet;
    [v15 appendBodySectionWithName:0 multilinePrefix:v4 block:v12];
  }

  return succinctDescriptionBuilder;
}

@end