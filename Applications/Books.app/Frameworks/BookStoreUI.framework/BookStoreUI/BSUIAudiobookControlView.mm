@interface BSUIAudiobookControlView
+ (id)renderModelWithIdentifier:(id)a3 dynamicProgress:(id)a4 dynamicState:(id)a5;
- (BSUIAudiobookControlView)initWithFrame:(CGRect)a3;
- (void)_updatePlayState;
- (void)applyLayoutAttributes:(id)a3;
- (void)dealloc;
- (void)dynamicProgressChanged:(id)a3;
- (void)togglePlayPause:(id)a3;
@end

@implementation BSUIAudiobookControlView

+ (id)renderModelWithIdentifier:(id)a3 dynamicProgress:(id)a4 dynamicState:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(_BSUIAudiobookControlRenderModel);
  [(_BSUIAudiobookControlRenderModel *)v10 setDynamicAudiobookProgress:v8];

  [(_BSUIAudiobookControlRenderModel *)v10 setDynamicState:v7];
  v11 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"BSUIReuseIdentifierAudiobookControlView" identifier:v9 submodel:v10];

  return v11;
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = BSUIAudiobookControlView;
  [(BSUIAudiobookControlView *)&v18 applyLayoutAttributes:v4];
  v5 = [v4 renderModel];
  v6 = [v5 submodel];
  renderModel = self->_renderModel;
  self->_renderModel = v6;

  v8 = [(_BSUIAudiobookControlRenderModel *)self->_renderModel dynamicAudiobookProgress];
  dynamicAudiobookProgress = self->_dynamicAudiobookProgress;
  self->_dynamicAudiobookProgress = v8;

  v10 = [(_BSUIAudiobookControlRenderModel *)self->_renderModel dynamicState];
  dynamicState = self->_dynamicState;
  self->_dynamicState = v10;

  v12 = [(BSUIAudiobookControlView *)self dynamicAudiobookProgress];
  [v12 registerProgressObserver:self];

  objc_opt_class();
  v13 = [(BSUIAudiobookControlView *)self dynamicState];
  v14 = TUIDynamicCast();
  dynamicValue = self->_dynamicValue;
  self->_dynamicValue = v14;

  v16 = [(TUIDynamicValue *)self->_dynamicValue instanceForObserver:self];
  instance = self->_instance;
  self->_instance = v16;

  [(BSUIAudiobookControlView *)self _updatePlayState];
}

- (BSUIAudiobookControlView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = BSUIAudiobookControlView;
  v3 = [(BSUIAudiobookControlView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(BSUIAudiobookControlView *)self dynamicAudiobookProgress];
  [v3 unregisterProgressObserver:self];

  v4.receiver = self;
  v4.super_class = BSUIAudiobookControlView;
  [(BSUIAudiobookControlView *)&v4 dealloc];
}

- (void)togglePlayPause:(id)a3
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

- (void)dynamicProgressChanged:(id)a3
{
  v5 = [a3 progress];
  [v5 floatValue];
  [(BSUIAudiobookControl *)self->_audiobookControl setProgress:v4];
}

@end