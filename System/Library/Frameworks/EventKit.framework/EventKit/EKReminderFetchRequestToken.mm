@interface EKReminderFetchRequestToken
- (EKReminderFetchRequestToken)initWithReminderStore:(id)store;
- (EKReminderStore)reminderStore;
- (void)cancel;
@end

@implementation EKReminderFetchRequestToken

- (EKReminderFetchRequestToken)initWithReminderStore:(id)store
{
  storeCopy = store;
  v8.receiver = self;
  v8.super_class = EKReminderFetchRequestToken;
  v5 = [(EKReminderFetchRequestToken *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_reminderStore, storeCopy);
  }

  return v6;
}

- (void)cancel
{
  reminderStore = [(EKReminderFetchRequestToken *)self reminderStore];
  v3 = [reminderStore completionBlockForFetchRequestToken:self remove:1];
}

- (EKReminderStore)reminderStore
{
  WeakRetained = objc_loadWeakRetained(&self->_reminderStore);

  return WeakRetained;
}

@end