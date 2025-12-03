@interface ATXFaceGallerySection
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)sectionFromJSONDictionary:(id)dictionary;
- (ATXFaceGallerySection)initWithCoder:(id)coder;
- (ATXFaceGallerySection)initWithLocalizedTitle:(id)title symbolImageName:(id)name symbolColorName:(id)colorName localizedSubtitle:(id)subtitle localizedDescriptiveText:(id)text unityDescription:(id)description type:(int64_t)type items:(id)self0 semanticType:(int64_t)self1;
- (ATXFaceGallerySection)initWithProto:(id)proto;
- (ATXFaceGallerySection)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)jsonDictionary;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeAsProto;
- (id)json;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXFaceGallerySection

- (ATXFaceGallerySection)initWithLocalizedTitle:(id)title symbolImageName:(id)name symbolColorName:(id)colorName localizedSubtitle:(id)subtitle localizedDescriptiveText:(id)text unityDescription:(id)description type:(int64_t)type items:(id)self0 semanticType:(int64_t)self1
{
  titleCopy = title;
  nameCopy = name;
  colorNameCopy = colorName;
  subtitleCopy = subtitle;
  textCopy = text;
  descriptionCopy = description;
  itemsCopy = items;
  v40.receiver = self;
  v40.super_class = ATXFaceGallerySection;
  v24 = [(ATXFaceGallerySection *)&v40 init];
  if (v24)
  {
    v25 = [titleCopy copy];
    localizedTitle = v24->_localizedTitle;
    v24->_localizedTitle = v25;

    v27 = [subtitleCopy copy];
    localizedSubtitle = v24->_localizedSubtitle;
    v24->_localizedSubtitle = v27;

    v29 = [nameCopy copy];
    symbolImageName = v24->_symbolImageName;
    v24->_symbolImageName = v29;

    v31 = [colorNameCopy copy];
    symbolColorName = v24->_symbolColorName;
    v24->_symbolColorName = v31;

    v33 = [textCopy copy];
    localizedDescriptiveText = v24->_localizedDescriptiveText;
    v24->_localizedDescriptiveText = v33;

    v35 = [descriptionCopy copy];
    unityDescription = v24->_unityDescription;
    v24->_unityDescription = v35;

    v24->_type = type;
    v37 = [itemsCopy copy];
    items = v24->_items;
    v24->_items = v37;

    v24->_semanticType = semanticType;
  }

  return v24;
}

+ (id)sectionFromJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"localizedTitle"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v35 = [dictionaryCopy objectForKeyedSubscript:@"localizedTitle"];
  }

  else
  {
    v35 = 0;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"localizedSubtitle"];
  objc_opt_class();
  v7 = objc_opt_isKindOfClass();

  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"localizedSubtitle"];
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"symbolImageName"];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();

  if (v10)
  {
    v11 = [dictionaryCopy objectForKeyedSubscript:@"symbolImageName"];
  }

  else
  {
    v11 = 0;
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"symbolColorName"];
  objc_opt_class();
  v13 = objc_opt_isKindOfClass();

  if (v13)
  {
    v14 = [dictionaryCopy objectForKeyedSubscript:@"symbolColorName"];
  }

  else
  {
    v14 = 0;
  }

  v15 = [dictionaryCopy objectForKeyedSubscript:@"localizedDescriptiveText"];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  if (v16)
  {
    v17 = [dictionaryCopy objectForKeyedSubscript:@"localizedDescriptiveText"];
  }

  else
  {
    v17 = 0;
  }

  v18 = [dictionaryCopy objectForKeyedSubscript:@"unityDescription"];
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  if (v19)
  {
    v20 = [dictionaryCopy objectForKeyedSubscript:@"unityDescription"];
  }

  else
  {
    v20 = &stru_1F3E050C8;
  }

  v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
  objc_opt_class();
  v22 = objc_opt_isKindOfClass();

  if (v22)
  {
    v23 = [dictionaryCopy objectForKeyedSubscript:@"type"];
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

  v25 = [dictionaryCopy objectForKeyedSubscript:@"items"];
  objc_opt_class();
  v26 = objc_opt_isKindOfClass();

  if (v26)
  {
    v27 = [dictionaryCopy objectForKeyedSubscript:@"items"];
    v28 = [v27 _pas_mappedArrayWithTransform:&__block_literal_global_76];
  }

  else
  {
    v28 = MEMORY[0x1E695E0F0];
  }

  v29 = [dictionaryCopy objectForKeyedSubscript:@"semanticType"];
  objc_opt_class();
  v30 = objc_opt_isKindOfClass();

  if (v30)
  {
    v31 = [dictionaryCopy objectForKeyedSubscript:@"semanticType"];
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
  localizedTitle = [(ATXFaceGallerySection *)self localizedTitle];
  v6 = [v4 initWithFormat:@"    localizedTitle: %@", localizedTitle];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  symbolImageName = [(ATXFaceGallerySection *)self symbolImageName];
  v9 = [v7 initWithFormat:@"    symbolImageName: %@", symbolImageName];
  [v3 addObject:v9];

  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  symbolColorName = [(ATXFaceGallerySection *)self symbolColorName];
  v12 = [v10 initWithFormat:@"    symbolColorName: %@", symbolColorName];
  [v3 addObject:v12];

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  localizedSubtitle = [(ATXFaceGallerySection *)self localizedSubtitle];
  v15 = [v13 initWithFormat:@"    localizedSubtitle: %@", localizedSubtitle];
  [v3 addObject:v15];

  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  localizedDescriptiveText = [(ATXFaceGallerySection *)self localizedDescriptiveText];
  v18 = [v16 initWithFormat:@"    localizedDescriptiveText: %@", localizedDescriptiveText];
  [v3 addObject:v18];

  v19 = objc_alloc(MEMORY[0x1E696AEC0]);
  unityDescription = [(ATXFaceGallerySection *)self unityDescription];
  v21 = [v19 initWithFormat:@"    unityDescription: %@", unityDescription];
  [v3 addObject:v21];

  v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"    type: %zd", -[ATXFaceGallerySection type](self, "type")];
  [v3 addObject:v22];

  [v3 addObject:@"    items:"];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  items = [(ATXFaceGallerySection *)self items];
  v24 = [items countByEnumeratingWithState:&v34 objects:v38 count:16];
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
          objc_enumerationMutation(items);
        }

        v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"        %@", *(*(&v34 + 1) + 8 * i)];
        [v3 addObject:v28];
      }

      v25 = [items countByEnumeratingWithState:&v34 objects:v38 count:16];
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

- (ATXFaceGallerySection)initWithCoder:(id)coder
{
  v26[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedSubtitle"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescriptiveText"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolImageName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolColorName"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unityDescription"];
  v9 = [coderCopy decodeIntegerForKey:@"type"];
  v10 = MEMORY[0x1E695DFD8];
  v26[0] = objc_opt_class();
  v26[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v12 = [v10 setWithArray:v11];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"items"];

  if (v13)
  {
    v23 = v9;
    v14 = v6;
    v15 = v5;
    v16 = v4;
    v17 = v24;
    v18 = v8;
    selfCopy = -[ATXFaceGallerySection initWithLocalizedTitle:symbolImageName:symbolColorName:localizedSubtitle:localizedDescriptiveText:unityDescription:type:items:semanticType:](self, "initWithLocalizedTitle:symbolImageName:symbolColorName:localizedSubtitle:localizedDescriptiveText:unityDescription:type:items:semanticType:", v24, v14, v7, v16, v15, v8, v23, v13, [coderCopy decodeIntegerForKey:@"semanticType"]);
    v20 = selfCopy;
  }

  else
  {
    v18 = v8;
    v14 = v6;
    v15 = v5;
    v16 = v4;
    v17 = v24;
    selfCopy = self;
    v21 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [ATXFaceGallerySection initWithCoder:v21];
    }

    v20 = 0;
  }

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  localizedTitle = [(ATXFaceGallerySection *)self localizedTitle];
  [coderCopy encodeObject:localizedTitle forKey:@"localizedTitle"];

  localizedSubtitle = [(ATXFaceGallerySection *)self localizedSubtitle];
  [coderCopy encodeObject:localizedSubtitle forKey:@"localizedSubtitle"];

  symbolImageName = [(ATXFaceGallerySection *)self symbolImageName];
  [coderCopy encodeObject:symbolImageName forKey:@"symbolImageName"];

  symbolColorName = [(ATXFaceGallerySection *)self symbolColorName];
  [coderCopy encodeObject:symbolColorName forKey:@"symbolColorName"];

  localizedDescriptiveText = [(ATXFaceGallerySection *)self localizedDescriptiveText];
  [coderCopy encodeObject:localizedDescriptiveText forKey:@"localizedDescriptiveText"];

  unityDescription = [(ATXFaceGallerySection *)self unityDescription];
  [coderCopy encodeObject:unityDescription forKey:@"unityDescription"];

  [coderCopy encodeInteger:-[ATXFaceGallerySection type](self forKey:{"type"), @"type"}];
  items = [(ATXFaceGallerySection *)self items];
  [coderCopy encodeObject:items forKey:@"items"];

  [coderCopy encodeInteger:-[ATXFaceGallerySection semanticType](self forKey:{"semanticType"), @"semanticType"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  localizedTitle = [(ATXFaceGallerySection *)self localizedTitle];
  symbolImageName = [(ATXFaceGallerySection *)self symbolImageName];
  symbolColorName = [(ATXFaceGallerySection *)self symbolColorName];
  localizedSubtitle = [(ATXFaceGallerySection *)self localizedSubtitle];
  localizedDescriptiveText = [(ATXFaceGallerySection *)self localizedDescriptiveText];
  unityDescription = [(ATXFaceGallerySection *)self unityDescription];
  type = [(ATXFaceGallerySection *)self type];
  items = [(ATXFaceGallerySection *)self items];
  v13 = [v4 initWithLocalizedTitle:localizedTitle symbolImageName:symbolImageName symbolColorName:symbolColorName localizedSubtitle:localizedSubtitle localizedDescriptiveText:localizedDescriptiveText unityDescription:unityDescription type:type items:items semanticType:{-[ATXFaceGallerySection semanticType](self, "semanticType")}];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (NSDictionary)jsonDictionary
{
  v20[4] = *MEMORY[0x1E69E9840];
  v19[0] = @"type";
  type = [(ATXFaceGallerySection *)self type];
  if (type >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
  }

  else
  {
    v4 = off_1E80C4658[type & 7];
  }

  v20[0] = v4;
  v19[1] = @"items";
  items = [(ATXFaceGallerySection *)self items];
  v6 = [items _pas_mappedArrayWithTransform:&__block_literal_global_91];
  v20[1] = v6;
  v19[2] = @"semanticType";
  semanticType = [(ATXFaceGallerySection *)self semanticType];
  if (semanticType >= 0xF)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", semanticType];
  }

  else
  {
    v8 = off_1E80C4680[semanticType & 0xF];
  }

  v20[2] = v8;
  v19[3] = @"localizedTitle";
  localizedTitle = [(ATXFaceGallerySection *)self localizedTitle];
  null = localizedTitle;
  if (!localizedTitle)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20[3] = null;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
  v12 = [v11 mutableCopy];

  if (!localizedTitle)
  {
  }

  localizedSubtitle = [(ATXFaceGallerySection *)self localizedSubtitle];
  [v12 setObject:localizedSubtitle forKeyedSubscript:@"localizedSubtitle"];

  localizedDescriptiveText = [(ATXFaceGallerySection *)self localizedDescriptiveText];
  [v12 setObject:localizedDescriptiveText forKeyedSubscript:@"localizedDescriptiveText"];

  symbolImageName = [(ATXFaceGallerySection *)self symbolImageName];
  [v12 setObject:symbolImageName forKeyedSubscript:@"symbolImageName"];

  symbolColorName = [(ATXFaceGallerySection *)self symbolColorName];
  [v12 setObject:symbolColorName forKeyedSubscript:@"symbolColorName"];

  v17 = [v12 copy];

  return v17;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDictionary = [(ATXFaceGallerySection *)self jsonDictionary];
  v4 = [v2 dataWithJSONObject:jsonDictionary options:1 error:0];

  return v4;
}

- (ATXFaceGallerySection)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBFaceGallerySection alloc] initWithData:dataCopy];

    self = [(ATXFaceGallerySection *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(ATXFaceGallerySection *)self proto];
  data = [proto data];

  return data;
}

- (ATXFaceGallerySection)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_9:
    selfCopy = 0;
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

  v5 = protoCopy;
  type = [v5 type];
  items = [v5 items];
  v8 = [items _pas_mappedArrayWithTransform:&__block_literal_global_97];
  v9 = v8;
  v10 = MEMORY[0x1E695E0F0];
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  semanticType = [v5 semanticType];
  v13 = [(ATXFaceGallerySection *)self initWithLocalizedTitle:&stru_1F3E050C8 symbolImageName:0 symbolColorName:0 localizedSubtitle:0 localizedDescriptiveText:0 unityDescription:0 type:type items:v11 semanticType:semanticType];

  self = v13;
  selfCopy = self;
LABEL_10:

  return selfCopy;
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
  items = [(ATXFaceGallerySection *)self items];
  v5 = [items _pas_mappedArrayWithTransform:&__block_literal_global_100];
  v6 = [v5 mutableCopy];
  [v3 setItems:v6];

  [v3 setSemanticType:{-[ATXFaceGallerySection semanticType](self, "semanticType")}];

  return v3;
}

@end