@interface MusicKit_SoftLinking_CoverArtworkToken
- (MusicKit_SoftLinking_CoverArtworkToken)initWithCoverArtworkRecipe:(id)a3 playlistName:(id)a4;
- (NSString)stringRepresentation;
@end

@implementation MusicKit_SoftLinking_CoverArtworkToken

- (MusicKit_SoftLinking_CoverArtworkToken)initWithCoverArtworkRecipe:(id)a3 playlistName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MusicKit_SoftLinking_CoverArtworkToken;
  v9 = [(MusicKit_SoftLinking_CoverArtworkToken *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_coverArtworkRecipe, a3);
    objc_storeStrong(&v10->_playlistName, a4);
  }

  return v10;
}

- (NSString)stringRepresentation
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MusicKit_SoftLinking_CoverArtworkRecipe *)self->_coverArtworkRecipe stringRepresentation];
  v5 = [v3 stringWithFormat:@"rawCoverArtworkRecipe: %@, playlistName: %@", v4, self->_playlistName];

  return v5;
}

@end