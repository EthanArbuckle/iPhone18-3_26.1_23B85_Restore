@interface BLSBacklightSceneSettingsDiffInspector
- ($CC87CEEC7FB96912C0F1D2377F1A8E9C)inspectDiff:(id)a3;
- (BLSBacklightSceneSettingsDiffInspector)init;
@end

@implementation BLSBacklightSceneSettingsDiffInspector

- (BLSBacklightSceneSettingsDiffInspector)init
{
  v5.receiver = self;
  v5.super_class = BLSBacklightSceneSettingsDiffInspector;
  v2 = [(FBSSceneSettingsDiffInspector *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FBSSettingsDiffInspector *)v2 observeOtherSetting:200000 withBlock:&__block_literal_global_16];
    [(FBSSettingsDiffInspector *)v3 observeOtherSetting:200001 withBlock:&__block_literal_global_2];
    [(FBSSettingsDiffInspector *)v3 observeOtherSetting:200002 withBlock:&__block_literal_global_4_0];
    [(FBSSettingsDiffInspector *)v3 observeOtherSetting:200004 withBlock:&__block_literal_global_6];
  }

  return v3;
}

- ($CC87CEEC7FB96912C0F1D2377F1A8E9C)inspectDiff:(id)a3
{
  v4 = 0;
  [(FBSSettingsDiffInspector *)self inspectDiff:a3 withContext:&v4];
  return v4;
}

@end