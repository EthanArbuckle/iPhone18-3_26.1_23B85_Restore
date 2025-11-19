@interface AVMutableMetadataItem
+ (AVMutableMetadataItem)metadataItem;
- (AVMetadataIdentifier)identifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)value;
- (void)setDataType:(NSString *)dataType;
- (void)setDuration:(CMTime *)duration;
- (void)setExtendedLanguageTag:(NSString *)extendedLanguageTag;
- (void)setExtraAttributes:(NSDictionary *)extraAttributes;
- (void)setIdentifier:(AVMetadataIdentifier)identifier;
- (void)setKey:(id)key;
- (void)setKeySpace:(AVMetadataKeySpace)keySpace;
- (void)setLocale:(NSLocale *)locale;
- (void)setPreferredStorageLocation:(id)a3;
- (void)setStartDate:(NSDate *)startDate;
- (void)setTime:(CMTime *)time;
- (void)setValue:(id)value;
@end

@implementation AVMutableMetadataItem

+ (AVMutableMetadataItem)metadataItem
{
  v2 = objc_alloc_init(AVMutableMetadataItem);

  return v2;
}

- (AVMetadataIdentifier)identifier
{
  result = self->super._priv->identifier;
  if (!result)
  {
    [(AVMetadataItem *)self _updateIdentifier];
    return self->super._priv->identifier;
  }

  return result;
}

- (id)value
{
  v2 = self->super._priv->value;

  return v2;
}

- (void)setKey:(id)key
{
  v4 = self->super._priv->key;
  if (v4 != key)
  {

    self->super._priv->key = [key copyWithZone:{-[AVMutableMetadataItem zone](self, "zone")}];
    [(AVMetadataItem *)self _updateCommonKey];

    [(AVMetadataItem *)self _updateIdentifier];
  }
}

- (void)setKeySpace:(AVMetadataKeySpace)keySpace
{
  v4 = self->super._priv->keySpace;
  if (v4 != keySpace)
  {

    self->super._priv->keySpace = [(NSString *)keySpace copy];
    [(AVMetadataItem *)self _updateCommonKey];

    [(AVMetadataItem *)self _updateIdentifier];
  }
}

- (void)setIdentifier:(AVMetadataIdentifier)identifier
{
  v3 = self->super._priv->identifier;
  if (v3 != identifier)
  {

    self->super._priv->identifier = 0;
    v7 = [AVMetadataItem keyForIdentifier:identifier];
    v8 = [AVMetadataItem keySpaceForIdentifier:identifier];
    if (v8)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v11 = MEMORY[0x1E695DF30];
      v12 = *MEMORY[0x1E695D940];
      v13 = NSStringFromSelector(sel_identifierForKey_keySpace_);
      v19 = [v11 exceptionWithName:v12 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Bad identifier. Identifier should be of the form <keySpace>/<key>. Try using +%@ to generate an identifier from key and keySpace.", v14, v15, v16, v17, v18, v13), 0}];
      objc_exception_throw(v19);
    }

    v10 = v8;
    self->super._priv->identifier = [(NSString *)identifier copy];
    [(AVMutableMetadataItem *)self setKey:v7];

    [(AVMutableMetadataItem *)self setKeySpace:v10];
  }
}

- (void)setPreferredStorageLocation:(id)a3
{
  priv = self->super._priv;
  preferredStorageLocation = priv->preferredStorageLocation;
  if (preferredStorageLocation != a3)
  {

    self->super._priv->preferredStorageLocation = [a3 copy];
    priv = self->super._priv;
  }

  priv->preferredStorageLocationWasSet = 1;
}

- (void)setLocale:(NSLocale *)locale
{
  v4 = self->super._priv->locale;
  if (v4 != locale)
  {

    self->super._priv->locale = [(NSLocale *)locale copy];

    [(AVMetadataItem *)self _updateLanguageInformationFromLocale:locale];
  }
}

- (void)setExtendedLanguageTag:(NSString *)extendedLanguageTag
{
  v4 = self->super._priv->extendedLanguageTag;
  if (v4 != extendedLanguageTag)
  {

    self->super._priv->extendedLanguageTag = [(NSString *)extendedLanguageTag copy];

    [(AVMetadataItem *)self _updateLanguageInformationFromExtendedLanguageTag:extendedLanguageTag];
  }
}

- (void)setTime:(CMTime *)time
{
  priv = self->super._priv;
  v4 = *&time->value;
  priv->time.epoch = time->epoch;
  *&priv->time.value = v4;
}

- (void)setDuration:(CMTime *)duration
{
  priv = self->super._priv;
  v4 = *&duration->value;
  priv->duration.epoch = duration->epoch;
  *&priv->duration.value = v4;
}

- (void)setStartDate:(NSDate *)startDate
{
  v3 = self->super._priv->startDate;
  if (v3 != startDate)
  {

    self->super._priv->startDate = [(NSDate *)startDate copy];
  }
}

- (void)setValue:(id)value
{
  v3 = self->super._priv->value;
  if (v3 != value)
  {

    self->super._priv->value = [value copyWithZone:{-[AVMutableMetadataItem zone](self, "zone")}];
  }
}

- (void)setDataType:(NSString *)dataType
{
  v9 = self->super._priv->dataType;
  if (v9 != dataType)
  {
    v14 = v5;
    v15 = v4;
    v16 = v3;

    self->super._priv->dataType = [(NSString *)dataType copy];
    v12 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self->super._priv->extras];
    [v12 setValue:dataType forKey:*MEMORY[0x1E6971F10]];
    if (dataType)
    {
      v13 = *MEMORY[0x1E6971EC8];
    }

    else
    {
      v13 = 0;
    }

    [v12 setValue:v13 forKey:{*MEMORY[0x1E6971F18], v6, v14, v15, v16, v7}];
    [v12 removeObjectForKey:*MEMORY[0x1E6971F08]];
    [v12 removeObjectForKey:*MEMORY[0x1E6971F00]];

    [(AVMutableMetadataItem *)self setExtraAttributes:v12];
  }
}

- (void)setExtraAttributes:(NSDictionary *)extraAttributes
{
  extras = self->super._priv->extras;
  if (extras != extraAttributes)
  {

    self->super._priv->extras = [(NSDictionary *)extraAttributes copy];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AVMetadataItem alloc];
  v5 = [(AVMetadataItem *)self _figMetadataDictionary];

  return [(AVMetadataItem *)v4 _initWithFigMetadataDictionary:v5];
}

@end