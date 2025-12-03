@interface ASPasswordAuthenticationPaneViewControllerConfiguration
- (ASPasswordAuthenticationPaneViewControllerConfiguration)init;
- (ASPasswordAuthenticationPaneViewControllerConfiguration)initWithManualPasswordEntryForCredentialProviderWithApplicationBundleID:(id)d site:(id)site serviceName:(id)name serviceType:(unint64_t)type proxiedOriginDeviceName:(id)deviceName;
- (ASPasswordAuthenticationPaneViewControllerConfiguration)initWithManualPasswordEntryForCredentialProviderWithProxiedIconData:(id)data proxiedIconScale:(double)scale site:(id)site serviceName:(id)name serviceType:(unint64_t)type proxiedOriginDeviceName:(id)deviceName;
- (ASPasswordAuthenticationPaneViewControllerConfiguration)initWithManualPasswordEntryForPasswordManagerWithSite:(id)site serviceName:(id)name serviceType:(unint64_t)type proxiedOriginDeviceName:(id)deviceName;
- (ASPasswordAuthenticationPaneViewControllerConfiguration)initWithPersona:(unint64_t)persona presentationContext:(id)context;
- (BOOL)isEqual:(id)equal;
- (NSString)passwordCredentialSite;
- (id)headerConfiguration;
- (int64_t)hash;
@end

@implementation ASPasswordAuthenticationPaneViewControllerConfiguration

- (ASPasswordAuthenticationPaneViewControllerConfiguration)initWithManualPasswordEntryForPasswordManagerWithSite:(id)site serviceName:(id)name serviceType:(unint64_t)type proxiedOriginDeviceName:(id)deviceName
{
  v9 = sub_1B1D7BE4C();
  v11 = v10;
  v12 = sub_1B1D7BE4C();
  v14 = v13;
  if (deviceName)
  {
    v15 = sub_1B1D7BE4C();
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  *(&self->super.isa + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_persona) = 3;
  v17 = (&self->super.isa + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_overrideTitle);
  *v17 = 0;
  v17[1] = 0;
  v18 = self + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  *v18 = 0;
  v18[24] = 98;
  v22 = 1;
  v19 = self + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields;
  *v19 = v12;
  *(v19 + 1) = v14;
  *(v19 + 2) = type;
  *(v19 + 3) = v9;
  *(v19 + 4) = v11;
  *(v19 + 5) = v15;
  *(v19 + 6) = v16;
  v19[56] = 1;
  v21.receiver = self;
  v21.super_class = ASPasswordAuthenticationPaneViewControllerConfiguration;
  return [(ASPasswordAuthenticationPaneViewControllerConfiguration *)&v21 init];
}

- (ASPasswordAuthenticationPaneViewControllerConfiguration)initWithManualPasswordEntryForCredentialProviderWithApplicationBundleID:(id)d site:(id)site serviceName:(id)name serviceType:(unint64_t)type proxiedOriginDeviceName:(id)deviceName
{
  v10 = sub_1B1D7BE4C();
  v12 = v11;
  v13 = sub_1B1D7BE4C();
  v15 = v14;
  v16 = sub_1B1D7BE4C();
  v18 = v17;
  if (deviceName)
  {
    v19 = sub_1B1D7BE4C();
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  *(&self->super.isa + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_persona) = 3;
  v21 = (&self->super.isa + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_overrideTitle);
  *v21 = 0;
  v21[1] = 0;
  v22 = self + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon;
  *v22 = v10;
  *(v22 + 1) = v12;
  *(v22 + 2) = 0;
  v22[24] = 96;
  v26 = 1;
  v23 = self + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields;
  *v23 = v16;
  *(v23 + 1) = v18;
  *(v23 + 2) = type;
  *(v23 + 3) = v13;
  *(v23 + 4) = v15;
  *(v23 + 5) = v19;
  *(v23 + 6) = v20;
  v23[56] = 1;
  v25.receiver = self;
  v25.super_class = ASPasswordAuthenticationPaneViewControllerConfiguration;
  return [(ASPasswordAuthenticationPaneViewControllerConfiguration *)&v25 init];
}

- (ASPasswordAuthenticationPaneViewControllerConfiguration)initWithManualPasswordEntryForCredentialProviderWithProxiedIconData:(id)data proxiedIconScale:(double)scale site:(id)site serviceName:(id)name serviceType:(unint64_t)type proxiedOriginDeviceName:(id)deviceName
{
  dataCopy = data;
  siteCopy = site;
  nameCopy = name;
  deviceNameCopy = deviceName;
  v17 = sub_1B1D7B4EC();
  v19 = v18;

  v20 = sub_1B1D7BE4C();
  v22 = v21;

  v23 = sub_1B1D7BE4C();
  v25 = v24;

  if (deviceNameCopy)
  {
    v26 = sub_1B1D7BE4C();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  *(&self->super.isa + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_persona) = 3;
  v29 = (&self->super.isa + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_overrideTitle);
  *v29 = 0;
  v29[1] = 0;
  v30 = self + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon;
  *v30 = v17;
  *(v30 + 1) = v19;
  *(v30 + 2) = scale;
  v30[24] = 97;
  v35 = 1;
  v31 = self + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields;
  *v31 = v23;
  *(v31 + 1) = v25;
  *(v31 + 2) = type;
  *(v31 + 3) = v20;
  *(v31 + 4) = v22;
  *(v31 + 5) = v26;
  *(v31 + 6) = v28;
  v31[56] = 1;
  v34.receiver = self;
  v34.super_class = ASPasswordAuthenticationPaneViewControllerConfiguration;
  return [(ASPasswordAuthenticationPaneViewControllerConfiguration *)&v34 init];
}

- (ASPasswordAuthenticationPaneViewControllerConfiguration)initWithPersona:(unint64_t)persona presentationContext:(id)context
{
  contextCopy = context;
  v6 = sub_1B1CED06C(persona, contextCopy);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B1D7C1AC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = ASPasswordAuthenticationPaneViewControllerConfiguration.isEqual(_:)(v8);

  sub_1B1CDEC18(v8, &qword_1EB774DB0, &qword_1B1D85D40);
  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = ASPasswordAuthenticationPaneViewControllerConfiguration.hash.getter();

  return v3;
}

- (NSString)passwordCredentialSite
{
  v4 = self->icon[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields + 24];
  if (v4 == 255 || (v4 & 1) == 0)
  {
    v6 = 0;
  }

  else
  {
    v3 = (self + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_contentFields);
    sub_1B1CED2E8(*v3, v3[1], v3[2], v3[3], v3[4], v3[5], v3[6], 1);

    v5 = sub_1B1D7BE1C();

    v6 = v5;
  }

  return v6;
}

- (id)headerConfiguration
{
  type metadata accessor for ASCredentialRequestPaneHeaderConfiguration();
  selfCopy = self;
  v4 = sub_1B1CEC55C();
  v6 = v5;
  v7 = sub_1B1CEC978();
  v9 = v8;
  v10 = *(&selfCopy->persona + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon);
  v11 = *&selfCopy->overrideTitle[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon];
  v12 = selfCopy->overrideTitle[OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon + 8];
  v15[0] = *(&selfCopy->super.isa + OBJC_IVAR___ASPasswordAuthenticationPaneViewControllerConfiguration_icon);
  v15[1] = v10;
  v15[2] = v11;
  v16 = v12;
  sub_1B1CE2000(v15[0], v10, v11, v12);
  v13 = ASCredentialRequestPaneHeaderConfiguration.init(title:subtitle:icon:)(v4, v6, v7, v9, v15);

  return v13;
}

- (ASPasswordAuthenticationPaneViewControllerConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end