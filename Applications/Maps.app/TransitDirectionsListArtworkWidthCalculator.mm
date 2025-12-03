@interface TransitDirectionsListArtworkWidthCalculator
- (ArtworkWidthCalculatorSizeParameter)sizeParameter;
- (TransitDirectionsListArtworkWidthCalculator)initWithSizedArtworks:(id)artworks sizeParameter:(ArtworkWidthCalculatorSizeParameter *)parameter;
- (id)calculateArtworkViewWidthAndArtworkSizes:(double *)sizes;
@end

@implementation TransitDirectionsListArtworkWidthCalculator

- (ArtworkWidthCalculatorSizeParameter)sizeParameter
{
  v3 = *&self->artworkInsets.bottom;
  *&retstr->defaultArtworkViewWidth = *&self->artworkInsets.top;
  *&retstr->artworkInsets.top = v3;
  *&retstr->artworkInsets.bottom = *&self[1].defaultArtworkViewWidth;
  return self;
}

- (id)calculateArtworkViewWidthAndArtworkSizes:(double *)sizes
{
  v5 = +[NSMapTable strongToStrongObjectsMapTable];
  v6 = +[UIScreen mainScreen];
  [v6 scale];
  v8 = v7;

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_101019474;
  v38[3] = &unk_101661BF0;
  v9 = v5;
  v39 = v9;
  v40 = v8;
  v10 = objc_retainBlock(v38);
  artworks = [(TransitDirectionsListArtworkWidthCalculator *)self artworks];
  v12 = [artworks mutableCopy];

  v36 = v10;
  [v12 sortUsingComparator:v10];
  defaultArtworkViewWidth = self->_sizeParameter.defaultArtworkViewWidth;
  v14 = [v12 count];
  v15 = v14 - 1;
  if (v14 >= 1)
  {
    sizesCopy = sizes;
    v16 = 0;
    while (1)
    {
      v17 = v16;
      v18 = [v12 objectAtIndexedSubscript:v15];
      v19 = [v9 objectForKey:v18];
      v20 = v19;
      v21 = v19 ? v19 : v18;
      v16 = v21;

      v22 = [v16 imageToDisplayWithScreenScale:0 nightMode:v8];
      [v22 size];
      v24 = v23 + self->_sizeParameter.artworkInsets.left + self->_sizeParameter.artworkInsets.right;

      if (v24 <= self->_sizeParameter.defaultArtworkViewWidth)
      {
        break;
      }

      if (v24 <= self->_sizeParameter.maxArtworkViewWidth)
      {
        goto LABEL_14;
      }

      if ([v16 shieldSize] < 1)
      {
        [v12 removeObjectAtIndex:v15--];
      }

      else
      {
        v25 = [v16 shieldSize] - 1;
        v26 = [MKSizedTransitArtwork alloc];
        [v16 artwork];
        v27 = v37 = v15;
        [v16 artworkCache];
        selfCopy = self;
        v29 = v12;
        v31 = v30 = v9;
        v32 = [v26 initWithArtwork:v27 shieldSize:v25 artworkCache:v31];

        v9 = v30;
        v12 = v29;
        self = selfCopy;

        v15 = v37;
        [v9 setObject:v32 forKey:v18];
        [v12 sortUsingComparator:v36];
      }

      if (v15 < 0)
      {
        goto LABEL_15;
      }
    }

    v24 = defaultArtworkViewWidth;
LABEL_14:

    defaultArtworkViewWidth = v24;
LABEL_15:

    sizes = sizesCopy;
  }

  if (sizes)
  {
    *sizes = defaultArtworkViewWidth;
  }

  v33 = v9;

  return v9;
}

- (TransitDirectionsListArtworkWidthCalculator)initWithSizedArtworks:(id)artworks sizeParameter:(ArtworkWidthCalculatorSizeParameter *)parameter
{
  artworksCopy = artworks;
  v16.receiver = self;
  v16.super_class = TransitDirectionsListArtworkWidthCalculator;
  v7 = [(TransitDirectionsListArtworkWidthCalculator *)&v16 init];
  if (v7)
  {
    v8 = [artworksCopy copy];
    artworks = v7->_artworks;
    v7->_artworks = v8;

    defaultArtworkViewWidth = parameter->defaultArtworkViewWidth;
    maxArtworkViewWidth = parameter->maxArtworkViewWidth;
    if (maxArtworkViewWidth < parameter->defaultArtworkViewWidth || defaultArtworkViewWidth <= 0.0)
    {
      if (defaultArtworkViewWidth < 0.0)
      {
        parameter->defaultArtworkViewWidth = 50.0;
        defaultArtworkViewWidth = 50.0;
      }

      if (maxArtworkViewWidth < defaultArtworkViewWidth)
      {
        parameter->maxArtworkViewWidth = defaultArtworkViewWidth;
      }
    }

    v12 = *&parameter->defaultArtworkViewWidth;
    v13 = *&parameter->artworkInsets.bottom;
    *&v7->_sizeParameter.artworkInsets.top = *&parameter->artworkInsets.top;
    *&v7->_sizeParameter.artworkInsets.bottom = v13;
    *&v7->_sizeParameter.defaultArtworkViewWidth = v12;
    v14 = v7;
  }

  return v7;
}

@end