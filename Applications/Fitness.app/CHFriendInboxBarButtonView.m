@interface CHFriendInboxBarButtonView
- (BOOL)_touchesInside:(id)a3;
- (CHFriendInboxBarButtonView)init;
- (CHFriendInboxBarButtonViewDelegate)delegate;
- (void)_animateToTappedState:(BOOL)a3;
- (void)layoutSubviews;
- (void)setBadgeText:(id)a3;
- (void)setTintColor:(id)a3;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation CHFriendInboxBarButtonView

- (CHFriendInboxBarButtonView)init
{
  v9.receiver = self;
  v9.super_class = CHFriendInboxBarButtonView;
  v2 = [(CHFriendInboxBarButtonView *)&v9 initWithFrame:0.0, 0.0, 39.0, 27.0];
  if (v2)
  {
    v3 = [UIImage systemImageNamed:@"person.2.badge.gearshape.fill"];
    v4 = [[UIImageView alloc] initWithImage:v3];
    contactsImageView = v2->_contactsImageView;
    v2->_contactsImageView = v4;

    [(UIImageView *)v2->_contactsImageView setBounds:0.0, 0.0, 39.0, 27.0];
    [(CHFriendInboxBarButtonView *)v2 addSubview:v2->_contactsImageView];
    v6 = [[CHFriendInboxBadgeView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    badgeView = v2->_badgeView;
    v2->_badgeView = v6;

    [(CHFriendInboxBadgeView *)v2->_badgeView setHidden:1];
    [(CHFriendInboxBarButtonView *)v2 addSubview:v2->_badgeView];
    [(CHFriendInboxBarButtonView *)v2 setUserInteractionEnabled:1];
  }

  return v2;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CHFriendInboxBarButtonView;
  [(CHFriendInboxBarButtonView *)&v5 layoutSubviews];
  [(CHFriendInboxBarButtonView *)self bounds];
  MidX = CGRectGetMidX(v6);
  [(CHFriendInboxBarButtonView *)self bounds];
  [(UIImageView *)self->_contactsImageView setCenter:MidX, CGRectGetMidY(v7)];
  [(CHFriendInboxBadgeView *)self->_badgeView sizeToFit];
  [(UIImageView *)self->_contactsImageView frame];
  v4 = CGRectGetMaxX(v8) + -1.0;
  [(CHFriendInboxBadgeView *)self->_badgeView bounds];
  [(CHFriendInboxBadgeView *)self->_badgeView setCenter:v4, CGRectGetMidX(v9) + -5.0];
}

- (void)setTintColor:(id)a3
{
  v5.receiver = self;
  v5.super_class = CHFriendInboxBarButtonView;
  v4 = a3;
  [(CHFriendInboxBarButtonView *)&v5 setTintColor:v4];
  [(CHFriendInboxBadgeView *)self->_badgeView setTintColor:v4, v5.receiver, v5.super_class];
  [(UIImageView *)self->_contactsImageView setTintColor:v4];
}

- (void)setBadgeText:(id)a3
{
  v5 = a3;
  [(CHFriendInboxBadgeView *)self->_badgeView setBadgeText:v5];
  if (v5)
  {
    v4 = [v5 length] == 0;
  }

  else
  {
    v4 = 1;
  }

  [(CHFriendInboxBadgeView *)self->_badgeView setHidden:v4];
  [(CHFriendInboxBarButtonView *)self setNeedsLayout];
}

- (void)_animateToTappedState:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000B3EB8;
  v3[3] = &unk_10083A8D8;
  v3[4] = self;
  v4 = a3;
  [UIView animateWithDuration:v3 animations:0.2];
}

- (BOOL)_touchesInside:(id)a3
{
  v4 = [a3 anyObject];
  [v4 locationInView:self];
  v6 = v5;
  v8 = v7;

  [(CHFriendInboxBarButtonView *)self bounds];
  v13 = v6;
  v14 = v8;

  return CGRectContainsPoint(*&v9, *&v13);
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = a3;
  [(CHFriendInboxBarButtonView *)self _animateToTappedState:0];
  v6 = [(CHFriendInboxBarButtonView *)self _touchesInside:v5];

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didTapInboxBarButtonView:self];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v5 = [(CHFriendInboxBarButtonView *)self _touchesInside:a3, a4];

  [(CHFriendInboxBarButtonView *)self _animateToTappedState:v5];
}

- (CHFriendInboxBarButtonViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end