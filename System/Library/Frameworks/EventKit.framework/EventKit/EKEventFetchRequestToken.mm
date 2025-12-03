@interface EKEventFetchRequestToken
- (EKEventFetchRequestToken)initWithEventStore:(id)store token:(int)token;
- (EKEventStore)eventStore;
- (void)cancel;
@end

@implementation EKEventFetchRequestToken

- (EKEventFetchRequestToken)initWithEventStore:(id)store token:(int)token
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = EKEventFetchRequestToken;
  v7 = [(EKEventFetchRequestToken *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_eventStore, storeCopy);
    v8->_token = token;
  }

  return v8;
}

- (void)cancel
{
  eventStore = [(EKEventFetchRequestToken *)self eventStore];
  connection = [eventStore connection];
  [connection cancelRemoteOperation:{-[EKEventFetchRequestToken token](self, "token")}];
}

- (EKEventStore)eventStore
{
  WeakRetained = objc_loadWeakRetained(&self->_eventStore);

  return WeakRetained;
}

@end