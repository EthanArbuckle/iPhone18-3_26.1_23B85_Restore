@interface AXSBVoiceOverSwipeDetectorView
- (AXSBVoiceOverSwipeDetectorDelegate)delegate;
- (AXSBVoiceOverSwipeDetectorView)initWithFrame:(CGRect)frame;
- (void)_cancelVOSwipeActivation:(id)activation;
- (void)_swipeDetected:(id)detected;
- (void)layoutSubviews;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation AXSBVoiceOverSwipeDetectorView

- (AXSBVoiceOverSwipeDetectorView)initWithFrame:(CGRect)frame
{
  v37.receiver = self;
  v37.super_class = AXSBVoiceOverSwipeDetectorView;
  v3 = [(AXSBVoiceOverSwipeDetectorView *)&v37 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(AXSBVoiceOverSwipeDetectorView *)v3 setBackgroundColor:whiteColor];

    [(AXSBVoiceOverSwipeDetectorView *)v3 setAutoresizesSubviews:1];
    [(AXSBVoiceOverSwipeDetectorView *)v3 setMultipleTouchEnabled:1];
    v5 = objc_alloc(MEMORY[0x277D755E8]);
    _defaultBackgroundGradient = [MEMORY[0x277D755B8] _defaultBackgroundGradient];
    v7 = [v5 initWithImage:_defaultBackgroundGradient];

    [(AXSBVoiceOverSwipeDetectorView *)v3 bounds];
    [v7 setFrame:?];
    [v7 setAutoresizingMask:18];
    [(AXSBVoiceOverSwipeDetectorView *)v3 addSubview:v7];
    v8 = objc_alloc(MEMORY[0x277D75D18]);
    [(AXSBVoiceOverSwipeDetectorView *)v3 bounds];
    v9 = [v8 initWithFrame:?];
    [v9 setUserInteractionEnabled:1];
    [v9 setAutoresizingMask:18];
    v10 = MEMORY[0x277D75348];
    v11 = [MEMORY[0x277D755B8] kitImageNamed:@"UITableViewTexture.png"];
    v12 = [v10 colorWithPatternImage:v11];
    [v9 setBackgroundColor:v12];

    [(AXSBVoiceOverSwipeDetectorView *)v3 addSubview:v9];
    v13 = [objc_alloc(MEMORY[0x277D75AE0]) initWithTarget:v3 action:sel__swipeDetected_];
    [v13 setDelaysTouchesEnded:0];
    [v13 setCancelsTouchesInView:0];
    [v13 setNumberOfTouchesRequired:1];
    [v13 setDirection:4];
    [v9 addGestureRecognizer:v13];
    v14 = objc_alloc(MEMORY[0x277D75780]);
    [(AXSBVoiceOverSwipeDetectorView *)v3 frame];
    v15 = [v14 initWithFrame:{0.0, 0.0}];
    [v15 setAutoresizingMask:2];
    [(AXSBVoiceOverSwipeDetectorView *)v3 addSubview:v15];
    v16 = objc_alloc(MEMORY[0x277D757A8]);
    v17 = SBAXLocalizedString(@"ask.sheet.option.VoiceOver.on");
    v18 = [v16 initWithTitle:v17];

    [v18 setHidesBackButton:1];
    v19 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v3 action:sel__cancelVOSwipeActivation_];
    [v18 setRightBarButtonItem:v19];
    [v15 pushNavigationItem:v18 animated:1];
    v20 = objc_alloc(MEMORY[0x277D755E8]);
    v21 = MEMORY[0x277D755B8];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v21 imageNamed:@"activate-arrow" inBundle:v22];
    v24 = [v20 initWithImage:v23];
    bgImageView = v3->_bgImageView;
    v3->_bgImageView = v24;

    [(AXSBVoiceOverSwipeDetectorView *)v3 addSubview:v3->_bgImageView];
    v26 = objc_allocWithZone(MEMORY[0x277D756B8]);
    v27 = [v26 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v27;

    [(UILabel *)v3->_titleLabel setAutoresizingMask:45];
    v29 = [MEMORY[0x277D74300] boldSystemFontOfSize:20.0];
    [(UILabel *)v3->_titleLabel setFont:v29];

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    [(UILabel *)v3->_titleLabel setLineBreakMode:0];
    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    v30 = [MEMORY[0x277D75348] colorWithRed:0.294117647 green:0.341176471 blue:0.435294118 alpha:1.0];
    [(UILabel *)v3->_titleLabel setTextColor:v30];

    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    v32 = [whiteColor2 colorWithAlphaComponent:0.75];
    [(UILabel *)v3->_titleLabel setShadowColor:v32];

    [(UILabel *)v3->_titleLabel setShadowOffset:0.0, 1.0];
    [(UILabel *)v3->_titleLabel setIsAccessibilityElement:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v3->_titleLabel setBackgroundColor:clearColor];

    v34 = SBAXLocalizedString(@"SWIPE_TO_ENABLE");
    [(UILabel *)v3->_titleLabel setText:v34];

    [v9 addSubview:v3->_titleLabel];
    [(UILabel *)v3->_titleLabel sizeToFit];
    v35 = v3;
  }

  return v3;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  if (self->_swipeDetected)
  {
    v5 = [(AXSBVoiceOverSwipeDetectorView *)self delegate:ended];
    [v5 swipeDetectorDetectedSwipe];
  }
}

- (void)_swipeDetected:(id)detected
{
  if ([detected state] == 3)
  {
    self->_swipeDetected = 1;
  }
}

- (void)_cancelVOSwipeActivation:(id)activation
{
  delegate = [(AXSBVoiceOverSwipeDetectorView *)self delegate];
  [delegate swipeDetectorCanceled];
}

- (void)layoutSubviews
{
  [(AXSBVoiceOverSwipeDetectorView *)self bounds];
  v4 = v3;
  [(UIImageView *)self->_bgImageView frame];
  v6 = v5;
  v8 = v7;
  [(AXSBVoiceOverSwipeDetectorView *)self frame];
  v10 = v9 > 560.0;
  *&v14.origin.y = qword_21FEB5680[v9 > 560.0];
  v14.origin.x = v4 * 0.5 - v6 * 0.5;
  v14.size.width = v6;
  v14.size.height = v8;
  v15 = CGRectIntegral(v14);
  [(UIImageView *)self->_bgImageView setFrame:v15.origin.x, v15.origin.y, v15.size.width, v15.size.height];
  [(UILabel *)self->_titleLabel frame];
  v16.origin.y = 0.0;
  v16.origin.x = v4 * 0.05;
  v16.size.width = v4 * 0.9;
  v17 = CGRectIntegral(v16);
  v11 = dbl_21FEB5690[v10];
  titleLabel = self->_titleLabel;

  [(UILabel *)titleLabel setFrame:v17.origin.x, v11, v17.size.width, v17.size.height];
}

- (AXSBVoiceOverSwipeDetectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end