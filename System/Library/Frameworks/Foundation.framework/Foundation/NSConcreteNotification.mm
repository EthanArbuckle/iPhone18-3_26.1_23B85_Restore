@interface NSConcreteNotification
- (NSConcreteNotification)initWithName:(id)name object:(id)object userInfo:(id)info;
- (id)name;
- (id)userInfo;
- (void)dealloc;
@end

@implementation NSConcreteNotification

- (id)name
{
  v2 = self->name;

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSConcreteNotification;
  [(NSConcreteNotification *)&v3 dealloc];
}

- (id)userInfo
{
  v2 = self->userInfo;

  return v2;
}

- (NSConcreteNotification)initWithName:(id)name object:(id)object userInfo:(id)info
{
  selfCopy = self;
  if (name)
  {
    self->name = [name copy];
    selfCopy->object = object;
    selfCopy->userInfo = info;
  }

  else
  {

    return 0;
  }

  return selfCopy;
}

@end