@interface TransitDirectionsListArtworkItem
- (TransitDirectionsListArtworkItem)initWithArtwork:(id)artwork instructions:(id)instructions;
- (TransitDirectionsListArtworkItem)initWithArtworks:(id)artworks alternateArtworks:(id)alternateArtworks instructions:(id)instructions;
- (id)alternateArtworkForStyle:(unint64_t)style;
- (id)artworkForStyle:(unint64_t)style;
- (id)sizedAlternateArtworkForStyle:(unint64_t)style;
- (id)sizedArtworkForStyle:(unint64_t)style;
@end

@implementation TransitDirectionsListArtworkItem

- (id)alternateArtworkForStyle:(unint64_t)style
{
  alternateArtworks = self->_alternateArtworks;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [(NSDictionary *)alternateArtworks objectForKeyedSubscript:v6];

  if (style && !v7)
  {
    v7 = [(NSDictionary *)self->_alternateArtworks objectForKeyedSubscript:&off_1016E9E00];
  }

  return v7;
}

- (id)artworkForStyle:(unint64_t)style
{
  artworks = self->_artworks;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [(NSDictionary *)artworks objectForKeyedSubscript:v6];

  if (style && !v7)
  {
    v7 = [(NSDictionary *)self->_artworks objectForKeyedSubscript:&off_1016E9E00];
  }

  return v7;
}

- (id)sizedAlternateArtworkForStyle:(unint64_t)style
{
  v4 = [(TransitDirectionsListArtworkItem *)self alternateArtworkForStyle:style];
  if (v4)
  {
    v5 = [[MKSizedTransitArtwork alloc] initWithArtwork:v4 shieldSize:-[TransitDirectionsListArtworkItem selectedSize](self fallbackShieldSize:"selectedSize") artworkCache:{-[TransitDirectionsListArtworkItem fallbackSize](self, "fallbackSize"), 0}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sizedArtworkForStyle:(unint64_t)style
{
  v4 = [(TransitDirectionsListArtworkItem *)self artworkForStyle:style];
  v5 = [[MKSizedTransitArtwork alloc] initWithArtwork:v4 shieldSize:-[TransitDirectionsListArtworkItem selectedSize](self fallbackShieldSize:"selectedSize") artworkCache:{-[TransitDirectionsListArtworkItem fallbackSize](self, "fallbackSize"), 0}];

  return v5;
}

- (TransitDirectionsListArtworkItem)initWithArtworks:(id)artworks alternateArtworks:(id)alternateArtworks instructions:(id)instructions
{
  artworksCopy = artworks;
  alternateArtworksCopy = alternateArtworks;
  v17.receiver = self;
  v17.super_class = TransitDirectionsListArtworkItem;
  v10 = [(TransitDirectionsListItem *)&v17 initWithInstructions:instructions];
  if (v10)
  {
    v11 = [artworksCopy copy];
    artworks = v10->_artworks;
    v10->_artworks = v11;

    v13 = [alternateArtworksCopy copy];
    alternateArtworks = v10->_alternateArtworks;
    v10->_alternateArtworks = v13;

    v10->_selectedSize = 7;
    v10->_fallbackSize = 8;
    v10->_adaptiveShieldSize = 1;
    v10->_initialAdaptiveSizeGroup = 7;
    v15 = v10;
  }

  return v10;
}

- (TransitDirectionsListArtworkItem)initWithArtwork:(id)artwork instructions:(id)instructions
{
  artworkCopy = artwork;
  instructionsCopy = instructions;
  v8 = +[NSMutableDictionary dictionary];
  v9 = v8;
  if (artworkCopy)
  {
    [v8 setObject:artworkCopy forKeyedSubscript:&off_1016E9E00];
  }

  v10 = [(TransitDirectionsListArtworkItem *)self initWithArtworks:v9 instructions:instructionsCopy];

  return v10;
}

@end