@interface CNPropertyPostalAddressCell
- (CNPropertyPostalAddressCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)variableConstraints;
- (void)dealloc;
- (void)generateAndSetMapTile;
- (void)prepareForReuse;
- (void)setMapImage:(id)image;
- (void)setProperty:(id)property;
- (void)setShouldUseMapTiles:(BOOL)tiles;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CNPropertyPostalAddressCell

- (void)setMapImage:(id)image
{
  imageCopy = image;
  mapImageView = [(CNPropertyPostalAddressCell *)self mapImageView];

  if (mapImageView)
  {
    v6 = MEMORY[0x1E69DD250];
    mapImageView2 = [(CNPropertyPostalAddressCell *)self mapImageView];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __43__CNPropertyPostalAddressCell_setMapImage___block_invoke;
    v26[3] = &unk_1E74E77C0;
    v26[4] = self;
    v27 = imageCopy;
    [v6 transitionWithView:mapImageView2 duration:5242880 options:v26 animations:0 completion:0.2];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:imageCopy];
    [(CNPropertyPostalAddressCell *)self setMapImageView:v8];

    mapImageView3 = [(CNPropertyPostalAddressCell *)self mapImageView];
    [mapImageView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    mapImageView4 = [(CNPropertyPostalAddressCell *)self mapImageView];
    [mapImageView4 setClipsToBounds:1];

    mapImageView5 = [(CNPropertyPostalAddressCell *)self mapImageView];
    [mapImageView5 setUserInteractionEnabled:1];

    mapImageView6 = [(CNPropertyPostalAddressCell *)self mapImageView];
    [mapImageView6 setExclusiveTouch:1];

    mapImageView7 = [(CNPropertyPostalAddressCell *)self mapImageView];
    layer = [mapImageView7 layer];
    [layer setCornerRadius:3.0];

    mapImageView8 = [(CNPropertyPostalAddressCell *)self mapImageView];
    layer2 = [mapImageView8 layer];
    [layer2 setBorderWidth:1.0];

    v17 = +[CNContactStyle currentStyle];
    transportBorderColor = [v17 transportBorderColor];
    cGColor = [transportBorderColor CGColor];
    mapImageView9 = [(CNPropertyPostalAddressCell *)self mapImageView];
    layer3 = [mapImageView9 layer];
    [layer3 setBorderColor:cGColor];

    v22 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tapGesture_];
    [v22 setCancelsTouchesInView:1];
    mapImageView10 = [(CNPropertyPostalAddressCell *)self mapImageView];
    [mapImageView10 addGestureRecognizer:v22];

    contentView = [(CNPropertyPostalAddressCell *)self contentView];
    mapImageView11 = [(CNPropertyPostalAddressCell *)self mapImageView];
    [contentView addSubview:mapImageView11];

    [(CNPropertyPostalAddressCell *)self setNeedsUpdateConstraints];
  }
}

void __43__CNPropertyPostalAddressCell_setMapImage___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) mapImageView];
  [v2 setImage:v1];
}

- (id)variableConstraints
{
  v3 = MEMORY[0x1E695DF70];
  v44.receiver = self;
  v44.super_class = CNPropertyPostalAddressCell;
  variableConstraints = [(CNPropertySimpleTransportCell *)&v44 variableConstraints];
  v5 = [v3 arrayWithArray:variableConstraints];

  ab_preferredContentSizeCategoryIsAccessibilityCategory = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  mapImageView = [(CNPropertyPostalAddressCell *)self mapImageView];
  superview = [mapImageView superview];

  if (superview)
  {
    v9 = MEMORY[0x1E696ACD8];
    mapImageView2 = [(CNPropertyPostalAddressCell *)self mapImageView];
    contentView = [(CNPropertyPostalAddressCell *)self contentView];
    v12 = 1.0;
    if (ab_preferredContentSizeCategoryIsAccessibilityCategory)
    {
      v13 = [v9 constraintWithItem:mapImageView2 attribute:4 relatedBy:0 toItem:contentView attribute:16 multiplier:1.0 constant:0.0];
      [v5 addObject:v13];

      v14 = MEMORY[0x1E696ACD8];
      mapImageView2 = [(CNPropertySimpleCell *)self valueLabel];
      contentView = [(CNPropertyPostalAddressCell *)self mapImageView];
      v12 = 1.0;
      v15 = -16.0;
      v16 = v14;
      v17 = mapImageView2;
      v18 = 4;
    }

    else
    {
      v15 = 13.0;
      v16 = v9;
      v17 = mapImageView2;
      v18 = 3;
    }

    v19 = [v16 constraintWithItem:v17 attribute:v18 relatedBy:0 toItem:contentView attribute:3 multiplier:v12 constant:v15];
    [v5 addObject:v19];

    v20 = MEMORY[0x1E696ACD8];
    mapImageView3 = [(CNPropertyPostalAddressCell *)self mapImageView];
    v22 = [v20 constraintWithItem:mapImageView3 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:91.0];
    [v5 addObject:v22];

    v23 = MEMORY[0x1E696ACD8];
    contentView2 = [(CNPropertyPostalAddressCell *)self contentView];
    v25 = [v23 constraintWithItem:contentView2 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:117.0];

    LODWORD(v26) = 1148846080;
    [v25 setPriority:v26];
    [v5 addObject:v25];
    v27 = MEMORY[0x1E696ACD8];
    mapImageView4 = [(CNPropertyPostalAddressCell *)self mapImageView];
    contentView3 = [(CNPropertyPostalAddressCell *)self contentView];
    v30 = 1.0;
    v31 = 0.0;
    v32 = v27;
    v33 = mapImageView4;
    if (ab_preferredContentSizeCategoryIsAccessibilityCategory)
    {
      v34 = 5;
      v35 = contentView3;
      v36 = 17;
    }

    else
    {
      v37 = [v27 constraintWithItem:mapImageView4 attribute:6 relatedBy:0 toItem:contentView3 attribute:18 multiplier:1.0 constant:0.0];
      [v5 addObject:v37];

      v38 = MEMORY[0x1E696ACD8];
      mapImageView4 = [(CNPropertySimpleCell *)self valueLabel];
      contentView3 = [(CNPropertyPostalAddressCell *)self mapImageView];
      v30 = 1.0;
      v31 = -16.0;
      v32 = v38;
      v33 = mapImageView4;
      v34 = 6;
      v35 = contentView3;
      v36 = 5;
    }

    v39 = [v32 constraintWithItem:v33 attribute:v34 relatedBy:0 toItem:v35 attribute:v36 multiplier:v30 constant:v31];
    [v5 addObject:v39];

    v40 = MEMORY[0x1E696ACD8];
    mapImageView5 = [(CNPropertyPostalAddressCell *)self mapImageView];
    v42 = [v40 constraintWithItem:mapImageView5 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:91.0];
    [v5 addObject:v42];
  }

  return v5;
}

- (void)generateAndSetMapTile
{
  propertyItem = [(CNPropertyCell *)self propertyItem];
  labeledValue = [propertyItem labeledValue];
  value = [labeledValue value];

  v6 = objc_alloc_init(CNUIMapTileGenerator);
  objc_initWeak(&location, self);
  mainThreadScheduler = [MEMORY[0x1E6996818] mainThreadScheduler];
  v8 = [(CNUIMapTileGenerator *)v6 tilesForAddress:value];
  v9 = [v8 observeOn:mainThreadScheduler];

  v10 = MEMORY[0x1E69967A0];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __52__CNPropertyPostalAddressCell_generateAndSetMapTile__block_invoke;
  v16 = &unk_1E74E4DC0;
  objc_copyWeak(&v17, &location);
  v11 = [v10 observerWithResultBlock:&v13];
  v12 = [v9 subscribe:{v11, v13, v14, v15, v16}];
  [(CNPropertyPostalAddressCell *)self setTileGeneratorToken:v12];

  [(CNPropertyPostalAddressCell *)self setNeedsUpdateConstraints];
  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);
}

void __52__CNPropertyPostalAddressCell_generateAndSetMapTile__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = (*(*MEMORY[0x1E6996590] + 16))();

  [WeakRetained setMapImage:v4];
}

- (void)setShouldUseMapTiles:(BOOL)tiles
{
  if (self->_shouldUseMapTiles != tiles)
  {
    if (tiles)
    {
      [(CNPropertyPostalAddressCell *)self generateAndSetMapTile];
    }

    else
    {
      mapImageView = [(CNPropertyPostalAddressCell *)self mapImageView];

      if (mapImageView)
      {
        tileGeneratorToken = [(CNPropertyPostalAddressCell *)self tileGeneratorToken];
        [tileGeneratorToken cancel];

        [(CNPropertyPostalAddressCell *)self setTileGeneratorToken:0];
        mapImageView2 = [(CNPropertyPostalAddressCell *)self mapImageView];
        [mapImageView2 removeFromSuperview];

        [(CNPropertyPostalAddressCell *)self setMapImageView:0];
        [(CNPropertyPostalAddressCell *)self setNeedsUpdateConstraints];
      }
    }

    delegate = [(CNPropertyCell *)self delegate];
    [delegate propertyCellDidChangeLayout:self];
  }

  self->_shouldUseMapTiles = tiles;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = CNPropertyPostalAddressCell;
  changeCopy = change;
  [(CNPropertyPostalAddressCell *)&v8 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(CNPropertyPostalAddressCell *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    if ([(CNPropertyPostalAddressCell *)self shouldUseMapTiles])
    {
      [(CNPropertyPostalAddressCell *)self generateAndSetMapTile];
    }
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CNPropertyPostalAddressCell;
  [(CNPropertySimpleTransportCell *)&v4 prepareForReuse];
  tileGeneratorToken = [(CNPropertyPostalAddressCell *)self tileGeneratorToken];
  [tileGeneratorToken cancel];

  [(CNPropertyPostalAddressCell *)self setTileGeneratorToken:0];
  [(CNPropertyPostalAddressCell *)self setShouldUseMapTiles:0];
}

- (void)dealloc
{
  [(CNPropertyPostalAddressCell *)self setMapImageView:0];
  tileGeneratorToken = [(CNPropertyPostalAddressCell *)self tileGeneratorToken];
  [tileGeneratorToken cancel];

  v4.receiver = self;
  v4.super_class = CNPropertyPostalAddressCell;
  [(CNPropertySimpleTransportCell *)&v4 dealloc];
}

- (void)setProperty:(id)property
{
  v9.receiver = self;
  v9.super_class = CNPropertyPostalAddressCell;
  propertyCopy = property;
  [(CNPropertyCell *)&v9 setProperty:propertyCopy];
  v5 = MEMORY[0x1E695CF68];
  value = [propertyCopy value];

  v7 = [v5 stringFromPostalAddress:value style:0];
  valueView = [(CNPropertySimpleCell *)self valueView];
  [valueView setAb_text:v7];
}

- (CNPropertyPostalAddressCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = CNPropertyPostalAddressCell;
  v4 = [(CNPropertySimpleTransportCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    valueLabel = [(CNPropertySimpleCell *)v4 valueLabel];
    [valueLabel setNumberOfLines:0];
  }

  return v5;
}

@end