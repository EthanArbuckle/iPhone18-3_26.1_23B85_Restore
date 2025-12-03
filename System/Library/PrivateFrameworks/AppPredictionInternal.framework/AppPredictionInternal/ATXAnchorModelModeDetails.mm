@interface ATXAnchorModelModeDetails
- (ATXAnchorModelModeDetails)initWithModeUUID:(id)d isStart:(BOOL)start;
@end

@implementation ATXAnchorModelModeDetails

- (ATXAnchorModelModeDetails)initWithModeUUID:(id)d isStart:(BOOL)start
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = ATXAnchorModelModeDetails;
  v7 = [(ATXAnchorModelModeDetails *)&v11 init];
  if (v7)
  {
    v8 = [dCopy copy];
    modeUUID = v7->_modeUUID;
    v7->_modeUUID = v8;

    v7->_isStart = start;
  }

  return v7;
}

@end