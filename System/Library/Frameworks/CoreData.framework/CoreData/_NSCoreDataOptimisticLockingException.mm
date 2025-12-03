@interface _NSCoreDataOptimisticLockingException
- (_NSCoreDataOptimisticLockingException)initWithName:(id)name reason:(id)reason userInfo:(id)info;
- (id)errorObjectWithUserInfo:(id)info;
@end

@implementation _NSCoreDataOptimisticLockingException

- (_NSCoreDataOptimisticLockingException)initWithName:(id)name reason:(id)reason userInfo:(id)info
{
  if ([info count])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:info];
    [v9 setObject:MEMORY[0x1E695E118] forKey:@"NSExceptionOmitCallstacks"];
    v10 = [v9 copy];
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x1E695DF20]);
    v10 = [v11 initWithObjectsAndKeys:{MEMORY[0x1E695E118], @"NSExceptionOmitCallstacks", 0}];
  }

  v14.receiver = self;
  v14.super_class = _NSCoreDataOptimisticLockingException;
  v12 = [(_NSCoreDataOptimisticLockingException *)&v14 initWithName:name reason:reason userInfo:v10];

  return v12;
}

- (id)errorObjectWithUserInfo:(id)info
{
  userInfo = [(_NSCoreDataOptimisticLockingException *)self userInfo];
  if (info)
  {
    v5 = [userInfo mutableCopy];
    [v5 addEntriesFromDictionary:info];
    v6 = [v5 copy];
  }

  else
  {
    v6 = userInfo;
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134050 userInfo:v6];

  return v7;
}

@end