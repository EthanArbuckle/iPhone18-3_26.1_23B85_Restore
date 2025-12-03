@interface PKSelectionModificationKnob
- (double)_knobTailWidth;
- (double)_rectForKnob;
- (double)distanceFromKnobCenterToPoint:(double)point;
- (id)_updateKnobAppearance;
- (id)accessibilityIdentifier;
- (id)didBeginBrushSelection;
- (id)didEndBrushSelection;
- (id)setKnobColor:(id *)result;
- (void)dealloc;
- (void)layoutSublayers;
@end

@implementation PKSelectionModificationKnob

- (id)_updateKnobAppearance
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (*(result + 64) != 1)
  {
    _rectForKnob = [(PKSelectionModificationKnob *)result _rectForKnob];
    v17 = v18;
    v13 = v19;
    v15 = v20;
    _knobTailWidth = [PKSelectionModificationKnob _knobTailWidth];
    [v1 bounds];
    v23 = v22 + -1.0;
    v24 = _knobTailWidth * 0.5;
    v25 = v1[9];
    v26 = _knobTailWidth * 0.5;
    if (*(v1 + 65) == 1)
    {
      if (v25 == 1)
      {
        goto LABEL_9;
      }
    }

    else if (!v25)
    {
LABEL_9:
      [v1 bounds];
      v28 = v27;
      [v1 bounds];
      v34 = v28 * 0.5 - v24;
      v4 = v29 * 0.5 - v26;
      v10 = v24 + v23;
      v2 = _knobTailWidth;
      v16 = v33;
      goto LABEL_10;
    }

    v26 = v22 + -1.0;
    goto LABEL_9;
  }

  v2 = *(MEMORY[0x1E695F058] + 16);
  v3 = *(MEMORY[0x1E695F058] + 24);
  v4 = *(MEMORY[0x1E695F058] + 8);
  v34 = *MEMORY[0x1E695F058];
  [result bounds];
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  MidX = CGRectGetMidX(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v10 = v3;
  v37.size.height = height;
  MidY = CGRectGetMidY(v37);
  [v1 bounds];
  v13 = v12;
  [v1 bounds];
  v15 = v14;
  v16 = MidX - v13 * 0.5;
  v17 = MidY - v14 * 0.5;
LABEL_10:
  [v1[6] setBackgroundColor:v1[10]];
  [v1[6] setCornerRadius:v13 * 0.5];
  [v1[6] setFrame:{v16, v17, v13, v15}];
  [v1[7] setBackgroundColor:v1[10]];
  [v1[7] setFrame:{v34, v4, v2, v10}];
  v30 = v1[7];
  v31 = [PKSelectionModificationKnob _knobTailWidth]* 0.5;

  return [v30 setCornerRadius:v31];
}

- (double)_rectForKnob
{
  if (self)
  {
    v2 = *(self + 72);
    if (*(self + 65) == 1)
    {
      if (v2 == 1)
      {
LABEL_4:
        [self bounds];
        [self bounds];
        return 0.0;
      }
    }

    else if (!v2)
    {
      goto LABEL_4;
    }

    [self bounds];
    [self bounds];
    [self bounds];
  }

  return 0.0;
}

- (double)_knobTailWidth
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  result = 3.5;
  if (userInterfaceIdiom == 1)
  {
    return 4.0;
  }

  return result;
}

- (void)layoutSublayers
{
  v3.receiver = self;
  v3.super_class = PKSelectionModificationKnob;
  [(PKSelectionModificationKnob *)&v3 layoutSublayers];
  [(PKSelectionModificationKnob *)&self->super.super.isa _updateKnobAppearance];
}

- (void)dealloc
{
  CGColorRelease(self->_knobColor);
  v3.receiver = self;
  v3.super_class = PKSelectionModificationKnob;
  [(PKSelectionModificationKnob *)&v3 dealloc];
}

- (id)accessibilityIdentifier
{
  if (self->_knobLocation)
  {
    return @"com.apple.pencilkit.rightHalfPop";
  }

  else
  {
    return @"com.apple.pencilkit.leftHalfPop";
  }
}

- (double)distanceFromKnobCenterToPoint:(double)point
{
  if (!self)
  {
    return 0.0;
  }

  v15.origin.x = [(PKSelectionModificationKnob *)self _rectForKnob];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MidY = CGRectGetMidY(v16);
  [self frame];
  return sqrt((point - (MidY + v13)) * (point - (MidY + v13)) + (a2 - (MidX + v12)) * (a2 - (MidX + v12)));
}

- (id)setKnobColor:(id *)result
{
  if (result)
  {
    v3 = result;
    result = CGColorEqualToColor(result[10], a2);
    if ((result & 1) == 0)
    {
      CGColorRelease(v3[10]);
      v3[10] = CGColorRetain(a2);

      return [(PKSelectionModificationKnob *)v3 _updateKnobAppearance];
    }
  }

  return result;
}

- (id)didBeginBrushSelection
{
  if (result)
  {
    v2 = result;
    LODWORD(a2) = 0.5;
    [result setOpacity:a2];
    [v2[7] setHidden:1];
    *(v2 + 64) = 1;

    return [(PKSelectionModificationKnob *)v2 _updateKnobAppearance];
  }

  return result;
}

- (id)didEndBrushSelection
{
  if (result)
  {
    v2 = result;
    LODWORD(a2) = 1.0;
    [result setOpacity:a2];
    [v2[7] setHidden:0];
    *(v2 + 64) = 0;

    return [(PKSelectionModificationKnob *)v2 _updateKnobAppearance];
  }

  return result;
}

@end