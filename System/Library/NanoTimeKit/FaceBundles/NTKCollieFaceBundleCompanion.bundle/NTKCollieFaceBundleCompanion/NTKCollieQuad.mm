@interface NTKCollieQuad
- (AVTRenderer)renderer;
- (BOOL)paused;
- (BOOL)prepareForTime:(double)time;
- (NTKCollieQuad)init;
- (void)ensureRenderer;
- (void)prewarmAvatar:(id)avatar;
- (void)renderWithCommandBuffer:(id)buffer passDescriptor:(id)descriptor;
- (void)setAvatar:(id)avatar;
- (void)setPaused:(BOOL)paused;
- (void)setPaused:(BOOL)paused completion:(id)completion;
- (void)setupForQuadView:(id)view;
@end

@implementation NTKCollieQuad

- (NTKCollieQuad)init
{
  v12.receiver = self;
  v12.super_class = NTKCollieQuad;
  v2 = [(NTKCollieQuad *)&v12 init];
  if (v2)
  {
    v3 = +[CLKUIMetalResourceManager sharedDevice];
    device = v2->_device;
    v2->_device = v3;

    v5 = [AVTRenderer rendererWithDevice:v2->_device options:0];
    renderer = v2->_renderer;
    v2->_renderer = v5;

    v7 = +[UIColor clearColor];
    [(AVTRenderer *)v2->_renderer setBackgroundColor:v7];

    LODWORD(v8) = 1023969417;
    [(AVTRenderer *)v2->_renderer deprecated_ntk_setPhysicsWorldTimeStep:v8];
    v9 = dispatch_queue_create("Collie Renderer Queue", 0);
    rendererQueue = v2->_rendererQueue;
    v2->_rendererQueue = v9;
  }

  return v2;
}

- (void)setPaused:(BOOL)paused
{
  rendererQueue = self->_rendererQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_9908;
  v4[3] = &unk_2CA58;
  v4[4] = self;
  pausedCopy = paused;
  dispatch_sync(rendererQueue, v4);
}

- (void)setPaused:(BOOL)paused completion:(id)completion
{
  completionCopy = completion;
  rendererQueue = self->_rendererQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_99D4;
  block[3] = &unk_2CA80;
  pausedCopy = paused;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(rendererQueue, block);
}

- (BOOL)paused
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  rendererQueue = self->_rendererQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_9ADC;
  v5[3] = &unk_2CAA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)ensureRenderer
{
  if (!self->_renderer)
  {
    v3 = [AVTRenderer rendererWithDevice:self->_device options:0];
    renderer = self->_renderer;
    self->_renderer = v3;

    v5 = +[UIColor clearColor];
    [(AVTRenderer *)self->_renderer setBackgroundColor:v5];

    v6 = self->_renderer;
    LODWORD(v7) = 1023969417;

    [(AVTRenderer *)v6 deprecated_ntk_setPhysicsWorldTimeStep:v7];
  }
}

- (AVTRenderer)renderer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_9CD8;
  v10 = sub_9CE8;
  v11 = 0;
  rendererQueue = self->_rendererQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_9CF0;
  v5[3] = &unk_2CAA8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(rendererQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)prewarmAvatar:(id)avatar
{
  avatarCopy = avatar;
  rendererQueue = self->_rendererQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_9DAC;
  v7[3] = &unk_2CAD0;
  v7[4] = self;
  v8 = avatarCopy;
  v6 = avatarCopy;
  dispatch_sync(rendererQueue, v7);
}

- (void)setAvatar:(id)avatar
{
  avatarCopy = avatar;
  objc_storeStrong(&self->_avatar, avatar);
  rendererQueue = self->_rendererQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_9ED0;
  v8[3] = &unk_2CAD0;
  v9 = avatarCopy;
  selfCopy = self;
  v7 = avatarCopy;
  dispatch_sync(rendererQueue, v8);
}

- (void)setupForQuadView:(id)view
{
  viewCopy = view;
  v4 = +[CLKDevice currentDevice];
  [v4 screenBounds];
  v6 = v5;
  v8 = v7;

  v9 = +[CLKDevice currentDevice];
  [v9 screenScale];
  v11 = v10;

  self->_size.width = v6 * v11;
  self->_size.height = v8 * v11;
  [viewCopy setOpaque:0];
}

- (BOOL)prepareForTime:(double)time
{
  rendererQueue = self->_rendererQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_A0F8;
  v5[3] = &unk_2C740;
  v5[4] = self;
  *&v5[5] = time;
  dispatch_sync(rendererQueue, v5);
  return 1;
}

- (void)renderWithCommandBuffer:(id)buffer passDescriptor:(id)descriptor
{
  bufferCopy = buffer;
  descriptorCopy = descriptor;
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_A270;
  v18[3] = &unk_2CAF8;
  v9 = v8;
  v19 = v9;
  [bufferCopy addCompletedHandler:v18];
  rendererQueue = self->_rendererQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A278;
  block[3] = &unk_2CB20;
  block[4] = self;
  v15 = bufferCopy;
  v16 = descriptorCopy;
  v17 = v9;
  v11 = v9;
  v12 = descriptorCopy;
  v13 = bufferCopy;
  dispatch_sync(rendererQueue, block);
}

@end