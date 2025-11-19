@interface ICPreviewFooterView
- (UILabel)contentsLabel;
- (UILabel)sharingLabel;
- (UILabel)titleLabel;
- (void)awakeFromNib;
- (void)setContentsSubtitle:(id)a3;
- (void)setSharingSubtitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation ICPreviewFooterView

- (void)awakeFromNib
{
  v20.receiver = self;
  v20.super_class = ICPreviewFooterView;
  [(ICPreviewFooterView *)&v20 awakeFromNib];
  v3 = [(ICPreviewFooterView *)self titleLabel];
  [v3 setText:0];

  v4 = [(ICPreviewFooterView *)self titleLabel];
  v5 = [v4 font];
  v6 = [v5 ic_fontWithSingleLineA];
  v7 = [(ICPreviewFooterView *)self titleLabel];
  [v7 setFont:v6];

  v8 = [(ICPreviewFooterView *)self contentsLabel];
  [v8 setText:0];

  v9 = [(ICPreviewFooterView *)self contentsLabel];
  v10 = [v9 font];
  v11 = [v10 ic_fontWithSingleLineA];
  v12 = [(ICPreviewFooterView *)self contentsLabel];
  [v12 setFont:v11];

  v13 = [(ICPreviewFooterView *)self contentsLabel];
  [v13 setHidden:1];

  v14 = [(ICPreviewFooterView *)self sharingLabel];
  [v14 setText:0];

  v15 = [(ICPreviewFooterView *)self sharingLabel];
  v16 = [v15 font];
  v17 = [v16 ic_fontWithSingleLineA];
  v18 = [(ICPreviewFooterView *)self sharingLabel];
  [v18 setFont:v17];

  v19 = [(ICPreviewFooterView *)self sharingLabel];
  [v19 setHidden:1];
}

- (void)setTitle:(id)a3
{
  objc_storeStrong(&self->_title, a3);
  v5 = a3;
  v6 = [(ICPreviewFooterView *)self titleLabel];
  [v6 setText:v5];

  v7 = [(ICPreviewFooterView *)self titleLabel];
  [v7 setHidden:v5 == 0];
}

- (void)setContentsSubtitle:(id)a3
{
  objc_storeStrong(&self->_contentsSubtitle, a3);
  v5 = a3;
  v6 = [(ICPreviewFooterView *)self contentsLabel];
  [v6 setText:v5];

  v7 = [(ICPreviewFooterView *)self contentsLabel];
  [v7 setHidden:v5 == 0];
}

- (void)setSharingSubtitle:(id)a3
{
  objc_storeStrong(&self->_sharingSubtitle, a3);
  v5 = a3;
  v6 = [(ICPreviewFooterView *)self sharingLabel];
  [v6 setText:v5];

  v7 = [(ICPreviewFooterView *)self sharingLabel];
  [v7 setHidden:v5 == 0];
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