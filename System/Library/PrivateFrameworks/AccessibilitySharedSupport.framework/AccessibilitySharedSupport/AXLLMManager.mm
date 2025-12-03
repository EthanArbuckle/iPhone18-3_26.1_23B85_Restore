@interface AXLLMManager
- (_TtC26AccessibilitySharedSupport12AXLLMManager)init;
- (_TtC26AccessibilitySharedSupport12AXLLMManager)initWithClientName:(id)name model:(int64_t)model handleSensitiveData:(BOOL)data systemInstructions:(id)instructions locale:(id)locale;
@end

@implementation AXLLMManager

- (_TtC26AccessibilitySharedSupport12AXLLMManager)initWithClientName:(id)name model:(int64_t)model handleSensitiveData:(BOOL)data systemInstructions:(id)instructions locale:(id)locale
{
  v9 = sub_1C0F4F940();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C0F501B0();
  v15 = v14;
  v16 = sub_1C0F501B0();
  v18 = v17;
  sub_1C0F4F8F0();
  return AXLLMManager.init(clientName:model:handleSensitiveData:systemInstructions:locale:)(v13, v15, model, data, v16, v18, v12);
}

- (_TtC26AccessibilitySharedSupport12AXLLMManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end