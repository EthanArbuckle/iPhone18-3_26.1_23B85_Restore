@interface NTKMargaritaColorPalette
- (NTKMargaritaColorPalette)init;
- (id)_complication;
- (id)_stripe;
- (id)copyWithZone:(_NSZone *)a3;
- (id)identifier;
- (void)configurationDidChange:(id)a3;
- (void)setEditing:(BOOL)a3;
- (void)setStyle:(unint64_t)a3;
@end

@implementation NTKMargaritaColorPalette

- (NTKMargaritaColorPalette)init
{
  v3 = objc_opt_class();
  v5.receiver = self;
  v5.super_class = NTKMargaritaColorPalette;
  return [(NTKMargaritaColorPalette *)&v5 initWithFaceClass:v3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NTKMargaritaColorPalette;
  v4 = [(NTKMargaritaColorPalette *)&v6 copyWithZone:a3];
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
    v4 = [(NTKMargaritaColorPalette *)&v8 identifier];
    v5 = [NSString stringWithFormat:@"%@-%lu-%lu", v4, [(NTKMargaritaColorPalette *)self isEditing], [(NTKMargaritaColorPalette *)self style]];
    v6 = self->_cachedIdentifier;
    self->_cachedIdentifier = v5;

    cachedIdentifier = self->_cachedIdentifier;
  }

  return cachedIdentifier;
}

- (void)configurationDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKMargaritaColorPalette;
  [(NTKMargaritaColorPalette *)&v5 configurationDidChange:a3];
  cachedIdentifier = self->_cachedIdentifier;
  self->_cachedIdentifier = 0;
}

- (void)setEditing:(BOOL)a3
{
  self->_editing = a3;
  self->_cachedIdentifier = 0;
  _objc_release_x1();
}

- (void)setStyle:(unint64_t)a3
{
  self->_style = a3;
  self->_cachedIdentifier = 0;
  _objc_release_x1();
}

- (id)_stripe
{
  v3 = [(NTKMargaritaColorPalette *)self primaryColor];
  v4 = [(NTKMargaritaColorPalette *)self style]== &dword_0 + 2 || [(NTKMargaritaColorPalette *)self style]== &dword_0 + 3;
  if ([(NTKMargaritaColorPalette *)self isBlackColor]&& (self->_editing || v4))
  {
    v5 = [(NTKMargaritaColorPalette *)self softBlack];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

- (id)_complication
{
  if ([(NTKMargaritaColorPalette *)self isWhiteColor])
  {
    v3 = [UIColor colorWithWhite:0.9 alpha:1.0];
LABEL_7:
    v7 = v3;
    goto LABEL_8;
  }

  v4 = [(NTKMargaritaColorPalette *)self configuration];
  v5 = [v4 colorOption];
  if ([v5 isEqualToString:@"charcoal"])
  {

LABEL_6:
    v3 = [(NTKMargaritaColorPalette *)self darkGray];
    goto LABEL_7;
  }

  v6 = [(NTKMargaritaColorPalette *)self isBlackColor];

  if (v6)
  {
    goto LABEL_6;
  }

  v9 = [(NTKMargaritaColorPalette *)self configuration];
  v10 = [v9 colorOption];
  if ([v10 isEqualToString:@"brown"])
  {

LABEL_14:
    v3 = [(NTKMargaritaColorPalette *)self coffee];
    goto LABEL_7;
  }

  v11 = [(NTKMargaritaColorPalette *)self configuration];
  v12 = [v11 colorOption];
  v13 = [v12 isEqualToString:@"darkBrown"];

  if (v13)
  {
    goto LABEL_14;
  }

  v14 = [(NTKMargaritaColorPalette *)self configuration];
  v15 = [v14 colorOption];
  if ([v15 isEqualToString:@"deepNavy"])
  {
    goto LABEL_18;
  }

  v16 = [(NTKMargaritaColorPalette *)self configuration];
  v17 = [v16 colorOption];
  if ([v17 isEqualToString:@"royalBlue"])
  {

LABEL_18:
    goto LABEL_19;
  }

  v19 = [(NTKMargaritaColorPalette *)self configuration];
  v20 = [v19 colorOption];
  v21 = [v20 isEqualToString:@"deepPurple"];

  if ((v21 & 1) == 0)
  {
    v3 = [(NTKMargaritaColorPalette *)self primaryColor];
    goto LABEL_7;
  }

LABEL_19:
  v18 = [(NTKMargaritaColorPalette *)self primaryColor];
  v7 = NTKColorByBrightening();

LABEL_8:

  return v7;
}

@end