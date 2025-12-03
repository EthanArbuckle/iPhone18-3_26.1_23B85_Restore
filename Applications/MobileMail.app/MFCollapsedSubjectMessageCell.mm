@interface MFCollapsedSubjectMessageCell
- (MFCollapsedSubjectMessageCell)initWithFrame:(CGRect)frame;
@end

@implementation MFCollapsedSubjectMessageCell

- (MFCollapsedSubjectMessageCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MFCollapsedSubjectMessageCell;
  v3 = [(MFCollapsedMessageCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFCollapsedMessageCell *)v3 setShouldShowSubject:1];
  }

  return v4;
}

@end