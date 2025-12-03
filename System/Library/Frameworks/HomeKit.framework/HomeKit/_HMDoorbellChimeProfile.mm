@interface _HMDoorbellChimeProfile
+ (id)logCategory;
- (_HMDoorbellChimeProfileDelegate)delegate;
- (void)_handleDoorbellChimeMessage:(id)message;
- (void)_registerNotificationHandlers;
- (void)setDelegate:(id)delegate;
@end

@implementation _HMDoorbellChimeProfile

+ (id)logCategory
{
  if (logCategory__hmf_once_t2 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2, &__block_literal_global_5445);
  }

  v3 = logCategory__hmf_once_v3;

  return v3;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, delegateCopy);

  os_unfair_lock_unlock(&self->_lock + 1);
}

- (_HMDoorbellChimeProfileDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock + 1);

  return WeakRetained;
}

- (void)_handleDoorbellChimeMessage:(id)message
{
  messageCopy = message;
  delegate = [(_HMDoorbellChimeProfile *)self delegate];
  [delegate didReceiveDoorbellChimeMessage:messageCopy];
}

- (void)_registerNotificationHandlers
{
  context = [(_HMAccessoryProfile *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"HM.doorbell.chime" receiver:self selector:sel__handleDoorbellChimeMessage_];
}

@end