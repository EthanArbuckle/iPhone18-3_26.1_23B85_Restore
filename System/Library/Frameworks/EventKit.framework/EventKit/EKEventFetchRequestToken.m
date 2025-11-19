@interface EKEventFetchRequestToken
- (EKEventFetchRequestToken)initWithEventStore:(id)a3 token:(int)a4;
- (EKEventStore)eventStore;
- (void)cancel;
@end

@implementation EKEventFetchRequestToken

- (EKEventFetchRequestToken)initWithEventStore:(id)a3 token:(int)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = EKEventFetchRequestToken;
  v7 = [(EKEventFetchRequestToken *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_eventStore, v6);
    v8->_token = a4;
  }

  return v8;
}

- (void)cancel
{
  v4 = [(EKEventFetchRequestToken *)self eventStore];
  v3 = [v4 connection];
  [v3 cancelRemoteOperation:{-[EKEventFetchRequestToken token](self, "token")}];
}

- (EKEventStore)eventStore
{
  WeakRetained = objc_loadWeakRetained(&self->_eventStore);

  return WeakRetained;
}

@end