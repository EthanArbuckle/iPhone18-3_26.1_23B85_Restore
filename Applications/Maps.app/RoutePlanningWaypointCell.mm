@interface RoutePlanningWaypointCell
- (BOOL)textFieldShouldClear:(id)clear;
- (BOOL)textFieldShouldReturn:(id)return;
- (NSString)currentText;
- (RoutePlanningWaypointCell)initWithWaypoints:(id)waypoints waypointIndex:(id)index editable:(BOOL)editable delegate:(id)delegate waypointInfoProvider:(id)provider cellIndex:(unint64_t)cellIndex;
- (RoutePlanningWaypointCellDelegate)delegate;
- (SearchFieldItem)editingWaypoint;
- (id)mapsDragDestinationHandler;
- (id)textDroppableView:(id)view proposalForDrop:(id)drop;
- (id)textField:(id)field editMenuForCharactersInRange:(_NSRange)range suggestedActions:(id)actions;
- (void)_markAsEditing;
- (void)_markAsNotEditingAndUpdateContent;
- (void)_textFieldEditingChanged:(id)changed;
- (void)_updateConstraints;
- (void)_updateContent;
- (void)_updateFonts;
- (void)_updateIconImage;
- (void)_updatePlaceholderText;
- (void)_updateTitleText;
- (void)beginEditing;
- (void)mapsDragDestinationHandler:(id)handler didReceiveMapItem:(id)item;
- (void)prepareForReplacement;
- (void)setCellIndex:(unint64_t)index;
- (void)textDroppableView:(id)view dropSessionDidEnd:(id)end;
- (void)textDroppableView:(id)view willPerformDrop:(id)drop;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation RoutePlanningWaypointCell

- (RoutePlanningWaypointCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_markAsNotEditingAndUpdateContent
{
  if (self->_editing)
  {
    self->_editing = 0;
    editingWaypoint = [(RoutePlanningWaypointCell *)self editingWaypoint];
    waypoint = [editingWaypoint waypoint];
    isValid = [waypoint isValid];

    if ((isValid & 1) == 0)
    {
      [editingWaypoint clear];
      currentText = [(RoutePlanningWaypointCell *)self currentText];
      v7 = [currentText length];

      if (v7)
      {
        currentText2 = [(RoutePlanningWaypointCell *)self currentText];
        [editingWaypoint setSearchString:currentText2];

        v9 = sub_100798A3C();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = 138412290;
          v11 = editingWaypoint;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Did end editing invalid item with entered text, saving to item: %@", &v10, 0xCu);
        }
      }
    }

    [(RoutePlanningWaypointCell *)self _updateContent];
  }
}

- (void)_markAsEditing
{
  if (!self->_editing)
  {
    self->_editing = 1;
    editingWaypoint = [(RoutePlanningWaypointCell *)self editingWaypoint];
    [editingWaypoint clear];

    [(RoutePlanningWaypointCell *)self _updateIconImage];
  }
}

- (void)mapsDragDestinationHandler:(id)handler didReceiveMapItem:(id)item
{
  itemCopy = item;
  name = [itemCopy name];
  [(RoutePlanningWaypointTextField *)self->_titleTextField setText:name];

  delegate = [(RoutePlanningWaypointCell *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100DDA670;
    v9[3] = &unk_101661A90;
    v9[4] = self;
    v10 = itemCopy;
    dispatch_async(&_dispatch_main_q, v9);
  }

  else
  {
    [(RoutePlanningWaypointCell *)self _textFieldEditingChanged:self->_titleTextField];
  }
}

- (void)textDroppableView:(id)view dropSessionDidEnd:(id)end
{
  endCopy = end;
  mapsDragDestinationHandler = [(RoutePlanningWaypointCell *)self mapsDragDestinationHandler];
  [mapsDragDestinationHandler endDrop:endCopy];
}

- (void)textDroppableView:(id)view willPerformDrop:(id)drop
{
  dropCopy = drop;
  viewCopy = view;
  [viewCopy bounds];
  v10 = v8 + v9 * 0.5;
  v13 = v11 + v12 * 0.5;
  mapsDragDestinationHandler = [(RoutePlanningWaypointCell *)self mapsDragDestinationHandler];
  dropSession = [dropCopy dropSession];

  [mapsDragDestinationHandler performDrop:dropSession finishingAtLocation:viewCopy inView:{v10, v13}];
}

- (id)textDroppableView:(id)view proposalForDrop:(id)drop
{
  dropCopy = drop;
  v6 = [[UITextDropProposal alloc] initWithDropOperation:2];
  mapsDragDestinationHandler = [(RoutePlanningWaypointCell *)self mapsDragDestinationHandler];
  dropSession = [dropCopy dropSession];

  [mapsDragDestinationHandler beginDrop:dropSession];
  [v6 setDropPerformer:1];

  return v6;
}

- (id)mapsDragDestinationHandler
{
  mapsDragDestinationHandler = self->_mapsDragDestinationHandler;
  if (!mapsDragDestinationHandler)
  {
    v4 = objc_alloc_init(MapsDragDestinationHandler);
    v5 = self->_mapsDragDestinationHandler;
    self->_mapsDragDestinationHandler = v4;

    [(MapsDragDestinationHandler *)self->_mapsDragDestinationHandler setDelegate:self];
    mapsDragDestinationHandler = self->_mapsDragDestinationHandler;
  }

  return mapsDragDestinationHandler;
}

- (id)textField:(id)field editMenuForCharactersInRange:(_NSRange)range suggestedActions:(id)actions
{
  actionsCopy = actions;
  delegate = [(RoutePlanningWaypointCell *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(RoutePlanningWaypointCell *)self delegate];
    v10 = [delegate2 contextMenuForCell:self];

    if (v10)
    {
      v11 = [actionsCopy mutableCopy];
      [v11 insertObject:v10 atIndex:0];
      v12 = [UIMenu menuWithChildren:v11];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  text = [return text];
  _maps_stringByTrimmingLeadingWhitespace = [text _maps_stringByTrimmingLeadingWhitespace];
  v6 = [_maps_stringByTrimmingLeadingWhitespace length];

  if (v6)
  {
    delegate = [(RoutePlanningWaypointCell *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(RoutePlanningWaypointCell *)self delegate];
      [delegate2 cellDidRequestSearch:self];
    }
  }

  return v6 != 0;
}

- (void)_textFieldEditingChanged:(id)changed
{
  changedCopy = changed;
  [(RoutePlanningWaypointCell *)self _markAsEditing];
  delegate = [(RoutePlanningWaypointCell *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    text = [changedCopy text];
    if (!text)
    {
      v9 = sub_10006D178();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [NSString stringWithFormat:@"Should always have text!"];
        v13 = 136316162;
        v14 = "[RoutePlanningWaypointCell _textFieldEditingChanged:]";
        v15 = 2080;
        v16 = "RoutePlanningWaypointCell.m";
        v17 = 1024;
        v18 = 377;
        v19 = 2080;
        v20 = "text";
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", &v13, 0x30u);
      }

      if (sub_100E03634())
      {
        v11 = sub_10006D178();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = +[NSThread callStackSymbols];
          v13 = 138412290;
          v14 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
        }
      }
    }

    delegate2 = [(RoutePlanningWaypointCell *)self delegate];
    [delegate2 cell:self didChangeInputText:text];
  }
}

- (BOOL)textFieldShouldClear:(id)clear
{
  v4 = sub_100798A3C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    editingWaypoint = [(RoutePlanningWaypointCell *)self editingWaypoint];
    v11 = 138412290;
    v12 = editingWaypoint;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Will clear item: %@", &v11, 0xCu);
  }

  editingWaypoint2 = [(RoutePlanningWaypointCell *)self editingWaypoint];
  [editingWaypoint2 clear];

  [(RoutePlanningWaypointCell *)self _markAsEditing];
  delegate = [(RoutePlanningWaypointCell *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(RoutePlanningWaypointCell *)self delegate];
    [delegate2 cellDidClearInputText:self];
  }

  return 1;
}

- (void)textFieldDidEndEditing:(id)editing
{
  [(RoutePlanningWaypointCell *)self _markAsNotEditingAndUpdateContent];
  delegate = [(RoutePlanningWaypointCell *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(RoutePlanningWaypointCell *)self delegate];
    [delegate2 cellDidStopEditing:self];
  }
}

- (void)textFieldDidBeginEditing:(id)editing
{
  isHandlingTouch = [(RoutePlanningWaypointTextField *)self->_titleTextField isHandlingTouch];
  [(RoutePlanningWaypointTextField *)self->_titleTextField didBeginEditingFromTouch:isHandlingTouch];
  delegate = [(RoutePlanningWaypointCell *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(RoutePlanningWaypointCell *)self delegate];
    [delegate2 cellDidStartEditing:self withUserInteraction:isHandlingTouch];
  }
}

- (void)prepareForReplacement
{
  objc_storeWeak(&self->_delegate, 0);
  waypoints = self->_waypoints;
  self->_waypoints = 0;

  [(RoutePlanningWaypointTextField *)self->_titleTextField setText:0];
  titleTextField = self->_titleTextField;

  [(RoutePlanningWaypointTextField *)titleTextField setPlaceholder:0];
}

- (void)beginEditing
{
  [(RoutePlanningWaypointTextField *)self->_titleTextField becomeFirstResponder];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100DDB010;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (SearchFieldItem)editingWaypoint
{
  if ([(RoutePlanningWaypointCell *)self isEditable])
  {
    waypoints = [(RoutePlanningWaypointCell *)self waypoints];
    firstObject = [waypoints firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (NSString)currentText
{
  text = [(RoutePlanningWaypointTextField *)self->_titleTextField text];
  v3 = [text copy];

  return v3;
}

- (void)_updatePlaceholderText
{
  cellIndex = self->_cellIndex;
  v4 = +[NSBundle mainBundle];
  v7 = v4;
  if (cellIndex)
  {
    v5 = @"[Route Planning] To";
  }

  else
  {
    v5 = @"[Route Planning] From";
  }

  v6 = [v4 localizedStringForKey:v5 value:@"localized string not found" table:0];
  [(RoutePlanningWaypointTextField *)self->_titleTextField setPlaceholder:v6];
}

- (void)_updateConstraints
{
  traitCollection = [(RoutePlanningWaypointCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v5 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, UIContentSizeCategoryExtraExtraExtraLarge);

  v6 = sub_10000FA08(self);
  v7 = 30.0;
  if (v5 == NSOrderedAscending)
  {
    v7 = 20.0;
  }

  if (v6 == 5)
  {
    v8 = 16.0;
  }

  else
  {
    v8 = v7;
  }

  v9 = _UISolariumEnabled();
  v10 = sub_10000FA08(self);
  v11 = 10.0;
  if (v10 == 5)
  {
    v12 = 9.0;
  }

  else
  {
    v11 = 16.0;
    v12 = 14.0;
  }

  if (v9)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = _UISolariumEnabled();
  v15 = sub_10000FA08(self);
  v16 = 12.0;
  if (v15 == 5)
  {
    v16 = 8.0;
    v17 = 9.0;
  }

  else
  {
    v17 = 14.0;
  }

  if (!v14)
  {
    v16 = v17;
  }

  [(NSLayoutConstraint *)self->_imageContainerViewWidthConstraint setConstant:v13 + v16 + v8];
  [(NSLayoutConstraint *)self->_iconViewWidthConstraint setConstant:v8];
  iconViewHeightConstraint = self->_iconViewHeightConstraint;

  [(NSLayoutConstraint *)iconViewHeightConstraint setConstant:v8];
}

- (void)_updateFonts
{
  traitCollection = [(RoutePlanningWaypointCell *)self traitCollection];
  v3 = [traitCollection _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v3];
  [(RoutePlanningWaypointTextField *)self->_titleTextField setFont:v4];
}

- (void)_updateIconImage
{
  waypoints = [(RoutePlanningWaypointCell *)self waypoints];
  v4 = [waypoints count];
  if (!self->_editing)
  {
    v5 = v4;
    text = [(RoutePlanningWaypointTextField *)self->_titleTextField text];
    v7 = [text length];

    if (v7 && v5 != 0)
    {
      if (v5 < 2)
      {
        [(UIImageView *)self->_iconView setTintColor:0];
        firstObject = [waypoints firstObject];
        traitCollection = [(RoutePlanningWaypointCell *)self traitCollection];
        [traitCollection displayScale];
        v10 = [firstObject waypointIconWithScale:?];

        if (!v10)
        {
LABEL_17:
          v23 = +[GEOFeatureStyleAttributes genericMarkerStyleAttributes];
          traitCollection2 = [(RoutePlanningWaypointCell *)self traitCollection];
          [traitCollection2 displayScale];
          v10 = [MKIconManager imageForStyle:v23 size:0 forScale:0 format:?];
        }
      }

      else
      {
        v15 = +[UIColor tertiaryLabelColor];
        [(UIImageView *)self->_iconView setTintColor:v15];

        v16 = +[GEOFeatureStyleAttributes multipleWaypointsStyleAttributes];
        traitCollection3 = [(RoutePlanningWaypointCell *)self traitCollection];
        [traitCollection3 displayScale];
        v10 = [MKIconManager imageForStyle:v16 size:0 forScale:0 format:?];

        if (!v10)
        {
          v18 = sub_10006D178();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v25 = 136315906;
            v26 = "[RoutePlanningWaypointCell _updateIconImage]";
            v27 = 2080;
            v28 = "RoutePlanningWaypointCell.m";
            v29 = 1024;
            v30 = 267;
            v31 = 2080;
            v32 = "waypointCount <= 1";
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v25, 0x26u);
          }

          if (sub_100E03634())
          {
            v19 = sub_10006D178();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = +[NSThread callStackSymbols];
              v25 = 138412290;
              v26 = v20;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@", &v25, 0xCu);
            }
          }

          goto LABEL_17;
        }
      }

      [(UIImageView *)self->_iconView setImage:v10];
      goto LABEL_19;
    }
  }

  v9 = +[UIColor secondarySystemFillColor];
  [(UIImageView *)self->_iconView setTintColor:v9];

  v10 = +[UIColor systemWhiteColor];
  v33[0] = v10;
  v11 = +[UIColor tertiaryLabelColor];
  v33[1] = v11;
  v12 = [NSArray arrayWithObjects:v33 count:2];
  v13 = [UIImageSymbolConfiguration configurationWithPaletteColors:v12];
  v14 = [UIImage systemImageNamed:@"magnifyingglass.circle.fill" withConfiguration:v13];
  [(UIImageView *)self->_iconView setImage:v14];

LABEL_19:
}

- (void)_updateTitleText
{
  waypoints = [(RoutePlanningWaypointCell *)self waypoints];
  v3 = [waypoints count];
  if (v3 < 2)
  {
    firstObject = [waypoints firstObject];
    if (!-[RoutePlanningWaypointTextField isEnabled](self->_titleTextField, "isEnabled") || ([firstObject searchResult], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isDynamicCurrentLocation"), v9, !v10) || (+[MKLocationManager sharedLocationManager](MKLocationManager, "sharedLocationManager"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isLocationServicesApproved"), v13 = objc_msgSend(v11, "isAuthorizedForPreciseLocation"), v11, waypointName = &stru_1016631F0, v12) && v13)
    {
      waypointName = [firstObject waypointName];
    }

    if (waypointName)
    {
      v15 = waypointName;
    }

    else
    {
      v15 = &stru_1016631F0;
    }

    [(RoutePlanningWaypointTextField *)self->_titleTextField setText:v15];
    v16 = +[UIColor labelColor];
    [(RoutePlanningWaypointTextField *)self->_titleTextField setTextColor:v16];
  }

  else
  {
    v4 = v3;
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"[Route Planning] Waypoint List" value:@"localized string not found" table:0];
    v7 = [NSString localizedStringWithFormat:v6, v4, v4, v4];
    [(RoutePlanningWaypointTextField *)self->_titleTextField setText:v7];

    firstObject = +[UIColor systemBlueColor];
    [(RoutePlanningWaypointTextField *)self->_titleTextField setTextColor:firstObject];
  }
}

- (void)_updateContent
{
  [(RoutePlanningWaypointCell *)self _updateTitleText];

  [(RoutePlanningWaypointCell *)self _updateIconImage];
}

- (void)setCellIndex:(unint64_t)index
{
  if (self->_cellIndex != index)
  {
    self->_cellIndex = index;
    [(RoutePlanningWaypointCell *)self _updatePlaceholderText];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = RoutePlanningWaypointCell;
  changeCopy = change;
  [(RoutePlanningWaypointCell *)&v8 traitCollectionDidChange:changeCopy];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];

  traitCollection = [(RoutePlanningWaypointCell *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(RoutePlanningWaypointCell *)self _updateFonts];
    [(RoutePlanningWaypointCell *)self _updateConstraints];
  }
}

- (RoutePlanningWaypointCell)initWithWaypoints:(id)waypoints waypointIndex:(id)index editable:(BOOL)editable delegate:(id)delegate waypointInfoProvider:(id)provider cellIndex:(unint64_t)cellIndex
{
  editableCopy = editable;
  waypointsCopy = waypoints;
  indexCopy = index;
  delegateCopy = delegate;
  providerCopy = provider;
  v115.receiver = self;
  v115.super_class = RoutePlanningWaypointCell;
  v18 = [(RoutePlanningWaypointCell *)&v115 initWithStyle:0 reuseIdentifier:0];
  if (v18)
  {
    v19 = [waypointsCopy copy];
    waypoints = v18->_waypoints;
    v18->_waypoints = v19;

    objc_storeStrong(&v18->_waypointIndex, index);
    v18->_editable = editableCopy;
    objc_storeWeak(&v18->_delegate, delegateCopy);
    v18->_cellIndex = cellIndex;
    v111 = waypointsCopy;
    v109 = delegateCopy;
    if (_UISolariumEnabled())
    {
      +[UIColor clearColor];
    }

    else
    {
      +[UIColor tertiarySystemFillColor];
    }
    v21 = ;
    [(RoutePlanningWaypointCell *)v18 setBackgroundColor:v21];

    [(RoutePlanningWaypointCell *)v18 setAccessibilityIdentifier:@"RoutePlanningWaypointCell"];
    v22 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v26 = [v22 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v26 setUserInteractionEnabled:0];
    contentView = [(RoutePlanningWaypointCell *)v18 contentView];
    [contentView addSubview:v26];

    v28 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    iconView = v18->_iconView;
    v18->_iconView = v28;

    [(UIImageView *)v18->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v18->_iconView setContentMode:1];
    [(UIImageView *)v18->_iconView setAccessibilityIdentifier:@"RoutePlanningWaypointCellIconView"];
    traitCollection = [(RoutePlanningWaypointCell *)v18 traitCollection];
    v31 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle2 weight:traitCollection compatibleWithTraitCollection:UIFontWeightBold];
    v32 = [UIImageSymbolConfiguration configurationWithFont:v31];
    [(UIImageView *)v18->_iconView setPreferredSymbolConfiguration:v32];

    [(UIImageView *)v18->_iconView setTag:10101];
    [v26 addSubview:v18->_iconView];
    height = [[RoutePlanningWaypointTextField alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    titleTextField = v18->_titleTextField;
    v18->_titleTextField = height;

    [(RoutePlanningWaypointTextField *)v18->_titleTextField setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RoutePlanningWaypointTextField *)v18->_titleTextField setEnabled:editableCopy];
    [(RoutePlanningWaypointTextField *)v18->_titleTextField setAccessibilityIdentifier:@"RoutePlanningWaypointCellTextField"];
    [(RoutePlanningWaypointTextField *)v18->_titleTextField setDelegate:v18];
    [(RoutePlanningWaypointTextField *)v18->_titleTextField setTextDropDelegate:v18];
    [(RoutePlanningWaypointTextField *)v18->_titleTextField setReturnKeyType:6];
    [(RoutePlanningWaypointTextField *)v18->_titleTextField setAutocorrectionType:1];
    [(RoutePlanningWaypointTextField *)v18->_titleTextField setSpellCheckingType:1];
    [(RoutePlanningWaypointTextField *)v18->_titleTextField setFocusGroupIdentifier:@"RoutePlanningWaypointFocusGroup"];
    LODWORD(v35) = 1132068864;
    [(RoutePlanningWaypointTextField *)v18->_titleTextField setContentHuggingPriority:0 forAxis:v35];
    v36 = +[UIApplication sharedApplication];
    LODWORD(v31) = [v36 userInterfaceLayoutDirection] == 1;

    [(RoutePlanningWaypointTextField *)v18->_titleTextField setTextAlignment:2 * v31];
    [(RoutePlanningWaypointCell *)v18 _updateFonts];
    [(RoutePlanningWaypointTextField *)v18->_titleTextField addTarget:v18 action:"_textFieldEditingChanged:" forControlEvents:0x20000];
    contentView2 = [(RoutePlanningWaypointCell *)v18 contentView];
    [contentView2 addSubview:v18->_titleTextField];

    if (sub_10000FA08(v18) == 5)
    {
      v38 = 16.0;
    }

    else
    {
      v38 = 20.0;
    }

    v39 = _UISolariumEnabled();
    v40 = sub_10000FA08(v18);
    v41 = 10.0;
    if (v40 == 5)
    {
      v42 = 9.0;
    }

    else
    {
      v41 = 16.0;
      v42 = 14.0;
    }

    if (v39)
    {
      v43 = v41;
    }

    else
    {
      v43 = v42;
    }

    v44 = _UISolariumEnabled();
    v45 = sub_10000FA08(v18);
    v46 = 12.0;
    if (v45 == 5)
    {
      v46 = 8.0;
      v47 = 9.0;
    }

    else
    {
      v47 = 14.0;
    }

    if (!v44)
    {
      v46 = v47;
    }

    v48 = v43 + v38 + v46;
    widthAnchor = [v26 widthAnchor];
    v50 = [widthAnchor constraintEqualToConstant:v48];
    imageContainerViewWidthConstraint = v18->_imageContainerViewWidthConstraint;
    v18->_imageContainerViewWidthConstraint = v50;

    widthAnchor2 = [(UIImageView *)v18->_iconView widthAnchor];
    v53 = [widthAnchor2 constraintEqualToConstant:v38];
    iconViewWidthConstraint = v18->_iconViewWidthConstraint;
    v18->_iconViewWidthConstraint = v53;

    heightAnchor = [(UIImageView *)v18->_iconView heightAnchor];
    v56 = [heightAnchor constraintEqualToConstant:v38];
    iconViewHeightConstraint = v18->_iconViewHeightConstraint;
    v18->_iconViewHeightConstraint = v56;

    v110 = indexCopy;
    if (indexCopy && [providerCopy hasValidEVRoute])
    {
      v58 = -[RoutePlanningWaypointPillView initWithWaypointIndex:waypointInfoProvider:]([RoutePlanningWaypointPillView alloc], "initWithWaypointIndex:waypointInfoProvider:", [indexCopy unsignedIntegerValue], providerCopy);
      pillView = v18->_pillView;
      v18->_pillView = v58;

      [(RoutePlanningWaypointPillView *)v18->_pillView setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView3 = [(RoutePlanningWaypointCell *)v18 contentView];
      [contentView3 addSubview:v18->_pillView];
    }

    v108 = providerCopy;
    v112 = objc_opt_new();
    leadingAnchor = [v26 leadingAnchor];
    contentView4 = [(RoutePlanningWaypointCell *)v18 contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v100 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v117[0] = v100;
    topAnchor = [v26 topAnchor];
    contentView5 = [(RoutePlanningWaypointCell *)v18 contentView];
    topAnchor2 = [contentView5 topAnchor];
    v96 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v117[1] = v96;
    bottomAnchor = [v26 bottomAnchor];
    contentView6 = [(RoutePlanningWaypointCell *)v18 contentView];
    bottomAnchor2 = [contentView6 bottomAnchor];
    v92 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v117[2] = v92;
    v117[3] = v18->_imageContainerViewWidthConstraint;
    leadingAnchor3 = [(UIImageView *)v18->_iconView leadingAnchor];
    leadingAnchor4 = [v26 leadingAnchor];
    v89 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v43];
    v117[4] = v89;
    centerYAnchor = [(UIImageView *)v18->_iconView centerYAnchor];
    centerYAnchor2 = [v26 centerYAnchor];
    v86 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v117[5] = v86;
    v117[6] = v18->_iconViewWidthConstraint;
    v117[7] = v18->_iconViewHeightConstraint;
    leadingAnchor5 = [(RoutePlanningWaypointTextField *)v18->_titleTextField leadingAnchor];
    v107 = v26;
    trailingAnchor = [v26 trailingAnchor];
    v83 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor];
    v117[8] = v83;
    topAnchor3 = [(RoutePlanningWaypointTextField *)v18->_titleTextField topAnchor];
    contentView7 = [(RoutePlanningWaypointCell *)v18 contentView];
    topAnchor4 = [contentView7 topAnchor];
    v63 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v117[9] = v63;
    bottomAnchor3 = [(RoutePlanningWaypointTextField *)v18->_titleTextField bottomAnchor];
    contentView8 = [(RoutePlanningWaypointCell *)v18 contentView];
    bottomAnchor4 = [contentView8 bottomAnchor];
    v67 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v117[10] = v67;
    v68 = [NSArray arrayWithObjects:v117 count:11];
    [v112 addObjectsFromArray:v68];

    v69 = v18->_pillView;
    if (v69)
    {
      leadingAnchor6 = [(RoutePlanningWaypointPillView *)v69 leadingAnchor];
      trailingAnchor2 = [(RoutePlanningWaypointTextField *)v18->_titleTextField trailingAnchor];
      trailingAnchor6 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor2 constant:10.0];
      v116[0] = trailingAnchor6;
      trailingAnchor3 = [(RoutePlanningWaypointPillView *)v18->_pillView trailingAnchor];
      contentView9 = [(RoutePlanningWaypointCell *)v18 contentView];
      trailingAnchor4 = [contentView9 trailingAnchor];
      v73 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4 constant:-16.0];
      v116[1] = v73;
      centerYAnchor3 = [(RoutePlanningWaypointPillView *)v18->_pillView centerYAnchor];
      contentView10 = [(RoutePlanningWaypointCell *)v18 contentView];
      centerYAnchor4 = [contentView10 centerYAnchor];
      v77 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      v116[2] = v77;
      v78 = [NSArray arrayWithObjects:v116 count:3];
      [v112 addObjectsFromArray:v78];

      contentView11 = trailingAnchor2;
      trailingAnchor5 = leadingAnchor6;
    }

    else
    {
      trailingAnchor5 = [(RoutePlanningWaypointTextField *)v18->_titleTextField trailingAnchor];
      contentView11 = [(RoutePlanningWaypointCell *)v18 contentView];
      trailingAnchor6 = [contentView11 trailingAnchor];
      trailingAnchor3 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      [v112 addObject:trailingAnchor3];
    }

    waypointsCopy = v111;
    delegateCopy = v109;

    [NSLayoutConstraint activateConstraints:v112];
    [(RoutePlanningWaypointCell *)v18 _updateContent];
    [(RoutePlanningWaypointCell *)v18 _updateConstraints];
    [(RoutePlanningWaypointCell *)v18 _updatePlaceholderText];
    v113[0] = _NSConcreteStackBlock;
    v113[1] = 3221225472;
    v113[2] = sub_100DDC614;
    v113[3] = &unk_101661B18;
    v114 = v18;
    [UIView performWithoutAnimation:v113];

    indexCopy = v110;
    providerCopy = v108;
  }

  return v18;
}

@end