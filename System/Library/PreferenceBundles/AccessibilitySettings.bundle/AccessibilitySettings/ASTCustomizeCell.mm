@interface ASTCustomizeCell
- (ASTCustomizeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (ASTCustomizeCellDelegateProtocol)delegate;
- (BOOL)_showsLargeContentViewer;
- (id)_cellForTouches:(id)touches;
- (id)_itemForCell:(id)cell;
- (id)_layoutIcons;
- (id)_updateButton:(id)button withIcon:(id)icon layout:(int64_t)layout shouldUpdateLayoutViewIfNeeded:(BOOL)needed;
- (id)accessibilityElements;
- (void)_displayPickerForIcon:(id)icon andLocation:(id)location cell:(id)cell;
- (void)_hideLargeContentViewerIfNeeded;
- (void)_rearrangeMap;
- (void)_removeInvalidIconsIfNeeded;
- (void)_updateLargeContentViewerForCell:(id)cell;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation ASTCustomizeCell

- (ASTCustomizeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v62.receiver = self;
  v62.super_class = ASTCustomizeCell;
  identifierCopy = identifier;
  specifierCopy = specifier;
  v7 = [(ASTCustomizeCell *)&v62 initWithStyle:style reuseIdentifier:identifierCopy specifier:?];
  if (v7)
  {
    v8 = AXSystemRootDirectory();
    v9 = [v8 stringByAppendingPathComponent:@"System/Library/CoreServices/AssistiveTouch.app"];
    v10 = [NSBundle bundleWithPath:v9];
    astBundle = v7->_astBundle;
    v7->_astBundle = v10;

    subviews = [(ASTCustomizeCell *)v7 subviews];
    [subviews enumerateObjectsUsingBlock:&__block_literal_global_13];

    [(ASTCustomizeCell *)v7 setAutoresizesSubviews:1];
    v13 = objc_alloc_init(NSMutableDictionary);
    buttonCells = v7->_buttonCells;
    v7->_buttonCells = v13;

    v15 = objc_alloc_init(AXAssistiveTouchLayoutView);
    layoutView = v7->_layoutView;
    v7->_layoutView = v15;

    [(AXAssistiveTouchLayoutView *)v7->_layoutView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(ASTCustomizeCell *)v7 contentView];
    [contentView addSubview:v7->_layoutView];

    v18 = +[UIColor clearColor];
    [(ASTCustomizeCell *)v7 setBackgroundColor:v18];

    contentView2 = [(ASTCustomizeCell *)v7 contentView];
    [contentView2 setUserInteractionEnabled:0];

    contentView3 = [(ASTCustomizeCell *)v7 contentView];
    [(ASTCustomizeCell *)v7 addSubview:contentView3];

    widthAnchor = [(AXAssistiveTouchLayoutView *)v7->_layoutView widthAnchor];
    contentView4 = [(ASTCustomizeCell *)v7 contentView];
    widthAnchor2 = [contentView4 widthAnchor];
    v58 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.9];

    LODWORD(v24) = 1131937792;
    [v58 setPriority:v24];
    [AXAssistiveTouchLayoutView layoutViewSideLengthScaledFromDefaultLength:389.0];
    v26 = v25;
    widthAnchor3 = [(AXAssistiveTouchLayoutView *)v7->_layoutView widthAnchor];
    v57 = [widthAnchor3 constraintLessThanOrEqualToConstant:v26];

    LODWORD(v28) = 1132003328;
    [v57 setPriority:v28];
    contentView5 = [(ASTCustomizeCell *)v7 contentView];
    centerXAnchor = [contentView5 centerXAnchor];
    centerXAnchor2 = [(AXAssistiveTouchLayoutView *)v7->_layoutView centerXAnchor];
    v51 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v63[0] = v51;
    contentView6 = [(ASTCustomizeCell *)v7 contentView];
    topAnchor = [contentView6 topAnchor];
    topAnchor2 = [(AXAssistiveTouchLayoutView *)v7->_layoutView topAnchor];
    v47 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v63[1] = v47;
    contentView7 = [(ASTCustomizeCell *)v7 contentView];
    bottomAnchor = [contentView7 bottomAnchor];
    bottomAnchor2 = [(AXAssistiveTouchLayoutView *)v7->_layoutView bottomAnchor];
    v43 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
    v63[2] = v43;
    v63[3] = v58;
    v63[4] = v57;
    widthAnchor4 = [(AXAssistiveTouchLayoutView *)v7->_layoutView widthAnchor];
    v29 = [widthAnchor4 constraintGreaterThanOrEqualToConstant:320.0];
    v63[5] = v29;
    heightAnchor = [(AXAssistiveTouchLayoutView *)v7->_layoutView heightAnchor];
    widthAnchor5 = [(AXAssistiveTouchLayoutView *)v7->_layoutView widthAnchor];
    v32 = [heightAnchor constraintEqualToAnchor:widthAnchor5];
    v63[6] = v32;
    widthAnchor6 = [(AXAssistiveTouchLayoutView *)v7->_layoutView widthAnchor];
    contentView8 = [(ASTCustomizeCell *)v7 contentView];
    widthAnchor7 = [contentView8 widthAnchor];
    v36 = [widthAnchor6 constraintLessThanOrEqualToAnchor:widthAnchor7];
    v63[7] = v36;
    v37 = [NSArray arrayWithObjects:v63 count:8];
    [NSLayoutConstraint activateConstraints:v37];

    [(ASTCustomizeCell *)v7 setUserInteractionEnabled:1];
    [(ASTCustomizeCell *)v7 setMultipleTouchEnabled:1];
    [(ASTCustomizeCell *)v7 setExclusiveTouch:1];
    objc_initWeak(&location, v7);
    v38 = +[AXSettings sharedInstance];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = __60__ASTCustomizeCell_initWithStyle_reuseIdentifier_specifier___block_invoke_2;
    v59[3] = &unk_255388;
    objc_copyWeak(&v60, &location);
    [v38 registerUpdateBlock:v59 forRetrieveSelector:"assistiveTouchMainScreenCustomization" withListener:v7];

    objc_destroyWeak(&v60);
    _layoutIcons = [(ASTCustomizeCell *)v7 _layoutIcons];
    v40 = v7;
    objc_destroyWeak(&location);
  }

  return v7;
}

void __60__ASTCustomizeCell_initWithStyle_reuseIdentifier_specifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _rearrangeMap];
}

- (id)accessibilityElements
{
  v3 = +[NSMutableArray array];
  v4 = [(NSMutableDictionary *)self->_buttonCells objectForKeyedSubscript:AXAssistiveTouchIconLocationTopMiddle];
  [v3 axSafelyAddObject:v4];

  v5 = [(NSMutableDictionary *)self->_buttonCells objectForKeyedSubscript:AXAssistiveTouchIconLocationTopLeft];
  [v3 axSafelyAddObject:v5];

  v6 = [(NSMutableDictionary *)self->_buttonCells objectForKeyedSubscript:AXAssistiveTouchIconLocationTopRight];
  [v3 axSafelyAddObject:v6];

  v7 = [(NSMutableDictionary *)self->_buttonCells objectForKeyedSubscript:AXAssistiveTouchIconLocationMidLeft];
  [v3 axSafelyAddObject:v7];

  v8 = [(NSMutableDictionary *)self->_buttonCells objectForKeyedSubscript:AXAssistiveTouchIconLocationMidMiddle];
  [v3 axSafelyAddObject:v8];

  v9 = [(NSMutableDictionary *)self->_buttonCells objectForKeyedSubscript:AXAssistiveTouchIconLocationMidRight];
  [v3 axSafelyAddObject:v9];

  v10 = [(NSMutableDictionary *)self->_buttonCells objectForKeyedSubscript:AXAssistiveTouchIconLocationBottomLeft];
  [v3 axSafelyAddObject:v10];

  v11 = [(NSMutableDictionary *)self->_buttonCells objectForKeyedSubscript:AXAssistiveTouchIconLocationBottomMiddle];
  [v3 axSafelyAddObject:v11];

  v12 = [(NSMutableDictionary *)self->_buttonCells objectForKeyedSubscript:AXAssistiveTouchIconLocationBottomRight];
  [v3 axSafelyAddObject:v12];

  return v3;
}

- (void)_rearrangeMap
{
  v3 = +[AXSettings sharedInstance];
  assistiveTouchMainScreenCustomization = [v3 assistiveTouchMainScreenCustomization];

  v5 = [assistiveTouchMainScreenCustomization count];
  v6 = v5 > [(NSMutableDictionary *)self->_buttonCells count];
  v7 = +[NSMutableArray array];
  v8 = +[NSMutableArray array];
  v9 = [(NSMutableDictionary *)self->_buttonCells copy];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __33__ASTCustomizeCell__rearrangeMap__block_invoke;
  v16[3] = &unk_256498;
  v16[4] = self;
  v17 = assistiveTouchMainScreenCustomization;
  v21 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __33__ASTCustomizeCell__rearrangeMap__block_invoke_4;
  v14[3] = &unk_2564C0;
  v15 = v18;
  v10 = v18;
  v11 = v9;
  v12 = v8;
  v13 = assistiveTouchMainScreenCustomization;
  [UIView animateWithDuration:v16 animations:v14 completion:0.25];
}

void __33__ASTCustomizeCell__rearrangeMap__block_invoke(uint64_t a1)
{
  v37 = +[NSMutableDictionary dictionary];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = [*(*(a1 + 32) + 152) allKeys];
  v39 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
  if (v39)
  {
    v38 = *v59;
    do
    {
      v2 = 0;
      do
      {
        if (*v59 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = v2;
        v3 = [*(*(a1 + 32) + 152) objectForKey:*(*(&v58 + 1) + 8 * v2)];
        [v3 setLocation:0];
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v4 = [*(a1 + 40) allKeys];
        v5 = [v4 countByEnumeratingWithState:&v54 objects:v64 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v55;
          do
          {
            for (i = 0; i != v6; i = i + 1)
            {
              if (*v55 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v54 + 1) + 8 * i);
              v10 = [*(a1 + 40) objectForKeyedSubscript:v9];
              v11 = [v3 iconKey];
              v12 = [v11 isEqualToString:v10];

              if (v12)
              {
                [v3 setLocation:v9];
              }
            }

            v6 = [v4 countByEnumeratingWithState:&v54 objects:v64 count:16];
          }

          while (v6);
        }

        v13 = [v3 location];

        if (v13)
        {
          v14 = [v3 location];
          [v37 setObject:v3 forKey:v14];
        }

        else
        {
          [v3 setAlpha:0.0];
          [*(a1 + 48) addObject:v3];
        }

        v2 = v40 + 1;
      }

      while ((v40 + 1) != v39);
      v39 = [obj countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v39);
  }

  objc_storeStrong((*(a1 + 32) + 152), v37);
  if (*(a1 + 72) == 1)
  {
    v15 = [*(*(a1 + 32) + 152) count];
    if (v15 != [*(a1 + 40) count])
    {
      do
      {
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v16 = *(a1 + 40);
        v17 = [v16 countByEnumeratingWithState:&v50 objects:v63 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v51;
LABEL_24:
          v20 = 0;
          while (1)
          {
            if (*v51 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v50 + 1) + 8 * v20);
            v22 = [*(*(a1 + 32) + 152) objectForKeyedSubscript:v21];

            if (!v22)
            {
              break;
            }

            if (v18 == ++v20)
            {
              v18 = [v16 countByEnumeratingWithState:&v50 objects:v63 count:16];
              if (v18)
              {
                goto LABEL_24;
              }

              goto LABEL_30;
            }
          }

          v23 = v21;

          if (!v23)
          {
            goto LABEL_33;
          }

          v24 = [ASTButtonCell alloc];
          v25 = [*(a1 + 40) objectForKey:v23];
          v26 = [(ASTButtonCell *)v24 initWithLocation:v23 iconKey:v25];

          [*(a1 + 56) addObject:v26];
          v27 = [*(a1 + 32) contentView];
          [v27 addSubview:v26];

          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v49[2] = __33__ASTCustomizeCell__rearrangeMap__block_invoke_2;
          v49[3] = &unk_256448;
          v49[4] = *(a1 + 32);
          [(ASTButtonCell *)v26 setActivateCellBlock:v49];
          [*(*(a1 + 32) + 152) setObject:v26 forKey:v23];
        }

        else
        {
LABEL_30:

LABEL_33:
          _AXAssert();
        }

        v28 = [*(*(a1 + 32) + 152) count];
      }

      while (v28 != [*(a1 + 40) count]);
    }
  }

  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = __33__ASTCustomizeCell__rearrangeMap__block_invoke_3;
  v45[3] = &unk_256470;
  v45[4] = *(a1 + 32);
  v46 = *(a1 + 56);
  v47 = *(a1 + 64);
  v48 = *(a1 + 48);
  [UIView performWithoutAnimation:v45];
  v29 = [*(a1 + 32) _layoutIcons];
  [*(a1 + 32) layoutIfNeeded];
  v30 = [*(a1 + 32) delegate];
  [v30 wantsHeightUpdatedForCustomCell:*(a1 + 32)];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v31 = *(a1 + 56);
  v32 = [v31 countByEnumeratingWithState:&v41 objects:v62 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v42;
    do
    {
      for (j = 0; j != v33; j = j + 1)
      {
        if (*v42 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [*(*(&v41 + 1) + 8 * j) setAlpha:1.0];
      }

      v33 = [v31 countByEnumeratingWithState:&v41 objects:v62 count:16];
    }

    while (v33);
  }
}

void __33__ASTCustomizeCell__rearrangeMap__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 iconKey];
  v4 = [v3 location];
  [v2 _displayPickerForIcon:v5 andLocation:v4 cell:v3];
}

void __33__ASTCustomizeCell__rearrangeMap__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _layoutIcons];
  [*(a1 + 32) layoutIfNeeded];
  [*(a1 + 40) addObjectsFromArray:v2];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        [v8 setTranslatesAutoresizingMaskIntoConstraints:1];
        [v8 setAlpha:0.0];
      }

      v5 = [v3 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v5);
  }

  [*(*(a1 + 32) + 144) layoutItemsByLocation:*(a1 + 48) hasBackButton:0];
  [*(a1 + 32) layoutIfNeeded];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = *(a1 + 56);
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v23 + 1) + 8 * j) setTranslatesAutoresizingMaskIntoConstraints:1];
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v11);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = *(a1 + 40);
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      for (k = 0; k != v16; k = k + 1)
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v19 + 1) + 8 * k) setTranslatesAutoresizingMaskIntoConstraints:{0, v19}];
      }

      v16 = [v14 countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v16);
  }
}

void __33__ASTCustomizeCell__rearrangeMap__block_invoke_4(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5) removeFromSuperview];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (id)_cellForTouches:(id)touches
{
  touchesCopy = touches;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  contentView = [(ASTCustomizeCell *)self contentView];
  subviews = [contentView subviews];

  v6 = [subviews countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(subviews);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          borderView = [v11 borderView];
          [borderView bounds];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;
          anyObject = [touchesCopy anyObject];
          borderView2 = [v11 borderView];
          [anyObject locationInView:borderView2];
          v34.x = v23;
          v34.y = v24;
          v35.origin.x = v14;
          v35.origin.y = v16;
          v35.size.width = v18;
          v35.size.height = v20;
          v25 = CGRectContainsPoint(v35, v34);

          if (v25)
          {
            goto LABEL_12;
          }
        }
      }

      v7 = [subviews countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v7);
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  event = [(ASTCustomizeCell *)self _cellForTouches:began, event];
  downCell = self->_downCell;
  self->_downCell = event;

  if ([(ASTCustomizeCell *)self _showsLargeContentViewer])
  {
    [(ASTCustomizeCell *)self setShouldDelayBeforePresentingHUDView:1];
    v7 = self->_downCell;

    [(ASTCustomizeCell *)self _updateLargeContentViewerForCell:v7];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  eventCopy = event;
  downCell = self->_downCell;
  if (downCell)
  {
    borderView = [(ASTButtonCell *)downCell borderView];
    [borderView bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    anyObject = [movedCopy anyObject];
    borderView2 = [(ASTButtonCell *)self->_downCell borderView];
    [anyObject locationInView:borderView2];
    v26.x = v19;
    v26.y = v20;
    v27.origin.x = v10;
    v27.origin.y = v12;
    v27.size.width = v14;
    v27.size.height = v16;
    v21 = CGRectContainsPoint(v27, v26);

    if (!v21)
    {
      v22 = self->_downCell;
      self->_downCell = 0;
    }
  }

  if ([(ASTCustomizeCell *)self _showsLargeContentViewer])
  {
    v23 = [(ASTCustomizeCell *)self _cellForTouches:movedCopy];
    [(ASTCustomizeCell *)self _updateLargeContentViewerForCell:v23];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  downCell = self->_downCell;
  if (downCell)
  {
    activateCellBlock = [(ASTButtonCell *)downCell activateCellBlock];

    if (activateCellBlock)
    {
      activateCellBlock2 = [(ASTButtonCell *)self->_downCell activateCellBlock];
      (activateCellBlock2)[2](activateCellBlock2, self->_downCell);
LABEL_8:

      goto LABEL_9;
    }
  }

  if ([(ASTCustomizeCell *)self _showsLargeContentViewer])
  {
    cellForPresentedHUDView = [(ASTCustomizeCell *)self cellForPresentedHUDView];
    if (cellForPresentedHUDView)
    {
      v11 = cellForPresentedHUDView;
      cellForPresentedHUDView2 = [(ASTCustomizeCell *)self cellForPresentedHUDView];
      activateCellBlock3 = [cellForPresentedHUDView2 activateCellBlock];

      if (activateCellBlock3)
      {
        activateCellBlock2 = [(ASTCustomizeCell *)self cellForPresentedHUDView];
        v9ActivateCellBlock = [activateCellBlock2 activateCellBlock];
        cellForPresentedHUDView3 = [(ASTCustomizeCell *)self cellForPresentedHUDView];
        (v9ActivateCellBlock)[2](v9ActivateCellBlock, cellForPresentedHUDView3);

        goto LABEL_8;
      }
    }
  }

LABEL_9:
  v16 = self->_downCell;
  self->_downCell = 0;

  if ([(ASTCustomizeCell *)self _showsLargeContentViewer])
  {
    [(ASTCustomizeCell *)self _hideLargeContentViewerIfNeeded];
    _tableView = [(ASTCustomizeCell *)self _tableView];
    [_tableView setScrollEnabled:1];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  downCell = self->_downCell;
  self->_downCell = 0;

  if ([(ASTCustomizeCell *)self _showsLargeContentViewer])
  {
    [(ASTCustomizeCell *)self _hideLargeContentViewerIfNeeded];
    _tableView = [(ASTCustomizeCell *)self _tableView];
    [_tableView setScrollEnabled:1];
  }
}

- (void)_displayPickerForIcon:(id)icon andLocation:(id)location cell:(id)cell
{
  cellCopy = cell;
  locationCopy = location;
  iconCopy = icon;
  delegate = [(ASTCustomizeCell *)self delegate];
  [delegate customCell:self wantsPickerDisplayedForIconKey:iconCopy andLocation:locationCopy cell:cellCopy];
}

- (id)_updateButton:(id)button withIcon:(id)icon layout:(int64_t)layout shouldUpdateLayoutViewIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  buttonCopy = button;
  iconCopy = icon;
  v11 = [(NSMutableDictionary *)self->_buttonCells objectForKey:buttonCopy];
  if (v11)
  {
    v12 = v11;
    [(ASTButtonCell *)v11 setIconKey:iconCopy];
    v13 = 0;
  }

  else
  {
    v14 = [[ASTButtonCell alloc] initWithLocation:buttonCopy iconKey:iconCopy];
    [(NSMutableDictionary *)self->_buttonCells setObject:v14 forKey:buttonCopy];
    contentView = [(ASTCustomizeCell *)self contentView];
    [contentView addSubview:v14];

    if (neededCopy)
    {
      [(AXAssistiveTouchLayoutView *)self->_layoutView layoutItemsByLocation:self->_buttonCells hasBackButton:0];
    }

    v13 = v14;
    v12 = v13;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __81__ASTCustomizeCell__updateButton_withIcon_layout_shouldUpdateLayoutViewIfNeeded___block_invoke;
  v18[3] = &unk_256448;
  v18[4] = self;
  [(ASTButtonCell *)v12 setActivateCellBlock:v18];
  v16 = v13;

  return v13;
}

void __81__ASTCustomizeCell__updateButton_withIcon_layout_shouldUpdateLayoutViewIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 iconKey];
  v4 = [v3 location];
  [v2 _displayPickerForIcon:v5 andLocation:v4 cell:v3];
}

- (void)_removeInvalidIconsIfNeeded
{
  v2 = +[AXSettings sharedInstance];
  assistiveTouchMainScreenCustomization = [v2 assistiveTouchMainScreenCustomization];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  allKeys = [assistiveTouchMainScreenCustomization allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v5)
  {
    v7 = allKeys;
    goto LABEL_16;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v22;
  v9 = AXAssistiveTouchIconTypeForceTap;
  v19 = AXAssistiveTouchIconTypeForceTap;
  v20 = allKeys;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(allKeys);
      }

      v11 = *(*(&v21 + 1) + 8 * i);
      v12 = [assistiveTouchMainScreenCustomization objectForKey:v11];
      if (!_AXSForceTouchEnabled() && [v12 isEqualToString:v9])
      {
        if (!v7)
        {
          v7 = [assistiveTouchMainScreenCustomization mutableCopy];
        }

        v13 = assistiveTouchMainScreenCustomization;
        v14 = +[NSUUID UUID];
        [v14 UUIDString];
        v16 = v15 = v7;
        v17 = [NSString stringWithFormat:@"__empty__%@", v16];

        v7 = v15;
        [v15 setValue:v17 forKey:v11];
        v12 = v17;
        assistiveTouchMainScreenCustomization = v13;
        v9 = v19;
        allKeys = v20;
      }
    }

    v6 = [allKeys countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v6);

  if (v7)
  {
    v18 = +[AXSettings sharedInstance];
    [v18 setAssistiveTouchMainScreenCustomization:v7];

LABEL_16:
  }
}

- (id)_layoutIcons
{
  v3 = +[NSMutableArray array];
  [(ASTCustomizeCell *)self _removeInvalidIconsIfNeeded];
  v4 = +[AXSettings sharedInstance];
  assistiveTouchMainScreenCustomization = [v4 assistiveTouchMainScreenCustomization];

  [assistiveTouchMainScreenCustomization count];
  v6 = AXAssistiveTouchNamedLayout();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys = [assistiveTouchMainScreenCustomization allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [assistiveTouchMainScreenCustomization objectForKey:v12];
        v14 = [(ASTCustomizeCell *)self _updateButton:v12 withIcon:v13 layout:v6 shouldUpdateLayoutViewIfNeeded:0];

        if (v14)
        {
          [v3 addObject:v14];
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [(AXAssistiveTouchLayoutView *)self->_layoutView layoutItemsByLocation:self->_buttonCells hasBackButton:0];

  return v3;
}

- (BOOL)_showsLargeContentViewer
{
  if (+[UILargeContentViewerInteraction isEnabled])
  {
    v2 = +[AXAssistiveTouchLayoutView labelMaximumContentSizeCategory];
    v3 = !UIContentSizeCategoryIsAccessibilityCategory(v2);
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (id)_itemForCell:(id)cell
{
  cellCopy = cell;
  v4 = [UIAccessibilityHUDItem alloc];
  label = [cellCopy label];
  text = [label text];
  imageView = [cellCopy imageView];

  image = [imageView image];
  v9 = [v4 initWithTitle:text image:image imageInsets:1 scaleImage:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v9;
}

- (void)_updateLargeContentViewerForCell:(id)cell
{
  cellCopy = cell;
  presentHUDViewTimer = [(ASTCustomizeCell *)self presentHUDViewTimer];
  [presentHUDViewTimer cancel];

  if (cellCopy)
  {
    v6 = [(ASTCustomizeCell *)self _itemForCell:cellCopy];
    if ([(ASTCustomizeCell *)self shouldDelayBeforePresentingHUDView])
    {
      presentHUDViewTimer2 = [(ASTCustomizeCell *)self presentHUDViewTimer];

      if (!presentHUDViewTimer2)
      {
        v8 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
        [(ASTCustomizeCell *)self setPresentHUDViewTimer:v8];
      }

      presentHUDViewTimer3 = [(ASTCustomizeCell *)self presentHUDViewTimer];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = __53__ASTCustomizeCell__updateLargeContentViewerForCell___block_invoke;
      v11[3] = &unk_2561D8;
      v11[4] = self;
      v12 = cellCopy;
      v13 = v6;
      [presentHUDViewTimer3 afterDelay:v11 processBlock:0.15];
    }

    else
    {
      [(ASTCustomizeCell *)self setCellForPresentedHUDView:cellCopy];
      delegate = [(ASTCustomizeCell *)self delegate];
      [delegate customCell:self wantsAccessibilityHUDShownForItem:v6];
    }
  }

  else
  {
    [(ASTCustomizeCell *)self _hideLargeContentViewerIfNeeded];
  }
}

void __53__ASTCustomizeCell__updateLargeContentViewerForCell___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCellForPresentedHUDView:*(a1 + 40)];
  [*(a1 + 32) setShouldDelayBeforePresentingHUDView:0];
  v2 = [*(a1 + 32) _tableView];
  [v2 setScrollEnabled:0];

  v3 = [*(a1 + 32) delegate];
  [v3 customCell:*(a1 + 32) wantsAccessibilityHUDShownForItem:*(a1 + 48)];
}

- (void)_hideLargeContentViewerIfNeeded
{
  presentHUDViewTimer = [(ASTCustomizeCell *)self presentHUDViewTimer];
  [presentHUDViewTimer cancel];

  [(ASTCustomizeCell *)self setCellForPresentedHUDView:0];
  delegate = [(ASTCustomizeCell *)self delegate];
  [delegate wantsAccessibilityHUDDismissedForCustomCell:self];
}

- (ASTCustomizeCellDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end