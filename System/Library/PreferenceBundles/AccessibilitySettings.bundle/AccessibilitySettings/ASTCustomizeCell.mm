@interface ASTCustomizeCell
- (ASTCustomizeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (ASTCustomizeCellDelegateProtocol)delegate;
- (BOOL)_showsLargeContentViewer;
- (id)_cellForTouches:(id)a3;
- (id)_itemForCell:(id)a3;
- (id)_layoutIcons;
- (id)_updateButton:(id)a3 withIcon:(id)a4 layout:(int64_t)a5 shouldUpdateLayoutViewIfNeeded:(BOOL)a6;
- (id)accessibilityElements;
- (void)_displayPickerForIcon:(id)a3 andLocation:(id)a4 cell:(id)a5;
- (void)_hideLargeContentViewerIfNeeded;
- (void)_rearrangeMap;
- (void)_removeInvalidIconsIfNeeded;
- (void)_updateLargeContentViewerForCell:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation ASTCustomizeCell

- (ASTCustomizeCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v62.receiver = self;
  v62.super_class = ASTCustomizeCell;
  v55 = a4;
  v56 = a5;
  v7 = [(ASTCustomizeCell *)&v62 initWithStyle:a3 reuseIdentifier:v55 specifier:?];
  if (v7)
  {
    v8 = AXSystemRootDirectory();
    v9 = [v8 stringByAppendingPathComponent:@"System/Library/CoreServices/AssistiveTouch.app"];
    v10 = [NSBundle bundleWithPath:v9];
    astBundle = v7->_astBundle;
    v7->_astBundle = v10;

    v12 = [(ASTCustomizeCell *)v7 subviews];
    [v12 enumerateObjectsUsingBlock:&__block_literal_global_13];

    [(ASTCustomizeCell *)v7 setAutoresizesSubviews:1];
    v13 = objc_alloc_init(NSMutableDictionary);
    buttonCells = v7->_buttonCells;
    v7->_buttonCells = v13;

    v15 = objc_alloc_init(AXAssistiveTouchLayoutView);
    layoutView = v7->_layoutView;
    v7->_layoutView = v15;

    [(AXAssistiveTouchLayoutView *)v7->_layoutView setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [(ASTCustomizeCell *)v7 contentView];
    [v17 addSubview:v7->_layoutView];

    v18 = +[UIColor clearColor];
    [(ASTCustomizeCell *)v7 setBackgroundColor:v18];

    v19 = [(ASTCustomizeCell *)v7 contentView];
    [v19 setUserInteractionEnabled:0];

    v20 = [(ASTCustomizeCell *)v7 contentView];
    [(ASTCustomizeCell *)v7 addSubview:v20];

    v21 = [(AXAssistiveTouchLayoutView *)v7->_layoutView widthAnchor];
    v22 = [(ASTCustomizeCell *)v7 contentView];
    v23 = [v22 widthAnchor];
    v58 = [v21 constraintEqualToAnchor:v23 multiplier:0.9];

    LODWORD(v24) = 1131937792;
    [v58 setPriority:v24];
    [AXAssistiveTouchLayoutView layoutViewSideLengthScaledFromDefaultLength:389.0];
    v26 = v25;
    v27 = [(AXAssistiveTouchLayoutView *)v7->_layoutView widthAnchor];
    v57 = [v27 constraintLessThanOrEqualToConstant:v26];

    LODWORD(v28) = 1132003328;
    [v57 setPriority:v28];
    v54 = [(ASTCustomizeCell *)v7 contentView];
    v53 = [v54 centerXAnchor];
    v52 = [(AXAssistiveTouchLayoutView *)v7->_layoutView centerXAnchor];
    v51 = [v53 constraintEqualToAnchor:v52];
    v63[0] = v51;
    v50 = [(ASTCustomizeCell *)v7 contentView];
    v49 = [v50 topAnchor];
    v48 = [(AXAssistiveTouchLayoutView *)v7->_layoutView topAnchor];
    v47 = [v49 constraintEqualToAnchor:v48];
    v63[1] = v47;
    v46 = [(ASTCustomizeCell *)v7 contentView];
    v45 = [v46 bottomAnchor];
    v44 = [(AXAssistiveTouchLayoutView *)v7->_layoutView bottomAnchor];
    v43 = [v45 constraintGreaterThanOrEqualToAnchor:v44];
    v63[2] = v43;
    v63[3] = v58;
    v63[4] = v57;
    v42 = [(AXAssistiveTouchLayoutView *)v7->_layoutView widthAnchor];
    v29 = [v42 constraintGreaterThanOrEqualToConstant:320.0];
    v63[5] = v29;
    v30 = [(AXAssistiveTouchLayoutView *)v7->_layoutView heightAnchor];
    v31 = [(AXAssistiveTouchLayoutView *)v7->_layoutView widthAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    v63[6] = v32;
    v33 = [(AXAssistiveTouchLayoutView *)v7->_layoutView widthAnchor];
    v34 = [(ASTCustomizeCell *)v7 contentView];
    v35 = [v34 widthAnchor];
    v36 = [v33 constraintLessThanOrEqualToAnchor:v35];
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
    v39 = [(ASTCustomizeCell *)v7 _layoutIcons];
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
  v4 = [v3 assistiveTouchMainScreenCustomization];

  v5 = [v4 count];
  v6 = v5 > [(NSMutableDictionary *)self->_buttonCells count];
  v7 = +[NSMutableArray array];
  v8 = +[NSMutableArray array];
  v9 = [(NSMutableDictionary *)self->_buttonCells copy];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __33__ASTCustomizeCell__rearrangeMap__block_invoke;
  v16[3] = &unk_256498;
  v16[4] = self;
  v17 = v4;
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
  v13 = v4;
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

- (id)_cellForTouches:(id)a3
{
  v27 = a3;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v4 = [(ASTCustomizeCell *)self contentView];
  v5 = [v4 subviews];

  v6 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v11 borderView];
          [v12 bounds];
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v21 = [v27 anyObject];
          v22 = [v11 borderView];
          [v21 locationInView:v22];
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

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v7);
  }

  v11 = 0;
LABEL_12:

  return v11;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5 = [(ASTCustomizeCell *)self _cellForTouches:a3, a4];
  downCell = self->_downCell;
  self->_downCell = v5;

  if ([(ASTCustomizeCell *)self _showsLargeContentViewer])
  {
    [(ASTCustomizeCell *)self setShouldDelayBeforePresentingHUDView:1];
    v7 = self->_downCell;

    [(ASTCustomizeCell *)self _updateLargeContentViewerForCell:v7];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v24 = a3;
  v6 = a4;
  downCell = self->_downCell;
  if (downCell)
  {
    v8 = [(ASTButtonCell *)downCell borderView];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [v24 anyObject];
    v18 = [(ASTButtonCell *)self->_downCell borderView];
    [v17 locationInView:v18];
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
    v23 = [(ASTCustomizeCell *)self _cellForTouches:v24];
    [(ASTCustomizeCell *)self _updateLargeContentViewerForCell:v23];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v18 = a3;
  v6 = a4;
  downCell = self->_downCell;
  if (downCell)
  {
    v8 = [(ASTButtonCell *)downCell activateCellBlock];

    if (v8)
    {
      v9 = [(ASTButtonCell *)self->_downCell activateCellBlock];
      (v9)[2](v9, self->_downCell);
LABEL_8:

      goto LABEL_9;
    }
  }

  if ([(ASTCustomizeCell *)self _showsLargeContentViewer])
  {
    v10 = [(ASTCustomizeCell *)self cellForPresentedHUDView];
    if (v10)
    {
      v11 = v10;
      v12 = [(ASTCustomizeCell *)self cellForPresentedHUDView];
      v13 = [v12 activateCellBlock];

      if (v13)
      {
        v9 = [(ASTCustomizeCell *)self cellForPresentedHUDView];
        v14 = [v9 activateCellBlock];
        v15 = [(ASTCustomizeCell *)self cellForPresentedHUDView];
        (v14)[2](v14, v15);

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
    v17 = [(ASTCustomizeCell *)self _tableView];
    [v17 setScrollEnabled:1];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  downCell = self->_downCell;
  self->_downCell = 0;

  if ([(ASTCustomizeCell *)self _showsLargeContentViewer])
  {
    [(ASTCustomizeCell *)self _hideLargeContentViewerIfNeeded];
    v6 = [(ASTCustomizeCell *)self _tableView];
    [v6 setScrollEnabled:1];
  }
}

- (void)_displayPickerForIcon:(id)a3 andLocation:(id)a4 cell:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ASTCustomizeCell *)self delegate];
  [v11 customCell:self wantsPickerDisplayedForIconKey:v10 andLocation:v9 cell:v8];
}

- (id)_updateButton:(id)a3 withIcon:(id)a4 layout:(int64_t)a5 shouldUpdateLayoutViewIfNeeded:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = [(NSMutableDictionary *)self->_buttonCells objectForKey:v9];
  if (v11)
  {
    v12 = v11;
    [(ASTButtonCell *)v11 setIconKey:v10];
    v13 = 0;
  }

  else
  {
    v14 = [[ASTButtonCell alloc] initWithLocation:v9 iconKey:v10];
    [(NSMutableDictionary *)self->_buttonCells setObject:v14 forKey:v9];
    v15 = [(ASTCustomizeCell *)self contentView];
    [v15 addSubview:v14];

    if (v6)
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
  v3 = [v2 assistiveTouchMainScreenCustomization];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v5)
  {
    v7 = v4;
    goto LABEL_16;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v22;
  v9 = AXAssistiveTouchIconTypeForceTap;
  v19 = AXAssistiveTouchIconTypeForceTap;
  v20 = v4;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v21 + 1) + 8 * i);
      v12 = [v3 objectForKey:v11];
      if (!_AXSForceTouchEnabled() && [v12 isEqualToString:v9])
      {
        if (!v7)
        {
          v7 = [v3 mutableCopy];
        }

        v13 = v3;
        v14 = +[NSUUID UUID];
        [v14 UUIDString];
        v16 = v15 = v7;
        v17 = [NSString stringWithFormat:@"__empty__%@", v16];

        v7 = v15;
        [v15 setValue:v17 forKey:v11];
        v12 = v17;
        v3 = v13;
        v9 = v19;
        v4 = v20;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
  v5 = [v4 assistiveTouchMainScreenCustomization];

  [v5 count];
  v6 = AXAssistiveTouchNamedLayout();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v5 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v5 objectForKey:v12];
        v14 = [(ASTCustomizeCell *)self _updateButton:v12 withIcon:v13 layout:v6 shouldUpdateLayoutViewIfNeeded:0];

        if (v14)
        {
          [v3 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)_itemForCell:(id)a3
{
  v3 = a3;
  v4 = [UIAccessibilityHUDItem alloc];
  v5 = [v3 label];
  v6 = [v5 text];
  v7 = [v3 imageView];

  v8 = [v7 image];
  v9 = [v4 initWithTitle:v6 image:v8 imageInsets:1 scaleImage:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v9;
}

- (void)_updateLargeContentViewerForCell:(id)a3
{
  v4 = a3;
  v5 = [(ASTCustomizeCell *)self presentHUDViewTimer];
  [v5 cancel];

  if (v4)
  {
    v6 = [(ASTCustomizeCell *)self _itemForCell:v4];
    if ([(ASTCustomizeCell *)self shouldDelayBeforePresentingHUDView])
    {
      v7 = [(ASTCustomizeCell *)self presentHUDViewTimer];

      if (!v7)
      {
        v8 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
        [(ASTCustomizeCell *)self setPresentHUDViewTimer:v8];
      }

      v9 = [(ASTCustomizeCell *)self presentHUDViewTimer];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = __53__ASTCustomizeCell__updateLargeContentViewerForCell___block_invoke;
      v11[3] = &unk_2561D8;
      v11[4] = self;
      v12 = v4;
      v13 = v6;
      [v9 afterDelay:v11 processBlock:0.15];
    }

    else
    {
      [(ASTCustomizeCell *)self setCellForPresentedHUDView:v4];
      v10 = [(ASTCustomizeCell *)self delegate];
      [v10 customCell:self wantsAccessibilityHUDShownForItem:v6];
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
  v3 = [(ASTCustomizeCell *)self presentHUDViewTimer];
  [v3 cancel];

  [(ASTCustomizeCell *)self setCellForPresentedHUDView:0];
  v4 = [(ASTCustomizeCell *)self delegate];
  [v4 wantsAccessibilityHUDDismissedForCustomCell:self];
}

- (ASTCustomizeCellDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end