@interface AVAudioNotificationFilter
- (AVAudioNotificationFilter)initWithCoder:(id)a3;
- (AVAudioNotificationFilter)initWithPropertyNotificationsOfInterest:(id)a3 wantsInterruptions:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)filterPropertyNotifications:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVAudioNotificationFilter

- (AVAudioNotificationFilter)initWithPropertyNotificationsOfInterest:(id)a3 wantsInterruptions:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = AVAudioNotificationFilter;
  v8 = [(AVAudioNotificationFilter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_propertyNotificationsOfInterest, a3);
    v9->_wantsInterruptions = a4;
  }

  return v9;
}

- (id)filterPropertyNotifications:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
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
        v12 = [v10 propertyName];
        LODWORD(propertyNotificationsOfInterest) = [(NSSet *)propertyNotificationsOfInterest containsObject:v12];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_propertyNotificationsOfInterest forKey:@"propertyNotificationsOfInterest"];
  [v4 encodeBool:self->_wantsInterruptions forKey:@"wantsInterruptions"];
}

- (AVAudioNotificationFilter)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AVAudioNotificationFilter;
  v5 = [(AVAudioNotificationFilter *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"propertyNotificationsOfInterest"];
    propertyNotificationsOfInterest = v5->_propertyNotificationsOfInterest;
    v5->_propertyNotificationsOfInterest = v9;

    v5->_wantsInterruptions = [v4 decodeBoolForKey:@"wantsInterruptions"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AVAudioNotificationFilter allocWithZone:a3];
  propertyNotificationsOfInterest = self->_propertyNotificationsOfInterest;
  wantsInterruptions = self->_wantsInterruptions;

  return [(AVAudioNotificationFilter *)v4 initWithPropertyNotificationsOfInterest:propertyNotificationsOfInterest wantsInterruptions:wantsInterruptions];
}

@end