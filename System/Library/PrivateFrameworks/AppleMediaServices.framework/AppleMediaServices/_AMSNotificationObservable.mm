@interface _AMSNotificationObservable
- (BOOL)cancel;
- (BOOL)sendCompletion;
- (_AMSNotificationObservable)initWithNotification:(id)notification object:(id)object;
@end

@implementation _AMSNotificationObservable

- (_AMSNotificationObservable)initWithNotification:(id)notification object:(id)object
{
  notificationCopy = notification;
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = _AMSNotificationObservable;
  v8 = [(AMSObservable *)&v11 init];
  if (v8)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__receivedNotification_ name:notificationCopy object:objectCopy];
  }

  return v8;
}

- (BOOL)cancel
{
  v6.receiver = self;
  v6.super_class = _AMSNotificationObservable;
  cancel = [(AMSObservable *)&v6 cancel];
  if (cancel)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self];
  }

  return cancel;
}

- (BOOL)sendCompletion
{
  v6.receiver = self;
  v6.super_class = _AMSNotificationObservable;
  sendCompletion = [(AMSObservable *)&v6 sendCompletion];
  if (sendCompletion)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self];
  }

  return sendCompletion;
}

@end