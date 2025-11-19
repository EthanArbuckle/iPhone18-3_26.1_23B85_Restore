@interface CNContactDowntimeView
+ (id)lockImageAttachment;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CNContactDowntimeView)initWithFrame:(CGRect)a3;
- (void)invalidateIntrinsicContentSize;
- (void)setAb_textAttributes:(id)a3;
- (void)setElements:(int64_t)a3;
- (void)updateAttributedText;
@end

@implementation CNContactDowntimeView

- (void)setAb_textAttributes:(id)a3
{
  v20 = a3;
  objc_storeStrong(&self->_ab_textAttributes, a3);
  [(UILabel *)self->_downtimeLabel setAb_textAttributes:v20];
  v5 = [(UILabel *)self->_downtimeLabel font];
  [v5 lineHeight];
  v7 = v6 * 0.8;

  [(NSTextAttachment *)self->_imageAttachment bounds];
  if (v9 != v7)
  {
    v10 = v8;
    v11 = [(NSTextAttachment *)self->_imageAttachment image];
    [v11 size];
    v13 = v12;
    v15 = v14;

    v16 = v13 / v15;
    v17 = [(NSTextAttachment *)self->_imageAttachment image];
    [v17 baselineOffsetFromBottom];
    v19 = -(v18 * (v7 / v15));

    [(NSTextAttachment *)self->_imageAttachment setBounds:v10, v19, v7 * v16, v7];
    [(CNContactDowntimeView *)self invalidateIntrinsicContentSize];
  }
}

- (void)invalidateIntrinsicContentSize
{
  [(UILabel *)self->_downtimeLabel invalidateIntrinsicContentSize];
  v3.receiver = self;
  v3.super_class = CNContactDowntimeView;
  [(CNContactDowntimeView *)&v3 invalidateIntrinsicContentSize];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UILabel *)self->_downtimeLabel sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->_downtimeLabel intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)updateAttributedText
{
  v9 = objc_alloc_init(MEMORY[0x1E696AD40]);
  if (([(CNContactDowntimeView *)self elements]& 2) != 0)
  {
    v3 = objc_alloc(MEMORY[0x1E696AAB0]);
    v4 = CNContactsUIBundle();
    v5 = [v4 localizedStringForKey:@"DOWNTIME_CONTACT" value:&stru_1F0CE7398 table:@"Localized"];
    v6 = [v3 initWithString:v5];
    [v9 appendAttributedString:v6];
  }

  if (([(CNContactDowntimeView *)self elements]& 1) != 0)
  {
    v7 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:self->_imageAttachment];
    [v9 appendAttributedString:v7];
  }

  v8 = [(CNContactDowntimeView *)self downtimeLabel];
  [v8 setAttributedText:v9];
}

- (void)setElements:(int64_t)a3
{
  if (self->_elements != a3)
  {
    self->_elements = a3;
    [(CNContactDowntimeView *)self updateAttributedText];

    [(CNContactDowntimeView *)self invalidateIntrinsicContentSize];
  }
}

- (CNContactDowntimeView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v28[4] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = CNContactDowntimeView;
  v7 = [(CNContactDowntimeView *)&v27 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{x, y, width, height}];
    downtimeLabel = v7->_downtimeLabel;
    v7->_downtimeLabel = v8;

    [(UILabel *)v7->_downtimeLabel setTextAlignment:1];
    [(UILabel *)v7->_downtimeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v7->_downtimeLabel setNumberOfLines:0];
    v10 = [objc_opt_class() lockImageAttachment];
    imageAttachment = v7->_imageAttachment;
    v7->_imageAttachment = v10;

    [(CNContactDowntimeView *)v7 addSubview:v7->_downtimeLabel];
    v26 = [(UILabel *)v7->_downtimeLabel topAnchor];
    v25 = [(CNContactDowntimeView *)v7 topAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v28[0] = v24;
    v23 = [(UILabel *)v7->_downtimeLabel bottomAnchor];
    v12 = [(CNContactDowntimeView *)v7 bottomAnchor];
    v13 = [v23 constraintEqualToAnchor:v12];
    v28[1] = v13;
    v14 = [(UILabel *)v7->_downtimeLabel leftAnchor];
    v15 = [(CNContactDowntimeView *)v7 leftAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v28[2] = v16;
    v17 = [(UILabel *)v7->_downtimeLabel rightAnchor];
    v18 = [(CNContactDowntimeView *)v7 rightAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v28[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
    [(CNContactDowntimeView *)v7 addConstraints:v20];

    v21 = v7;
  }

  return v7;
}

+ (id)lockImageAttachment
{
  v2 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  [v2 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD78] scale:1];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"lock.fill" withConfiguration:v3];
  v5 = [v4 imageWithRenderingMode:2];
  [v2 setImage:v5];

  return v2;
}

@end