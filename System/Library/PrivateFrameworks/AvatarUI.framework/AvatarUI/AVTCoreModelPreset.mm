@interface AVTCoreModelPreset
+ (id)tagSetFromPreset:(id)a3;
- (AVTCoreModelPreset)initWithPreset:(id)a3 isDefaultPreset:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)identifier;
- (NSString)localizedName;
- (NSString)localizedPairedName;
- (id)copyForPairedCategory:(int64_t)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation AVTCoreModelPreset

+ (id)tagSetFromPreset:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = [v3 dictionary];
  v6 = [v4 tags];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__AVTCoreModelPreset_tagSetFromPreset___block_invoke;
  v10[3] = &unk_1E7F3B9B0;
  v11 = v5;
  v7 = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];

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

- (AVTCoreModelPreset)initWithPreset:(id)a3 isDefaultPreset:(BOOL)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = AVTCoreModelPreset;
  v8 = [(AVTCoreModelPreset *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_preset, a3);
    v10 = [objc_opt_class() tagSetFromPreset:v7];
    tags = v9->_tags;
    v9->_tags = v10;

    v9->_defaultPreset = a4;
  }

  return v9;
}

- (id)copyForPairedCategory:(int64_t)a3
{
  v4 = MEMORY[0x1E698E2A8];
  v5 = [(AVTCoreModelPreset *)self identifier];
  v6 = [v4 presetWithCategory:a3 identifier:v5];

  v7 = [[AVTCoreModelPreset alloc] initWithPreset:v6];
  return v7;
}

- (NSString)identifier
{
  v2 = [(AVTCoreModelPreset *)self preset];
  v3 = [v2 identifier];

  return v3;
}

- (NSString)localizedName
{
  v2 = [(AVTCoreModelPreset *)self preset];
  v3 = [v2 localizedName];

  return v3;
}

- (NSString)localizedPairedName
{
  v2 = [(AVTCoreModelPreset *)self preset];
  if (objc_opt_respondsToSelector())
  {
    [v2 localizedPairedName];
  }

  else
  {
    [v2 localizedName];
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

  v5 = [(AVTCoreModelPreset *)self localizedName];
  [v4 appendFormat:@" name: %@", v5];

  v6 = [(AVTCoreModelPreset *)self identifier];
  [v4 appendFormat:@" identifier: %@", v6];

  v7 = [(AVTCoreModelPreset *)self tags];
  [v4 appendFormat:@" tags: %@", v7];

  if ([(AVTCoreModelPreset *)self isDefaultPreset])
  {
    [v4 appendString:@" (default)"];
  }

  v8 = [v4 copy];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(AVTCoreModelPreset *)self identifier];
      if (v6 || ([(AVTCoreModelPreset *)v5 identifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v7 = [(AVTCoreModelPreset *)self identifier];
        v8 = [(AVTCoreModelPreset *)v5 identifier];
        v9 = [v7 isEqual:v8];

        if (v6)
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
  v2 = [(AVTCoreModelPreset *)self identifier];
  v3 = [v2 hash];

  return v3;
}

@end