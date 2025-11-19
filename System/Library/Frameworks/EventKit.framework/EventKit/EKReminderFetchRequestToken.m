@interface EKReminderFetchRequestToken
- (EKReminderFetchRequestToken)initWithReminderStore:(id)a3;
- (EKReminderStore)reminderStore;
- (void)cancel;
@end

@implementation EKReminderFetchRequestToken

- (EKReminderFetchRequestToken)initWithReminderStore:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EKReminderFetchRequestToken;
  v5 = [(EKReminderFetchRequestToken *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_reminderStore, v4);
  }

  return v6;
}

- (void)cancel
{
  v4 = [(EKReminderFetchRequestToken *)self reminderStore];
  v3 = [v4 completionBlockForFetchRequestToken:self remove:1];
}

- (EKReminderStore)reminderStore
{
  WeakRetained = objc_loadWeakRetained(&self->_reminderStore);

  return WeakRetained;
}

@end