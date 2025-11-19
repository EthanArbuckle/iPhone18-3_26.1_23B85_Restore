@interface ATXFaceGalleryItem
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)itemFromJSONDictionary:(id)a3;
- (ATXFaceGalleryItem)initWithCoder:(id)a3;
- (ATXFaceGalleryItem)initWithIdentifier:(id)a3 descriptorIdentifier:(id)a4 extensionBundleIdentifier:(id)a5 localizedDisplayName:(id)a6 modeSemanticType:(id)a7 titleFontName:(id)a8 titleColor:(id)a9 subtitleComplication:(id)a10 layoutType:(int64_t)a11 complications:(id)a12 landscapeComplications:(id)a13;
- (ATXFaceGalleryItem)initWithProto:(id)a3;
- (ATXFaceGalleryItem)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXFaceGalleryItem:(id)a3;
- (NSDictionary)jsonDictionary;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodeAsProto;
- (id)json;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXFaceGalleryItem

- (ATXFaceGalleryItem)initWithIdentifier:(id)a3 descriptorIdentifier:(id)a4 extensionBundleIdentifier:(id)a5 localizedDisplayName:(id)a6 modeSemanticType:(id)a7 titleFontName:(id)a8 titleColor:(id)a9 subtitleComplication:(id)a10 layoutType:(int64_t)a11 complications:(id)a12 landscapeComplications:(id)a13
{
  v48 = a3;
  v47 = a4;
  v19 = a5;
  v20 = a6;
  v46 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a12;
  v25 = a13;
  v49.receiver = self;
  v49.super_class = ATXFaceGalleryItem;
  v26 = [(ATXFaceGalleryItem *)&v49 init];
  if (v26)
  {
    v27 = [v48 copy];
    identifier = v26->_identifier;
    v26->_identifier = v27;

    v29 = [v47 copy];
    descriptorIdentifier = v26->_descriptorIdentifier;
    v26->_descriptorIdentifier = v29;

    v31 = [v19 copy];
    extensionBundleIdentifier = v26->_extensionBundleIdentifier;
    v26->_extensionBundleIdentifier = v31;

    v33 = [v20 copy];
    localizedDisplayName = v26->_localizedDisplayName;
    v26->_localizedDisplayName = v33;

    objc_storeStrong(&v26->_modeSemanticType, a7);
    v35 = [v21 copy];
    titleFontName = v26->_titleFontName;
    v26->_titleFontName = v35;

    v37 = [v22 copy];
    titleColor = v26->_titleColor;
    v26->_titleColor = v37;

    v39 = [v23 copy];
    subtitleComplication = v26->_subtitleComplication;
    v26->_subtitleComplication = v39;

    v26->_layoutType = a11;
    v41 = [v24 copy];
    complications = v26->_complications;
    v26->_complications = v41;

    v43 = [v25 copy];
    landscapeComplications = v26->_landscapeComplications;
    v26->_landscapeComplications = v43;
  }

  return v26;
}

+ (id)itemFromJSONDictionary:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AFB0] UUID];
  v5 = [v4 UUIDString];

  v6 = [v3 objectForKeyedSubscript:@"identifier"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [v3 objectForKeyedSubscript:@"identifier"];

    v5 = v8;
  }

  v9 = [MEMORY[0x1E696AFB0] UUID];
  v10 = [v9 UUIDString];

  v11 = [v3 objectForKeyedSubscript:@"descriptorIdentifier"];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    v13 = [v3 objectForKeyedSubscript:@"descriptorIdentifier"];

    v10 = v13;
  }

  v14 = [v3 objectForKeyedSubscript:@"extensionBundleIdentifier"];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
    v46 = [v3 objectForKeyedSubscript:@"extensionBundleIdentifier"];
    v16 = [v3 objectForKeyedSubscript:@"localizedDisplayName"];
    objc_opt_class();
    v17 = objc_opt_isKindOfClass();

    if (v17)
    {
      v18 = [v3 objectForKeyedSubscript:@"localizedDisplayName"];
    }

    else
    {
      v18 = &stru_1F3E050C8;
    }

    v21 = [v3 objectForKeyedSubscript:@"subtitleComplication"];
    objc_opt_class();
    v22 = objc_opt_isKindOfClass();

    if (v22)
    {
      v23 = [v3 objectForKeyedSubscript:@"subtitleComplication"];
      v24 = [ATXComplication complicationFromDictionaryRepresentation:v23 error:0];
    }

    else
    {
      v24 = 0;
    }

    v25 = [v3 objectForKeyedSubscript:@"complications"];
    objc_opt_class();
    v26 = objc_opt_isKindOfClass();

    v27 = MEMORY[0x1E695E0F0];
    v28 = MEMORY[0x1E695E0F0];
    if (v26)
    {
      v29 = [v3 objectForKeyedSubscript:@"complications"];
      v28 = [v29 _pas_mappedArrayWithTransform:&__block_literal_global_25];
    }

    v30 = [v3 objectForKeyedSubscript:@"landscapeComplications"];
    objc_opt_class();
    v31 = objc_opt_isKindOfClass();

    if (v31)
    {
      v32 = [v3 objectForKeyedSubscript:@"landscapeComplications"];
      v33 = [v32 _pas_mappedArrayWithTransform:&__block_literal_global_85];

      v28 = v33;
    }

    v34 = [ATXFaceGalleryItem alloc];
    v35 = objc_opt_new();
    v20 = [(ATXFaceGalleryItem *)v34 initWithIdentifier:v5 descriptorIdentifier:v10 extensionBundleIdentifier:v46 localizedDisplayName:v18 modeSemanticType:0 titleFontName:&stru_1F3E050C8 titleColor:v35 subtitleComplication:v24 layoutType:0 complications:v28 landscapeComplications:v27];

    v36 = [v3 objectForKeyedSubscript:@"blankTemplate"];
    objc_opt_class();
    v37 = objc_opt_isKindOfClass();

    if (v37)
    {
      v38 = [v3 objectForKeyedSubscript:@"blankTemplate"];
      -[ATXFaceGalleryItem setBlankTemplate:](v20, "setBlankTemplate:", [v38 BOOLValue]);
    }

    v39 = [v3 objectForKeyedSubscript:@"shouldShowAsShuffleStack"];
    objc_opt_class();
    v40 = objc_opt_isKindOfClass();

    if (v40)
    {
      v41 = [v3 objectForKeyedSubscript:@"shouldShowAsShuffleStack"];
      -[ATXFaceGalleryItem setShouldShowAsShuffleStack:](v20, "setShouldShowAsShuffleStack:", [v41 BOOLValue]);
    }

    v42 = [v3 objectForKeyedSubscript:@"source"];
    objc_opt_class();
    v43 = objc_opt_isKindOfClass();

    if (v43)
    {
      v44 = [v3 objectForKeyedSubscript:@"source"];
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
  v19 = [(ATXFaceGalleryItem *)self identifier];
  v18 = [(ATXFaceGalleryItem *)self descriptorIdentifier];
  v17 = [(ATXFaceGalleryItem *)self extensionBundleIdentifier];
  v16 = [(ATXFaceGalleryItem *)self displayNameLocalizationKey];
  v3 = [(ATXFaceGalleryItem *)self localizedDisplayName];
  v15 = [(ATXFaceGalleryItem *)self titleFontName];
  v4 = [(ATXFaceGalleryItem *)self titleColor];
  v14 = [(ATXFaceGalleryItem *)self subtitleComplication];
  v13 = [(ATXFaceGalleryItem *)self layoutType];
  v5 = [(ATXFaceGalleryItem *)self complications];
  v6 = [(ATXFaceGalleryItem *)self landscapeComplications];
  v7 = [(ATXFaceGalleryItem *)self modeSemanticType];
  v8 = [(ATXFaceGalleryItem *)self score];
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
  v21 = [v20 initWithFormat:@"identifier: %@, descriptorIdentifier: %@, extensionBundleIdentifier: %@, displayNameLocalizationKey: %@, localizedDisplayName: %@, titleFontName: %@, titleColor: %@, subtitleComplication: %@, layoutType: %d, complications: %@, landscapeComplications: %@, modeSemanticType: %@, score: %@, blankTemplate: %@, shouldShowAsShuffleStack: %@, source: %@", v19, v18, v17, v16, v3, v15, v4, v14, v13, v5, v6, v7, v8, v10, v9, v11];

  return v21;
}

- (ATXFaceGalleryItem)initWithCoder:(id)a3
{
  v68[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"descriptorIdentifier"];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionBundleIdentifier"];
      if (v7)
      {
        v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayNameLocalizationKey"];
        v66 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"spokenNameLocalizationKey"];
        v65 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"descriptiveTextLocalizationKey"];
        v64 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDisplayName"];
        v63 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedSubtitle"];
        v62 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"titleFontName"];
        if (v62)
        {
          v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"titleColor"];
          if (v9)
          {
            v59 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modeSemanticType"];
            v61 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modeUUID"];
            v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitleComplication"];
            v55 = [v4 decodeIntegerForKey:@"layoutType"];
            v10 = MEMORY[0x1E695DFD8];
            v68[0] = objc_opt_class();
            v68[1] = objc_opt_class();
            [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:2];
            v11 = v60 = v8;
            v12 = [v10 setWithArray:v11];
            v57 = [v4 decodeObjectOfClasses:v12 forKey:@"complications"];

            v13 = MEMORY[0x1E695DFD8];
            v67[0] = objc_opt_class();
            v67[1] = objc_opt_class();
            v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
            v15 = [v13 setWithArray:v14];
            v56 = [v4 decodeObjectOfClasses:v15 forKey:@"landscapeComplications"];

            v8 = v60;
            self = [(ATXFaceGalleryItem *)self initWithIdentifier:v5 descriptorIdentifier:v6 extensionBundleIdentifier:v7 localizedDisplayName:v64 modeSemanticType:v59 titleFontName:v62 titleColor:v9 subtitleComplication:v58 layoutType:v55 complications:v57 landscapeComplications:v56];
            [(ATXFaceGalleryItem *)self setDisplayNameLocalizationKey:v60];
            [(ATXFaceGalleryItem *)self setSpokenNameLocalizationKey:v66];
            [(ATXFaceGalleryItem *)self setDescriptiveTextLocalizationKey:v65];
            [(ATXFaceGalleryItem *)self setLocalizedSubtitle:v63];
            v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"score"];
            [(ATXFaceGalleryItem *)self setScore:v16];

            v17 = v59;
            [(ATXFaceGalleryItem *)self setModeUUID:v61];
            -[ATXFaceGalleryItem setBlankTemplate:](self, "setBlankTemplate:", [v4 decodeBoolForKey:@"blankTemplate"]);
            -[ATXFaceGalleryItem setShouldShowAsShuffleStack:](self, "setShouldShowAsShuffleStack:", [v4 decodeBoolForKey:@"shouldShowAsShuffleStack"]);
            -[ATXFaceGalleryItem setSource:](self, "setSource:", [v4 decodeIntegerForKey:@"source"]);

            v18 = self;
          }

          else
          {
            v17 = __atxlog_handle_lock_screen();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [(ATXFaceGalleryItem *)v17 initWithCoder:v47, v48, v49, v50, v51, v52, v53];
            }

            v18 = 0;
          }
        }

        else
        {
          v9 = __atxlog_handle_lock_screen();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            [(ATXFaceGalleryItem *)v9 initWithCoder:v40, v41, v42, v43, v44, v45, v46];
          }

          v18 = 0;
        }
      }

      else
      {
        v8 = __atxlog_handle_lock_screen();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(ATXFaceGalleryItem *)v8 initWithCoder:v33, v34, v35, v36, v37, v38, v39];
        }

        v18 = 0;
      }
    }

    else
    {
      v7 = __atxlog_handle_lock_screen();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(ATXFaceGalleryItem *)v7 initWithCoder:v26, v27, v28, v29, v30, v31, v32];
      }

      v18 = 0;
    }
  }

  else
  {
    v6 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ATXFaceGalleryItem *)v6 initWithCoder:v19, v20, v21, v22, v23, v24, v25];
    }

    v18 = 0;
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v20 = a3;
  v4 = [(ATXFaceGalleryItem *)self identifier];
  [v20 encodeObject:v4 forKey:@"identifier"];

  v5 = [(ATXFaceGalleryItem *)self descriptorIdentifier];
  [v20 encodeObject:v5 forKey:@"descriptorIdentifier"];

  v6 = [(ATXFaceGalleryItem *)self extensionBundleIdentifier];
  [v20 encodeObject:v6 forKey:@"extensionBundleIdentifier"];

  v7 = [(ATXFaceGalleryItem *)self localizedDisplayName];
  [v20 encodeObject:v7 forKey:@"localizedDisplayName"];

  v8 = [(ATXFaceGalleryItem *)self displayNameLocalizationKey];
  [v20 encodeObject:v8 forKey:@"displayNameLocalizationKey"];

  v9 = [(ATXFaceGalleryItem *)self spokenNameLocalizationKey];
  [v20 encodeObject:v9 forKey:@"spokenNameLocalizationKey"];

  v10 = [(ATXFaceGalleryItem *)self descriptiveTextLocalizationKey];
  [v20 encodeObject:v10 forKey:@"descriptiveTextLocalizationKey"];

  v11 = [(ATXFaceGalleryItem *)self localizedSubtitle];
  [v20 encodeObject:v11 forKey:@"localizedSubtitle"];

  v12 = [(ATXFaceGalleryItem *)self titleFontName];
  [v20 encodeObject:v12 forKey:@"titleFontName"];

  v13 = [(ATXFaceGalleryItem *)self titleColor];
  [v20 encodeObject:v13 forKey:@"titleColor"];

  v14 = [(ATXFaceGalleryItem *)self subtitleComplication];
  [v20 encodeObject:v14 forKey:@"subtitleComplication"];

  [v20 encodeInteger:-[ATXFaceGalleryItem layoutType](self forKey:{"layoutType"), @"layoutType"}];
  v15 = [(ATXFaceGalleryItem *)self complications];
  [v20 encodeObject:v15 forKey:@"complications"];

  v16 = [(ATXFaceGalleryItem *)self landscapeComplications];
  [v20 encodeObject:v16 forKey:@"landscapeComplications"];

  v17 = [(ATXFaceGalleryItem *)self modeSemanticType];
  [v20 encodeObject:v17 forKey:@"modeSemanticType"];

  v18 = [(ATXFaceGalleryItem *)self score];
  [v20 encodeObject:v18 forKey:@"score"];

  v19 = [(ATXFaceGalleryItem *)self modeUUID];
  [v20 encodeObject:v19 forKey:@"modeUUID"];

  [v20 encodeBool:-[ATXFaceGalleryItem isBlankTemplate](self forKey:{"isBlankTemplate"), @"blankTemplate"}];
  [v20 encodeBool:-[ATXFaceGalleryItem shouldShowAsShuffleStack](self forKey:{"shouldShowAsShuffleStack"), @"shouldShowAsShuffleStack"}];
  [v20 encodeInteger:-[ATXFaceGalleryItem source](self forKey:{"source"), @"source"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = [objc_opt_class() allocWithZone:a3];
  v21 = [(ATXFaceGalleryItem *)self identifier];
  v19 = [(ATXFaceGalleryItem *)self descriptorIdentifier];
  v22 = [(ATXFaceGalleryItem *)self extensionBundleIdentifier];
  v20 = [(ATXFaceGalleryItem *)self localizedDisplayName];
  v4 = [(ATXFaceGalleryItem *)self modeSemanticType];
  v5 = [(ATXFaceGalleryItem *)self titleFontName];
  v6 = [(ATXFaceGalleryItem *)self titleColor];
  v7 = [(ATXFaceGalleryItem *)self subtitleComplication];
  v8 = [(ATXFaceGalleryItem *)self layoutType];
  v9 = [(ATXFaceGalleryItem *)self complications];
  v10 = [(ATXFaceGalleryItem *)self landscapeComplications];
  v11 = [v23 initWithIdentifier:v21 descriptorIdentifier:v19 extensionBundleIdentifier:v22 localizedDisplayName:v20 modeSemanticType:v4 titleFontName:v5 titleColor:v6 subtitleComplication:v7 layoutType:v8 complications:v9 landscapeComplications:v10];

  v12 = [(ATXFaceGalleryItem *)self displayNameLocalizationKey];
  [v11 setDisplayNameLocalizationKey:v12];

  v13 = [(ATXFaceGalleryItem *)self spokenNameLocalizationKey];
  [v11 setSpokenNameLocalizationKey:v13];

  v14 = [(ATXFaceGalleryItem *)self descriptiveTextLocalizationKey];
  [v11 setDescriptiveTextLocalizationKey:v14];

  v15 = [(ATXFaceGalleryItem *)self localizedSubtitle];
  [v11 setLocalizedSubtitle:v15];

  v16 = [(ATXFaceGalleryItem *)self score];
  [v11 setScore:v16];

  v17 = [(ATXFaceGalleryItem *)self modeUUID];
  [v11 setModeUUID:v17];

  [v11 setBlankTemplate:{-[ATXFaceGalleryItem isBlankTemplate](self, "isBlankTemplate")}];
  [v11 setShouldShowAsShuffleStack:{-[ATXFaceGalleryItem shouldShowAsShuffleStack](self, "shouldShowAsShuffleStack")}];
  [v11 setSource:{-[ATXFaceGalleryItem source](self, "source")}];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXFaceGalleryItem *)self isEqualToATXFaceGalleryItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXFaceGalleryItem:(id)a3
{
  v4 = self->_identifier;
  v5 = v4;
  if (v4 == *(a3 + 2))
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
  v2 = [(ATXFaceGalleryItem *)self identifier];

  return v2;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (NSDictionary)jsonDictionary
{
  v27[9] = *MEMORY[0x1E69E9840];
  v26[0] = @"identifier";
  v25 = [(ATXFaceGalleryItem *)self identifier];
  v27[0] = v25;
  v26[1] = @"descriptorIdentifier";
  v24 = [(ATXFaceGalleryItem *)self descriptorIdentifier];
  v27[1] = v24;
  v26[2] = @"extensionBundleIdentifier";
  v23 = [(ATXFaceGalleryItem *)self extensionBundleIdentifier];
  v27[2] = v23;
  v26[3] = @"localizedDisplayName";
  v3 = [(ATXFaceGalleryItem *)self localizedDisplayName];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v3;
  v27[3] = v3;
  v26[4] = @"displayNameLocalizationKey";
  v5 = [(ATXFaceGalleryItem *)self displayNameLocalizationKey];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v5;
  v27[4] = v5;
  v26[5] = @"subtitleComplication";
  v21 = [(ATXFaceGalleryItem *)self subtitleComplication];
  v7 = [v21 dictionaryRepresentation];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v4;
  v27[5] = v7;
  v26[6] = @"complications";
  v9 = [(ATXFaceGalleryItem *)self complications];
  v10 = [v9 _pas_mappedArrayWithTransform:&__block_literal_global_102];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v27[6] = v11;
  v26[7] = @"landscapeComplications";
  v12 = [(ATXFaceGalleryItem *)self landscapeComplications];
  v13 = [v12 _pas_mappedArrayWithTransform:&__block_literal_global_104];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v27[7] = v14;
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
  v3 = [(ATXFaceGalleryItem *)self jsonDictionary];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
}

- (ATXFaceGalleryItem)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBFaceGalleryItem alloc] initWithData:v4];

    self = [(ATXFaceGalleryItem *)self initWithProto:v5];
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
  v2 = [(ATXFaceGalleryItem *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXFaceGalleryItem)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v10 = 0;
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

  v5 = v4;
  v6 = [v5 identifier];
  v7 = [v5 descriptorIdentifier];
  v8 = [v5 extensionBundleIdentifier];

  v9 = [MEMORY[0x1E698E650] blackColor];
  self = [(ATXFaceGalleryItem *)self initWithIdentifier:v6 descriptorIdentifier:v7 extensionBundleIdentifier:v8 localizedDisplayName:&stru_1F3E050C8 modeSemanticType:0 titleFontName:&stru_1F3E050C8 titleColor:v9 subtitleComplication:0 layoutType:0 complications:0 landscapeComplications:0];

  v10 = self;
LABEL_8:

  return v10;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(ATXFaceGalleryItem *)self identifier];
  [v3 setIdentifier:v4];

  v5 = [(ATXFaceGalleryItem *)self descriptorIdentifier];
  [v3 setDescriptorIdentifier:v5];

  v6 = [(ATXFaceGalleryItem *)self extensionBundleIdentifier];
  [v3 setExtensionBundleIdentifier:v6];

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