@interface UIView
@end

@implementation UIView

id __68__UIView_MFUtilities__mf_pinToView_layoutMarginEdges_flexibleEdges___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) _mf_anchorForEdge:a2 relativeToMargin:0];
  v6 = [*(a1 + 40) _mf_anchorForEdge:a2 relativeToMargin:(*(a1 + 56) & a2) != 0];
  if ((v4 & a2) != 0)
  {
    if ((a2 & 3) != 0)
    {
      [v5 constraintGreaterThanOrEqualToAnchor:v6];
    }

    else
    {
      [v5 constraintLessThanOrEqualToAnchor:v6];
    }
    v7 = ;
  }

  else
  {
    v7 = [v5 constraintEqualToAnchor:v6];
  }

  v8 = v7;

  return v8;
}

@end