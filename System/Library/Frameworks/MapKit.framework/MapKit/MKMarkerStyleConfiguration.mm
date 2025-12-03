@interface MKMarkerStyleConfiguration
+ (BOOL)_darkModeForView:(id)view;
+ (BOOL)_increaseContrastForView:(id)view;
+ (double)_fallbackScale;
+ (double)_scaleForView:(id)view;
+ (id)configurationForView:(id)view;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMarkerStyleConfiguration:(id)configuration;
- (MKMarkerStyleConfiguration)init;
- (id)debugDescription;
- (unint64_t)hash;
@end

@implementation MKMarkerStyleConfiguration

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  v7 = @"NO";
  if (self->_selected)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_darkMode)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->_glyphHidden)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if (self->_increasedContrast)
  {
    v7 = @"YES";
  }

  v11 = [v3 stringWithFormat:@"<%@: %p selected: %@, scale: %.1f, darkMode: %@, fillColor: %@, glyphColor: %@, glyphHidden: %@, increasedContrast: %@, styleAttributes: %@>", v5, self, v8, *&self->_scale, v9, self->_fillColor, self->_glyphColor, v10, v7, self->_styleAttributes];

  return v11;
}

- (unint64_t)hash
{
  v3 = self->_selected | (2 * self->_darkMode) | (4 * self->_increasedContrast) | (8 * self->_glyphHidden) | (16 * self->_scale);
  fillColor = self->_fillColor;
  if (fillColor)
  {
    v3 ^= [(UIColor *)fillColor hash]<< 8;
  }

  glyphColor = self->_glyphColor;
  if (glyphColor)
  {
    v3 ^= [(UIColor *)glyphColor hash]<< 12;
  }

  styleAttributes = self->_styleAttributes;
  if (styleAttributes)
  {
    v3 ^= [(GEOFeatureStyleAttributes *)styleAttributes hash]<< 16;
  }

  return v3;
}

- (BOOL)isEqualToMarkerStyleConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selected = self->_selected;
  if (selected != [configurationCopy selected])
  {
    goto LABEL_24;
  }

  darkMode = self->_darkMode;
  if (darkMode != [configurationCopy darkMode])
  {
    goto LABEL_24;
  }

  increasedContrast = self->_increasedContrast;
  if (increasedContrast != [configurationCopy increasedContrast])
  {
    goto LABEL_24;
  }

  glyphHidden = self->_glyphHidden;
  if (glyphHidden != [configurationCopy glyphHidden])
  {
    goto LABEL_24;
  }

  scale = self->_scale;
  [configurationCopy scale];
  if (vabdd_f64(scale, v10) > 2.22044605e-16)
  {
    goto LABEL_24;
  }

  fillColor = self->_fillColor;
  v12 = fillColor;
  if (!fillColor)
  {
    fillColor = [configurationCopy fillColor];
    if (!fillColor)
    {
      goto LABEL_13;
    }

    glyphHidden = fillColor;
    v12 = self->_fillColor;
  }

  fillColor2 = [configurationCopy fillColor];
  v15 = [(UIColor *)v12 isEqual:fillColor2];

  if (fillColor)
  {
    if (!v15)
    {
      goto LABEL_24;
    }
  }

  else
  {

    if ((v15 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_13:
  glyphColor = self->_glyphColor;
  v17 = glyphColor;
  if (!glyphColor)
  {
    glyphColor = [configurationCopy glyphColor];
    if (!glyphColor)
    {
      goto LABEL_18;
    }

    glyphHidden = glyphColor;
    v17 = self->_glyphColor;
  }

  glyphColor2 = [configurationCopy glyphColor];
  v20 = [(UIColor *)v17 isEqual:glyphColor2];

  if (glyphColor)
  {
    if (v20)
    {
      goto LABEL_18;
    }

LABEL_24:
    v24 = 0;
    goto LABEL_25;
  }

  if ((v20 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  styleAttributes = self->_styleAttributes;
  v22 = styleAttributes;
  if (!styleAttributes)
  {
    glyphHidden = [configurationCopy styleAttributes];
    if (!glyphHidden)
    {
      v24 = 1;
LABEL_27:

      goto LABEL_25;
    }

    v22 = self->_styleAttributes;
  }

  styleAttributes = [configurationCopy styleAttributes];
  v24 = [(GEOFeatureStyleAttributes *)v22 isEqual:styleAttributes];

  if (!styleAttributes)
  {
    goto LABEL_27;
  }

LABEL_25:

  return v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(MKMarkerStyleConfiguration *)self isEqualToMarkerStyleConfiguration:equalCopy];
  }

  return v5;
}

- (MKMarkerStyleConfiguration)init
{
  v3.receiver = self;
  v3.super_class = MKMarkerStyleConfiguration;
  result = [(MKMarkerStyleConfiguration *)&v3 init];
  if (result)
  {
    result->_scale = 1.0;
  }

  return result;
}

+ (double)_fallbackScale
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v4 = v3;

  return v4;
}

+ (double)_scaleForView:(id)view
{
  traitCollection = [view traitCollection];
  [traitCollection displayScale];
  v6 = v5;

  if (v6 != 0.0)
  {
    return v6;
  }

  [self _fallbackScale];
  return result;
}

+ (BOOL)_darkModeForView:(id)view
{
  traitCollection = [view traitCollection];
  v4 = [traitCollection userInterfaceStyle] == 2;

  return v4;
}

+ (BOOL)_increaseContrastForView:(id)view
{
  traitCollection = [view traitCollection];
  v4 = [traitCollection accessibilityContrast] == 1;

  return v4;
}

+ (id)configurationForView:(id)view
{
  viewCopy = view;
  v5 = objc_alloc_init(MKMarkerStyleConfiguration);
  [self _scaleForView:viewCopy];
  [(MKMarkerStyleConfiguration *)v5 setScale:?];
  -[MKMarkerStyleConfiguration setDarkMode:](v5, "setDarkMode:", [self _darkModeForView:viewCopy]);
  v6 = [self _increaseContrastForView:viewCopy];

  [(MKMarkerStyleConfiguration *)v5 setIncreasedContrast:v6];

  return v5;
}

@end