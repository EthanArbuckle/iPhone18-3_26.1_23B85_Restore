@interface SRVisit
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSString)label;
- (SRVisit)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (SRVisit)initWithCoder:(id)a3;
- (SRVisit)initWithDistanceFromHome:(double)a3 arrive:(id)a4 depart:(id)a5 category:(int64_t)a6 uuid:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRVisit

- (SRVisit)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 decodeDoubleForKey:@"distanceFromHome"];
  v7 = v6;
  v8 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"arrivalDateInterval"];
  v9 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"departureDateInterval"];
  v10 = [a3 decodeIntegerForKey:@"locationCategory"];
  v11 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];

  return [(SRVisit *)self initWithDistanceFromHome:v8 arrive:v9 depart:v10 category:v11 uuid:v7];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [(SRVisit *)self distanceFromHome];
  [a3 encodeDouble:@"distanceFromHome" forKey:?];
  [a3 encodeObject:-[SRVisit arrivalDateInterval](self forKey:{"arrivalDateInterval"), @"arrivalDateInterval"}];
  [a3 encodeObject:-[SRVisit departureDateInterval](self forKey:{"departureDateInterval"), @"departureDateInterval"}];
  [a3 encodeInteger:-[SRVisit locationCategory](self forKey:{"locationCategory"), @"locationCategory"}];
  v6 = [(SRVisit *)self identifier];

  [a3 encodeObject:v6 forKey:@"UUID"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SRVisit allocWithZone:a3];
  [(SRVisit *)self distanceFromHome];
  v6 = v5;
  v7 = [(SRVisit *)self arrivalDateInterval];
  v8 = [(SRVisit *)self departureDateInterval];
  v9 = [(SRVisit *)self locationCategory];
  v10 = [(SRVisit *)self identifier];

  return [(SRVisit *)v4 initWithDistanceFromHome:v7 arrive:v8 depart:v9 category:v10 uuid:v6];
}

- (SRVisit)initWithDistanceFromHome:(double)a3 arrive:(id)a4 depart:(id)a5 category:(int64_t)a6 uuid:(id)a7
{
  v15.receiver = self;
  v15.super_class = SRVisit;
  v12 = [(SRVisit *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_distanceFromHome = a3;
    v12->_arrivalDateInterval = a4;
    v13->_departureDateInterval = a5;
    v13->_locationCategory = a6;
    v13->_identifier = a7;
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
  v5 = [(SRVisit *)self identifier];
  v6 = [(SRVisit *)self label];
  [(SRVisit *)self distanceFromHome];
  return [v4 stringWithFormat:@"loi %@(%@) distance from home %+.8f arrived %@ departed %@ ", v5, v6, v7, objc_msgSend(v3, "stringFromDateInterval:", -[SRVisit arrivalDateInterval](self, "arrivalDateInterval")), objc_msgSend(v3, "stringFromDateInterval:", -[SRVisit departureDateInterval](self, "departureDateInterval"))];
}

- (NSString)label
{
  v2 = [(SRVisit *)self locationCategory];
  if ((v2 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return &off_1E83304C8[v2 - 1]->isa;
  }
}

- (SRVisit)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  if ([a3 length])
  {
    v11.receiver = self;
    v11.super_class = SRVisit;
    v7 = [(SRVisit *)&v11 init];
    if (v7)
    {
      v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:a3 error:0];
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
    v8 = [(NSUUID *)identifier UUIDString];
  }

  else
  {
    v8 = &stru_1F48BB5C0;
  }

  v12[6] = v8;
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:7];
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
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
  [a3 distanceFromHome];
  if (distanceFromHome != v6)
  {
    goto LABEL_10;
  }

  v7 = -[NSDateInterval isEqualToDateInterval:](self->_arrivalDateInterval, "isEqualToDateInterval:", [a3 arrivalDateInterval]);
  if (!v7)
  {
    return v7;
  }

  v7 = -[NSDateInterval isEqualToDateInterval:](self->_departureDateInterval, "isEqualToDateInterval:", [a3 departureDateInterval]);
  if (!v7)
  {
    return v7;
  }

  locationCategory = self->_locationCategory;
  if (locationCategory != [a3 locationCategory])
  {
LABEL_10:
    LOBYTE(v7) = 0;
    return v7;
  }

  identifier = self->_identifier;
  v10 = [a3 identifier];

  LOBYTE(v7) = [(NSUUID *)identifier isEqual:v10];
  return v7;
}

@end