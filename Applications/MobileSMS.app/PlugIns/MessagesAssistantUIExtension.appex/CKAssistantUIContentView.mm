@interface CKAssistantUIContentView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKAssistantUIContentView)initWithFrame:(CGRect)frame;
- (double)_balloonMaxWidthForBoundsWidth:(double)width;
- (void)layoutSubviews;
- (void)setChatContent:(id)content;
- (void)setMessageContent:(id)content sent:(BOOL)sent;
@end

@implementation CKAssistantUIContentView

- (CKAssistantUIContentView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v19.receiver = self;
  v19.super_class = CKAssistantUIContentView;
  v7 = [(CKAssistantUIContentView *)&v19 initWithFrame:?];
  if (v7)
  {
    v8 = [[UIView alloc] initWithFrame:{x, y, width, height}];
    chatBackgroundView = v7->_chatBackgroundView;
    v7->_chatBackgroundView = v8;

    v10 = v7->_chatBackgroundView;
    v11 = +[UIColor whiteColor];
    [(UIView *)v10 setBackgroundColor:v11];

    [(CKAssistantUIContentView *)v7 addSubview:v7->_chatBackgroundView];
    height = [[CKAssistantUIAvatarView alloc] initWithFrame:x, y, width, height];
    avatarView = v7->_avatarView;
    v7->_avatarView = height;

    [(CKAssistantUIContentView *)v7 addSubview:v7->_avatarView];
    v14 = [[UILabel alloc] initWithFrame:{x, y, width, height}];
    keylineView = v7->_keylineView;
    v7->_keylineView = v14;

    v16 = v7->_keylineView;
    v17 = +[UIColor blackColor];
    [(UIView *)v16 setBackgroundColor:v17];

    [(UIView *)v7->_keylineView setAlpha:0.18];
    [(CKAssistantUIContentView *)v7 addSubview:v7->_keylineView];
  }

  return v7;
}

- (void)setMessageContent:(id)content sent:(BOOL)sent
{
  contentCopy = content;
  [(CKTextBalloonView *)self->_balloonView removeFromSuperview];
  balloonView = self->_balloonView;
  self->_balloonView = 0;

  if (!sent)
  {
    v7 = [(CKAssistantUIContentView *)self _balloonViewWithText:contentCopy color:0xFFFFFFFFLL];
    v8 = self->_balloonView;
    self->_balloonView = v7;

    [(CKAssistantUIContentView *)self addSubview:self->_balloonView];
  }

  [(CKAssistantUIContentView *)self setNeedsLayout];
}

- (void)setChatContent:(id)content
{
  contentCopy = content;
  chatView = self->_chatView;
  if (chatView)
  {
    [(UIView *)chatView removeFromSuperview];
    v5 = self->_chatView;
    self->_chatView = 0;
  }

  [(CKAssistantUIContentView *)self setChatView:contentCopy];
  [(CKAssistantUIContentView *)self insertSubview:contentCopy aboveSubview:self->_chatBackgroundView];
  [(CKAssistantUIContentView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = CKAssistantUIContentView;
  [(CKAssistantUIContentView *)&v22 layoutSubviews];
  [(CKAssistantUIContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [(CKAssistantUIAvatarView *)self->_avatarView sizeThatFits:v7, 1.79769313e308];
  [(CKAssistantUIAvatarView *)self->_avatarView setFrame:0.0, 0.0, v8, v9];
  keylineView = self->_keylineView;
  [(CKAssistantUIAvatarView *)self->_avatarView frame];
  MaxY = CGRectGetMaxY(v23);
  v12 = +[UIScreen mainScreen];
  [v12 scale];
  [(UIView *)keylineView setFrame:0.0, MaxY, v8, 1.0 / v13];

  balloonView = self->_balloonView;
  if (balloonView)
  {
    [(CKTextBalloonView *)balloonView prepareForDisplayIfNeeded];
    [(CKAssistantUIContentView *)self _balloonMaxWidthForBoundsWidth:v8];
    [(CKTextBalloonView *)self->_balloonView sizeThatFits:?];
    v16 = v15;
    v18 = v17;
    v19 = fmax(v8 - v15 + -22.0, 0.0);
    [(UIView *)self->_keylineView frame];
    [(CKTextBalloonView *)self->_balloonView setFrame:v19, CGRectGetMaxY(v24) + 28.0 + 200.0, v16, v18];
  }

  [(UIView *)self->_keylineView frame];
  v20 = CGRectGetMaxY(v25) + 200.0;
  [(UIView *)self->_chatBackgroundView setFrame:v4, v6, v8, v20];
  chatView = self->_chatView;
  if (chatView)
  {
    [(UIView *)chatView setFrame:v4, v6, v8, v20];
    [(UIView *)self->_chatView setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(CKAssistantUIAvatarView *)self->_avatarView sizeThatFits:?];
  v6 = v5;
  v8 = v7;
  [(CKAssistantUIContentView *)self _balloonMaxWidthForBoundsWidth:width];
  [(CKTextBalloonView *)self->_balloonView sizeThatFits:?];
  v11 = v10 + 56.0;
  if (!self->_balloonView)
  {
    v11 = 0.0;
  }

  v12 = v8 + 200.0 + v11;
  v13 = v9 + 22.0;
  if (v6 >= v13)
  {
    v13 = v6;
  }

  result.height = v12;
  result.width = v13;
  return result;
}

- (double)_balloonMaxWidthForBoundsWidth:(double)width
{
  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 balloonMaxWidthForTranscriptWidth:0 marginInsets:0 shouldShowPluginButtons:0 shouldShowCharacterCount:0 shouldCoverSendButton:width isStewieMode:{0.0, 22.0, 0.0, 22.0}];
  v6 = v5;

  result = width + -44.0;
  if (v6 < width + -44.0)
  {
    return v6;
  }

  return result;
}

@end