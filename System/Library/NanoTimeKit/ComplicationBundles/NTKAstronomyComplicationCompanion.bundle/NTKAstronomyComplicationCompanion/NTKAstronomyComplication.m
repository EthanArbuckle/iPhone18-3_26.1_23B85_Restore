@interface NTKAstronomyComplication
+ (id)_allComplicationConfigurationsWithType:(unint64_t)a3;
- (NTKAstronomyComplication)initWithCoder:(id)a3;
- (id)_generateUniqueIdentifier;
- (id)_initWithComplicationType:(unint64_t)a3 JSONDictionary:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)localizedDetailText;
- (id)localizedKeylineLabelText;
- (void)_addKeysToJSONDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKAstronomyComplication

+ (id)_allComplicationConfigurationsWithType:(unint64_t)a3
{
  v5 = +[NSMutableArray array];
  v6 = a3 - 39;
  if (a3 - 39 <= 2)
  {
    v7 = [[a1 alloc] initWithComplicationType:a3];
    v7[1] = v6;
    v8 = [v7 _generateUniqueIdentifier];
    [v7 setUniqueIdentifier:v8];

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
  v4 = [v3 stringValue];
  v5 = [NSNumber numberWithUnsignedInteger:self->_vista];
  v6 = [NSString stringWithFormat:@"%@-%@", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = NTKAstronomyComplication;
  result = [(NTKAstronomyComplication *)&v5 copyWithZone:a3];
  *(result + 1) = self->_vista;
  return result;
}

- (NTKAstronomyComplication)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NTKAstronomyComplication;
  v5 = [(NTKAstronomyComplication *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kAstronomyComplicationVistaKey"];
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

    v8 = [(NTKAstronomyComplication *)v5 _generateUniqueIdentifier];
    [(NTKAstronomyComplication *)v5 setUniqueIdentifier:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = NTKAstronomyComplication;
  v4 = a3;
  [(NTKAstronomyComplication *)&v7 encodeWithCoder:v4];
  vista = self->_vista;
  v6 = NUNIAstronomyVistaNameForValue();
  [v4 encodeObject:v6 forKey:{@"kAstronomyComplicationVistaKey", v7.receiver, v7.super_class}];
}

- (void)_addKeysToJSONDictionary:(id)a3
{
  v7.receiver = self;
  v7.super_class = NTKAstronomyComplication;
  v4 = a3;
  [(NTKAstronomyComplication *)&v7 _addKeysToJSONDictionary:v4];
  vista = self->_vista;
  v6 = NUNIAstronomyVistaNameForValue();
  [v4 setObject:v6 forKeyedSubscript:{NTKFaceBundleComplicationAstronomyVistaKey, v7.receiver, v7.super_class}];
}

- (id)_initWithComplicationType:(unint64_t)a3 JSONDictionary:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = NTKAstronomyComplication;
  v7 = [(NTKAstronomyComplication *)&v13 _initWithComplicationType:a3 JSONDictionary:v6];
  if (v7)
  {
    v8 = NTKFaceBundleComplicationAstronomyVistaKey;
    v9 = [v6 objectForKeyedSubscript:NTKFaceBundleComplicationAstronomyVistaKey];
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

    v11 = [v7 _generateUniqueIdentifier];
    [v7 setUniqueIdentifier:v11];
  }

  return v7;
}

@end