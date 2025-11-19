@interface CRLiOSMultipaneSegmentedControl
- (BOOL)isBackdropHidden;
- (BOOL)isEnabledForSegmentAtIndex:(unint64_t)a3;
- (CRLiOSMultipaneSegmentedControl)initWithItems:(id)a3;
- (NSDictionary)defaultDisabledTitleAttributes;
- (NSDictionary)defaultNormalTitleAttributes;
- (NSDictionary)defaultSelectedTitleAttributes;
- (UIEdgeInsets)defaultEdgeInsets;
- (UIEdgeInsets)edgeInsetsForSegmentAtIndex:(unint64_t)a3;
- (double)p_fontSize;
- (double)widthForSegmentAtIndex:(unint64_t)a3;
- (id)accessibilityElementAtIndex:(int64_t)a3;
- (id)effectiveTitleAttributesForState:(unint64_t)a3;
- (id)imageForSegmentAtIndex:(unint64_t)a3;
- (id)p_attributedStringForTitle:(id)a3 forState:(unint64_t)a4;
- (id)p_newButton;
- (id)p_segmentForButton:(id)a3;
- (id)p_viewControllerForPresentingAccessibilityHUD;
- (id)titleForSegmentAtIndex:(unint64_t)a3;
- (id)titleTextAttributesForState:(unint64_t)a3;
- (int64_t)indexOfAccessibilityElement:(id)a3;
- (void)dealloc;
- (void)insertSegmentWithImage:(id)a3 atIndex:(unint64_t)a4 animated:(BOOL)a5;
- (void)insertSegmentWithTitle:(id)a3 atIndex:(unint64_t)a4 animated:(BOOL)a5;
- (void)p_buttonTouchCancel:(id)a3;
- (void)p_buttonTouchDown:(id)a3;
- (void)p_buttonTouchUpInside:(id)a3;
- (void)p_buttonTouchUpOutside:(id)a3;
- (void)p_insertSegment:(id)a3 atIndex:(unint64_t)a4;
- (void)p_removeAllConstraints;
- (void)p_setSelectedSegmentIndex:(int64_t)a3 animated:(BOOL)a4 notify:(BOOL)a5;
- (void)p_updateAllButtons;
- (void)p_updateBackgroundImagesForAllButtons;
- (void)p_updateBackgroundImagesForButton:(id)a3;
- (void)p_updateButtonForSegment:(id)a3;
- (void)p_updateConstraintsHugging;
- (void)p_updateConstraintsNormal;
- (void)removeAllSegments;
- (void)removeSegmentAtIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)setAllEdgeInsets:(UIEdgeInsets)a3;
- (void)setBackdropHidden:(BOOL)a3;
- (void)setButtonHighlightedColorPreset:(int64_t)a3;
- (void)setButtonSelectedColorPreset:(int64_t)a3;
- (void)setEdgeInsets:(UIEdgeInsets)a3 forSegmentAtIndex:(unint64_t)a4;
- (void)setEnabled:(BOOL)a3 forSegmentAtIndex:(unint64_t)a4;
- (void)setImage:(id)a3 forSegmentAtIndex:(unint64_t)a4;
- (void)setSegmentHuggingEnabled:(BOOL)a3;
- (void)setTitle:(id)a3 forSegmentAtIndex:(unint64_t)a4;
- (void)setTitleTextAttributes:(id)a3 forState:(unint64_t)a4;
- (void)setWidth:(double)a3 forSegmentAtIndex:(unint64_t)a4;
- (void)tintColorDidChange;
- (void)updateConstraints;
@end

@implementation CRLiOSMultipaneSegmentedControl

- (CRLiOSMultipaneSegmentedControl)initWithItems:(id)a3
{
  v4 = a3;
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
    v10 = [*(v5 + 14) leadingAnchor];
    v11 = [v5 leadingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    [v12 setActive:1];

    v13 = [*(v5 + 14) trailingAnchor];
    v14 = [v5 trailingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    [v15 setActive:1];

    v16 = [*(v5 + 14) topAnchor];
    v17 = [v5 topAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    [v18 setActive:1];

    v19 = [*(v5 + 14) bottomAnchor];
    v20 = [v5 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    [v21 setActive:1];

    v5[9] = 1;
    *(v5 + 2) = -1;
    *(v5 + 120) = xmmword_1014626B0;
    *(v5 + 136) = xmmword_1014626B0;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v32 = v4;
    v22 = v4;
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

    v4 = v32;
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
  v2 = [(CRLiOSMultipaneSegmentedControl *)self backdropView];
  v3 = [v2 isHidden];

  return v3;
}

- (void)setBackdropHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(CRLiOSMultipaneSegmentedControl *)self backdropView];
  [v4 setHidden:v3];
}

- (void)setSegmentHuggingEnabled:(BOOL)a3
{
  if (self->_segmentHuggingEnabled != a3)
  {
    self->_segmentHuggingEnabled = a3;
    self->_needsRemoveAllConstraints = 1;
    [(CRLiOSMultipaneSegmentedControl *)self setNeedsUpdateConstraints];
  }
}

- (void)insertSegmentWithTitle:(id)a3 atIndex:(unint64_t)a4 animated:(BOOL)a5
{
  v7 = [CRLiOSMultipaneSegmentedControlSegment segmentWithString:a3 edgeInsets:a4, a5, self->_defaultEdgeInsets.top, self->_defaultEdgeInsets.left, self->_defaultEdgeInsets.bottom, self->_defaultEdgeInsets.right];
  [(CRLiOSMultipaneSegmentedControl *)self p_insertSegment:v7 atIndex:a4];
}

- (void)insertSegmentWithImage:(id)a3 atIndex:(unint64_t)a4 animated:(BOOL)a5
{
  v7 = [CRLiOSMultipaneSegmentedControlSegment segmentWithImage:a3 edgeInsets:a4, a5, self->_defaultEdgeInsets.top, self->_defaultEdgeInsets.left, self->_defaultEdgeInsets.bottom, self->_defaultEdgeInsets.right];
  [(CRLiOSMultipaneSegmentedControl *)self p_insertSegment:v7 atIndex:a4];
}

- (void)removeSegmentAtIndex:(unint64_t)a3 animated:(BOOL)a4
{
  if ([(NSMutableArray *)self->_segments count:a3]<= a3)
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
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:259 isFatal:0 description:"Tried to remove out of bounds segment index: %lu", a3];
  }

  else
  {
    v13 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:a3];
    v6 = [v13 button];
    [v6 removeFromSuperview];

    [(NSMutableArray *)self->_segments removeObjectAtIndex:a3];
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

- (void)setTitle:(id)a3 forSegmentAtIndex:(unint64_t)a4
{
  v6 = a3;
  if ([(NSMutableArray *)self->_segments count]<= a4)
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
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:287 isFatal:0 description:"Tried to set title for out of bounds segment index: %lu", a4];
  }

  else
  {
    v7 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:a4];
    [v7 setTitle:v6];
    [v7 setAccessibilityLabel:v6];
    self->_needsUpdateTitles = 1;
    [(CRLiOSMultipaneSegmentedControl *)self p_updateButtonForSegment:v7];
    self->_needsUpdateTitles = 0;
  }
}

- (id)titleForSegmentAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_segments count]<= a3)
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
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:302 isFatal:0 description:"Tried to get title for out of bounds segment index: %lu", a3];

    v6 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:a3];
    v6 = [v5 title];
  }

  return v6;
}

- (void)setImage:(id)a3 forSegmentAtIndex:(unint64_t)a4
{
  v6 = a3;
  if ([(NSMutableArray *)self->_segments count]<= a4)
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
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:311 isFatal:0 description:"Tried to set image for out of bounds segment index: %lu", a4];
  }

  else
  {
    v7 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:a4];
    [v7 setImage:v6];
    [(CRLiOSMultipaneSegmentedControl *)self p_updateButtonForSegment:v7];
  }
}

- (id)imageForSegmentAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_segments count]<= a3)
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
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:323 isFatal:0 description:"Tried to get image for out of bounds segment index: %lu", a3];

    v6 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:a3];
    v6 = [v5 image];
  }

  return v6;
}

- (void)setWidth:(double)a3 forSegmentAtIndex:(unint64_t)a4
{
  if ([(NSMutableArray *)self->_segments count]<= a4)
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
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:332 isFatal:0 description:"Tried to set width of bounds segment index: %lu", a4];
  }

  else
  {
    v7 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:a4];
    [v7 setWidth:a3];

    [(CRLiOSMultipaneSegmentedControl *)self setNeedsUpdateConstraints];
  }
}

- (double)widthForSegmentAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_segments count]<= a3)
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
    [CRLAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:343 isFatal:0 description:"Tried to get width for out of bounds segment index: %lu", a3];

    return 0.0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:a3];
    [v5 width];
    v7 = v6;

    return v7;
  }
}

- (void)setEdgeInsets:(UIEdgeInsets)a3 forSegmentAtIndex:(unint64_t)a4
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  if ([(NSMutableArray *)self->_segments count]<= a4)
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
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:352 isFatal:0 description:"Tried to set edge insets for out of bounds segment index: %lu", a4];
  }

  else
  {
    v13 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:a4];
    [v13 setEdgeInsets:{top, left, bottom, right}];
    [(CRLiOSMultipaneSegmentedControl *)self p_updateButtonForSegment:v13];
  }
}

- (UIEdgeInsets)edgeInsetsForSegmentAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_segments count]<= a3)
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
    [CRLAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:364 isFatal:0 description:"Tried to get edge insets for out of bounds segment index: %lu", a3];

    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:a3];
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

- (void)setAllEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
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

- (void)setEnabled:(BOOL)a3 forSegmentAtIndex:(unint64_t)a4
{
  v5 = a3;
  if ([(NSMutableArray *)self->_segments count]<= a4)
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
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:384 isFatal:0 description:"Tried to set enabled state for out of bounds segment index: %lu", a4];
  }

  else
  {
    v10 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:a4];
    [v10 setEnabled:v5];
    [(CRLiOSMultipaneSegmentedControl *)self p_updateButtonForSegment:v10];
  }
}

- (BOOL)isEnabledForSegmentAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_segments count]<= a3)
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
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:396 isFatal:0 description:"Tried to get enabled state for out of bounds segment index: %lu", a3];

    return 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:a3];
    v6 = [v5 isEnabled];

    return v6;
  }
}

- (void)setTitleTextAttributes:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      [(CRLiOSMultipaneSegmentedControl *)self setOverrideDisabledTitleAttributes:v6];
    }

    else if (a4 == 4)
    {
      [(CRLiOSMultipaneSegmentedControl *)self setOverrideSelectedTitleAttributes:v6];
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      [(CRLiOSMultipaneSegmentedControl *)self setOverrideHighlightedTitleAttributes:v6];
    }
  }

  else
  {
    [(CRLiOSMultipaneSegmentedControl *)self setOverrideNormalTitleAttributes:v6];
  }

  self->_needsUpdateTitles = 1;
  [(CRLiOSMultipaneSegmentedControl *)self p_updateAllButtons];
}

- (id)titleTextAttributesForState:(unint64_t)a3
{
  v4 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v4 = [(CRLiOSMultipaneSegmentedControl *)self overrideDisabledTitleAttributes];
    }

    else if (a3 == 4)
    {
      v4 = [(CRLiOSMultipaneSegmentedControl *)self overrideSelectedTitleAttributes];
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v4 = [(CRLiOSMultipaneSegmentedControl *)self overrideHighlightedTitleAttributes];
    }
  }

  else
  {
    v4 = [(CRLiOSMultipaneSegmentedControl *)self overrideNormalTitleAttributes];
  }

  return v4;
}

- (void)setButtonHighlightedColorPreset:(int64_t)a3
{
  if (self->_buttonHighlightedColorPreset != a3)
  {
    self->_buttonHighlightedColorPreset = a3;
    [(CRLiOSMultipaneSegmentedControl *)self p_updateBackgroundImagesForAllButtons];
  }
}

- (void)setButtonSelectedColorPreset:(int64_t)a3
{
  if (self->_buttonSelectedColorPreset != a3)
  {
    self->_buttonSelectedColorPreset = a3;
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

      v8 = [v15 button];
      LODWORD(v9) = 1132068864;
      [v8 setContentHuggingPriority:0 forAxis:v9];

      v10 = [v15 leadingConstraint];
      [v10 setActive:0];

      [v15 setLeadingConstraint:0];
      v11 = [v15 trailingConstraint];
      [v11 setActive:0];

      [v15 setTrailingConstraint:0];
      v12 = [v15 widthConstraint];
      [v12 setActive:0];

      [v15 setWidthConstraint:0];
      v13 = [v15 equalWidthConstraint];
      [v13 setActive:0];

      [v15 setEqualWidthConstraint:0];
      [v15 setPreviousTrailingAnchor:0];
      [v15 setDistanceToPreviousTrailingAnchor:0];
      v14 = [v15 distanceBetweenPreviousAndNextSegmentConstraint];
      [v14 setActive:0];

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

      v7 = [v6 button];
      [v6 width];
      v9 = v8;
      v10 = [v6 leadingConstraint];
      v11 = v10;
      if (i)
      {
        if (v10)
        {
          v12 = [v6 leadingConstraint];
          v13 = [v12 secondItem];
          v14 = [v66 button];
          v15 = [v14 trailingAnchor];

          if (v13 != v15)
          {
            v16 = [v6 leadingConstraint];
            [v16 setActive:0];

            [v6 setLeadingConstraint:0];
          }
        }

        v17 = [v6 leadingConstraint];

        if (!v17)
        {
          v18 = [v7 leadingAnchor];
          v19 = [v66 button];
          v20 = [v19 trailingAnchor];
          v21 = [v18 constraintEqualToAnchor:v20];
          [v6 setLeadingConstraint:v21];

LABEL_14:
          v27 = [v6 leadingConstraint];
          LODWORD(v28) = 1148846080;
          [v27 setPriority:v28];

          v29 = [v6 leadingConstraint];
          [v29 setActive:1];
        }
      }

      else
      {
        if (v10)
        {
          v22 = [v6 leadingConstraint];
          v23 = [v22 secondItem];
          v24 = [(CRLiOSMultipaneSegmentedControl *)self leadingAnchor];

          if (v23 != v24)
          {
            v25 = [v6 leadingConstraint];
            [v25 setActive:0];

            [v6 setLeadingConstraint:0];
          }
        }

        v26 = [v6 leadingConstraint];

        if (!v26)
        {
          v18 = [v7 leadingAnchor];
          v19 = [(CRLiOSMultipaneSegmentedControl *)self leadingAnchor];
          v20 = [v18 constraintEqualToAnchor:v19];
          [v6 setLeadingConstraint:v20];
          goto LABEL_14;
        }
      }

      v30 = [v6 trailingConstraint];

      if (v3 == 1)
      {
        if (!v30)
        {
          v31 = [v7 trailingAnchor];
          v32 = [(CRLiOSMultipaneSegmentedControl *)self trailingAnchor];
          v33 = [v31 constraintEqualToAnchor:v32];
          [v6 setTrailingConstraint:v33];

          v34 = [v6 trailingConstraint];
          LODWORD(v35) = 1148846080;
          [v34 setPriority:v35];

          v36 = [v6 trailingConstraint];
          [v36 setActive:1];
        }
      }

      else if (v30)
      {
        v37 = [v6 trailingConstraint];
        [v37 setActive:0];

        [v6 setTrailingConstraint:0];
      }

      v38 = [v6 equalWidthConstraint];

      v39 = [v6 widthConstraint];

      if (v9 == 0.0)
      {
        if (v39)
        {
          v40 = [v6 widthConstraint];
          [v40 setActive:0];

          [v6 setWidthConstraint:0];
        }

        if (v38)
        {
          v41 = [v6 equalWidthConstraint];
          v42 = [v41 firstItem];
          v43 = [v4 button];
          v44 = [v43 widthAnchor];
          v45 = v42 == v44;

          if (v4 && v42 == v44 || ([v6 equalWidthConstraint], v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "setActive:", 0), v46, objc_msgSend(v6, "setEqualWidthConstraint:", 0), !v4))
          {
LABEL_36:
            v52 = v66;
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
          v53 = [v4 button];
          v54 = [v53 widthAnchor];
          v55 = [v7 widthAnchor];
          v56 = [v54 constraintEqualToAnchor:v55];
          [v6 setEqualWidthConstraint:v56];

          v57 = [v6 equalWidthConstraint];
          LODWORD(v58) = 1148846080;
          [v57 setPriority:v58];

          v59 = [v6 equalWidthConstraint];
          [v59 setActive:1];
        }

        goto LABEL_36;
      }

      if (v38)
      {
        v47 = [v6 equalWidthConstraint];
        [v47 setActive:0];

        [v6 setEqualWidthConstraint:0];
      }

      v48 = fabs(v9);
      if (!v39)
      {
        v61 = [v7 widthAnchor];
        v62 = [v61 constraintEqualToConstant:v48];
        [v6 setWidthConstraint:v62];

        v63 = [v6 widthConstraint];
        LODWORD(v64) = 1148829696;
        [v63 setPriority:v64];

        v52 = [v6 widthConstraint];
        [v52 setActive:1];
        goto LABEL_37;
      }

      v49 = [v6 widthConstraint];
      [v49 constant];
      v51 = v50;

      if (v51 != v48)
      {
        v52 = [v6 widthConstraint];
        [v52 setConstant:v48];
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
  v2 = self;
  v3 = [(NSMutableArray *)self->_segments count];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v69 = v2;
    while (1)
    {
      v8 = [(NSMutableArray *)v2->_segments objectAtIndexedSubscript:v7];

      v9 = [v8 button];
      if (v4 == 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = [(NSMutableArray *)v2->_segments objectAtIndexedSubscript:v7 + 1];
      }

      LODWORD(v11) = 1148846080;
      [v9 setContentHuggingPriority:0 forAxis:v11];
      LODWORD(v12) = 1148829696;
      [v9 setContentCompressionResistancePriority:0 forAxis:v12];
      v13 = [v9 titleLabel];
      [v13 setAdjustsFontSizeToFitWidth:1];

      v14 = [v8 leadingConstraint];
      v15 = v14;
      v70 = v10;
      if (v7)
      {
        if (v14)
        {
          v16 = [v8 leadingConstraint];
          v17 = [v16 secondItem];
          v18 = [v5 button];
          v19 = [v18 trailingAnchor];

          v2 = v69;
          v20 = v17 == v19;
          v10 = v70;
          if (!v20)
          {
            v21 = [v8 leadingConstraint];
            [v21 setActive:0];

            [v8 setLeadingConstraint:0];
          }
        }

        v22 = [v8 leadingConstraint];

        if (!v22)
        {
          v23 = [v9 leadingAnchor];
          v24 = [v5 button];
          v25 = [v24 trailingAnchor];
          v26 = [v23 constraintGreaterThanOrEqualToAnchor:v25];
          [v8 setLeadingConstraint:v26];

LABEL_17:
          v32 = [v8 leadingConstraint];
          LODWORD(v33) = 1148846080;
          [v32 setPriority:v33];

          v34 = [v8 leadingConstraint];
          [v34 setActive:1];

          v2 = v69;
          v10 = v70;
        }
      }

      else
      {
        if (v14)
        {
          v27 = [v8 leadingConstraint];
          v28 = [v27 secondItem];
          v29 = [(CRLiOSMultipaneSegmentedControl *)v69 leadingAnchor];

          v10 = v70;
          v20 = v28 == v29;
          v2 = v69;
          if (!v20)
          {
            v30 = [v8 leadingConstraint];
            [v30 setActive:0];

            [v8 setLeadingConstraint:0];
          }
        }

        v31 = [v8 leadingConstraint];

        if (!v31)
        {
          v23 = [v9 leadingAnchor];
          v24 = [(CRLiOSMultipaneSegmentedControl *)v2 leadingAnchor];
          v25 = [v23 constraintEqualToAnchor:v24];
          [v8 setLeadingConstraint:v25];
          goto LABEL_17;
        }
      }

      v35 = [v8 trailingConstraint];

      if (v4 == 1)
      {
        if (!v35)
        {
          v36 = [v9 trailingAnchor];
          v37 = [(CRLiOSMultipaneSegmentedControl *)v2 trailingAnchor];
          v38 = [v36 constraintEqualToAnchor:v37];
          [v8 setTrailingConstraint:v38];

          v39 = [v8 trailingConstraint];
          LODWORD(v40) = 1148846080;
          [v39 setPriority:v40];

          v41 = [v8 trailingConstraint];
          [v41 setActive:1];
        }
      }

      else if (v35)
      {
        v42 = [v8 trailingConstraint];
        [v42 setActive:0];

        [v8 setTrailingConstraint:0];
      }

      if (v5)
      {
        v43 = [v8 previousTrailingAnchor];
        if (!v43)
        {
          goto LABEL_27;
        }

        v44 = v43;
        v45 = [v5 button];
        v46 = [v45 trailingAnchor];

        if (v44 != v46)
        {
          [v8 setPreviousTrailingAnchor:0];
          [v8 setDistanceToPreviousTrailingAnchor:0];

LABEL_27:
          v47 = [v5 button];
          v44 = [v47 trailingAnchor];

          [v8 setPreviousTrailingAnchor:v44];
          v48 = [v9 leadingAnchor];
          v49 = [v44 anchorWithOffsetToAnchor:v48];
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
      v66 = [v8 distanceBetweenPreviousAndNextSegmentConstraint];
      [v66 setActive:0];

      [v8 setDistanceBetweenPreviousAndNextSegmentConstraint:0];
      if (!v10)
      {
LABEL_40:
        [v8 setPreviousTrailingAnchor:0];
        [v8 setDistanceToPreviousTrailingAnchor:0];
        v67 = [v8 distanceBetweenPreviousAndNextSegmentConstraint];
        [v67 setActive:0];

        [v8 setDistanceBetweenPreviousAndNextSegmentConstraint:0];
        goto LABEL_41;
      }

LABEL_29:
      v50 = [v10 previousTrailingAnchor];
      if (v50)
      {
        v51 = v50;
        v52 = [v9 trailingAnchor];

        if (v51 == v52)
        {
          goto LABEL_33;
        }

        [v10 setPreviousTrailingAnchor:0];
        [v10 setDistanceToPreviousTrailingAnchor:0];
      }

      v51 = [v9 trailingAnchor];
      [v10 setPreviousTrailingAnchor:v51];
      v53 = [v10 button];
      v54 = [v53 leadingAnchor];
      v55 = [v51 anchorWithOffsetToAnchor:v54];
      [v70 setDistanceToPreviousTrailingAnchor:v55];

      v10 = v70;
LABEL_33:

      if (v5)
      {
        v56 = [v8 distanceBetweenPreviousAndNextSegmentConstraint];
        if (!v56)
        {
          goto LABEL_38;
        }

        v57 = v56;
        v58 = [v56 firstItem];
        v59 = [v8 distanceToPreviousTrailingAnchor];
        v60 = v59;
        if (v58 != v59)
        {
          v61 = [v57 secondItem];
          v62 = [v70 distanceToPreviousTrailingAnchor];

          if (v61 == v62)
          {
            v2 = v69;
          }

          else
          {
            [v57 setActive:0];

            v2 = v69;
            v10 = v70;
LABEL_38:
            v63 = [v8 distanceToPreviousTrailingAnchor];
            v64 = [v10 distanceToPreviousTrailingAnchor];
            v65 = [v63 constraintEqualToAnchor:v64];
            [v8 setDistanceBetweenPreviousAndNextSegmentConstraint:v65];

            v58 = [v8 distanceBetweenPreviousAndNextSegmentConstraint];
            [v58 setActive:1];
            v57 = 0;
LABEL_43:
          }

          v10 = v70;
          goto LABEL_45;
        }

        v2 = v69;
        goto LABEL_43;
      }

LABEL_41:
      v68 = [v8 distanceBetweenPreviousAndNextSegmentConstraint];
      [v68 setActive:0];

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
  v3 = [v2 locale];
  v4 = [v3 languageCode];

  if ([v4 isEqualToString:@"en"])
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
    v4 = [(CRLiOSMultipaneSegmentedControl *)self tintColor];
    v10[0] = v4;
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
    v4 = [(CRLiOSMultipaneSegmentedControl *)self tintColor];
    v10 = 0.0;
    v11 = 0.0;
    [v4 getWhite:&v11 alpha:&v10];
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

- (id)effectiveTitleAttributesForState:(unint64_t)a3
{
  v5 = [(CRLiOSMultipaneSegmentedControl *)self titleTextAttributesForState:?];
  if (!v5)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v5 = [(CRLiOSMultipaneSegmentedControl *)self defaultDisabledTitleAttributes];
      }

      else if (a3 == 4)
      {
        v5 = [(CRLiOSMultipaneSegmentedControl *)self defaultSelectedTitleAttributes];
      }
    }

    else if (a3)
    {
      if (a3 == 1)
      {
        v5 = [(CRLiOSMultipaneSegmentedControl *)self defaultHighlightedTitleAttributes];
      }
    }

    else
    {
      v5 = [(CRLiOSMultipaneSegmentedControl *)self defaultNormalTitleAttributes];
    }
  }

  return v5;
}

- (id)p_segmentForButton:(id)a3
{
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(CRLiOSMultipaneSegmentedControl *)self segments];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      v11 = [v10 button];

      if (v11 == v4)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (void)p_insertSegment:(id)a3 atIndex:(unint64_t)a4
{
  segments = self->_segments;
  v7 = a3;
  v8 = [(NSMutableArray *)segments count];
  if (v8 >= a4)
  {
    v9 = a4;
  }

  else
  {
    v9 = v8;
  }

  [(NSMutableArray *)self->_segments insertObject:v7 atIndex:v9];
  self->_needsUpdateTitles = 1;
  [(CRLiOSMultipaneSegmentedControl *)self p_updateButtonForSegment:v7];

  self->_needsUpdateTitles = 0;
  self->_needsRemoveAllConstraints = 1;

  [(CRLiOSMultipaneSegmentedControl *)self setNeedsUpdateConstraints];
}

- (void)p_setSelectedSegmentIndex:(int64_t)a3 animated:(BOOL)a4 notify:(BOOL)a5
{
  if (self->_selectedSegmentIndex != a3)
  {
    v5 = a5;
    v6 = a4;
    v9 = [(NSMutableArray *)self->_segments count];
    if (v9 <= a3)
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
        v26 = a3;
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
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:901 isFatal:0 description:"Selecting out of bounds segment in segmented control: %li (count: %li)", a3, v9];
    }

    v14 = v9 - 1;
    if (v9 - 1 >= a3)
    {
      v14 = a3;
    }

    self->_selectedSegmentIndex = v14;
    if (v6)
    {
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000D3464;
      v16[3] = &unk_10183AB38;
      v16[4] = self;
      [UIView animateWithDuration:0 delay:v16 usingSpringWithDamping:0 initialSpringVelocity:0.2 options:0.0 animations:0.95 completion:0.0];
      if (!v5)
      {
        return;
      }
    }

    else
    {
      [(CRLiOSMultipaneSegmentedControl *)self p_updateAllButtons];
      [(CRLiOSMultipaneSegmentedControl *)self setNeedsUpdateConstraints];
      if (!v5)
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

- (void)p_updateButtonForSegment:(id)a3
{
  v52 = a3;
  v4 = [v52 button];
  needsUpdateTitles = self->_needsUpdateTitles;
  v6 = [(NSMutableArray *)self->_segments indexOfObject:v52];
  if (!v4)
  {
    v4 = [(CRLiOSMultipaneSegmentedControl *)self p_newButton];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(CRLiOSMultipaneSegmentedControl *)self backdropView];
    [(CRLiOSMultipaneSegmentedControl *)self insertSubview:v4 aboveSubview:v7];

    v8 = [v4 titleLabel];
    [v8 setMinimumScaleFactor:0.5];

    [(CRLiOSMultipaneSegmentedControl *)self edgeInsetsForSegmentAtIndex:v6];
    [v4 setContentEdgeInsets:?];
    [(CRLiOSMultipaneSegmentedControl *)self edgeInsetsForSegmentAtIndex:v6];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = objc_opt_class();
    v18 = sub_100014370(v17, v4);
    [v18 setInsets:{v10, v12, v14, v16}];

    v19 = [v4 topAnchor];
    v20 = [(CRLiOSMultipaneSegmentedControl *)self topAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    needsUpdateTitles = 1;
    [v21 setActive:1];

    v22 = [v4 bottomAnchor];
    v23 = [(CRLiOSMultipaneSegmentedControl *)self bottomAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    [v24 setActive:1];

    [v4 addTarget:self action:"p_buttonTouchDown:" forControlEvents:1];
    [v4 addTarget:self action:"p_buttonTouchUpInside:" forControlEvents:64];
    [v4 addTarget:self action:"p_buttonTouchUpOutside:" forControlEvents:128];
    [v4 addTarget:self action:"p_buttonTouchCancel:" forControlEvents:256];
    [v4 setShowsLargeContentViewer:1];
    [(CRLiOSMultipaneSegmentedControl *)self p_updateBackgroundImagesForButton:v4];
    [v52 setButton:v4];
  }

  [v4 setSelected:v6 == self->_selectedSegmentIndex];
  [v4 setEnabled:{objc_msgSend(v52, "isEnabled")}];
  [v52 edgeInsets];
  [v4 setContentEdgeInsets:?];
  [v52 edgeInsets];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = objc_opt_class();
  v34 = sub_100014370(v33, v4);
  [v34 setInsets:{v26, v28, v30, v32}];

  if ([v52 type])
  {
    [v4 setAttributedTitle:0 forState:0];
    [v4 setAttributedTitle:0 forState:1];
    [v4 setAttributedTitle:0 forState:4];
    [v4 setAttributedTitle:0 forState:2];
    v35 = [v52 image];
    [v4 setImage:v35 forState:0];

    [v4 setAdjustsImageWhenHighlighted:1];
    if ([v4 isEnabled])
    {
      if ([v4 isSelected])
      {
        v36 = [(CRLiOSMultipaneSegmentedControl *)self effectiveTitleAttributesForState:4];
        v37 = [v36 objectForKeyedSubscript:NSForegroundColorAttributeName];
        [v4 setTintColor:v37];

        v38 = v4;
        v39 = 0;
      }

      else
      {
        v44 = [(CRLiOSMultipaneSegmentedControl *)self effectiveTitleAttributesForState:0];
        v45 = [v44 objectForKeyedSubscript:NSForegroundColorAttributeName];
        [v4 setTintColor:v45];

        v38 = v4;
        v39 = 1;
      }

      [v38 setAdjustsImageWhenHighlighted:v39];
    }

    else
    {
      v42 = [(CRLiOSMultipaneSegmentedControl *)self effectiveTitleAttributesForState:2];
      v43 = [v42 objectForKeyedSubscript:NSForegroundColorAttributeName];
      [v4 setTintColor:v43];
    }
  }

  else
  {
    [v4 setImage:0 forState:0];
    if (needsUpdateTitles)
    {
      v40 = [v52 title];
      if (v40)
      {
        v41 = [v52 title];
      }

      else
      {
        v41 = &stru_1018BCA28;
      }

      v46 = [v4 configuration];
      [v46 setTitle:v41];

      v47 = [(CRLiOSMultipaneSegmentedControl *)self p_attributedStringForTitle:v41 forState:0];
      v48 = [(CRLiOSMultipaneSegmentedControl *)self p_attributedStringForTitle:v41 forState:1];
      v49 = [(CRLiOSMultipaneSegmentedControl *)self p_attributedStringForTitle:v41 forState:4];
      v50 = [(CRLiOSMultipaneSegmentedControl *)self p_attributedStringForTitle:v41 forState:2];
      [v4 setAttributedTitle:v47 forState:0];
      [v4 setAttributedTitle:v48 forState:1];
      [v4 setAttributedTitle:v49 forState:4];
      [v4 setAttributedTitle:v49 forState:5];
      [v4 setAttributedTitle:v50 forState:2];
    }
  }

  v51 = [v52 accessibilityLabel];
  [v4 setAccessibilityLabel:v51];
}

- (void)p_updateBackgroundImagesForButton:(id)a3
{
  v4 = a3;
  v5 = +[CRLiOSVisualEffectHelper sharedHelper];
  buttonHighlightedColorPreset = self->_buttonHighlightedColorPreset;
  v7 = [(CRLiOSMultipaneSegmentedControl *)self traitCollection];
  v12 = [v5 resizableCornerImageWithRadius:5 corners:buttonHighlightedColorPreset colorPreset:v7 forTraitCollection:7.5];

  v8 = +[CRLiOSVisualEffectHelper sharedHelper];
  buttonSelectedColorPreset = self->_buttonSelectedColorPreset;
  v10 = [(CRLiOSMultipaneSegmentedControl *)self traitCollection];
  v11 = [v8 resizableCornerImageWithRadius:5 corners:buttonSelectedColorPreset colorPreset:v10 forTraitCollection:7.5];

  [v4 setBackgroundImage:v12 forState:1];
  [v4 setBackgroundImage:v11 forState:4];
  [v4 setBackgroundImage:v11 forState:5];
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
      v7 = [v6 button];
      [(CRLiOSMultipaneSegmentedControl *)self p_updateBackgroundImagesForButton:v7];
    }
  }
}

- (void)p_buttonTouchDown:(id)a3
{
  v4 = a3;
  [(CRLiOSMultipaneSegmentedControl *)self sendActionsForControlEvents:1];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = +[CRLiOSVisualEffectHelper sharedHelper];
    v7 = v4;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [v5 applyTouchDownAnimationToViews:v6];
  }
}

- (void)p_buttonTouchUpInside:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = +[CRLiOSVisualEffectHelper sharedHelper];
    v12 = v4;
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
      v11 = [v10 button];

      if (v11 == v4)
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

- (void)p_buttonTouchUpOutside:(id)a3
{
  v4 = a3;
  [(CRLiOSMultipaneSegmentedControl *)self sendActionsForControlEvents:128];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = +[CRLiOSVisualEffectHelper sharedHelper];
    v7 = v4;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [v5 applyTouchUpAnimationToViews:v6];
  }
}

- (void)p_buttonTouchCancel:(id)a3
{
  v4 = a3;
  [(CRLiOSMultipaneSegmentedControl *)self sendActionsForControlEvents:256];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = +[CRLiOSVisualEffectHelper sharedHelper];
    v7 = v4;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [v5 applyTouchUpAnimationToViews:v6];
  }
}

- (id)p_attributedStringForTitle:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  v7 = [NSAttributedString alloc];
  v8 = [(CRLiOSMultipaneSegmentedControl *)self effectiveTitleAttributesForState:a4];
  v9 = [v7 initWithString:v6 attributes:v8];

  return v9;
}

- (id)p_newButton
{
  v2 = [[_TtC8Freeform21CRLiOSPageTitleButton alloc] initWithTitle:&stru_1018BCA28 insets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];

  return v2;
}

- (int64_t)indexOfAccessibilityElement:(id)a3
{
  v4 = a3;
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
      v7 = [v6 button];

      if (v7 == v4)
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

- (id)accessibilityElementAtIndex:(int64_t)a3
{
  if (a3 < 0 || [(CRLiOSMultipaneSegmentedControl *)self numberOfSegments]<= a3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_segments objectAtIndexedSubscript:a3];
    v6 = [v5 button];
  }

  return v6;
}

- (id)p_viewControllerForPresentingAccessibilityHUD
{
  v2 = [(CRLiOSMultipaneSegmentedControl *)self nextResponder];
  if (v2)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [v2 nextResponder];

      v2 = v3;
    }

    while (v3);
  }

  v4 = objc_opt_class();
  v5 = sub_100014370(v4, v2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
LABEL_8:
    v8 = v6;
    goto LABEL_9;
  }

  v7 = [v5 navigationController];

  if (v7)
  {
    v6 = [v5 navigationController];
    goto LABEL_8;
  }

  v10 = +[UIApplication sharedApplication];
  v11 = [v10 keyWindow];
  v8 = [v11 rootViewController];

LABEL_9:

  return v8;
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