@interface HSEntitlementContext
- (HSEntitlementContext)init;
- (HSEntitlementContext)initWithSetupAccessoryDescription:(id)description;
- (id)description;
@end

@implementation HSEntitlementContext

- (HSEntitlementContext)initWithSetupAccessoryDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = HSEntitlementContext;
  v5 = [(HSEntitlementContext *)&v9 init];
  if (v5)
  {
    appIdentifier = [descriptionCopy appIdentifier];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = appIdentifier;

    v5->_isEntitledForHomeKitSPI = [descriptionCopy isEntitledForHomeKitSPI];
    v5->_isEntitledForThirdPartySetupAccessoryPayload = [descriptionCopy isEntitledForThirdPartySetupAccessoryPayload];
    v5->_isEntitledForThirdPartyMatterSetupPayload = [descriptionCopy isEntitledForThirdPartyMatterSetupPayload];
    v5->_isEntitledForAll3rdPartyAccessoryTypes = _os_feature_enabled_impl();
  }

  return v5;
}

- (HSEntitlementContext)init
{
  v4 = +[NSAssertionHandler currentHandler];
  v5 = NSStringFromSelector("initWithSetupAccessoryDescription:");
  [v4 handleFailureInMethod:a2 object:self file:@"HSEntitlementContext.m" lineNumber:39 description:{@"%s is unavailable; use %@ instead", "-[HSEntitlementContext init]", v5}];

  return 0;
}

- (id)description
{
  v3 = [NADescriptionBuilder builderWithObject:self];
  bundleIdentifier = [(HSEntitlementContext *)self bundleIdentifier];
  [v3 appendString:bundleIdentifier withName:@"bundleIdentifier"];

  v5 = [v3 appendBool:-[HSEntitlementContext isEntitledForHomeKitSPI](self withName:{"isEntitledForHomeKitSPI"), @"com.apple.homekit.private-spi-access"}];
  v6 = [v3 appendBool:-[HSEntitlementContext isEntitledForThirdPartySetupAccessoryPayload](self withName:{"isEntitledForThirdPartySetupAccessoryPayload"), @"com.apple.developer.homekit.allow-setup-payload"}];
  v7 = [v3 appendBool:-[HSEntitlementContext isEntitledForThirdPartyMatterSetupPayload](self withName:{"isEntitledForThirdPartyMatterSetupPayload"), @"com.apple.developer.matter.allow-setup-payload"}];
  build = [v3 build];

  return build;
}

@end