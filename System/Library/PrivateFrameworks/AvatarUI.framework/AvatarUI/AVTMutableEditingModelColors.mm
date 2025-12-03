@interface AVTMutableEditingModelColors
- (AVTMutableEditingModelColors)initWithVariationStore:(id)store;
- (void)setColor:(id)color forSettingKind:(id)kind identifier:(id)identifier;
@end

@implementation AVTMutableEditingModelColors

- (AVTMutableEditingModelColors)initWithVariationStore:(id)store
{
  v4 = MEMORY[0x1E695DF90];
  storeCopy = store;
  dictionary = [v4 dictionary];
  v9.receiver = self;
  v9.super_class = AVTMutableEditingModelColors;
  v7 = [(AVTEditingModelColors *)&v9 initWithStorage:dictionary variationStore:storeCopy];

  if (v7)
  {
    objc_storeStrong(&v7->_mutableStorage, dictionary);
  }

  return v7;
}

- (void)setColor:(id)color forSettingKind:(id)kind identifier:(id)identifier
{
  var1 = kind.var1;
  var0 = kind.var0;
  colorCopy = color;
  identifierCopy = identifier;
  mutableStorage = [(AVTMutableEditingModelColors *)self mutableStorage];
  v11 = AVTAvatarSettingKindIdentifier(var0, var1);
  dictionary = [mutableStorage objectForKeyedSubscript:v11];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    mutableStorage2 = [(AVTMutableEditingModelColors *)self mutableStorage];
    v14 = AVTAvatarSettingKindIdentifier(var0, var1);
    [mutableStorage2 setObject:dictionary forKeyedSubscript:v14];
  }

  [dictionary setObject:colorCopy forKeyedSubscript:identifierCopy];
}

@end