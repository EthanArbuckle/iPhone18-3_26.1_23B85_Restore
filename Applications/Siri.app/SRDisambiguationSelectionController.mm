@interface SRDisambiguationSelectionController
- (double)baselineOffsetFromBottom;
- (double)desiredHeightForWidth:(double)width;
- (void)loadView;
@end

@implementation SRDisambiguationSelectionController

- (void)loadView
{
  v7 = [[SRUserUtteranceView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  aceObject = [(SRDisambiguationSelectionController *)self aceObject];
  selectionResponse = [aceObject selectionResponse];

  if (!selectionResponse)
  {
    aceObject2 = [(SRDisambiguationSelectionController *)self aceObject];
    selectionResponse = [aceObject2 selectionText];

    if (!selectionResponse)
    {
      aceObject3 = [(SRDisambiguationSelectionController *)self aceObject];
      selectionResponse = [aceObject3 title];
    }
  }

  [(SRUserUtteranceView *)v7 setText:selectionResponse];
  [(SRUserUtteranceView *)v7 setEditable:0];
  [(SRUserUtteranceView *)v7 setBlendEffectEnabled:1];
  [(SRDisambiguationSelectionController *)self setView:v7];
}

- (double)desiredHeightForWidth:(double)width
{
  view = [(SRDisambiguationSelectionController *)self view];
  [view sizeThatFits:{width, 1.79769313e308}];
  v6 = v5;

  return v6;
}

- (double)baselineOffsetFromBottom
{
  view = [(SRDisambiguationSelectionController *)self view];
  [view baselineOffsetFromBottom];
  v4 = v3;

  return v4;
}

@end