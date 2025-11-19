@interface RoutePlanningWaypointCell
- (BOOL)textFieldShouldClear:(id)a3;
- (BOOL)textFieldShouldReturn:(id)a3;
- (NSString)currentText;
- (RoutePlanningWaypointCell)initWithWaypoints:(id)a3 waypointIndex:(id)a4 editable:(BOOL)a5 delegate:(id)a6 waypointInfoProvider:(id)a7 cellIndex:(unint64_t)a8;
- (RoutePlanningWaypointCellDelegate)delegate;
- (SearchFieldItem)editingWaypoint;
- (id)mapsDragDestinationHandler;
- (id)textDroppableView:(id)a3 proposalForDrop:(id)a4;
- (id)textField:(id)a3 editMenuForCharactersInRange:(_NSRange)a4 suggestedActions:(id)a5;
- (void)_markAsEditing;
- (void)_markAsNotEditingAndUpdateContent;
- (void)_textFieldEditingChanged:(id)a3;
- (void)_updateConstraints;
- (void)_updateContent;
- (void)_updateFonts;
- (void)_updateIconImage;
- (void)_updatePlaceholderText;
- (void)_updateTitleText;
- (void)beginEditing;
- (void)mapsDragDestinationHandler:(id)a3 didReceiveMapItem:(id)a4;
- (void)prepareForReplacement;
- (void)setCellIndex:(unint64_t)a3;
- (void)textDroppableView:(id)a3 dropSessionDidEnd:(id)a4;
- (void)textDroppableView:(id)a3 willPerformDrop:(id)a4;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
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
    v3 = [(RoutePlanningWaypointCell *)self editingWaypoint];
    v4 = [v3 waypoint];
    v5 = [v4 isValid];

    if ((v5 & 1) == 0)
    {
      [v3 clear];
      v6 = [(RoutePlanningWaypointCell *)self currentText];
      v7 = [v6 length];

      if (v7)
      {
        v8 = [(RoutePlanningWaypointCell *)self currentText];
        [v3 setSearchString:v8];

        v9 = sub_100798A3C();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = 138412290;
          v11 = v3;
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
    v4 = [(RoutePlanningWaypointCell *)self editingWaypoint];
    [v4 clear];

    [(RoutePlanningWaypointCell *)self _updateIconImage];
  }
}

- (void)mapsDragDestinationHandler:(id)a3 didReceiveMapItem:(id)a4
{
  v5 = a4;
  v6 = [v5 name];
  [(RoutePlanningWaypointTextField *)self->_titleTextField setText:v6];

  v7 = [(RoutePlanningWaypointCell *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100DDA670;
    v9[3] = &unk_101661A90;
    v9[4] = self;
    v10 = v5;
    dispatch_async(&_dispatch_main_q, v9);
  }

  else
  {
    [(RoutePlanningWaypointCell *)self _textFieldEditingChanged:self->_titleTextField];
  }
}

- (void)textDroppableView:(id)a3 dropSessionDidEnd:(id)a4
{
  v5 = a4;
  v6 = [(RoutePlanningWaypointCell *)self mapsDragDestinationHandler];
  [v6 endDrop:v5];
}

- (void)textDroppableView:(id)a3 willPerformDrop:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 bounds];
  v10 = v8 + v9 * 0.5;
  v13 = v11 + v12 * 0.5;
  v15 = [(RoutePlanningWaypointCell *)self mapsDragDestinationHandler];
  v14 = [v6 dropSession];

  [v15 performDrop:v14 finishingAtLocation:v7 inView:{v10, v13}];
}

- (id)textDroppableView:(id)a3 proposalForDrop:(id)a4
{
  v5 = a4;
  v6 = [[UITextDropProposal alloc] initWithDropOperation:2];
  v7 = [(RoutePlanningWaypointCell *)self mapsDragDestinationHandler];
  v8 = [v5 dropSession];

  [v7 beginDrop:v8];
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

- (id)textField:(id)a3 editMenuForCharactersInRange:(_NSRange)a4 suggestedActions:(id)a5
{
  v6 = a5;
  v7 = [(RoutePlanningWaypointCell *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(RoutePlanningWaypointCell *)self delegate];
    v10 = [v9 contextMenuForCell:self];

    if (v10)
    {
      v11 = [v6 mutableCopy];
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

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = [a3 text];
  v5 = [v4 _maps_stringByTrimmingLeadingWhitespace];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [(RoutePlanningWaypointCell *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(RoutePlanningWaypointCell *)self delegate];
      [v9 cellDidRequestSearch:self];
    }
  }

  return v6 != 0;
}

- (void)_textFieldEditingChanged:(id)a3
{
  v4 = a3;
  [(RoutePlanningWaypointCell *)self _markAsEditing];
  v5 = [(RoutePlanningWaypointCell *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [v4 text];
    if (!v7)
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

    v8 = [(RoutePlanningWaypointCell *)self delegate];
    [v8 cell:self didChangeInputText:v7];
  }
}

- (BOOL)textFieldShouldClear:(id)a3
{
  v4 = sub_100798A3C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [(RoutePlanningWaypointCell *)self editingWaypoint];
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Will clear item: %@", &v11, 0xCu);
  }

  v6 = [(RoutePlanningWaypointCell *)self editingWaypoint];
  [v6 clear];

  [(RoutePlanningWaypointCell *)self _markAsEditing];
  v7 = [(RoutePlanningWaypointCell *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(RoutePlanningWaypointCell *)self delegate];
    [v9 cellDidClearInputText:self];
  }

  return 1;
}

- (void)textFieldDidEndEditing:(id)a3
{
  [(RoutePlanningWaypointCell *)self _markAsNotEditingAndUpdateContent];
  v4 = [(RoutePlanningWaypointCell *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(RoutePlanningWaypointCell *)self delegate];
    [v6 cellDidStopEditing:self];
  }
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = [(RoutePlanningWaypointTextField *)self->_titleTextField isHandlingTouch];
  [(RoutePlanningWaypointTextField *)self->_titleTextField didBeginEditingFromTouch:v4];
  v5 = [(RoutePlanningWaypointCell *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(RoutePlanningWaypointCell *)self delegate];
    [v7 cellDidStartEditing:self withUserInteraction:v4];
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
    v3 = [(RoutePlanningWaypointCell *)self waypoints];
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)currentText
{
  v2 = [(RoutePlanningWaypointTextField *)self->_titleTextField text];
  v3 = [v2 copy];

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
  v3 = [(RoutePlanningWaypointCell *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  v5 = UIContentSizeCategoryCompareToCategory(v4, UIContentSizeCategoryExtraExtraExtraLarge);

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
  v5 = [(RoutePlanningWaypointCell *)self traitCollection];
  v3 = [v5 _maps_traitCollectionWithMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v3];
  [(RoutePlanningWaypointTextField *)self->_titleTextField setFont:v4];
}

- (void)_updateIconImage
{
  v3 = [(RoutePlanningWaypointCell *)self waypoints];
  v4 = [v3 count];
  if (!self->_editing)
  {
    v5 = v4;
    v6 = [(RoutePlanningWaypointTextField *)self->_titleTextField text];
    v7 = [v6 length];

    if (v7 && v5 != 0)
    {
      if (v5 < 2)
      {
        [(UIImageView *)self->_iconView setTintColor:0];
        v21 = [v3 firstObject];
        v22 = [(RoutePlanningWaypointCell *)self traitCollection];
        [v22 displayScale];
        v10 = [v21 waypointIconWithScale:?];

        if (!v10)
        {
LABEL_17:
          v23 = +[GEOFeatureStyleAttributes genericMarkerStyleAttributes];
          v24 = [(RoutePlanningWaypointCell *)self traitCollection];
          [v24 displayScale];
          v10 = [MKIconManager imageForStyle:v23 size:0 forScale:0 format:?];
        }
      }

      else
      {
        v15 = +[UIColor tertiaryLabelColor];
        [(UIImageView *)self->_iconView setTintColor:v15];

        v16 = +[GEOFeatureStyleAttributes multipleWaypointsStyleAttributes];
        v17 = [(RoutePlanningWaypointCell *)self traitCollection];
        [v17 displayScale];
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
  v17 = [(RoutePlanningWaypointCell *)self waypoints];
  v3 = [v17 count];
  if (v3 < 2)
  {
    v8 = [v17 firstObject];
    if (!-[RoutePlanningWaypointTextField isEnabled](self->_titleTextField, "isEnabled") || ([v8 searchResult], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isDynamicCurrentLocation"), v9, !v10) || (+[MKLocationManager sharedLocationManager](MKLocationManager, "sharedLocationManager"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isLocationServicesApproved"), v13 = objc_msgSend(v11, "isAuthorizedForPreciseLocation"), v11, v14 = &stru_1016631F0, v12) && v13)
    {
      v14 = [v8 waypointName];
    }

    if (v14)
    {
      v15 = v14;
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

    v8 = +[UIColor systemBlueColor];
    [(RoutePlanningWaypointTextField *)self->_titleTextField setTextColor:v8];
  }
}

- (void)_updateContent
{
  [(RoutePlanningWaypointCell *)self _updateTitleText];

  [(RoutePlanningWaypointCell *)self _updateIconImage];
}

- (void)setCellIndex:(unint64_t)a3
{
  if (self->_cellIndex != a3)
  {
    self->_cellIndex = a3;
    [(RoutePlanningWaypointCell *)self _updatePlaceholderText];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = RoutePlanningWaypointCell;
  v4 = a3;
  [(RoutePlanningWaypointCell *)&v8 traitCollectionDidChange:v4];
  v5 = [v4 preferredContentSizeCategory];

  v6 = [(RoutePlanningWaypointCell *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  if (v5 != v7)
  {
    [(RoutePlanningWaypointCell *)self _updateFonts];
    [(RoutePlanningWaypointCell *)self _updateConstraints];
  }
}

- (RoutePlanningWaypointCell)initWithWaypoints:(id)a3 waypointIndex:(id)a4 editable:(BOOL)a5 delegate:(id)a6 waypointInfoProvider:(id)a7 cellIndex:(unint64_t)a8
{
  v11 = a5;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v115.receiver = self;
  v115.super_class = RoutePlanningWaypointCell;
  v18 = [(RoutePlanningWaypointCell *)&v115 initWithStyle:0 reuseIdentifier:0];
  if (v18)
  {
    v19 = [v14 copy];
    waypoints = v18->_waypoints;
    v18->_waypoints = v19;

    objc_storeStrong(&v18->_waypointIndex, a4);
    v18->_editable = v11;
    objc_storeWeak(&v18->_delegate, v16);
    v18->_cellIndex = a8;
    v111 = v14;
    v109 = v16;
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
    v27 = [(RoutePlanningWaypointCell *)v18 contentView];
    [v27 addSubview:v26];

    v28 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    iconView = v18->_iconView;
    v18->_iconView = v28;

    [(UIImageView *)v18->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v18->_iconView setContentMode:1];
    [(UIImageView *)v18->_iconView setAccessibilityIdentifier:@"RoutePlanningWaypointCellIconView"];
    v30 = [(RoutePlanningWaypointCell *)v18 traitCollection];
    v31 = [UIFont _maps_fontWithTextStyle:UIFontTextStyleTitle2 weight:v30 compatibleWithTraitCollection:UIFontWeightBold];
    v32 = [UIImageSymbolConfiguration configurationWithFont:v31];
    [(UIImageView *)v18->_iconView setPreferredSymbolConfiguration:v32];

    [(UIImageView *)v18->_iconView setTag:10101];
    [v26 addSubview:v18->_iconView];
    v33 = [[RoutePlanningWaypointTextField alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    titleTextField = v18->_titleTextField;
    v18->_titleTextField = v33;

    [(RoutePlanningWaypointTextField *)v18->_titleTextField setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RoutePlanningWaypointTextField *)v18->_titleTextField setEnabled:v11];
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
    v37 = [(RoutePlanningWaypointCell *)v18 contentView];
    [v37 addSubview:v18->_titleTextField];

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
    v49 = [v26 widthAnchor];
    v50 = [v49 constraintEqualToConstant:v48];
    imageContainerViewWidthConstraint = v18->_imageContainerViewWidthConstraint;
    v18->_imageContainerViewWidthConstraint = v50;

    v52 = [(UIImageView *)v18->_iconView widthAnchor];
    v53 = [v52 constraintEqualToConstant:v38];
    iconViewWidthConstraint = v18->_iconViewWidthConstraint;
    v18->_iconViewWidthConstraint = v53;

    v55 = [(UIImageView *)v18->_iconView heightAnchor];
    v56 = [v55 constraintEqualToConstant:v38];
    iconViewHeightConstraint = v18->_iconViewHeightConstraint;
    v18->_iconViewHeightConstraint = v56;

    v110 = v15;
    if (v15 && [v17 hasValidEVRoute])
    {
      v58 = -[RoutePlanningWaypointPillView initWithWaypointIndex:waypointInfoProvider:]([RoutePlanningWaypointPillView alloc], "initWithWaypointIndex:waypointInfoProvider:", [v15 unsignedIntegerValue], v17);
      pillView = v18->_pillView;
      v18->_pillView = v58;

      [(RoutePlanningWaypointPillView *)v18->_pillView setTranslatesAutoresizingMaskIntoConstraints:0];
      v60 = [(RoutePlanningWaypointCell *)v18 contentView];
      [v60 addSubview:v18->_pillView];
    }

    v108 = v17;
    v112 = objc_opt_new();
    v103 = [v26 leadingAnchor];
    v105 = [(RoutePlanningWaypointCell *)v18 contentView];
    v101 = [v105 leadingAnchor];
    v100 = [v103 constraintEqualToAnchor:v101];
    v117[0] = v100;
    v98 = [v26 topAnchor];
    v99 = [(RoutePlanningWaypointCell *)v18 contentView];
    v97 = [v99 topAnchor];
    v96 = [v98 constraintEqualToAnchor:v97];
    v117[1] = v96;
    v94 = [v26 bottomAnchor];
    v95 = [(RoutePlanningWaypointCell *)v18 contentView];
    v93 = [v95 bottomAnchor];
    v92 = [v94 constraintEqualToAnchor:v93];
    v117[2] = v92;
    v117[3] = v18->_imageContainerViewWidthConstraint;
    v91 = [(UIImageView *)v18->_iconView leadingAnchor];
    v90 = [v26 leadingAnchor];
    v89 = [v91 constraintEqualToAnchor:v90 constant:v43];
    v117[4] = v89;
    v88 = [(UIImageView *)v18->_iconView centerYAnchor];
    v87 = [v26 centerYAnchor];
    v86 = [v88 constraintEqualToAnchor:v87];
    v117[5] = v86;
    v117[6] = v18->_iconViewWidthConstraint;
    v117[7] = v18->_iconViewHeightConstraint;
    v85 = [(RoutePlanningWaypointTextField *)v18->_titleTextField leadingAnchor];
    v107 = v26;
    v84 = [v26 trailingAnchor];
    v83 = [v85 constraintEqualToAnchor:v84];
    v117[8] = v83;
    v82 = [(RoutePlanningWaypointTextField *)v18->_titleTextField topAnchor];
    v61 = [(RoutePlanningWaypointCell *)v18 contentView];
    v62 = [v61 topAnchor];
    v63 = [v82 constraintEqualToAnchor:v62];
    v117[9] = v63;
    v64 = [(RoutePlanningWaypointTextField *)v18->_titleTextField bottomAnchor];
    v65 = [(RoutePlanningWaypointCell *)v18 contentView];
    v66 = [v65 bottomAnchor];
    v67 = [v64 constraintEqualToAnchor:v66];
    v117[10] = v67;
    v68 = [NSArray arrayWithObjects:v117 count:11];
    [v112 addObjectsFromArray:v68];

    v69 = v18->_pillView;
    if (v69)
    {
      v106 = [(RoutePlanningWaypointPillView *)v69 leadingAnchor];
      v102 = [(RoutePlanningWaypointTextField *)v18->_titleTextField trailingAnchor];
      v70 = [v106 constraintEqualToAnchor:v102 constant:10.0];
      v116[0] = v70;
      v71 = [(RoutePlanningWaypointPillView *)v18->_pillView trailingAnchor];
      v104 = [(RoutePlanningWaypointCell *)v18 contentView];
      v72 = [v104 trailingAnchor];
      v73 = [v71 constraintLessThanOrEqualToAnchor:v72 constant:-16.0];
      v116[1] = v73;
      v74 = [(RoutePlanningWaypointPillView *)v18->_pillView centerYAnchor];
      v75 = [(RoutePlanningWaypointCell *)v18 contentView];
      v76 = [v75 centerYAnchor];
      v77 = [v74 constraintEqualToAnchor:v76];
      v116[2] = v77;
      v78 = [NSArray arrayWithObjects:v116 count:3];
      [v112 addObjectsFromArray:v78];

      v79 = v102;
      v80 = v106;
    }

    else
    {
      v80 = [(RoutePlanningWaypointTextField *)v18->_titleTextField trailingAnchor];
      v79 = [(RoutePlanningWaypointCell *)v18 contentView];
      v70 = [v79 trailingAnchor];
      v71 = [v80 constraintEqualToAnchor:v70];
      [v112 addObject:v71];
    }

    v14 = v111;
    v16 = v109;

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

    v15 = v110;
    v17 = v108;
  }

  return v18;
}

@end