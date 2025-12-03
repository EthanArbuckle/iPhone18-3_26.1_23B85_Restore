@interface AAAccountUserNotificationContext
- (AAAccountUserNotificationContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AAAccountUserNotificationContext

- (AAAccountUserNotificationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = AAAccountUserNotificationContext;
  v5 = [(AAAccountUserNotificationContext *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_message"];
    message = v5->_message;
    v5->_message = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v10;

    v5->_action = [coderCopy decodeIntegerForKey:@"_action"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"_title"];
  [coderCopy encodeObject:self->_message forKey:@"_message"];
  [coderCopy encodeObject:self->_altDSID forKey:@"_altDSID"];
  [coderCopy encodeInteger:self->_action forKey:@"_action"];
}

- (id)copyWithZone:(_NSZone *)zone
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