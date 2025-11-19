@interface _MKMapItemAttribution
+ (id)attributionFromEncyclopedicInfo:(id)a3;
- (_MKMapItemAttribution)initWithGEOMapItemAttribution:(id)a3;
- (id)providerImageAtPath:(id)a3 scale:(double)a4 isTemplate:(BOOL)a5;
- (id)providerLogoImageForScale:(double)a3;
- (id)providerSnippetLogoImageForScale:(double)a3;
@end

@implementation _MKMapItemAttribution

+ (id)attributionFromEncyclopedicInfo:(id)a3
{
  v3 = a3;
  v4 = [_MKMapItemAttribution alloc];
  v5 = [v3 encyclopedicAttribution];

  v6 = [(_MKMapItemAttribution *)v4 initWithGEOMapItemAttribution:v5];

  return v6;
}

- (id)providerSnippetLogoImageForScale:(double)a3
{
  v5 = [(GEOMapItemAttribution *)self->_geoAttribution providerSnippetLogoPathForScale:?];
  v6 = v5;
  if (a3 > 2.0 && v5 == 0)
  {
    [(_MKMapItemAttribution *)self providerSnippetLogoImageForScale:?];
  }

  else
  {
    [(_MKMapItemAttribution *)self providerImageAtPath:v5 scale:1 isTemplate:a3];
  }
  v8 = ;

  return v8;
}

- (id)providerLogoImageForScale:(double)a3
{
  v5 = [(GEOMapItemAttribution *)self->_geoAttribution providerLogoPathForScale:?];
  v6 = v5;
  if (a3 > 2.0 && v5 == 0)
  {
    [(_MKMapItemAttribution *)self providerLogoImageForScale:?];
  }

  else
  {
    [(_MKMapItemAttribution *)self providerImageAtPath:v5 scale:0 isTemplate:a3];
  }
  v8 = ;

  return v8;
}

- (id)providerImageAtPath:(id)a3 scale:(double)a4 isTemplate:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  if (v7)
  {
    v8 = +[_MKMapItemAttributionProviderLogoImageCache sharedInstance];
    v9 = [v8 imageForKey:v7];

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v7];
      if (v11)
      {
        v12 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:v11 scale:a4];
        v13 = v12;
        if (v5)
        {
          v14 = [v12 imageWithRenderingMode:2];

          v13 = v14;
        }

        v15 = +[_MKMapItemAttributionProviderLogoImageCache sharedInstance];
        [v15 setImage:v13 forKey:v7];

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

- (_MKMapItemAttribution)initWithGEOMapItemAttribution:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = _MKMapItemAttribution;
  v6 = [(_MKMapItemAttribution *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v8 = v5 == 0;
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
    objc_storeStrong(&v6->_geoAttribution, a3);
    v9 = v7;
  }

  return v9;
}

@end