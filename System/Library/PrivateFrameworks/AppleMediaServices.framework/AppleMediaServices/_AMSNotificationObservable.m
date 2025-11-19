@interface _AMSNotificationObservable
- (BOOL)cancel;
- (BOOL)sendCompletion;
- (_AMSNotificationObservable)initWithNotification:(id)a3 object:(id)a4;
@end

@implementation _AMSNotificationObservable

- (_AMSNotificationObservable)initWithNotification:(id)a3 object:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _AMSNotificationObservable;
  v8 = [(AMSObservable *)&v11 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v8 selector:sel__receivedNotification_ name:v6 object:v7];
  }

  return v8;
}

- (BOOL)cancel
{
  v6.receiver = self;
  v6.super_class = _AMSNotificationObservable;
  v3 = [(AMSObservable *)&v6 cancel];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self];
  }

  return v3;
}

- (BOOL)sendCompletion
{
  v6.receiver = self;
  v6.super_class = _AMSNotificationObservable;
  v3 = [(AMSObservable *)&v6 sendCompletion];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 removeObserver:self];
  }

  return v3;
}

@end