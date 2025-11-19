@interface AVAudioRemoteNotificationPayload
- (AVAudioRemoteNotificationPayload)initWithCoder:(id)a3;
- (AVAudioRemoteNotificationPayload)initWithNotification:(id)a3 forSubscribers:(id)a4 withPayload:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVAudioRemoteNotificationPayload

- (AVAudioRemoteNotificationPayload)initWithNotification:(id)a3 forSubscribers:(id)a4 withPayload:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = AVAudioRemoteNotificationPayload;
  v12 = [(AVAudioRemoteNotificationPayload *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_notification, a3);
    objc_storeStrong(&v13->_delegatePayload, a5);
    objc_storeStrong(&v13->_subscribedDelegates, a4);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_notification forKey:@"notification"];
  [v4 encodeObject:self->_subscribedDelegates forKey:@"subscribedDelegates"];
  [v4 encodeObject:self->_delegatePayload forKey:@"delegatePayload"];
}

- (AVAudioRemoteNotificationPayload)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = AVAudioRemoteNotificationPayload;
  v5 = [(AVAudioRemoteNotificationPayload *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"notification"];
    [(AVAudioRemoteNotificationPayload *)v5 setNotification:v6];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"subscribedDelegates"];
    [(AVAudioRemoteNotificationPayload *)v5 setSubscribedDelegates:v10];

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v11 setWithObjects:{v12, v13, v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"delegatePayload"];
    [(AVAudioRemoteNotificationPayload *)v5 setDelegatePayload:v16];
  }

  return v5;
}

@end