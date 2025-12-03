@interface _NSCoreDataException
+ (id)exceptionWithName:(uint64_t)name code:(uint64_t)code reason:(void *)reason userInfo:;
- (id)errorObjectWithUserInfo:(id)info;
- (id)initWithName:(uint64_t)name code:(uint64_t)code reason:(void *)reason userInfo:;
- (uint64_t)_setDomain:(uint64_t)result;
- (void)dealloc;
@end

@implementation _NSCoreDataException

+ (id)exceptionWithName:(uint64_t)name code:(uint64_t)code reason:(void *)reason userInfo:
{
  v9 = objc_alloc(objc_opt_self());
  v10 = [(_NSCoreDataException *)v9 initWithName:a2 code:name reason:code userInfo:reason];

  return v10;
}

- (id)initWithName:(uint64_t)name code:(uint64_t)code reason:(void *)reason userInfo:
{
  if (result)
  {
    reasonCopy = reason;
    v9 = result;
    v10 = *MEMORY[0x1E696AA08];
    v11 = [reason objectForKey:*MEMORY[0x1E696AA08]];
    if (!name)
    {
      v12 = v11;
      if (v11)
      {
        name = [v11 code];
        if (reasonCopy)
        {
          v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:reasonCopy];
          if ([v12 userInfo])
          {
            [v13 addEntriesFromDictionary:{objc_msgSend(v12, "userInfo")}];
          }

          [v13 removeObjectForKey:v10];
          reasonCopy = [v13 copy];
        }

        else
        {
          reasonCopy = [v12 userInfo];
        }
      }

      else
      {
        name = 134060;
      }
    }

    v14.receiver = v9;
    v14.super_class = _NSCoreDataException;
    result = objc_msgSendSuper2(&v14, sel_initWithName_reason_userInfo_, a2, code, reasonCopy);
    if (result)
    {
      *(result + 5) = name;
    }
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _NSCoreDataException;
  [(_NSCoreDataException *)&v3 dealloc];
}

- (uint64_t)_setDomain:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 48);
    if (v4 != a2)
    {

      result = [a2 copy];
      *(v3 + 48) = result;
    }
  }

  return result;
}

- (id)errorObjectWithUserInfo:(id)info
{
  userInfo = [(_NSCoreDataException *)self userInfo];
  if (info)
  {
    v6 = [userInfo mutableCopy];
    [v6 addEntriesFromDictionary:info];
    v7 = [v6 copy];
  }

  else
  {
    v7 = userInfo;
  }

  if (self)
  {
    if (self->_domain)
    {
      domain = self->_domain;
    }

    else
    {
      domain = *MEMORY[0x1E696A250];
    }

    if (self->_code)
    {
      code = self->_code;
    }

    else
    {
      code = 134060;
    }
  }

  else
  {
    domain = 0;
    code = 0;
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:domain code:code userInfo:v7];

  return v10;
}

@end