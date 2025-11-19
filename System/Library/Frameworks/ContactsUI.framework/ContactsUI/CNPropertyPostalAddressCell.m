@interface CNPropertyPostalAddressCell
- (CNPropertyPostalAddressCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)variableConstraints;
- (void)dealloc;
- (void)generateAndSetMapTile;
- (void)prepareForReuse;
- (void)setMapImage:(id)a3;
- (void)setProperty:(id)a3;
- (void)setShouldUseMapTiles:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CNPropertyPostalAddressCell

- (void)setMapImage:(id)a3
{
  v4 = a3;
  v5 = [(CNPropertyPostalAddressCell *)self mapImageView];

  if (v5)
  {
    v6 = MEMORY[0x1E69DD250];
    v7 = [(CNPropertyPostalAddressCell *)self mapImageView];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __43__CNPropertyPostalAddressCell_setMapImage___block_invoke;
    v26[3] = &unk_1E74E77C0;
    v26[4] = self;
    v27 = v4;
    [v6 transitionWithView:v7 duration:5242880 options:v26 animations:0 completion:0.2];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v4];
    [(CNPropertyPostalAddressCell *)self setMapImageView:v8];

    v9 = [(CNPropertyPostalAddressCell *)self mapImageView];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(CNPropertyPostalAddressCell *)self mapImageView];
    [v10 setClipsToBounds:1];

    v11 = [(CNPropertyPostalAddressCell *)self mapImageView];
    [v11 setUserInteractionEnabled:1];

    v12 = [(CNPropertyPostalAddressCell *)self mapImageView];
    [v12 setExclusiveTouch:1];

    v13 = [(CNPropertyPostalAddressCell *)self mapImageView];
    v14 = [v13 layer];
    [v14 setCornerRadius:3.0];

    v15 = [(CNPropertyPostalAddressCell *)self mapImageView];
    v16 = [v15 layer];
    [v16 setBorderWidth:1.0];

    v17 = +[CNContactStyle currentStyle];
    v18 = [v17 transportBorderColor];
    v19 = [v18 CGColor];
    v20 = [(CNPropertyPostalAddressCell *)self mapImageView];
    v21 = [v20 layer];
    [v21 setBorderColor:v19];

    v22 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_tapGesture_];
    [v22 setCancelsTouchesInView:1];
    v23 = [(CNPropertyPostalAddressCell *)self mapImageView];
    [v23 addGestureRecognizer:v22];

    v24 = [(CNPropertyPostalAddressCell *)self contentView];
    v25 = [(CNPropertyPostalAddressCell *)self mapImageView];
    [v24 addSubview:v25];

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
  v4 = [(CNPropertySimpleTransportCell *)&v44 variableConstraints];
  v5 = [v3 arrayWithArray:v4];

  v6 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  v7 = [(CNPropertyPostalAddressCell *)self mapImageView];
  v8 = [v7 superview];

  if (v8)
  {
    v9 = MEMORY[0x1E696ACD8];
    v10 = [(CNPropertyPostalAddressCell *)self mapImageView];
    v11 = [(CNPropertyPostalAddressCell *)self contentView];
    v12 = 1.0;
    if (v6)
    {
      v13 = [v9 constraintWithItem:v10 attribute:4 relatedBy:0 toItem:v11 attribute:16 multiplier:1.0 constant:0.0];
      [v5 addObject:v13];

      v14 = MEMORY[0x1E696ACD8];
      v10 = [(CNPropertySimpleCell *)self valueLabel];
      v11 = [(CNPropertyPostalAddressCell *)self mapImageView];
      v12 = 1.0;
      v15 = -16.0;
      v16 = v14;
      v17 = v10;
      v18 = 4;
    }

    else
    {
      v15 = 13.0;
      v16 = v9;
      v17 = v10;
      v18 = 3;
    }

    v19 = [v16 constraintWithItem:v17 attribute:v18 relatedBy:0 toItem:v11 attribute:3 multiplier:v12 constant:v15];
    [v5 addObject:v19];

    v20 = MEMORY[0x1E696ACD8];
    v21 = [(CNPropertyPostalAddressCell *)self mapImageView];
    v22 = [v20 constraintWithItem:v21 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:91.0];
    [v5 addObject:v22];

    v23 = MEMORY[0x1E696ACD8];
    v24 = [(CNPropertyPostalAddressCell *)self contentView];
    v25 = [v23 constraintWithItem:v24 attribute:8 relatedBy:1 toItem:0 attribute:0 multiplier:1.0 constant:117.0];

    LODWORD(v26) = 1148846080;
    [v25 setPriority:v26];
    [v5 addObject:v25];
    v27 = MEMORY[0x1E696ACD8];
    v28 = [(CNPropertyPostalAddressCell *)self mapImageView];
    v29 = [(CNPropertyPostalAddressCell *)self contentView];
    v30 = 1.0;
    v31 = 0.0;
    v32 = v27;
    v33 = v28;
    if (v6)
    {
      v34 = 5;
      v35 = v29;
      v36 = 17;
    }

    else
    {
      v37 = [v27 constraintWithItem:v28 attribute:6 relatedBy:0 toItem:v29 attribute:18 multiplier:1.0 constant:0.0];
      [v5 addObject:v37];

      v38 = MEMORY[0x1E696ACD8];
      v28 = [(CNPropertySimpleCell *)self valueLabel];
      v29 = [(CNPropertyPostalAddressCell *)self mapImageView];
      v30 = 1.0;
      v31 = -16.0;
      v32 = v38;
      v33 = v28;
      v34 = 6;
      v35 = v29;
      v36 = 5;
    }

    v39 = [v32 constraintWithItem:v33 attribute:v34 relatedBy:0 toItem:v35 attribute:v36 multiplier:v30 constant:v31];
    [v5 addObject:v39];

    v40 = MEMORY[0x1E696ACD8];
    v41 = [(CNPropertyPostalAddressCell *)self mapImageView];
    v42 = [v40 constraintWithItem:v41 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:91.0];
    [v5 addObject:v42];
  }

  return v5;
}

- (void)generateAndSetMapTile
{
  v3 = [(CNPropertyCell *)self propertyItem];
  v4 = [v3 labeledValue];
  v5 = [v4 value];

  v6 = objc_alloc_init(CNUIMapTileGenerator);
  objc_initWeak(&location, self);
  v7 = [MEMORY[0x1E6996818] mainThreadScheduler];
  v8 = [(CNUIMapTileGenerator *)v6 tilesForAddress:v5];
  v9 = [v8 observeOn:v7];

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

- (void)setShouldUseMapTiles:(BOOL)a3
{
  if (self->_shouldUseMapTiles != a3)
  {
    if (a3)
    {
      [(CNPropertyPostalAddressCell *)self generateAndSetMapTile];
    }

    else
    {
      v5 = [(CNPropertyPostalAddressCell *)self mapImageView];

      if (v5)
      {
        v6 = [(CNPropertyPostalAddressCell *)self tileGeneratorToken];
        [v6 cancel];

        [(CNPropertyPostalAddressCell *)self setTileGeneratorToken:0];
        v7 = [(CNPropertyPostalAddressCell *)self mapImageView];
        [v7 removeFromSuperview];

        [(CNPropertyPostalAddressCell *)self setMapImageView:0];
        [(CNPropertyPostalAddressCell *)self setNeedsUpdateConstraints];
      }
    }

    v8 = [(CNPropertyCell *)self delegate];
    [v8 propertyCellDidChangeLayout:self];
  }

  self->_shouldUseMapTiles = a3;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = CNPropertyPostalAddressCell;
  v4 = a3;
  [(CNPropertyPostalAddressCell *)&v8 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];

  v6 = [(CNPropertyPostalAddressCell *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
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
  v3 = [(CNPropertyPostalAddressCell *)self tileGeneratorToken];
  [v3 cancel];

  [(CNPropertyPostalAddressCell *)self setTileGeneratorToken:0];
  [(CNPropertyPostalAddressCell *)self setShouldUseMapTiles:0];
}

- (void)dealloc
{
  [(CNPropertyPostalAddressCell *)self setMapImageView:0];
  v3 = [(CNPropertyPostalAddressCell *)self tileGeneratorToken];
  [v3 cancel];

  v4.receiver = self;
  v4.super_class = CNPropertyPostalAddressCell;
  [(CNPropertySimpleTransportCell *)&v4 dealloc];
}

- (void)setProperty:(id)a3
{
  v9.receiver = self;
  v9.super_class = CNPropertyPostalAddressCell;
  v4 = a3;
  [(CNPropertyCell *)&v9 setProperty:v4];
  v5 = MEMORY[0x1E695CF68];
  v6 = [v4 value];

  v7 = [v5 stringFromPostalAddress:v6 style:0];
  v8 = [(CNPropertySimpleCell *)self valueView];
  [v8 setAb_text:v7];
}

- (CNPropertyPostalAddressCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = CNPropertyPostalAddressCell;
  v4 = [(CNPropertySimpleTransportCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(CNPropertySimpleCell *)v4 valueLabel];
    [v6 setNumberOfLines:0];
  }

  return v5;
}

@end