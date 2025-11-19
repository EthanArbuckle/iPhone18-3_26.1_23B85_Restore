@interface ISLanguageSubtitleDisclosureTableCell
- (void)layoutSubviews;
@end

@implementation ISLanguageSubtitleDisclosureTableCell

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ISLanguageSubtitleDisclosureTableCell;
  [(ISLanguageSubtitleDisclosureTableCell *)&v3 layoutSubviews];
  layoutSubviewsPatchForTextLabelTruncation(self);
}

@end