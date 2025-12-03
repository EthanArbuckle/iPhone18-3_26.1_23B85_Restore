@interface HKObjectAuthorizationPromptSession
- (HKObjectAuthorizationPromptSession)initWithCoder:(id)coder;
- (id)initForBundleIdentifier:(id)identifier sessionIdentifier:(id)sessionIdentifier objectType:(id)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKObjectAuthorizationPromptSession

- (id)initForBundleIdentifier:(id)identifier sessionIdentifier:(id)sessionIdentifier objectType:(id)type
{
  identifierCopy = identifier;
  sessionIdentifierCopy = sessionIdentifier;
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = HKObjectAuthorizationPromptSession;
  v12 = [(HKObjectAuthorizationPromptSession *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionIdentifier, sessionIdentifier);
    objc_storeStrong(p_isa + 2, identifier);
    objc_storeStrong(p_isa + 3, type);
  }

  return p_isa;
}

- (HKObjectAuthorizationPromptSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = HKObjectAuthorizationPromptSession;
  v5 = [(HKObjectAuthorizationPromptSession *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sid"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bid"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectType"];
    objectType = v5->_objectType;
    v5->_objectType = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sessionIdentifier = self->_sessionIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:sessionIdentifier forKey:@"sid"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bid"];
  [coderCopy encodeObject:self->_objectType forKey:@"objectType"];
}

@end