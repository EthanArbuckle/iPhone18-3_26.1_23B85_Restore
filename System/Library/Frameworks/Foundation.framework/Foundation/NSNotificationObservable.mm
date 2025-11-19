@interface NSNotificationObservable
+ (id)observableWithName:(id)a3 object:(id)a4;
- (NSNotificationObservable)initWithName:(id)a3 object:(id)a4;
@end

@implementation NSNotificationObservable

+ (id)observableWithName:(id)a3 object:(id)a4
{
  v4 = [[a1 alloc] initWithName:a3 object:a4];

  return v4;
}

- (NSNotificationObservable)initWithName:(id)a3 object:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSNotificationObservable;
  v6 = [(NSNotificationObservable *)&v8 init];
  if (v6)
  {
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v6 name:sel_receiveObservedValue_ object:a3, a4];
  }

  return v6;
}

@end