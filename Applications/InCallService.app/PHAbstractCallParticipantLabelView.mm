@interface PHAbstractCallParticipantLabelView
- (PHAbstractCallParticipantLabelView)initWithCallDisplayStyleManager:(id)manager delegate:(id)delegate;
- (PHCallParticipantLabelDelegate)delegate;
- (void)setParticipantName:(id)name;
- (void)setTextColor:(id)color;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation PHAbstractCallParticipantLabelView

- (PHCallParticipantLabelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PHAbstractCallParticipantLabelView)initWithCallDisplayStyleManager:(id)manager delegate:(id)delegate
{
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = PHAbstractCallParticipantLabelView;
  v6 = [(PHAbstractCallParticipantLabelView *)&v13 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    layer = [(PHAbstractCallParticipantLabelView *)v6 layer];
    [layer setHitTestsAsOpaque:1];

    v7->_activityState = -1;
    objc_storeWeak(&v7->_delegate, delegateCopy);
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

- (void)setParticipantName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_participantName isEqualToString:nameCopy])
  {
    v5 = [nameCopy copy];
    participantName = self->_participantName;
    self->_participantName = v5;

    participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    [participantMarqueeLabel setText:nameCopy];

    v8 = sub_100004F84();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = nameCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updated participant label with name %@", &v9, 0xCu);
    }

    [(PHAbstractCallParticipantLabelView *)self setNeedsLayout];
  }
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = PHAbstractCallParticipantLabelView;
  [(PHAbstractCallParticipantLabelView *)&v6 setUserInteractionEnabled:?];
  v5 = 0.5;
  if (enabledCopy)
  {
    v5 = 1.0;
  }

  [(PHAbstractCallParticipantLabelView *)self setAlpha:v5];
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (self->_textColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_textColor, color);
    [(UILabel *)self->_participantMarqueeLabel setTextColor:v6];
    colorCopy = v6;
  }
}

@end