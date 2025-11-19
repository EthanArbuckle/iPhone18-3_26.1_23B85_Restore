@interface ATXFaceGalleryConfiguration
+ (id)configurationFromJSONDictionary:(id)a3;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXFaceGalleryConfiguration)initWithCoder:(id)a3;
- (ATXFaceGalleryConfiguration)initWithProto:(id)a3;
- (ATXFaceGalleryConfiguration)initWithProtoData:(id)a3;
- (ATXFaceGalleryConfiguration)initWithSections:(id)a3 source:(int64_t)a4 locale:(id)a5 dayZero:(BOOL)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXFaceGalleryConfiguration:(id)a3;
- (NSDictionary)jsonDictionary;
- (NSString)description;
- (id)configurationByApplyingConfiguration:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)encodeAsProto;
- (id)json;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXFaceGalleryConfiguration

- (ATXFaceGalleryConfiguration)initWithSections:(id)a3 source:(int64_t)a4 locale:(id)a5 dayZero:(BOOL)a6
{
  v10 = a3;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = ATXFaceGalleryConfiguration;
  v12 = [(ATXFaceGalleryConfiguration *)&v16 init];
  if (v12)
  {
    v13 = [v10 copy];
    sections = v12->_sections;
    v12->_sections = v13;

    v12->_source = a4;
    objc_storeStrong(&v12->_locale, a5);
    v12->_dayZero = a6;
  }

  return v12;
}

+ (id)configurationFromJSONDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"sections"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 objectForKeyedSubscript:@"sections"];
    v7 = [v6 _pas_mappedArrayWithTransform:&__block_literal_global_70];

    v8 = [v3 objectForKeyedSubscript:@"source"];
    v9 = [v8 integerValue];

    v10 = [v3 objectForKeyedSubscript:@"dayZero"];
    v11 = [v10 BOOLValue];

    v12 = [[ATXFaceGalleryConfiguration alloc] initWithSections:v7 source:v9 locale:0 dayZero:v11];
  }

  else
  {
    v13 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ATXFaceGalleryConfiguration configurationFromJSONDictionary:v13];
    }

    v12 = 0;
  }

  return v12;
}

id __63__ATXFaceGalleryConfiguration_configurationFromJSONDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [ATXFaceGallerySection sectionFromJSONDictionary:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)configurationByApplyingConfiguration:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ATXFaceGalleryConfiguration *)self copy];
  if (v4)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = [v4 sections];
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if ([v11 semanticType] <= 0xE)
          {
            v12 = [v5 sections];
            v16[0] = MEMORY[0x1E69E9820];
            v16[1] = 3221225472;
            v16[2] = __68__ATXFaceGalleryConfiguration_configurationByApplyingConfiguration___block_invoke;
            v16[3] = &unk_1E80C42D8;
            v16[4] = v11;
            v13 = [v12 bs_firstObjectPassingTest:v16];

            if (v13)
            {
              v14 = [v11 items];
              [v13 setItems:v14];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(ATXFaceGalleryConfiguration *)self sections];
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = @"Hero";
        if ([v9 semanticType] != 4)
        {
          v11 = [v9 localizedTitle];
          v12 = v11;
          v13 = @"nil";
          if (v11)
          {
            v13 = v11;
          }

          v10 = v13;
        }

        v14 = MEMORY[0x1E696AD98];
        v15 = [v9 items];
        v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
        [v3 setObject:v16 forKeyedSubscript:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v17 = [v3 copy];

  return v17;
}

- (NSString)description
{
  v3 = [(ATXFaceGalleryConfiguration *)self sections];
  v4 = [v3 count];

  v5 = [(ATXFaceGalleryConfiguration *)self dictionaryRepresentation];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<ATXFaceGalleryConfiguration: %lu sections, contents = %@>", v4, v5];

  return v6;
}

- (ATXFaceGalleryConfiguration)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"sections"];

  if (v8)
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"source"];
    v10 = [v9 integerValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    self = -[ATXFaceGalleryConfiguration initWithSections:source:locale:dayZero:](self, "initWithSections:source:locale:dayZero:", v8, v10, v11, [v4 decodeBoolForKey:@"dayZero"]);
    v12 = self;
  }

  else
  {
    v11 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXFaceGalleryConfiguration initWithCoder:v11];
    }

    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(ATXFaceGalleryConfiguration *)self sections];
  [v7 encodeObject:v4 forKey:@"sections"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ATXFaceGalleryConfiguration source](self, "source")}];
  [v7 encodeObject:v5 forKey:@"source"];

  v6 = [(ATXFaceGalleryConfiguration *)self locale];
  [v7 encodeObject:v6 forKey:@"locale"];

  [v7 encodeBool:-[ATXFaceGalleryConfiguration isDayZero](self forKey:{"isDayZero"), @"dayZero"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(ATXFaceGalleryConfiguration *)self sections];
  v6 = [(ATXFaceGalleryConfiguration *)self source];
  v7 = [(ATXFaceGalleryConfiguration *)self locale];
  v8 = [v4 initWithSections:v5 source:v6 locale:v7 dayZero:{-[ATXFaceGalleryConfiguration isDayZero](self, "isDayZero")}];

  return v8;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXFaceGalleryConfiguration *)self isEqualToATXFaceGalleryConfiguration:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXFaceGalleryConfiguration:(id)a3
{
  v4 = a3;
  v5 = self->_sections;
  v6 = v5;
  if (v5 == v4[2])
  {
  }

  else
  {
    v7 = [(NSArray *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (self->_source == v4[3])
  {
    v8 = self->_locale;
    v9 = v8;
    if (v8 == v4[4])
    {
    }

    else
    {
      v10 = [(NSLocale *)v8 isEqual:?];

      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v11 = self->_dayZero == *(v4 + 8);
    goto LABEL_11;
  }

LABEL_8:
  v11 = 0;
LABEL_11:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(ATXFaceGalleryConfiguration *)self sections];
  v4 = [v3 hash];

  v5 = [(ATXFaceGalleryConfiguration *)self source]- v4 + 32 * v4;
  v6 = [(ATXFaceGalleryConfiguration *)self locale];
  v7 = [v6 hash] - v5 + 32 * v5;

  return 31 * v7 + [(ATXFaceGalleryConfiguration *)self isDayZero];
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (NSDictionary)jsonDictionary
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10[0] = @"sections";
  v3 = [(ATXFaceGalleryConfiguration *)self sections];
  v4 = [v3 _pas_mappedArrayWithTransform:&__block_literal_global_49];
  v11[0] = v4;
  v10[1] = @"source";
  v5 = [(ATXFaceGalleryConfiguration *)self source];
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = @"Proactive";
    }

    else
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v5];
    }
  }

  else
  {
    v6 = @"Unknown";
  }

  v11[1] = v6;
  v10[2] = @"dayZero";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ATXFaceGalleryConfiguration isDayZero](self, "isDayZero")}];
  v11[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(ATXFaceGalleryConfiguration *)self jsonDictionary];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
}

- (ATXFaceGalleryConfiguration)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBFaceGalleryConfiguration alloc] initWithData:v4];

    self = [(ATXFaceGalleryConfiguration *)self initWithProto:v5];
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
  v2 = [(ATXFaceGalleryConfiguration *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXFaceGalleryConfiguration)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(ATXDigestTimeline *)self initWithProto:v14];
    }

    goto LABEL_9;
  }

  v5 = v4;
  v6 = [(ATXPBFaceGalleryConfiguration *)v5 sections];
  v7 = [v6 _pas_mappedArrayWithTransform:&__block_literal_global_54_0];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F0];
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [(ATXPBFaceGalleryConfiguration *)v5 source];
  v12 = [(ATXFaceGalleryConfiguration *)self initWithSections:v10 source:v11 locale:0 dayZero:0];

  self = v12;
  v13 = self;
LABEL_10:

  return v13;
}

ATXFaceGallerySection *__45__ATXFaceGalleryConfiguration_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXFaceGallerySection alloc] initWithProto:v2];

  return v3;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(ATXFaceGalleryConfiguration *)self sections];
  v5 = [v4 _pas_mappedArrayWithTransform:&__block_literal_global_57];
  v6 = [v5 mutableCopy];
  [(ATXPBFaceGalleryConfiguration *)v3 setSections:v6];

  [(ATXPBFaceGalleryConfiguration *)v3 setSource:?];

  return v3;
}

+ (void)configurationFromJSONDictionary:(os_log_t)log .cold.1(os_log_t log)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = 136315394;
  v2 = "+[ATXFaceGalleryConfiguration configurationFromJSONDictionary:]";
  v3 = 2112;
  v4 = @"sections";
  _os_log_error_impl(&dword_1BF549000, log, OS_LOG_TYPE_ERROR, "%s: missing key: %@", &v1, 0x16u);
}

@end