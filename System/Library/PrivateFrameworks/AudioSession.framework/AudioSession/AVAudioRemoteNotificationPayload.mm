@interface AVAudioRemoteNotificationPayload
- (AVAudioRemoteNotificationPayload)initWithCoder:(id)coder;
- (AVAudioRemoteNotificationPayload)initWithNotification:(id)notification forSubscribers:(id)subscribers withPayload:(id)payload;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVAudioRemoteNotificationPayload

- (AVAudioRemoteNotificationPayload)initWithNotification:(id)notification forSubscribers:(id)subscribers withPayload:(id)payload
{
  notificationCopy = notification;
  subscribersCopy = subscribers;
  payloadCopy = payload;
  v15.receiver = self;
  v15.super_class = AVAudioRemoteNotificationPayload;
  v12 = [(AVAudioRemoteNotificationPayload *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_notification, notification);
    objc_storeStrong(&v13->_delegatePayload, payload);
    objc_storeStrong(&v13->_subscribedDelegates, subscribers);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_notification forKey:@"notification"];
  [coderCopy encodeObject:self->_subscribedDelegates forKey:@"subscribedDelegates"];
  [coderCopy encodeObject:self->_delegatePayload forKey:@"delegatePayload"];
}

- (AVAudioRemoteNotificationPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = AVAudioRemoteNotificationPayload;
  v5 = [(AVAudioRemoteNotificationPayload *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"notification"];
    [(AVAudioRemoteNotificationPayload *)v5 setNotification:v6];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"subscribedDelegates"];
    [(AVAudioRemoteNotificationPayload *)v5 setSubscribedDelegates:v10];

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v11 setWithObjects:{v12, v13, v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"delegatePayload"];
    [(AVAudioRemoteNotificationPayload *)v5 setDelegatePayload:v16];
  }

  return v5;
}

@end