@interface BLSHBacklightSceneClientSettingsDiffInspector
- ($162FAC071EAEBA15A6F8D573D0754DF6)inspectDiff:(id)a3;
- (BLSHBacklightSceneClientSettingsDiffInspector)init;
@end

@implementation BLSHBacklightSceneClientSettingsDiffInspector

- (BLSHBacklightSceneClientSettingsDiffInspector)init
{
  v5.receiver = self;
  v5.super_class = BLSHBacklightSceneClientSettingsDiffInspector;
  v2 = [(FBSSceneClientSettingsDiffInspector *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(FBSSettingsDiffInspector *)v2 observeOtherSetting:200000 withBlock:&__block_literal_global_19];
    [(FBSSettingsDiffInspector *)v3 observeOtherSetting:200001 withBlock:&__block_literal_global_2];
    [(FBSSettingsDiffInspector *)v3 observeOtherSetting:200002 withBlock:&__block_literal_global_4];
  }

  return v3;
}

- ($162FAC071EAEBA15A6F8D573D0754DF6)inspectDiff:(id)a3
{
  v4 = 0;
  [(FBSSettingsDiffInspector *)self inspectDiff:a3 withContext:&v4];
  return v4;
}

@end