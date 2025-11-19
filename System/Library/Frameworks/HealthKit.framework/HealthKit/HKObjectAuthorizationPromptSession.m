@interface HKObjectAuthorizationPromptSession
- (HKObjectAuthorizationPromptSession)initWithCoder:(id)a3;
- (id)initForBundleIdentifier:(id)a3 sessionIdentifier:(id)a4 objectType:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKObjectAuthorizationPromptSession

- (id)initForBundleIdentifier:(id)a3 sessionIdentifier:(id)a4 objectType:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HKObjectAuthorizationPromptSession;
  v12 = [(HKObjectAuthorizationPromptSession *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionIdentifier, a4);
    objc_storeStrong(p_isa + 2, a3);
    objc_storeStrong(p_isa + 3, a5);
  }

  return p_isa;
}

- (HKObjectAuthorizationPromptSession)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HKObjectAuthorizationPromptSession;
  v5 = [(HKObjectAuthorizationPromptSession *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sid"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bid"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectType"];
    objectType = v5->_objectType;
    v5->_objectType = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sessionIdentifier = self->_sessionIdentifier;
  v5 = a3;
  [v5 encodeObject:sessionIdentifier forKey:@"sid"];
  [v5 encodeObject:self->_bundleIdentifier forKey:@"bid"];
  [v5 encodeObject:self->_objectType forKey:@"objectType"];
}

@end