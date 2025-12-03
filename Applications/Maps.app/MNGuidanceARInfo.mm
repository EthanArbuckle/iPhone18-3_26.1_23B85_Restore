@interface MNGuidanceARInfo
- (BOOL)isArrival;
- (NSString)mapsLongDescription;
- (NSString)mapsShortDescription;
- (id)_mapsDescriptionWithInstructionString:(id)string;
@end

@implementation MNGuidanceARInfo

- (NSString)mapsLongDescription
{
  instructionString = [(MNGuidanceARInfo *)self instructionString];
  v4 = [instructionString description];
  v5 = [(MNGuidanceARInfo *)self _mapsDescriptionWithInstructionString:v4];

  return v5;
}

- (NSString)mapsShortDescription
{
  instructionString = [(MNGuidanceARInfo *)self instructionString];
  v4 = [instructionString stringWithOptions:0];
  v5 = [(MNGuidanceARInfo *)self _mapsDescriptionWithInstructionString:v4];

  return v5;
}

- (id)_mapsDescriptionWithInstructionString:(id)string
{
  stringCopy = string;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  stepIndex = [(MNGuidanceARInfo *)self stepIndex];
  eventType = [(MNGuidanceARInfo *)self eventType];
  if (eventType >= 3)
  {
    v9 = [NSString stringWithFormat:@"(unknown: %i)", eventType];
  }

  else
  {
    v9 = off_101626E00[eventType];
  }

  arrowLabel = [(MNGuidanceARInfo *)self arrowLabel];
  maneuverRoadName = [(MNGuidanceARInfo *)self maneuverRoadName];
  [(MNGuidanceARInfo *)self locationCoordinate];
  v13 = v12;
  [(MNGuidanceARInfo *)self locationCoordinate];
  v15 = v14;
  [(MNGuidanceARInfo *)self locationCoordinate];
  v17 = [NSString stringWithFormat:@"<%@: %p, step index: %lu, type: %@, instruction: %@, arrow label: %@, maneuver road name: %@, coordinate: {%f, %f, %f}>", v6, self, stepIndex, v9, stringCopy, arrowLabel, maneuverRoadName, v13, v15, v16];

  return v17;
}

- (BOOL)isArrival
{
  maneuverType = [(MNGuidanceARInfo *)self maneuverType];
  if (maneuverType - 41 <= 0x2F && ((1 << (maneuverType - 41)) & 0xFF8003FFFFFFLL) != 0)
  {
    return 0;
  }

  result = 1;
  if (maneuverType <= 0x23 && ((1 << maneuverType) & 0x87FF218FFLL) != 0)
  {
    return 0;
  }

  return result;
}

@end