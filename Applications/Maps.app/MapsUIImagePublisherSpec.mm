@interface MapsUIImagePublisherSpec
- (BOOL)isEqual:(id)equal;
- (MapsUIImagePublisherSpec)initWithIconIdentifier:(unsigned int)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)imageForScale:(double)scale isCarPlay:(BOOL)play;
@end

@implementation MapsUIImagePublisherSpec

- (id)imageForScale:(double)scale isCarPlay:(BOOL)play
{
  iconIdentifier = [(MapsUIImagePublisherSpec *)self iconIdentifier];

  return [MKIconManager imageForIconID:iconIdentifier contentScale:1 sizeGroup:0 nightMode:scale];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MapsUIImagePublisherSpec);
  [(MapsUIImagePublisherSpec *)v4 setIconIdentifier:[(MapsUIImagePublisherSpec *)self iconIdentifier]];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      iconIdentifier = [(MapsUIImagePublisherSpec *)self iconIdentifier];
      iconIdentifier2 = [(MapsUIImagePublisherSpec *)v5 iconIdentifier];

      v8 = iconIdentifier == iconIdentifier2;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (MapsUIImagePublisherSpec)initWithIconIdentifier:(unsigned int)identifier
{
  v5.receiver = self;
  v5.super_class = MapsUIImagePublisherSpec;
  result = [(MapsUIImagePublisherSpec *)&v5 init];
  if (result)
  {
    *(&result->super._isRTL + 3) = identifier;
  }

  return result;
}

@end