@interface ISLanguageTableViewCell
- (void)layoutSubviews;
@end

@implementation ISLanguageTableViewCell

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ISLanguageTableViewCell;
  [(ISLanguageTableViewCell *)&v3 layoutSubviews];
  layoutSubviewsPatchForTextLabelTruncation(self);
}

@end