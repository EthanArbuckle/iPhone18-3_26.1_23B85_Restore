@interface MusicKit_SoftLinking_CoverArtworkRecipe
- (MusicKit_SoftLinking_CoverArtworkRecipe)initWithExpression:(int64_t)a3 version:(id)a4 backgroundColor:(CGColor *)a5 primaryColor:(CGColor *)a6 secondaryColor:(CGColor *)a7 tertiaryColor:(CGColor *)a8 textColor:(CGColor *)a9;
- (NSString)stringRepresentation;
- (id)_stringFromColor:(CGColor *)a3;
- (id)_stringFromExpression:(int64_t)a3;
- (id)createArtworkCatalogWithPlaylistName:(id)a3;
- (id)description;
@end

@implementation MusicKit_SoftLinking_CoverArtworkRecipe

- (MusicKit_SoftLinking_CoverArtworkRecipe)initWithExpression:(int64_t)a3 version:(id)a4 backgroundColor:(CGColor *)a5 primaryColor:(CGColor *)a6 secondaryColor:(CGColor *)a7 tertiaryColor:(CGColor *)a8 textColor:(CGColor *)a9
{
  v16 = a4;
  v20.receiver = self;
  v20.super_class = MusicKit_SoftLinking_CoverArtworkRecipe;
  v17 = [(MusicKit_SoftLinking_CoverArtworkRecipe *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_expression = a3;
    objc_storeStrong(&v17->_version, a4);
    objc_storeStrong(&v18->_backgroundColor, a5);
    objc_storeStrong(&v18->_primaryColor, a6);
    objc_storeStrong(&v18->_secondaryColor, a7);
    objc_storeStrong(&v18->_tertiaryColor, a8);
    objc_storeStrong(&v18->_textColor, a9);
  }

  return v18;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  v7 = [(MusicKit_SoftLinking_CoverArtworkRecipe *)self stringRepresentation];
  [v6 appendFormat:@"; %@", v7];

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

- (id)createArtworkCatalogWithPlaylistName:(id)a3
{
  v4 = a3;
  v5 = [[MusicKit_SoftLinking_CoverArtworkToken alloc] initWithCoverArtworkRecipe:self playlistName:v4];

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

- (id)_stringFromExpression:(int64_t)a3
{
  if ((a3 - 1) > 7)
  {
    return 0;
  }

  else
  {
    return *(&off_278229908 + a3 - 1);
  }
}

- (id)_stringFromColor:(CGColor *)a3
{
  NumberOfComponents = CGColorGetNumberOfComponents(a3);
  Components = CGColorGetComponents(a3);
  v6 = NumberOfComponents - 2;
  if (NumberOfComponents - 2 >= 2)
  {
    v6 = 2;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"#%02X%02X%02X", (*Components * 255.0), (Components[NumberOfComponents != 2] * 255.0), (Components[v6] * 255.0)];
}

@end