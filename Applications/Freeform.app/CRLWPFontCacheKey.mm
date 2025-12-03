@interface CRLWPFontCacheKey
+ (id)cacheKeyWithFontName:(id)name fontSize:(double)size bold:(BOOL)bold italic:(BOOL)italic fontFeatures:(id)features;
+ (id)cacheKeyWithFontName:(id)name size:(double)size;
- (BOOL)isEqual:(id)equal;
- (CRLWPFontCacheKey)initWithFontName:(id)name fontSize:(double)size hasExtraFields:(BOOL)fields bold:(BOOL)bold italic:(BOOL)italic fontFeatures:(id)features;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CRLWPFontCacheKey

+ (id)cacheKeyWithFontName:(id)name size:(double)size
{
  nameCopy = name;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!qword_101A34450 || ([qword_101A34450 fontSize], v8 != size) || (objc_msgSend(qword_101A34450, "fontName"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", nameCopy), v9, (v10 & 1) == 0))
  {
    v11 = [objc_alloc(objc_opt_class()) initWithFontName:nameCopy fontSize:0 hasExtraFields:0 bold:0 italic:0 fontFeatures:size];
    v12 = qword_101A34450;
    qword_101A34450 = v11;
  }

  v13 = qword_101A34450;
  objc_sync_exit(selfCopy);

  return v13;
}

+ (id)cacheKeyWithFontName:(id)name fontSize:(double)size bold:(BOOL)bold italic:(BOOL)italic fontFeatures:(id)features
{
  italicCopy = italic;
  boldCopy = bold;
  featuresCopy = features;
  nameCopy = name;
  v13 = [objc_alloc(objc_opt_class()) initWithFontName:nameCopy fontSize:1 hasExtraFields:boldCopy bold:italicCopy italic:featuresCopy fontFeatures:size];

  return v13;
}

- (CRLWPFontCacheKey)initWithFontName:(id)name fontSize:(double)size hasExtraFields:(BOOL)fields bold:(BOOL)bold italic:(BOOL)italic fontFeatures:(id)features
{
  fieldsCopy = fields;
  nameCopy = name;
  featuresCopy = features;
  v24.receiver = self;
  v24.super_class = CRLWPFontCacheKey;
  v16 = [(CRLWPFontCacheKey *)&v24 init];
  if (v16)
  {
    v17 = [nameCopy copy];
    fontName = v16->_fontName;
    v16->_fontName = v17;

    v16->_fontSize = size;
    if (fieldsCopy)
    {
      v16->_hasExtraFields = 1;
      v16->_bold = bold;
      v16->_italic = italic;
      objc_storeStrong(&v16->_fontFeatures, features);
      v19 = [(NSString *)v16->_fontName hash];
      v20 = 4;
      if (v16->_bold)
      {
        v20 = 2;
      }

      v21 = v19 ^ v20;
      v22 = 16;
      if (v16->_italic)
      {
        v22 = 8;
      }

      v16->_hashValue = v21 ^ v22 ^ v16->_fontSize;
    }
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, equalCopy);

  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = [v6 hash];
  if (v7 != [(CRLWPFontCacheKey *)self hash])
  {
    goto LABEL_13;
  }

  [v6 fontSize];
  if (v8 != self->_fontSize)
  {
    goto LABEL_13;
  }

  fontName = [v6 fontName];
  v10 = [fontName isEqualToString:self->_fontName];

  if (!v10)
  {
    goto LABEL_13;
  }

  if (![v6 hasExtraFields] || !self->_hasExtraFields || self->_bold != objc_msgSend(v6, "bold") || self->_italic != objc_msgSend(v6, "italic"))
  {
    if (([v6 hasExtraFields] & 1) == 0)
    {
      v13 = !self->_hasExtraFields;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!self->_fontFeatures)
  {
    fontFeatures = [v6 fontFeatures];

    if (!fontFeatures)
    {
      v13 = 1;
      goto LABEL_14;
    }

    if (!self->_fontFeatures)
    {
      goto LABEL_13;
    }
  }

  fontFeatures2 = [v6 fontFeatures];

  if (!fontFeatures2)
  {
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  fontFeatures3 = [v6 fontFeatures];
  v13 = [fontFeatures3 isEqual:self->_fontFeatures];

LABEL_14:
  return v13 & 1;
}

- (id)description
{
  hasExtraFields = self->_hasExtraFields;
  v4 = objc_opt_class();
  fontName = self->_fontName;
  if (hasExtraFields)
  {
    if (self->_bold)
    {
      v6 = @"+BOLD";
    }

    else
    {
      v6 = @"-BOLD";
    }

    v7 = @"-ITALIC";
    if (self->_italic)
    {
      v7 = @"+ITALIC";
    }

    if (self->_fontFeatures)
    {
      v8 = @"+FONTFEATURES";
    }

    else
    {
      v8 = @"-FONTFEATURES";
    }

    [NSString stringWithFormat:@"(%@*) %p %@ %g %@ %@ %@", v4, self, fontName, *&self->_fontSize, v6, v7, v8];
  }

  else
  {
    [NSString stringWithFormat:@"(%@*) %p %@ %g", v4, self, fontName, *&self->_fontSize, v11, v12, v13];
  }
  v9 = ;

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRLWPFontCacheKey alloc];
  fontName = [(CRLWPFontCacheKey *)self fontName];
  [(CRLWPFontCacheKey *)self fontSize];
  v7 = v6;
  hasExtraFields = [(CRLWPFontCacheKey *)self hasExtraFields];
  bold = [(CRLWPFontCacheKey *)self bold];
  italic = [(CRLWPFontCacheKey *)self italic];
  fontFeatures = [(CRLWPFontCacheKey *)self fontFeatures];
  v12 = [(CRLWPFontCacheKey *)v4 initWithFontName:fontName fontSize:hasExtraFields hasExtraFields:bold bold:italic italic:fontFeatures fontFeatures:v7];

  return v12;
}

@end