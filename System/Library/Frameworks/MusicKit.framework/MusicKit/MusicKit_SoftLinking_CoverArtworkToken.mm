@interface MusicKit_SoftLinking_CoverArtworkToken
- (MusicKit_SoftLinking_CoverArtworkToken)initWithCoverArtworkRecipe:(id)recipe playlistName:(id)name;
- (NSString)stringRepresentation;
@end

@implementation MusicKit_SoftLinking_CoverArtworkToken

- (MusicKit_SoftLinking_CoverArtworkToken)initWithCoverArtworkRecipe:(id)recipe playlistName:(id)name
{
  recipeCopy = recipe;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = MusicKit_SoftLinking_CoverArtworkToken;
  v9 = [(MusicKit_SoftLinking_CoverArtworkToken *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_coverArtworkRecipe, recipe);
    objc_storeStrong(&v10->_playlistName, name);
  }

  return v10;
}

- (NSString)stringRepresentation
{
  v3 = MEMORY[0x277CCACA8];
  stringRepresentation = [(MusicKit_SoftLinking_CoverArtworkRecipe *)self->_coverArtworkRecipe stringRepresentation];
  v5 = [v3 stringWithFormat:@"rawCoverArtworkRecipe: %@, playlistName: %@", stringRepresentation, self->_playlistName];

  return v5;
}

@end