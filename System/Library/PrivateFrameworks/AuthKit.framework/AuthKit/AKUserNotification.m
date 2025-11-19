@interface AKUserNotification
- (AKUserNotification)initWithPushMessage:(id)a3;
- (id)description;
@end

@implementation AKUserNotification

- (AKUserNotification)initWithPushMessage:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v20;
  v20 = 0;
  v18.receiver = v3;
  v18.super_class = AKUserNotification;
  v20 = [(AKUserNotification *)&v18 init];
  objc_storeStrong(&v20, v20);
  if (v20)
  {
    v4 = [location[0] messageId];
    identifier = v20->_identifier;
    v20->_identifier = v4;
    _objc_release(identifier);
    v6 = [location[0] alertTitle];
    titleKey = v20->_titleKey;
    v20->_titleKey = v6;
    _objc_release(titleKey);
    v8 = [location[0] secondaryTitle];
    subTitleKey = v20->_subTitleKey;
    v20->_subTitleKey = v8;
    _objc_release(subTitleKey);
    v10 = [location[0] alertBody];
    bodyKey = v20->_bodyKey;
    v20->_bodyKey = v10;
    _objc_release(bodyKey);
    v12 = [location[0] defaultButtonTitle];
    actionButtonText = v20->_actionButtonText;
    v20->_actionButtonText = v12;
    _objc_release(actionButtonText);
    v14 = [location[0] alternateButtonTitle];
    otherButtonText = v20->_otherButtonText;
    v20->_otherButtonText = v14;
    _objc_release(otherButtonText);
  }

  v17 = _objc_retain(v20);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v20, 0);
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