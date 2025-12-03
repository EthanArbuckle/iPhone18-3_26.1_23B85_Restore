@interface ATXFaceGalleryConfiguration
+ (id)configurationFromJSONDictionary:(id)dictionary;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXFaceGalleryConfiguration)initWithCoder:(id)coder;
- (ATXFaceGalleryConfiguration)initWithProto:(id)proto;
- (ATXFaceGalleryConfiguration)initWithProtoData:(id)data;
- (ATXFaceGalleryConfiguration)initWithSections:(id)sections source:(int64_t)source locale:(id)locale dayZero:(BOOL)zero;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXFaceGalleryConfiguration:(id)configuration;
- (NSDictionary)jsonDictionary;
- (NSString)description;
- (id)configurationByApplyingConfiguration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)encodeAsProto;
- (id)json;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXFaceGalleryConfiguration

- (ATXFaceGalleryConfiguration)initWithSections:(id)sections source:(int64_t)source locale:(id)locale dayZero:(BOOL)zero
{
  sectionsCopy = sections;
  localeCopy = locale;
  v16.receiver = self;
  v16.super_class = ATXFaceGalleryConfiguration;
  v12 = [(ATXFaceGalleryConfiguration *)&v16 init];
  if (v12)
  {
    v13 = [sectionsCopy copy];
    sections = v12->_sections;
    v12->_sections = v13;

    v12->_source = source;
    objc_storeStrong(&v12->_locale, locale);
    v12->_dayZero = zero;
  }

  return v12;
}

+ (id)configurationFromJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"sections"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sections"];
    v7 = [v6 _pas_mappedArrayWithTransform:&__block_literal_global_70];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"source"];
    integerValue = [v8 integerValue];

    v10 = [dictionaryCopy objectForKeyedSubscript:@"dayZero"];
    bOOLValue = [v10 BOOLValue];

    v12 = [[ATXFaceGalleryConfiguration alloc] initWithSections:v7 source:integerValue locale:0 dayZero:bOOLValue];
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

- (id)configurationByApplyingConfiguration:(id)configuration
{
  v22 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = [(ATXFaceGalleryConfiguration *)self copy];
  if (configurationCopy)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    sections = [configurationCopy sections];
    v7 = [sections countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(sections);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if ([v11 semanticType] <= 0xE)
          {
            sections2 = [v5 sections];
            v16[0] = MEMORY[0x1E69E9820];
            v16[1] = 3221225472;
            v16[2] = __68__ATXFaceGalleryConfiguration_configurationByApplyingConfiguration___block_invoke;
            v16[3] = &unk_1E80C42D8;
            v16[4] = v11;
            v13 = [sections2 bs_firstObjectPassingTest:v16];

            if (v13)
            {
              items = [v11 items];
              [v13 setItems:items];
            }
          }
        }

        v8 = [sections countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  sections = [(ATXFaceGalleryConfiguration *)self sections];
  v5 = [sections countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(sections);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = @"Hero";
        if ([v9 semanticType] != 4)
        {
          localizedTitle = [v9 localizedTitle];
          v12 = localizedTitle;
          v13 = @"nil";
          if (localizedTitle)
          {
            v13 = localizedTitle;
          }

          v10 = v13;
        }

        v14 = MEMORY[0x1E696AD98];
        items = [v9 items];
        v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(items, "count")}];
        [dictionary setObject:v16 forKeyedSubscript:v10];
      }

      v6 = [sections countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v17 = [dictionary copy];

  return v17;
}

- (NSString)description
{
  sections = [(ATXFaceGalleryConfiguration *)self sections];
  v4 = [sections count];

  dictionaryRepresentation = [(ATXFaceGalleryConfiguration *)self dictionaryRepresentation];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<ATXFaceGalleryConfiguration: %lu sections, contents = %@>", v4, dictionaryRepresentation];

  return v6;
}

- (ATXFaceGalleryConfiguration)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v7 = [v5 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"sections"];

  if (v8)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
    integerValue = [v9 integerValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    self = -[ATXFaceGalleryConfiguration initWithSections:source:locale:dayZero:](self, "initWithSections:source:locale:dayZero:", v8, integerValue, v11, [coderCopy decodeBoolForKey:@"dayZero"]);
    selfCopy = self;
  }

  else
  {
    v11 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXFaceGalleryConfiguration initWithCoder:v11];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sections = [(ATXFaceGalleryConfiguration *)self sections];
  [coderCopy encodeObject:sections forKey:@"sections"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[ATXFaceGalleryConfiguration source](self, "source")}];
  [coderCopy encodeObject:v5 forKey:@"source"];

  locale = [(ATXFaceGalleryConfiguration *)self locale];
  [coderCopy encodeObject:locale forKey:@"locale"];

  [coderCopy encodeBool:-[ATXFaceGalleryConfiguration isDayZero](self forKey:{"isDayZero"), @"dayZero"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  sections = [(ATXFaceGalleryConfiguration *)self sections];
  source = [(ATXFaceGalleryConfiguration *)self source];
  locale = [(ATXFaceGalleryConfiguration *)self locale];
  v8 = [v4 initWithSections:sections source:source locale:locale dayZero:{-[ATXFaceGalleryConfiguration isDayZero](self, "isDayZero")}];

  return v8;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXFaceGalleryConfiguration *)self isEqualToATXFaceGalleryConfiguration:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXFaceGalleryConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = self->_sections;
  v6 = v5;
  if (v5 == configurationCopy[2])
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

  if (self->_source == configurationCopy[3])
  {
    v8 = self->_locale;
    v9 = v8;
    if (v8 == configurationCopy[4])
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

    v11 = self->_dayZero == *(configurationCopy + 8);
    goto LABEL_11;
  }

LABEL_8:
  v11 = 0;
LABEL_11:

  return v11;
}

- (unint64_t)hash
{
  sections = [(ATXFaceGalleryConfiguration *)self sections];
  v4 = [sections hash];

  v5 = [(ATXFaceGalleryConfiguration *)self source]- v4 + 32 * v4;
  locale = [(ATXFaceGalleryConfiguration *)self locale];
  v7 = [locale hash] - v5 + 32 * v5;

  return 31 * v7 + [(ATXFaceGalleryConfiguration *)self isDayZero];
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (NSDictionary)jsonDictionary
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10[0] = @"sections";
  sections = [(ATXFaceGalleryConfiguration *)self sections];
  v4 = [sections _pas_mappedArrayWithTransform:&__block_literal_global_49];
  v11[0] = v4;
  v10[1] = @"source";
  source = [(ATXFaceGalleryConfiguration *)self source];
  if (source)
  {
    if (source == 1)
    {
      v6 = @"Proactive";
    }

    else
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", source];
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
  jsonDictionary = [(ATXFaceGalleryConfiguration *)self jsonDictionary];
  v4 = [v2 dataWithJSONObject:jsonDictionary options:1 error:0];

  return v4;
}

- (ATXFaceGalleryConfiguration)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBFaceGalleryConfiguration alloc] initWithData:dataCopy];

    self = [(ATXFaceGalleryConfiguration *)self initWithProto:v5];
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
  proto = [(ATXFaceGalleryConfiguration *)self proto];
  data = [proto data];

  return data;
}

- (ATXFaceGalleryConfiguration)initWithProto:(id)proto
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
    v14 = __atxlog_handle_lock_screen();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(ATXDigestTimeline *)self initWithProto:v14];
    }

    goto LABEL_9;
  }

  v5 = protoCopy;
  sections = [(ATXPBFaceGalleryConfiguration *)v5 sections];
  v7 = [sections _pas_mappedArrayWithTransform:&__block_literal_global_54_0];
  v8 = v7;
  v9 = MEMORY[0x1E695E0F0];
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  source = [(ATXPBFaceGalleryConfiguration *)v5 source];
  v12 = [(ATXFaceGalleryConfiguration *)self initWithSections:v10 source:source locale:0 dayZero:0];

  self = v12;
  selfCopy = self;
LABEL_10:

  return selfCopy;
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
  sections = [(ATXFaceGalleryConfiguration *)self sections];
  v5 = [sections _pas_mappedArrayWithTransform:&__block_literal_global_57];
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