@interface _MKMapItemAttribution
+ (id)attributionFromEncyclopedicInfo:(id)info;
- (_MKMapItemAttribution)initWithGEOMapItemAttribution:(id)attribution;
- (id)providerImageAtPath:(id)path scale:(double)scale isTemplate:(BOOL)template;
- (id)providerLogoImageForScale:(double)scale;
- (id)providerSnippetLogoImageForScale:(double)scale;
@end

@implementation _MKMapItemAttribution

+ (id)attributionFromEncyclopedicInfo:(id)info
{
  infoCopy = info;
  v4 = [_MKMapItemAttribution alloc];
  encyclopedicAttribution = [infoCopy encyclopedicAttribution];

  v6 = [(_MKMapItemAttribution *)v4 initWithGEOMapItemAttribution:encyclopedicAttribution];

  return v6;
}

- (id)providerSnippetLogoImageForScale:(double)scale
{
  v5 = [(GEOMapItemAttribution *)self->_geoAttribution providerSnippetLogoPathForScale:?];
  v6 = v5;
  if (scale > 2.0 && v5 == 0)
  {
    [(_MKMapItemAttribution *)self providerSnippetLogoImageForScale:?];
  }

  else
  {
    [(_MKMapItemAttribution *)self providerImageAtPath:v5 scale:1 isTemplate:scale];
  }
  v8 = ;

  return v8;
}

- (id)providerLogoImageForScale:(double)scale
{
  v5 = [(GEOMapItemAttribution *)self->_geoAttribution providerLogoPathForScale:?];
  v6 = v5;
  if (scale > 2.0 && v5 == 0)
  {
    [(_MKMapItemAttribution *)self providerLogoImageForScale:?];
  }

  else
  {
    [(_MKMapItemAttribution *)self providerImageAtPath:v5 scale:0 isTemplate:scale];
  }
  v8 = ;

  return v8;
}

- (id)providerImageAtPath:(id)path scale:(double)scale isTemplate:(BOOL)template
{
  templateCopy = template;
  pathCopy = path;
  if (pathCopy)
  {
    v8 = +[_MKMapItemAttributionProviderLogoImageCache sharedInstance];
    v9 = [v8 imageForKey:pathCopy];

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:pathCopy];
      if (v11)
      {
        v12 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v11 scale:scale];
        v13 = v12;
        if (templateCopy)
        {
          v14 = [v12 imageWithRenderingMode:2];

          v13 = v14;
        }

        v15 = +[_MKMapItemAttributionProviderLogoImageCache sharedInstance];
        [v15 setImage:v13 forKey:pathCopy];

        v10 = v13;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (_MKMapItemAttribution)initWithGEOMapItemAttribution:(id)attribution
{
  attributionCopy = attribution;
  v11.receiver = self;
  v11.super_class = _MKMapItemAttribution;
  v6 = [(_MKMapItemAttribution *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v8 = attributionCopy == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    objc_storeStrong(&v6->_geoAttribution, attribution);
    v9 = v7;
  }

  return v9;
}

@end