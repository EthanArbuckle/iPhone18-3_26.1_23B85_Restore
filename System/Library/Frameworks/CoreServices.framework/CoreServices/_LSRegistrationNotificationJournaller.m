@interface _LSRegistrationNotificationJournaller
- (BOOL)entityExists;
- (_LSRegistrationNotificationJournaller)initWithCoder:(id)a3;
- (_LSRegistrationNotificationJournaller)initWithPrimaryBundleID:(id)a3 placeholder:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LSRegistrationNotificationJournaller

- (_LSRegistrationNotificationJournaller)initWithPrimaryBundleID:(id)a3 placeholder:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = _LSRegistrationNotificationJournaller;
  result = [(_LSInstallNotificationJournaller *)&v6 initWithPrimaryBundleID:a3 operation:0];
  if (result)
  {
    result->_placeholder = a4;
  }

  return result;
}

- (_LSRegistrationNotificationJournaller)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _LSRegistrationNotificationJournaller;
  v5 = [(_LSInstallNotificationJournaller *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_placeholder = [v4 decodeBoolForKey:@"placeholder"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _LSRegistrationNotificationJournaller;
  v4 = a3;
  [(_LSInstallNotificationJournaller *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_placeholder forKey:{@"placeholder", v5.receiver, v5.super_class}];
}

- (BOOL)entityExists
{
  v2 = self;
  v3 = [(_LSInstallNotificationJournaller *)self primaryBundleID];
  LOBYTE(v2) = [(_LSInstallNotificationJournaller *)v2 isApplicationRegisteredWithbundleID:v3 placeholder:v2->_placeholder];

  return v2;
}

@end