@interface BKPDFLocation
+ (id)deserializeLocationFromDictionary:(id)a3;
+ (id)locationForSelection:(id)a3 offset:(unint64_t)a4;
- (BKPDFLocation)initWithCoder:(id)a3;
- (BKPDFLocation)initWithLocationDictionary:(id)a3;
- (id)serialString;
- (id)serializeLocationToDictionary;
- (id)stringValue;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BKPDFLocation

+ (id)locationForSelection:(id)a3 offset:(unint64_t)a4
{
  v5 = a3;
  v6 = [(BKPageLocation *)[BKPDFLocation alloc] initWithOrdinal:0 andOffset:a4];
  [(BKPDFLocation *)v6 setSelection:v5];
  v7 = [v5 html];

  v8 = sub_9A9A4(v7);
  [(BKPDFLocation *)v6 setSerialData:v8];

  return v6;
}

- (BKPDFLocation)initWithLocationDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"super"];
  v10.receiver = self;
  v10.super_class = BKPDFLocation;
  v6 = [(BKPageLocation *)&v10 initWithLocationDictionary:v5];
  if (v6)
  {
    v7 = [v4 objectForKey:@"serialData"];
    serialData = v6->_serialData;
    v6->_serialData = v7;
  }

  return v6;
}

- (id)serializeLocationToDictionary
{
  v11.receiver = self;
  v11.super_class = BKPDFLocation;
  v3 = [(BKPageLocation *)&v11 serializeLocationToDictionary];
  v4 = [(BKPDFLocation *)self selection];

  if (v4)
  {
    v5 = [(BKPDFLocation *)self selection];
    v6 = [v5 html];

    v7 = sub_9A9A4(v6);
    [(BKPDFLocation *)self setSerialData:v7];
  }

  if (v3 && (serialData = self->_serialData) != 0)
  {
    v9 = [NSDictionary dictionaryWithObjectsAndKeys:v3, @"super", serialData, @"serialData", @"BKPDFLocation", @"class", 0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)deserializeLocationFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"class"];
  if ([v4 isEqualToString:@"BKPDFLocation"])
  {
    v5 = [[BKPDFLocation alloc] initWithLocationDictionary:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)stringValue
{
  v7.receiver = self;
  v7.super_class = BKPDFLocation;
  v3 = [(BKPageLocation *)&v7 stringValue];
  v4 = [(BKPDFLocation *)self serialString];
  v5 = [NSString stringWithFormat:@"{ %@, serialString: %@ }", v3, v4];

  return v5;
}

- (id)serialString
{
  v3 = [(BKPDFLocation *)self serialData];

  if (v3)
  {
    v4 = [(BKPDFLocation *)self serialData];
    v5 = [v4 bytes];
    v7 = (v5 + 1);
    v6 = *v5;
    v8 = malloc_type_malloc(*v5, 0xFA933F4BuLL);
    *&v11.avail_in = 0u;
    memset(&v11.total_out, 0, 72);
    v11.next_in = v7;
    v11.avail_in = v6;
    v11.next_out = v8;
    *&v11.avail_out = v6;
    v9 = 0;
    if (!inflateInit_(&v11, "1.2.12", 112))
    {
      if (inflate(&v11, 4) == 1)
      {
        v9 = [[NSString alloc] initWithBytes:v8 length:v6 encoding:4];
      }

      else
      {
        v9 = 0;
      }

      inflateEnd(&v11);
      free(v8);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BKPDFLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BKPDFLocation;
  v5 = [(BKPageLocation *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serialData"];
    serialData = v5->_serialData;
    v5->_serialData = v6;

    [(BKPDFLocation *)v5 setSelection:0];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = BKPDFLocation;
  v4 = a3;
  [(BKPageLocation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_serialData forKey:{@"serialData", v5.receiver, v5.super_class}];
}

@end