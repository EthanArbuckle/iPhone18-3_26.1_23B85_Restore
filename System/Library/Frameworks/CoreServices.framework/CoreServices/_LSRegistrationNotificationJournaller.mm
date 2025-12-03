@interface _LSRegistrationNotificationJournaller
- (BOOL)entityExists;
- (_LSRegistrationNotificationJournaller)initWithCoder:(id)coder;
- (_LSRegistrationNotificationJournaller)initWithPrimaryBundleID:(id)d placeholder:(BOOL)placeholder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LSRegistrationNotificationJournaller

- (_LSRegistrationNotificationJournaller)initWithPrimaryBundleID:(id)d placeholder:(BOOL)placeholder
{
  v6.receiver = self;
  v6.super_class = _LSRegistrationNotificationJournaller;
  result = [(_LSInstallNotificationJournaller *)&v6 initWithPrimaryBundleID:d operation:0];
  if (result)
  {
    result->_placeholder = placeholder;
  }

  return result;
}

- (_LSRegistrationNotificationJournaller)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _LSRegistrationNotificationJournaller;
  v5 = [(_LSInstallNotificationJournaller *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_placeholder = [coderCopy decodeBoolForKey:@"placeholder"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _LSRegistrationNotificationJournaller;
  coderCopy = coder;
  [(_LSInstallNotificationJournaller *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_placeholder forKey:{@"placeholder", v5.receiver, v5.super_class}];
}

- (BOOL)entityExists
{
  selfCopy = self;
  primaryBundleID = [(_LSInstallNotificationJournaller *)self primaryBundleID];
  LOBYTE(selfCopy) = [(_LSInstallNotificationJournaller *)selfCopy isApplicationRegisteredWithbundleID:primaryBundleID placeholder:selfCopy->_placeholder];

  return selfCopy;
}

@end