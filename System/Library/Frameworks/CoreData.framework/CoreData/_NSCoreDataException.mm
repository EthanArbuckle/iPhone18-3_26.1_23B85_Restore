@interface _NSCoreDataException
+ (id)exceptionWithName:(uint64_t)a3 code:(uint64_t)a4 reason:(void *)a5 userInfo:;
- (id)errorObjectWithUserInfo:(id)a3;
- (id)initWithName:(uint64_t)a3 code:(uint64_t)a4 reason:(void *)a5 userInfo:;
- (uint64_t)_setDomain:(uint64_t)result;
- (void)dealloc;
@end

@implementation _NSCoreDataException

+ (id)exceptionWithName:(uint64_t)a3 code:(uint64_t)a4 reason:(void *)a5 userInfo:
{
  v9 = objc_alloc(objc_opt_self());
  v10 = [(_NSCoreDataException *)v9 initWithName:a2 code:a3 reason:a4 userInfo:a5];

  return v10;
}

- (id)initWithName:(uint64_t)a3 code:(uint64_t)a4 reason:(void *)a5 userInfo:
{
  if (result)
  {
    v5 = a5;
    v9 = result;
    v10 = *MEMORY[0x1E696AA08];
    v11 = [a5 objectForKey:*MEMORY[0x1E696AA08]];
    if (!a3)
    {
      v12 = v11;
      if (v11)
      {
        a3 = [v11 code];
        if (v5)
        {
          v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v5];
          if ([v12 userInfo])
          {
            [v13 addEntriesFromDictionary:{objc_msgSend(v12, "userInfo")}];
          }

          [v13 removeObjectForKey:v10];
          v5 = [v13 copy];
        }

        else
        {
          v5 = [v12 userInfo];
        }
      }

      else
      {
        a3 = 134060;
      }
    }

    v14.receiver = v9;
    v14.super_class = _NSCoreDataException;
    result = objc_msgSendSuper2(&v14, sel_initWithName_reason_userInfo_, a2, a4, v5);
    if (result)
    {
      *(result + 5) = a3;
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

- (id)errorObjectWithUserInfo:(id)a3
{
  v5 = [(_NSCoreDataException *)self userInfo];
  if (a3)
  {
    v6 = [v5 mutableCopy];
    [v6 addEntriesFromDictionary:a3];
    v7 = [v6 copy];
  }

  else
  {
    v7 = v5;
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