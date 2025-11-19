@interface NSNotification
+ (NSNotification)allocWithZone:(_NSZone *)a3;
+ (NSNotification)notificationWithName:(NSNotificationName)aName object:(id)anObject;
+ (NSNotification)notificationWithName:(NSNotificationName)aName object:(id)anObject userInfo:(NSDictionary *)aUserInfo;
- (BOOL)isEqual:(id)a3;
- (NSNotification)init;
- (NSNotification)initWithCoder:(NSCoder *)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSNotification

- (id)description
{
  v3 = [(NSNotification *)self object];
  v4 = [(NSNotification *)self userInfo];
  v5 = [[NSMutableString alloc] initWithCapacity:256];
  v6 = objc_opt_class();
  v7 = [(NSNotification *)self name];
  if (v3 | v4)
  {
    if (v3)
    {
      if (v4)
      {
        [(NSMutableString *)v5 appendFormat:@"%@ %p {name = %@; object = %@; userInfo = %@}", v6, self, v7, v3, v4];
      }

      else
      {
        [(NSMutableString *)v5 appendFormat:@"%@ %p {name = %@; object = %@}", v6, self, v7, v3, v10];
      }
    }

    else
    {
      [(NSMutableString *)v5 appendFormat:@"%@ %p {name = %@; userInfo = %@}", v6, self, v7, v4, v10];
    }
  }

  else
  {
    [(NSMutableString *)v5 appendFormat:@"%@ %p {name = %@}", v6, self, v7, v9, v10];
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(NSNotification *)self name];

  return [(NSString *)v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    if (!a3 || (objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v5 = -[NSString isEqual:](-[NSNotification name](self, "name"), "isEqual:", [a3 name]);
    if (v5)
    {
      v6 = [(NSNotification *)self object];
      if (v6 != [a3 object])
      {
LABEL_6:
        LOBYTE(v5) = 0;
        return v5;
      }

      if ([(NSNotification *)self userInfo])
      {
        if (!-[NSDictionary isEqualToDictionary:](-[NSNotification userInfo](self, "userInfo"), "isEqualToDictionary:", [a3 userInfo]))
        {
          goto LABEL_6;
        }
      }

      else if ([a3 userInfo])
      {
        goto LABEL_6;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = [a3 allowsKeyedCoding];
  v6 = [(NSNotification *)self name];
  if (v5)
  {
    [a3 encodeObject:v6 forKey:@"NS.name"];
    [a3 encodeObject:-[NSNotification object](self forKey:{"object"), @"NS.object"}];
    v7 = [(NSNotification *)self userInfo];

    [a3 encodeObject:v7 forKey:@"NS.userinfo"];
  }

  else
  {
    [a3 encodeObject:v6];
    [a3 encodeObject:{-[NSNotification object](self, "object")}];
    v8 = [(NSNotification *)self userInfo];

    [a3 encodeObject:v8];
  }
}

- (NSNotification)initWithCoder:(NSCoder *)coder
{
  if ([(NSCoder *)coder allowsKeyedCoding])
  {
    v5 = [(NSCoder *)coder decodeObjectForKey:@"NS.name"];
    v6 = [(NSCoder *)coder decodeObjectForKey:@"NS.object"];
    v7 = [(NSCoder *)coder decodeObjectForKey:@"NS.userinfo"];
  }

  else
  {
    v5 = [(NSCoder *)coder decodeObject];
    v6 = [(NSCoder *)coder decodeObject];
    v7 = [(NSCoder *)coder decodeObject];
  }

  return [(NSNotification *)self initWithName:v5 object:v6 userInfo:v7];
}

+ (NSNotification)allocWithZone:(_NSZone *)a3
{
  if (NSNotification == a1)
  {
    a1 = objc_opt_self();
  }

  return NSAllocateObject(a1, 0, a3);
}

+ (NSNotification)notificationWithName:(NSNotificationName)aName object:(id)anObject
{
  v4 = [[a1 alloc] initWithName:aName object:anObject userInfo:0];

  return v4;
}

+ (NSNotification)notificationWithName:(NSNotificationName)aName object:(id)anObject userInfo:(NSDictionary *)aUserInfo
{
  v5 = [[a1 alloc] initWithName:aName object:anObject userInfo:aUserInfo];

  return v5;
}

- (NSNotification)init
{
  v3 = [NSString stringWithFormat:@"%@: should never be used", _NSMethodExceptionProem(self, a2)];

  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v3 userInfo:0]);
}

@end