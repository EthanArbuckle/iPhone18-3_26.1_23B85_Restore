@interface MapsUIImagePublisherSpec
- (BOOL)isEqual:(id)a3;
- (MapsUIImagePublisherSpec)initWithIconIdentifier:(unsigned int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)imageForScale:(double)a3 isCarPlay:(BOOL)a4;
@end

@implementation MapsUIImagePublisherSpec

- (id)imageForScale:(double)a3 isCarPlay:(BOOL)a4
{
  v5 = [(MapsUIImagePublisherSpec *)self iconIdentifier];

  return [MKIconManager imageForIconID:v5 contentScale:1 sizeGroup:0 nightMode:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MapsUIImagePublisherSpec);
  [(MapsUIImagePublisherSpec *)v4 setIconIdentifier:[(MapsUIImagePublisherSpec *)self iconIdentifier]];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MapsUIImagePublisherSpec *)self iconIdentifier];
      v7 = [(MapsUIImagePublisherSpec *)v5 iconIdentifier];

      v8 = v6 == v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (MapsUIImagePublisherSpec)initWithIconIdentifier:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = MapsUIImagePublisherSpec;
  result = [(MapsUIImagePublisherSpec *)&v5 init];
  if (result)
  {
    *(&result->super._isRTL + 3) = a3;
  }

  return result;
}

@end