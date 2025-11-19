@interface BLSBacklightSceneUpdateAction
- (BLSBacklightChangeEvent)event;
- (BLSBacklightSceneUpdateAction)initWithBacklightChangeEvent:(id)a3 animated:(BOOL)a4 touchTargetable:(BOOL)a5 isUpdateToDateSpecifier:(BOOL)a6 completion:(id)a7;
- (BOOL)isAnimated;
- (BOOL)isTouchTargetable;
- (BOOL)isUpdateToDateSpecifier;
@end

@implementation BLSBacklightSceneUpdateAction

- (BOOL)isAnimated
{
  v2 = [(BLSBacklightSceneUpdateAction *)self info];
  v3 = [v2 BOOLForSetting:1];

  return v3;
}

- (BLSBacklightChangeEvent)event
{
  v2 = [(BLSBacklightSceneUpdateAction *)self info];
  v3 = [v2 objectForSetting:0];

  return v3;
}

- (BOOL)isTouchTargetable
{
  v2 = [(BLSBacklightSceneUpdateAction *)self info];
  v3 = [v2 BOOLForSetting:2];

  return v3;
}

- (BOOL)isUpdateToDateSpecifier
{
  v2 = [(BLSBacklightSceneUpdateAction *)self info];
  v3 = [v2 BOOLForSetting:3];

  return v3;
}

- (BLSBacklightSceneUpdateAction)initWithBacklightChangeEvent:(id)a3 animated:(BOOL)a4 touchTargetable:(BOOL)a5 isUpdateToDateSpecifier:(BOOL)a6 completion:(id)a7
{
  v9 = a3;
  v10 = MEMORY[0x277CF0C80];
  v11 = a7;
  v12 = objc_alloc_init(v10);
  v13 = v12;
  if (v9)
  {
    [v12 setObject:v9 forSetting:0];
  }

  [v13 setFlag:BSSettingFlagForBool() forSetting:1];
  [v13 setFlag:BSSettingFlagForBool() forSetting:2];
  [v13 setFlag:BSSettingFlagForBool() forSetting:3];
  v14 = [MEMORY[0x277CF0B60] responderWithHandler:v11];

  [v14 setQueue:MEMORY[0x277D85CD0]];
  [v14 setTimeout:{dispatch_time(0, 1000000000)}];
  v17.receiver = self;
  v17.super_class = BLSBacklightSceneUpdateAction;
  v15 = [(BLSBacklightSceneUpdateAction *)&v17 initWithInfo:v13 responder:v14];

  return v15;
}

@end