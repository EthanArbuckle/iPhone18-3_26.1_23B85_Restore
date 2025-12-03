@interface NSNotification
+ (NSNotification)allocWithZone:(_NSZone *)zone;
+ (NSNotification)notificationWithName:(NSNotificationName)aName object:(id)anObject;
+ (NSNotification)notificationWithName:(NSNotificationName)aName object:(id)anObject userInfo:(NSDictionary *)aUserInfo;
- (BOOL)isEqual:(id)equal;
- (NSNotification)init;
- (NSNotification)initWithCoder:(NSCoder *)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSNotification

- (id)description
{
  object = [(NSNotification *)self object];
  userInfo = [(NSNotification *)self userInfo];
  v5 = [[NSMutableString alloc] initWithCapacity:256];
  v6 = objc_opt_class();
  name = [(NSNotification *)self name];
  if (object | userInfo)
  {
    if (object)
    {
      if (userInfo)
      {
        [(NSMutableString *)v5 appendFormat:@"%@ %p {name = %@; object = %@; userInfo = %@}", v6, self, name, object, userInfo];
      }

      else
      {
        [(NSMutableString *)v5 appendFormat:@"%@ %p {name = %@; object = %@}", v6, self, name, object, v10];
      }
    }

    else
    {
      [(NSMutableString *)v5 appendFormat:@"%@ %p {name = %@; userInfo = %@}", v6, self, name, userInfo, v10];
    }
  }

  else
  {
    [(NSMutableString *)v5 appendFormat:@"%@ %p {name = %@}", v6, self, name, v9, v10];
  }

  return v5;
}

- (unint64_t)hash
{
  name = [(NSNotification *)self name];

  return [(NSString *)name hash];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    if (!equal || (objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v5 = -[NSString isEqual:](-[NSNotification name](self, "name"), "isEqual:", [equal name]);
    if (v5)
    {
      object = [(NSNotification *)self object];
      if (object != [equal object])
      {
LABEL_6:
        LOBYTE(v5) = 0;
        return v5;
      }

      if ([(NSNotification *)self userInfo])
      {
        if (!-[NSDictionary isEqualToDictionary:](-[NSNotification userInfo](self, "userInfo"), "isEqualToDictionary:", [equal userInfo]))
        {
          goto LABEL_6;
        }
      }

      else if ([equal userInfo])
      {
        goto LABEL_6;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  allowsKeyedCoding = [coder allowsKeyedCoding];
  name = [(NSNotification *)self name];
  if (allowsKeyedCoding)
  {
    [coder encodeObject:name forKey:@"NS.name"];
    [coder encodeObject:-[NSNotification object](self forKey:{"object"), @"NS.object"}];
    userInfo = [(NSNotification *)self userInfo];

    [coder encodeObject:userInfo forKey:@"NS.userinfo"];
  }

  else
  {
    [coder encodeObject:name];
    [coder encodeObject:{-[NSNotification object](self, "object")}];
    userInfo2 = [(NSNotification *)self userInfo];

    [coder encodeObject:userInfo2];
  }
}

- (NSNotification)initWithCoder:(NSCoder *)coder
{
  if ([(NSCoder *)coder allowsKeyedCoding])
  {
    decodeObject = [(NSCoder *)coder decodeObjectForKey:@"NS.name"];
    decodeObject2 = [(NSCoder *)coder decodeObjectForKey:@"NS.object"];
    decodeObject3 = [(NSCoder *)coder decodeObjectForKey:@"NS.userinfo"];
  }

  else
  {
    decodeObject = [(NSCoder *)coder decodeObject];
    decodeObject2 = [(NSCoder *)coder decodeObject];
    decodeObject3 = [(NSCoder *)coder decodeObject];
  }

  return [(NSNotification *)self initWithName:decodeObject object:decodeObject2 userInfo:decodeObject3];
}

+ (NSNotification)allocWithZone:(_NSZone *)zone
{
  if (NSNotification == self)
  {
    self = objc_opt_self();
  }

  return NSAllocateObject(self, 0, zone);
}

+ (NSNotification)notificationWithName:(NSNotificationName)aName object:(id)anObject
{
  v4 = [[self alloc] initWithName:aName object:anObject userInfo:0];

  return v4;
}

+ (NSNotification)notificationWithName:(NSNotificationName)aName object:(id)anObject userInfo:(NSDictionary *)aUserInfo
{
  v5 = [[self alloc] initWithName:aName object:anObject userInfo:aUserInfo];

  return v5;
}

- (NSNotification)init
{
  v3 = [NSString stringWithFormat:@"%@: should never be used", _NSMethodExceptionProem(self, a2)];

  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v3 userInfo:0]);
}

@end