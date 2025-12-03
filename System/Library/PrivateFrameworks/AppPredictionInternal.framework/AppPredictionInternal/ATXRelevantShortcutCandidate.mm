@interface ATXRelevantShortcutCandidate
- (ATXRelevantShortcutCandidate)init;
- (ATXRelevantShortcutCandidate)initWithWidgetDescriptor:(id)descriptor donationBundleIdentifier:(id)identifier intent:(id)intent relevantContexts:(id)contexts;
- (NSArray)relevantContexts;
- (NSString)description;
- (NSString)donationBundleIdentifier;
@end

@implementation ATXRelevantShortcutCandidate

- (NSString)donationBundleIdentifier
{
  v2 = *(self + OBJC_IVAR___ATXRelevantShortcutCandidate_donationBundleIdentifier);
  v3 = *(self + OBJC_IVAR___ATXRelevantShortcutCandidate_donationBundleIdentifier + 8);

  v4 = sub_2268363F8();

  return v4;
}

- (NSArray)relevantContexts
{
  v2 = *(self + OBJC_IVAR___ATXRelevantShortcutCandidate_relevantContexts);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1E40, qword_226873F88);
  v3 = sub_226836558();

  return v3;
}

- (ATXRelevantShortcutCandidate)initWithWidgetDescriptor:(id)descriptor donationBundleIdentifier:(id)identifier intent:(id)intent relevantContexts:(id)contexts
{
  v9 = sub_226836408();
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1E40, qword_226873F88);
  v12 = sub_226836568();
  *(self + OBJC_IVAR___ATXRelevantShortcutCandidate_widgetDescriptor) = descriptor;
  v13 = (self + OBJC_IVAR___ATXRelevantShortcutCandidate_donationBundleIdentifier);
  *v13 = v9;
  v13[1] = v11;
  *(self + OBJC_IVAR___ATXRelevantShortcutCandidate_intent) = intent;
  *(self + OBJC_IVAR___ATXRelevantShortcutCandidate_relevantContexts) = v12;
  v17.receiver = self;
  v17.super_class = type metadata accessor for RelevantShortcutCandidate();
  descriptorCopy = descriptor;
  intentCopy = intent;
  return [(ATXRelevantShortcutCandidate *)&v17 init];
}

- (NSString)description
{
  selfCopy = self;
  sub_2267B8B8C();

  v3 = sub_2268363F8();

  return v3;
}

- (ATXRelevantShortcutCandidate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end