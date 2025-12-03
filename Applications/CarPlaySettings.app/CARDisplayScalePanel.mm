@interface CARDisplayScalePanel
+ (BOOL)switchValue:(id)value;
+ (int64_t)scaleMode:(id)mode;
+ (void)actionWithPanelController:(id)controller switchValueObject:(id)object;
- (CARDisplayScalePanel)init;
@end

@implementation CARDisplayScalePanel

+ (void)actionWithPanelController:(id)controller switchValueObject:(id)object
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  _s15CarPlaySettings17DisplayScalePanelC6action15panelController17switchValueObjectySo011CARSettingsfI0_pSg_yXlSgtFZ_0(controller, object);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

+ (int64_t)scaleMode:(id)mode
{
  swift_unknownObjectRetain();
  v4 = _s15CarPlaySettings17DisplayScalePanelC9scaleModeySo010CARDisplayeH0VSo011CARSettingsF10Controller_pFZ_0(mode);
  swift_unknownObjectRelease();
  return v4;
}

+ (BOOL)switchValue:(id)value
{
  if (!value)
  {
    return 0;
  }

  v3 = swift_unknownObjectRetain();
  v4 = _s15CarPlaySettings17DisplayScalePanelC9scaleModeySo010CARDisplayeH0VSo011CARSettingsF10Controller_pFZ_0(v3);
  if (v4 == 2)
  {
    v5 = 1;
LABEL_7:
    swift_unknownObjectRelease();
    return v5;
  }

  if (v4 == 1)
  {
    v5 = 0;
    goto LABEL_7;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CARDisplayScalePanel)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DisplayScalePanel();
  return [(CARDisplayScalePanel *)&v3 init];
}

@end