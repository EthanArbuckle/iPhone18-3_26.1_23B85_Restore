@interface _HMDoorbellChimeProfile
+ (id)logCategory;
- (_HMDoorbellChimeProfileDelegate)delegate;
- (void)_handleDoorbellChimeMessage:(id)a3;
- (void)_registerNotificationHandlers;
- (void)setDelegate:(id)a3;
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

- (void)setDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, v4);

  os_unfair_lock_unlock(&self->_lock + 1);
}

- (_HMDoorbellChimeProfileDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock + 1);

  return WeakRetained;
}

- (void)_handleDoorbellChimeMessage:(id)a3
{
  v4 = a3;
  v5 = [(_HMDoorbellChimeProfile *)self delegate];
  [v5 didReceiveDoorbellChimeMessage:v4];
}

- (void)_registerNotificationHandlers
{
  v4 = [(_HMAccessoryProfile *)self context];
  v3 = [v4 messageDispatcher];
  [v3 registerForMessage:@"HM.doorbell.chime" receiver:self selector:sel__handleDoorbellChimeMessage_];
}

@end