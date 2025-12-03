@interface BSUIAudiobookControlView
+ (id)renderModelWithIdentifier:(id)identifier dynamicProgress:(id)progress dynamicState:(id)state;
- (BSUIAudiobookControlView)initWithFrame:(CGRect)frame;
- (void)_updatePlayState;
- (void)applyLayoutAttributes:(id)attributes;
- (void)dealloc;
- (void)dynamicProgressChanged:(id)changed;
- (void)togglePlayPause:(id)pause;
@end

@implementation BSUIAudiobookControlView

+ (id)renderModelWithIdentifier:(id)identifier dynamicProgress:(id)progress dynamicState:(id)state
{
  stateCopy = state;
  progressCopy = progress;
  identifierCopy = identifier;
  v10 = objc_alloc_init(_BSUIAudiobookControlRenderModel);
  [(_BSUIAudiobookControlRenderModel *)v10 setDynamicAudiobookProgress:progressCopy];

  [(_BSUIAudiobookControlRenderModel *)v10 setDynamicState:stateCopy];
  v11 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"BSUIReuseIdentifierAudiobookControlView" identifier:identifierCopy submodel:v10];

  return v11;
}

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  v18.receiver = self;
  v18.super_class = BSUIAudiobookControlView;
  [(BSUIAudiobookControlView *)&v18 applyLayoutAttributes:attributesCopy];
  renderModel = [attributesCopy renderModel];
  submodel = [renderModel submodel];
  renderModel = self->_renderModel;
  self->_renderModel = submodel;

  dynamicAudiobookProgress = [(_BSUIAudiobookControlRenderModel *)self->_renderModel dynamicAudiobookProgress];
  dynamicAudiobookProgress = self->_dynamicAudiobookProgress;
  self->_dynamicAudiobookProgress = dynamicAudiobookProgress;

  dynamicState = [(_BSUIAudiobookControlRenderModel *)self->_renderModel dynamicState];
  dynamicState = self->_dynamicState;
  self->_dynamicState = dynamicState;

  dynamicAudiobookProgress2 = [(BSUIAudiobookControlView *)self dynamicAudiobookProgress];
  [dynamicAudiobookProgress2 registerProgressObserver:self];

  objc_opt_class();
  dynamicState2 = [(BSUIAudiobookControlView *)self dynamicState];
  v14 = TUIDynamicCast();
  dynamicValue = self->_dynamicValue;
  self->_dynamicValue = v14;

  v16 = [(TUIDynamicValue *)self->_dynamicValue instanceForObserver:self];
  instance = self->_instance;
  self->_instance = v16;

  [(BSUIAudiobookControlView *)self _updatePlayState];
}

- (BSUIAudiobookControlView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = BSUIAudiobookControlView;
  v3 = [(BSUIAudiobookControlView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [BSUIAudiobookControl alloc];
    [(BSUIAudiobookControlView *)v3 bounds];
    v5 = [(BSUIAudiobookControl *)v4 initWithFrame:?];
    audiobookControl = v3->_audiobookControl;
    v3->_audiobookControl = v5;

    [(BSUIAudiobookControl *)v3->_audiobookControl setDelegate:v3];
    [(BSUIAudiobookControl *)v3->_audiobookControl setAutoresizingMask:18];
    [(BSUIAudiobookControlView *)v3 addSubview:v3->_audiobookControl];
  }

  return v3;
}

- (void)dealloc
{
  dynamicAudiobookProgress = [(BSUIAudiobookControlView *)self dynamicAudiobookProgress];
  [dynamicAudiobookProgress unregisterProgressObserver:self];

  v4.receiver = self;
  v4.super_class = BSUIAudiobookControlView;
  [(BSUIAudiobookControlView *)&v4 dealloc];
}

- (void)togglePlayPause:(id)pause
{
  if (objc_opt_respondsToSelector())
  {
    dynamicAudiobookProgress = self->_dynamicAudiobookProgress;

    [(BSUIDynamicAudiobookProgress *)dynamicAudiobookProgress togglePlayPause];
  }
}

- (void)_updatePlayState
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_12794;
  block[3] = &unk_3873D8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)dynamicProgressChanged:(id)changed
{
  progress = [changed progress];
  [progress floatValue];
  [(BSUIAudiobookControl *)self->_audiobookControl setProgress:v4];
}

@end