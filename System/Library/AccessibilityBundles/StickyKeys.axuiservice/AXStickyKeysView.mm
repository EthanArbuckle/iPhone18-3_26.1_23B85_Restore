@interface AXStickyKeysView
- (AXStickyKeysView)initWithFrame:(CGRect)a3;
- (id)_newStickyKeyLabelForString:(id)a3;
- (void)_setUpHUDBackgroundViewAndAddConstraints:(id)a3;
- (void)addStickyKeyString:(id)a3;
- (void)highlightStickyKeyString:(id)a3;
- (void)removeAllStickyKeyStringsWithCompletion:(id)a3;
- (void)removeStickyKeyString:(id)a3;
@end

@implementation AXStickyKeysView

- (AXStickyKeysView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = AXStickyKeysView;
  v3 = [(AXStickyKeysView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[NSMutableArray array];
    [(AXStickyKeysView *)v3 setAllStickyKeyLabels:v4];

    v5 = +[NSMutableArray array];
    [(AXStickyKeysView *)v3 setAllStickyKeyHorizontalConstraints:v5];
  }

  return v3;
}

- (void)addStickyKeyString:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = +[NSMutableArray array];
  v7 = +[NSMutableArray array];
  v8 = [(AXStickyKeysView *)self allStickyKeyLabels];
  v9 = [v8 count];

  v57 = v6;
  if (v9)
  {
    v10 = [(AXStickyKeysView *)self _newStickyKeyLabelForString:v4];
    [v10 setAlpha:0.0];
  }

  else
  {
    [(AXStickyKeysView *)self _setUpHUDBackgroundViewAndAddConstraints:v5];
    v10 = [(AXStickyKeysView *)self _newStickyKeyLabelForString:v4];
  }

  v11 = [(AXStickyKeysView *)self hudBackgroundView];
  v12 = [v11 contentView];
  [v12 addSubview:v10];

  v13 = [(AXStickyKeysView *)self hudBackgroundView];
  v14 = [NSLayoutConstraint constraintWithItem:v10 attribute:11 relatedBy:0 toItem:v13 attribute:3 multiplier:1.0 constant:55.0];
  [v5 addObject:v14];

  v15 = [(AXStickyKeysView *)self hudBackgroundView];
  v16 = [NSLayoutConstraint constraintWithItem:v10 attribute:5 relatedBy:0 toItem:v15 attribute:5 multiplier:1.0 constant:15.0];

  v17 = [(AXStickyKeysView *)self allStickyKeyLabels];
  v18 = [v17 count];

  v58 = v5;
  if (v18)
  {
    v55 = v7;
    v56 = v4;
    v19 = [(AXStickyKeysView *)self allStickyKeyLabels];
    v20 = [v19 lastObject];

    v53 = v20;
    v54 = [NSLayoutConstraint constraintWithItem:v10 attribute:6 relatedBy:0 toItem:v20 attribute:5 multiplier:1.0 constant:0.0];
    v21 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
    v22 = [v21 count];
    v23 = [(AXStickyKeysView *)self allStickyKeyLabels];
    v24 = [v23 count] + 1;

    if (v22 != v24)
    {
      _AXAssert();
    }

    v25 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
    v52 = [v25 lastObject];

    v26 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
    v27 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
    v28 = [v26 objectAtIndex:{objc_msgSend(v27, "count") - 2}];

    v29 = [v28 firstAttribute];
    v30 = [v28 relation];
    v31 = [v28 secondItem];
    v32 = [v28 secondAttribute];
    [v28 multiplier];
    v34 = v33;
    [v28 constant];
    v36 = [NSLayoutConstraint constraintWithItem:v10 attribute:v29 relatedBy:v30 toItem:v31 attribute:v32 multiplier:v34 constant:v35];

    [v58 addObject:v36];
    v66[0] = v16;
    v66[1] = v54;
    v37 = [NSArray arrayWithObjects:v66 count:2];
    v38 = v57;
    [v57 addObjectsFromArray:v37];

    v65[0] = v52;
    v65[1] = v36;
    v39 = [NSArray arrayWithObjects:v65 count:2];
    [v55 addObjectsFromArray:v39];

    v40 = &AudioServicesPlaySystemSound_ptr;
    v41 = v54;

    v7 = v55;
    v4 = v56;
    v42 = v53;
  }

  else
  {
    v43 = [(AXStickyKeysView *)self hudBackgroundView];
    v41 = [NSLayoutConstraint constraintWithItem:v10 attribute:6 relatedBy:0 toItem:v43 attribute:6 multiplier:1.0 constant:-15.0];

    v64[0] = v16;
    v64[1] = v41;
    v42 = [NSArray arrayWithObjects:v64 count:2];
    [v5 addObjectsFromArray:v42];
    v40 = &AudioServicesPlaySystemSound_ptr;
    v38 = v57;
  }

  v44 = [(AXStickyKeysView *)self allStickyKeyLabels];
  [v44 addObject:v10];

  v45 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
  [v45 removeLastObject];

  v46 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
  v63[0] = v41;
  v63[1] = v16;
  v47 = [v40[57] arrayWithObjects:v63 count:2];
  [v46 addObjectsFromArray:v47];

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

- (void)highlightStickyKeyString:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(AXStickyKeysView *)self allStickyKeyLabels];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 text];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v13 = +[UIColor whiteColor];
          [v10 setTextColor:v13];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)removeStickyKeyString:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = +[NSMutableArray array];
  v7 = [(AXStickyKeysView *)self allStickyKeyLabels];
  v8 = [v7 count];

  if (v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = [(AXStickyKeysView *)self allStickyKeyLabels];
      v11 = [v10 objectAtIndexedSubscript:v9];

      v12 = [v11 text];
      v13 = [v12 isEqualToString:v4];

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
      v16 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
      v17 = [v16 objectAtIndexedSubscript:v9];

      v57 = v14;
      if (v14 == v9)
      {
        goto LABEL_9;
      }

      v18 = [(AXStickyKeysView *)self allStickyKeyLabels];
      v59 = [v18 objectAtIndexedSubscript:v9 + 1];

      v19 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
      v55 = [v19 objectAtIndexedSubscript:v9 + 1];

      v51 = [v17 firstAttribute];
      v20 = [v17 relation];
      [v17 secondItem];
      v22 = v21 = v17;
      v23 = [v21 secondAttribute];
      [v21 multiplier];
      v25 = v24;
      [v21 constant];
      v27 = [NSLayoutConstraint constraintWithItem:v59 attribute:v51 relatedBy:v20 toItem:v22 attribute:v23 multiplier:v25 constant:v26];

      [v6 addObject:v55];
      [v5 addObject:v27];
      v28 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
      [v28 setObject:v27 atIndexedSubscript:v9];

      v17 = v21;
      if (v9)
      {
LABEL_9:
        v56 = v17;
        v29 = [(AXStickyKeysView *)self allStickyKeyLabels];
        v60 = [v29 objectAtIndexedSubscript:v9 - 1];

        v30 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
        v31 = [v30 objectAtIndexedSubscript:v9 - 1];

        v53 = [v31 firstAttribute];
        v32 = [v31 relation];
        v33 = [v31 secondItem];
        v34 = [v31 secondAttribute];
        [v31 multiplier];
        v36 = v35;
        [v31 constant];
        v38 = [NSLayoutConstraint constraintWithItem:v11 attribute:v53 relatedBy:v32 toItem:v33 attribute:v34 multiplier:v36 constant:v37];

        if (v57 == v9)
        {
          v39 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
          [v39 objectAtIndexedSubscript:v9 + 1];
          v40 = v58 = v38;

          v54 = [v40 firstAttribute];
          v52 = [v40 relation];
          v41 = [v40 secondItem];
          v42 = [v40 secondAttribute];
          [v40 multiplier];
          v44 = v43;
          [v40 constant];
          v46 = [NSLayoutConstraint constraintWithItem:v60 attribute:v54 relatedBy:v52 toItem:v41 attribute:v42 multiplier:v44 constant:v45];

          [v6 addObject:v40];
          [v5 addObject:v46];
          v47 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
          [v47 setObject:v46 atIndexedSubscript:v9];

          v38 = v58;
        }

        v17 = v56;
        [v6 addObject:v56];
        [v5 addObject:v38];
      }

      v15 = 0;
    }

    v48 = [(AXStickyKeysView *)self allStickyKeyLabels];
    [v48 removeObjectAtIndex:v9];

    v49 = [(AXStickyKeysView *)self allStickyKeyHorizontalConstraints];
    [v49 removeObjectAtIndex:v9 + 1];

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
    v63 = self;
    v50 = v65;
    [UIView animateWithDuration:v64 animations:v61 completion:0.25];
  }

LABEL_14:
}

- (void)removeAllStickyKeyStringsWithCompletion:(id)a3
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
  v5 = a3;
  v3 = v5;
  [UIView animateWithDuration:v6 animations:v4 completion:0.25];
}

- (void)_setUpHUDBackgroundViewAndAddConstraints:(id)a3
{
  v4 = a3;
  v5 = [(AXStickyKeysView *)self hudBackgroundView];

  if (!v5)
  {
    v6 = [UIVisualEffectView alloc];
    v7 = [UIBlurEffect effectWithStyle:2];
    v8 = [v6 initWithEffect:v7];

    v9 = [v8 layer];
    [v9 setCornerRadius:10.0];

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
    [v4 addObjectsFromArray:v13];

    [(AXStickyKeysView *)self setHudBackgroundView:v8];
  }
}

- (id)_newStickyKeyLabelForString:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(UILabel);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setText:v3];
  v5 = [v3 isEqualToString:@"fn"];

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