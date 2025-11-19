@interface RTIDocumentState(AFUIExtras)
- (double)_popoverAnchorRectForPopoverPresentedFromVerticalEdge:()AFUIExtras;
- (double)_popoverAnchorRectInClientFrameForPopoverPresentedFromVerticalEdge:()AFUIExtras;
@end

@implementation RTIDocumentState(AFUIExtras)

- (double)_popoverAnchorRectForPopoverPresentedFromVerticalEdge:()AFUIExtras
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([a1 firstSelectionRectInEntitySpace], x = v5.origin.x, CGRectIsNull(v5)))
  {
    [a1 clientFrameInEntitySpace];
    return v3;
  }

  return x;
}

- (double)_popoverAnchorRectInClientFrameForPopoverPresentedFromVerticalEdge:()AFUIExtras
{
  [a1 _popoverAnchorRectForPopoverPresentedFromVerticalEdge:?];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [a1 clientFrameInEntitySpace];
  v15.origin.x = v3;
  v15.origin.y = v5;
  v15.size.width = v7;
  v15.size.height = v9;
  v10 = CGRectIntersectsRect(v14, v15);
  [a1 clientFrameInEntitySpace];
  if (v10)
  {
    v12 = v3 - v11;
    [a1 clientFrameInEntitySpace];
  }

  else
  {
    [a1 clientFrameInEntitySpace];
    return 0.0;
  }

  return v12;
}

@end