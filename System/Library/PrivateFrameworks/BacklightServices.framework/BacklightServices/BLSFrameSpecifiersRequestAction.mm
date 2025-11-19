@interface BLSFrameSpecifiersRequestAction
- (BLSFrameSpecifiersRequestAction)initWithDateInterval:(id)a3 previousPresentationDate:(id)a4 shouldReset:(BOOL)a5 completion:(id)a6;
- (BOOL)shouldReset;
- (NSDate)previousPresentationDate;
- (NSDateInterval)dateInterval;
@end

@implementation BLSFrameSpecifiersRequestAction

- (BLSFrameSpecifiersRequestAction)initWithDateInterval:(id)a3 previousPresentationDate:(id)a4 shouldReset:(BOOL)a5 completion:(id)a6
{
  v9 = a4;
  v10 = MEMORY[0x277CF0C80];
  v11 = a6;
  v12 = a3;
  v13 = objc_alloc_init(v10);
  [v13 setObject:v12 forSetting:1];

  if (v9)
  {
    [v13 setObject:v9 forSetting:2];
  }

  [v13 setFlag:BSSettingFlagForBool() forSetting:3];
  v14 = [MEMORY[0x277CF0B60] responderWithHandler:v11];

  [v14 setQueue:MEMORY[0x277D85CD0]];
  [v14 setTimeout:{dispatch_time(0, 10000000000)}];
  v17.receiver = self;
  v17.super_class = BLSFrameSpecifiersRequestAction;
  v15 = [(BLSFrameSpecifiersRequestAction *)&v17 initWithInfo:v13 responder:v14];

  return v15;
}

- (NSDateInterval)dateInterval
{
  v2 = [(BLSFrameSpecifiersRequestAction *)self info];
  v3 = [v2 objectForSetting:1];

  return v3;
}

- (NSDate)previousPresentationDate
{
  v2 = [(BLSFrameSpecifiersRequestAction *)self info];
  v3 = [v2 objectForSetting:2];

  return v3;
}

- (BOOL)shouldReset
{
  v2 = [(BLSFrameSpecifiersRequestAction *)self info];
  v3 = [v2 BOOLForSetting:3];

  return v3;
}

@end