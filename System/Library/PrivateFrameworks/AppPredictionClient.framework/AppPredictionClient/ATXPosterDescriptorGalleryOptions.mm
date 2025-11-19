@interface ATXPosterDescriptorGalleryOptions
+ (id)galleryOptionsFromDictionaryRepresentation:(id)a3 error:(id *)a4;
- (ATXPosterDescriptorGalleryOptions)init;
- (ATXPosterDescriptorGalleryOptions)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXPosterDescriptorGalleryOptions:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)preferredComplications;
- (id)preferredInlineComplication;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setPreferredComplications:(id)a3;
- (void)setPreferredInlineComplication:(id)a3;
@end

@implementation ATXPosterDescriptorGalleryOptions

- (ATXPosterDescriptorGalleryOptions)init
{
  v3.receiver = self;
  v3.super_class = ATXPosterDescriptorGalleryOptions;
  result = [(ATXPosterDescriptorGalleryOptions *)&v3 init];
  if (result)
  {
    *&result->_allowsSystemSuggestedComplications = 257;
    result->_featuredConfidenceLevel = 1;
  }

  return result;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [(ATXPosterDescriptorGalleryOptions *)self modularComplications];
  v6 = [v4 initWithFormat:@"modularComplications: %@", v5];
  [v3 addObject:v6];

  v7 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = [(ATXPosterDescriptorGalleryOptions *)self modularLandscapeComplications];
  v9 = [v7 initWithFormat:@"modularLandscapeComplications: %@", v8];
  [v3 addObject:v9];

  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11 = [(ATXPosterDescriptorGalleryOptions *)self inlineComplication];
  v12 = [v10 initWithFormat:@"inlineComplication: %@", v11];
  [v3 addObject:v12];

  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  if ([(ATXPosterDescriptorGalleryOptions *)self allowsSystemSuggestedComplications])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v15 = [v13 initWithFormat:@"allowsSystemSuggestedComplications: %@", v14];
  [v3 addObject:v15];

  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  if ([(ATXPosterDescriptorGalleryOptions *)self allowsSystemSuggestedComplicationsInLandscape])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v18 = [v16 initWithFormat:@"allowsSystemSuggestedComplicationsInLandscape: %@", v17];
  [v3 addObject:v18];

  v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"featuredConfidenceLevel: %zd", -[ATXPosterDescriptorGalleryOptions featuredConfidenceLevel](self, "featuredConfidenceLevel")];
  [v3 addObject:v19];

  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  v21 = [(ATXPosterDescriptorGalleryOptions *)self displayNameLocalizationKey];
  v22 = [v20 initWithFormat:@"displayNameLocalizationKey: %@", v21];
  [v3 addObject:v22];

  v23 = objc_alloc(MEMORY[0x1E696AEC0]);
  v24 = [(ATXPosterDescriptorGalleryOptions *)self spokenNameLocalizationKey];
  v25 = [v23 initWithFormat:@"spokenNameLocalizationKey: %@", v24];
  [v3 addObject:v25];

  v26 = objc_alloc(MEMORY[0x1E696AEC0]);
  v27 = [(ATXPosterDescriptorGalleryOptions *)self descriptiveTextLocalizationKey];
  v28 = [v26 initWithFormat:@"descriptiveTextLocalizationKey: %@", v27];
  [v3 addObject:v28];

  v29 = objc_alloc(MEMORY[0x1E696AEC0]);
  if ([(ATXPosterDescriptorGalleryOptions *)self isHero])
  {
    v30 = @"YES";
  }

  else
  {
    v30 = @"NO";
  }

  v31 = [v29 initWithFormat:@"hero: %@", v30];
  [v3 addObject:v31];

  v32 = objc_alloc(MEMORY[0x1E696AEC0]);
  if ([(ATXPosterDescriptorGalleryOptions *)self shouldShowAsShuffleStack])
  {
    v33 = @"YES";
  }

  else
  {
    v33 = @"NO";
  }

  v34 = [v32 initWithFormat:@"shouldShowAsShuffleStack: %@", v33];
  [v3 addObject:v34];

  v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"photoSubtype: %zd", -[ATXPosterDescriptorGalleryOptions photoSubtype](self, "photoSubtype")];
  [v3 addObject:v35];

  v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"focus: %zd", -[ATXPosterDescriptorGalleryOptions focus](self, "focus")];
  [v3 addObject:v36];

  v37 = objc_alloc(MEMORY[0x1E696AEC0]);
  if ([(ATXPosterDescriptorGalleryOptions *)self isOnlyEligibleForMadeForFocusSection])
  {
    v38 = @"YES";
  }

  else
  {
    v38 = @"NO";
  }

  v39 = [v37 initWithFormat:@"isOnlyEligibleForMadeForFocusSection: %@", v38];
  [v3 addObject:v39];

  v40 = objc_alloc(MEMORY[0x1E696AEC0]);
  v41 = [v3 componentsJoinedByString:{@", "}];
  v42 = [v40 initWithFormat:@"<ATXPosterDescriptorGalleryOptions: %@>", v41];

  return v42;
}

- (ATXPosterDescriptorGalleryOptions)initWithCoder:(id)a3
{
  v27[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = MEMORY[0x1E695DFD8];
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"modularComplications"];

  if (!v9)
  {
    v10 = MEMORY[0x1E695DFD8];
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"preferredComplications"];

    v9 = [v13 _pas_mappedArrayWithTransform:&__block_literal_global_28];
  }

  [(ATXPosterDescriptorGalleryOptions *)v5 setModularComplications:v9];
  v14 = MEMORY[0x1E695DFD8];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v16 = [v14 setWithArray:v15];
  v17 = [v4 decodeObjectOfClasses:v16 forKey:@"modularLandscapeComplications"];

  [(ATXPosterDescriptorGalleryOptions *)v5 setModularLandscapeComplications:v17];
  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inlineComplication"];
  if (!v18)
  {
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredInlineComplication"];
    v20 = v19;
    if (v19)
    {
      v18 = ATXComplicationFromCHSWidget(v19);
    }

    else
    {
      v18 = 0;
    }
  }

  [(ATXPosterDescriptorGalleryOptions *)v5 setInlineComplication:v18];
  if ([v4 containsValueForKey:@"allowsSystemSuggestedComplications"])
  {
    -[ATXPosterDescriptorGalleryOptions setAllowsSystemSuggestedComplications:](v5, "setAllowsSystemSuggestedComplications:", [v4 decodeBoolForKey:@"allowsSystemSuggestedComplications"]);
  }

  if ([v4 containsValueForKey:@"allowsSystemSuggestedComplicationsInLandscape"])
  {
    -[ATXPosterDescriptorGalleryOptions setAllowsSystemSuggestedComplicationsInLandscape:](v5, "setAllowsSystemSuggestedComplicationsInLandscape:", [v4 decodeBoolForKey:@"allowsSystemSuggestedComplicationsInLandscape"]);
  }

  if ([v4 containsValueForKey:@"featuredConfidenceLevel"])
  {
    -[ATXPosterDescriptorGalleryOptions setFeaturedConfidenceLevel:](v5, "setFeaturedConfidenceLevel:", [v4 decodeIntegerForKey:@"featuredConfidenceLevel"]);
  }

  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayNameLocalizationKey"];
  [(ATXPosterDescriptorGalleryOptions *)v5 setDisplayNameLocalizationKey:v21];

  v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"spokenNameLocalizationKey"];
  [(ATXPosterDescriptorGalleryOptions *)v5 setSpokenNameLocalizationKey:v22];

  v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"descriptiveTextLocalizationKey"];
  [(ATXPosterDescriptorGalleryOptions *)v5 setDescriptiveTextLocalizationKey:v23];

  -[ATXPosterDescriptorGalleryOptions setHero:](v5, "setHero:", [v4 decodeBoolForKey:@"hero"]);
  if ([v4 containsValueForKey:@"blankTemplate"])
  {
    -[ATXPosterDescriptorGalleryOptions setHero:](v5, "setHero:", [v4 decodeBoolForKey:@"blankTemplate"]);
  }

  -[ATXPosterDescriptorGalleryOptions setShouldShowAsShuffleStack:](v5, "setShouldShowAsShuffleStack:", [v4 decodeBoolForKey:@"shouldShowAsShuffleStack"]);
  -[ATXPosterDescriptorGalleryOptions setPhotoSubtype:](v5, "setPhotoSubtype:", [v4 decodeIntegerForKey:@"photoSubtype"]);
  -[ATXPosterDescriptorGalleryOptions setFocus:](v5, "setFocus:", [v4 decodeIntegerForKey:@"focus"]);
  -[ATXPosterDescriptorGalleryOptions setOnlyEligibleForMadeForFocusSection:](v5, "setOnlyEligibleForMadeForFocusSection:", [v4 decodeBoolForKey:@"onlyEligibleForMadeForFocusSection"]);

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(ATXPosterDescriptorGalleryOptions *)self modularComplications];
  [v10 encodeObject:v4 forKey:@"modularComplications"];

  v5 = [(ATXPosterDescriptorGalleryOptions *)self modularLandscapeComplications];
  [v10 encodeObject:v5 forKey:@"modularLandscapeComplications"];

  v6 = [(ATXPosterDescriptorGalleryOptions *)self inlineComplication];
  [v10 encodeObject:v6 forKey:@"inlineComplication"];

  [v10 encodeBool:-[ATXPosterDescriptorGalleryOptions allowsSystemSuggestedComplications](self forKey:{"allowsSystemSuggestedComplications"), @"allowsSystemSuggestedComplications"}];
  [v10 encodeBool:-[ATXPosterDescriptorGalleryOptions allowsSystemSuggestedComplicationsInLandscape](self forKey:{"allowsSystemSuggestedComplicationsInLandscape"), @"allowsSystemSuggestedComplicationsInLandscape"}];
  [v10 encodeInteger:-[ATXPosterDescriptorGalleryOptions featuredConfidenceLevel](self forKey:{"featuredConfidenceLevel"), @"featuredConfidenceLevel"}];
  v7 = [(ATXPosterDescriptorGalleryOptions *)self displayNameLocalizationKey];
  [v10 encodeObject:v7 forKey:@"displayNameLocalizationKey"];

  v8 = [(ATXPosterDescriptorGalleryOptions *)self spokenNameLocalizationKey];
  [v10 encodeObject:v8 forKey:@"spokenNameLocalizationKey"];

  v9 = [(ATXPosterDescriptorGalleryOptions *)self descriptiveTextLocalizationKey];
  [v10 encodeObject:v9 forKey:@"descriptiveTextLocalizationKey"];

  [v10 encodeBool:-[ATXPosterDescriptorGalleryOptions isHero](self forKey:{"isHero"), @"hero"}];
  [v10 encodeBool:-[ATXPosterDescriptorGalleryOptions shouldShowAsShuffleStack](self forKey:{"shouldShowAsShuffleStack"), @"shouldShowAsShuffleStack"}];
  [v10 encodeInteger:-[ATXPosterDescriptorGalleryOptions photoSubtype](self forKey:{"photoSubtype"), @"photoSubtype"}];
  [v10 encodeBool:-[ATXPosterDescriptorGalleryOptions isOnlyEligibleForMadeForFocusSection](self forKey:{"isOnlyEligibleForMadeForFocusSection"), @"onlyEligibleForMadeForFocusSection"}];
  [v10 encodeInteger:-[ATXPosterDescriptorGalleryOptions focus](self forKey:{"focus"), @"focus"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[ATXPosterDescriptorGalleryOptions allocWithZone:?]];
  v5 = [(ATXPosterDescriptorGalleryOptions *)self modularComplications];
  [(ATXPosterDescriptorGalleryOptions *)v4 setModularComplications:v5];

  v6 = [(ATXPosterDescriptorGalleryOptions *)self modularLandscapeComplications];
  [(ATXPosterDescriptorGalleryOptions *)v4 setModularLandscapeComplications:v6];

  v7 = [(ATXPosterDescriptorGalleryOptions *)self inlineComplication];
  [(ATXPosterDescriptorGalleryOptions *)v4 setInlineComplication:v7];

  [(ATXPosterDescriptorGalleryOptions *)v4 setAllowsSystemSuggestedComplications:[(ATXPosterDescriptorGalleryOptions *)self allowsSystemSuggestedComplications]];
  [(ATXPosterDescriptorGalleryOptions *)v4 setAllowsSystemSuggestedComplicationsInLandscape:[(ATXPosterDescriptorGalleryOptions *)self allowsSystemSuggestedComplicationsInLandscape]];
  [(ATXPosterDescriptorGalleryOptions *)v4 setFeaturedConfidenceLevel:[(ATXPosterDescriptorGalleryOptions *)self featuredConfidenceLevel]];
  v8 = [(ATXPosterDescriptorGalleryOptions *)self displayNameLocalizationKey];
  [(ATXPosterDescriptorGalleryOptions *)v4 setDisplayNameLocalizationKey:v8];

  v9 = [(ATXPosterDescriptorGalleryOptions *)self spokenNameLocalizationKey];
  [(ATXPosterDescriptorGalleryOptions *)v4 setSpokenNameLocalizationKey:v9];

  v10 = [(ATXPosterDescriptorGalleryOptions *)self descriptiveTextLocalizationKey];
  [(ATXPosterDescriptorGalleryOptions *)v4 setDescriptiveTextLocalizationKey:v10];

  [(ATXPosterDescriptorGalleryOptions *)v4 setHero:[(ATXPosterDescriptorGalleryOptions *)self isHero]];
  [(ATXPosterDescriptorGalleryOptions *)v4 setShouldShowAsShuffleStack:[(ATXPosterDescriptorGalleryOptions *)self shouldShowAsShuffleStack]];
  [(ATXPosterDescriptorGalleryOptions *)v4 setPhotoSubtype:[(ATXPosterDescriptorGalleryOptions *)self photoSubtype]];
  [(ATXPosterDescriptorGalleryOptions *)v4 setFocus:[(ATXPosterDescriptorGalleryOptions *)self focus]];
  [(ATXPosterDescriptorGalleryOptions *)v4 setOnlyEligibleForMadeForFocusSection:[(ATXPosterDescriptorGalleryOptions *)self isOnlyEligibleForMadeForFocusSection]];
  return v4;
}

+ (id)galleryOptionsFromDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [v5 objectForKeyedSubscript:@"modularComplications"];
  objc_opt_class();
  v45 = v7;
  if (objc_opt_isKindOfClass())
  {
    v43 = v6;
    v46 = objc_opt_new();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v52;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v52 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v51 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [ATXComplication complicationFromDictionaryRepresentation:v13 error:a4];
            v15 = v14;
            if (*a4)
            {
              v26 = 0;
              v6 = v43;
              v7 = v45;
              goto LABEL_62;
            }

            if (v14)
            {
              [v46 addObject:v14];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v51 objects:v56 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v16 = [v46 copy];
    v6 = v43;
    [v43 setModularComplications:v16];

    v7 = v45;
  }

  v17 = [v5 objectForKeyedSubscript:@"modularLandscapeComplications"];
  objc_opt_class();
  v46 = v17;
  if (objc_opt_isKindOfClass())
  {
    v41 = v5;
    v8 = objc_opt_new();
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v15 = v17;
    v18 = [v15 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v48;
      while (2)
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v48 != v20)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v47 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v23 = [ATXComplication complicationFromDictionaryRepresentation:v22 error:a4];
            v24 = v23;
            if (*a4)
            {
              v26 = 0;
              v5 = v41;
              goto LABEL_61;
            }

            if (v23)
            {
              [v8 addObject:v23];
            }
          }
        }

        v19 = [v15 countByEnumeratingWithState:&v47 objects:v55 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v25 = [v8 copy];
    [v6 setModularLandscapeComplications:v25];

    v5 = v41;
    v7 = v45;
  }

  v8 = [v5 objectForKeyedSubscript:@"inlineComplication"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [ATXComplication complicationFromDictionaryRepresentation:v8 error:a4];
    if (*a4)
    {
      v26 = 0;
      goto LABEL_62;
    }

    [v6 setInlineComplication:v15];
  }

  v15 = [v5 objectForKeyedSubscript:@"allowsSystemSuggestedComplications"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setAllowsSystemSuggestedComplications:{objc_msgSend(v15, "BOOLValue")}];
  }

  v24 = [v5 objectForKeyedSubscript:@"allowsSystemSuggestedComplicationsInLandscape"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setAllowsSystemSuggestedComplicationsInLandscape:{objc_msgSend(v24, "BOOLValue")}];
  }

  v27 = [v5 objectForKeyedSubscript:@"featuredConfidenceLevel"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setFeaturedConfidenceLevel:{objc_msgSend(v27, "integerValue")}];
  }

  v44 = v27;
  v28 = [v5 objectForKeyedSubscript:@"displayNameLocalizationKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setDisplayNameLocalizationKey:v28];
  }

  v29 = [v5 objectForKeyedSubscript:@"spokenNameLocalizationKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setSpokenNameLocalizationKey:v29];
  }

  v30 = [v5 objectForKeyedSubscript:@"descriptiveTextLocalizationKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setDescriptiveTextLocalizationKey:v30];
  }

  v31 = [v5 objectForKeyedSubscript:@"hero"];
  objc_opt_class();
  v38 = v31;
  v39 = v30;
  if (objc_opt_isKindOfClass())
  {
    [v6 setHero:{objc_msgSend(v31, "BOOLValue")}];
  }

  else
  {
    v32 = [v5 objectForKeyedSubscript:@"blankTemplate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 setHero:{objc_msgSend(v32, "BOOLValue")}];
    }
  }

  v42 = v28;
  v33 = [v5 objectForKeyedSubscript:@"shouldShowAsShuffleStack"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setShouldShowAsShuffleStack:{objc_msgSend(v33, "BOOLValue")}];
  }

  v40 = v29;
  v34 = [v5 objectForKeyedSubscript:@"photoSubtype"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setPhotoSubtype:{objc_msgSend(v34, "integerValue")}];
  }

  v35 = [v5 objectForKeyedSubscript:@"focus"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setFocus:{objc_msgSend(v35, "integerValue")}];
  }

  v36 = [v5 objectForKeyedSubscript:@"onlyEligibleForMadeForFocusSection"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setOnlyEligibleForMadeForFocusSection:{objc_msgSend(v36, "BOOLValue")}];
  }

  v26 = v6;

LABEL_61:
  v7 = v45;

LABEL_62:

  return v26;
}

- (NSDictionary)dictionaryRepresentation
{
  v30[12] = *MEMORY[0x1E69E9840];
  v29[0] = @"modularComplications";
  v28 = [(ATXPosterDescriptorGalleryOptions *)self modularComplications];
  v3 = [v28 _pas_mappedArrayWithTransform:&__block_literal_global_132];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v3;
  v30[0] = v3;
  v29[1] = @"modularLandscapeComplications";
  v26 = [(ATXPosterDescriptorGalleryOptions *)self modularLandscapeComplications];
  v5 = [v26 _pas_mappedArrayWithTransform:&__block_literal_global_135];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v6;
  v27 = v4;
  v20 = v5;
  v30[1] = v5;
  v29[2] = @"inlineComplication";
  v24 = [(ATXPosterDescriptorGalleryOptions *)self inlineComplication];
  v7 = [v24 dictionaryRepresentation];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v30[2] = v7;
  v29[3] = @"allowsSystemSuggestedComplications";
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[ATXPosterDescriptorGalleryOptions allowsSystemSuggestedComplications](self, "allowsSystemSuggestedComplications", v7)}];
  v30[3] = v23;
  v29[4] = @"allowsSystemSuggestedComplicationsInLandscape";
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[ATXPosterDescriptorGalleryOptions allowsSystemSuggestedComplicationsInLandscape](self, "allowsSystemSuggestedComplicationsInLandscape")}];
  v30[4] = v22;
  v29[5] = @"featuredConfidenceLevel";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ATXPosterDescriptorGalleryOptions featuredConfidenceLevel](self, "featuredConfidenceLevel")}];
  v30[5] = v9;
  v29[6] = @"displayNameLocalizationKey";
  v10 = [(ATXPosterDescriptorGalleryOptions *)self displayNameLocalizationKey];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v30[6] = v11;
  v29[7] = @"hero";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[ATXPosterDescriptorGalleryOptions isHero](self, "isHero")}];
  v30[7] = v12;
  v29[8] = @"shouldShowAsShuffleStack";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[ATXPosterDescriptorGalleryOptions shouldShowAsShuffleStack](self, "shouldShowAsShuffleStack")}];
  v30[8] = v13;
  v29[9] = @"photoSubtype";
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ATXPosterDescriptorGalleryOptions photoSubtype](self, "photoSubtype")}];
  v30[9] = v14;
  v29[10] = @"focus";
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ATXPosterDescriptorGalleryOptions focus](self, "focus")}];
  v30[10] = v15;
  v29[11] = @"onlyEligibleForMadeForFocusSection";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[ATXPosterDescriptorGalleryOptions isOnlyEligibleForMadeForFocusSection](self, "isOnlyEligibleForMadeForFocusSection")}];
  v30[11] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:12];

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v25)
  {
  }

  if (!v27)
  {
  }

  return v17;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPosterDescriptorGalleryOptions *)self isEqualToATXPosterDescriptorGalleryOptions:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPosterDescriptorGalleryOptions:(id)a3
{
  v4 = a3;
  v5 = self->_modularComplications;
  v6 = v5;
  if (v5 == v4[2])
  {
  }

  else
  {
    v7 = [(NSArray *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
LABEL_33:
      v23 = 0;
      goto LABEL_34;
    }
  }

  v8 = self->_modularLandscapeComplications;
  v9 = v8;
  if (v8 == v4[3])
  {
  }

  else
  {
    v10 = [(NSArray *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v11 = self->_inlineComplication;
  v12 = v11;
  if (v11 == v4[4])
  {
  }

  else
  {
    v13 = [(ATXComplication *)v11 isEqual:?];

    if (!v13)
    {
      goto LABEL_33;
    }
  }

  if (self->_allowsSystemSuggestedComplications != *(v4 + 8) || self->_allowsSystemSuggestedComplicationsInLandscape != *(v4 + 9) || self->_featuredConfidenceLevel != v4[5])
  {
    goto LABEL_33;
  }

  v14 = self->_displayNameLocalizationKey;
  v15 = v14;
  if (v14 == v4[6])
  {
  }

  else
  {
    v16 = [(NSString *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v17 = self->_spokenNameLocalizationKey;
  v18 = v17;
  if (v17 == v4[7])
  {
  }

  else
  {
    v19 = [(NSString *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  v20 = self->_descriptiveTextLocalizationKey;
  v21 = v20;
  if (v20 == v4[8])
  {
  }

  else
  {
    v22 = [(NSString *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  if (self->_hero != *(v4 + 10) || self->_shouldShowAsShuffleStack != *(v4 + 11) || self->_photoSubtype != v4[9] || self->_focus != v4[10])
  {
    goto LABEL_33;
  }

  v23 = self->_onlyEligibleForMadeForFocusSection == *(v4 + 12);
LABEL_34:

  return v23;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_modularComplications hash];
  v4 = [(NSArray *)self->_modularLandscapeComplications hash]- v3 + 32 * v3;
  v5 = [(ATXComplication *)self->_inlineComplication hash];
  v6 = self->_allowsSystemSuggestedComplications - (v5 - v4 + 32 * v4) + 32 * (v5 - v4 + 32 * v4);
  v7 = self->_allowsSystemSuggestedComplicationsInLandscape - v6 + 32 * v6;
  v8 = self->_featuredConfidenceLevel - v7 + 32 * v7;
  v9 = [(NSString *)self->_displayNameLocalizationKey hash]- v8 + 32 * v8;
  v10 = [(NSString *)self->_spokenNameLocalizationKey hash]- v9 + 32 * v9;
  v11 = [(NSString *)self->_descriptiveTextLocalizationKey hash];
  v12 = self->_hero - (v11 - v10 + 32 * v10) + 32 * (v11 - v10 + 32 * v10);
  v13 = self->_shouldShowAsShuffleStack - v12 + 32 * v12;
  v14 = self->_photoSubtype - v13 + 32 * v13;
  v15 = self->_focus - v14 + 32 * v14;
  return self->_onlyEligibleForMadeForFocusSection - v15 + 32 * v15;
}

- (id)preferredComplications
{
  v2 = [(ATXPosterDescriptorGalleryOptions *)self modularComplications];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_138];

  return v3;
}

- (void)setPreferredComplications:(id)a3
{
  v4 = [a3 _pas_mappedArrayWithTransform:&__block_literal_global_140];
  [(ATXPosterDescriptorGalleryOptions *)self setModularComplications:v4];
}

- (id)preferredInlineComplication
{
  v2 = [(ATXPosterDescriptorGalleryOptions *)self inlineComplication];
  v3 = CHSWidgetFromATXComplication(v2);

  return v3;
}

- (void)setPreferredInlineComplication:(id)a3
{
  v4 = ATXComplicationFromCHSWidget(a3);
  [(ATXPosterDescriptorGalleryOptions *)self setInlineComplication:v4];
}

@end