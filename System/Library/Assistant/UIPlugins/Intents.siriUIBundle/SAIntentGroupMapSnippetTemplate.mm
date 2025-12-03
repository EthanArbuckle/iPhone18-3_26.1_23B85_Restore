@interface SAIntentGroupMapSnippetTemplate
- (id)CLLocation;
- (id)commandIdentifier;
- (id)footnote;
- (id)footnoteDescriptor;
- (id)pinColor;
- (unint64_t)mapSizeValue;
- (void)setColor:(id)color;
- (void)setLocation:(id)location;
- (void)setMapSizeValue:(unint64_t)value;
@end

@implementation SAIntentGroupMapSnippetTemplate

- (id)CLLocation
{
  v3 = NSStringFromSelector("CLLocation");
  dictionary = [(SAIntentGroupMapSnippetTemplate *)self dictionary];
  v5 = [dictionary objectForKey:v3];

  if (!v5)
  {
    dictionary2 = [(SAIntentGroupMapSnippetTemplate *)self dictionary];
    v7 = [CLLocation alloc];
    location = [(SAIntentGroupMapSnippetTemplate *)self location];
    latitude = [location latitude];
    [latitude doubleValue];
    v11 = v10;
    location2 = [(SAIntentGroupMapSnippetTemplate *)self location];
    longitude = [location2 longitude];
    [longitude doubleValue];
    v15 = [v7 initWithLatitude:v11 longitude:v14];
    [dictionary2 setObject:v15 forKey:v3];
  }

  dictionary3 = [(SAIntentGroupMapSnippetTemplate *)self dictionary];
  v17 = [dictionary3 objectForKey:v3];

  return v17;
}

- (void)setLocation:(id)location
{
  locationCopy = location;
  v5 = NSStringFromSelector("location");
  AceObjectSetAceObjectForProperty();

  v7 = NSStringFromSelector("CLLocation");
  dictionary = [(SAIntentGroupMapSnippetTemplate *)self dictionary];
  [dictionary removeObjectForKey:v7];
}

- (id)pinColor
{
  v3 = NSStringFromSelector("pinColor");
  dictionary = [(SAIntentGroupMapSnippetTemplate *)self dictionary];
  v5 = [dictionary objectForKey:v3];

  if (!v5)
  {
    color = [(SAIntentGroupMapSnippetTemplate *)self color];
    dictionary2 = [(SAIntentGroupMapSnippetTemplate *)self dictionary];
    v8 = [color redValue] / 255.0;
    v9 = [color greenValue] / 255.0;
    v10 = [color blueValue] / 255.0;
    alpha = [color alpha];
    [alpha doubleValue];
    v13 = [UIColor colorWithRed:v8 green:v9 blue:v10 alpha:v12];
    [dictionary2 setObject:v13 forKey:v3];
  }

  dictionary3 = [(SAIntentGroupMapSnippetTemplate *)self dictionary];
  v15 = [dictionary3 objectForKey:v3];

  return v15;
}

- (void)setColor:(id)color
{
  colorCopy = color;
  v5 = NSStringFromSelector("color");
  AceObjectSetAceObjectForProperty();

  v7 = NSStringFromSelector("pinColor");
  dictionary = [(SAIntentGroupMapSnippetTemplate *)self dictionary];
  [dictionary removeObjectForKey:v7];
}

- (id)footnoteDescriptor
{
  detailLabelComponent = [(SAIntentGroupMapSnippetTemplate *)self detailLabelComponent];
  text = [detailLabelComponent text];

  return text;
}

- (id)footnote
{
  detailLabelComponent = [(SAIntentGroupMapSnippetTemplate *)self detailLabelComponent];
  detailText = [detailLabelComponent detailText];

  return detailText;
}

- (id)commandIdentifier
{
  updateLocationCommand = [(SAIntentGroupMapSnippetTemplate *)self updateLocationCommand];
  aceId = [updateLocationCommand aceId];

  return aceId;
}

- (unint64_t)mapSizeValue
{
  mapSize = [(SAIntentGroupMapSnippetTemplate *)self mapSize];
  v3 = [SiriIntentsTemplateModelEnumMapper mapSizeFromString:mapSize];

  return v3;
}

- (void)setMapSizeValue:(unint64_t)value
{
  v4 = [SiriIntentsTemplateModelEnumMapper stringFromMapSize:value];
  [(SAIntentGroupMapSnippetTemplate *)self setMapSize:v4];
}

@end