@interface AVTCoreModelPreset
+ (id)tagSetFromPreset:(id)preset;
- (AVTCoreModelPreset)initWithPreset:(id)preset isDefaultPreset:(BOOL)defaultPreset;
- (BOOL)isEqual:(id)equal;
- (NSString)identifier;
- (NSString)localizedName;
- (NSString)localizedPairedName;
- (id)copyForPairedCategory:(int64_t)category;
- (id)description;
- (unint64_t)hash;
@end

@implementation AVTCoreModelPreset

+ (id)tagSetFromPreset:(id)preset
{
  v3 = MEMORY[0x1E695DF90];
  presetCopy = preset;
  dictionary = [v3 dictionary];
  tags = [presetCopy tags];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__AVTCoreModelPreset_tagSetFromPreset___block_invoke;
  v10[3] = &unk_1E7F3B9B0;
  v11 = dictionary;
  v7 = dictionary;
  [tags enumerateKeysAndObjectsUsingBlock:v10];

  v8 = [v7 copy];

  return v8;
}

void __39__AVTCoreModelPreset_tagSetFromPreset___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E695DFA0];
  v6 = a2;
  v7 = [v5 orderedSetWithArray:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (AVTCoreModelPreset)initWithPreset:(id)preset isDefaultPreset:(BOOL)defaultPreset
{
  presetCopy = preset;
  v13.receiver = self;
  v13.super_class = AVTCoreModelPreset;
  v8 = [(AVTCoreModelPreset *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_preset, preset);
    v10 = [objc_opt_class() tagSetFromPreset:presetCopy];
    tags = v9->_tags;
    v9->_tags = v10;

    v9->_defaultPreset = defaultPreset;
  }

  return v9;
}

- (id)copyForPairedCategory:(int64_t)category
{
  v4 = MEMORY[0x1E698E2A8];
  identifier = [(AVTCoreModelPreset *)self identifier];
  v6 = [v4 presetWithCategory:category identifier:identifier];

  v7 = [[AVTCoreModelPreset alloc] initWithPreset:v6];
  return v7;
}

- (NSString)identifier
{
  preset = [(AVTCoreModelPreset *)self preset];
  identifier = [preset identifier];

  return identifier;
}

- (NSString)localizedName
{
  preset = [(AVTCoreModelPreset *)self preset];
  localizedName = [preset localizedName];

  return localizedName;
}

- (NSString)localizedPairedName
{
  preset = [(AVTCoreModelPreset *)self preset];
  if (objc_opt_respondsToSelector())
  {
    [preset localizedPairedName];
  }

  else
  {
    [preset localizedName];
  }
  v3 = ;

  return v3;
}

- (id)description
{
  v10.receiver = self;
  v10.super_class = AVTCoreModelPreset;
  v3 = [(AVTCoreModelPreset *)&v10 description];
  v4 = [v3 mutableCopy];

  localizedName = [(AVTCoreModelPreset *)self localizedName];
  [v4 appendFormat:@" name: %@", localizedName];

  identifier = [(AVTCoreModelPreset *)self identifier];
  [v4 appendFormat:@" identifier: %@", identifier];

  tags = [(AVTCoreModelPreset *)self tags];
  [v4 appendFormat:@" tags: %@", tags];

  if ([(AVTCoreModelPreset *)self isDefaultPreset])
  {
    [v4 appendString:@" (default)"];
  }

  v8 = [v4 copy];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(AVTCoreModelPreset *)self identifier];
      if (identifier || ([(AVTCoreModelPreset *)equalCopy identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        identifier2 = [(AVTCoreModelPreset *)self identifier];
        identifier3 = [(AVTCoreModelPreset *)equalCopy identifier];
        v9 = [identifier2 isEqual:identifier3];

        if (identifier)
        {
LABEL_11:

          goto LABEL_12;
        }
      }

      else
      {
        v9 = 1;
      }

      goto LABEL_11;
    }

    v9 = 0;
  }

LABEL_12:

  return v9;
}

- (unint64_t)hash
{
  identifier = [(AVTCoreModelPreset *)self identifier];
  v3 = [identifier hash];

  return v3;
}

@end