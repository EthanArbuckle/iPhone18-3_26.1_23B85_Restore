@interface MusicKit_SoftLinking_CoverArtworkRecipe
- (MusicKit_SoftLinking_CoverArtworkRecipe)initWithExpression:(int64_t)expression version:(id)version backgroundColor:(CGColor *)color primaryColor:(CGColor *)primaryColor secondaryColor:(CGColor *)secondaryColor tertiaryColor:(CGColor *)tertiaryColor textColor:(CGColor *)textColor;
- (NSString)stringRepresentation;
- (id)_stringFromColor:(CGColor *)color;
- (id)_stringFromExpression:(int64_t)expression;
- (id)createArtworkCatalogWithPlaylistName:(id)name;
- (id)description;
@end

@implementation MusicKit_SoftLinking_CoverArtworkRecipe

- (MusicKit_SoftLinking_CoverArtworkRecipe)initWithExpression:(int64_t)expression version:(id)version backgroundColor:(CGColor *)color primaryColor:(CGColor *)primaryColor secondaryColor:(CGColor *)secondaryColor tertiaryColor:(CGColor *)tertiaryColor textColor:(CGColor *)textColor
{
  versionCopy = version;
  v20.receiver = self;
  v20.super_class = MusicKit_SoftLinking_CoverArtworkRecipe;
  v17 = [(MusicKit_SoftLinking_CoverArtworkRecipe *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_expression = expression;
    objc_storeStrong(&v17->_version, version);
    objc_storeStrong(&v18->_backgroundColor, color);
    objc_storeStrong(&v18->_primaryColor, primaryColor);
    objc_storeStrong(&v18->_secondaryColor, secondaryColor);
    objc_storeStrong(&v18->_tertiaryColor, tertiaryColor);
    objc_storeStrong(&v18->_textColor, textColor);
  }

  return v18;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  stringRepresentation = [(MusicKit_SoftLinking_CoverArtworkRecipe *)self stringRepresentation];
  [v6 appendFormat:@"; %@", stringRepresentation];

  [v6 appendString:@">"];

  return v6;
}

- (NSString)stringRepresentation
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = [(MusicKit_SoftLinking_CoverArtworkRecipe *)self _stringFromExpression:self->_expression];
  v5 = [v3 initWithFormat:@"expression = %@ (%ld)", v4, self->_expression];

  [v5 appendFormat:@"; version = %@", self->_version];
  if (self->_backgroundColor)
  {
    v6 = [(MusicKit_SoftLinking_CoverArtworkRecipe *)self _stringFromColor:?];
    [v5 appendFormat:@"; backgroundColor = %@", v6];
  }

  if (self->_primaryColor)
  {
    v7 = [(MusicKit_SoftLinking_CoverArtworkRecipe *)self _stringFromColor:?];
    [v5 appendFormat:@"; primaryColor = %@", v7];
  }

  if (self->_secondaryColor)
  {
    v8 = [(MusicKit_SoftLinking_CoverArtworkRecipe *)self _stringFromColor:?];
    [v5 appendFormat:@"; secondaryColor = %@", v8];
  }

  if (self->_tertiaryColor)
  {
    v9 = [(MusicKit_SoftLinking_CoverArtworkRecipe *)self _stringFromColor:?];
    [v5 appendFormat:@"; tertiaryColor = %@", v9];
  }

  if (self->_textColor)
  {
    v10 = [(MusicKit_SoftLinking_CoverArtworkRecipe *)self _stringFromColor:?];
    [v5 appendFormat:@"; textColor = %@", v10];
  }

  return v5;
}

- (id)createArtworkCatalogWithPlaylistName:(id)name
{
  nameCopy = name;
  v5 = [[MusicKit_SoftLinking_CoverArtworkToken alloc] initWithCoverArtworkRecipe:self playlistName:nameCopy];

  if (v5)
  {
    v6 = [MusicKit_SoftLinking artworkCatalogWithCoverArtworkToken:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_stringFromExpression:(int64_t)expression
{
  if ((expression - 1) > 7)
  {
    return 0;
  }

  else
  {
    return *(&off_278229908 + expression - 1);
  }
}

- (id)_stringFromColor:(CGColor *)color
{
  NumberOfComponents = CGColorGetNumberOfComponents(color);
  Components = CGColorGetComponents(color);
  v6 = NumberOfComponents - 2;
  if (NumberOfComponents - 2 >= 2)
  {
    v6 = 2;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"#%02X%02X%02X", (*Components * 255.0), (Components[NumberOfComponents != 2] * 255.0), (Components[v6] * 255.0)];
}

@end