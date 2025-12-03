@interface ASCompetitionMessageBubbleView
- (ASCompetitionMessageBubbleView)initWithFrame:(CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)result;
- (void)layoutSubviews;
@end

@implementation ASCompetitionMessageBubbleView

- (ASCompetitionMessageBubbleView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = ASCompetitionMessageBubbleView;
  v3 = [(ASCompetitionMessageBubbleView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = MessageBubbleBackgroundPlatter();
    v5 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v4];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v5;

    [(ASCompetitionMessageBubbleView *)v3 addSubview:v3->_backgroundView];
    v7 = [MEMORY[0x277D755B8] _systemImageNamed:@"message.fill"];
    v8 = [v7 imageWithRenderingMode:2];
    v9 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v8];
    messageBubbleView = v3->_messageBubbleView;
    v3->_messageBubbleView = v9;

    as_lightCompetitionGold = [MEMORY[0x277D75348] as_lightCompetitionGold];
    [(UIImageView *)v3->_messageBubbleView setTintColor:as_lightCompetitionGold];

    [(ASCompetitionMessageBubbleView *)v3 addSubview:v3->_messageBubbleView];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 30.0;
  result.height = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = ASCompetitionMessageBubbleView;
  [(ASCompetitionMessageBubbleView *)&v4 layoutSubviews];
  [(UIImageView *)self->_backgroundView setFrame:0.0, 0.0, 30.0, 30.0];
  [(UIImageView *)self->_messageBubbleView setFrame:0.0, 0.0, 23.0, 18.5];
  [(UIImageView *)self->_backgroundView frame];
  MidX = CGRectGetMidX(v5);
  [(UIImageView *)self->_backgroundView frame];
  [(UIImageView *)self->_messageBubbleView setCenter:MidX, CGRectGetMidY(v6) + 1.0];
}

@end