@interface NTKAstronomyComplication
+ (id)_allComplicationConfigurationsWithType:(unint64_t)type;
- (NTKAstronomyComplication)initWithCoder:(id)coder;
- (id)_generateUniqueIdentifier;
- (id)_initWithComplicationType:(unint64_t)type JSONDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localizedDetailText;
- (id)localizedKeylineLabelText;
- (void)_addKeysToJSONDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKAstronomyComplication

+ (id)_allComplicationConfigurationsWithType:(unint64_t)type
{
  v5 = +[NSMutableArray array];
  v6 = type - 39;
  if (type - 39 <= 2)
  {
    v7 = [[self alloc] initWithComplicationType:type];
    v7[1] = v6;
    _generateUniqueIdentifier = [v7 _generateUniqueIdentifier];
    [v7 setUniqueIdentifier:_generateUniqueIdentifier];

    [v5 addObject:v7];
  }

  return v5;
}

- (id)localizedKeylineLabelText
{
  vista = self->_vista;
  v3 = NUNIAstronomyVistaNameLocalizationKeyForValue();
  v4 = [v3 stringByAppendingString:@"_COMPANION"];

  v5 = NTKCompanionClockFaceLocalizedString();

  return v5;
}

- (id)localizedDetailText
{
  vista = self->_vista;
  v3 = NUNIAstronomyVistaNameLocalizationKeyForValue();
  v4 = [v3 stringByAppendingString:@"_COMPANION"];

  v5 = NTKCompanionClockFaceLocalizedString();

  return v5;
}

- (id)_generateUniqueIdentifier
{
  v3 = [NSNumber numberWithUnsignedInteger:[(NTKAstronomyComplication *)self complicationType]];
  stringValue = [v3 stringValue];
  v5 = [NSNumber numberWithUnsignedInteger:self->_vista];
  v6 = [NSString stringWithFormat:@"%@-%@", stringValue, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = NTKAstronomyComplication;
  result = [(NTKAstronomyComplication *)&v5 copyWithZone:zone];
  *(result + 1) = self->_vista;
  return result;
}

- (NTKAstronomyComplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = NTKAstronomyComplication;
  v5 = [(NTKAstronomyComplication *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kAstronomyComplicationVistaKey"];
    if (!v6)
    {
      [NSException raise:NSInvalidUnarchiveOperationException format:@"%@ cannot have nil _vista", objc_opt_class()];
    }

    v7 = NUNIAstronomyVistaValueForName();
    v5->_vista = v7;
    if (v7 == -1)
    {
      [NSException raise:NSInvalidUnarchiveOperationException format:@"%@ cannot have invalid _vista '%@'", objc_opt_class(), v6];
    }

    _generateUniqueIdentifier = [(NTKAstronomyComplication *)v5 _generateUniqueIdentifier];
    [(NTKAstronomyComplication *)v5 setUniqueIdentifier:_generateUniqueIdentifier];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = NTKAstronomyComplication;
  coderCopy = coder;
  [(NTKAstronomyComplication *)&v7 encodeWithCoder:coderCopy];
  vista = self->_vista;
  v6 = NUNIAstronomyVistaNameForValue();
  [coderCopy encodeObject:v6 forKey:{@"kAstronomyComplicationVistaKey", v7.receiver, v7.super_class}];
}

- (void)_addKeysToJSONDictionary:(id)dictionary
{
  v7.receiver = self;
  v7.super_class = NTKAstronomyComplication;
  dictionaryCopy = dictionary;
  [(NTKAstronomyComplication *)&v7 _addKeysToJSONDictionary:dictionaryCopy];
  vista = self->_vista;
  v6 = NUNIAstronomyVistaNameForValue();
  [dictionaryCopy setObject:v6 forKeyedSubscript:{NTKFaceBundleComplicationAstronomyVistaKey, v7.receiver, v7.super_class}];
}

- (id)_initWithComplicationType:(unint64_t)type JSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = NTKAstronomyComplication;
  v7 = [(NTKAstronomyComplication *)&v13 _initWithComplicationType:type JSONDictionary:dictionaryCopy];
  if (v7)
  {
    v8 = NTKFaceBundleComplicationAstronomyVistaKey;
    v9 = [dictionaryCopy objectForKeyedSubscript:NTKFaceBundleComplicationAstronomyVistaKey];
    if (!v9)
    {
      [NSException raise:NTKFaceBundleException format:@"missing value for key '%@'", v8];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [NSException raise:NTKFaceBundleException format:@"value for key '%@' must be String - invalid value: %@", v8, v9];
    }

    v10 = NUNIAstronomyVistaValueForName();
    v7[1] = v10;
    if (v10 == -1)
    {
      [NSException raise:NTKFaceBundleException format:@"invalid value '%@' for key '%@'", v9, v8];
    }

    _generateUniqueIdentifier = [v7 _generateUniqueIdentifier];
    [v7 setUniqueIdentifier:_generateUniqueIdentifier];
  }

  return v7;
}

@end