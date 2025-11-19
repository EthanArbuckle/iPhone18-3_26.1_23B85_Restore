@interface MapsUIImageGEOFeatureSpec
- (BOOL)isEqual:(id)a3;
- (GEOFeatureStyleAttributes)style;
- (MapsUIImageGEOFeatureSpec)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)imageForScale:(double)a3 isCarPlay:(BOOL)a4;
- (unint64_t)hash;
- (void)setStyle:(id)a3;
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

  v7 = [(MapsUIImageGEOFeatureSpec *)self style];
  v8 = [NSString stringWithFormat:@"<%@: %p markerFallback=%@ size=%lu transparent=%@ style=%@>", v3, self, v5, v6, v4, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(MapsUIImageGEOFeatureSpec *)self markerFallback];
    if (v6 == [v5 markerFallback] && (-[MapsUIImageGEOFeatureSpec style](self, "style"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "style"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, v9) && (v10 = -[MapsUIImageGEOFeatureSpec size](self, "size"), v10 == objc_msgSend(v5, "size")) && (v11 = -[MapsUIImageGEOFeatureSpec transparent](self, "transparent"), v11 == objc_msgSend(v5, "transparent")) && (v12 = -[MapsUIImageGEOFeatureSpec inverted](self, "inverted"), v12 == objc_msgSend(v5, "inverted")))
    {
      v15 = [(MapsUIImageSpec *)self nightMode];
      v13 = v15 ^ [v5 nightMode] ^ 1;
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
  v3 = [(MapsUIImageGEOFeatureSpec *)self style];
  [v3 featureStyleAttributes];
  v4 = featureStyleAttributesHash();
  v5 = [(MapsUIImageGEOFeatureSpec *)self markerFallback];
  v6 = 713;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = v6 ^ v4;
  v8 = [NSNumber numberWithUnsignedInteger:[(MapsUIImageGEOFeatureSpec *)self size]];
  v9 = [v8 hash];
  v10 = [(MapsUIImageGEOFeatureSpec *)self transparent];
  v11 = 1124;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = v7 ^ v11;
  v13 = [(MapsUIImageGEOFeatureSpec *)self inverted];
  v14 = 2248;
  if (!v13)
  {
    v14 = 0;
  }

  v15 = v12 ^ v14;
  v16 = [(MapsUIImageSpec *)self nightMode];
  v17 = 4496;
  if (!v16)
  {
    v17 = 0;
  }

  v18 = v15 ^ v17;

  return v18 ^ v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  [v4 setMarkerFallback:{-[MapsUIImageGEOFeatureSpec markerFallback](self, "markerFallback")}];
  v5 = [(MapsUIImageGEOFeatureSpec *)self style];
  [v4 setStyle:v5];

  [v4 setSize:{-[MapsUIImageGEOFeatureSpec size](self, "size")}];
  [v4 setTransparent:{-[MapsUIImageGEOFeatureSpec transparent](self, "transparent")}];
  [v4 setInverted:{-[MapsUIImageGEOFeatureSpec inverted](self, "inverted")}];
  [v4 setNightMode:{-[MapsUIImageSpec nightMode](self, "nightMode")}];
  return v4;
}

- (void)setStyle:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4 || (v5 = [(MapsUIImageGEOFeatureSpec *)self markerFallback], v4 = 0, !v5))
  {
    v6 = [v4 copy];
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

- (id)imageForScale:(double)a3 isCarPlay:(BOOL)a4
{
  v4 = a4;
  v7 = [(MapsUIImageGEOFeatureSpec *)self style];
  if (GEOConfigGetBOOL() && [v7 poiType] == 225)
  {
    v19 = 0x7F00000006;
    v8 = [v7 copy];

    [v8 replaceAttributes:&v19 count:1];
    v7 = v8;
  }

  v9 = *(&self->super._isRTL + 3) | [(MapsUIImageGEOFeatureSpec *)self transparent];
  v10 = [(MapsUIImageGEOFeatureSpec *)self size];
  LOBYTE(v17) = [(MapsUIImageSpec *)self nightMode];
  v11 = [MKIconManager imageForStyle:v7 size:v10 forScale:1 format:v9 & 1 transparent:0 transitMode:v4 isCarplay:a3 nightMode:v17];
  if (!v11)
  {
    if ([(MapsUIImageGEOFeatureSpec *)self markerFallback])
    {
      v12 = +[GEOFeatureStyleAttributes markerStyleAttributes];
      v13 = [(MapsUIImageGEOFeatureSpec *)self size];
      v14 = [(MapsUIImageGEOFeatureSpec *)self transparent];
      LOBYTE(v18) = [(MapsUIImageSpec *)self nightMode];
      v11 = [MKIconManager imageForStyle:v12 size:v13 forScale:1 format:v14 transparent:0 transitMode:v4 isCarplay:a3 nightMode:v18];
    }

    else
    {
      v11 = 0;
    }
  }

  if (*(&self->super._isRTL + 3))
  {
    v15 = [v11 _maps_invertedImage];

    v11 = v15;
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