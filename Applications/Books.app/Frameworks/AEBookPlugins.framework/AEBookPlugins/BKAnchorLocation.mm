@interface BKAnchorLocation
+ (id)deserializeLocationFromDictionary:(id)dictionary;
- (BKAnchorLocation)initWithCoder:(id)coder;
- (BKAnchorLocation)initWithLocationDictionary:(id)dictionary;
- (BKAnchorLocation)initWithOrdinal:(int64_t)ordinal andAnchor:(id)anchor;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)serializeLocationToDictionary;
- (id)stringValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKAnchorLocation

- (BKAnchorLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = BKAnchorLocation;
  v5 = [(BKLocation *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anchor"];
    v7 = [v6 copy];
    anchor = v5->_anchor;
    v5->_anchor = v7;
  }

  return v5;
}

- (BKAnchorLocation)initWithLocationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"super"];
  v11.receiver = self;
  v11.super_class = BKAnchorLocation;
  v6 = [(BKLocation *)&v11 initWithLocationDictionary:v5];
  if (v6)
  {
    v7 = [dictionaryCopy objectForKey:@"anchor"];
    v8 = [v7 copy];
    anchor = v6->_anchor;
    v6->_anchor = v8;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9.receiver = self, v9.super_class = BKAnchorLocation, [(BKLocation *)&v9 isEqual:equalCopy]))
  {
    anchor = [equalCopy anchor];
    anchor2 = [(BKAnchorLocation *)self anchor];
    v7 = [anchor isEqualToString:anchor2];
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
  serializeLocationToDictionary = [(BKLocation *)&v7 serializeLocationToDictionary];
  anchor = [(BKAnchorLocation *)self anchor];
  v5 = [NSDictionary dictionaryWithObjectsAndKeys:serializeLocationToDictionary, @"super", anchor, @"anchor", @"BKAnchorLocation", @"class", 0];

  return v5;
}

+ (id)deserializeLocationFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"class"];
  if ([v4 isEqualToString:@"BKAnchorLocation"])
  {
    v5 = [[BKAnchorLocation alloc] initWithLocationDictionary:dictionaryCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BKAnchorLocation)initWithOrdinal:(int64_t)ordinal andAnchor:(id)anchor
{
  anchorCopy = anchor;
  v11.receiver = self;
  v11.super_class = BKAnchorLocation;
  v7 = [(BKLocation *)&v11 initWithOrdinal:ordinal];
  if (v7)
  {
    v8 = [anchorCopy copy];
    anchor = v7->_anchor;
    v7->_anchor = v8;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = BKAnchorLocation;
  coderCopy = coder;
  [(BKLocation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_anchor forKey:{@"anchor", v5.receiver, v5.super_class}];
}

- (id)stringValue
{
  v6.receiver = self;
  v6.super_class = BKAnchorLocation;
  stringValue = [(BKLocation *)&v6 stringValue];
  v4 = [NSString stringWithFormat:@"{ %@, anchor:%@ }", stringValue, self->_anchor];

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