@interface CHFriendInboxBadgeView
- (CHFriendInboxBadgeView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setBadgeText:(id)text;
- (void)setTintColor:(id)color;
- (void)sizeToFit;
@end

@implementation CHFriendInboxBadgeView

- (CHFriendInboxBadgeView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = CHFriendInboxBadgeView;
  v3 = [(CHFriendInboxBadgeView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIImage imageNamed:@"ContactsBadgeBackground"];
    v5 = [v4 imageWithRenderingMode:2];

    [v5 size];
    v7 = [v5 resizableImageWithCapInsets:{0.0, v6 * 0.5 + -0.5, 0.0, v6 * 0.5 + -0.5}];
    v8 = [[UIImageView alloc] initWithImage:v7];
    backgroundImageView = v3->_backgroundImageView;
    v3->_backgroundImageView = v8;

    [(CHFriendInboxBadgeView *)v3 addSubview:v3->_backgroundImageView];
    v10 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    badgeTextLabel = v3->_badgeTextLabel;
    v3->_badgeTextLabel = v10;

    [(UILabel *)v3->_badgeTextLabel setTextAlignment:1];
    v12 = [UIFont systemFontOfSize:13.0];
    [(UILabel *)v3->_badgeTextLabel setFont:v12];

    v13 = +[UIColor blackColor];
    [(UILabel *)v3->_badgeTextLabel setTextColor:v13];

    [(CHFriendInboxBadgeView *)v3 addSubview:v3->_badgeTextLabel];
  }

  return v3;
}

- (void)layoutSubviews
{
  [(CHFriendInboxBadgeView *)self bounds];
  [(UIImageView *)self->_backgroundImageView setFrame:?];
  [(CHFriendInboxBadgeView *)self bounds];
  [(UILabel *)self->_badgeTextLabel setFrame:?];
  [(CHFriendInboxBadgeView *)self bounds];
  MidX = CGRectGetMidX(v7);
  [(CHFriendInboxBadgeView *)self bounds];
  MidY = CGRectGetMidY(v8);
  badgeTextLabel = self->_badgeTextLabel;

  [(UILabel *)badgeTextLabel setCenter:MidX, MidY];
}

- (void)sizeToFit
{
  [(UILabel *)self->_badgeTextLabel sizeToFit];
  image = [(UIImageView *)self->_backgroundImageView image];
  [image size];
  v5 = v4;

  [(UILabel *)self->_badgeTextLabel bounds];
  v6 = CGRectGetWidth(v10) + 4.0;
  v7 = v5;
  v8 = fmaxf(v6, v7);

  [(CHFriendInboxBadgeView *)self setBounds:0.0, 0.0, v8, v5];
}

- (void)setTintColor:(id)color
{
  v5.receiver = self;
  v5.super_class = CHFriendInboxBadgeView;
  colorCopy = color;
  [(CHFriendInboxBadgeView *)&v5 setTintColor:colorCopy];
  [(UIImageView *)self->_backgroundImageView setTintColor:colorCopy, v5.receiver, v5.super_class];
}

- (void)setBadgeText:(id)text
{
  [(UILabel *)self->_badgeTextLabel setText:text];

  [(CHFriendInboxBadgeView *)self setNeedsLayout];
}

@end