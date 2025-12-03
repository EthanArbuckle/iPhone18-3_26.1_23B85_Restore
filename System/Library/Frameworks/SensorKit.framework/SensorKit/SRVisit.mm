@interface SRVisit
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSString)label;
- (SRVisit)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (SRVisit)initWithCoder:(id)coder;
- (SRVisit)initWithDistanceFromHome:(double)home arrive:(id)arrive depart:(id)depart category:(int64_t)category uuid:(id)uuid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRVisit

- (SRVisit)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder decodeDoubleForKey:@"distanceFromHome"];
  v7 = v6;
  v8 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"arrivalDateInterval"];
  v9 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"departureDateInterval"];
  v10 = [coder decodeIntegerForKey:@"locationCategory"];
  v11 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];

  return [(SRVisit *)self initWithDistanceFromHome:v8 arrive:v9 depart:v10 category:v11 uuid:v7];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [(SRVisit *)self distanceFromHome];
  [coder encodeDouble:@"distanceFromHome" forKey:?];
  [coder encodeObject:-[SRVisit arrivalDateInterval](self forKey:{"arrivalDateInterval"), @"arrivalDateInterval"}];
  [coder encodeObject:-[SRVisit departureDateInterval](self forKey:{"departureDateInterval"), @"departureDateInterval"}];
  [coder encodeInteger:-[SRVisit locationCategory](self forKey:{"locationCategory"), @"locationCategory"}];
  identifier = [(SRVisit *)self identifier];

  [coder encodeObject:identifier forKey:@"UUID"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SRVisit allocWithZone:zone];
  [(SRVisit *)self distanceFromHome];
  v6 = v5;
  arrivalDateInterval = [(SRVisit *)self arrivalDateInterval];
  departureDateInterval = [(SRVisit *)self departureDateInterval];
  locationCategory = [(SRVisit *)self locationCategory];
  identifier = [(SRVisit *)self identifier];

  return [(SRVisit *)v4 initWithDistanceFromHome:arrivalDateInterval arrive:departureDateInterval depart:locationCategory category:identifier uuid:v6];
}

- (SRVisit)initWithDistanceFromHome:(double)home arrive:(id)arrive depart:(id)depart category:(int64_t)category uuid:(id)uuid
{
  v15.receiver = self;
  v15.super_class = SRVisit;
  v12 = [(SRVisit *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_distanceFromHome = home;
    v12->_arrivalDateInterval = arrive;
    v13->_departureDateInterval = depart;
    v13->_locationCategory = category;
    v13->_identifier = uuid;
  }

  return v13;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SRVisit;
  [(SRVisit *)&v3 dealloc];
}

- (NSString)description
{
  v3 = objc_opt_new();
  [v3 setDateStyle:1];
  [v3 setTimeStyle:1];
  v4 = MEMORY[0x1E696AEC0];
  identifier = [(SRVisit *)self identifier];
  label = [(SRVisit *)self label];
  [(SRVisit *)self distanceFromHome];
  return [v4 stringWithFormat:@"loi %@(%@) distance from home %+.8f arrived %@ departed %@ ", identifier, label, v7, objc_msgSend(v3, "stringFromDateInterval:", -[SRVisit arrivalDateInterval](self, "arrivalDateInterval")), objc_msgSend(v3, "stringFromDateInterval:", -[SRVisit departureDateInterval](self, "departureDateInterval"))];
}

- (NSString)label
{
  locationCategory = [(SRVisit *)self locationCategory];
  if ((locationCategory - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return &off_1E83304C8[locationCategory - 1]->isa;
  }
}

- (SRVisit)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  if ([representation length])
  {
    v11.receiver = self;
    v11.super_class = SRVisit;
    v7 = [(SRVisit *)&v11 init];
    if (v7)
    {
      v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:representation error:0];
      if (v8)
      {
        v9 = v8;

        return v9;
      }
    }
  }

  else
  {

    return 0;
  }

  return v7;
}

- (id)sr_dictionaryRepresentation
{
  v12[7] = *MEMORY[0x1E69E9840];
  v11[0] = @"distanceFromHome";
  v12[0] = [MEMORY[0x1E696AD98] numberWithDouble:self->_distanceFromHome];
  v11[1] = @"arrivalStartTime";
  v3 = MEMORY[0x1E696AD98];
  [[(NSDateInterval *)self->_arrivalDateInterval startDate] srAbsoluteTime];
  v12[1] = [v3 numberWithDouble:?];
  v11[2] = @"arrivalDuration";
  v4 = MEMORY[0x1E696AD98];
  [(NSDateInterval *)self->_arrivalDateInterval duration];
  v12[2] = [v4 numberWithDouble:?];
  v11[3] = @"departureStartTime";
  v5 = MEMORY[0x1E696AD98];
  [[(NSDateInterval *)self->_departureDateInterval startDate] srAbsoluteTime];
  v12[3] = [v5 numberWithDouble:?];
  v11[4] = @"departureDuration";
  v6 = MEMORY[0x1E696AD98];
  [(NSDateInterval *)self->_departureDateInterval duration];
  v12[4] = [v6 numberWithDouble:?];
  v11[5] = @"locationCategory";
  v12[5] = [MEMORY[0x1E696AD98] numberWithInteger:self->_locationCategory];
  v11[6] = @"UUID";
  identifier = self->_identifier;
  if (identifier)
  {
    uUIDString = [(NSUUID *)identifier UUIDString];
  }

  else
  {
    uUIDString = &stru_1F48BB5C0;
  }

  v12[6] = uUIDString;
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:7];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v7) = 1;
    return v7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  distanceFromHome = self->_distanceFromHome;
  [equal distanceFromHome];
  if (distanceFromHome != v6)
  {
    goto LABEL_10;
  }

  v7 = -[NSDateInterval isEqualToDateInterval:](self->_arrivalDateInterval, "isEqualToDateInterval:", [equal arrivalDateInterval]);
  if (!v7)
  {
    return v7;
  }

  v7 = -[NSDateInterval isEqualToDateInterval:](self->_departureDateInterval, "isEqualToDateInterval:", [equal departureDateInterval]);
  if (!v7)
  {
    return v7;
  }

  locationCategory = self->_locationCategory;
  if (locationCategory != [equal locationCategory])
  {
LABEL_10:
    LOBYTE(v7) = 0;
    return v7;
  }

  identifier = self->_identifier;
  identifier = [equal identifier];

  LOBYTE(v7) = [(NSUUID *)identifier isEqual:identifier];
  return v7;
}

@end