@interface ARUICountdownPreAnimation
- (id)identifier;
- (void)applyToCountdownView:(id)view completion:(id)completion;
@end

@implementation ARUICountdownPreAnimation

- (id)identifier
{
  v2 = objc_opt_class();

  return [v2 identifier];
}

- (void)applyToCountdownView:(id)view completion:(id)completion
{
  completionCopy = completion;
  viewCopy = view;
  ringGroup = [viewCopy ringGroup];
  [ringGroup setEmptyOpacity:0.0];
  [ringGroup setPercentage:0 ofRingAtIndex:0.0];
  [ringGroup setTrackOpacity:0.0];
  LODWORD(v7) = 1.0;
  [ringGroup setOpacity:v7];
  backingTrackRingGroup = [viewCopy backingTrackRingGroup];

  if (backingTrackRingGroup)
  {
    [ringGroup setZRotation:0.0];
    [ringGroup groupDiameter];
    v11 = v10 * 0.5 + -3.0;
    *&v11 = v11;
    [backingTrackRingGroup setThickness:v11];
    LODWORD(v12) = 1.0;
    [backingTrackRingGroup setOpacity:v12];
    LODWORD(v13) = 1058306785;
    [backingTrackRingGroup setEmptyOpacity:v13];
    [backingTrackRingGroup setTrackOpacity:0.0];
  }

  else
  {
    LODWORD(v9) = 1078530011;
    [ringGroup setZRotation:v9];
  }

  if (completionCopy)
  {
    completionCopy[2]();
  }
}

@end