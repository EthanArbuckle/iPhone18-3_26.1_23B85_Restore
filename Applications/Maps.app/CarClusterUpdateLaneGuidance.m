@interface CarClusterUpdateLaneGuidance
+ (id)_integersKeyed;
+ (id)laneGuidanceUpdateWithComposedGuidanceEvent:(id)a3 component:(id)a4;
- (NSUUID)uniqueID;
- (id)debugProperties;
- (void)setInstructionText:(id)a3;
@end

@implementation CarClusterUpdateLaneGuidance

- (id)debugProperties
{
  v2 = [(CarClusterUpdateLaneGuidance *)self hasBeenSent];
  v3 = @"NO";
  if (v2)
  {
    v3 = @"YES";
  }

  return [NSString stringWithFormat:@"hasBeenSent=%@", v3];
}

- (void)setInstructionText:(id)a3
{
  v4 = [a3 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  instructionText = self->_instructionText;
  self->_instructionText = v4;
}

- (NSUUID)uniqueID
{
  v2 = [(CarClusterUpdateLaneGuidance *)self composedGuidanceEvent];
  v3 = [v2 uniqueID];

  return v3;
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

+ (id)laneGuidanceUpdateWithComposedGuidanceEvent:(id)a3 component:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 lanes];
  v8 = [v7 count];

  if (v8)
  {
    v9 = objc_opt_new();
    [v9 setComponent:v6];
    [v9 setComposedGuidanceEvent:v5];
    v10 = [v5 lanes];
    v11 = [CarClusterUpdateLaneGuidanceLaneInfo laneGuidanceLaneInfoUpdateWithComposedRouteLaneInfos:v10];
    [v9 setLaneInfoList:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end