@interface ATXAnchorModelModeDetails
- (ATXAnchorModelModeDetails)initWithModeUUID:(id)a3 isStart:(BOOL)a4;
@end

@implementation ATXAnchorModelModeDetails

- (ATXAnchorModelModeDetails)initWithModeUUID:(id)a3 isStart:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = ATXAnchorModelModeDetails;
  v7 = [(ATXAnchorModelModeDetails *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    modeUUID = v7->_modeUUID;
    v7->_modeUUID = v8;

    v7->_isStart = a4;
  }

  return v7;
}

@end