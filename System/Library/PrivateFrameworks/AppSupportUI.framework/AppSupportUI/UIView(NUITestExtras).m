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
  v4 = [a1 _wantsConstraintBasedLayout];
  v5 = *MEMORY[0x277CBF3A8];
  v6 = *(MEMORY[0x277CBF3A8] + 8);
  if (v4)
  {
    [a1 systemLayoutSizeFittingSize:{v5, v6}];
  }

  else
  {
    [a1 effectiveLayoutSizeFittingSize:{v5, v6}];
  }

  v9 = v7;
  [a1 setFrame:{v2, v3, v7, v8}];
  [a1 layoutIfNeeded];
  return v9;
}

- (double)testableSizeThatFits:()NUITestExtras
{
  [a1 sizeThatFits:?];
  [a1 alignmentRectForFrame:{0.0, 0.0, v2, v3}];
  return v4;
}

- (double)testableEffectiveLayoutSizeFittingSize:()NUITestExtras
{
  [a1 sizeThatFits:?];
  [a1 alignmentRectForFrame:{0.0, 0.0, v2, v3}];
  return v4;
}

@end