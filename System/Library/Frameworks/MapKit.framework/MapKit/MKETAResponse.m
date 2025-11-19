@interface MKETAResponse
- (MKETAResponse)initWithSource:(id)a3 destination:(id)a4 expectedTravelTime:(double)a5 distance:(double)a6 sortedETAs:(id)a7;
- (id)description;
- (unint64_t)_transportType:(int)a3;
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

- (unint64_t)_transportType:(int)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return qword_1A30F7528[a3];
  }
}

- (MKETAResponse)initWithSource:(id)a3 destination:(id)a4 expectedTravelTime:(double)a5 distance:(double)a6 sortedETAs:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v30.receiver = self;
  v30.super_class = MKETAResponse;
  v16 = [(MKETAResponse *)&v30 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_source, a3);
    objc_storeStrong(&v17->_destination, a4);
    v17->_expectedTravelTime = a5;
    v17->_distance = a6;
    objc_storeStrong(&v17->_sortedETAs, a7);
    v18 = [(NSArray *)v17->_sortedETAs firstObject];

    if (v18)
    {
      v19 = [(NSArray *)v17->_sortedETAs firstObject];
      v17->_transportType = -[MKETAResponse _transportType:](v17, "_transportType:", [v19 transportType]);
      [v19 expectedTimeOfDeparture];
      if (v20 > 0.0)
      {
        v21 = MEMORY[0x1E695DF00];
        [v19 expectedTimeOfDeparture];
        v22 = [v21 dateWithTimeIntervalSinceReferenceDate:?];
        expectedDepartureDate = v17->_expectedDepartureDate;
        v17->_expectedDepartureDate = v22;

        v24 = MEMORY[0x1E695DF00];
        [v19 expectedTimeOfDeparture];
        v26 = [v24 dateWithTimeIntervalSinceReferenceDate:v25 + a5];
        expectedArrivalDate = v17->_expectedArrivalDate;
        v17->_expectedArrivalDate = v26;
      }
    }

    v28 = v17;
  }

  return v17;
}

@end