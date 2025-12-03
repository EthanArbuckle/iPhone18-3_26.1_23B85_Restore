@interface ManagedSettingsDiagnosticsToolDelegate
- (BOOL)parseGlobalOptions:(id)options;
- (_TtC29managedsettingsdiagnoticstool38ManagedSettingsDiagnosticsToolDelegate)init;
- (void)registerGlobalOptions;
@end

@implementation ManagedSettingsDiagnosticsToolDelegate

- (void)registerGlobalOptions
{
  v2 = objc_opt_self();

  [v2 registerGlobalFormatOption];
}

- (BOOL)parseGlobalOptions:(id)options
{
  optionsCopy = options;
  dictionaryWithOptionsAndValues = [optionsCopy dictionaryWithOptionsAndValues];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v5 handleFormatOptionInDictionary:isa];

  return 1;
}

- (_TtC29managedsettingsdiagnoticstool38ManagedSettingsDiagnosticsToolDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ManagedSettingsDiagnosticsToolDelegate();
  return [(ManagedSettingsDiagnosticsToolDelegate *)&v3 init];
}

@end