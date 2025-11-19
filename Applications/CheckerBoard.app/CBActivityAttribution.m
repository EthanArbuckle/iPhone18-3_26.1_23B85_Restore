@interface CBActivityAttribution
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSystemService;
- (CBActivityAttribution)initWithSTActivityAttribution:(id)a3;
- (NSString)activeEntityBundleIdentifier;
- (NSString)bundleIdentifier;
- (NSString)displayName;
- (NSString)executableDisplayName;
- (NSString)website;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
@end

@implementation CBActivityAttribution

- (CBActivityAttribution)initWithSTActivityAttribution:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = CBActivityAttribution;
  v5 = [(CBActivityAttribution *)&v20 init];
  if (v5)
  {
    v6 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Creating CBActivityAttribution for STActivityAttribution %@", buf, 0xCu);
    }

    v7 = [v4 copy];
    attribution = v5->_attribution;
    v5->_attribution = v7;

    v9 = [v4 attributedEntity];
    v10 = [v9 bundlePath];
    if (v10 || ([v9 executablePath], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v11 = v10;
      v12 = BSPathExistsOnSystemPartition() ^ 1;
    }

    else
    {
      v12 = 1;
    }

    v13 = [v9 localizedDisplayName];
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"SYSTEM_ATTRIBUTION_STRING" value:0 table:@"SystemStatusServer"];
    v16 = [v14 localizedStringForKey:@"UNKNOWN_ATTRIBUTION_STRING" value:0 table:@"SystemStatusServer"];
    if (v12 & 1) != 0 || ([v13 isEqualToString:v16] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", v15))
    {
      v17 = [v9 bundleIdentifier];
    }

    else
    {
      v17 = v13;
    }

    attributionGroup = v5->_attributionGroup;
    v5->_attributionGroup = v17;
  }

  return v5;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v4 = [(STActivityAttribution *)self->_attribution attributedEntity];
  if (v4)
  {
    v6 = v4;
    [v4 auditToken];
    v4 = v6;
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
  v2 = [(STActivityAttribution *)self->_attribution attributedEntity];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (NSString)activeEntityBundleIdentifier
{
  v2 = [(STActivityAttribution *)self->_attribution activeEntity];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (NSString)displayName
{
  v2 = [(STActivityAttribution *)self->_attribution attributedEntity];
  v3 = [v2 localizedDisplayName];

  return v3;
}

- (NSString)executableDisplayName
{
  v2 = [(STActivityAttribution *)self->_attribution attributedEntity];
  v3 = [v2 localizedExecutableDisplayName];

  return v3;
}

- (NSString)website
{
  v2 = [(STActivityAttribution *)self->_attribution attributedEntity];
  v3 = [v2 website];

  return v3;
}

- (BOOL)isSystemService
{
  v2 = [(STActivityAttribution *)self->_attribution attributedEntity];
  v3 = [v2 isSystemService];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [BSEqualsBuilder builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  attribution = self->_attribution;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100018E8C;
  v10[3] = &unk_10007DD50;
  v11 = v4;
  v7 = v4;
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
  v2 = [(CBActivityAttribution *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  v4 = [(CBActivityAttribution *)self displayName];
  v5 = [v3 appendObject:v4 withName:@"displayName"];

  v6 = [(CBActivityAttribution *)self bundleIdentifier];
  v7 = [v3 appendObject:v6 withName:@"bundleIdentifier"];

  v8 = [(CBActivityAttribution *)self website];
  v9 = [v3 appendBool:objc_msgSend(v8 withName:{"length") != 0, @"website-non-nil"}];

  v10 = [v3 appendBool:-[CBActivityAttribution isSystemService](self withName:{"isSystemService"), @"isSystemService"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(CBActivityAttribution *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  [BSDescriptionBuilder builderWithObject:self];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100019168;
  v5 = v8[3] = &unk_10007D640;
  v9 = v5;
  v10 = self;
  [v5 appendBodySectionWithName:0 multilinePrefix:v4 block:v8];

  v6 = v5;
  return v5;
}

@end