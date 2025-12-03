@interface MapsUIImageGEOFeatureSpec
- (BOOL)isEqual:(id)equal;
- (GEOFeatureStyleAttributes)style;
- (MapsUIImageGEOFeatureSpec)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)imageForScale:(double)scale isCarPlay:(BOOL)play;
- (unint64_t)hash;
- (void)setStyle:(id)style;
@end

@implementation MapsUIImageGEOFeatureSpec

- (id)description
{
  v3 = objc_opt_class();
  v4 = @"YES";
  if ([(MapsUIImageGEOFeatureSpec *)self markerFallback])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(MapsUIImageGEOFeatureSpec *)self size];
  if (![(MapsUIImageGEOFeatureSpec *)self transparent])
  {
    v4 = @"NO";
  }

  style = [(MapsUIImageGEOFeatureSpec *)self style];
  v8 = [NSString stringWithFormat:@"<%@: %p markerFallback=%@ size=%lu transparent=%@ style=%@>", v3, self, v5, v6, v4, style];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    markerFallback = [(MapsUIImageGEOFeatureSpec *)self markerFallback];
    if (markerFallback == [v5 markerFallback] && (-[MapsUIImageGEOFeatureSpec style](self, "style"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "style"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, v9) && (v10 = -[MapsUIImageGEOFeatureSpec size](self, "size"), v10 == objc_msgSend(v5, "size")) && (v11 = -[MapsUIImageGEOFeatureSpec transparent](self, "transparent"), v11 == objc_msgSend(v5, "transparent")) && (v12 = -[MapsUIImageGEOFeatureSpec inverted](self, "inverted"), v12 == objc_msgSend(v5, "inverted")))
    {
      nightMode = [(MapsUIImageSpec *)self nightMode];
      v13 = nightMode ^ [v5 nightMode] ^ 1;
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  style = [(MapsUIImageGEOFeatureSpec *)self style];
  [style featureStyleAttributes];
  v4 = featureStyleAttributesHash();
  markerFallback = [(MapsUIImageGEOFeatureSpec *)self markerFallback];
  v6 = 713;
  if (!markerFallback)
  {
    v6 = 0;
  }

  v7 = v6 ^ v4;
  v8 = [NSNumber numberWithUnsignedInteger:[(MapsUIImageGEOFeatureSpec *)self size]];
  v9 = [v8 hash];
  transparent = [(MapsUIImageGEOFeatureSpec *)self transparent];
  v11 = 1124;
  if (!transparent)
  {
    v11 = 0;
  }

  v12 = v7 ^ v11;
  inverted = [(MapsUIImageGEOFeatureSpec *)self inverted];
  v14 = 2248;
  if (!inverted)
  {
    v14 = 0;
  }

  v15 = v12 ^ v14;
  nightMode = [(MapsUIImageSpec *)self nightMode];
  v17 = 4496;
  if (!nightMode)
  {
    v17 = 0;
  }

  v18 = v15 ^ v17;

  return v18 ^ v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 setMarkerFallback:{-[MapsUIImageGEOFeatureSpec markerFallback](self, "markerFallback")}];
  style = [(MapsUIImageGEOFeatureSpec *)self style];
  [v4 setStyle:style];

  [v4 setSize:{-[MapsUIImageGEOFeatureSpec size](self, "size")}];
  [v4 setTransparent:{-[MapsUIImageGEOFeatureSpec transparent](self, "transparent")}];
  [v4 setInverted:{-[MapsUIImageGEOFeatureSpec inverted](self, "inverted")}];
  [v4 setNightMode:{-[MapsUIImageSpec nightMode](self, "nightMode")}];
  return v4;
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  v8 = styleCopy;
  if (styleCopy || (v5 = [(MapsUIImageGEOFeatureSpec *)self markerFallback], styleCopy = 0, !v5))
  {
    v6 = [styleCopy copy];
  }

  else
  {
    v6 = +[GEOFeatureStyleAttributes markerStyleAttributes];
  }

  v7 = *&self->_markerFallback;
  *&self->_markerFallback = v6;
}

- (GEOFeatureStyleAttributes)style
{
  v3 = *&self->_markerFallback;
  if (!v3)
  {
    v4 = +[GEOFeatureStyleAttributes markerStyleAttributes];
    v5 = *&self->_markerFallback;
    *&self->_markerFallback = v4;

    v3 = *&self->_markerFallback;
  }

  return v3;
}

- (id)imageForScale:(double)scale isCarPlay:(BOOL)play
{
  playCopy = play;
  style = [(MapsUIImageGEOFeatureSpec *)self style];
  if (GEOConfigGetBOOL() && [style poiType] == 225)
  {
    v19 = 0x7F00000006;
    v8 = [style copy];

    [v8 replaceAttributes:&v19 count:1];
    style = v8;
  }

  v9 = *(&self->super._isRTL + 3) | [(MapsUIImageGEOFeatureSpec *)self transparent];
  v10 = [(MapsUIImageGEOFeatureSpec *)self size];
  LOBYTE(v17) = [(MapsUIImageSpec *)self nightMode];
  v11 = [MKIconManager imageForStyle:style size:v10 forScale:1 format:v9 & 1 transparent:0 transitMode:playCopy isCarplay:scale nightMode:v17];
  if (!v11)
  {
    if ([(MapsUIImageGEOFeatureSpec *)self markerFallback])
    {
      v12 = +[GEOFeatureStyleAttributes markerStyleAttributes];
      v13 = [(MapsUIImageGEOFeatureSpec *)self size];
      transparent = [(MapsUIImageGEOFeatureSpec *)self transparent];
      LOBYTE(v18) = [(MapsUIImageSpec *)self nightMode];
      v11 = [MKIconManager imageForStyle:v12 size:v13 forScale:1 format:transparent transparent:0 transitMode:playCopy isCarplay:scale nightMode:v18];
    }

    else
    {
      v11 = 0;
    }
  }

  if (*(&self->super._isRTL + 3))
  {
    _maps_invertedImage = [v11 _maps_invertedImage];

    v11 = _maps_invertedImage;
  }

  return v11;
}

- (MapsUIImageGEOFeatureSpec)init
{
  v3.receiver = self;
  v3.super_class = MapsUIImageGEOFeatureSpec;
  result = [(MapsUIImageGEOFeatureSpec *)&v3 init];
  if (result)
  {
    *(&result->super._isRTL + 1) = 1;
    result->_style = 3;
    *(&result->super._isRTL + 2) = 0;
  }

  return result;
}

@end