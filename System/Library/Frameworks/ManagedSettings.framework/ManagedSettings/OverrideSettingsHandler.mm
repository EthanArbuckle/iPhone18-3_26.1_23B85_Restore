@interface OverrideSettingsHandler
- (_TtC15ManagedSettings23OverrideSettingsHandler)init;
- (void)beginRequestWithExtensionContext:(id)context;
@end

@implementation OverrideSettingsHandler

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_20E433EAC(contextCopy);
}

- (_TtC15ManagedSettings23OverrideSettingsHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for OverrideSettingsHandler();
  return [(OverrideSettingsHandler *)&v3 init];
}

@end