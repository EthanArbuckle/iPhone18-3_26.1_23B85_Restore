@interface CHFriendInboxBarButtonView
- (BOOL)_touchesInside:(id)inside;
- (CHFriendInboxBarButtonView)init;
- (CHFriendInboxBarButtonViewDelegate)delegate;
- (void)_animateToTappedState:(BOOL)state;
- (void)layoutSubviews;
- (void)setBadgeText:(id)text;
- (void)setTintColor:(id)color;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
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

- (void)setTintColor:(id)color
{
  v5.receiver = self;
  v5.super_class = CHFriendInboxBarButtonView;
  colorCopy = color;
  [(CHFriendInboxBarButtonView *)&v5 setTintColor:colorCopy];
  [(CHFriendInboxBadgeView *)self->_badgeView setTintColor:colorCopy, v5.receiver, v5.super_class];
  [(UIImageView *)self->_contactsImageView setTintColor:colorCopy];
}

- (void)setBadgeText:(id)text
{
  textCopy = text;
  [(CHFriendInboxBadgeView *)self->_badgeView setBadgeText:textCopy];
  if (textCopy)
  {
    v4 = [textCopy length] == 0;
  }

  else
  {
    v4 = 1;
  }

  [(CHFriendInboxBadgeView *)self->_badgeView setHidden:v4];
  [(CHFriendInboxBarButtonView *)self setNeedsLayout];
}

- (void)_animateToTappedState:(BOOL)state
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000B3EB8;
  v3[3] = &unk_10083A8D8;
  v3[4] = self;
  stateCopy = state;
  [UIView animateWithDuration:v3 animations:0.2];
}

- (BOOL)_touchesInside:(id)inside
{
  anyObject = [inside anyObject];
  [anyObject locationInView:self];
  v6 = v5;
  v8 = v7;

  [(CHFriendInboxBarButtonView *)self bounds];
  v13 = v6;
  v14 = v8;

  return CGRectContainsPoint(*&v9, *&v13);
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  [(CHFriendInboxBarButtonView *)self _animateToTappedState:0];
  v6 = [(CHFriendInboxBarButtonView *)self _touchesInside:endedCopy];

  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained didTapInboxBarButtonView:self];
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  event = [(CHFriendInboxBarButtonView *)self _touchesInside:moved, event];

  [(CHFriendInboxBarButtonView *)self _animateToTappedState:event];
}

- (CHFriendInboxBarButtonViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end