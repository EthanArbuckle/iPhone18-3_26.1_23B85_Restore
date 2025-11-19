@interface MNGuidanceARInfo
- (BOOL)isArrival;
- (NSString)mapsLongDescription;
- (NSString)mapsShortDescription;
- (id)_mapsDescriptionWithInstructionString:(id)a3;
@end

@implementation MNGuidanceARInfo

- (NSString)mapsLongDescription
{
  v3 = [(MNGuidanceARInfo *)self instructionString];
  v4 = [v3 description];
  v5 = [(MNGuidanceARInfo *)self _mapsDescriptionWithInstructionString:v4];

  return v5;
}

- (NSString)mapsShortDescription
{
  v3 = [(MNGuidanceARInfo *)self instructionString];
  v4 = [v3 stringWithOptions:0];
  v5 = [(MNGuidanceARInfo *)self _mapsDescriptionWithInstructionString:v4];

  return v5;
}

- (id)_mapsDescriptionWithInstructionString:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(MNGuidanceARInfo *)self stepIndex];
  v8 = [(MNGuidanceARInfo *)self eventType];
  if (v8 >= 3)
  {
    v9 = [NSString stringWithFormat:@"(unknown: %i)", v8];
  }

  else
  {
    v9 = off_101626E00[v8];
  }

  v10 = [(MNGuidanceARInfo *)self arrowLabel];
  v11 = [(MNGuidanceARInfo *)self maneuverRoadName];
  [(MNGuidanceARInfo *)self locationCoordinate];
  v13 = v12;
  [(MNGuidanceARInfo *)self locationCoordinate];
  v15 = v14;
  [(MNGuidanceARInfo *)self locationCoordinate];
  v17 = [NSString stringWithFormat:@"<%@: %p, step index: %lu, type: %@, instruction: %@, arrow label: %@, maneuver road name: %@, coordinate: {%f, %f, %f}>", v6, self, v7, v9, v4, v10, v11, v13, v15, v16];

  return v17;
}

- (BOOL)isArrival
{
  v2 = [(MNGuidanceARInfo *)self maneuverType];
  if (v2 - 41 <= 0x2F && ((1 << (v2 - 41)) & 0xFF8003FFFFFFLL) != 0)
  {
    return 0;
  }

  result = 1;
  if (v2 <= 0x23 && ((1 << v2) & 0x87FF218FFLL) != 0)
  {
    return 0;
  }

  return result;
}

@end