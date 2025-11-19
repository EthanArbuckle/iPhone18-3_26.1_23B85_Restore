@interface QLThumbnailMetadata
+ (id)thumbnailMetadataFromPropertiesDictionary:(id)a3;
- (QLThumbnailMetadata)init;
- (QLThumbnailMetadata)initWithCoder:(id)a3;
- (id)description;
- (id)propertiesDict;
- (void)encodeWithCoder:(id)a3;
@end

@implementation QLThumbnailMetadata

- (QLThumbnailMetadata)init
{
  v3.receiver = self;
  v3.super_class = QLThumbnailMetadata;
  result = [(QLThumbnailMetadata *)&v3 init];
  if (result)
  {
    result->_inlinePreviewMode = 1;
    result->_baseline = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

+ (id)thumbnailMetadataFromPropertiesDictionary:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(QLThumbnailMetadata);
    v5 = [v3 objectForKeyedSubscript:@"inlinePreviewMode"];
    v6 = v5;
    if (v5)
    {
      -[QLThumbnailMetadata setInlinePreviewMode:](v4, "setInlinePreviewMode:", [v5 intValue]);
    }

    v7 = [v3 objectForKeyedSubscript:@"yBaseline"];
    v8 = v7;
    if (v7)
    {
      -[QLThumbnailMetadata setBaseline:](v4, "setBaseline:", [v7 integerValue]);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)propertiesDict
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ([(QLThumbnailMetadata *)self baseline]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = @"inlinePreviewMode";
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[QLThumbnailMetadata inlinePreviewMode](self, "inlinePreviewMode")}];
    v11[0] = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v8[0] = @"inlinePreviewMode";
    v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[QLThumbnailMetadata inlinePreviewMode](self, "inlinePreviewMode")}];
    v9[0] = v3;
    v8[1] = @"yBaseline";
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[QLThumbnailMetadata baseline](self, "baseline")}];
    v9[1] = v5;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[QLThumbnailMetadata inlinePreviewMode](self forKey:{"inlinePreviewMode"), @"inlinePreviewMode"}];
  [v4 encodeInteger:-[QLThumbnailMetadata baseline](self forKey:{"baseline"), @"baseline"}];
  [v4 encodeInt:-[QLThumbnailMetadata iconFlavor](self forKey:{"iconFlavor"), @"iconFlavor"}];
  v5 = [(QLThumbnailMetadata *)self extensionBadge];
  [v4 encodeObject:v5 forKey:@"extensionBadge"];

  [v4 encodeBool:-[QLThumbnailMetadata isLowQuality](self forKey:{"isLowQuality"), @"isLowQuality"}];
  [v4 encodeBool:-[QLThumbnailMetadata hasIconModeApplied](self forKey:{"hasIconModeApplied"), @"hasIconModeApplied"}];
  v6 = [(QLThumbnailMetadata *)self additionalProperties];
  [v4 encodeObject:v6 forKey:@"additionalProperties"];
}

- (QLThumbnailMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(QLThumbnailMetadata *)self init];
  if (v5)
  {
    v5->_inlinePreviewMode = [v4 decodeIntForKey:@"inlinePreviewMode"];
    v5->_baseline = [v4 decodeIntegerForKey:@"baseline"];
    v5->_iconFlavor = [v4 decodeIntForKey:@"iconFlavor"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"extensionBadge"];
    extensionBadge = v5->_extensionBadge;
    v5->_extensionBadge = v6;

    v5->_isLowQuality = [v4 decodeBoolForKey:@"isLowQuality"];
    v5->_hasIconModeApplied = [v4 decodeBoolForKey:@"hasIconModeApplied"];
    v8 = [v4 decodePropertyListForKey:@"additionalProperties"];
    additionalProperties = v5->_additionalProperties;
    v5->_additionalProperties = v8;
  }

  return v5;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"inlinePreviewMode: %d; baseline %ld; props = %@", -[QLThumbnailMetadata inlinePreviewMode](self, "inlinePreviewMode"), -[QLThumbnailMetadata baseline](self, "baseline"), self->_additionalProperties];

  return v2;
}

@end