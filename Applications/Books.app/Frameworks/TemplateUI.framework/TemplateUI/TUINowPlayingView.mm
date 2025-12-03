@interface TUINowPlayingView
+ (id)renderModelWithIdentifier:(id)identifier playing:(BOOL)playing color:(id)color;
- (TUINowPlayingView)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
@end

@implementation TUINowPlayingView

+ (id)renderModelWithIdentifier:(id)identifier playing:(BOOL)playing color:(id)color
{
  playingCopy = playing;
  colorCopy = color;
  identifierCopy = identifier;
  v9 = objc_alloc_init(_TUINowPlayingRenderModel);
  [(_TUINowPlayingRenderModel *)v9 setPlaying:playingCopy];
  [(_TUINowPlayingRenderModel *)v9 setColor:colorCopy];

  v10 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"TUIReuseIdentifierNowPlayingView" identifier:identifierCopy submodel:v9];

  return v10;
}

- (void)applyLayoutAttributes:(id)attributes
{
  v12.receiver = self;
  v12.super_class = TUINowPlayingView;
  attributesCopy = attributes;
  [(TUIReusableBaseView *)&v12 applyLayoutAttributes:attributesCopy];
  renderModel = [attributesCopy renderModel];

  submodel = [renderModel submodel];
  renderModel = self->_renderModel;
  self->_renderModel = submodel;

  self->_playing = [(_TUINowPlayingRenderModel *)self->_renderModel playing];
  color = [(_TUINowPlayingRenderModel *)self->_renderModel color];
  v9 = color;
  if (!color)
  {
    v9 = +[UIColor redColor];
  }

  objc_storeStrong(&self->_color, v9);
  if (!color)
  {
  }

  [(MPUNowPlayingIndicatorView *)self->_nowPlayingIndicatorView setLevelGuttersColor:self->_color];
  v10 = 0.6;
  if (self->_playing)
  {
    v10 = 1.0;
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  [(MPUNowPlayingIndicatorView *)self->_nowPlayingIndicatorView setAlpha:v10];
  [(MPUNowPlayingIndicatorView *)self->_nowPlayingIndicatorView setPlaybackState:v11];
}

- (TUINowPlayingView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = TUINowPlayingView;
  v3 = [(TUINowPlayingView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MPUNowPlayingIndicatorView alloc];
    [(TUINowPlayingView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    nowPlayingIndicatorView = v3->_nowPlayingIndicatorView;
    v3->_nowPlayingIndicatorView = v5;

    [(MPUNowPlayingIndicatorView *)v3->_nowPlayingIndicatorView setInterLevelSpacing:1.0];
    [(MPUNowPlayingIndicatorView *)v3->_nowPlayingIndicatorView setLevelCornerRadius:1.0];
    [(MPUNowPlayingIndicatorView *)v3->_nowPlayingIndicatorView setLevelWidth:2.5];
    [(MPUNowPlayingIndicatorView *)v3->_nowPlayingIndicatorView setMaximumLevelHeight:10.0];
    [(MPUNowPlayingIndicatorView *)v3->_nowPlayingIndicatorView setMinimumLevelHeight:2.0];
    [(MPUNowPlayingIndicatorView *)v3->_nowPlayingIndicatorView setNumberOfLevels:4];
    [(TUINowPlayingView *)v3 addSubview:v3->_nowPlayingIndicatorView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TUINowPlayingView;
  [(TUINowPlayingView *)&v3 layoutSubviews];
  [(TUINowPlayingView *)self bounds];
  [(MPUNowPlayingIndicatorView *)self->_nowPlayingIndicatorView setFrame:?];
}

@end