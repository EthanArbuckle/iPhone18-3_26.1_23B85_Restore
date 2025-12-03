@interface AVAudioNotificationFilter
- (AVAudioNotificationFilter)initWithCoder:(id)coder;
- (AVAudioNotificationFilter)initWithPropertyNotificationsOfInterest:(id)interest wantsInterruptions:(BOOL)interruptions;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)filterPropertyNotifications:(id)notifications;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVAudioNotificationFilter

- (AVAudioNotificationFilter)initWithPropertyNotificationsOfInterest:(id)interest wantsInterruptions:(BOOL)interruptions
{
  interestCopy = interest;
  v11.receiver = self;
  v11.super_class = AVAudioNotificationFilter;
  v8 = [(AVAudioNotificationFilter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_propertyNotificationsOfInterest, interest);
    v9->_wantsInterruptions = interruptions;
  }

  return v9;
}

- (id)filterPropertyNotifications:(id)notifications
{
  v20 = *MEMORY[0x1E69E9840];
  notificationsCopy = notifications;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = notificationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        propertyNotificationsOfInterest = self->_propertyNotificationsOfInterest;
        propertyName = [v10 propertyName];
        LODWORD(propertyNotificationsOfInterest) = [(NSSet *)propertyNotificationsOfInterest containsObject:propertyName];

        if (propertyNotificationsOfInterest)
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ([(NSSet *)self->_propertyNotificationsOfInterest isEqualToSet:v5[2]])
    {
      v6 = self->_wantsInterruptions == *(v5 + 8);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_propertyNotificationsOfInterest forKey:@"propertyNotificationsOfInterest"];
  [coderCopy encodeBool:self->_wantsInterruptions forKey:@"wantsInterruptions"];
}

- (AVAudioNotificationFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = AVAudioNotificationFilter;
  v5 = [(AVAudioNotificationFilter *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"propertyNotificationsOfInterest"];
    propertyNotificationsOfInterest = v5->_propertyNotificationsOfInterest;
    v5->_propertyNotificationsOfInterest = v9;

    v5->_wantsInterruptions = [coderCopy decodeBoolForKey:@"wantsInterruptions"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AVAudioNotificationFilter allocWithZone:zone];
  propertyNotificationsOfInterest = self->_propertyNotificationsOfInterest;
  wantsInterruptions = self->_wantsInterruptions;

  return [(AVAudioNotificationFilter *)v4 initWithPropertyNotificationsOfInterest:propertyNotificationsOfInterest wantsInterruptions:wantsInterruptions];
}

@end