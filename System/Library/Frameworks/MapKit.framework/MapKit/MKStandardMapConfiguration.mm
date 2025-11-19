@interface MKStandardMapConfiguration
+ (BOOL)_overlayRequiresModernMap:(id)a3;
+ (BOOL)_overlaySupportsElevation:(id)a3;
+ (BOOL)_overlaysRequireModernMap:(id)a3;
+ (BOOL)_overlaysSupportElevation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToStandardMapConfiguration:(id)a3;
- (MKStandardMapConfiguration)init;
- (MKStandardMapConfiguration)initWithCoder:(id)a3;
- (MKStandardMapConfiguration)initWithElevationStyle:(MKMapElevationStyle)elevationStyle;
- (MKStandardMapConfiguration)initWithElevationStyle:(MKMapElevationStyle)elevationStyle emphasisStyle:(MKStandardMapEmphasisStyle)emphasisStyle;
- (MKStandardMapConfiguration)initWithEmphasisStyle:(MKStandardMapEmphasisStyle)emphasisStyle;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_addObserver:(id)a3 options:(unint64_t)a4 context:(void *)a5;
- (void)_removeObserver:(id)a3 context:(void *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MKStandardMapConfiguration

- (MKStandardMapConfiguration)init
{
  v3.receiver = self;
  v3.super_class = MKStandardMapConfiguration;
  return [(MKMapConfiguration *)&v3 initWithElevationStyle:0];
}

- (void)_removeObserver:(id)a3 context:(void *)a4
{
  v7.receiver = self;
  v7.super_class = MKStandardMapConfiguration;
  v6 = a3;
  [(MKMapConfiguration *)&v7 _removeObserver:v6 context:a4];
  [(MKStandardMapConfiguration *)self removeObserver:v6 forKeyPath:@"emphasisStyle" context:a4, v7.receiver, v7.super_class];
}

- (void)_addObserver:(id)a3 options:(unint64_t)a4 context:(void *)a5
{
  v9.receiver = self;
  v9.super_class = MKStandardMapConfiguration;
  v8 = a3;
  [(MKMapConfiguration *)&v9 _addObserver:v8 options:a4 context:a5];
  [(MKStandardMapConfiguration *)self addObserver:v8 forKeyPath:@"emphasisStyle" options:a4 context:a5, v9.receiver, v9.super_class];
}

- (BOOL)isEqualToStandardMapConfiguration:(id)a3
{
  v4 = a3;
  if (v4 && (v14.receiver = self, v14.super_class = MKStandardMapConfiguration, -[MKMapConfiguration isEqual:](&v14, sel_isEqual_, v4)) && (emphasisStyle = self->_emphasisStyle, emphasisStyle == [v4 emphasisStyle]))
  {
    v6 = [(MKStandardMapConfiguration *)self pointOfInterestFilter];
    v7 = [v4 pointOfInterestFilter];
    v8 = v6;
    v9 = v7;
    if (v8 | v9 && (v10 = [v8 isEqual:v9], v9, v8, !v10))
    {
      LOBYTE(v12) = 0;
    }

    else
    {
      v11 = [(MKStandardMapConfiguration *)self showsTraffic];
      v12 = v11 ^ [v4 showsTraffic] ^ 1;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MKStandardMapConfiguration *)self isEqualToStandardMapConfiguration:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = MKStandardMapConfiguration;
  result = [(MKMapConfiguration *)&v5 copyWithZone:a3];
  *(result + 4) = self->_emphasisStyle;
  return result;
}

- (MKStandardMapConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MKStandardMapConfiguration;
  v5 = [(MKMapConfiguration *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_emphasisStyle = [v4 decodeIntegerForKey:@"MKStandardMapConfigurationEmphasisStyle"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MKStandardMapConfiguration;
  v4 = a3;
  [(MKMapConfiguration *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_emphasisStyle forKey:{@"MKStandardMapConfigurationEmphasisStyle", v5.receiver, v5.super_class}];
}

- (MKStandardMapConfiguration)initWithElevationStyle:(MKMapElevationStyle)elevationStyle emphasisStyle:(MKStandardMapEmphasisStyle)emphasisStyle
{
  v6 = [(MKStandardMapConfiguration *)self init];
  v7 = v6;
  if (v6)
  {
    v6->_emphasisStyle = emphasisStyle;
    [(MKMapConfiguration *)v6 setElevationStyle:elevationStyle];
  }

  return v7;
}

- (MKStandardMapConfiguration)initWithEmphasisStyle:(MKStandardMapEmphasisStyle)emphasisStyle
{
  result = [(MKStandardMapConfiguration *)self init];
  if (result)
  {
    result->_emphasisStyle = emphasisStyle;
  }

  return result;
}

- (MKStandardMapConfiguration)initWithElevationStyle:(MKMapElevationStyle)elevationStyle
{
  v4 = [(MKStandardMapConfiguration *)self init];
  v5 = v4;
  if (v4)
  {
    [(MKMapConfiguration *)v4 setElevationStyle:elevationStyle];
  }

  return v5;
}

+ (BOOL)_overlaysSupportElevation:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (![a1 _overlaySupportsElevation:{*(*(&v11 + 1) + 8 * i), v11}])
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

+ (BOOL)_overlaySupportsElevation:(id)a3
{
  v4 = a3;
  v5 = ([a1 _overlayRequiresModernMap:v4] & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && objc_msgSend(v4, "elevations") != 0;

  return v5;
}

+ (BOOL)_overlaysRequireModernMap:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([a1 _overlayRequiresModernMap:{*(*(&v11 + 1) + 8 * i), v11}])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

+ (BOOL)_overlayRequiresModernMap:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 _requiresModernMap];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end