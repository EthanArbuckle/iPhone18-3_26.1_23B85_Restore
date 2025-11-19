@interface AAAccountUserNotificationContext
- (AAAccountUserNotificationContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AAAccountUserNotificationContext

- (AAAccountUserNotificationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = AAAccountUserNotificationContext;
  v5 = [(AAAccountUserNotificationContext *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_message"];
    message = v5->_message;
    v5->_message = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v10;

    v5->_action = [v4 decodeIntegerForKey:@"_action"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"_title"];
  [v5 encodeObject:self->_message forKey:@"_message"];
  [v5 encodeObject:self->_altDSID forKey:@"_altDSID"];
  [v5 encodeInteger:self->_action forKey:@"_action"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[AAAccountUserNotificationContext allocWithZone:?]];
  v5 = [(NSString *)self->_title copy];
  title = v4->_title;
  v4->_title = v5;

  v7 = [(NSString *)self->_message copy];
  message = v4->_message;
  v4->_message = v7;

  v9 = [(NSString *)self->_altDSID copy];
  altDSID = v4->_altDSID;
  v4->_altDSID = v9;

  v4->_action = self->_action;
  return v4;
}

@end