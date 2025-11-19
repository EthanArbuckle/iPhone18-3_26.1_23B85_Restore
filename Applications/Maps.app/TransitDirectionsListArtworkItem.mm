@interface TransitDirectionsListArtworkItem
- (TransitDirectionsListArtworkItem)initWithArtwork:(id)a3 instructions:(id)a4;
- (TransitDirectionsListArtworkItem)initWithArtworks:(id)a3 alternateArtworks:(id)a4 instructions:(id)a5;
- (id)alternateArtworkForStyle:(unint64_t)a3;
- (id)artworkForStyle:(unint64_t)a3;
- (id)sizedAlternateArtworkForStyle:(unint64_t)a3;
- (id)sizedArtworkForStyle:(unint64_t)a3;
@end

@implementation TransitDirectionsListArtworkItem

- (id)alternateArtworkForStyle:(unint64_t)a3
{
  alternateArtworks = self->_alternateArtworks;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [(NSDictionary *)alternateArtworks objectForKeyedSubscript:v6];

  if (a3 && !v7)
  {
    v7 = [(NSDictionary *)self->_alternateArtworks objectForKeyedSubscript:&off_1016E9E00];
  }

  return v7;
}

- (id)artworkForStyle:(unint64_t)a3
{
  artworks = self->_artworks;
  v6 = [NSNumber numberWithUnsignedInteger:?];
  v7 = [(NSDictionary *)artworks objectForKeyedSubscript:v6];

  if (a3 && !v7)
  {
    v7 = [(NSDictionary *)self->_artworks objectForKeyedSubscript:&off_1016E9E00];
  }

  return v7;
}

- (id)sizedAlternateArtworkForStyle:(unint64_t)a3
{
  v4 = [(TransitDirectionsListArtworkItem *)self alternateArtworkForStyle:a3];
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

- (id)sizedArtworkForStyle:(unint64_t)a3
{
  v4 = [(TransitDirectionsListArtworkItem *)self artworkForStyle:a3];
  v5 = [[MKSizedTransitArtwork alloc] initWithArtwork:v4 shieldSize:-[TransitDirectionsListArtworkItem selectedSize](self fallbackShieldSize:"selectedSize") artworkCache:{-[TransitDirectionsListArtworkItem fallbackSize](self, "fallbackSize"), 0}];

  return v5;
}

- (TransitDirectionsListArtworkItem)initWithArtworks:(id)a3 alternateArtworks:(id)a4 instructions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = TransitDirectionsListArtworkItem;
  v10 = [(TransitDirectionsListItem *)&v17 initWithInstructions:a5];
  if (v10)
  {
    v11 = [v8 copy];
    artworks = v10->_artworks;
    v10->_artworks = v11;

    v13 = [v9 copy];
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

- (TransitDirectionsListArtworkItem)initWithArtwork:(id)a3 instructions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSMutableDictionary dictionary];
  v9 = v8;
  if (v6)
  {
    [v8 setObject:v6 forKeyedSubscript:&off_1016E9E00];
  }

  v10 = [(TransitDirectionsListArtworkItem *)self initWithArtworks:v9 instructions:v7];

  return v10;
}

@end