@interface CarClusterUpdateLaneGuidance
+ (id)_integersKeyed;
+ (id)laneGuidanceUpdateWithComposedGuidanceEvent:(id)event component:(id)component;
- (NSUUID)uniqueID;
- (id)debugProperties;
- (void)setInstructionText:(id)text;
@end

@implementation CarClusterUpdateLaneGuidance

- (id)debugProperties
{
  hasBeenSent = [(CarClusterUpdateLaneGuidance *)self hasBeenSent];
  v3 = @"NO";
  if (hasBeenSent)
  {
    v3 = @"YES";
  }

  return [NSString stringWithFormat:@"hasBeenSent=%@", v3];
}

- (void)setInstructionText:(id)text
{
  v4 = [text stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  instructionText = self->_instructionText;
  self->_instructionText = v4;
}

- (NSUUID)uniqueID
{
  composedGuidanceEvent = [(CarClusterUpdateLaneGuidance *)self composedGuidanceEvent];
  uniqueID = [composedGuidanceEvent uniqueID];

  return uniqueID;
}

+ (id)_integersKeyed
{
  if (qword_10195F3B8 != -1)
  {
    dispatch_once(&qword_10195F3B8, &stru_101656758);
  }

  v3 = qword_10195F3C0;

  return v3;
}

+ (id)laneGuidanceUpdateWithComposedGuidanceEvent:(id)event component:(id)component
{
  eventCopy = event;
  componentCopy = component;
  lanes = [eventCopy lanes];
  v8 = [lanes count];

  if (v8)
  {
    v9 = objc_opt_new();
    [v9 setComponent:componentCopy];
    [v9 setComposedGuidanceEvent:eventCopy];
    lanes2 = [eventCopy lanes];
    v11 = [CarClusterUpdateLaneGuidanceLaneInfo laneGuidanceLaneInfoUpdateWithComposedRouteLaneInfos:lanes2];
    [v9 setLaneInfoList:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end