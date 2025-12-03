@interface BLSFrameSpecifiersRequestAction
- (BLSFrameSpecifiersRequestAction)initWithDateInterval:(id)interval previousPresentationDate:(id)date shouldReset:(BOOL)reset completion:(id)completion;
- (BOOL)shouldReset;
- (NSDate)previousPresentationDate;
- (NSDateInterval)dateInterval;
@end

@implementation BLSFrameSpecifiersRequestAction

- (BLSFrameSpecifiersRequestAction)initWithDateInterval:(id)interval previousPresentationDate:(id)date shouldReset:(BOOL)reset completion:(id)completion
{
  dateCopy = date;
  v10 = MEMORY[0x277CF0C80];
  completionCopy = completion;
  intervalCopy = interval;
  v13 = objc_alloc_init(v10);
  [v13 setObject:intervalCopy forSetting:1];

  if (dateCopy)
  {
    [v13 setObject:dateCopy forSetting:2];
  }

  [v13 setFlag:BSSettingFlagForBool() forSetting:3];
  v14 = [MEMORY[0x277CF0B60] responderWithHandler:completionCopy];

  [v14 setQueue:MEMORY[0x277D85CD0]];
  [v14 setTimeout:{dispatch_time(0, 10000000000)}];
  v17.receiver = self;
  v17.super_class = BLSFrameSpecifiersRequestAction;
  v15 = [(BLSFrameSpecifiersRequestAction *)&v17 initWithInfo:v13 responder:v14];

  return v15;
}

- (NSDateInterval)dateInterval
{
  info = [(BLSFrameSpecifiersRequestAction *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

- (NSDate)previousPresentationDate
{
  info = [(BLSFrameSpecifiersRequestAction *)self info];
  v3 = [info objectForSetting:2];

  return v3;
}

- (BOOL)shouldReset
{
  info = [(BLSFrameSpecifiersRequestAction *)self info];
  v3 = [info BOOLForSetting:3];

  return v3;
}

@end