@interface PersonalizedItemStyleAttributesAdornment
+ (PersonalizedItemStyleAttributesAdornment)adornmentWithStyleAttributes:(id)attributes additionalAttributes:(id)additionalAttributes;
+ (id)defaultAdornment;
- (PersonalizedItemStyleAttributesAdornment)initWithStyleAttributes:(id)attributes additionalAttributes:(id)additionalAttributes;
- (id)combineAdornment:(id)adornment;
@end

@implementation PersonalizedItemStyleAttributesAdornment

+ (id)defaultAdornment
{
  v2 = [self alloc];
  v3 = objc_alloc_init(GEOFeatureStyleAttributes);
  v4 = [v2 initWithStyleAttributes:v3 additionalAttributes:0];

  return v4;
}

- (id)combineAdornment:(id)adornment
{
  v4 = 999999;
  styleAttributes = [adornment styleAttributes];
  poiType = [(GEOFeatureStyleAttributes *)self->_styleAttributes poiType];
  if (poiType <= 346)
  {
    v7 = 999999;
    if (poiType == 169)
    {
      goto LABEL_12;
    }

    if (poiType == 346)
    {
      v7 = 1000001;
      goto LABEL_12;
    }
  }

  else
  {
    switch(poiType)
    {
      case 349:
        v7 = 900000;
        goto LABEL_12;
      case 348:
        v7 = 500000;
        goto LABEL_12;
      case 347:
        v7 = 1000000;
        goto LABEL_12;
    }
  }

  v7 = poiType;
LABEL_12:
  poiType2 = [styleAttributes poiType];
  if (poiType2 <= 346)
  {
    if (poiType2 == 169)
    {
      goto LABEL_23;
    }

    if (poiType2 == 346)
    {
      v4 = 1000001;
      goto LABEL_23;
    }
  }

  else
  {
    switch(poiType2)
    {
      case 349:
        v4 = 900000;
        goto LABEL_23;
      case 348:
        v4 = 500000;
        goto LABEL_23;
      case 347:
        v4 = 1000000;
        goto LABEL_23;
    }
  }

  v4 = poiType2;
LABEL_23:
  if (v7 <= v4)
  {
    v9 = self->_styleAttributes;
    styleAttributes = styleAttributes;
  }

  else
  {
    v9 = styleAttributes;
    styleAttributes = self->_styleAttributes;
  }

  v11 = styleAttributes;
  v12 = [(GEOFeatureStyleAttributes *)v9 copy];
  if (styleAttributes && [styleAttributes countAttrs])
  {
    v13 = [(GEOFeatureStyleAttributes *)v9 copy];

    [v13 replaceAttributes:-[GEOFeatureStyleAttributes v](v11 count:{"v"), -[GEOFeatureStyleAttributes countAttrs](v11, "countAttrs")}];
    v12 = v13;
  }

  v14 = [objc_opt_class() adornmentWithStyleAttributes:v12];

  return v14;
}

- (PersonalizedItemStyleAttributesAdornment)initWithStyleAttributes:(id)attributes additionalAttributes:(id)additionalAttributes
{
  attributesCopy = attributes;
  additionalAttributesCopy = additionalAttributes;
  v32.receiver = self;
  v32.super_class = PersonalizedItemStyleAttributesAdornment;
  v8 = [(PersonalizedItemStyleAttributesAdornment *)&v32 init];
  if (v8)
  {
    v9 = [additionalAttributesCopy count];
    v10 = v9;
    if (v9)
    {
      v25 = [attributesCopy copy];

      v24 = &v24;
      v27 = &v24 - ((8 * v10 + 15) & 0xFFFFFFFF0);
      v31 = 0u;
      v30 = 0u;
      v29 = 0u;
      v28 = 0u;
      v26 = additionalAttributesCopy;
      v11 = additionalAttributesCopy;
      v12 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = *v29;
        v16 = v27 + 4;
        do
        {
          v17 = 0;
          v18 = &v16[8 * v14];
          v14 += v13;
          do
          {
            if (*v29 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v19 = *(*(&v28 + 1) + 8 * v17);
            v20 = [v11 objectForKeyedSubscript:v19];
            *(v18 - 1) = [v19 integerValue];
            *v18 = [v20 integerValue];
            v18 += 8;

            v17 = v17 + 1;
          }

          while (v13 != v17);
          v13 = [v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v13);
      }

      v21 = [v11 count];
      v22 = v25;
      [v25 replaceAttributes:v27 count:v21];
      attributesCopy = v22;
      additionalAttributesCopy = v26;
    }

    else
    {
      v22 = attributesCopy;
    }

    objc_storeStrong(&v8->_styleAttributes, v22);
  }

  return v8;
}

+ (PersonalizedItemStyleAttributesAdornment)adornmentWithStyleAttributes:(id)attributes additionalAttributes:(id)additionalAttributes
{
  attributesCopy = attributes;
  additionalAttributesCopy = additionalAttributes;
  v8 = [self alloc];
  v9 = v8;
  if (attributesCopy)
  {
    v10 = [v8 initWithStyleAttributes:attributesCopy additionalAttributes:additionalAttributesCopy];
  }

  else
  {
    v11 = objc_alloc_init(GEOFeatureStyleAttributes);
    v10 = [v9 initWithStyleAttributes:v11 additionalAttributes:additionalAttributesCopy];
  }

  return v10;
}

@end