@interface _NSPersistentHistoryToken
- (BOOL)isEqual:(id)equal;
- (_NSPersistentHistoryToken)initWithCoder:(id)coder;
- (_NSPersistentHistoryToken)initWithDictionary:(id)dictionary;
- (_NSPersistentHistoryToken)initWithTransactionNumber:(id)number andStoreID:(id)d;
- (id)description;
- (int64_t)compare:(id)compare;
- (int64_t)compareToken:(id)token error:(id *)error;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation _NSPersistentHistoryToken

- (void)dealloc
{
  self->_storeTokens = 0;
  v3.receiver = self;
  v3.super_class = _NSPersistentHistoryToken;
  [(_NSPersistentHistoryToken *)&v3 dealloc];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<NSPersistentHistoryToken - %@>", self->_storeTokens];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (_NSPersistentHistoryToken)initWithTransactionNumber:(id)number andStoreID:(id)d
{
  v9.receiver = self;
  v9.super_class = _NSPersistentHistoryToken;
  v6 = [(_NSPersistentHistoryToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    if (number && d)
    {
      v6->_storeTokens = [MEMORY[0x1E695DF20] dictionaryWithObject:number forKey:d];
    }

    else
    {

      return 0;
    }
  }

  return v7;
}

- (_NSPersistentHistoryToken)initWithDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = _NSPersistentHistoryToken;
  v4 = [(_NSPersistentHistoryToken *)&v6 init];
  if (v4)
  {
    if ([dictionary count])
    {
      v4->_storeTokens = dictionary;
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  storeTokens = self->_storeTokens;
  storeTokens = [equal storeTokens];

  return [(NSDictionary *)storeTokens isEqual:storeTokens];
}

- (int64_t)compare:(id)compare
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromSelector(a2);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:objc_msgSend(v3 userInfo:{"stringWithFormat:", @"%@ is not supported for %@, use %@", v4, v6, NSStringFromSelector(sel_compareToken_error_)), 0}];
  objc_exception_throw(v7);
}

- (int64_t)compareToken:(id)token error:(id *)error
{
  v40[1] = *MEMORY[0x1E69E9840];
  v7 = [objc_msgSend(-[_NSPersistentHistoryToken storeTokens](self "storeTokens")];
  v8 = [objc_msgSend(objc_msgSend(token "storeTokens")];
  v9 = [v7 count];
  if (v9 != [v8 count])
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A250];
    v39 = *MEMORY[0x1E696A588];
    v40[0] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Tokens have different number of stores."];
    v20 = [v18 errorWithDomain:v19 code:134501 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v40, &v39, 1)}];
    if (v20)
    {
      goto LABEL_19;
    }

    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentHistoryToken.m";
      v37 = 1024;
      v38 = 93;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v22 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_28;
    }

    *buf = 136315394;
    v36 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentHistoryToken.m";
    v37 = 1024;
    v38 = 93;
    goto LABEL_31;
  }

  if (([v7 isEqualToArray:v8] & 1) == 0)
  {
    v23 = MEMORY[0x1E696ABC0];
    v24 = *MEMORY[0x1E696A250];
    v33 = *MEMORY[0x1E696A588];
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Tokens have different set of stores."];
    v20 = [v23 errorWithDomain:v24 code:134501 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v34, &v33, 1)}];
    if (v20)
    {
LABEL_19:
      if (error)
      {
        v13 = 0;
        *error = v20;
        goto LABEL_29;
      }

LABEL_28:
      v13 = 0;
      goto LABEL_29;
    }

    v25 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentHistoryToken.m";
      v37 = 1024;
      v38 = 100;
      _os_log_error_impl(&dword_18565F000, v25, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v22 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_28;
    }

    *buf = 136315394;
    v36 = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSPersistentHistoryToken.m";
    v37 = 1024;
    v38 = 100;
LABEL_31:
    _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    goto LABEL_28;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    v13 = 3;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        v16 = [objc_msgSend(token "storeTokens")];
        if (v16)
        {
          v17 = [-[NSDictionary objectForKey:](self->_storeTokens objectForKey:{v15), "compare:", v16}];
          if (v17)
          {
            if (v17 == 1)
            {
              v13 = 4;
            }

            else
            {
              v13 = 2;
            }

            goto LABEL_29;
          }
        }
      }

      v11 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 3;
  }

LABEL_29:
  v26 = *MEMORY[0x1E69E9840];
  return v13;
}

- (unint64_t)hash
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if ([(NSDictionary *)self->_storeTokens count])
  {
    storeTokens = self->_storeTokens;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __33___NSPersistentHistoryToken_hash__block_invoke;
    v6[3] = &unk_1E6EC3DA0;
    v6[4] = &v8;
    [(NSDictionary *)storeTokens enumerateKeysAndObjectsUsingBlock:v6];
    v4 = v9[3];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _NSPersistentHistoryToken;
    v4 = [(_NSPersistentHistoryToken *)&v7 hash];
    v9[3] = v4;
  }

  _Block_object_dispose(&v8, 8);
  return v4;
}

- (_NSPersistentHistoryToken)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = _NSPersistentHistoryToken;
  v4 = [(_NSPersistentHistoryToken *)&v10 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, v7, objc_opt_class(), 0), @"NSPersistentHistoryTokenDictionary"}];
    v4->_storeTokens = v8;
    if (![(NSDictionary *)v8 count])
    {

      return 0;
    }
  }

  return v4;
}

@end