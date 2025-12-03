@interface NTKMargaritaColorPalette
- (NTKMargaritaColorPalette)init;
- (id)_complication;
- (id)_stripe;
- (id)copyWithZone:(_NSZone *)zone;
- (id)identifier;
- (void)configurationDidChange:(id)change;
- (void)setEditing:(BOOL)editing;
- (void)setStyle:(unint64_t)style;
@end

@implementation NTKMargaritaColorPalette

- (NTKMargaritaColorPalette)init
{
  v3 = objc_opt_class();
  v5.receiver = self;
  v5.super_class = NTKMargaritaColorPalette;
  return [(NTKMargaritaColorPalette *)&v5 initWithFaceClass:v3];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NTKMargaritaColorPalette;
  v4 = [(NTKMargaritaColorPalette *)&v6 copyWithZone:zone];
  [v4 setStyle:{-[NTKMargaritaColorPalette style](self, "style")}];
  [v4 setEditing:{-[NTKMargaritaColorPalette isEditing](self, "isEditing")}];
  return v4;
}

- (id)identifier
{
  cachedIdentifier = self->_cachedIdentifier;
  if (!cachedIdentifier)
  {
    v8.receiver = self;
    v8.super_class = NTKMargaritaColorPalette;
    identifier = [(NTKMargaritaColorPalette *)&v8 identifier];
    v5 = [NSString stringWithFormat:@"%@-%lu-%lu", identifier, [(NTKMargaritaColorPalette *)self isEditing], [(NTKMargaritaColorPalette *)self style]];
    v6 = self->_cachedIdentifier;
    self->_cachedIdentifier = v5;

    cachedIdentifier = self->_cachedIdentifier;
  }

  return cachedIdentifier;
}

- (void)configurationDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = NTKMargaritaColorPalette;
  [(NTKMargaritaColorPalette *)&v5 configurationDidChange:change];
  cachedIdentifier = self->_cachedIdentifier;
  self->_cachedIdentifier = 0;
}

- (void)setEditing:(BOOL)editing
{
  self->_editing = editing;
  self->_cachedIdentifier = 0;
  _objc_release_x1();
}

- (void)setStyle:(unint64_t)style
{
  self->_style = style;
  self->_cachedIdentifier = 0;
  _objc_release_x1();
}

- (id)_stripe
{
  primaryColor = [(NTKMargaritaColorPalette *)self primaryColor];
  v4 = [(NTKMargaritaColorPalette *)self style]== &dword_0 + 2 || [(NTKMargaritaColorPalette *)self style]== &dword_0 + 3;
  if ([(NTKMargaritaColorPalette *)self isBlackColor]&& (self->_editing || v4))
  {
    softBlack = [(NTKMargaritaColorPalette *)self softBlack];
  }

  else
  {
    softBlack = primaryColor;
  }

  v6 = softBlack;

  return v6;
}

- (id)_complication
{
  if ([(NTKMargaritaColorPalette *)self isWhiteColor])
  {
    darkGray = [UIColor colorWithWhite:0.9 alpha:1.0];
LABEL_7:
    v7 = darkGray;
    goto LABEL_8;
  }

  configuration = [(NTKMargaritaColorPalette *)self configuration];
  colorOption = [configuration colorOption];
  if ([colorOption isEqualToString:@"charcoal"])
  {

LABEL_6:
    darkGray = [(NTKMargaritaColorPalette *)self darkGray];
    goto LABEL_7;
  }

  isBlackColor = [(NTKMargaritaColorPalette *)self isBlackColor];

  if (isBlackColor)
  {
    goto LABEL_6;
  }

  configuration2 = [(NTKMargaritaColorPalette *)self configuration];
  colorOption2 = [configuration2 colorOption];
  if ([colorOption2 isEqualToString:@"brown"])
  {

LABEL_14:
    darkGray = [(NTKMargaritaColorPalette *)self coffee];
    goto LABEL_7;
  }

  configuration3 = [(NTKMargaritaColorPalette *)self configuration];
  colorOption3 = [configuration3 colorOption];
  v13 = [colorOption3 isEqualToString:@"darkBrown"];

  if (v13)
  {
    goto LABEL_14;
  }

  configuration4 = [(NTKMargaritaColorPalette *)self configuration];
  colorOption4 = [configuration4 colorOption];
  if ([colorOption4 isEqualToString:@"deepNavy"])
  {
    goto LABEL_18;
  }

  configuration5 = [(NTKMargaritaColorPalette *)self configuration];
  colorOption5 = [configuration5 colorOption];
  if ([colorOption5 isEqualToString:@"royalBlue"])
  {

LABEL_18:
    goto LABEL_19;
  }

  configuration6 = [(NTKMargaritaColorPalette *)self configuration];
  colorOption6 = [configuration6 colorOption];
  v21 = [colorOption6 isEqualToString:@"deepPurple"];

  if ((v21 & 1) == 0)
  {
    darkGray = [(NTKMargaritaColorPalette *)self primaryColor];
    goto LABEL_7;
  }

LABEL_19:
  primaryColor = [(NTKMargaritaColorPalette *)self primaryColor];
  v7 = NTKColorByBrightening();

LABEL_8:

  return v7;
}

@end