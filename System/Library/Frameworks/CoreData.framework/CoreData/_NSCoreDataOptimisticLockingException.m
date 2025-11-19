@interface _NSCoreDataOptimisticLockingException
- (_NSCoreDataOptimisticLockingException)initWithName:(id)a3 reason:(id)a4 userInfo:(id)a5;
- (id)errorObjectWithUserInfo:(id)a3;
@end

@implementation _NSCoreDataOptimisticLockingException

- (_NSCoreDataOptimisticLockingException)initWithName:(id)a3 reason:(id)a4 userInfo:(id)a5
{
  if ([a5 count])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:a5];
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
  v12 = [(_NSCoreDataOptimisticLockingException *)&v14 initWithName:a3 reason:a4 userInfo:v10];

  return v12;
}

- (id)errorObjectWithUserInfo:(id)a3
{
  v4 = [(_NSCoreDataOptimisticLockingException *)self userInfo];
  if (a3)
  {
    v5 = [v4 mutableCopy];
    [v5 addEntriesFromDictionary:a3];
    v6 = [v5 copy];
  }

  else
  {
    v6 = v4;
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134050 userInfo:v6];

  return v7;
}

@end