@interface CBActivityAttribution
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSystemService;
- (CBActivityAttribution)initWithSTActivityAttribution:(id)attribution;
- (NSString)activeEntityBundleIdentifier;
- (NSString)bundleIdentifier;
- (NSString)displayName;
- (NSString)executableDisplayName;
- (NSString)website;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation CBActivityAttribution

- (CBActivityAttribution)initWithSTActivityAttribution:(id)attribution
{
  attributionCopy = attribution;
  v20.receiver = self;
  v20.super_class = CBActivityAttribution;
  v5 = [(CBActivityAttribution *)&v20 init];
  if (v5)
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = attributionCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Creating CBActivityAttribution for STActivityAttribution %@", buf, 0xCu);
    }

    v7 = [attributionCopy copy];
    attribution = v5->_attribution;
    v5->_attribution = v7;

    attributedEntity = [attributionCopy attributedEntity];
    bundlePath = [attributedEntity bundlePath];
    if (bundlePath || ([attributedEntity executablePath], (bundlePath = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = bundlePath;
      v12 = BSPathExistsOnSystemPartition() ^ 1;
    }

    else
    {
      v12 = 1;
    }

    localizedDisplayName = [attributedEntity localizedDisplayName];
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"SYSTEM_ATTRIBUTION_STRING" value:0 table:@"SystemStatusServer"];
    v16 = [v14 localizedStringForKey:@"UNKNOWN_ATTRIBUTION_STRING" value:0 table:@"SystemStatusServer"];
    if (v12 & 1) != 0 || ([localizedDisplayName isEqualToString:v16] & 1) != 0 || (objc_msgSend(localizedDisplayName, "isEqualToString:", v15))
    {
      bundleIdentifier = [attributedEntity bundleIdentifier];
    }

    else
    {
      bundleIdentifier = localizedDisplayName;
    }

    attributionGroup = v5->_attributionGroup;
    v5->_attributionGroup = bundleIdentifier;
  }

  return v5;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  attributedEntity = [(STActivityAttribution *)self->_attribution attributedEntity];
  if (attributedEntity)
  {
    v6 = attributedEntity;
    [attributedEntity auditToken];
    attributedEntity = v6;
  }

  else
  {
    *retstr->var0 = 0u;
    *&retstr->var0[4] = 0u;
  }

  return result;
}

- (NSString)bundleIdentifier
{
  attributedEntity = [(STActivityAttribution *)self->_attribution attributedEntity];
  bundleIdentifier = [attributedEntity bundleIdentifier];

  return bundleIdentifier;
}

- (NSString)activeEntityBundleIdentifier
{
  activeEntity = [(STActivityAttribution *)self->_attribution activeEntity];
  bundleIdentifier = [activeEntity bundleIdentifier];

  return bundleIdentifier;
}

- (NSString)displayName
{
  attributedEntity = [(STActivityAttribution *)self->_attribution attributedEntity];
  localizedDisplayName = [attributedEntity localizedDisplayName];

  return localizedDisplayName;
}

- (NSString)executableDisplayName
{
  attributedEntity = [(STActivityAttribution *)self->_attribution attributedEntity];
  localizedExecutableDisplayName = [attributedEntity localizedExecutableDisplayName];

  return localizedExecutableDisplayName;
}

- (NSString)website
{
  attributedEntity = [(STActivityAttribution *)self->_attribution attributedEntity];
  website = [attributedEntity website];

  return website;
}

- (BOOL)isSystemService
{
  attributedEntity = [(STActivityAttribution *)self->_attribution attributedEntity];
  isSystemService = [attributedEntity isSystemService];

  return isSystemService;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [BSEqualsBuilder builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  attribution = self->_attribution;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100018E8C;
  v10[3] = &unk_10007DD50;
  v11 = equalCopy;
  v7 = equalCopy;
  v8 = [v5 appendObject:attribution counterpart:v10];
  LOBYTE(attribution) = [v5 isEqual];

  return attribution;
}

- (unint64_t)hash
{
  v3 = +[BSHashBuilder builder];
  v4 = [v3 appendObject:self->_attribution];
  v5 = [v3 hash];

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CBActivityAttribution *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  displayName = [(CBActivityAttribution *)self displayName];
  v5 = [v3 appendObject:displayName withName:@"displayName"];

  bundleIdentifier = [(CBActivityAttribution *)self bundleIdentifier];
  v7 = [v3 appendObject:bundleIdentifier withName:@"bundleIdentifier"];

  website = [(CBActivityAttribution *)self website];
  v9 = [v3 appendBool:objc_msgSend(website withName:{"length") != 0, @"website-non-nil"}];

  v10 = [v3 appendBool:-[CBActivityAttribution isSystemService](self withName:{"isSystemService"), @"isSystemService"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CBActivityAttribution *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  [BSDescriptionBuilder builderWithObject:self];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100019168;
  v5 = v8[3] = &unk_10007D640;
  v9 = v5;
  selfCopy = self;
  [v5 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v8];

  v6 = v5;
  return v5;
}

@end