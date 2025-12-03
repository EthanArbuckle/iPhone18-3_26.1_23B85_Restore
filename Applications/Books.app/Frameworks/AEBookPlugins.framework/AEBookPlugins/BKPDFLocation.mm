@interface BKPDFLocation
+ (id)deserializeLocationFromDictionary:(id)dictionary;
+ (id)locationForSelection:(id)selection offset:(unint64_t)offset;
- (BKPDFLocation)initWithCoder:(id)coder;
- (BKPDFLocation)initWithLocationDictionary:(id)dictionary;
- (id)serialString;
- (id)serializeLocationToDictionary;
- (id)stringValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKPDFLocation

+ (id)locationForSelection:(id)selection offset:(unint64_t)offset
{
  selectionCopy = selection;
  v6 = [(BKPageLocation *)[BKPDFLocation alloc] initWithOrdinal:0 andOffset:offset];
  [(BKPDFLocation *)v6 setSelection:selectionCopy];
  html = [selectionCopy html];

  v8 = sub_9A9A4(html);
  [(BKPDFLocation *)v6 setSerialData:v8];

  return v6;
}

- (BKPDFLocation)initWithLocationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"super"];
  v10.receiver = self;
  v10.super_class = BKPDFLocation;
  v6 = [(BKPageLocation *)&v10 initWithLocationDictionary:v5];
  if (v6)
  {
    v7 = [dictionaryCopy objectForKey:@"serialData"];
    serialData = v6->_serialData;
    v6->_serialData = v7;
  }

  return v6;
}

- (id)serializeLocationToDictionary
{
  v11.receiver = self;
  v11.super_class = BKPDFLocation;
  serializeLocationToDictionary = [(BKPageLocation *)&v11 serializeLocationToDictionary];
  selection = [(BKPDFLocation *)self selection];

  if (selection)
  {
    selection2 = [(BKPDFLocation *)self selection];
    html = [selection2 html];

    v7 = sub_9A9A4(html);
    [(BKPDFLocation *)self setSerialData:v7];
  }

  if (serializeLocationToDictionary && (serialData = self->_serialData) != 0)
  {
    v9 = [NSDictionary dictionaryWithObjectsAndKeys:serializeLocationToDictionary, @"super", serialData, @"serialData", @"BKPDFLocation", @"class", 0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)deserializeLocationFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"class"];
  if ([v4 isEqualToString:@"BKPDFLocation"])
  {
    v5 = [[BKPDFLocation alloc] initWithLocationDictionary:dictionaryCopy];
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
  stringValue = [(BKPageLocation *)&v7 stringValue];
  serialString = [(BKPDFLocation *)self serialString];
  v5 = [NSString stringWithFormat:@"{ %@, serialString: %@ }", stringValue, serialString];

  return v5;
}

- (id)serialString
{
  serialData = [(BKPDFLocation *)self serialData];

  if (serialData)
  {
    serialData2 = [(BKPDFLocation *)self serialData];
    bytes = [serialData2 bytes];
    v7 = (bytes + 1);
    v6 = *bytes;
    v8 = malloc_type_malloc(*bytes, 0xFA933F4BuLL);
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

- (BKPDFLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = BKPDFLocation;
  v5 = [(BKPageLocation *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialData"];
    serialData = v5->_serialData;
    v5->_serialData = v6;

    [(BKPDFLocation *)v5 setSelection:0];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = BKPDFLocation;
  coderCopy = coder;
  [(BKPageLocation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_serialData forKey:{@"serialData", v5.receiver, v5.super_class}];
}

@end