@interface NSConcreteNotification
- (NSConcreteNotification)initWithName:(id)a3 object:(id)a4 userInfo:(id)a5;
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

- (NSConcreteNotification)initWithName:(id)a3 object:(id)a4 userInfo:(id)a5
{
  v5 = self;
  if (a3)
  {
    self->name = [a3 copy];
    v5->object = a4;
    v5->userInfo = a5;
  }

  else
  {

    return 0;
  }

  return v5;
}

@end