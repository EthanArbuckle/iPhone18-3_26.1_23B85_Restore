@interface CKAssistantUIAvatarView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKAssistantUIAvatarView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setContactsForAvatarView:(id)a3;
- (void)setToFieldText:(id)a3;
@end

@implementation CKAssistantUIAvatarView

- (CKAssistantUIAvatarView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v22.receiver = self;
  v22.super_class = CKAssistantUIAvatarView;
  v7 = [(CKAssistantUIAvatarView *)&v22 initWithFrame:?];
  if (v7)
  {
    v8 = [[UIView alloc] initWithFrame:{x, y, width, height}];
    blurView = v7->_blurView;
    v7->_blurView = v8;

    v10 = [UIBlurEffect effectWithStyle:0];
    v11 = [[UIVisualEffectView alloc] initWithEffect:v10];
    [v11 setAutoresizingMask:18];
    [(UIView *)v7->_blurView addSubview:v11];
    [(CKAssistantUIAvatarView *)v7 addSubview:v7->_blurView];
    v12 = [[CNAvatarView alloc] initWithFrame:{x, y, width, height}];
    avatar = v7->_avatar;
    v7->_avatar = v12;

    [(CNAvatarView *)v7->_avatar setAsynchronousRendering:1];
    [(CNAvatarView *)v7->_avatar setUserInteractionEnabled:0];
    [(CNAvatarView *)v7->_avatar setShowsContactOnTap:0];
    [(CKAssistantUIAvatarView *)v7 addSubview:v7->_avatar];
    v14 = [[UILabel alloc] initWithFrame:{x, y, width, height}];
    toLabel = v7->_toLabel;
    v7->_toLabel = v14;

    v16 = v7->_toLabel;
    v17 = +[UIColor blackColor];
    [(UILabel *)v16 setTextColor:v17];

    v18 = v7->_toLabel;
    v19 = +[CKUIBehavior sharedBehaviors];
    v20 = [v19 avatarNameFont];
    [(UILabel *)v18 setFont:v20];

    [(UILabel *)v7->_toLabel setTextAlignment:1];
    [(UILabel *)v7->_toLabel setNumberOfLines:1];
    [(CKAssistantUIAvatarView *)v7 addSubview:v7->_toLabel];
  }

  return v7;
}

- (void)setToFieldText:(id)a3
{
  v6 = a3;
  v4 = [(UILabel *)self->_toLabel text];
  v5 = [v6 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_toLabel setText:v6];
    [(CKAssistantUIAvatarView *)self setNeedsLayout];
  }
}

- (void)setContactsForAvatarView:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4 && [v4 count])
  {
    [(CNAvatarView *)self->_avatar setContacts:v7];
  }

  else
  {
    avatar = self->_avatar;
    v6 = objc_alloc_init(CNContact);
    [(CNAvatarView *)avatar setContact:v6];
  }
}

- (void)layoutSubviews
{
  [(CKAssistantUIAvatarView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = +[CKUIBehavior sharedBehaviors];
  [v11 conversationListContactImageDiameter];
  v13 = v12;

  [(CNAvatarView *)self->_avatar setFrame:v8 * 0.5 - v13 * 0.5, 10.0, v13, v13];
  [(UILabel *)self->_toLabel sizeThatFits:v8 + -40.0, 1.79769313e308];
  v15 = v14;
  v17 = v16;
  toLabel = self->_toLabel;
  v19 = v8 * 0.5 - v14 * 0.5;
  [(CNAvatarView *)self->_avatar frame];
  [(UILabel *)toLabel setFrame:v19, CGRectGetMaxY(v22) + 5.0, v15, v17];
  blurView = self->_blurView;

  [(UIView *)blurView setFrame:v4, v6, v8, v10];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [CKUIBehavior sharedBehaviors:a3.width];
  [v5 conversationListContactImageDiameter];
  v7 = v6;

  [(UILabel *)self->_toLabel sizeThatFits:width + -40.0, 1.79769313e308];
  v9 = v7 + 5.0 + v8 + 20.0;
  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

@end