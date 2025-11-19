@interface ASCredentialRequestPaneHeaderConfiguration
+ (id)credentialProviderHeaderWithApplicationBundleID:(id)a3 title:(id)a4 subtitle:(id)a5;
+ (id)noCredentialsErrorWithServiceName:(id)a3;
+ (id)passwordManagerHeaderWithTitle:(id)a3 subtitle:(id)a4;
+ (id)securityKeyHeaderWithIcon:(int64_t)a3 title:(id)a4 subtitle:(id)a5;
+ (id)signInFailedErrorWithSubtitle:(id)a3;
- (ASCredentialRequestPaneHeaderConfiguration)initWithTitle:(id)a3 subtitle:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)subtitle;
- (NSString)title;
- (int64_t)hash;
@end

@implementation ASCredentialRequestPaneHeaderConfiguration

- (NSString)title
{
  v3 = *(&self->super.isa + OBJC_IVAR___ASCredentialRequestPaneHeaderConfiguration_rawConfiguration);
  swift_getKeyPath();
  sub_1B1CE4298(&qword_1EB774DA8);
  v4 = self;
  sub_1B1D7B6DC();

  v6 = *(v3 + 16);
  v5 = *(v3 + 24);

  if (v5)
  {
    v7 = sub_1B1D7BE1C();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)subtitle
{
  v3 = *(&self->super.isa + OBJC_IVAR___ASCredentialRequestPaneHeaderConfiguration_rawConfiguration);
  swift_getKeyPath();
  sub_1B1CE4298(&qword_1EB774DA8);
  v4 = self;
  sub_1B1D7B6DC();

  v6 = *(v3 + 32);
  v5 = *(v3 + 40);

  if (v5)
  {
    v7 = sub_1B1D7BE1C();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (ASCredentialRequestPaneHeaderConfiguration)initWithTitle:(id)a3 subtitle:(id)a4
{
  if (!a3)
  {
    v5 = 0;
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    v10 = 0;
    return ASCredentialRequestPaneHeaderConfiguration.init(__title:subtitle:)(v5, v7, v8, v10);
  }

  v5 = sub_1B1D7BE4C();
  v7 = v6;
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_1B1D7BE4C();
  v10 = v9;
  return ASCredentialRequestPaneHeaderConfiguration.init(__title:subtitle:)(v5, v7, v8, v10);
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1B1D7C1AC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = ASCredentialRequestPaneHeaderConfiguration.isEqual(_:)(v8);

  sub_1B1CE378C(v8);
  return v6;
}

- (int64_t)hash
{
  v3 = *(&self->super.isa + OBJC_IVAR___ASCredentialRequestPaneHeaderConfiguration_rawConfiguration);
  sub_1B1D7C5CC();
  v4 = self;
  sub_1B1CE1A50();
  v5 = sub_1B1D7C61C();

  return v5;
}

+ (id)noCredentialsErrorWithServiceName:(id)a3
{
  sub_1B1D7BE4C();
  v3 = _sSo42ASCredentialRequestPaneHeaderConfigurationC22AuthenticationServicesE18noCredentialsError15withServiceNameABSS_tFZ_0();

  return v3;
}

+ (id)signInFailedErrorWithSubtitle:(id)a3
{
  if (a3)
  {
    v3 = sub_1B1D7BE4C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = _sSo42ASCredentialRequestPaneHeaderConfigurationC22AuthenticationServicesE17signInFailedError12withSubtitleABSSSg_tFZ_0(v3, v5);

  return v6;
}

+ (id)passwordManagerHeaderWithTitle:(id)a3 subtitle:(id)a4
{
  v4 = a4;
  if (a3)
  {
    v5 = sub_1B1D7BE4C();
    v7 = v6;
    if (v4)
    {
LABEL_3:
      v4 = sub_1B1D7BE4C();
      v9 = v8;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  type metadata accessor for ASCredentialRequestPaneHeaderConfiguration();
  memset(v12, 0, sizeof(v12));
  v13 = 98;
  v10 = ASCredentialRequestPaneHeaderConfiguration.init(title:subtitle:icon:)(v5, v7, v4, v9, v12);

  return v10;
}

+ (id)credentialProviderHeaderWithApplicationBundleID:(id)a3 title:(id)a4 subtitle:(id)a5
{
  v7 = sub_1B1D7BE4C();
  v9 = v8;
  if (a4)
  {
    a4 = sub_1B1D7BE4C();
    v11 = v10;
    if (a5)
    {
LABEL_3:
      a5 = sub_1B1D7BE4C();
      v13 = v12;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  type metadata accessor for ASCredentialRequestPaneHeaderConfiguration();
  v16[0] = v7;
  v16[1] = v9;
  v16[2] = 0;
  v17 = 96;
  v14 = ASCredentialRequestPaneHeaderConfiguration.init(title:subtitle:icon:)(a4, v11, a5, v13, v16);

  return v14;
}

+ (id)securityKeyHeaderWithIcon:(int64_t)a3 title:(id)a4 subtitle:(id)a5
{
  v5 = a5;
  if (a4)
  {
    v7 = sub_1B1D7BE4C();
    v9 = v8;
    if (v5)
    {
LABEL_3:
      v10 = sub_1B1D7BE4C();
      v5 = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  v12 = _sSo42ASCredentialRequestPaneHeaderConfigurationC22AuthenticationServicesE011securityKeyD04with5title8subtitleABSo0ab8SecurityI13PreferredIconV_SSSgAJtFZ_0(a3, v7, v9, v10, v5);

  return v12;
}

@end