@interface AISAppleIDSignInConfiguration
+ (NSArray)defaultServiceTypes;
+ (NSString)defaultPrivacyIdentifier;
- (AIDAServiceContext)aidaServiceContext;
- (BOOL)allowSkip;
- (BOOL)canEditUsername;
- (BOOL)isProximitySetupEnabled;
- (BOOL)shouldShowSystemBackButton;
- (NSArray)privacyLinkIdentifiers;
- (NSArray)serviceTypes;
- (NSDate)ageMigrationPendingDOB;
- (NSString)username;
- (int64_t)signInFlowType;
- (unint64_t)userAgeRange;
- (void)setAgeMigrationPendingDOB:(id)b;
- (void)setAidaServiceContext:(id)context;
- (void)setAllowSkip:(BOOL)skip;
- (void)setCanEditUsername:(BOOL)username;
- (void)setIsProximitySetupEnabled:(BOOL)enabled;
- (void)setPrivacyLinkIdentifiers:(id)identifiers;
- (void)setServiceTypes:(id)types;
- (void)setShouldShowSystemBackButton:(BOOL)button;
- (void)setSignInFlowType:(int64_t)type;
- (void)setUserAgeRange:(unint64_t)range;
- (void)setUsername:(id)username;
@end

@implementation AISAppleIDSignInConfiguration

- (NSString)username
{
  v2 = (self + OBJC_IVAR___AISAppleIDSignInConfiguration_username);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

    v4 = sub_240A2BF1C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setUsername:(id)username
{
  if (username)
  {
    v4 = sub_240A2BF4C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___AISAppleIDSignInConfiguration_username);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (BOOL)canEditUsername
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_canEditUsername;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCanEditUsername:(BOOL)username
{
  v5 = OBJC_IVAR___AISAppleIDSignInConfiguration_canEditUsername;
  swift_beginAccess();
  *(self + v5) = username;
}

- (BOOL)allowSkip
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_allowSkip;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowSkip:(BOOL)skip
{
  v5 = OBJC_IVAR___AISAppleIDSignInConfiguration_allowSkip;
  swift_beginAccess();
  *(self + v5) = skip;
}

- (BOOL)shouldShowSystemBackButton
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_shouldShowSystemBackButton;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShouldShowSystemBackButton:(BOOL)button
{
  v5 = OBJC_IVAR___AISAppleIDSignInConfiguration_shouldShowSystemBackButton;
  swift_beginAccess();
  *(self + v5) = button;
}

- (NSArray)serviceTypes
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_serviceTypes;
  swift_beginAccess();
  v4 = *(self + v3);
  type metadata accessor for AIDAServiceType(0);

  v5 = sub_240A2C15C();

  return v5;
}

- (void)setServiceTypes:(id)types
{
  type metadata accessor for AIDAServiceType(0);
  v4 = sub_240A2C16C();
  v5 = OBJC_IVAR___AISAppleIDSignInConfiguration_serviceTypes;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (BOOL)isProximitySetupEnabled
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_isProximitySetupEnabled;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsProximitySetupEnabled:(BOOL)enabled
{
  v5 = OBJC_IVAR___AISAppleIDSignInConfiguration_isProximitySetupEnabled;
  swift_beginAccess();
  *(self + v5) = enabled;
}

- (NSArray)privacyLinkIdentifiers
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_privacyLinkIdentifiers;
  swift_beginAccess();
  v4 = *(self + v3);

  v5 = sub_240A2C15C();

  return v5;
}

- (void)setPrivacyLinkIdentifiers:(id)identifiers
{
  v4 = sub_240A2C16C();
  v5 = OBJC_IVAR___AISAppleIDSignInConfiguration_privacyLinkIdentifiers;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (AIDAServiceContext)aidaServiceContext
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_aidaServiceContext;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAidaServiceContext:(id)context
{
  v5 = OBJC_IVAR___AISAppleIDSignInConfiguration_aidaServiceContext;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = context;
  contextCopy = context;
}

- (int64_t)signInFlowType
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_signInFlowType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSignInFlowType:(int64_t)type
{
  v5 = OBJC_IVAR___AISAppleIDSignInConfiguration_signInFlowType;
  swift_beginAccess();
  *(self + v5) = type;
}

- (NSDate)ageMigrationPendingDOB
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v15 - v6;
  v8 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
  swift_beginAccess();
  sub_2409BF428(self + v8, v7);
  v9 = sub_240A2962C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_240A295EC();
    (*(v10 + 8))(v7, v9);
    v12 = v13;
  }

  return v12;
}

- (void)setAgeMigrationPendingDOB:(id)b
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v14 - v8;
  if (b)
  {
    sub_240A295FC();
    v10 = sub_240A2962C();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_240A2962C();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = OBJC_IVAR___AISAppleIDSignInConfiguration_ageMigrationPendingDOB;
  swift_beginAccess();
  selfCopy = self;
  sub_240963E78(v9, self + v12);
  swift_endAccess();
}

- (unint64_t)userAgeRange
{
  v3 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUserAgeRange:(unint64_t)range
{
  v5 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  *(self + v5) = range;
}

+ (NSArray)defaultServiceTypes
{
  if (qword_27E50AFB8 != -1)
  {
    swift_once();
  }

  type metadata accessor for AIDAServiceType(0);
  v2 = sub_240A2C15C();

  return v2;
}

+ (NSString)defaultPrivacyIdentifier
{
  v2 = sub_240A2BF1C();

  return v2;
}

@end