@interface ICNoteResultsCollaboratorsBadgeView
- (CGSize)shadowOffset;
- (double)dimension;
- (double)spacing;
@end

@implementation ICNoteResultsCollaboratorsBadgeView

- (double)dimension
{
  if ((+[UIDevice ic_isVision]& 1) != 0)
  {
    return 44.0;
  }

  v4 = [(ICNoteResultsCollaboratorsBadgeView *)self traitCollection];
  if ([v4 ic_hasCompactSize])
  {
    v3 = 24.0;
  }

  else
  {
    v3 = 32.0;
  }

  return v3;
}

- (CGSize)shadowOffset
{
  v2 = 0.0;
  v3 = 2.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)spacing
{
  v3 = -28.0;
  if ((+[UIDevice ic_isVision]& 1) == 0)
  {
    v4 = [(ICNoteResultsCollaboratorsBadgeView *)self traitCollection];
    if ([v4 ic_hasCompactSize])
    {
      v3 = -12.0;
    }

    else
    {
      v3 = -16.0;
    }
  }

  return v3;
}

@end