@interface AKUserNotification
- (AKUserNotification)initWithPushMessage:(id)message;
- (id)description;
@end

@implementation AKUserNotification

- (AKUserNotification)initWithPushMessage:(id)message
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v3 = selfCopy;
  selfCopy = 0;
  v18.receiver = v3;
  v18.super_class = AKUserNotification;
  selfCopy = [(AKUserNotification *)&v18 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    messageId = [location[0] messageId];
    identifier = selfCopy->_identifier;
    selfCopy->_identifier = messageId;
    _objc_release(identifier);
    alertTitle = [location[0] alertTitle];
    titleKey = selfCopy->_titleKey;
    selfCopy->_titleKey = alertTitle;
    _objc_release(titleKey);
    secondaryTitle = [location[0] secondaryTitle];
    subTitleKey = selfCopy->_subTitleKey;
    selfCopy->_subTitleKey = secondaryTitle;
    _objc_release(subTitleKey);
    alertBody = [location[0] alertBody];
    bodyKey = selfCopy->_bodyKey;
    selfCopy->_bodyKey = alertBody;
    _objc_release(bodyKey);
    defaultButtonTitle = [location[0] defaultButtonTitle];
    actionButtonText = selfCopy->_actionButtonText;
    selfCopy->_actionButtonText = defaultButtonTitle;
    _objc_release(actionButtonText);
    alternateButtonTitle = [location[0] alternateButtonTitle];
    otherButtonText = selfCopy->_otherButtonText;
    selfCopy->_otherButtonText = alternateButtonTitle;
    _objc_release(otherButtonText);
  }

  v17 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v17;
}

- (id)description
{
  v2 = objc_opt_class();
  v4 = NSStringFromClass(v2);
  v5 = [NSString stringWithFormat:@"<%@ - identifier: %@, title: %@, subTitle: %@, body: %@, action button: %@, other button: %@, apps:%@>", v4, self->_identifier, self->_titleKey, self->_subTitleKey, self->_bodyKey, self->_actionButtonText, self->_otherButtonText, self->_localizedAppsNameList];
  _objc_release(v4);

  return v5;
}

@end