@interface MFCollapsedSubjectMessageCell
- (MFCollapsedSubjectMessageCell)initWithFrame:(CGRect)a3;
@end

@implementation MFCollapsedSubjectMessageCell

- (MFCollapsedSubjectMessageCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MFCollapsedSubjectMessageCell;
  v3 = [(MFCollapsedMessageCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MFCollapsedMessageCell *)v3 setShouldShowSubject:1];
  }

  return v4;
}

@end