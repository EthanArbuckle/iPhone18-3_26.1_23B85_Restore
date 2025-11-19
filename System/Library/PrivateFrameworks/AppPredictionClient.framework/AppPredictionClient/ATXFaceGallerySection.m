@interface ATXFaceGallerySection
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)sectionFromJSONDictionary:(id)a3;
- (ATXFaceGallerySection)initWithCoder:(id)a3;
- (ATXFaceGallerySection)initWithLocalizedTitle:(id)a3 symbolImageName:(id)a4 symbolColorName:(id)a5 localizedSubtitle:(id)a6 localizedDescriptiveText:(id)a7 unityDescription:(id)a8 type:(int64_t)a9 items:(id)a10 semanticType:(int64_t)a11;
- (ATXFaceGallerySection)initWithProto:(id)a3;
- (ATXFaceGallerySection)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)jsonDictionary;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodeAsProto;
- (id)json;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXFaceGallerySection

- (ATXFaceGallerySection)initWithLocalizedTitle:(id)a3 symbolImageName:(id)a4 symbolColorName:(id)a5 localizedSubtitle:(id)a6 localizedDescriptiveText:(id)a7 unityDescription:(id)a8 type:(int64_t)a9 items:(id)a10 semanticType:(int64_t)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a10;
  v40.receiver = self;
  v40.super_class = ATXFaceGallerySection;
  v24 = [(ATXFaceGallerySection *)&v40 init];
  if (v24)
  {
    v25 = [v17 copy];
    localizedTitle = v24->_localizedTitle;
    v24->_localizedTitle = v25;

    v27 = [v20 copy];
    localizedSubtitle = v24->_localizedSubtitle;
    v24->_localizedSubtitle = v27;

    v29 = [v18 copy];
    symbolImageName = v24->_symbolImageName;
    v24->_symbolImageName = v29;

    v31 = [v19 copy];
    symbolColorName = v24->_symbolColorName;
    v24->_symbolColorName = v31;

    v33 = [v21 copy];
    localizedDescriptiveText = v24->_localizedDescriptiveText;
    v24->_localizedDescriptiveText = v33;

    v35 = [v22 copy];
    unityDescription = v24->_unityDescription;
    v24->_unityDescription = v35;

    v24->_type = a9;
    v37 = [v23 copy];
    items = v24->_items;
    v24->_items = v37;

    v24->_semanticType = a11;
  }

  return v24;
}

+ (id)sectionFromJSONDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"localizedTitle"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v35 = [v3 objectForKeyedSubscript:@"localizedTitle"];
  }

  else
  {
    v35 = 0;
  }

  v6 = [v3 objectForKeyedSubscript:@"localizedSubtitle"];
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();

  if (v7)
  {
    v8 = [v3 objectForKeyedSubscript:@"localizedSubtitle"];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 objectForKeyedSubscript:@"symbolImageName"];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if (v10)
  {
    v11 = [v3 objectForKeyedSubscript:@"symbolImageName"];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v3 objectForKeyedSubscript:@"symbolColorName"];
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();

  if (v13)
  {
    v14 = [v3 objectForKeyedSubscript:@"symbolColorName"];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v3 objectForKeyedSubscript:@"localizedDescriptiveText"];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  if (v16)
  {
    v17 = [v3 objectForKeyedSubscript:@"localizedDescriptiveText"];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v3 objectForKeyedSubscript:@"unityDescription"];
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  if (v19)
  {
    v20 = [v3 objectForKeyedSubscript:@"unityDescription"];
  }

  else
  {
    v20 = &stru_1F3E050C8;
  }

  v21 = [v3 objectForKeyedSubscript:@"type"];
  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  if (v22)
  {
    v23 = [v3 objectForKeyedSubscript:@"type"];
    if ([v23 isEqualToString:@"Full"])
    {
      v24 = 0;
    }

    else if ([v23 isEqualToString:@"Scrollable"])
    {
      v24 = 1;
    }

    else if ([v23 isEqualToString:@"Unity"])
    {
      v24 = 2;
    }

    else if ([v23 isEqualToString:@"ScrollableSquares"])
    {
      v24 = 3;
    }

    else if ([v23 isEqualToString:@"Tall"])
    {
      v24 = 4;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 1;
  }

  v25 = [v3 objectForKeyedSubscript:@"items"];
  objc_opt_class();
  v26 = objc_opt_isKindOfClass();

  if (v26)
  {
    v27 = [v3 objectForKeyedSubscript:@"items"];
    v28 = [v27 _pas_mappedArrayWithTransform:&__block_literal_global_76];
  }

  else
  {
    v28 = MEMORY[0x1E695E0F0];
  }

  v29 = [v3 objectForKeyedSubscript:@"semanticType"];
  objc_opt_class();
  v30 = objc_opt_isKindOfClass();

  if (v30)
  {
    v31 = [v3 objectForKeyedSubscript:@"semanticType"];
    if ([v31 isEqualToString:@"Default"])
    {
      v32 = 0;
    }

    else if ([v31 isEqualToString:@"FeaturedFaces"])
    {
      v32 = 1;
    }

    else if ([v31 isEqualToString:@"FeaturedPhotos"])
    {
      v32 = 2;
    }

    else if ([v31 isEqualToString:@"Focus"])
    {
      v32 = 3;
    }

    else if ([v31 isEqualToString:@"Hero"])
    {
      v32 = 4;
    }

    else if ([v31 isEqualToString:@"PhotoShuffle"])
    {
      v32 = 5;
    }

    else if ([v31 isEqualToString:@"WeatherAndAstronomy"])
    {
      v32 = 6;
    }

    else if ([v31 isEqualToString:@"Kaleidoscope"])
    {
      v32 = 7;
    }

    else if ([v31 isEqualToString:@"Emoji"])
    {
      v32 = 8;
    }

    else if ([v31 isEqualToString:@"Unity"])
    {
      v32 = 9;
    }

    else if ([v31 isEqualToString:@"Pride"])
    {
      v32 = 10;
    }

    else if ([v31 isEqualToString:@"OSVersion"])
    {
      v32 = 11;
    }

    else if ([v31 isEqualToString:@"Collections"])
    {
      v32 = 12;
    }

    else if ([v31 isEqualToString:@"Color"])
    {
      v32 = 13;
    }

    else if ([v31 isEqualToString:@"SpatialPhotos"])
    {
      v32 = 14;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  v33 = [[ATXFaceGallerySection alloc] initWithLocalizedTitle:v35 symbolImageName:v11 symbolColorName:v14 localizedSubtitle:v8 localizedDescriptiveText:v17 unityDescription:v20 type:v24 items:v28 semanticType:v32];

  return v33;
}

id __51__ATXFaceGallerySection_sectionFromJSONDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [ATXFaceGalleryItem itemFromJSONDictionary:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)description
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [(ATXFaceGallerySection *)self localizedTitle];
  v6 = [v4 initWithFormat:@"    localizedTitle: %@", v5];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = [(ATXFaceGallerySection *)self symbolImageName];
  v9 = [v7 initWithFormat:@"    symbolImageName: %@", v8];
  [v3 addObject:v9];

  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11 = [(ATXFaceGallerySection *)self symbolColorName];
  v12 = [v10 initWithFormat:@"    symbolColorName: %@", v11];
  [v3 addObject:v12];

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [(ATXFaceGallerySection *)self localizedSubtitle];
  v15 = [v13 initWithFormat:@"    localizedSubtitle: %@", v14];
  [v3 addObject:v15];

  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = [(ATXFaceGallerySection *)self localizedDescriptiveText];
  v18 = [v16 initWithFormat:@"    localizedDescriptiveText: %@", v17];
  [v3 addObject:v18];

  v19 = objc_alloc(MEMORY[0x1E696AEC0]);
  v20 = [(ATXFaceGallerySection *)self unityDescription];
  v21 = [v19 initWithFormat:@"    unityDescription: %@", v20];
  [v3 addObject:v21];

  v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"    type: %zd", -[ATXFaceGallerySection type](self, "type")];
  [v3 addObject:v22];

  [v3 addObject:@"    items:"];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v23 = [(ATXFaceGallerySection *)self items];
  v24 = [v23 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v35;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"        %@", *(*(&v34 + 1) + 8 * i)];
        [v3 addObject:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v25);
  }

  v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"semanticType: %zd", -[ATXFaceGallerySection semanticType](self, "semanticType")];
  [v3 addObject:v29];

  v30 = objc_alloc(MEMORY[0x1E696AEC0]);
  v31 = [v3 componentsJoinedByString:@"\n"];
  v32 = [v30 initWithFormat:@"ATXFaceGallerySection:\n%@", v31];

  return v32;
}

- (ATXFaceGallerySection)initWithCoder:(id)a3
{
  v26[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"localizedSubtitle"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescriptiveText"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"symbolImageName"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"symbolColorName"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"unityDescription"];
  v9 = [v3 decodeIntegerForKey:@"type"];
  v10 = MEMORY[0x1E695DFD8];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v12 = [v10 setWithArray:v11];
  v13 = [v3 decodeObjectOfClasses:v12 forKey:@"items"];

  if (v13)
  {
    v23 = v9;
    v14 = v6;
    v15 = v5;
    v16 = v4;
    v17 = v24;
    v18 = v8;
    v19 = -[ATXFaceGallerySection initWithLocalizedTitle:symbolImageName:symbolColorName:localizedSubtitle:localizedDescriptiveText:unityDescription:type:items:semanticType:](self, "initWithLocalizedTitle:symbolImageName:symbolColorName:localizedSubtitle:localizedDescriptiveText:unityDescription:type:items:semanticType:", v24, v14, v7, v16, v15, v8, v23, v13, [v3 decodeIntegerForKey:@"semanticType"]);
    v20 = v19;
  }

  else
  {
    v18 = v8;
    v14 = v6;
    v15 = v5;
    v16 = v4;
    v17 = v24;
    v19 = self;
    v21 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [ATXFaceGallerySection initWithCoder:v21];
    }

    v20 = 0;
  }

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(ATXFaceGallerySection *)self localizedTitle];
  [v11 encodeObject:v4 forKey:@"localizedTitle"];

  v5 = [(ATXFaceGallerySection *)self localizedSubtitle];
  [v11 encodeObject:v5 forKey:@"localizedSubtitle"];

  v6 = [(ATXFaceGallerySection *)self symbolImageName];
  [v11 encodeObject:v6 forKey:@"symbolImageName"];

  v7 = [(ATXFaceGallerySection *)self symbolColorName];
  [v11 encodeObject:v7 forKey:@"symbolColorName"];

  v8 = [(ATXFaceGallerySection *)self localizedDescriptiveText];
  [v11 encodeObject:v8 forKey:@"localizedDescriptiveText"];

  v9 = [(ATXFaceGallerySection *)self unityDescription];
  [v11 encodeObject:v9 forKey:@"unityDescription"];

  [v11 encodeInteger:-[ATXFaceGallerySection type](self forKey:{"type"), @"type"}];
  v10 = [(ATXFaceGallerySection *)self items];
  [v11 encodeObject:v10 forKey:@"items"];

  [v11 encodeInteger:-[ATXFaceGallerySection semanticType](self forKey:{"semanticType"), @"semanticType"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(ATXFaceGallerySection *)self localizedTitle];
  v6 = [(ATXFaceGallerySection *)self symbolImageName];
  v7 = [(ATXFaceGallerySection *)self symbolColorName];
  v8 = [(ATXFaceGallerySection *)self localizedSubtitle];
  v9 = [(ATXFaceGallerySection *)self localizedDescriptiveText];
  v10 = [(ATXFaceGallerySection *)self unityDescription];
  v11 = [(ATXFaceGallerySection *)self type];
  v12 = [(ATXFaceGallerySection *)self items];
  v13 = [v4 initWithLocalizedTitle:v5 symbolImageName:v6 symbolColorName:v7 localizedSubtitle:v8 localizedDescriptiveText:v9 unityDescription:v10 type:v11 items:v12 semanticType:{-[ATXFaceGallerySection semanticType](self, "semanticType")}];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_localizedTitle;
      v7 = v6;
      if (v6 == v5->_localizedTitle)
      {
      }

      else
      {
        v8 = [(NSString *)v6 isEqual:?];

        if ((v8 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v10 = self->_unityDescription;
      v11 = v10;
      if (v10 == v5->_unityDescription)
      {
      }

      else
      {
        v12 = [(NSString *)v10 isEqual:?];

        if ((v12 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      type = self->_type;
      if (type == [(ATXFaceGallerySection *)v5 type])
      {
        v14 = self->_items;
        v15 = v14;
        if (v14 == v5->_items)
        {
        }

        else
        {
          v16 = [(NSArray *)v14 isEqual:?];

          if ((v16 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        semanticType = self->_semanticType;
        v9 = semanticType == [(ATXFaceGallerySection *)v5 semanticType];
        goto LABEL_17;
      }

LABEL_16:
      v9 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v9 = 0;
  }

LABEL_18:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_localizedTitle hash];
  v4 = [(NSString *)self->_unityDescription hash];
  v5 = self->_type - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
  v6 = [(NSArray *)self->_items hash];
  return self->_semanticType - (v6 - v5 + 32 * v5) + 32 * (v6 - v5 + 32 * v5);
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (NSDictionary)jsonDictionary
{
  v20[4] = *MEMORY[0x1E69E9840];
  v19[0] = @"type";
  v3 = [(ATXFaceGallerySection *)self type];
  if (v3 >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v3];
  }

  else
  {
    v4 = off_1E80C4658[v3 & 7];
  }

  v20[0] = v4;
  v19[1] = @"items";
  v5 = [(ATXFaceGallerySection *)self items];
  v6 = [v5 _pas_mappedArrayWithTransform:&__block_literal_global_91];
  v20[1] = v6;
  v19[2] = @"semanticType";
  v7 = [(ATXFaceGallerySection *)self semanticType];
  if (v7 >= 0xF)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v7];
  }

  else
  {
    v8 = off_1E80C4680[v7 & 0xF];
  }

  v20[2] = v8;
  v19[3] = @"localizedTitle";
  v9 = [(ATXFaceGallerySection *)self localizedTitle];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v20[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
  v12 = [v11 mutableCopy];

  if (!v9)
  {
  }

  v13 = [(ATXFaceGallerySection *)self localizedSubtitle];
  [v12 setObject:v13 forKeyedSubscript:@"localizedSubtitle"];

  v14 = [(ATXFaceGallerySection *)self localizedDescriptiveText];
  [v12 setObject:v14 forKeyedSubscript:@"localizedDescriptiveText"];

  v15 = [(ATXFaceGallerySection *)self symbolImageName];
  [v12 setObject:v15 forKeyedSubscript:@"symbolImageName"];

  v16 = [(ATXFaceGallerySection *)self symbolColorName];
  [v12 setObject:v16 forKeyedSubscript:@"symbolColorName"];

  v17 = [v12 copy];

  return v17;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(ATXFaceGallerySection *)self jsonDictionary];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
}

- (ATXFaceGallerySection)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBFaceGallerySection alloc] initWithData:v4];

    self = [(ATXFaceGallerySection *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(ATXFaceGallerySection *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXFaceGallerySection)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(ATXDigestTimeline *)self initWithProto:v15];
    }

    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v5 type];
  v7 = [v5 items];
  v8 = [v7 _pas_mappedArrayWithTransform:&__block_literal_global_97];
  v9 = v8;
  v10 = MEMORY[0x1E695E0F0];
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [v5 semanticType];
  v13 = [(ATXFaceGallerySection *)self initWithLocalizedTitle:&stru_1F3E050C8 symbolImageName:0 symbolColorName:0 localizedSubtitle:0 localizedDescriptiveText:0 unityDescription:0 type:v6 items:v11 semanticType:v12];

  self = v13;
  v14 = self;
LABEL_10:

  return v14;
}

ATXFaceGalleryItem *__39__ATXFaceGallerySection_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXFaceGalleryItem alloc] initWithProto:v2];

  return v3;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setType:{-[ATXFaceGallerySection type](self, "type")}];
  v4 = [(ATXFaceGallerySection *)self items];
  v5 = [v4 _pas_mappedArrayWithTransform:&__block_literal_global_100];
  v6 = [v5 mutableCopy];
  [v3 setItems:v6];

  [v3 setSemanticType:{-[ATXFaceGallerySection semanticType](self, "semanticType")}];

  return v3;
}

@end