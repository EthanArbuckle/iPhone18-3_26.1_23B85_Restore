@interface MKPlaceCardActionsViewController
- (MKPlaceActionManager)actionManager;
- (MKPlaceCardActionsViewController)init;
- (_MKPlaceViewControllerDelegate)placeViewControllerDelegate;
- (id)_makePlaceActionButton;
- (id)infoCardChildPossibleActions;
- (void)_setUpSectionViews;
- (void)placeCardActionSectionView:(id)view buttonWithActionItemPressed:(id)pressed;
- (void)sectionView:(id)view didSelectRow:(id)row atIndex:(unint64_t)index;
- (void)setActionItemArray:(id)array;
- (void)setAllowRowSelection:(BOOL)selection;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation MKPlaceCardActionsViewController

- (_MKPlaceViewControllerDelegate)placeViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_placeViewControllerDelegate);

  return WeakRetained;
}

- (MKPlaceActionManager)actionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_actionManager);

  return WeakRetained;
}

- (id)infoCardChildPossibleActions
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_actionItemArray;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) type] - 1;
        if (v9 <= 0x11 && ((0x201F9u >> v9) & 1) != 0)
        {
          v10 = [MEMORY[0x1E696AD98] numberWithInteger:qword_1A30F7540[v9]];
          [array addObject:v10];
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [array copy];

  return v11;
}

- (void)placeCardActionSectionView:(id)view buttonWithActionItemPressed:(id)pressed
{
  v11[1] = *MEMORY[0x1E69E9840];
  pressedCopy = pressed;
  if (view)
  {
    v10 = @"view";
    v11[0] = view;
    v7 = MEMORY[0x1E695DF20];
    viewCopy = view;
    view = [v7 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  WeakRetained = objc_loadWeakRetained(&self->_actionManager);
  [WeakRetained performAction:pressedCopy options:view completion:&__block_literal_global_5429];
}

- (void)sectionView:(id)view didSelectRow:(id)row atIndex:(unint64_t)index
{
  rowCopy = row;
  v23.receiver = self;
  v23.super_class = MKPlaceCardActionsViewController;
  [(MKPlaceSectionViewController *)&v23 sectionView:view didSelectRow:rowCopy atIndex:index];
  if (self->_allowRowSelection)
  {
    leftItem = [rowCopy leftItem];
    if (leftItem)
    {
    }

    else
    {
      rightItem = [rowCopy rightItem];

      if (!rightItem)
      {
        goto LABEL_15;
      }
    }

    leftItem2 = [rowCopy leftItem];
    if (!leftItem2 || (v12 = leftItem2, [rowCopy rightItem], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, !v13))
    {
      currentLeftItem = [rowCopy currentLeftItem];
      v15 = currentLeftItem;
      if (currentLeftItem)
      {
        rightItem2 = currentLeftItem;
      }

      else
      {
        rightItem2 = [rowCopy rightItem];
      }

      v17 = rightItem2;

      leftItem3 = [rowCopy leftItem];
      enabled = [leftItem3 enabled];

      if (enabled)
      {
        leftItem4 = [rowCopy leftItem];
        selectedItem = [leftItem4 selectedItem];

        if (selectedItem)
        {
          leftItem5 = [rowCopy leftItem];
          [leftItem5 setEnabled:0];
        }

        [(MKPlaceCardActionsViewController *)self placeCardActionSectionView:rowCopy buttonWithActionItemPressed:v17];
      }
    }
  }

LABEL_15:
}

- (void)setAllowRowSelection:(BOOL)selection
{
  self->_allowRowSelection = selection;
  if ([(MKPlaceCardActionsViewController *)self isViewLoaded])
  {
    allowRowSelection = self->_allowRowSelection;
    sectionView = [(MKPlaceSectionViewController *)self sectionView];
    [sectionView setHighlightsTouches:allowRowSelection];
  }
}

- (void)setActionItemArray:(id)array
{
  v4 = [array copy];
  actionItemArray = self->_actionItemArray;
  self->_actionItemArray = v4;

  [(MKPlaceCardActionsViewController *)self _setUpSectionViews];
}

- (void)_setUpSectionViews
{
  v67 = *MEMORY[0x1E69E9840];
  viewIfLoaded = [(MKPlaceCardActionsViewController *)self viewIfLoaded];
  if (viewIfLoaded)
  {
    v4 = viewIfLoaded;
    viewIfLoaded2 = [(MKPlaceCardActionsViewController *)self viewIfLoaded];
    [viewIfLoaded2 frame];
    v7 = v6;

    if (v7 != 0.0)
    {
      p_cache = &OBJC_METACLASS___MKPhotoBigAttributionView.cache;
      v9 = &OBJC_IVAR___MKLookAroundView__storefrontFullyDrawn;
      if (self->_haveTwoColumns)
      {
        view = [(MKPlaceCardActionsViewController *)self view];
        [view frame];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        view2 = [(MKPlaceCardActionsViewController *)self view];
        [view2 layoutMargins];
        v21 = v14 + v20;
        v24 = v16 - (v22 + v23);
        v68.size.height = v18 - (v20 + v25);
        v68.origin.x = v12 + v22;
        v68.origin.y = v21;
        v68.size.width = v24;
        Width = CGRectGetWidth(v68);

        v27 = [MKPlaceCardActionSectionView _font:self->_useSmallFonts];
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        obj = self->_actionItemArray;
        v28 = [(NSArray *)obj countByEnumeratingWithState:&v60 objects:v66 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = (Width + -30.0) * 0.5;
          v31 = *v61;
          v32 = *MEMORY[0x1E69DB648];
          while (2)
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v61 != v31)
              {
                objc_enumerationMutation(obj);
              }

              displayString = [*(*(&v60 + 1) + 8 * i) displayString];
              v64 = v32;
              v65 = v27;
              v35 = 1;
              v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
              [displayString sizeWithAttributes:v36];
              v38 = v37;

              if (v38 > v30)
              {
                p_cache = (&OBJC_METACLASS___MKPhotoBigAttributionView + 16);
                goto LABEL_15;
              }

              p_cache = (&OBJC_METACLASS___MKPhotoBigAttributionView + 16);
            }

            v29 = [(NSArray *)obj countByEnumeratingWithState:&v60 objects:v66 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }

          v35 = 0;
LABEL_15:
          v9 = &OBJC_IVAR___MKLookAroundView__storefrontFullyDrawn;
        }

        else
        {
          v35 = 0;
        }
      }

      else
      {
        v35 = 0;
      }

      array = [MEMORY[0x1E695DF70] array];
      v40 = v9[434];
      if ([*(&self->super.super.super.super.isa + v40) count])
      {
        for (j = 0; j < [*(&self->super.super.super.super.isa + v40) count]; ++j)
        {
          if ((v35 & 1) != 0 || !self->_haveTwoColumns)
          {
            v49 = objc_alloc((p_cache + 233));
            v43 = [*(&self->super.super.super.super.isa + v40) objectAtIndex:j];
            useSmallFonts = self->_useSmallFonts;
            useMarginLayout = self->_useMarginLayout;
            v46 = v49;
            v47 = v43;
            v48 = v35;
          }

          else
          {
            if (j != [*(&self->super.super.super.super.isa + v40) count] - 1)
            {
              v43 = [*(&self->super.super.super.super.isa + v40) objectAtIndex:j];
              v51 = [*(&self->super.super.super.super.isa + v40) objectAtIndex:++j];
              v50 = [[MKPlaceCardActionSectionView alloc] initWithLeftActionItem:v43 rightActionItem:v51 useSmallFonts:self->_useSmallFonts singleItemIsFullWidth:0 useMarginLayout:self->_useMarginLayout];

              p_cache = (&OBJC_METACLASS___MKPhotoBigAttributionView + 16);
              goto LABEL_26;
            }

            v42 = objc_alloc((p_cache + 233));
            v43 = [*(&self->super.super.super.super.isa + v40) objectAtIndex:j];
            useSmallFonts = self->_useSmallFonts;
            useMarginLayout = self->_useMarginLayout;
            v46 = v42;
            v47 = v43;
            v48 = 0;
          }

          v50 = [v46 initWithLeftActionItem:v47 rightActionItem:0 useSmallFonts:useSmallFonts singleItemIsFullWidth:v48 useMarginLayout:useMarginLayout];
LABEL_26:

          [(MKPlaceCardActionSectionView *)v50 setDelegate:self];
          [(MKPlaceCardActionSectionView *)v50 setTopHairlineHidden:!self->_showTopButtonSeparator];
          [(MKViewWithHairline *)v50 setBottomHairlineHidden:1];
          [array addObject:v50];
        }
      }

      showTopSeparator = self->_showTopSeparator;
      firstObject = [array firstObject];
      [firstObject setTopHairlineHidden:!showTopSeparator];

      lastObject = [array lastObject];
      [lastObject setBottomHairlineHidden:1];

      v55 = [array copy];
      viewArray = self->_viewArray;
      self->_viewArray = v55;

      sectionView = [(MKPlaceSectionViewController *)self sectionView];
      [sectionView setRowViews:array];

      view3 = [(MKPlaceCardActionsViewController *)self view];
      [view3 _mapkit_setNeedsLayout];
    }
  }
}

- (id)_makePlaceActionButton
{
  v2 = objc_alloc_init(MEMORY[0x1E69DC738]);
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MKPlaceCardActionsViewController;
  [(MKPlaceCardActionsViewController *)&v4 viewDidAppear:appear];
  if (![(NSArray *)self->_viewArray count])
  {
    [(MKPlaceCardActionsViewController *)self _setUpSectionViews];
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = MKPlaceCardActionsViewController;
  [(MKPlaceCardActionsViewController *)&v7 viewDidLoad];
  sectionView = [(MKPlaceSectionViewController *)self sectionView];
  [sectionView setStackDelegate:self];

  sectionView2 = [(MKPlaceSectionViewController *)self sectionView];
  [sectionView2 setPreservesSuperviewLayoutMargins:1];

  allowRowSelection = self->_allowRowSelection;
  sectionView3 = [(MKPlaceSectionViewController *)self sectionView];
  [sectionView3 setHighlightsTouches:allowRowSelection];
}

- (MKPlaceCardActionsViewController)init
{
  v3.receiver = self;
  v3.super_class = MKPlaceCardActionsViewController;
  result = [(MKPlaceCardActionsViewController *)&v3 init];
  if (result)
  {
    result->_useMarginLayout = 1;
  }

  return result;
}

@end