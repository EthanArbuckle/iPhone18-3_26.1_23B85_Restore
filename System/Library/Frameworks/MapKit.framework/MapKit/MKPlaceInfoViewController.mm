@interface MKPlaceInfoViewController
- (BOOL)hasContent;
- (BOOL)shouldShowDetails;
- (MKPlaceActionManagerProtocol)actionDelegate;
- (MKPlaceInfoViewController)initWithPlaceItem:(id)item;
- (id)_addRowForType:(unint64_t)type withValue:(id)value toViews:(id)views;
- (id)_createViewForInfoRow:(unint64_t)row;
- (id)contact;
- (id)infoCardChildPossibleActions;
- (unint64_t)actionTypeFromRowType:(unint64_t)type;
- (void)_addContactRow:(id)row ofType:(unint64_t)type toViews:(id)views defaultTitle:(id)title;
- (void)_configureRow:(id)row ofType:(unint64_t)type withValue:(id)value;
- (void)_launchMapsDirectionsWithSource:(id)source destination:(id)destination directionsMode:(id)mode;
- (void)_shareAddress:(id)address fromView:(id)view;
- (void)_updateViewsAnimated:(BOOL)animated;
- (void)sectionView:(id)view didSelectRow:(id)row atIndex:(unint64_t)index;
- (void)setBottomHairlineHidden:(BOOL)hidden;
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
  array = [MEMORY[0x1E695DF70] array];
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

      type = [*(*(&v16 + 1) + 8 * v8) type];
      if (type > 1)
      {
        if (type == 3)
        {
          v11 = [MEMORY[0x1E696AD98] numberWithInteger:6008];
          [array addObject:v11];

          v10 = 6013;
        }

        else
        {
          if (type != 2)
          {
            goto LABEL_14;
          }

          v10 = 6010;
        }

        goto LABEL_13;
      }

      if (type == 1)
      {
        v10 = 6009;
LABEL_13:
        v12 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
        [array addObject:v12];

        goto LABEL_14;
      }

      if (!type)
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

  v14 = [array copy];
LABEL_20:

  return v14;
}

- (void)_launchMapsDirectionsWithSource:(id)source destination:(id)destination directionsMode:(id)mode
{
  v15[2] = *MEMORY[0x1E69E9840];
  v15[0] = source;
  v15[1] = destination;
  v7 = MEMORY[0x1E695DEC8];
  modeCopy = mode;
  destinationCopy = destination;
  sourceCopy = source;
  v11 = [v7 arrayWithObjects:v15 count:2];
  v13 = @"MKLaunchOptionsDirectionsMode";
  v14 = modeCopy;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [MKMapItem openMapsWithItems:v11 launchOptions:v12 completionHandler:&__block_literal_global_104_34177];
}

- (void)_shareAddress:(id)address fromView:(id)view
{
  v10[1] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v6 = [[MKPlaceCardActionItem alloc] initWithType:16 displayString:0 glyph:0 enabled:1];
  if (viewCopy)
  {
    v9 = @"view";
    v10[0] = viewCopy;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  actionDelegate = [(MKPlaceInfoViewController *)self actionDelegate];
  [actionDelegate performAction:v6 options:v7 completion:0];
}

- (void)_configureRow:(id)row ofType:(unint64_t)type withValue:(id)value
{
  rowCopy = row;
  valueCopy = value;
  if (type > 2)
  {
    if (type == 3)
    {
      v11 = rowCopy;
      [v11 setLabeledValue:valueCopy];
      objc_initWeak(&location, self);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __60__MKPlaceInfoViewController__configureRow_ofType_withValue___block_invoke;
      v12[3] = &unk_1E76CA898;
      objc_copyWeak(&v14, &location);
      v13 = valueCopy;
      [v11 setIconSelectedBlock:v12];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);

      goto LABEL_11;
    }

    if (type != 4)
    {
      goto LABEL_11;
    }
  }

  else if (type == 1)
  {
    [rowCopy setLabeledValue:valueCopy];
    mapItem = [(MKPlaceInfoViewController *)self mapItem];
    [rowCopy setOptsOutOfAds:{objc_msgSend(mapItem, "_phoneNumberOptsOutOfAds")}];
  }

  else if (type != 2)
  {
    goto LABEL_11;
  }

  [rowCopy setLabeledValue:valueCopy];
LABEL_11:
}

void __60__MKPlaceInfoViewController__configureRow_ofType_withValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [*(a1 + 32) value];
  [WeakRetained _shareAddress:v4 fromView:v3];
}

- (id)_createViewForInfoRow:(unint64_t)row
{
  v4 = 0;
  if (row <= 1)
  {
    if (!row)
    {
      goto LABEL_20;
    }

    if (row == 1)
    {
      v5 = off_1E76C4998;
      goto LABEL_11;
    }
  }

  else
  {
    switch(row)
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
    mapItem = [(MKPlaceInfoViewController *)self mapItem];
    if ([mapItem _isMapItemTypeBrand])
    {
      mk_theme = [(UIViewController *)self mk_theme];
      tintColor = [mk_theme tintColor];
      [v7 setLabelColor:tintColor];
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
    mk_theme2 = [(UIViewController *)self mk_theme];
    tintColor2 = [mk_theme2 tintColor];
    [v4 setLabelColor:tintColor2];
  }

LABEL_20:

  return v4;
}

- (id)_addRowForType:(unint64_t)type withValue:(id)value toViews:(id)views
{
  valueCopy = value;
  viewsCopy = views;
  rowView = [0 rowView];
  if (rowView || ([(MKPlaceInfoViewController *)self _createViewForInfoRow:type], rowView = objc_claimAutoreleasedReturnValue(), [MKPlaceInfoRow infoRow:rowView ofType:type], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v11 = [MKPlaceInfoRow infoRow:rowView ofType:type];
  }

  [(MKPlaceInfoViewController *)self _configureRow:rowView ofType:type withValue:valueCopy];
  [viewsCopy addObject:rowView];

  [(NSMutableArray *)self->_rows addObject:v11];

  return rowView;
}

- (void)_addContactRow:(id)row ofType:(unint64_t)type toViews:(id)views defaultTitle:(id)title
{
  v32 = *MEMORY[0x1E69E9840];
  rowCopy = row;
  viewsCopy = views;
  titleCopy = title;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = [rowCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    v26 = rowCopy;
    do
    {
      v16 = 0;
      do
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(rowCopy);
        }

        v17 = *(*(&v27 + 1) + 8 * v16);
        if (titleCopy && [rowCopy count] == 1)
        {
          v18 = viewsCopy;
          selfCopy = self;
          typeCopy = type;
          v21 = objc_alloc(MEMORY[0x1E695CEE0]);
          [v17 value];
          v23 = v22 = v15;
          v24 = [v21 initWithLabel:titleCopy value:v23];

          v15 = v22;
          v17 = v24;
          type = typeCopy;
          self = selfCopy;
          viewsCopy = v18;
          rowCopy = v26;
        }

        v25 = [(MKPlaceInfoViewController *)self _addRowForType:type withValue:v17 toViews:viewsCopy];

        ++v16;
      }

      while (v14 != v16);
      v14 = [rowCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }
}

- (void)_updateViewsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v29[1] = *MEMORY[0x1E69E9840];
  if ([(MKPlaceInfoViewController *)self isViewLoaded])
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
    rows = self->_rows;
    self->_rows = v5;

    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:5];
    mapItem = [(MKPlaceInfoViewController *)self mapItem];
    _addressFormattedAsMultilineAddress = [mapItem _addressFormattedAsMultilineAddress];

    if (_addressFormattedAsMultilineAddress)
    {
      v10 = MEMORY[0x1E695CEE0];
      v11 = _MKLocalizedStringFromThisBundle(@"PlaceView_Address_Title");
      v12 = [v10 labeledValueWithLabel:v11 value:_addressFormattedAsMultilineAddress];

      v29[0] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
      [(MKPlaceInfoViewController *)self _addContactRow:v13 ofType:3 toViews:v7 defaultTitle:0];
    }

    contact = [(MKPlaceInfoViewController *)self contact];
    if (contact)
    {
      v15 = contact;
      shouldShowDetails = [(MKPlaceInfoViewController *)self shouldShowDetails];

      if (shouldShowDetails)
      {
        contact2 = [(MKPlaceInfoViewController *)self contact];
        phoneNumbers = [contact2 phoneNumbers];
        v19 = _MKLocalizedStringFromThisBundle(@"PlaceView_Phone_Title");
        [(MKPlaceInfoViewController *)self _addContactRow:phoneNumbers ofType:1 toViews:v7 defaultTitle:v19];

        contact3 = [(MKPlaceInfoViewController *)self contact];
        urlAddresses = [contact3 urlAddresses];
        v22 = _MKLocalizedStringFromThisBundle(@"PlaceView_Website_Title");
        [(MKPlaceInfoViewController *)self _addContactRow:urlAddresses ofType:2 toViews:v7 defaultTitle:v22];

        contact4 = [(MKPlaceInfoViewController *)self contact];
        emailAddresses = [contact4 emailAddresses];
        v25 = _MKLocalizedStringFromThisBundle(@"PlaceView_Email_Title");
        [(MKPlaceInfoViewController *)self _addContactRow:emailAddresses ofType:4 toViews:v7 defaultTitle:v25];
      }
    }

    [v7 enumerateObjectsUsingBlock:&__block_literal_global_34194];
    firstObject = [v7 firstObject];
    [firstObject setTopHairlineHidden:1];

    lastObject = [v7 lastObject];
    [lastObject setBottomHairlineHidden:1];

    sectionView = [(MKPlaceSectionViewController *)self sectionView];
    [sectionView setRowViews:v7 animated:animatedCopy];
  }
}

void __50__MKPlaceInfoViewController__updateViewsAnimated___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setTopHairlineHidden:1];
  [v2 setBottomHairlineHidden:0];
}

- (void)setBottomHairlineHidden:(BOOL)hidden
{
  self->_bottomHairlineHidden = hidden;
  if ([(MKPlaceInfoViewController *)self isViewLoaded])
  {
    bottomHairlineHidden = self->_bottomHairlineHidden;
    sectionView = [(MKPlaceSectionViewController *)self sectionView];
    [sectionView setShowsBottomHairline:!bottomHairlineHidden];
  }
}

- (void)sectionView:(id)view didSelectRow:(id)row atIndex:(unint64_t)index
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = [(NSMutableArray *)self->_rows objectAtIndexedSubscript:index, row];
  rowView = [v6 rowView];
  v8 = -[MKPlaceInfoViewController actionTypeFromRowType:](self, "actionTypeFromRowType:", [v6 type]);
  type = [v6 type];
  if ((type - 1) >= 4)
  {
    labeledValue = 0;
    if (!type)
    {
      goto LABEL_7;
    }
  }

  else
  {
    labeledValue = [rowView labeledValue];

    if (labeledValue)
    {
      v14 = @"CNLabeledValue";
      labeledValue2 = [rowView labeledValue];
      v15[0] = labeledValue2;
      labeledValue = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    }
  }

  if (v8)
  {
    v12 = [[MKPlaceCardActionItem alloc] initWithType:v8 displayString:0 glyph:0 enabled:0];
    actionDelegate = [(MKPlaceInfoViewController *)self actionDelegate];
    [actionDelegate performAction:v12 options:labeledValue completion:0];
  }

LABEL_7:
}

- (unint64_t)actionTypeFromRowType:(unint64_t)type
{
  if (type - 1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1A30F7A70[type - 1];
  }
}

- (BOOL)shouldShowDetails
{
  if (![(_MKPlaceItem *)self->_placeItem isContactPersisted])
  {
    return 1;
  }

  contact = [(MKPlaceInfoViewController *)self contact];
  mapsData = [contact mapsData];
  v5 = mapsData != 0;

  return v5;
}

- (id)contact
{
  contact = [(_MKPlaceItem *)self->_placeItem contact];
  v4 = contact;
  if (contact)
  {
    _placeCardContact = contact;
  }

  else
  {
    mapItem = [(_MKPlaceItem *)self->_placeItem mapItem];
    _placeCardContact = [mapItem _placeCardContact];
  }

  return _placeCardContact;
}

- (BOOL)hasContent
{
  view = [(MKPlaceInfoViewController *)self view];

  if (!view)
  {
    return 0;
  }

  sectionView = [(MKPlaceSectionViewController *)self sectionView];
  rowViews = [sectionView rowViews];
  v6 = [rowViews count] != 0;

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
  sectionView = [(MKPlaceSectionViewController *)self sectionView];
  [sectionView setPreservesSuperviewLayoutMargins:1];

  sectionView2 = [(MKPlaceSectionViewController *)self sectionView];
  [sectionView2 setShowsBottomHairline:0];

  [(MKPlaceInfoViewController *)self _updateViewsAnimated:0];
  v6 = MKGetPlaceCardLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PlaceInfoViewDidLoad", &unk_1A30FEA0E, buf, 2u);
  }
}

- (MKPlaceInfoViewController)initWithPlaceItem:(id)item
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = MKPlaceInfoViewController;
  v6 = [(MKPlaceInfoViewController *)&v13 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_placeItem, item);
    mapItem = [itemCopy mapItem];
    mapItem = v7->_mapItem;
    v7->_mapItem = mapItem;

    v10 = _MKLocalizedStringFromThisBundle(@"Info");
    [(MKPlaceInfoViewController *)v7 setTitle:v10];

    v11 = v7;
  }

  return v7;
}

@end