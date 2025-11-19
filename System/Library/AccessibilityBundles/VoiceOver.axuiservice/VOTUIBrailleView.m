@interface VOTUIBrailleView
- (VOTUIBrailleView)initWithDotNumberPositions:(id)a3 typingMode:(int64_t)a4;
- (id)_constraintsToCenterItem:(id)a3 withItem:(id)a4;
- (id)_dotCircleImageFilled:(BOOL)a3;
- (id)_generateAndStoreConstraintsForDotNumbers;
- (id)_generateAndStoreTypingModeConstraintsForInsertedTextLabel;
- (id)_xConstraintForDotNumber:(unint64_t)a3;
- (id)_yConstraintForDotNumber:(unint64_t)a3;
- (unint64_t)_numberOfDots;
- (void)_addSubviews;
- (void)_updateConstantsForDotNumberConstraints;
- (void)_updateDotsSevenAndEightVisibility;
- (void)displayDotNumbersWithReversed:(BOOL)a3;
- (void)flashInsertedText:(id)a3;
- (void)highlightBrailleDots:(id)a3;
- (void)setDotNumberPositions:(id)a3 typingMode:(int64_t)a4;
@end

@implementation VOTUIBrailleView

- (VOTUIBrailleView)initWithDotNumberPositions:(id)a3 typingMode:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = VOTUIBrailleView;
  v8 = [(VOTUIBrailleView *)&v11 init];
  if (v8)
  {
    v9 = [UIColor colorWithWhite:0.0 alpha:0.7];
    [(VOTUIBrailleView *)v8 setBackgroundColor:v9];

    v8->_typingMode = a4;
    objc_storeStrong(&v8->_dotNumberPositions, a3);
    [(VOTUIBrailleView *)v8 _addSubviews];
  }

  return v8;
}

- (void)setDotNumberPositions:(id)a3 typingMode:(int64_t)a4
{
  v10 = a3;
  if (self->_typingMode != a4)
  {
    v7 = [(VOTUIBrailleView *)self typingModeConstraintsForInsertedTextLabel];

    if (v7)
    {
      v8 = [(VOTUIBrailleView *)self typingModeConstraintsForInsertedTextLabel];
      [(VOTUIBrailleView *)self removeConstraints:v8];
    }
  }

  if (self->_dotNumberPositions != v10)
  {
    objc_storeStrong(&self->_dotNumberPositions, a3);
    [(VOTUIBrailleView *)self _updateConstantsForDotNumberConstraints];
    [(VOTUIBrailleView *)self _updateDotsSevenAndEightVisibility];
    [(VOTUIBrailleView *)self setNeedsLayout];
  }

  if (self->_typingMode != a4)
  {
    self->_typingMode = a4;
    v9 = [(VOTUIBrailleView *)self _generateAndStoreTypingModeConstraintsForInsertedTextLabel];
    [(VOTUIBrailleView *)self addConstraints:v9];
  }
}

- (void)flashInsertedText:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(UILabel *)self->_insertedTextLabel setText:v4];
    [(UILabel *)self->_insertedTextLabel setAlpha:1.0];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_A2AC;
    v5[3] = &unk_3D218;
    v5[4] = self;
    [UIView animateWithDuration:v5 animations:1.0];
  }
}

- (void)highlightBrailleDots:(id)a3
{
  v4 = a3;
  if ([(VOTUIBrailleView *)self _numberOfDots])
  {
    v5 = 1;
    do
    {
      v6 = [NSNumber numberWithUnsignedInteger:v5];
      v7 = [v4 containsObject:v6];

      v8 = [(VOTUIBrailleView *)self _circleViewForDotNumber:v5];
      v9 = v8;
      if (v7)
      {
        [v8 setAlpha:0.0];

        v10 = [(VOTUIBrailleView *)self _highlightedCircleViewForDotNumber:v5];
        [v10 setAlpha:0.5];
      }

      else
      {
        [v8 alpha];
        v12 = v11;

        if (v12 != 0.5)
        {
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = sub_A444;
          v13[3] = &unk_3D268;
          v13[4] = self;
          v13[5] = v5;
          [UIView animateWithDuration:v13 animations:0.3];
        }
      }

      ++v5;
    }

    while (v5 <= [(VOTUIBrailleView *)self _numberOfDots]);
  }
}

- (void)displayDotNumbersWithReversed:(BOOL)a3
{
  v3 = a3;
  v13[0] = &off_400D8;
  v13[1] = &off_40108;
  v14[0] = &off_400F0;
  v14[1] = &off_40120;
  v13[2] = &off_40138;
  v13[3] = &off_400F0;
  v14[2] = &off_40150;
  v14[3] = &off_400D8;
  v13[4] = &off_40120;
  v13[5] = &off_40150;
  v14[4] = &off_40108;
  v14[5] = &off_40138;
  v13[6] = &off_40168;
  v13[7] = &off_40180;
  v14[6] = &off_40180;
  v14[7] = &off_40168;
  v5 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:8];
  if ([(VOTUIBrailleView *)self _numberOfDots])
  {
    v6 = 1;
    do
    {
      v7 = v6;
      if (v3)
      {
        v8 = [NSNumber numberWithUnsignedInteger:v6];
        v9 = [v5 objectForKeyedSubscript:v8];
        v7 = [v9 unsignedIntegerValue];
      }

      v10 = [NSNumber numberWithUnsignedInteger:v7];
      v11 = AXFormatNumber();
      v12 = [(VOTUIBrailleView *)self _dotNumberViewForDotNumber:v6];
      [v12 setText:v11];

      ++v6;
    }

    while (v6 <= [(VOTUIBrailleView *)self _numberOfDots]);
  }
}

- (unint64_t)_numberOfDots
{
  v2 = [(VOTUIBrailleView *)self dotNumberPositions];
  v3 = [v2 count];

  if (v3 != (&dword_4 + 2) && v3 != &dword_8)
  {
    _AXAssert();
    if (v3 >= 9)
    {
      _AXAssert();
    }
  }

  return v3;
}

- (id)_dotCircleImageFilled:(BOOL)a3
{
  v3 = a3;
  if (qword_4B310 != -1)
  {
    sub_25DCC();
  }

  v4 = &qword_4B308;
  if (!v3)
  {
    v4 = &qword_4B300;
  }

  v5 = *v4;

  return v5;
}

- (void)_addSubviews
{
  v3 = +[NSMutableArray array];
  v4 = [(VOTUIBrailleView *)self _numberOfDots];
  v5 = [[NSMutableArray alloc] initWithCapacity:v4];
  dotNumberCircleViews = self->_dotNumberCircleViews;
  self->_dotNumberCircleViews = v5;

  v7 = [[NSMutableArray alloc] initWithCapacity:v4];
  dotNumberViews = self->_dotNumberViews;
  self->_dotNumberViews = v7;

  v9 = [[NSMutableArray alloc] initWithCapacity:v4];
  dotNumberHighlightedCircleViews = self->_dotNumberHighlightedCircleViews;
  self->_dotNumberHighlightedCircleViews = v9;

  v11 = +[NSMutableArray array];
  viewsForEightDotBrailleOnly = self->_viewsForEightDotBrailleOnly;
  self->_viewsForEightDotBrailleOnly = v11;

  v13 = 1;
  do
  {
    v14 = [UIImageView alloc];
    v15 = [(VOTUIBrailleView *)self _dotCircleImageFilled:0];
    v16 = [v14 initWithImage:v15];

    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v17 = [UIImageView alloc];
    v18 = [(VOTUIBrailleView *)self _dotCircleImageFilled:1];
    v19 = [v17 initWithImage:v18];

    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v16 setAlpha:0.5];
    [v19 setAlpha:0.0];
    v20 = objc_alloc_init(UILabel);
    v21 = [NSNumber numberWithUnsignedInteger:v13];
    v22 = AXFormatNumber();
    [v20 setText:v22];

    v23 = [UIFont _thinSystemFontOfSize:60.0];
    [v20 setFont:v23];

    v24 = +[UIColor whiteColor];
    [v20 setTextColor:v24];

    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NSMutableArray *)self->_dotNumberViews addObject:v20];
    [(VOTUIBrailleView *)self addSubview:v16];
    [(VOTUIBrailleView *)self addSubview:v19];
    [(VOTUIBrailleView *)self addSubview:v20];
    v25 = [(VOTUIBrailleView *)self _constraintsToCenterItem:v16 withItem:v19];
    [v3 addObjectsFromArray:v25];

    v26 = [(VOTUIBrailleView *)self _constraintsToCenterItem:v20 withItem:v16];
    [v3 addObjectsFromArray:v26];

    [(NSMutableArray *)self->_dotNumberCircleViews addObject:v16];
    [(NSMutableArray *)self->_dotNumberHighlightedCircleViews addObject:v19];
    v27 = v13 - 7;
    if ((v13 - 7) <= 1)
    {
      v28 = self->_viewsForEightDotBrailleOnly;
      v39[0] = v20;
      v39[1] = v16;
      v39[2] = v19;
      v29 = [NSArray arrayWithObjects:v39 count:3];
      [(NSMutableArray *)v28 addObjectsFromArray:v29];
    }

    v13 = v27 + 8;
  }

  while (v27 != 1);
  v30 = [(VOTUIBrailleView *)self xConstraintsForDotNumbers];
  if (v30)
  {

LABEL_8:
    _AXAssert();
    goto LABEL_9;
  }

  v31 = [(VOTUIBrailleView *)self yConstraintsForDotNumbers];

  if (v31)
  {
    goto LABEL_8;
  }

LABEL_9:
  v32 = [(VOTUIBrailleView *)self _generateAndStoreConstraintsForDotNumbers];
  [v3 addObjectsFromArray:v32];

  v33 = objc_alloc_init(UILabel);
  insertedTextLabel = self->_insertedTextLabel;
  self->_insertedTextLabel = v33;

  v35 = [UIFont _thinSystemFontOfSize:100.0];
  [(UILabel *)self->_insertedTextLabel setFont:v35];

  [(UILabel *)self->_insertedTextLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_insertedTextLabel setTextAlignment:1];
  v36 = +[UIColor whiteColor];
  [(UILabel *)self->_insertedTextLabel setTextColor:v36];

  [(UILabel *)self->_insertedTextLabel setAlpha:0.0];
  [(UILabel *)self->_insertedTextLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VOTUIBrailleView *)self addSubview:self->_insertedTextLabel];
  v37 = [NSLayoutConstraint constraintWithItem:self->_insertedTextLabel attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
  [v3 addObject:v37];

  v38 = [(VOTUIBrailleView *)self _generateAndStoreTypingModeConstraintsForInsertedTextLabel];
  [v3 addObjectsFromArray:v38];

  [(VOTUIBrailleView *)self addConstraints:v3];
  [(VOTUIBrailleView *)self _updateDotsSevenAndEightVisibility];
}

- (void)_updateDotsSevenAndEightVisibility
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_viewsForEightDotBrailleOnly;
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

        [*(*(&v8 + 1) + 8 * v7) setHidden:{-[VOTUIBrailleView _isEightDotBraille](self, "_isEightDotBraille", v8) ^ 1}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)_xConstraintForDotNumber:(unint64_t)a3
{
  v4 = [(VOTUIBrailleView *)self xConstraintsForDotNumbers];
  v5 = [v4 objectAtIndexedSubscript:a3 - 1];

  return v5;
}

- (id)_yConstraintForDotNumber:(unint64_t)a3
{
  v4 = [(VOTUIBrailleView *)self yConstraintsForDotNumbers];
  v5 = [v4 objectAtIndexedSubscript:a3 - 1];

  return v5;
}

- (id)_constraintsToCenterItem:(id)a3 withItem:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [NSLayoutConstraint constraintWithItem:v6 attribute:9 relatedBy:0 toItem:v5 attribute:9 multiplier:1.0 constant:0.0];
  v11[0] = v7;
  v8 = [NSLayoutConstraint constraintWithItem:v6 attribute:10 relatedBy:0 toItem:v5 attribute:10 multiplier:1.0 constant:0.0];

  v11[1] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:2];

  return v9;
}

- (id)_generateAndStoreTypingModeConstraintsForInsertedTextLabel
{
  v3 = +[NSMutableArray array];
  v4 = [(VOTUIBrailleView *)self typingMode];
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        if (v4 != 2)
        {
LABEL_5:
          v39 = [(VOTUIBrailleView *)self typingMode];
          _AXAssert();
          goto LABEL_22;
        }

        goto LABEL_9;
      }

      if ([(VOTUIBrailleView *)self _isEightDotBraille])
      {
        v28 = 7;
      }

      else
      {
        v28 = 3;
      }

      if ([(VOTUIBrailleView *)self _isEightDotBraille])
      {
        v29 = 8;
      }

      else
      {
        v29 = 6;
      }

      insertedTextLabel = self->_insertedTextLabel;
      v31 = [(VOTUIBrailleView *)self _circleViewForDotNumber:v28];
      v32 = [NSLayoutConstraint constraintWithItem:insertedTextLabel attribute:1 relatedBy:1 toItem:v31 attribute:2 multiplier:1.0 constant:10.0];
      [v3 addObject:v32];

      v33 = self->_insertedTextLabel;
      v34 = [(VOTUIBrailleView *)self _circleViewForDotNumber:v29];
      v35 = [NSLayoutConstraint constraintWithItem:v33 attribute:2 relatedBy:-1 toItem:v34 attribute:1 multiplier:1.0 constant:-10.0];
      [v3 addObject:v35];

      v36 = self->_insertedTextLabel;
      v27 = [(VOTUIBrailleView *)self _circleViewForDotNumber:v28];
      v37 = [NSLayoutConstraint constraintWithItem:v36 attribute:10 relatedBy:0 toItem:v27 attribute:10 multiplier:1.0 constant:0.0];
      [v3 addObject:v37];

LABEL_21:
      goto LABEL_22;
    }

    v21 = self->_insertedTextLabel;
    v22 = [(VOTUIBrailleView *)self _circleViewForDotNumber:4];
    v23 = [NSLayoutConstraint constraintWithItem:v21 attribute:1 relatedBy:1 toItem:v22 attribute:2 multiplier:1.0 constant:10.0];
    [v3 addObject:v23];

    v24 = self->_insertedTextLabel;
    v25 = [(VOTUIBrailleView *)self _circleViewForDotNumber:1];
    v26 = [NSLayoutConstraint constraintWithItem:v24 attribute:2 relatedBy:-1 toItem:v25 attribute:1 multiplier:1.0 constant:-10.0];
    [v3 addObject:v26];

    v5 = self->_insertedTextLabel;
LABEL_13:
    v27 = [NSLayoutConstraint constraintWithItem:v5 attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
    [v3 addObject:v27];
    goto LABEL_21;
  }

  if ((v4 - 3) < 2)
  {
    v5 = self->_insertedTextLabel;
    goto LABEL_13;
  }

  if (v4 != 5)
  {
    goto LABEL_5;
  }

LABEL_9:
  v6 = self->_insertedTextLabel;
  v7 = [(VOTUIBrailleView *)self _circleViewForDotNumber:1];
  v8 = [NSLayoutConstraint constraintWithItem:v6 attribute:4 relatedBy:1 toItem:v7 attribute:3 multiplier:1.0 constant:10.0];
  [v3 addObject:v8];

  v9 = self->_insertedTextLabel;
  v10 = [(VOTUIBrailleView *)self _circleViewForDotNumber:2];
  v11 = [NSLayoutConstraint constraintWithItem:v9 attribute:4 relatedBy:1 toItem:v10 attribute:3 multiplier:1.0 constant:10.0];
  [v3 addObject:v11];

  v12 = self->_insertedTextLabel;
  v13 = [(VOTUIBrailleView *)self _circleViewForDotNumber:3];
  v14 = [NSLayoutConstraint constraintWithItem:v12 attribute:4 relatedBy:1 toItem:v13 attribute:3 multiplier:1.0 constant:10.0];
  [v3 addObject:v14];

  if ([(VOTUIBrailleView *)self _isEightDotBraille])
  {
    v15 = self->_insertedTextLabel;
    v16 = [(VOTUIBrailleView *)self _circleViewForDotNumber:7];
    v17 = [NSLayoutConstraint constraintWithItem:v15 attribute:4 relatedBy:1 toItem:v16 attribute:3 multiplier:1.0 constant:10.0];
    [v3 addObject:v17];
  }

  v18 = self->_insertedTextLabel;
  v19 = [(VOTUIBrailleView *)self _circleViewForDotNumber:1];
  v20 = [NSLayoutConstraint constraintWithItem:v18 attribute:9 relatedBy:0 toItem:v19 attribute:9 multiplier:1.0 constant:0.0];
  [v3 addObject:v20];

LABEL_22:
  [(VOTUIBrailleView *)self setTypingModeConstraintsForInsertedTextLabel:v3, v39];

  return v3;
}

- (id)_generateAndStoreConstraintsForDotNumbers
{
  v3 = +[NSMutableArray array];
  v4 = +[NSMutableArray array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [(VOTUIBrailleView *)self dotNumberPositions];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  v7 = &_AXSGuidedAccessEnabled_ptr;
  if (!v6)
  {

    for (i = 1; i != 9; ++i)
    {
LABEL_11:
      v20 = [(VOTUIBrailleView *)self _circleViewForDotNumber:i];
      v21 = [v7[372] constraintWithItem:v20 attribute:9 relatedBy:0 toItem:self attribute:1 multiplier:1.0 constant:0.0];
      [v3 addObject:v21];

      v22 = [v7[372] constraintWithItem:v20 attribute:10 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:0.0];
      [v4 addObject:v22];
    }

    goto LABEL_12;
  }

  v8 = v6;
  v9 = v3;
  v10 = *v26;
  i = 1;
  do
  {
    for (j = 0; j != v8; j = j + 1)
    {
      if (*v26 != v10)
      {
        objc_enumerationMutation(v5);
      }

      [*(*(&v25 + 1) + 8 * j) CGPointValue];
      v14 = v13;
      v16 = v15;
      v17 = [(VOTUIBrailleView *)self _circleViewForDotNumber:i];
      v18 = [NSLayoutConstraint constraintWithItem:v17 attribute:9 relatedBy:0 toItem:self attribute:1 multiplier:1.0 constant:v14];
      [v9 addObject:v18];

      v19 = [NSLayoutConstraint constraintWithItem:v17 attribute:10 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v16];
      [v4 addObject:v19];

      ++i;
    }

    v8 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v8);

  v3 = v9;
  v7 = &_AXSGuidedAccessEnabled_ptr;
  if (i <= 8)
  {
    goto LABEL_11;
  }

LABEL_12:
  [(VOTUIBrailleView *)self setXConstraintsForDotNumbers:v3];
  [(VOTUIBrailleView *)self setYConstraintsForDotNumbers:v4];
  v23 = [v3 arrayByAddingObjectsFromArray:v4];

  return v23;
}

- (void)_updateConstantsForDotNumberConstraints
{
  v3 = [(VOTUIBrailleView *)self xConstraintsForDotNumbers];
  v4 = [v3 count];
  v5 = [(VOTUIBrailleView *)self dotNumberPositions];
  if (v4 < [v5 count])
  {

LABEL_4:
    v26 = [(VOTUIBrailleView *)self xConstraintsForDotNumbers];
    [v26 count];
    v10 = [(VOTUIBrailleView *)self yConstraintsForDotNumbers];
    [v10 count];
    v11 = [(VOTUIBrailleView *)self dotNumberPositions];
    [v11 count];
    _AXAssert();

    return;
  }

  v6 = [(VOTUIBrailleView *)self yConstraintsForDotNumbers];
  v7 = [v6 count];
  v8 = [(VOTUIBrailleView *)self dotNumberPositions];
  v9 = [v8 count];

  if (v7 < v9)
  {
    goto LABEL_4;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [(VOTUIBrailleView *)self dotNumberPositions];
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v28;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v27 + 1) + 8 * i) CGPointValue];
        v19 = v18;
        v21 = v20;
        v22 = [(VOTUIBrailleView *)self xConstraintsForDotNumbers];
        v23 = [v22 objectAtIndexedSubscript:v15];

        [v23 setConstant:v19];
        v24 = [(VOTUIBrailleView *)self yConstraintsForDotNumbers];
        v25 = [v24 objectAtIndexedSubscript:v15];

        [v25 setConstant:v21];
        ++v15;
      }

      v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }
}

@end