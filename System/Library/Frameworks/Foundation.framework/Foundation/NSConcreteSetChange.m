@interface NSConcreteSetChange
- (NSConcreteSetChange)initWithType:(unint64_t)a3 object:(id)a4;
- (void)dealloc;
@end

@implementation NSConcreteSetChange

- (NSConcreteSetChange)initWithType:(unint64_t)a3 object:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSConcreteSetChange;
  v6 = [(NSConcreteSetChange *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_changeType = a3;
    v6->_value = a4;
  }

  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSConcreteSetChange;
  [(NSConcreteSetChange *)&v3 dealloc];
}

@end