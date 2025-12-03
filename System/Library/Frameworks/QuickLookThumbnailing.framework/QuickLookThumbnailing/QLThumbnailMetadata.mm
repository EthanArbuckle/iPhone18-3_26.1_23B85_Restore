@interface QLThumbnailMetadata
+ (id)thumbnailMetadataFromPropertiesDictionary:(id)dictionary;
- (QLThumbnailMetadata)init;
- (QLThumbnailMetadata)initWithCoder:(id)coder;
- (id)description;
- (id)propertiesDict;
- (void)encodeWithCoder:(id)coder;
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

+ (id)thumbnailMetadataFromPropertiesDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v4 = objc_alloc_init(QLThumbnailMetadata);
    v5 = [dictionaryCopy objectForKeyedSubscript:@"inlinePreviewMode"];
    v6 = v5;
    if (v5)
    {
      -[QLThumbnailMetadata setInlinePreviewMode:](v4, "setInlinePreviewMode:", [v5 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"yBaseline"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[QLThumbnailMetadata inlinePreviewMode](self forKey:{"inlinePreviewMode"), @"inlinePreviewMode"}];
  [coderCopy encodeInteger:-[QLThumbnailMetadata baseline](self forKey:{"baseline"), @"baseline"}];
  [coderCopy encodeInt:-[QLThumbnailMetadata iconFlavor](self forKey:{"iconFlavor"), @"iconFlavor"}];
  extensionBadge = [(QLThumbnailMetadata *)self extensionBadge];
  [coderCopy encodeObject:extensionBadge forKey:@"extensionBadge"];

  [coderCopy encodeBool:-[QLThumbnailMetadata isLowQuality](self forKey:{"isLowQuality"), @"isLowQuality"}];
  [coderCopy encodeBool:-[QLThumbnailMetadata hasIconModeApplied](self forKey:{"hasIconModeApplied"), @"hasIconModeApplied"}];
  additionalProperties = [(QLThumbnailMetadata *)self additionalProperties];
  [coderCopy encodeObject:additionalProperties forKey:@"additionalProperties"];
}

- (QLThumbnailMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(QLThumbnailMetadata *)self init];
  if (v5)
  {
    v5->_inlinePreviewMode = [coderCopy decodeIntForKey:@"inlinePreviewMode"];
    v5->_baseline = [coderCopy decodeIntegerForKey:@"baseline"];
    v5->_iconFlavor = [coderCopy decodeIntForKey:@"iconFlavor"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensionBadge"];
    extensionBadge = v5->_extensionBadge;
    v5->_extensionBadge = v6;

    v5->_isLowQuality = [coderCopy decodeBoolForKey:@"isLowQuality"];
    v5->_hasIconModeApplied = [coderCopy decodeBoolForKey:@"hasIconModeApplied"];
    v8 = [coderCopy decodePropertyListForKey:@"additionalProperties"];
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