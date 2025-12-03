@interface ICPreviewFooterView
- (UILabel)contentsLabel;
- (UILabel)sharingLabel;
- (UILabel)titleLabel;
- (void)awakeFromNib;
- (void)setContentsSubtitle:(id)subtitle;
- (void)setSharingSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation ICPreviewFooterView

- (void)awakeFromNib
{
  v20.receiver = self;
  v20.super_class = ICPreviewFooterView;
  [(ICPreviewFooterView *)&v20 awakeFromNib];
  titleLabel = [(ICPreviewFooterView *)self titleLabel];
  [titleLabel setText:0];

  titleLabel2 = [(ICPreviewFooterView *)self titleLabel];
  font = [titleLabel2 font];
  ic_fontWithSingleLineA = [font ic_fontWithSingleLineA];
  titleLabel3 = [(ICPreviewFooterView *)self titleLabel];
  [titleLabel3 setFont:ic_fontWithSingleLineA];

  contentsLabel = [(ICPreviewFooterView *)self contentsLabel];
  [contentsLabel setText:0];

  contentsLabel2 = [(ICPreviewFooterView *)self contentsLabel];
  font2 = [contentsLabel2 font];
  ic_fontWithSingleLineA2 = [font2 ic_fontWithSingleLineA];
  contentsLabel3 = [(ICPreviewFooterView *)self contentsLabel];
  [contentsLabel3 setFont:ic_fontWithSingleLineA2];

  contentsLabel4 = [(ICPreviewFooterView *)self contentsLabel];
  [contentsLabel4 setHidden:1];

  sharingLabel = [(ICPreviewFooterView *)self sharingLabel];
  [sharingLabel setText:0];

  sharingLabel2 = [(ICPreviewFooterView *)self sharingLabel];
  font3 = [sharingLabel2 font];
  ic_fontWithSingleLineA3 = [font3 ic_fontWithSingleLineA];
  sharingLabel3 = [(ICPreviewFooterView *)self sharingLabel];
  [sharingLabel3 setFont:ic_fontWithSingleLineA3];

  sharingLabel4 = [(ICPreviewFooterView *)self sharingLabel];
  [sharingLabel4 setHidden:1];
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  titleLabel = [(ICPreviewFooterView *)self titleLabel];
  [titleLabel setText:titleCopy];

  titleLabel2 = [(ICPreviewFooterView *)self titleLabel];
  [titleLabel2 setHidden:titleCopy == 0];
}

- (void)setContentsSubtitle:(id)subtitle
{
  objc_storeStrong(&self->_contentsSubtitle, subtitle);
  subtitleCopy = subtitle;
  contentsLabel = [(ICPreviewFooterView *)self contentsLabel];
  [contentsLabel setText:subtitleCopy];

  contentsLabel2 = [(ICPreviewFooterView *)self contentsLabel];
  [contentsLabel2 setHidden:subtitleCopy == 0];
}

- (void)setSharingSubtitle:(id)subtitle
{
  objc_storeStrong(&self->_sharingSubtitle, subtitle);
  subtitleCopy = subtitle;
  sharingLabel = [(ICPreviewFooterView *)self sharingLabel];
  [sharingLabel setText:subtitleCopy];

  sharingLabel2 = [(ICPreviewFooterView *)self sharingLabel];
  [sharingLabel2 setHidden:subtitleCopy == 0];
}

- (UILabel)titleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_titleLabel);

  return WeakRetained;
}

- (UILabel)contentsLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_contentsLabel);

  return WeakRetained;
}

- (UILabel)sharingLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_sharingLabel);

  return WeakRetained;
}

@end