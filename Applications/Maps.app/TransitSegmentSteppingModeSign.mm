@interface TransitSegmentSteppingModeSign
- (BOOL)hasValidInstructions;
- (GEOComposedString)majorFormattedInstruction;
- (GEOComposedString)minorFormattedInstruction;
- (GEOComposedString)tertiaryFormattedInstruction;
- (GEOComposedTransitTripRouteStep)boardClusteredStep;
- (TransitSegmentSteppingModeSign)initWithStep:(id)step stepIndexRange:(_NSRange)range;
- (TransitSegmentSteppingModeSign)initWithWalkingSegment:(id)segment stepIndexRange:(_NSRange)range;
- (_NSRange)stepIndexRange;
@end

@implementation TransitSegmentSteppingModeSign

- (_NSRange)stepIndexRange
{
  length = self->_stepIndexRange.length;
  location = self->_stepIndexRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (GEOComposedTransitTripRouteStep)boardClusteredStep
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v3 = self->_step;
  if (-[GEOComposedRouteStep maneuver](v3, "maneuver") != 3 || (-[GEOComposedRouteStep tripSegment](v3, "tripSegment"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 rideOptionsCount], v4, v5 <= 1))
  {

LABEL_5:
    v3 = 0;
  }

  return v3;
}

- (GEOComposedString)tertiaryFormattedInstruction
{
  tertiaryInstructionStrings = [(MNTransitInstruction *)self->_instruction tertiaryInstructionStrings];
  firstObject = [tertiaryInstructionStrings firstObject];

  return firstObject;
}

- (GEOComposedString)minorFormattedInstruction
{
  minorInstructionStrings = [(MNTransitInstruction *)self->_instruction minorInstructionStrings];
  firstObject = [minorInstructionStrings firstObject];

  return firstObject;
}

- (GEOComposedString)majorFormattedInstruction
{
  majorInstructionStrings = [(MNTransitInstruction *)self->_instruction majorInstructionStrings];
  firstObject = [majorInstructionStrings firstObject];

  return firstObject;
}

- (BOOL)hasValidInstructions
{
  majorInstructionStrings = [(MNTransitInstruction *)self->_instruction majorInstructionStrings];
  v3 = [majorInstructionStrings count] != 0;

  return v3;
}

- (TransitSegmentSteppingModeSign)initWithWalkingSegment:(id)segment stepIndexRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  segmentCopy = segment;
  v33.receiver = self;
  v33.super_class = TransitSegmentSteppingModeSign;
  v9 = [(TransitSegmentSteppingModeSign *)&v33 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_segment, segment);
    v10->_stepIndexRange.location = location;
    v10->_stepIndexRange.length = length;
    v11 = [segmentCopy transitInstructionInContext:1];
    instruction = v10->_instruction;
    v10->_instruction = v11;

    v13 = objc_alloc_init(NSMutableSet);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    steps = [segmentCopy steps];
    v15 = [steps countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(steps);
          }

          v19 = *(*(&v29 + 1) + 8 * i);
          transitIncidents = [v19 transitIncidents];
          v21 = [transitIncidents count];

          if (v21)
          {
            transitIncidents2 = [v19 transitIncidents];
            [v13 addObjectsFromArray:transitIncidents2];
          }
        }

        v16 = [steps countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v16);
    }

    if ([v13 count])
    {
      v23 = [MergedTransitRoutingIncidentMessage alloc];
      allObjects = [v13 allObjects];
      v25 = [(MergedTransitRoutingIncidentMessage *)v23 initWithTransitIncidents:allObjects];
      incidentMessage = v10->_incidentMessage;
      v10->_incidentMessage = v25;
    }

    else
    {
      allObjects = v10->_incidentMessage;
      v10->_incidentMessage = 0;
    }

    v27 = v10;
  }

  return v10;
}

- (TransitSegmentSteppingModeSign)initWithStep:(id)step stepIndexRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  stepCopy = step;
  v19.receiver = self;
  v19.super_class = TransitSegmentSteppingModeSign;
  v9 = [(TransitSegmentSteppingModeSign *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_step, step);
    v10->_stepIndexRange.location = location;
    v10->_stepIndexRange.length = length;
    v11 = [stepCopy transitInstructionInContext:1];
    instruction = v10->_instruction;
    v10->_instruction = v11;

    v13 = [MergedTransitRoutingIncidentMessage alloc];
    transitIncidents = [stepCopy transitIncidents];
    v15 = [(MergedTransitRoutingIncidentMessage *)v13 initWithTransitIncidents:transitIncidents];
    incidentMessage = v10->_incidentMessage;
    v10->_incidentMessage = v15;

    v17 = v10;
  }

  return v10;
}

@end