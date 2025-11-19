@interface PHAbstractCallParticipantLabelView
- (PHAbstractCallParticipantLabelView)initWithCallDisplayStyleManager:(id)a3 delegate:(id)a4;
- (PHCallParticipantLabelDelegate)delegate;
- (void)setParticipantName:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
@end

@implementation PHAbstractCallParticipantLabelView

- (PHCallParticipantLabelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PHAbstractCallParticipantLabelView)initWithCallDisplayStyleManager:(id)a3 delegate:(id)a4
{
  v5 = a4;
  v13.receiver = self;
  v13.super_class = PHAbstractCallParticipantLabelView;
  v6 = [(PHAbstractCallParticipantLabelView *)&v13 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    v8 = [(PHAbstractCallParticipantLabelView *)v6 layer];
    [v8 setHitTestsAsOpaque:1];

    v7->_activityState = -1;
    objc_storeWeak(&v7->_delegate, v5);
    v9 = objc_alloc_init(UILabel);
    participantMarqueeLabel = v7->_participantMarqueeLabel;
    v7->_participantMarqueeLabel = v9;

    [(UILabel *)v7->_participantMarqueeLabel setAccessibilityIdentifier:@"PHMarqueeView"];
    v11 = [UIColor colorWithWhite:1.0 alpha:1.0];
    [(UILabel *)v7->_participantMarqueeLabel setTextColor:v11];

    [(UILabel *)v7->_participantMarqueeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v7->_participantMarqueeLabel setMarqueeEnabled:1];
    [(UILabel *)v7->_participantMarqueeLabel setMarqueeRunning:1];
    [(PHAbstractCallParticipantLabelView *)v7 addSubview:v7->_participantMarqueeLabel];
  }

  return v7;
}

- (void)setParticipantName:(id)a3
{
  v4 = a3;
  if (![(NSString *)self->_participantName isEqualToString:v4])
  {
    v5 = [v4 copy];
    participantName = self->_participantName;
    self->_participantName = v5;

    v7 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    [v7 setText:v4];

    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updated participant label with name %@", &v9, 0xCu);
    }

    [(PHAbstractCallParticipantLabelView *)self setNeedsLayout];
  }
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = PHAbstractCallParticipantLabelView;
  [(PHAbstractCallParticipantLabelView *)&v6 setUserInteractionEnabled:?];
  v5 = 0.5;
  if (v3)
  {
    v5 = 1.0;
  }

  [(PHAbstractCallParticipantLabelView *)self setAlpha:v5];
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  if (self->_textColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_textColor, a3);
    [(UILabel *)self->_participantMarqueeLabel setTextColor:v6];
    v5 = v6;
  }
}

@end