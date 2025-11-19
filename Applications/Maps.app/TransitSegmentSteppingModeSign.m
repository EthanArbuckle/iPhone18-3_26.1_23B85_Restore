@interface TransitSegmentSteppingModeSign
- (BOOL)hasValidInstructions;
- (GEOComposedString)majorFormattedInstruction;
- (GEOComposedString)minorFormattedInstruction;
- (GEOComposedString)tertiaryFormattedInstruction;
- (GEOComposedTransitTripRouteStep)boardClusteredStep;
- (TransitSegmentSteppingModeSign)initWithStep:(id)a3 stepIndexRange:(_NSRange)a4;
- (TransitSegmentSteppingModeSign)initWithWalkingSegment:(id)a3 stepIndexRange:(_NSRange)a4;
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
  v2 = [(MNTransitInstruction *)self->_instruction tertiaryInstructionStrings];
  v3 = [v2 firstObject];

  return v3;
}

- (GEOComposedString)minorFormattedInstruction
{
  v2 = [(MNTransitInstruction *)self->_instruction minorInstructionStrings];
  v3 = [v2 firstObject];

  return v3;
}

- (GEOComposedString)majorFormattedInstruction
{
  v2 = [(MNTransitInstruction *)self->_instruction majorInstructionStrings];
  v3 = [v2 firstObject];

  return v3;
}

- (BOOL)hasValidInstructions
{
  v2 = [(MNTransitInstruction *)self->_instruction majorInstructionStrings];
  v3 = [v2 count] != 0;

  return v3;
}

- (TransitSegmentSteppingModeSign)initWithWalkingSegment:(id)a3 stepIndexRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v33.receiver = self;
  v33.super_class = TransitSegmentSteppingModeSign;
  v9 = [(TransitSegmentSteppingModeSign *)&v33 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_segment, a3);
    v10->_stepIndexRange.location = location;
    v10->_stepIndexRange.length = length;
    v11 = [v8 transitInstructionInContext:1];
    instruction = v10->_instruction;
    v10->_instruction = v11;

    v13 = objc_alloc_init(NSMutableSet);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = [v8 steps];
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v29 + 1) + 8 * i);
          v20 = [v19 transitIncidents];
          v21 = [v20 count];

          if (v21)
          {
            v22 = [v19 transitIncidents];
            [v13 addObjectsFromArray:v22];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v16);
    }

    if ([v13 count])
    {
      v23 = [MergedTransitRoutingIncidentMessage alloc];
      v24 = [v13 allObjects];
      v25 = [(MergedTransitRoutingIncidentMessage *)v23 initWithTransitIncidents:v24];
      incidentMessage = v10->_incidentMessage;
      v10->_incidentMessage = v25;
    }

    else
    {
      v24 = v10->_incidentMessage;
      v10->_incidentMessage = 0;
    }

    v27 = v10;
  }

  return v10;
}

- (TransitSegmentSteppingModeSign)initWithStep:(id)a3 stepIndexRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v19.receiver = self;
  v19.super_class = TransitSegmentSteppingModeSign;
  v9 = [(TransitSegmentSteppingModeSign *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_step, a3);
    v10->_stepIndexRange.location = location;
    v10->_stepIndexRange.length = length;
    v11 = [v8 transitInstructionInContext:1];
    instruction = v10->_instruction;
    v10->_instruction = v11;

    v13 = [MergedTransitRoutingIncidentMessage alloc];
    v14 = [v8 transitIncidents];
    v15 = [(MergedTransitRoutingIncidentMessage *)v13 initWithTransitIncidents:v14];
    incidentMessage = v10->_incidentMessage;
    v10->_incidentMessage = v15;

    v17 = v10;
  }

  return v10;
}

@end