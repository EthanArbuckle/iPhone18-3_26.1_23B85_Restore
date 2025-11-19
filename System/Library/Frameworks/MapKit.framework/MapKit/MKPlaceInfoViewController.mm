@interface MKPlaceInfoViewController
- (BOOL)hasContent;
- (BOOL)shouldShowDetails;
- (MKPlaceActionManagerProtocol)actionDelegate;
- (MKPlaceInfoViewController)initWithPlaceItem:(id)a3;
- (id)_addRowForType:(unint64_t)a3 withValue:(id)a4 toViews:(id)a5;
- (id)_createViewForInfoRow:(unint64_t)a3;
- (id)contact;
- (id)infoCardChildPossibleActions;
- (unint64_t)actionTypeFromRowType:(unint64_t)a3;
- (void)_addContactRow:(id)a3 ofType:(unint64_t)a4 toViews:(id)a5 defaultTitle:(id)a6;
- (void)_configureRow:(id)a3 ofType:(unint64_t)a4 withValue:(id)a5;
- (void)_launchMapsDirectionsWithSource:(id)a3 destination:(id)a4 directionsMode:(id)a5;
- (void)_shareAddress:(id)a3 fromView:(id)a4;
- (void)_updateViewsAnimated:(BOOL)a3;
- (void)sectionView:(id)a3 didSelectRow:(id)a4 atIndex:(unint64_t)a5;
- (void)setBottomHairlineHidden:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation MKPlaceInfoViewController

- (MKPlaceActionManagerProtocol)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (id)infoCardChildPossibleActions
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_rows;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = v5;
  v7 = *v17;
  do
  {
    v8 = 0;
    do
    {
      if (*v17 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = [*(*(&v16 + 1) + 8 * v8) type];
      if (v9 > 1)
      {
        if (v9 == 3)
        {
          v11 = [MEMORY[0x1E696AD98] numberWithInteger:6008];
          [v3 addObject:v11];

          v10 = 6013;
        }

        else
        {
          if (v9 != 2)
          {
            goto LABEL_14;
          }

          v10 = 6010;
        }

        goto LABEL_13;
      }

      if (v9 == 1)
      {
        v10 = 6009;
LABEL_13:
        v12 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
        [v3 addObject:v12];

        goto LABEL_14;
      }

      if (!v9)
      {

        v14 = 0;
        goto LABEL_20;
      }

LABEL_14:
      ++v8;
    }

    while (v6 != v8);
    v13 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    v6 = v13;
  }

  while (v13);
LABEL_19:

  v14 = [v3 copy];
LABEL_20:

  return v14;
}

- (void)_launchMapsDirectionsWithSource:(id)a3 destination:(id)a4 directionsMode:(id)a5
{
  v15[2] = *MEMORY[0x1E69E9840];
  v15[0] = a3;
  v15[1] = a4;
  v7 = MEMORY[0x1E695DEC8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 arrayWithObjects:v15 count:2];
  v13 = @"MKLaunchOptionsDirectionsMode";
  v14 = v8;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [MKMapItem openMapsWithItems:v11 launchOptions:v12 completionHandler:&__block_literal_global_104_34177];
}

- (void)_shareAddress:(id)a3 fromView:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [[MKPlaceCardActionItem alloc] initWithType:16 displayString:0 glyph:0 enabled:1];
  if (v5)
  {
    v9 = @"view";
    v10[0] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(MKPlaceInfoViewController *)self actionDelegate];
  [v8 performAction:v6 options:v7 completion:0];
}

- (void)_configureRow:(id)a3 ofType:(unint64_t)a4 withValue:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      v11 = v8;
      [v11 setLabeledValue:v9];
      objc_initWeak(&location, self);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __60__MKPlaceInfoViewController__configureRow_ofType_withValue___block_invoke;
      v12[3] = &unk_1E76CA898;
      objc_copyWeak(&v14, &location);
      v13 = v9;
      [v11 setIconSelectedBlock:v12];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);

      goto LABEL_11;
    }

    if (a4 != 4)
    {
      goto LABEL_11;
    }
  }

  else if (a4 == 1)
  {
    [v8 setLabeledValue:v9];
    v10 = [(MKPlaceInfoViewController *)self mapItem];
    [v8 setOptsOutOfAds:{objc_msgSend(v10, "_phoneNumberOptsOutOfAds")}];
  }

  else if (a4 != 2)
  {
    goto LABEL_11;
  }

  [v8 setLabeledValue:v9];
LABEL_11:
}

void __60__MKPlaceInfoViewController__configureRow_ofType_withValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [*(a1 + 32) value];
  [WeakRetained _shareAddress:v4 fromView:v3];
}

- (id)_createViewForInfoRow:(unint64_t)a3
{
  v4 = 0;
  if (a3 <= 1)
  {
    if (!a3)
    {
      goto LABEL_20;
    }

    if (a3 == 1)
    {
      v5 = off_1E76C4998;
      goto LABEL_11;
    }
  }

  else
  {
    switch(a3)
    {
      case 4uLL:
        v5 = off_1E76C4990;
        goto LABEL_11;
      case 3uLL:
        v5 = off_1E76C49A0;
        goto LABEL_11;
      case 2uLL:
        v5 = off_1E76C49A8;
LABEL_11:
        v6 = objc_alloc(*v5);
        v4 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        break;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v4;
    v8 = [(MKPlaceInfoViewController *)self mapItem];
    if ([v8 _isMapItemTypeBrand])
    {
      v9 = [(UIViewController *)self mk_theme];
      v10 = [v9 tintColor];
      [v7 setLabelColor:v10];
    }

    else
    {
      [v7 setLabelColor:0];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = v4;
    v11 = [(UIViewController *)self mk_theme];
    v12 = [v11 tintColor];
    [v4 setLabelColor:v12];
  }

LABEL_20:

  return v4;
}

- (id)_addRowForType:(unint64_t)a3 withValue:(id)a4 toViews:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [0 rowView];
  if (v10 || ([(MKPlaceInfoViewController *)self _createViewForInfoRow:a3], v10 = objc_claimAutoreleasedReturnValue(), [MKPlaceInfoRow infoRow:v10 ofType:a3], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v11 = [MKPlaceInfoRow infoRow:v10 ofType:a3];
  }

  [(MKPlaceInfoViewController *)self _configureRow:v10 ofType:a3 withValue:v8];
  [v9 addObject:v10];

  [(NSMutableArray *)self->_rows addObject:v11];

  return v10;
}

- (void)_addContactRow:(id)a3 ofType:(unint64_t)a4 toViews:(id)a5 defaultTitle:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    v26 = v10;
    do
    {
      v16 = 0;
      do
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v27 + 1) + 8 * v16);
        if (v12 && [v10 count] == 1)
        {
          v18 = v11;
          v19 = self;
          v20 = a4;
          v21 = objc_alloc(MEMORY[0x1E695CEE0]);
          [v17 value];
          v23 = v22 = v15;
          v24 = [v21 initWithLabel:v12 value:v23];

          v15 = v22;
          v17 = v24;
          a4 = v20;
          self = v19;
          v11 = v18;
          v10 = v26;
        }

        v25 = [(MKPlaceInfoViewController *)self _addRowForType:a4 withValue:v17 toViews:v11];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }
}

- (void)_updateViewsAnimated:(BOOL)a3
{
  v3 = a3;
  v29[1] = *MEMORY[0x1E69E9840];
  if ([(MKPlaceInfoViewController *)self isViewLoaded])
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
    rows = self->_rows;
    self->_rows = v5;

    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
    v8 = [(MKPlaceInfoViewController *)self mapItem];
    v9 = [v8 _addressFormattedAsMultilineAddress];

    if (v9)
    {
      v10 = MEMORY[0x1E695CEE0];
      v11 = _MKLocalizedStringFromThisBundle(@"PlaceView_Address_Title");
      v12 = [v10 labeledValueWithLabel:v11 value:v9];

      v29[0] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      [(MKPlaceInfoViewController *)self _addContactRow:v13 ofType:3 toViews:v7 defaultTitle:0];
    }

    v14 = [(MKPlaceInfoViewController *)self contact];
    if (v14)
    {
      v15 = v14;
      v16 = [(MKPlaceInfoViewController *)self shouldShowDetails];

      if (v16)
      {
        v17 = [(MKPlaceInfoViewController *)self contact];
        v18 = [v17 phoneNumbers];
        v19 = _MKLocalizedStringFromThisBundle(@"PlaceView_Phone_Title");
        [(MKPlaceInfoViewController *)self _addContactRow:v18 ofType:1 toViews:v7 defaultTitle:v19];

        v20 = [(MKPlaceInfoViewController *)self contact];
        v21 = [v20 urlAddresses];
        v22 = _MKLocalizedStringFromThisBundle(@"PlaceView_Website_Title");
        [(MKPlaceInfoViewController *)self _addContactRow:v21 ofType:2 toViews:v7 defaultTitle:v22];

        v23 = [(MKPlaceInfoViewController *)self contact];
        v24 = [v23 emailAddresses];
        v25 = _MKLocalizedStringFromThisBundle(@"PlaceView_Email_Title");
        [(MKPlaceInfoViewController *)self _addContactRow:v24 ofType:4 toViews:v7 defaultTitle:v25];
      }
    }

    [v7 enumerateObjectsUsingBlock:&__block_literal_global_34194];
    v26 = [v7 firstObject];
    [v26 setTopHairlineHidden:1];

    v27 = [v7 lastObject];
    [v27 setBottomHairlineHidden:1];

    v28 = [(MKPlaceSectionViewController *)self sectionView];
    [v28 setRowViews:v7 animated:v3];
  }
}

void __50__MKPlaceInfoViewController__updateViewsAnimated___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTopHairlineHidden:1];
  [v2 setBottomHairlineHidden:0];
}

- (void)setBottomHairlineHidden:(BOOL)a3
{
  self->_bottomHairlineHidden = a3;
  if ([(MKPlaceInfoViewController *)self isViewLoaded])
  {
    bottomHairlineHidden = self->_bottomHairlineHidden;
    v5 = [(MKPlaceSectionViewController *)self sectionView];
    [v5 setShowsBottomHairline:!bottomHairlineHidden];
  }
}

- (void)sectionView:(id)a3 didSelectRow:(id)a4 atIndex:(unint64_t)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:a5, a4];
  v7 = [v6 rowView];
  v8 = -[MKPlaceInfoViewController actionTypeFromRowType:](self, "actionTypeFromRowType:", [v6 type]);
  v9 = [v6 type];
  if ((v9 - 1) >= 4)
  {
    v10 = 0;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = [v7 labeledValue];

    if (v10)
    {
      v14 = @"CNLabeledValue";
      v11 = [v7 labeledValue];
      v15[0] = v11;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    }
  }

  if (v8)
  {
    v12 = [[MKPlaceCardActionItem alloc] initWithType:v8 displayString:0 glyph:0 enabled:0];
    v13 = [(MKPlaceInfoViewController *)self actionDelegate];
    [v13 performAction:v12 options:v10 completion:0];
  }

LABEL_7:
}

- (unint64_t)actionTypeFromRowType:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1A30F7A70[a3 - 1];
  }
}

- (BOOL)shouldShowDetails
{
  if (![(_MKPlaceItem *)self->_placeItem isContactPersisted])
  {
    return 1;
  }

  v3 = [(MKPlaceInfoViewController *)self contact];
  v4 = [v3 mapsData];
  v5 = v4 != 0;

  return v5;
}

- (id)contact
{
  v3 = [(_MKPlaceItem *)self->_placeItem contact];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(_MKPlaceItem *)self->_placeItem mapItem];
    v5 = [v6 _placeCardContact];
  }

  return v5;
}

- (BOOL)hasContent
{
  v3 = [(MKPlaceInfoViewController *)self view];

  if (!v3)
  {
    return 0;
  }

  v4 = [(MKPlaceSectionViewController *)self sectionView];
  v5 = [v4 rowViews];
  v6 = [v5 count] != 0;

  return v6;
}

- (void)viewDidLoad
{
  v3 = MKGetPlaceCardLog();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PlaceInfoViewDidLoad", &unk_1A30FEA0E, buf, 2u);
  }

  v7.receiver = self;
  v7.super_class = MKPlaceInfoViewController;
  [(MKPlaceInfoViewController *)&v7 viewDidLoad];
  v4 = [(MKPlaceSectionViewController *)self sectionView];
  [v4 setPreservesSuperviewLayoutMargins:1];

  v5 = [(MKPlaceSectionViewController *)self sectionView];
  [v5 setShowsBottomHairline:0];

  [(MKPlaceInfoViewController *)self _updateViewsAnimated:0];
  v6 = MKGetPlaceCardLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PlaceInfoViewDidLoad", &unk_1A30FEA0E, buf, 2u);
  }
}

- (MKPlaceInfoViewController)initWithPlaceItem:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = MKPlaceInfoViewController;
  v6 = [(MKPlaceInfoViewController *)&v13 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_placeItem, a3);
    v8 = [v5 mapItem];
    mapItem = v7->_mapItem;
    v7->_mapItem = v8;

    v10 = _MKLocalizedStringFromThisBundle(@"Info");
    [(MKPlaceInfoViewController *)v7 setTitle:v10];

    v11 = v7;
  }

  return v7;
}

@end