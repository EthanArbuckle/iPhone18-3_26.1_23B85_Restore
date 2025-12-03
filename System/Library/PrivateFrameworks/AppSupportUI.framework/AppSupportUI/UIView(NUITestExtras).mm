@interface UIView(NUITestExtras)
- (double)sizeToBestFitAndLayoutIfNeeded;
- (double)testableEffectiveLayoutSizeFittingSize:()NUITestExtras;
- (double)testableSizeThatFits:()NUITestExtras;
@end

@implementation UIView(NUITestExtras)

- (double)sizeToBestFitAndLayoutIfNeeded
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  _wantsConstraintBasedLayout = [self _wantsConstraintBasedLayout];
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  if (_wantsConstraintBasedLayout)
  {
    [self systemLayoutSizeFittingSize:{v5, v6}];
  }

  else
  {
    [self effectiveLayoutSizeFittingSize:{v5, v6}];
  }

  v9 = v7;
  [self setFrame:{v2, v3, v7, v8}];
  [self layoutIfNeeded];
  return v9;
}

- (double)testableSizeThatFits:()NUITestExtras
{
  [self sizeThatFits:?];
  [self alignmentRectForFrame:{0.0, 0.0, v2, v3}];
  return v4;
}

- (double)testableEffectiveLayoutSizeFittingSize:()NUITestExtras
{
  [self sizeThatFits:?];
  [self alignmentRectForFrame:{0.0, 0.0, v2, v3}];
  return v4;
}

@end