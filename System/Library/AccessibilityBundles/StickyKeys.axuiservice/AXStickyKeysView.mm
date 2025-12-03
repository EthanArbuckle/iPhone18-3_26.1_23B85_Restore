@interface AXStickyKeysView
- (AXStickyKeysView)initWithFrame:(CGRect)frame;
- (id)_newStickyKeyLabelForString:(id)string;
- (void)_setUpHUDBackgroundViewAndAddConstraints:(id)constraints;
- (void)addStickyKeyString:(id)string;
- (void)highlightStickyKeyString:(id)string;
- (void)removeAllStickyKeyStringsWithCompletion:(id)completion;
- (void)removeStickyKeyString:(id)string;
@end

@implementation AXStickyKeysView

- (AXStickyKeysView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = AXStickyKeysView;
  v3 = [(AXStickyKeysView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[NSMutableArray array];
    [(AXStickyKeysView *)v3 setAllStickyKeyLabels:v4];

    v5 = +[NSMutableArray array];
    [(AXStickyKeysView *)v3 setAllStickyKeyHorizontalConstraints:v5];
  }

  return v3;
}

- (void)addStickyKeyString:(id)string
{
  stringCopy = string;
  v5 = +[NSMutableArray array];
  v6 = +[NSMutableArray array];
  v7 = +[NSMutableArray array];
  allStickyKeyLabels = [(AXStickyKeysView *)self allStickyKeyLabels];
  v9 = [allStickyKeyLabels count];

  v57 = v6;
  if (v9)
  {
    v10 = [(AXStickyKeysView *)self _newStickyKeyLabelForString:stringCopy];
    [v10 setAlpha:0.0];
  }

  else
  {
    [(AXStickyKeysView *)self _setUpHUDBackgroundViewAndAddConstraints:v5];
    v10 = [(AXStickyKeysView *)self _newStickyKeyLabelForString:stringCopy];
  }

  hudBackgroundView = [(AXStickyKeysView *)self hudBackgroundView];
  contentView = [hudBackgroundView contentView];
  [contentView addSubview:v10];

  hudBackgroundView2 = [(AXStickyKeysView *)self hudBackgroundView];
  v14 = [NSLayoutConstraint constraintWithItem:v10 attribute:11 relatedBy:0 toItem:hudBackgroundView2 attribute:3 multiplier:1.0 constant:55.0];
  [v5 addObject:v14];

  hudBackgroundView3 = [(AXStickyKeysView *)self hudBackgroundView];
  v16 = [NSLayoutConstraint constraintWithItem:v10 attribute:5 relatedBy:0 toItem:hudBackgroundView3 attribute:5 multiplier:1.0 constant:15.0];

  allStickyKeyLabels2 = [(AXStickyKeysView *)self allStickyKeyLabels];
  v18 = [allStickyKeyLabels2 count];

  v58 = v5;
  if (v18)
  {
    v55 = v7;
    v56 = stringCopy;
    allStickyKeyLabels3 = [(AXStickyKeysView *)self allStickyKeyLabels];
    lastObject = [allStickyKeyLabels3 lastObject];

    v53 = lastObject;
    v54 = [NSLayoutConstraint constraintWithItem:v10 attribute:6 relatedBy:0 toItem:lastObject attribute:5 multiplier:1.0 constant:0.0];
    allStickyKeyHorizontalConstraints = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
    v22 = [allStickyKeyHorizontalConstraints count];
    allStickyKeyLabels4 = [(AXStickyKeysView *)self allStickyKeyLabels];
    v24 = [allStickyKeyLabels4 count] + 1;

    if (v22 != v24)
    {
      _AXAssert();
    }

    allStickyKeyHorizontalConstraints2 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
    lastObject2 = [allStickyKeyHorizontalConstraints2 lastObject];

    allStickyKeyHorizontalConstraints3 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
    allStickyKeyHorizontalConstraints4 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
    v28 = [allStickyKeyHorizontalConstraints3 objectAtIndex:{objc_msgSend(allStickyKeyHorizontalConstraints4, "count") - 2}];

    firstAttribute = [v28 firstAttribute];
    relation = [v28 relation];
    secondItem = [v28 secondItem];
    secondAttribute = [v28 secondAttribute];
    [v28 multiplier];
    v34 = v33;
    [v28 constant];
    v36 = [NSLayoutConstraint constraintWithItem:v10 attribute:firstAttribute relatedBy:relation toItem:secondItem attribute:secondAttribute multiplier:v34 constant:v35];

    [v58 addObject:v36];
    v66[0] = v16;
    v66[1] = v54;
    v37 = [NSArray arrayWithObjects:v66 count:2];
    v38 = v57;
    [v57 addObjectsFromArray:v37];

    v65[0] = lastObject2;
    v65[1] = v36;
    v39 = [NSArray arrayWithObjects:v65 count:2];
    [v55 addObjectsFromArray:v39];

    v40 = &AudioServicesPlaySystemSound_ptr;
    v41 = v54;

    v7 = v55;
    stringCopy = v56;
    v42 = v53;
  }

  else
  {
    hudBackgroundView4 = [(AXStickyKeysView *)self hudBackgroundView];
    v41 = [NSLayoutConstraint constraintWithItem:v10 attribute:6 relatedBy:0 toItem:hudBackgroundView4 attribute:6 multiplier:1.0 constant:-15.0];

    v64[0] = v16;
    v64[1] = v41;
    v42 = [NSArray arrayWithObjects:v64 count:2];
    [v5 addObjectsFromArray:v42];
    v40 = &AudioServicesPlaySystemSound_ptr;
    v38 = v57;
  }

  allStickyKeyLabels5 = [(AXStickyKeysView *)self allStickyKeyLabels];
  [allStickyKeyLabels5 addObject:v10];

  allStickyKeyHorizontalConstraints5 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
  [allStickyKeyHorizontalConstraints5 removeLastObject];

  allStickyKeyHorizontalConstraints6 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
  v63[0] = v41;
  v63[1] = v16;
  v47 = [v40[57] arrayWithObjects:v63 count:2];
  [allStickyKeyHorizontalConstraints6 addObjectsFromArray:v47];

  [(AXStickyKeysView *)self addConstraints:v58];
  [(AXStickyKeysView *)self layoutIfNeeded];
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_195C;
  v59[3] = &unk_8218;
  v59[4] = self;
  v60 = v7;
  v61 = v38;
  v62 = v10;
  v48 = v10;
  v49 = v38;
  v50 = v41;
  v51 = v7;
  [UIView animateWithDuration:v59 animations:0.25];
}

- (void)highlightStickyKeyString:(id)string
{
  stringCopy = string;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allStickyKeyLabels = [(AXStickyKeysView *)self allStickyKeyLabels];
  v6 = [allStickyKeyLabels countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allStickyKeyLabels);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        text = [v10 text];
        v12 = [text isEqualToString:stringCopy];

        if (v12)
        {
          v13 = +[UIColor whiteColor];
          [v10 setTextColor:v13];

          goto LABEL_11;
        }
      }

      v7 = [allStickyKeyLabels countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)removeStickyKeyString:(id)string
{
  stringCopy = string;
  v5 = +[NSMutableArray array];
  v6 = +[NSMutableArray array];
  allStickyKeyLabels = [(AXStickyKeysView *)self allStickyKeyLabels];
  v8 = [allStickyKeyLabels count];

  if (v8)
  {
    v9 = 0;
    while (1)
    {
      allStickyKeyLabels2 = [(AXStickyKeysView *)self allStickyKeyLabels];
      v11 = [allStickyKeyLabels2 objectAtIndexedSubscript:v9];

      text = [v11 text];
      v13 = [text isEqualToString:stringCopy];

      if (v13)
      {
        break;
      }

      [(AXStickyKeysView *)self removeConstraints:v6];
      [(AXStickyKeysView *)self addConstraints:v5];

      if (v8 == ++v9)
      {
        goto LABEL_14;
      }
    }

    v14 = v8 - 1;
    v15 = v8 == &dword_0 + 1;
    if (v8 != &dword_0 + 1)
    {
      allStickyKeyHorizontalConstraints = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
      v17 = [allStickyKeyHorizontalConstraints objectAtIndexedSubscript:v9];

      v57 = v14;
      if (v14 == v9)
      {
        goto LABEL_9;
      }

      allStickyKeyLabels3 = [(AXStickyKeysView *)self allStickyKeyLabels];
      v59 = [allStickyKeyLabels3 objectAtIndexedSubscript:v9 + 1];

      allStickyKeyHorizontalConstraints2 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
      v55 = [allStickyKeyHorizontalConstraints2 objectAtIndexedSubscript:v9 + 1];

      firstAttribute = [v17 firstAttribute];
      relation = [v17 relation];
      [v17 secondItem];
      v22 = v21 = v17;
      secondAttribute = [v21 secondAttribute];
      [v21 multiplier];
      v25 = v24;
      [v21 constant];
      v27 = [NSLayoutConstraint constraintWithItem:v59 attribute:firstAttribute relatedBy:relation toItem:v22 attribute:secondAttribute multiplier:v25 constant:v26];

      [v6 addObject:v55];
      [v5 addObject:v27];
      allStickyKeyHorizontalConstraints3 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
      [allStickyKeyHorizontalConstraints3 setObject:v27 atIndexedSubscript:v9];

      v17 = v21;
      if (v9)
      {
LABEL_9:
        v56 = v17;
        allStickyKeyLabels4 = [(AXStickyKeysView *)self allStickyKeyLabels];
        v60 = [allStickyKeyLabels4 objectAtIndexedSubscript:v9 - 1];

        allStickyKeyHorizontalConstraints4 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
        v31 = [allStickyKeyHorizontalConstraints4 objectAtIndexedSubscript:v9 - 1];

        firstAttribute2 = [v31 firstAttribute];
        relation2 = [v31 relation];
        secondItem = [v31 secondItem];
        secondAttribute2 = [v31 secondAttribute];
        [v31 multiplier];
        v36 = v35;
        [v31 constant];
        v38 = [NSLayoutConstraint constraintWithItem:v11 attribute:firstAttribute2 relatedBy:relation2 toItem:secondItem attribute:secondAttribute2 multiplier:v36 constant:v37];

        if (v57 == v9)
        {
          allStickyKeyHorizontalConstraints5 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
          [allStickyKeyHorizontalConstraints5 objectAtIndexedSubscript:v9 + 1];
          v40 = v58 = v38;

          firstAttribute3 = [v40 firstAttribute];
          relation3 = [v40 relation];
          secondItem2 = [v40 secondItem];
          secondAttribute3 = [v40 secondAttribute];
          [v40 multiplier];
          v44 = v43;
          [v40 constant];
          v46 = [NSLayoutConstraint constraintWithItem:v60 attribute:firstAttribute3 relatedBy:relation3 toItem:secondItem2 attribute:secondAttribute3 multiplier:v44 constant:v45];

          [v6 addObject:v40];
          [v5 addObject:v46];
          allStickyKeyHorizontalConstraints6 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
          [allStickyKeyHorizontalConstraints6 setObject:v46 atIndexedSubscript:v9];

          v38 = v58;
        }

        v17 = v56;
        [v6 addObject:v56];
        [v5 addObject:v38];
      }

      v15 = 0;
    }

    allStickyKeyLabels5 = [(AXStickyKeysView *)self allStickyKeyLabels];
    [allStickyKeyLabels5 removeObjectAtIndex:v9];

    allStickyKeyHorizontalConstraints7 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
    [allStickyKeyHorizontalConstraints7 removeObjectAtIndex:v9 + 1];

    [(AXStickyKeysView *)self layoutIfNeeded];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_20D4;
    v64[3] = &unk_8240;
    v68 = v15;
    v64[4] = self;
    v65 = v11;
    v66 = v6;
    v67 = v5;
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_2158;
    v61[3] = &unk_8268;
    v62 = v65;
    selfCopy = self;
    v50 = v65;
    [UIView animateWithDuration:v64 animations:v61 completion:0.25];
  }

LABEL_14:
}

- (void)removeAllStickyKeyStringsWithCompletion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_22CC;
  v6[3] = &unk_8290;
  v6[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_2314;
  v4[3] = &unk_82B8;
  v4[4] = self;
  completionCopy = completion;
  v3 = completionCopy;
  [UIView animateWithDuration:v6 animations:v4 completion:0.25];
}

- (void)_setUpHUDBackgroundViewAndAddConstraints:(id)constraints
{
  constraintsCopy = constraints;
  hudBackgroundView = [(AXStickyKeysView *)self hudBackgroundView];

  if (!hudBackgroundView)
  {
    v6 = [UIVisualEffectView alloc];
    v7 = [UIBlurEffect effectWithStyle:2];
    v8 = [v6 initWithEffect:v7];

    layer = [v8 layer];
    [layer setCornerRadius:10.0];

    [v8 setClipsToBounds:1];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setAlpha:0.0];
    [(AXStickyKeysView *)self addSubview:v8];
    v10 = [NSLayoutConstraint constraintWithItem:v8 attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:-18.0];
    v11 = [NSLayoutConstraint constraintWithItem:v8 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:47.0, v10];
    v14[1] = v11;
    v12 = [NSLayoutConstraint constraintWithItem:v8 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:75.0];
    v14[2] = v12;
    v13 = [NSArray arrayWithObjects:v14 count:3];
    [constraintsCopy addObjectsFromArray:v13];

    [(AXStickyKeysView *)self setHudBackgroundView:v8];
  }
}

- (id)_newStickyKeyLabelForString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(UILabel);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setText:stringCopy];
  v5 = [stringCopy isEqualToString:@"fn"];

  if (v5)
  {
    [UIFont systemFontOfSize:44.0];
  }

  else
  {
    [UIFont boldSystemFontOfSize:44.0];
  }
  v6 = ;
  [v4 setFont:v6];

  v7 = [UIColor colorWithWhite:1.0 alpha:0.7];
  [v4 setTextColor:v7];

  [v4 _setDrawsAsBackdropOverlayWithBlendMode:3];
  return v4;
}

@end