@interface AVSStore
+ (NSArray)shortcuts;
+ (NSDictionary)shortcutsNamesDictionary;
- (AVSStore)init;
- (void)deleteShortcutWithIdentifier:(id)a3;
@end

@implementation AVSStore

+ (NSDictionary)shortcutsNamesDictionary
{
  _sSo8AVSStoreC22AdaptiveVoiceShortcutsE24shortcutsNamesDictionarySDyS2SGvgZ_0();
  v2 = sub_23E82EA2C();

  return v2;
}

+ (NSArray)shortcuts
{
  v2 = _sSo8AVSStoreC22AdaptiveVoiceShortcutsE9shortcutsSaySo0bC17ShortcutObjcClassCGvgZ_0();
  type metadata accessor for AdaptiveVoiceShortcutObjcClass(v2);
  v3 = sub_23E82EAFC();

  return v3;
}

- (void)deleteShortcutWithIdentifier:(id)a3
{
  v4 = sub_23E82EA6C();
  v6 = v5;
  v7 = self;
  _sSo8AVSStoreC22AdaptiveVoiceShortcutsE14deleteShortcut14withIdentifierySS_tF_0(v4, v6);
}

- (AVSStore)init
{
  v3.receiver = self;
  v3.super_class = AVSStore;
  return [(AVSStore *)&v3 init];
}

@end