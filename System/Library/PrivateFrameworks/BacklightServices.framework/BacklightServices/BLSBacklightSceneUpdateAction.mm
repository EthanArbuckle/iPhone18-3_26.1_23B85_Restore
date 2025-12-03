@interface BLSBacklightSceneUpdateAction
- (BLSBacklightChangeEvent)event;
- (BLSBacklightSceneUpdateAction)initWithBacklightChangeEvent:(id)event animated:(BOOL)animated touchTargetable:(BOOL)targetable isUpdateToDateSpecifier:(BOOL)specifier completion:(id)completion;
- (BOOL)isAnimated;
- (BOOL)isTouchTargetable;
- (BOOL)isUpdateToDateSpecifier;
@end

@implementation BLSBacklightSceneUpdateAction

- (BOOL)isAnimated
{
  info = [(BLSBacklightSceneUpdateAction *)self info];
  v3 = [info BOOLForSetting:1];

  return v3;
}

- (BLSBacklightChangeEvent)event
{
  info = [(BLSBacklightSceneUpdateAction *)self info];
  v3 = [info objectForSetting:0];

  return v3;
}

- (BOOL)isTouchTargetable
{
  info = [(BLSBacklightSceneUpdateAction *)self info];
  v3 = [info BOOLForSetting:2];

  return v3;
}

- (BOOL)isUpdateToDateSpecifier
{
  info = [(BLSBacklightSceneUpdateAction *)self info];
  v3 = [info BOOLForSetting:3];

  return v3;
}

- (BLSBacklightSceneUpdateAction)initWithBacklightChangeEvent:(id)event animated:(BOOL)animated touchTargetable:(BOOL)targetable isUpdateToDateSpecifier:(BOOL)specifier completion:(id)completion
{
  eventCopy = event;
  v10 = MEMORY[0x277CF0C80];
  completionCopy = completion;
  v12 = objc_alloc_init(v10);
  v13 = v12;
  if (eventCopy)
  {
    [v12 setObject:eventCopy forSetting:0];
  }

  [v13 setFlag:BSSettingFlagForBool() forSetting:1];
  [v13 setFlag:BSSettingFlagForBool() forSetting:2];
  [v13 setFlag:BSSettingFlagForBool() forSetting:3];
  v14 = [MEMORY[0x277CF0B60] responderWithHandler:completionCopy];

  [v14 setQueue:MEMORY[0x277D85CD0]];
  [v14 setTimeout:{dispatch_time(0, 1000000000)}];
  v17.receiver = self;
  v17.super_class = BLSBacklightSceneUpdateAction;
  v15 = [(BLSBacklightSceneUpdateAction *)&v17 initWithInfo:v13 responder:v14];

  return v15;
}

@end