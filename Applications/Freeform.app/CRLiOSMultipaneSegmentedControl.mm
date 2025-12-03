@interface CRLiOSMultipaneSegmentedControl
- (BOOL)isBackdropHidden;
- (BOOL)isEnabledForSegmentAtIndex:(unint64_t)index;
- (CRLiOSMultipaneSegmentedControl)initWithItems:(id)items;
- (NSDictionary)defaultDisabledTitleAttributes;
- (NSDictionary)defaultNormalTitleAttributes;
- (NSDictionary)defaultSelectedTitleAttributes;
- (UIEdgeInsets)defaultEdgeInsets;
- (UIEdgeInsets)edgeInsetsForSegmentAtIndex:(unint64_t)index;
- (double)p_fontSize;
- (double)widthForSegmentAtIndex:(unint64_t)index;
- (id)accessibilityElementAtIndex:(int64_t)index;
- (id)effectiveTitleAttributesForState:(unint64_t)state;
- (id)imageForSegmentAtIndex:(unint64_t)index;
- (id)p_attributedStringForTitle:(id)title forState:(unint64_t)state;
- (id)p_newButton;
- (id)p_segmentForButton:(id)button;
- (id)p_viewControllerForPresentingAccessibilityHUD;
- (id)titleForSegmentAtIndex:(unint64_t)index;
- (id)titleTextAttributesForState:(unint64_t)state;
- (int64_t)indexOfAccessibilityElement:(id)element;
- (void)dealloc;
- (void)insertSegmentWithImage:(id)image atIndex:(unint64_t)index animated:(BOOL)animated;
- (void)insertSegmentWithTitle:(id)title atIndex:(unint64_t)index animated:(BOOL)animated;
- (void)p_buttonTouchCancel:(id)cancel;
- (void)p_buttonTouchDown:(id)down;
- (void)p_buttonTouchUpInside:(id)inside;
- (void)p_buttonTouchUpOutside:(id)outside;
- (void)p_insertSegment:(id)segment atIndex:(unint64_t)index;
- (void)p_removeAllConstraints;
- (void)p_setSelectedSegmentIndex:(int64_t)index animated:(BOOL)animated notify:(BOOL)notify;
- (void)p_updateAllButtons;
- (void)p_updateBackgroundImagesForAllButtons;
- (void)p_updateBackgroundImagesForButton:(id)button;
- (void)p_updateButtonForSegment:(id)segment;
- (void)p_updateConstraintsHugging;
- (void)p_updateConstraintsNormal;
- (void)removeAllSegments;
- (void)removeSegmentAtIndex:(unint64_t)index animated:(BOOL)animated;
- (void)setAllEdgeInsets:(UIEdgeInsets)insets;
- (void)setBackdropHidden:(BOOL)hidden;
- (void)setButtonHighlightedColorPreset:(int64_t)preset;
- (void)setButtonSelectedColorPreset:(int64_t)preset;
- (void)setEdgeInsets:(UIEdgeInsets)insets forSegmentAtIndex:(unint64_t)index;
- (void)setEnabled:(BOOL)enabled forSegmentAtIndex:(unint64_t)index;
- (void)setImage:(id)image forSegmentAtIndex:(unint64_t)index;
- (void)setSegmentHuggingEnabled:(BOOL)enabled;
- (void)setTitle:(id)title forSegmentAtIndex:(unint64_t)index;
- (void)setTitleTextAttributes:(id)attributes forState:(unint64_t)state;
- (void)setWidth:(double)width forSegmentAtIndex:(unint64_t)index;
- (void)tintColorDidChange;
- (void)updateConstraints;
@end

@implementation CRLiOSMultipaneSegmentedControl

- (CRLiOSMultipaneSegmentedControl)initWithItems:(id)items
{
  itemsCopy = items;
  v37.receiver = self;
  v37.super_class = CRLiOSMultipaneSegmentedControl;
  v5 = [(CRLiOSMultipaneSegmentedControl *)&v37 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = *(v5 + 5);
    *(v5 + 5) = v6;

    *(v5 + 3) = 14;
    *(v5 + 4) = 12;
    v8 = [[CRLiOSVibrantBackdropView alloc] initWithCorners:5 radius:0 style:7.5];
    v9 = *(v5 + 14);
    *(v5 + 14) = v8;

    [*(v5 + 14) setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addSubview:*(v5 + 14)];
    leadingAnchor = [*(v5 + 14) leadingAnchor];
    leadingAnchor2 = [v5 leadingAnchor];
    v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v12 setActive:1];

    trailingAnchor = [*(v5 + 14) trailingAnchor];
    trailingAnchor2 = [v5 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v15 setActive:1];

    topAnchor = [*(v5 + 14) topAnchor];
    topAnchor2 = [v5 topAnchor];
    v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v18 setActive:1];

    bottomAnchor = [*(v5 + 14) bottomAnchor];
    bottomAnchor2 = [v5 bottomAnchor];
    v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v21 setActive:1];

    v5[9] = 1;
    *(v5 + 2) = -1;
    *(v5 + 120) = xmmword_1014626B0;
    *(v5 + 136) = xmmword_1014626B0;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v32 = itemsCopy;
    v22 = itemsCopy;
    v23 = [v22 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v34;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v34 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v33 + 1) + 8 * i);
          *(v5 + 2) = 0;
          v28 = [CRLiOSMultipaneSegmentedControlSegment segmentWithObject:v27 edgeInsets:*(v5 + 15), *(v5 + 16), *(v5 + 17), *(v5 + 18)];
          if (v28)
          {
            [v5 p_insertSegment:v28 atIndex:-1];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v24);
    }

    v29 = objc_alloc_init(UILargeContentViewerInteraction);
    [v5 addInteraction:v29];

    v5[9] = 0;
    v30 = +[NSNotificationCenter defaultCenter];
    [v30 addObserver:v5 selector:"p_updateBackgroundImagesForAllButtons" name:UIAccessibilityDarkerSystemColorsStatusDidChangeNotification object:0];

    itemsCopy = v32;
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CRLiOSMultipaneSegmentedControl;
  [(CRLiOSMultipaneSegmentedControl *)&v4 dealloc];
}

- (BOOL)isBackdropHidden
{
  backdropView = [(CRLiOSMultipaneSegmentedControl *)self backdropView];
  isHidden = [backdropView isHidden];

  return isHidden;
}

- (void)setBackdropHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  backdropView = [(CRLiOSMultipaneSegmentedControl *)self backdropView];
  [backdropView setHidden:hiddenCopy];
}

- (void)setSegmentHuggingEnabled:(BOOL)enabled
{
  if (self->_segmentHuggingEnabled != enabled)
  {
    self->_segmentHuggingEnabled = enabled;
    self->_needsRemoveAllConstraints = 1;
    [(CRLiOSMultipaneSegmentedControl *)self setNeedsUpdateConstraints];
  }
}

- (void)insertSegmentWithTitle:(id)title atIndex:(unint64_t)index animated:(BOOL)animated
{
  v7 = [CRLiOSMultipaneSegmentedControlSegment segmentWithString:title edgeInsets:index, animated, self->_defaultEdgeInsets.top, self->_defaultEdgeInsets.left, self->_defaultEdgeInsets.bottom, self->_defaultEdgeInsets.right];
  [(CRLiOSMultipaneSegmentedControl *)self p_insertSegment:v7 atIndex:index];
}

- (void)insertSegmentWithImage:(id)image atIndex:(unint64_t)index animated:(BOOL)animated
{
  v7 = [CRLiOSMultipaneSegmentedControlSegment segmentWithImage:image edgeInsets:index, animated, self->_defaultEdgeInsets.top, self->_defaultEdgeInsets.left, self->_defaultEdgeInsets.bottom, self->_defaultEdgeInsets.right];
  [(CRLiOSMultipaneSegmentedControl *)self p_insertSegment:v7 atIndex:index];
}

- (void)removeSegmentAtIndex:(unint64_t)index animated:(BOOL)animated
{
  if ([(NSMutableArray *)self->_segments count:index]<= index)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10130FB40();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130FB54();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10130FBDC();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLiOSMultipaneSegmentedControl removeSegmentAtIndex:animated:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLiOSMultipaneSegmentedControl.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:259 isFatal:0 description:"Tried to remove out of bounds segment index: %lu", index];
  }

  else
  {
    v13 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:index];
    button = [v13 button];
    [button removeFromSuperview];

    [(NSMutableArray *)self->_segments removeObjectAtIndex:index];
    if ([(NSMutableArray *)self->_segments count])
    {
      selectedSegmentIndex = self->_selectedSegmentIndex;
      v8 = [(NSMutableArray *)self->_segments count];
      if (selectedSegmentIndex >= v8 - 1)
      {
        v9 = v8 - 1;
      }

      else
      {
        v9 = selectedSegmentIndex;
      }
    }

    else
    {
      v9 = -1;
    }

    [(CRLiOSMultipaneSegmentedControl *)self setSelectedSegmentIndex:v9];
    self->_needsRemoveAllConstraints = 1;
    [(CRLiOSMultipaneSegmentedControl *)self setNeedsUpdateConstraints];
  }
}

- (void)removeAllSegments
{
  v3 = [(NSMutableArray *)self->_segments count];
  if (v3)
  {
    v4 = v3;
    do
    {
      [(CRLiOSMultipaneSegmentedControl *)self removeSegmentAtIndex:0 animated:0];
      --v4;
    }

    while (v4);
  }
}

- (void)setTitle:(id)title forSegmentAtIndex:(unint64_t)index
{
  titleCopy = title;
  if ([(NSMutableArray *)self->_segments count]<= index)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10130FC04();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130FC18();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10130FCA0();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSMultipaneSegmentedControl setTitle:forSegmentAtIndex:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLiOSMultipaneSegmentedControl.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:287 isFatal:0 description:"Tried to set title for out of bounds segment index: %lu", index];
  }

  else
  {
    v7 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:index];
    [v7 setTitle:titleCopy];
    [v7 setAccessibilityLabel:titleCopy];
    self->_needsUpdateTitles = 1;
    [(CRLiOSMultipaneSegmentedControl *)self p_updateButtonForSegment:v7];
    self->_needsUpdateTitles = 0;
  }
}

- (id)titleForSegmentAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_segments count]<= index)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10130FCC8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130FCDC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10130FD64();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLiOSMultipaneSegmentedControl titleForSegmentAtIndex:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLiOSMultipaneSegmentedControl.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:302 isFatal:0 description:"Tried to get title for out of bounds segment index: %lu", index];

    title = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:index];
    title = [v5 title];
  }

  return title;
}

- (void)setImage:(id)image forSegmentAtIndex:(unint64_t)index
{
  imageCopy = image;
  if ([(NSMutableArray *)self->_segments count]<= index)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10130FD8C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130FDA0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10130FE28();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSMultipaneSegmentedControl setImage:forSegmentAtIndex:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLiOSMultipaneSegmentedControl.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:311 isFatal:0 description:"Tried to set image for out of bounds segment index: %lu", index];
  }

  else
  {
    v7 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:index];
    [v7 setImage:imageCopy];
    [(CRLiOSMultipaneSegmentedControl *)self p_updateButtonForSegment:v7];
  }
}

- (id)imageForSegmentAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_segments count]<= index)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10130FE50();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130FE64();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10130FEEC();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLiOSMultipaneSegmentedControl imageForSegmentAtIndex:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLiOSMultipaneSegmentedControl.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:323 isFatal:0 description:"Tried to get image for out of bounds segment index: %lu", index];

    image = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:index];
    image = [v5 image];
  }

  return image;
}

- (void)setWidth:(double)width forSegmentAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_segments count]<= index)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10130FF14();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130FF28();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10130FFB0();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSMultipaneSegmentedControl setWidth:forSegmentAtIndex:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLiOSMultipaneSegmentedControl.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:332 isFatal:0 description:"Tried to set width of bounds segment index: %lu", index];
  }

  else
  {
    v7 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:index];
    [v7 setWidth:width];

    [(CRLiOSMultipaneSegmentedControl *)self setNeedsUpdateConstraints];
  }
}

- (double)widthForSegmentAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_segments count]<= index)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10130FFD8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130FFEC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101310074();
    }

    v9 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v9);
    }

    v10 = [NSString stringWithUTF8String:"[CRLiOSMultipaneSegmentedControl widthForSegmentAtIndex:]"];
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLiOSMultipaneSegmentedControl.m"];
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:343 isFatal:0 description:"Tried to get width for out of bounds segment index: %lu", index];

    return 0.0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:index];
    [v5 width];
    v7 = v6;

    return v7;
  }
}

- (void)setEdgeInsets:(UIEdgeInsets)insets forSegmentAtIndex:(unint64_t)index
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  if ([(NSMutableArray *)self->_segments count]<= index)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10131009C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013100B0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101310138();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLiOSMultipaneSegmentedControl setEdgeInsets:forSegmentAtIndex:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLiOSMultipaneSegmentedControl.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:352 isFatal:0 description:"Tried to set edge insets for out of bounds segment index: %lu", index];
  }

  else
  {
    v13 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:index];
    [v13 setEdgeInsets:{top, left, bottom, right}];
    [(CRLiOSMultipaneSegmentedControl *)self p_updateButtonForSegment:v13];
  }
}

- (UIEdgeInsets)edgeInsetsForSegmentAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_segments count]<= index)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101310160();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101310174();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013101FC();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v14);
    }

    v15 = [NSString stringWithUTF8String:"[CRLiOSMultipaneSegmentedControl edgeInsetsForSegmentAtIndex:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLiOSMultipaneSegmentedControl.m"];
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:364 isFatal:0 description:"Tried to get edge insets for out of bounds segment index: %lu", index];

    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:index];
    [v5 edgeInsets];
    top = v6;
    left = v8;
    bottom = v10;
    right = v12;
  }

  v17 = top;
  v18 = left;
  v19 = bottom;
  v20 = right;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (void)setAllEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  if ([(NSMutableArray *)self->_segments count])
  {
    v8 = 0;
    do
    {
      v9 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:v8];
      [v9 setEdgeInsets:{top, left, bottom, right}];
      [(CRLiOSMultipaneSegmentedControl *)self p_updateButtonForSegment:v9];

      ++v8;
    }

    while (v8 < [(NSMutableArray *)self->_segments count]);
  }

  self->_defaultEdgeInsets.top = top;
  self->_defaultEdgeInsets.left = left;
  self->_defaultEdgeInsets.bottom = bottom;
  self->_defaultEdgeInsets.right = right;
}

- (void)setEnabled:(BOOL)enabled forSegmentAtIndex:(unint64_t)index
{
  enabledCopy = enabled;
  if ([(NSMutableArray *)self->_segments count]<= index)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101310224();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101310238();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013102C0();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v7);
    }

    v8 = [NSString stringWithUTF8String:"[CRLiOSMultipaneSegmentedControl setEnabled:forSegmentAtIndex:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLiOSMultipaneSegmentedControl.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:384 isFatal:0 description:"Tried to set enabled state for out of bounds segment index: %lu", index];
  }

  else
  {
    v10 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:index];
    [v10 setEnabled:enabledCopy];
    [(CRLiOSMultipaneSegmentedControl *)self p_updateButtonForSegment:v10];
  }
}

- (BOOL)isEnabledForSegmentAtIndex:(unint64_t)index
{
  if ([(NSMutableArray *)self->_segments count]<= index)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013102E8();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013102FC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101310384();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLiOSMultipaneSegmentedControl isEnabledForSegmentAtIndex:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLiOSMultipaneSegmentedControl.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:396 isFatal:0 description:"Tried to get enabled state for out of bounds segment index: %lu", index];

    return 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:index];
    isEnabled = [v5 isEnabled];

    return isEnabled;
  }
}

- (void)setTitleTextAttributes:(id)attributes forState:(unint64_t)state
{
  attributesCopy = attributes;
  v7 = attributesCopy;
  if (state > 1)
  {
    if (state == 2)
    {
      [(CRLiOSMultipaneSegmentedControl *)self setOverrideDisabledTitleAttributes:attributesCopy];
    }

    else if (state == 4)
    {
      [(CRLiOSMultipaneSegmentedControl *)self setOverrideSelectedTitleAttributes:attributesCopy];
    }
  }

  else if (state)
  {
    if (state == 1)
    {
      [(CRLiOSMultipaneSegmentedControl *)self setOverrideHighlightedTitleAttributes:attributesCopy];
    }
  }

  else
  {
    [(CRLiOSMultipaneSegmentedControl *)self setOverrideNormalTitleAttributes:attributesCopy];
  }

  self->_needsUpdateTitles = 1;
  [(CRLiOSMultipaneSegmentedControl *)self p_updateAllButtons];
}

- (id)titleTextAttributesForState:(unint64_t)state
{
  overrideDisabledTitleAttributes = 0;
  if (state > 1)
  {
    if (state == 2)
    {
      overrideDisabledTitleAttributes = [(CRLiOSMultipaneSegmentedControl *)self overrideDisabledTitleAttributes];
    }

    else if (state == 4)
    {
      overrideDisabledTitleAttributes = [(CRLiOSMultipaneSegmentedControl *)self overrideSelectedTitleAttributes];
    }
  }

  else if (state)
  {
    if (state == 1)
    {
      overrideDisabledTitleAttributes = [(CRLiOSMultipaneSegmentedControl *)self overrideHighlightedTitleAttributes];
    }
  }

  else
  {
    overrideDisabledTitleAttributes = [(CRLiOSMultipaneSegmentedControl *)self overrideNormalTitleAttributes];
  }

  return overrideDisabledTitleAttributes;
}

- (void)setButtonHighlightedColorPreset:(int64_t)preset
{
  if (self->_buttonHighlightedColorPreset != preset)
  {
    self->_buttonHighlightedColorPreset = preset;
    [(CRLiOSMultipaneSegmentedControl *)self p_updateBackgroundImagesForAllButtons];
  }
}

- (void)setButtonSelectedColorPreset:(int64_t)preset
{
  if (self->_buttonSelectedColorPreset != preset)
  {
    self->_buttonSelectedColorPreset = preset;
    [(CRLiOSMultipaneSegmentedControl *)self p_updateBackgroundImagesForAllButtons];
  }
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = CRLiOSMultipaneSegmentedControl;
  [(CRLiOSMultipaneSegmentedControl *)&v3 updateConstraints];
  if (self->_needsRemoveAllConstraints)
  {
    [(CRLiOSMultipaneSegmentedControl *)self p_removeAllConstraints];
    self->_needsRemoveAllConstraints = 0;
  }

  if (self->_segmentHuggingEnabled)
  {
    [(CRLiOSMultipaneSegmentedControl *)self p_updateConstraintsHugging];
  }

  else
  {
    [(CRLiOSMultipaneSegmentedControl *)self p_updateConstraintsNormal];
  }
}

- (void)p_removeAllConstraints
{
  v3 = [(NSMutableArray *)self->_segments count];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v6;
      v15 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:v5];

      button = [v15 button];
      LODWORD(v9) = 1132068864;
      [button setContentHuggingPriority:0 forAxis:v9];

      leadingConstraint = [v15 leadingConstraint];
      [leadingConstraint setActive:0];

      [v15 setLeadingConstraint:0];
      trailingConstraint = [v15 trailingConstraint];
      [trailingConstraint setActive:0];

      [v15 setTrailingConstraint:0];
      widthConstraint = [v15 widthConstraint];
      [widthConstraint setActive:0];

      [v15 setWidthConstraint:0];
      equalWidthConstraint = [v15 equalWidthConstraint];
      [equalWidthConstraint setActive:0];

      [v15 setEqualWidthConstraint:0];
      [v15 setPreviousTrailingAnchor:0];
      [v15 setDistanceToPreviousTrailingAnchor:0];
      distanceBetweenPreviousAndNextSegmentConstraint = [v15 distanceBetweenPreviousAndNextSegmentConstraint];
      [distanceBetweenPreviousAndNextSegmentConstraint setActive:0];

      [v15 setDistanceBetweenPreviousAndNextSegmentConstraint:0];
      v6 = v15;
      ++v5;
    }

    while (v4 != v5);
  }
}

- (void)p_updateConstraintsNormal
{
  v2 = [(NSMutableArray *)self->_segments count];
  if (v2)
  {
    v3 = v2;
    v66 = 0;
    v4 = 0;
    for (i = 0; ; ++i)
    {
      v6 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:i];

      button = [v6 button];
      [v6 width];
      v9 = v8;
      leadingConstraint = [v6 leadingConstraint];
      v11 = leadingConstraint;
      if (i)
      {
        if (leadingConstraint)
        {
          leadingConstraint2 = [v6 leadingConstraint];
          secondItem = [leadingConstraint2 secondItem];
          button2 = [v66 button];
          trailingAnchor = [button2 trailingAnchor];

          if (secondItem != trailingAnchor)
          {
            leadingConstraint3 = [v6 leadingConstraint];
            [leadingConstraint3 setActive:0];

            [v6 setLeadingConstraint:0];
          }
        }

        leadingConstraint4 = [v6 leadingConstraint];

        if (!leadingConstraint4)
        {
          leadingAnchor = [button leadingAnchor];
          button3 = [v66 button];
          trailingAnchor2 = [button3 trailingAnchor];
          v21 = [leadingAnchor constraintEqualToAnchor:trailingAnchor2];
          [v6 setLeadingConstraint:v21];

LABEL_14:
          leadingConstraint5 = [v6 leadingConstraint];
          LODWORD(v28) = 1148846080;
          [leadingConstraint5 setPriority:v28];

          leadingConstraint6 = [v6 leadingConstraint];
          [leadingConstraint6 setActive:1];
        }
      }

      else
      {
        if (leadingConstraint)
        {
          leadingConstraint7 = [v6 leadingConstraint];
          secondItem2 = [leadingConstraint7 secondItem];
          leadingAnchor2 = [(CRLiOSMultipaneSegmentedControl *)self leadingAnchor];

          if (secondItem2 != leadingAnchor2)
          {
            leadingConstraint8 = [v6 leadingConstraint];
            [leadingConstraint8 setActive:0];

            [v6 setLeadingConstraint:0];
          }
        }

        leadingConstraint9 = [v6 leadingConstraint];

        if (!leadingConstraint9)
        {
          leadingAnchor = [button leadingAnchor];
          button3 = [(CRLiOSMultipaneSegmentedControl *)self leadingAnchor];
          trailingAnchor2 = [leadingAnchor constraintEqualToAnchor:button3];
          [v6 setLeadingConstraint:trailingAnchor2];
          goto LABEL_14;
        }
      }

      trailingConstraint = [v6 trailingConstraint];

      if (v3 == 1)
      {
        if (!trailingConstraint)
        {
          trailingAnchor3 = [button trailingAnchor];
          trailingAnchor4 = [(CRLiOSMultipaneSegmentedControl *)self trailingAnchor];
          v33 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
          [v6 setTrailingConstraint:v33];

          trailingConstraint2 = [v6 trailingConstraint];
          LODWORD(v35) = 1148846080;
          [trailingConstraint2 setPriority:v35];

          trailingConstraint3 = [v6 trailingConstraint];
          [trailingConstraint3 setActive:1];
        }
      }

      else if (trailingConstraint)
      {
        trailingConstraint4 = [v6 trailingConstraint];
        [trailingConstraint4 setActive:0];

        [v6 setTrailingConstraint:0];
      }

      equalWidthConstraint = [v6 equalWidthConstraint];

      widthConstraint = [v6 widthConstraint];

      if (v9 == 0.0)
      {
        if (widthConstraint)
        {
          widthConstraint2 = [v6 widthConstraint];
          [widthConstraint2 setActive:0];

          [v6 setWidthConstraint:0];
        }

        if (equalWidthConstraint)
        {
          equalWidthConstraint2 = [v6 equalWidthConstraint];
          firstItem = [equalWidthConstraint2 firstItem];
          button4 = [v4 button];
          widthAnchor = [button4 widthAnchor];
          v45 = firstItem == widthAnchor;

          if (v4 && firstItem == widthAnchor || ([v6 equalWidthConstraint], v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "setActive:", 0), v46, objc_msgSend(v6, "setEqualWidthConstraint:", 0), !v4))
          {
LABEL_36:
            widthConstraint4 = v66;
            v66 = v4;
            v4 = v6;
            goto LABEL_37;
          }
        }

        else
        {
          v45 = 0;
          if (!v4)
          {
            goto LABEL_36;
          }
        }

        if (!v45)
        {
          button5 = [v4 button];
          widthAnchor2 = [button5 widthAnchor];
          widthAnchor3 = [button widthAnchor];
          v56 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
          [v6 setEqualWidthConstraint:v56];

          equalWidthConstraint3 = [v6 equalWidthConstraint];
          LODWORD(v58) = 1148846080;
          [equalWidthConstraint3 setPriority:v58];

          equalWidthConstraint4 = [v6 equalWidthConstraint];
          [equalWidthConstraint4 setActive:1];
        }

        goto LABEL_36;
      }

      if (equalWidthConstraint)
      {
        equalWidthConstraint5 = [v6 equalWidthConstraint];
        [equalWidthConstraint5 setActive:0];

        [v6 setEqualWidthConstraint:0];
      }

      v48 = fabs(v9);
      if (!widthConstraint)
      {
        widthAnchor4 = [button widthAnchor];
        v62 = [widthAnchor4 constraintEqualToConstant:v48];
        [v6 setWidthConstraint:v62];

        widthConstraint3 = [v6 widthConstraint];
        LODWORD(v64) = 1148829696;
        [widthConstraint3 setPriority:v64];

        widthConstraint4 = [v6 widthConstraint];
        [widthConstraint4 setActive:1];
        goto LABEL_37;
      }

      widthConstraint5 = [v6 widthConstraint];
      [widthConstraint5 constant];
      v51 = v50;

      if (v51 != v48)
      {
        widthConstraint4 = [v6 widthConstraint];
        [widthConstraint4 setConstant:v48];
LABEL_37:
      }

      v60 = v66;
      v66 = v6;

      if (!--v3)
      {

        return;
      }
    }
  }
}

- (void)p_updateConstraintsHugging
{
  selfCopy = self;
  v3 = [(NSMutableArray *)self->_segments count];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v69 = selfCopy;
    while (1)
    {
      v8 = [(NSMutableArray *)selfCopy->_segments objectAtIndexedSubscript:v7];

      button = [v8 button];
      if (v4 == 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = [(NSMutableArray *)selfCopy->_segments objectAtIndexedSubscript:v7 + 1];
      }

      LODWORD(v11) = 1148846080;
      [button setContentHuggingPriority:0 forAxis:v11];
      LODWORD(v12) = 1148829696;
      [button setContentCompressionResistancePriority:0 forAxis:v12];
      titleLabel = [button titleLabel];
      [titleLabel setAdjustsFontSizeToFitWidth:1];

      leadingConstraint = [v8 leadingConstraint];
      v15 = leadingConstraint;
      v70 = v10;
      if (v7)
      {
        if (leadingConstraint)
        {
          leadingConstraint2 = [v8 leadingConstraint];
          secondItem = [leadingConstraint2 secondItem];
          button2 = [v5 button];
          trailingAnchor = [button2 trailingAnchor];

          selfCopy = v69;
          v20 = secondItem == trailingAnchor;
          v10 = v70;
          if (!v20)
          {
            leadingConstraint3 = [v8 leadingConstraint];
            [leadingConstraint3 setActive:0];

            [v8 setLeadingConstraint:0];
          }
        }

        leadingConstraint4 = [v8 leadingConstraint];

        if (!leadingConstraint4)
        {
          leadingAnchor = [button leadingAnchor];
          button3 = [v5 button];
          trailingAnchor2 = [button3 trailingAnchor];
          v26 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
          [v8 setLeadingConstraint:v26];

LABEL_17:
          leadingConstraint5 = [v8 leadingConstraint];
          LODWORD(v33) = 1148846080;
          [leadingConstraint5 setPriority:v33];

          leadingConstraint6 = [v8 leadingConstraint];
          [leadingConstraint6 setActive:1];

          selfCopy = v69;
          v10 = v70;
        }
      }

      else
      {
        if (leadingConstraint)
        {
          leadingConstraint7 = [v8 leadingConstraint];
          secondItem2 = [leadingConstraint7 secondItem];
          leadingAnchor2 = [(CRLiOSMultipaneSegmentedControl *)v69 leadingAnchor];

          v10 = v70;
          v20 = secondItem2 == leadingAnchor2;
          selfCopy = v69;
          if (!v20)
          {
            leadingConstraint8 = [v8 leadingConstraint];
            [leadingConstraint8 setActive:0];

            [v8 setLeadingConstraint:0];
          }
        }

        leadingConstraint9 = [v8 leadingConstraint];

        if (!leadingConstraint9)
        {
          leadingAnchor = [button leadingAnchor];
          button3 = [(CRLiOSMultipaneSegmentedControl *)selfCopy leadingAnchor];
          trailingAnchor2 = [leadingAnchor constraintEqualToAnchor:button3];
          [v8 setLeadingConstraint:trailingAnchor2];
          goto LABEL_17;
        }
      }

      trailingConstraint = [v8 trailingConstraint];

      if (v4 == 1)
      {
        if (!trailingConstraint)
        {
          trailingAnchor3 = [button trailingAnchor];
          trailingAnchor4 = [(CRLiOSMultipaneSegmentedControl *)selfCopy trailingAnchor];
          v38 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
          [v8 setTrailingConstraint:v38];

          trailingConstraint2 = [v8 trailingConstraint];
          LODWORD(v40) = 1148846080;
          [trailingConstraint2 setPriority:v40];

          trailingConstraint3 = [v8 trailingConstraint];
          [trailingConstraint3 setActive:1];
        }
      }

      else if (trailingConstraint)
      {
        trailingConstraint4 = [v8 trailingConstraint];
        [trailingConstraint4 setActive:0];

        [v8 setTrailingConstraint:0];
      }

      if (v5)
      {
        previousTrailingAnchor = [v8 previousTrailingAnchor];
        if (!previousTrailingAnchor)
        {
          goto LABEL_27;
        }

        trailingAnchor6 = previousTrailingAnchor;
        button4 = [v5 button];
        trailingAnchor5 = [button4 trailingAnchor];

        if (trailingAnchor6 != trailingAnchor5)
        {
          [v8 setPreviousTrailingAnchor:0];
          [v8 setDistanceToPreviousTrailingAnchor:0];

LABEL_27:
          button5 = [v5 button];
          trailingAnchor6 = [button5 trailingAnchor];

          [v8 setPreviousTrailingAnchor:trailingAnchor6];
          leadingAnchor3 = [button leadingAnchor];
          v49 = [trailingAnchor6 anchorWithOffsetToAnchor:leadingAnchor3];
          [v8 setDistanceToPreviousTrailingAnchor:v49];
        }

        if (!v10)
        {
          goto LABEL_40;
        }

        goto LABEL_29;
      }

      [v8 setPreviousTrailingAnchor:0];
      [v8 setDistanceToPreviousTrailingAnchor:0];
      distanceBetweenPreviousAndNextSegmentConstraint = [v8 distanceBetweenPreviousAndNextSegmentConstraint];
      [distanceBetweenPreviousAndNextSegmentConstraint setActive:0];

      [v8 setDistanceBetweenPreviousAndNextSegmentConstraint:0];
      if (!v10)
      {
LABEL_40:
        [v8 setPreviousTrailingAnchor:0];
        [v8 setDistanceToPreviousTrailingAnchor:0];
        distanceBetweenPreviousAndNextSegmentConstraint2 = [v8 distanceBetweenPreviousAndNextSegmentConstraint];
        [distanceBetweenPreviousAndNextSegmentConstraint2 setActive:0];

        [v8 setDistanceBetweenPreviousAndNextSegmentConstraint:0];
        goto LABEL_41;
      }

LABEL_29:
      previousTrailingAnchor2 = [v10 previousTrailingAnchor];
      if (previousTrailingAnchor2)
      {
        trailingAnchor8 = previousTrailingAnchor2;
        trailingAnchor7 = [button trailingAnchor];

        if (trailingAnchor8 == trailingAnchor7)
        {
          goto LABEL_33;
        }

        [v10 setPreviousTrailingAnchor:0];
        [v10 setDistanceToPreviousTrailingAnchor:0];
      }

      trailingAnchor8 = [button trailingAnchor];
      [v10 setPreviousTrailingAnchor:trailingAnchor8];
      button6 = [v10 button];
      leadingAnchor4 = [button6 leadingAnchor];
      v55 = [trailingAnchor8 anchorWithOffsetToAnchor:leadingAnchor4];
      [v70 setDistanceToPreviousTrailingAnchor:v55];

      v10 = v70;
LABEL_33:

      if (v5)
      {
        distanceBetweenPreviousAndNextSegmentConstraint3 = [v8 distanceBetweenPreviousAndNextSegmentConstraint];
        if (!distanceBetweenPreviousAndNextSegmentConstraint3)
        {
          goto LABEL_38;
        }

        v57 = distanceBetweenPreviousAndNextSegmentConstraint3;
        firstItem = [distanceBetweenPreviousAndNextSegmentConstraint3 firstItem];
        distanceToPreviousTrailingAnchor = [v8 distanceToPreviousTrailingAnchor];
        v60 = distanceToPreviousTrailingAnchor;
        if (firstItem != distanceToPreviousTrailingAnchor)
        {
          secondItem3 = [v57 secondItem];
          distanceToPreviousTrailingAnchor2 = [v70 distanceToPreviousTrailingAnchor];

          if (secondItem3 == distanceToPreviousTrailingAnchor2)
          {
            selfCopy = v69;
          }

          else
          {
            [v57 setActive:0];

            selfCopy = v69;
            v10 = v70;
LABEL_38:
            distanceToPreviousTrailingAnchor3 = [v8 distanceToPreviousTrailingAnchor];
            distanceToPreviousTrailingAnchor4 = [v10 distanceToPreviousTrailingAnchor];
            v65 = [distanceToPreviousTrailingAnchor3 constraintEqualToAnchor:distanceToPreviousTrailingAnchor4];
            [v8 setDistanceBetweenPreviousAndNextSegmentConstraint:v65];

            firstItem = [v8 distanceBetweenPreviousAndNextSegmentConstraint];
            [firstItem setActive:1];
            v57 = 0;
LABEL_43:
          }

          v10 = v70;
          goto LABEL_45;
        }

        selfCopy = v69;
        goto LABEL_43;
      }

LABEL_41:
      distanceBetweenPreviousAndNextSegmentConstraint4 = [v8 distanceBetweenPreviousAndNextSegmentConstraint];
      [distanceBetweenPreviousAndNextSegmentConstraint4 setActive:0];

      [v8 setDistanceBetweenPreviousAndNextSegmentConstraint:0];
LABEL_45:
      v71 = v8;

      ++v7;
      v5 = v71;
      v6 = v10;
      if (!--v4)
      {

        return;
      }
    }
  }
}

- (void)tintColorDidChange
{
  v7.receiver = self;
  v7.super_class = CRLiOSMultipaneSegmentedControl;
  [(CRLiOSMultipaneSegmentedControl *)&v7 tintColorDidChange];
  defaultNormalTitleAttributes = self->_defaultNormalTitleAttributes;
  self->_defaultNormalTitleAttributes = 0;

  defaultHighlightedTitleAttributes = self->_defaultHighlightedTitleAttributes;
  self->_defaultHighlightedTitleAttributes = 0;

  defaultSelectedTitleAttributes = self->_defaultSelectedTitleAttributes;
  self->_defaultSelectedTitleAttributes = 0;

  defaultDisabledTitleAttributes = self->_defaultDisabledTitleAttributes;
  self->_defaultDisabledTitleAttributes = 0;

  self->_needsUpdateTitles = 1;
  [(CRLiOSMultipaneSegmentedControl *)self p_updateAllButtons];
}

- (double)p_fontSize
{
  v2 = +[CRLLocale currentLocale];
  locale = [v2 locale];
  languageCode = [locale languageCode];

  if ([languageCode isEqualToString:@"en"])
  {
    v5 = 14.0;
  }

  else
  {
    v5 = 13.0;
  }

  return v5;
}

- (NSDictionary)defaultNormalTitleAttributes
{
  defaultNormalTitleAttributes = self->_defaultNormalTitleAttributes;
  if (!defaultNormalTitleAttributes)
  {
    v9[0] = NSForegroundColorAttributeName;
    tintColor = [(CRLiOSMultipaneSegmentedControl *)self tintColor];
    v10[0] = tintColor;
    v9[1] = NSFontAttributeName;
    [(CRLiOSMultipaneSegmentedControl *)self p_fontSize];
    v5 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
    v10[1] = v5;
    v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
    v7 = self->_defaultNormalTitleAttributes;
    self->_defaultNormalTitleAttributes = v6;

    defaultNormalTitleAttributes = self->_defaultNormalTitleAttributes;
  }

  return defaultNormalTitleAttributes;
}

- (NSDictionary)defaultSelectedTitleAttributes
{
  defaultSelectedTitleAttributes = self->_defaultSelectedTitleAttributes;
  if (!defaultSelectedTitleAttributes)
  {
    v9[0] = NSForegroundColorAttributeName;
    v4 = +[UIColor whiteColor];
    v10[0] = v4;
    v9[1] = NSFontAttributeName;
    [(CRLiOSMultipaneSegmentedControl *)self p_fontSize];
    v5 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
    v10[1] = v5;
    v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
    v7 = self->_defaultSelectedTitleAttributes;
    self->_defaultSelectedTitleAttributes = v6;

    defaultSelectedTitleAttributes = self->_defaultSelectedTitleAttributes;
  }

  return defaultSelectedTitleAttributes;
}

- (NSDictionary)defaultDisabledTitleAttributes
{
  defaultDisabledTitleAttributes = self->_defaultDisabledTitleAttributes;
  if (!defaultDisabledTitleAttributes)
  {
    tintColor = [(CRLiOSMultipaneSegmentedControl *)self tintColor];
    v10 = 0.0;
    v11 = 0.0;
    [tintColor getWhite:&v11 alpha:&v10];
    v5 = [UIColor colorWithWhite:v11 alpha:v10 * 0.35];

    v13[0] = v5;
    v12[0] = NSForegroundColorAttributeName;
    v12[1] = NSFontAttributeName;
    v6 = [UIFont systemFontOfSize:14.0 weight:UIFontWeightMedium];
    v13[1] = v6;
    v7 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
    v8 = self->_defaultDisabledTitleAttributes;
    self->_defaultDisabledTitleAttributes = v7;

    defaultDisabledTitleAttributes = self->_defaultDisabledTitleAttributes;
  }

  return defaultDisabledTitleAttributes;
}

- (id)effectiveTitleAttributesForState:(unint64_t)state
{
  defaultDisabledTitleAttributes = [(CRLiOSMultipaneSegmentedControl *)self titleTextAttributesForState:?];
  if (!defaultDisabledTitleAttributes)
  {
    if (state > 1)
    {
      if (state == 2)
      {
        defaultDisabledTitleAttributes = [(CRLiOSMultipaneSegmentedControl *)self defaultDisabledTitleAttributes];
      }

      else if (state == 4)
      {
        defaultDisabledTitleAttributes = [(CRLiOSMultipaneSegmentedControl *)self defaultSelectedTitleAttributes];
      }
    }

    else if (state)
    {
      if (state == 1)
      {
        defaultDisabledTitleAttributes = [(CRLiOSMultipaneSegmentedControl *)self defaultHighlightedTitleAttributes];
      }
    }

    else
    {
      defaultDisabledTitleAttributes = [(CRLiOSMultipaneSegmentedControl *)self defaultNormalTitleAttributes];
    }
  }

  return defaultDisabledTitleAttributes;
}

- (id)p_segmentForButton:(id)button
{
  buttonCopy = button;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  segments = [(CRLiOSMultipaneSegmentedControl *)self segments];
  v6 = [segments countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(segments);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      button = [v10 button];

      if (button == buttonCopy)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [segments countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v10;

    if (v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_9:
  }

  +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    sub_1013103AC();
  }

  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_1013103D4();
  }

  if (qword_101AD5A10 != -1)
  {
    sub_101310480();
  }

  v13 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    sub_10130DA10(v13);
  }

  v14 = [NSString stringWithUTF8String:"[CRLiOSMultipaneSegmentedControl p_segmentForButton:]"];
  v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLiOSMultipaneSegmentedControl.m"];
  [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:876 isFatal:0 description:"invalid nil value for '%{public}s'", "segment"];

  v12 = 0;
LABEL_20:

  return v12;
}

- (void)p_insertSegment:(id)segment atIndex:(unint64_t)index
{
  segments = self->_segments;
  segmentCopy = segment;
  v8 = [(NSMutableArray *)segments count];
  if (v8 >= index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = v8;
  }

  [(NSMutableArray *)self->_segments insertObject:segmentCopy atIndex:indexCopy];
  self->_needsUpdateTitles = 1;
  [(CRLiOSMultipaneSegmentedControl *)self p_updateButtonForSegment:segmentCopy];

  self->_needsUpdateTitles = 0;
  self->_needsRemoveAllConstraints = 1;

  [(CRLiOSMultipaneSegmentedControl *)self setNeedsUpdateConstraints];
}

- (void)p_setSelectedSegmentIndex:(int64_t)index animated:(BOOL)animated notify:(BOOL)notify
{
  if (self->_selectedSegmentIndex != index)
  {
    notifyCopy = notify;
    animatedCopy = animated;
    v9 = [(NSMutableArray *)self->_segments count];
    if (v9 <= index)
    {
      v15 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013104A8();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67110402;
        v18 = v15;
        v19 = 2082;
        v20 = "[CRLiOSMultipaneSegmentedControl p_setSelectedSegmentIndex:animated:notify:]";
        v21 = 2082;
        v22 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLiOSMultipaneSegmentedControl.m";
        v23 = 1024;
        v24 = 901;
        v25 = 2048;
        indexCopy = index;
        v27 = 2048;
        v28 = v9;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Selecting out of bounds segment in segmented control: %li (count: %li)", buf, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013104BC();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v11);
      }

      v12 = [NSString stringWithUTF8String:"[CRLiOSMultipaneSegmentedControl p_setSelectedSegmentIndex:animated:notify:]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Controls/CRLiOSMultipaneSegmentedControl.m"];
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:901 isFatal:0 description:"Selecting out of bounds segment in segmented control: %li (count: %li)", index, v9];
    }

    indexCopy2 = v9 - 1;
    if (v9 - 1 >= index)
    {
      indexCopy2 = index;
    }

    self->_selectedSegmentIndex = indexCopy2;
    if (animatedCopy)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000D3464;
      v16[3] = &unk_10183AB38;
      v16[4] = self;
      [UIView animateWithDuration:0 delay:v16 usingSpringWithDamping:0 initialSpringVelocity:0.2 options:0.0 animations:0.95 completion:0.0];
      if (!notifyCopy)
      {
        return;
      }
    }

    else
    {
      [(CRLiOSMultipaneSegmentedControl *)self p_updateAllButtons];
      [(CRLiOSMultipaneSegmentedControl *)self setNeedsUpdateConstraints];
      if (!notifyCopy)
      {
        return;
      }
    }

    [(CRLiOSMultipaneSegmentedControl *)self sendActionsForControlEvents:4096];
  }
}

- (void)p_updateAllButtons
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_segments;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(CRLiOSMultipaneSegmentedControl *)self p_updateButtonForSegment:*(*(&v8 + 1) + 8 * v7), v8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  self->_needsUpdateTitles = 0;
}

- (void)p_updateButtonForSegment:(id)segment
{
  segmentCopy = segment;
  button = [segmentCopy button];
  needsUpdateTitles = self->_needsUpdateTitles;
  v6 = [(NSMutableArray *)self->_segments indexOfObject:segmentCopy];
  if (!button)
  {
    button = [(CRLiOSMultipaneSegmentedControl *)self p_newButton];
    [button setTranslatesAutoresizingMaskIntoConstraints:0];
    backdropView = [(CRLiOSMultipaneSegmentedControl *)self backdropView];
    [(CRLiOSMultipaneSegmentedControl *)self insertSubview:button aboveSubview:backdropView];

    titleLabel = [button titleLabel];
    [titleLabel setMinimumScaleFactor:0.5];

    [(CRLiOSMultipaneSegmentedControl *)self edgeInsetsForSegmentAtIndex:v6];
    [button setContentEdgeInsets:?];
    [(CRLiOSMultipaneSegmentedControl *)self edgeInsetsForSegmentAtIndex:v6];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = objc_opt_class();
    v18 = sub_100014370(v17, button);
    [v18 setInsets:{v10, v12, v14, v16}];

    topAnchor = [button topAnchor];
    topAnchor2 = [(CRLiOSMultipaneSegmentedControl *)self topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    needsUpdateTitles = 1;
    [v21 setActive:1];

    bottomAnchor = [button bottomAnchor];
    bottomAnchor2 = [(CRLiOSMultipaneSegmentedControl *)self bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v24 setActive:1];

    [button addTarget:self action:"p_buttonTouchDown:" forControlEvents:1];
    [button addTarget:self action:"p_buttonTouchUpInside:" forControlEvents:64];
    [button addTarget:self action:"p_buttonTouchUpOutside:" forControlEvents:128];
    [button addTarget:self action:"p_buttonTouchCancel:" forControlEvents:256];
    [button setShowsLargeContentViewer:1];
    [(CRLiOSMultipaneSegmentedControl *)self p_updateBackgroundImagesForButton:button];
    [segmentCopy setButton:button];
  }

  [button setSelected:v6 == self->_selectedSegmentIndex];
  [button setEnabled:{objc_msgSend(segmentCopy, "isEnabled")}];
  [segmentCopy edgeInsets];
  [button setContentEdgeInsets:?];
  [segmentCopy edgeInsets];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = objc_opt_class();
  v34 = sub_100014370(v33, button);
  [v34 setInsets:{v26, v28, v30, v32}];

  if ([segmentCopy type])
  {
    [button setAttributedTitle:0 forState:0];
    [button setAttributedTitle:0 forState:1];
    [button setAttributedTitle:0 forState:4];
    [button setAttributedTitle:0 forState:2];
    image = [segmentCopy image];
    [button setImage:image forState:0];

    [button setAdjustsImageWhenHighlighted:1];
    if ([button isEnabled])
    {
      if ([button isSelected])
      {
        v36 = [(CRLiOSMultipaneSegmentedControl *)self effectiveTitleAttributesForState:4];
        v37 = [v36 objectForKeyedSubscript:NSForegroundColorAttributeName];
        [button setTintColor:v37];

        v38 = button;
        v39 = 0;
      }

      else
      {
        v44 = [(CRLiOSMultipaneSegmentedControl *)self effectiveTitleAttributesForState:0];
        v45 = [v44 objectForKeyedSubscript:NSForegroundColorAttributeName];
        [button setTintColor:v45];

        v38 = button;
        v39 = 1;
      }

      [v38 setAdjustsImageWhenHighlighted:v39];
    }

    else
    {
      v42 = [(CRLiOSMultipaneSegmentedControl *)self effectiveTitleAttributesForState:2];
      v43 = [v42 objectForKeyedSubscript:NSForegroundColorAttributeName];
      [button setTintColor:v43];
    }
  }

  else
  {
    [button setImage:0 forState:0];
    if (needsUpdateTitles)
    {
      title = [segmentCopy title];
      if (title)
      {
        title2 = [segmentCopy title];
      }

      else
      {
        title2 = &stru_1018BCA28;
      }

      configuration = [button configuration];
      [configuration setTitle:title2];

      v47 = [(CRLiOSMultipaneSegmentedControl *)self p_attributedStringForTitle:title2 forState:0];
      v48 = [(CRLiOSMultipaneSegmentedControl *)self p_attributedStringForTitle:title2 forState:1];
      v49 = [(CRLiOSMultipaneSegmentedControl *)self p_attributedStringForTitle:title2 forState:4];
      v50 = [(CRLiOSMultipaneSegmentedControl *)self p_attributedStringForTitle:title2 forState:2];
      [button setAttributedTitle:v47 forState:0];
      [button setAttributedTitle:v48 forState:1];
      [button setAttributedTitle:v49 forState:4];
      [button setAttributedTitle:v49 forState:5];
      [button setAttributedTitle:v50 forState:2];
    }
  }

  accessibilityLabel = [segmentCopy accessibilityLabel];
  [button setAccessibilityLabel:accessibilityLabel];
}

- (void)p_updateBackgroundImagesForButton:(id)button
{
  buttonCopy = button;
  v5 = +[CRLiOSVisualEffectHelper sharedHelper];
  buttonHighlightedColorPreset = self->_buttonHighlightedColorPreset;
  traitCollection = [(CRLiOSMultipaneSegmentedControl *)self traitCollection];
  v12 = [v5 resizableCornerImageWithRadius:5 corners:buttonHighlightedColorPreset colorPreset:traitCollection forTraitCollection:7.5];

  v8 = +[CRLiOSVisualEffectHelper sharedHelper];
  buttonSelectedColorPreset = self->_buttonSelectedColorPreset;
  traitCollection2 = [(CRLiOSMultipaneSegmentedControl *)self traitCollection];
  v11 = [v8 resizableCornerImageWithRadius:5 corners:buttonSelectedColorPreset colorPreset:traitCollection2 forTraitCollection:7.5];

  [buttonCopy setBackgroundImage:v12 forState:1];
  [buttonCopy setBackgroundImage:v11 forState:4];
  [buttonCopy setBackgroundImage:v11 forState:5];
}

- (void)p_updateBackgroundImagesForAllButtons
{
  v3 = [(NSMutableArray *)self->_segments count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:i];
      button = [v6 button];
      [(CRLiOSMultipaneSegmentedControl *)self p_updateBackgroundImagesForButton:button];
    }
  }
}

- (void)p_buttonTouchDown:(id)down
{
  downCopy = down;
  [(CRLiOSMultipaneSegmentedControl *)self sendActionsForControlEvents:1];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = +[CRLiOSVisualEffectHelper sharedHelper];
    v7 = downCopy;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [v5 applyTouchDownAnimationToViews:v6];
  }
}

- (void)p_buttonTouchUpInside:(id)inside
{
  insideCopy = inside;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = +[CRLiOSVisualEffectHelper sharedHelper];
    v12 = insideCopy;
    v6 = [NSArray arrayWithObjects:&v12 count:1];
    [v5 applyTouchUpAnimationToViews:v6];
  }

  v7 = [(NSMutableArray *)self->_segments count];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    while (1)
    {
      v10 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:v9];
      button = [v10 button];

      if (button == insideCopy)
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_9;
      }
    }

    [(CRLiOSMultipaneSegmentedControl *)self p_setSelectedSegmentIndex:v9 animated:1 notify:1];
  }

LABEL_9:
  [(CRLiOSMultipaneSegmentedControl *)self sendActionsForControlEvents:64];
}

- (void)p_buttonTouchUpOutside:(id)outside
{
  outsideCopy = outside;
  [(CRLiOSMultipaneSegmentedControl *)self sendActionsForControlEvents:128];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = +[CRLiOSVisualEffectHelper sharedHelper];
    v7 = outsideCopy;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [v5 applyTouchUpAnimationToViews:v6];
  }
}

- (void)p_buttonTouchCancel:(id)cancel
{
  cancelCopy = cancel;
  [(CRLiOSMultipaneSegmentedControl *)self sendActionsForControlEvents:256];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = +[CRLiOSVisualEffectHelper sharedHelper];
    v7 = cancelCopy;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [v5 applyTouchUpAnimationToViews:v6];
  }
}

- (id)p_attributedStringForTitle:(id)title forState:(unint64_t)state
{
  titleCopy = title;
  v7 = [NSAttributedString alloc];
  v8 = [(CRLiOSMultipaneSegmentedControl *)self effectiveTitleAttributesForState:state];
  v9 = [v7 initWithString:titleCopy attributes:v8];

  return v9;
}

- (id)p_newButton
{
  v2 = [[_TtC8Freeform21CRLiOSPageTitleButton alloc] initWithTitle:&stru_1018BCA28 insets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];

  return v2;
}

- (int64_t)indexOfAccessibilityElement:(id)element
{
  elementCopy = element;
  if ([(CRLiOSMultipaneSegmentedControl *)self numberOfSegments]< 1)
  {
LABEL_5:
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:v5];
      button = [v6 button];

      if (button == elementCopy)
      {
        break;
      }

      if (++v5 >= [(CRLiOSMultipaneSegmentedControl *)self numberOfSegments])
      {
        goto LABEL_5;
      }
    }
  }

  return v5;
}

- (id)accessibilityElementAtIndex:(int64_t)index
{
  if (index < 0 || [(CRLiOSMultipaneSegmentedControl *)self numberOfSegments]<= index)
  {
    button = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:index];
    button = [v5 button];
  }

  return button;
}

- (id)p_viewControllerForPresentingAccessibilityHUD
{
  nextResponder = [(CRLiOSMultipaneSegmentedControl *)self nextResponder];
  if (nextResponder)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v2NextResponder = [nextResponder nextResponder];

      nextResponder = v2NextResponder;
    }

    while (v2NextResponder);
  }

  v4 = objc_opt_class();
  v5 = sub_100014370(v4, nextResponder);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    navigationController2 = v5;
LABEL_8:
    rootViewController = navigationController2;
    goto LABEL_9;
  }

  navigationController = [v5 navigationController];

  if (navigationController)
  {
    navigationController2 = [v5 navigationController];
    goto LABEL_8;
  }

  v10 = +[UIApplication sharedApplication];
  keyWindow = [v10 keyWindow];
  rootViewController = [keyWindow rootViewController];

LABEL_9:

  return rootViewController;
}

- (UIEdgeInsets)defaultEdgeInsets
{
  top = self->_defaultEdgeInsets.top;
  left = self->_defaultEdgeInsets.left;
  bottom = self->_defaultEdgeInsets.bottom;
  right = self->_defaultEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end