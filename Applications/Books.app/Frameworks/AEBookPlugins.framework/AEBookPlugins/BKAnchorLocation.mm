@interface BKAnchorLocation
+ (id)deserializeLocationFromDictionary:(id)a3;
- (BKAnchorLocation)initWithCoder:(id)a3;
- (BKAnchorLocation)initWithLocationDictionary:(id)a3;
- (BKAnchorLocation)initWithOrdinal:(int64_t)a3 andAnchor:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)serializeLocationToDictionary;
- (id)stringValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKAnchorLocation

- (BKAnchorLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BKAnchorLocation;
  v5 = [(BKLocation *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"anchor"];
    v7 = [v6 copy];
    anchor = v5->_anchor;
    v5->_anchor = v7;
  }

  return v5;
}

- (BKAnchorLocation)initWithLocationDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"super"];
  v11.receiver = self;
  v11.super_class = BKAnchorLocation;
  v6 = [(BKLocation *)&v11 initWithLocationDictionary:v5];
  if (v6)
  {
    v7 = [v4 objectForKey:@"anchor"];
    v8 = [v7 copy];
    anchor = v6->_anchor;
    v6->_anchor = v8;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = BKAnchorLocation, [(BKLocation *)&v9 isEqual:v4]))
  {
    v5 = [v4 anchor];
    v6 = [(BKAnchorLocation *)self anchor];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = BKAnchorLocation;
  v3 = [(BKLocation *)&v5 hash];
  return [(NSString *)self->_anchor hash]^ v3;
}

- (id)serializeLocationToDictionary
{
  v7.receiver = self;
  v7.super_class = BKAnchorLocation;
  v3 = [(BKLocation *)&v7 serializeLocationToDictionary];
  v4 = [(BKAnchorLocation *)self anchor];
  v5 = [NSDictionary dictionaryWithObjectsAndKeys:v3, @"super", v4, @"anchor", @"BKAnchorLocation", @"class", 0];

  return v5;
}

+ (id)deserializeLocationFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"class"];
  if ([v4 isEqualToString:@"BKAnchorLocation"])
  {
    v5 = [[BKAnchorLocation alloc] initWithLocationDictionary:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BKAnchorLocation)initWithOrdinal:(int64_t)a3 andAnchor:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = BKAnchorLocation;
  v7 = [(BKLocation *)&v11 initWithOrdinal:a3];
  if (v7)
  {
    v8 = [v6 copy];
    anchor = v7->_anchor;
    v7->_anchor = v8;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = BKAnchorLocation;
  v4 = a3;
  [(BKLocation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_anchor forKey:{@"anchor", v5.receiver, v5.super_class}];
}

- (id)stringValue
{
  v6.receiver = self;
  v6.super_class = BKAnchorLocation;
  v3 = [(BKLocation *)&v6 stringValue];
  v4 = [NSString stringWithFormat:@"{ %@, anchor:%@ }", v3, self->_anchor];

  return v4;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = BKAnchorLocation;
  v3 = [(BKLocation *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@, _anchor:%@", v3, self->_anchor];

  return v4;
}

@end