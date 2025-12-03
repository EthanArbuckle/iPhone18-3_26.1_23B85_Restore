@interface MKETAResponse
- (MKETAResponse)initWithSource:(id)source destination:(id)destination expectedTravelTime:(double)time distance:(double)distance sortedETAs:(id)as;
- (id)description;
- (unint64_t)_transportType:(int)type;
@end

@implementation MKETAResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = MKETAResponse;
  v4 = [(MKETAResponse *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ source: %@ destination: %@ etas: %@", v4, self->_source, self->_destination, self->_sortedETAs];

  return v5;
}

- (unint64_t)_transportType:(int)type
{
  if (type > 2)
  {
    return 0;
  }

  else
  {
    return qword_1A30F7528[type];
  }
}

- (MKETAResponse)initWithSource:(id)source destination:(id)destination expectedTravelTime:(double)time distance:(double)distance sortedETAs:(id)as
{
  sourceCopy = source;
  destinationCopy = destination;
  asCopy = as;
  v30.receiver = self;
  v30.super_class = MKETAResponse;
  v16 = [(MKETAResponse *)&v30 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_source, source);
    objc_storeStrong(&v17->_destination, destination);
    v17->_expectedTravelTime = time;
    v17->_distance = distance;
    objc_storeStrong(&v17->_sortedETAs, as);
    firstObject = [(NSArray *)v17->_sortedETAs firstObject];

    if (firstObject)
    {
      firstObject2 = [(NSArray *)v17->_sortedETAs firstObject];
      v17->_transportType = -[MKETAResponse _transportType:](v17, "_transportType:", [firstObject2 transportType]);
      [firstObject2 expectedTimeOfDeparture];
      if (v20 > 0.0)
      {
        v21 = MEMORY[0x1E695DF00];
        [firstObject2 expectedTimeOfDeparture];
        v22 = [v21 dateWithTimeIntervalSinceReferenceDate:?];
        expectedDepartureDate = v17->_expectedDepartureDate;
        v17->_expectedDepartureDate = v22;

        v24 = MEMORY[0x1E695DF00];
        [firstObject2 expectedTimeOfDeparture];
        time = [v24 dateWithTimeIntervalSinceReferenceDate:v25 + time];
        expectedArrivalDate = v17->_expectedArrivalDate;
        v17->_expectedArrivalDate = time;
      }
    }

    v28 = v17;
  }

  return v17;
}

@end