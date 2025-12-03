@interface NSNotificationObservable
+ (id)observableWithName:(id)name object:(id)object;
- (NSNotificationObservable)initWithName:(id)name object:(id)object;
@end

@implementation NSNotificationObservable

+ (id)observableWithName:(id)name object:(id)object
{
  v4 = [[self alloc] initWithName:name object:object];

  return v4;
}

- (NSNotificationObservable)initWithName:(id)name object:(id)object
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSNotificationObservable;
  v6 = [(NSNotificationObservable *)&v8 init];
  if (v6)
  {
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v6 name:sel_receiveObservedValue_ object:name, object];
  }

  return v6;
}

@end