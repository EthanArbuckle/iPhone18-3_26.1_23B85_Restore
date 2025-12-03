@interface ATXFaceGalleryItem
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)itemFromJSONDictionary:(id)dictionary;
- (ATXFaceGalleryItem)initWithCoder:(id)coder;
- (ATXFaceGalleryItem)initWithIdentifier:(id)identifier descriptorIdentifier:(id)descriptorIdentifier extensionBundleIdentifier:(id)bundleIdentifier localizedDisplayName:(id)name modeSemanticType:(id)type titleFontName:(id)fontName titleColor:(id)color subtitleComplication:(id)self0 layoutType:(int64_t)self1 complications:(id)self2 landscapeComplications:(id)self3;
- (ATXFaceGalleryItem)initWithProto:(id)proto;
- (ATXFaceGalleryItem)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXFaceGalleryItem:(id)item;
- (NSDictionary)jsonDictionary;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeAsProto;
- (id)json;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXFaceGalleryItem

- (ATXFaceGalleryItem)initWithIdentifier:(id)identifier descriptorIdentifier:(id)descriptorIdentifier extensionBundleIdentifier:(id)bundleIdentifier localizedDisplayName:(id)name modeSemanticType:(id)type titleFontName:(id)fontName titleColor:(id)color subtitleComplication:(id)self0 layoutType:(int64_t)self1 complications:(id)self2 landscapeComplications:(id)self3
{
  identifierCopy = identifier;
  descriptorIdentifierCopy = descriptorIdentifier;
  bundleIdentifierCopy = bundleIdentifier;
  nameCopy = name;
  typeCopy = type;
  fontNameCopy = fontName;
  colorCopy = color;
  complicationCopy = complication;
  complicationsCopy = complications;
  landscapeComplicationsCopy = landscapeComplications;
  v49.receiver = self;
  v49.super_class = ATXFaceGalleryItem;
  v26 = [(ATXFaceGalleryItem *)&v49 init];
  if (v26)
  {
    v27 = [identifierCopy copy];
    identifier = v26->_identifier;
    v26->_identifier = v27;

    v29 = [descriptorIdentifierCopy copy];
    descriptorIdentifier = v26->_descriptorIdentifier;
    v26->_descriptorIdentifier = v29;

    v31 = [bundleIdentifierCopy copy];
    extensionBundleIdentifier = v26->_extensionBundleIdentifier;
    v26->_extensionBundleIdentifier = v31;

    v33 = [nameCopy copy];
    localizedDisplayName = v26->_localizedDisplayName;
    v26->_localizedDisplayName = v33;

    objc_storeStrong(&v26->_modeSemanticType, type);
    v35 = [fontNameCopy copy];
    titleFontName = v26->_titleFontName;
    v26->_titleFontName = v35;

    v37 = [colorCopy copy];
    titleColor = v26->_titleColor;
    v26->_titleColor = v37;

    v39 = [complicationCopy copy];
    subtitleComplication = v26->_subtitleComplication;
    v26->_subtitleComplication = v39;

    v26->_layoutType = layoutType;
    v41 = [complicationsCopy copy];
    complications = v26->_complications;
    v26->_complications = v41;

    v43 = [landscapeComplicationsCopy copy];
    landscapeComplications = v26->_landscapeComplications;
    v26->_landscapeComplications = v43;
  }

  return v26;
}

+ (id)itemFromJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v6 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];

    uUIDString = v8;
  }

  uUID2 = [MEMORY[0x1E696AFB0] UUID];
  uUIDString2 = [uUID2 UUIDString];

  v11 = [dictionaryCopy objectForKeyedSubscript:@"descriptorIdentifier"];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    v13 = [dictionaryCopy objectForKeyedSubscript:@"descriptorIdentifier"];

    uUIDString2 = v13;
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"extensionBundleIdentifier"];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
    v46 = [dictionaryCopy objectForKeyedSubscript:@"extensionBundleIdentifier"];
    v16 = [dictionaryCopy objectForKeyedSubscript:@"localizedDisplayName"];
    objc_opt_class();
    v17 = objc_opt_isKindOfClass();

    if (v17)
    {
      v18 = [dictionaryCopy objectForKeyedSubscript:@"localizedDisplayName"];
    }

    else
    {
      v18 = &stru_1F3E050C8;
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"subtitleComplication"];
    objc_opt_class();
    v22 = objc_opt_isKindOfClass();

    if (v22)
    {
      v23 = [dictionaryCopy objectForKeyedSubscript:@"subtitleComplication"];
      v24 = [ATXComplication complicationFromDictionaryRepresentation:v23 error:0];
    }

    else
    {
      v24 = 0;
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"complications"];
    objc_opt_class();
    v26 = objc_opt_isKindOfClass();

    v27 = MEMORY[0x1E695E0F0];
    v28 = MEMORY[0x1E695E0F0];
    if (v26)
    {
      v29 = [dictionaryCopy objectForKeyedSubscript:@"complications"];
      v28 = [v29 _pas_mappedArrayWithTransform:&__block_literal_global_25];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"landscapeComplications"];
    objc_opt_class();
    v31 = objc_opt_isKindOfClass();

    if (v31)
    {
      v32 = [dictionaryCopy objectForKeyedSubscript:@"landscapeComplications"];
      v33 = [v32 _pas_mappedArrayWithTransform:&__block_literal_global_85];

      v28 = v33;
    }

    v34 = [ATXFaceGalleryItem alloc];
    v35 = objc_opt_new();
    v20 = [(ATXFaceGalleryItem *)v34 initWithIdentifier:uUIDString descriptorIdentifier:uUIDString2 extensionBundleIdentifier:v46 localizedDisplayName:v18 modeSemanticType:0 titleFontName:&stru_1F3E050C8 titleColor:v35 subtitleComplication:v24 layoutType:0 complications:v28 landscapeComplications:v27];

    v36 = [dictionaryCopy objectForKeyedSubscript:@"blankTemplate"];
    objc_opt_class();
    v37 = objc_opt_isKindOfClass();

    if (v37)
    {
      v38 = [dictionaryCopy objectForKeyedSubscript:@"blankTemplate"];
      -[ATXFaceGalleryItem setBlankTemplate:](v20, "setBlankTemplate:", [v38 BOOLValue]);
    }

    v39 = [dictionaryCopy objectForKeyedSubscript:@"shouldShowAsShuffleStack"];
    objc_opt_class();
    v40 = objc_opt_isKindOfClass();

    if (v40)
    {
      v41 = [dictionaryCopy objectForKeyedSubscript:@"shouldShowAsShuffleStack"];
      -[ATXFaceGalleryItem setShouldShowAsShuffleStack:](v20, "setShouldShowAsShuffleStack:", [v41 BOOLValue]);
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"source"];
    objc_opt_class();
    v43 = objc_opt_isKindOfClass();

    if (v43)
    {
      v44 = [dictionaryCopy objectForKeyedSubscript:@"source"];
      -[ATXFaceGalleryItem setSource:](v20, "setSource:", [v44 integerValue]);
    }
  }

  else
  {
    v19 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ATXFaceGalleryItem itemFromJSONDictionary:v19];
    }

    v20 = 0;
  }

  return v20;
}

id __45__ATXFaceGalleryItem_itemFromJSONDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [ATXComplication complicationFromDictionaryRepresentation:v2 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __45__ATXFaceGalleryItem_itemFromJSONDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [ATXComplication complicationFromDictionaryRepresentation:v2 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)description
{
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(ATXFaceGalleryItem *)self identifier];
  descriptorIdentifier = [(ATXFaceGalleryItem *)self descriptorIdentifier];
  extensionBundleIdentifier = [(ATXFaceGalleryItem *)self extensionBundleIdentifier];
  displayNameLocalizationKey = [(ATXFaceGalleryItem *)self displayNameLocalizationKey];
  localizedDisplayName = [(ATXFaceGalleryItem *)self localizedDisplayName];
  titleFontName = [(ATXFaceGalleryItem *)self titleFontName];
  titleColor = [(ATXFaceGalleryItem *)self titleColor];
  subtitleComplication = [(ATXFaceGalleryItem *)self subtitleComplication];
  layoutType = [(ATXFaceGalleryItem *)self layoutType];
  complications = [(ATXFaceGalleryItem *)self complications];
  landscapeComplications = [(ATXFaceGalleryItem *)self landscapeComplications];
  modeSemanticType = [(ATXFaceGalleryItem *)self modeSemanticType];
  score = [(ATXFaceGalleryItem *)self score];
  v9 = @"YES";
  if ([(ATXFaceGalleryItem *)self isBlankTemplate])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (![(ATXFaceGalleryItem *)self shouldShowAsShuffleStack])
  {
    v9 = @"NO";
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ATXFaceGalleryItem source](self, "source")}];
  v21 = [v20 initWithFormat:@"identifier: %@, descriptorIdentifier: %@, extensionBundleIdentifier: %@, displayNameLocalizationKey: %@, localizedDisplayName: %@, titleFontName: %@, titleColor: %@, subtitleComplication: %@, layoutType: %d, complications: %@, landscapeComplications: %@, modeSemanticType: %@, score: %@, blankTemplate: %@, shouldShowAsShuffleStack: %@, source: %@", identifier, descriptorIdentifier, extensionBundleIdentifier, displayNameLocalizationKey, localizedDisplayName, titleFontName, titleColor, subtitleComplication, layoutType, complications, landscapeComplications, modeSemanticType, score, v10, v9, v11];

  return v21;
}

- (ATXFaceGalleryItem)initWithCoder:(id)coder
{
  v68[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"descriptorIdentifier"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
      if (v7)
      {
        v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayNameLocalizationKey"];
        v66 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"spokenNameLocalizationKey"];
        v65 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"descriptiveTextLocalizationKey"];
        v64 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDisplayName"];
        v63 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedSubtitle"];
        v62 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"titleFontName"];
        if (v62)
        {
          v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"titleColor"];
          if (v9)
          {
            v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modeSemanticType"];
            v61 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modeUUID"];
            v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitleComplication"];
            v55 = [coderCopy decodeIntegerForKey:@"layoutType"];
            v10 = MEMORY[0x1E695DFD8];
            v68[0] = objc_opt_class();
            v68[1] = objc_opt_class();
            [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
            v11 = v60 = v8;
            v12 = [v10 setWithArray:v11];
            v57 = [coderCopy decodeObjectOfClasses:v12 forKey:@"complications"];

            v13 = MEMORY[0x1E695DFD8];
            v67[0] = objc_opt_class();
            v67[1] = objc_opt_class();
            v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
            v15 = [v13 setWithArray:v14];
            v56 = [coderCopy decodeObjectOfClasses:v15 forKey:@"landscapeComplications"];

            v8 = v60;
            self = [(ATXFaceGalleryItem *)self initWithIdentifier:v5 descriptorIdentifier:v6 extensionBundleIdentifier:v7 localizedDisplayName:v64 modeSemanticType:v59 titleFontName:v62 titleColor:v9 subtitleComplication:v58 layoutType:v55 complications:v57 landscapeComplications:v56];
            [(ATXFaceGalleryItem *)self setDisplayNameLocalizationKey:v60];
            [(ATXFaceGalleryItem *)self setSpokenNameLocalizationKey:v66];
            [(ATXFaceGalleryItem *)self setDescriptiveTextLocalizationKey:v65];
            [(ATXFaceGalleryItem *)self setLocalizedSubtitle:v63];
            v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"score"];
            [(ATXFaceGalleryItem *)self setScore:v16];

            v17 = v59;
            [(ATXFaceGalleryItem *)self setModeUUID:v61];
            -[ATXFaceGalleryItem setBlankTemplate:](self, "setBlankTemplate:", [coderCopy decodeBoolForKey:@"blankTemplate"]);
            -[ATXFaceGalleryItem setShouldShowAsShuffleStack:](self, "setShouldShowAsShuffleStack:", [coderCopy decodeBoolForKey:@"shouldShowAsShuffleStack"]);
            -[ATXFaceGalleryItem setSource:](self, "setSource:", [coderCopy decodeIntegerForKey:@"source"]);

            selfCopy = self;
          }

          else
          {
            v17 = __atxlog_handle_lock_screen();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [(ATXFaceGalleryItem *)v17 initWithCoder:v47, v48, v49, v50, v51, v52, v53];
            }

            selfCopy = 0;
          }
        }

        else
        {
          v9 = __atxlog_handle_lock_screen();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            [(ATXFaceGalleryItem *)v9 initWithCoder:v40, v41, v42, v43, v44, v45, v46];
          }

          selfCopy = 0;
        }
      }

      else
      {
        v8 = __atxlog_handle_lock_screen();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(ATXFaceGalleryItem *)v8 initWithCoder:v33, v34, v35, v36, v37, v38, v39];
        }

        selfCopy = 0;
      }
    }

    else
    {
      v7 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(ATXFaceGalleryItem *)v7 initWithCoder:v26, v27, v28, v29, v30, v31, v32];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v6 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ATXFaceGalleryItem *)v6 initWithCoder:v19, v20, v21, v22, v23, v24, v25];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(ATXFaceGalleryItem *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  descriptorIdentifier = [(ATXFaceGalleryItem *)self descriptorIdentifier];
  [coderCopy encodeObject:descriptorIdentifier forKey:@"descriptorIdentifier"];

  extensionBundleIdentifier = [(ATXFaceGalleryItem *)self extensionBundleIdentifier];
  [coderCopy encodeObject:extensionBundleIdentifier forKey:@"extensionBundleIdentifier"];

  localizedDisplayName = [(ATXFaceGalleryItem *)self localizedDisplayName];
  [coderCopy encodeObject:localizedDisplayName forKey:@"localizedDisplayName"];

  displayNameLocalizationKey = [(ATXFaceGalleryItem *)self displayNameLocalizationKey];
  [coderCopy encodeObject:displayNameLocalizationKey forKey:@"displayNameLocalizationKey"];

  spokenNameLocalizationKey = [(ATXFaceGalleryItem *)self spokenNameLocalizationKey];
  [coderCopy encodeObject:spokenNameLocalizationKey forKey:@"spokenNameLocalizationKey"];

  descriptiveTextLocalizationKey = [(ATXFaceGalleryItem *)self descriptiveTextLocalizationKey];
  [coderCopy encodeObject:descriptiveTextLocalizationKey forKey:@"descriptiveTextLocalizationKey"];

  localizedSubtitle = [(ATXFaceGalleryItem *)self localizedSubtitle];
  [coderCopy encodeObject:localizedSubtitle forKey:@"localizedSubtitle"];

  titleFontName = [(ATXFaceGalleryItem *)self titleFontName];
  [coderCopy encodeObject:titleFontName forKey:@"titleFontName"];

  titleColor = [(ATXFaceGalleryItem *)self titleColor];
  [coderCopy encodeObject:titleColor forKey:@"titleColor"];

  subtitleComplication = [(ATXFaceGalleryItem *)self subtitleComplication];
  [coderCopy encodeObject:subtitleComplication forKey:@"subtitleComplication"];

  [coderCopy encodeInteger:-[ATXFaceGalleryItem layoutType](self forKey:{"layoutType"), @"layoutType"}];
  complications = [(ATXFaceGalleryItem *)self complications];
  [coderCopy encodeObject:complications forKey:@"complications"];

  landscapeComplications = [(ATXFaceGalleryItem *)self landscapeComplications];
  [coderCopy encodeObject:landscapeComplications forKey:@"landscapeComplications"];

  modeSemanticType = [(ATXFaceGalleryItem *)self modeSemanticType];
  [coderCopy encodeObject:modeSemanticType forKey:@"modeSemanticType"];

  score = [(ATXFaceGalleryItem *)self score];
  [coderCopy encodeObject:score forKey:@"score"];

  modeUUID = [(ATXFaceGalleryItem *)self modeUUID];
  [coderCopy encodeObject:modeUUID forKey:@"modeUUID"];

  [coderCopy encodeBool:-[ATXFaceGalleryItem isBlankTemplate](self forKey:{"isBlankTemplate"), @"blankTemplate"}];
  [coderCopy encodeBool:-[ATXFaceGalleryItem shouldShowAsShuffleStack](self forKey:{"shouldShowAsShuffleStack"), @"shouldShowAsShuffleStack"}];
  [coderCopy encodeInteger:-[ATXFaceGalleryItem source](self forKey:{"source"), @"source"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = [objc_opt_class() allocWithZone:zone];
  identifier = [(ATXFaceGalleryItem *)self identifier];
  descriptorIdentifier = [(ATXFaceGalleryItem *)self descriptorIdentifier];
  extensionBundleIdentifier = [(ATXFaceGalleryItem *)self extensionBundleIdentifier];
  localizedDisplayName = [(ATXFaceGalleryItem *)self localizedDisplayName];
  modeSemanticType = [(ATXFaceGalleryItem *)self modeSemanticType];
  titleFontName = [(ATXFaceGalleryItem *)self titleFontName];
  titleColor = [(ATXFaceGalleryItem *)self titleColor];
  subtitleComplication = [(ATXFaceGalleryItem *)self subtitleComplication];
  layoutType = [(ATXFaceGalleryItem *)self layoutType];
  complications = [(ATXFaceGalleryItem *)self complications];
  landscapeComplications = [(ATXFaceGalleryItem *)self landscapeComplications];
  v11 = [v23 initWithIdentifier:identifier descriptorIdentifier:descriptorIdentifier extensionBundleIdentifier:extensionBundleIdentifier localizedDisplayName:localizedDisplayName modeSemanticType:modeSemanticType titleFontName:titleFontName titleColor:titleColor subtitleComplication:subtitleComplication layoutType:layoutType complications:complications landscapeComplications:landscapeComplications];

  displayNameLocalizationKey = [(ATXFaceGalleryItem *)self displayNameLocalizationKey];
  [v11 setDisplayNameLocalizationKey:displayNameLocalizationKey];

  spokenNameLocalizationKey = [(ATXFaceGalleryItem *)self spokenNameLocalizationKey];
  [v11 setSpokenNameLocalizationKey:spokenNameLocalizationKey];

  descriptiveTextLocalizationKey = [(ATXFaceGalleryItem *)self descriptiveTextLocalizationKey];
  [v11 setDescriptiveTextLocalizationKey:descriptiveTextLocalizationKey];

  localizedSubtitle = [(ATXFaceGalleryItem *)self localizedSubtitle];
  [v11 setLocalizedSubtitle:localizedSubtitle];

  score = [(ATXFaceGalleryItem *)self score];
  [v11 setScore:score];

  modeUUID = [(ATXFaceGalleryItem *)self modeUUID];
  [v11 setModeUUID:modeUUID];

  [v11 setBlankTemplate:{-[ATXFaceGalleryItem isBlankTemplate](self, "isBlankTemplate")}];
  [v11 setShouldShowAsShuffleStack:{-[ATXFaceGalleryItem shouldShowAsShuffleStack](self, "shouldShowAsShuffleStack")}];
  [v11 setSource:{-[ATXFaceGalleryItem source](self, "source")}];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXFaceGalleryItem *)self isEqualToATXFaceGalleryItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXFaceGalleryItem:(id)item
{
  v4 = self->_identifier;
  v5 = v4;
  if (v4 == *(item + 2))
  {
    v6 = 1;
  }

  else
  {
    v6 = [(NSString *)v4 isEqual:?];
  }

  return v6;
}

- (unint64_t)hash
{
  identifier = [(ATXFaceGalleryItem *)self identifier];

  return identifier;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (NSDictionary)jsonDictionary
{
  v27[9] = *MEMORY[0x1E69E9840];
  v26[0] = @"identifier";
  identifier = [(ATXFaceGalleryItem *)self identifier];
  v27[0] = identifier;
  v26[1] = @"descriptorIdentifier";
  descriptorIdentifier = [(ATXFaceGalleryItem *)self descriptorIdentifier];
  v27[1] = descriptorIdentifier;
  v26[2] = @"extensionBundleIdentifier";
  extensionBundleIdentifier = [(ATXFaceGalleryItem *)self extensionBundleIdentifier];
  v27[2] = extensionBundleIdentifier;
  v26[3] = @"localizedDisplayName";
  localizedDisplayName = [(ATXFaceGalleryItem *)self localizedDisplayName];
  v4 = localizedDisplayName;
  if (!localizedDisplayName)
  {
    localizedDisplayName = [MEMORY[0x1E695DFB0] null];
  }

  v20 = localizedDisplayName;
  v27[3] = localizedDisplayName;
  v26[4] = @"displayNameLocalizationKey";
  displayNameLocalizationKey = [(ATXFaceGalleryItem *)self displayNameLocalizationKey];
  v6 = displayNameLocalizationKey;
  if (!displayNameLocalizationKey)
  {
    displayNameLocalizationKey = [MEMORY[0x1E695DFB0] null];
  }

  v19 = displayNameLocalizationKey;
  v27[4] = displayNameLocalizationKey;
  v26[5] = @"subtitleComplication";
  subtitleComplication = [(ATXFaceGalleryItem *)self subtitleComplication];
  dictionaryRepresentation = [subtitleComplication dictionaryRepresentation];
  v8 = dictionaryRepresentation;
  if (!dictionaryRepresentation)
  {
    dictionaryRepresentation = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v4;
  v27[5] = dictionaryRepresentation;
  v26[6] = @"complications";
  complications = [(ATXFaceGalleryItem *)self complications];
  v10 = [complications _pas_mappedArrayWithTransform:&__block_literal_global_102];
  null = v10;
  if (!v10)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v27[6] = null;
  v26[7] = @"landscapeComplications";
  landscapeComplications = [(ATXFaceGalleryItem *)self landscapeComplications];
  v13 = [landscapeComplications _pas_mappedArrayWithTransform:&__block_literal_global_104];
  null2 = v13;
  if (!v13)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v27[7] = null2;
  v26[8] = @"source";
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ATXFaceGalleryItem source](self, "source")}];
  v27[8] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:9];

  if (!v13)
  {
  }

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v6)
  {
  }

  if (!v22)
  {
  }

  return v16;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDictionary = [(ATXFaceGalleryItem *)self jsonDictionary];
  v4 = [v2 dataWithJSONObject:jsonDictionary options:1 error:0];

  return v4;
}

- (ATXFaceGalleryItem)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBFaceGalleryItem alloc] initWithData:dataCopy];

    self = [(ATXFaceGalleryItem *)self initWithProto:v5];
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
  proto = [(ATXFaceGalleryItem *)self proto];
  data = [proto data];

  return data;
}

- (ATXFaceGalleryItem)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(ATXDigestTimeline *)self initWithProto:v11];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  identifier = [v5 identifier];
  descriptorIdentifier = [v5 descriptorIdentifier];
  extensionBundleIdentifier = [v5 extensionBundleIdentifier];

  blackColor = [MEMORY[0x1E698E650] blackColor];
  self = [(ATXFaceGalleryItem *)self initWithIdentifier:identifier descriptorIdentifier:descriptorIdentifier extensionBundleIdentifier:extensionBundleIdentifier localizedDisplayName:&stru_1F3E050C8 modeSemanticType:0 titleFontName:&stru_1F3E050C8 titleColor:blackColor subtitleComplication:0 layoutType:0 complications:0 landscapeComplications:0];

  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  identifier = [(ATXFaceGalleryItem *)self identifier];
  [v3 setIdentifier:identifier];

  descriptorIdentifier = [(ATXFaceGalleryItem *)self descriptorIdentifier];
  [v3 setDescriptorIdentifier:descriptorIdentifier];

  extensionBundleIdentifier = [(ATXFaceGalleryItem *)self extensionBundleIdentifier];
  [v3 setExtensionBundleIdentifier:extensionBundleIdentifier];

  return v3;
}

+ (void)itemFromJSONDictionary:(os_log_t)log .cold.1(os_log_t log)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = 136315394;
  v2 = "+[ATXFaceGalleryItem itemFromJSONDictionary:]";
  v3 = 2112;
  v4 = @"extensionBundleIdentifier";
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "%s: missing key: %@", &v1, 0x16u);
}

@end