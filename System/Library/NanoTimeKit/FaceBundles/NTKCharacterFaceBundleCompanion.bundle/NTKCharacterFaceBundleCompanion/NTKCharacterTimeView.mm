@interface NTKCharacterTimeView
- (NTKCharacterTimeView)initWithFrame:(CGRect)frame forDevice:(id)device;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_didEnterBackground;
- (void)_endScrubbing;
- (void)_layoutRenderer;
- (void)_renderOneFrame;
- (void)_startAnimation;
- (void)_stopAnimation;
- (void)_willEnterForeground;
- (void)applyCharacterTransition:(double)transition fromCharacter:(unint64_t)character toCharacter:(unint64_t)toCharacter;
- (void)dealloc;
- (void)endScrubbingAnimated:(BOOL)animated withCompletion:(id)completion;
- (void)enumarateRenderers:(id)renderers;
- (void)layoutSubviews;
- (void)renderOneFrame;
- (void)setAnimationFrameInterval:(int64_t)interval;
- (void)setCharacter:(unint64_t)character;
- (void)setClothingColor:(id)color andDesaturation:(double)desaturation forCharacter:(unint64_t)character;
- (void)setFrozen:(BOOL)frozen;
- (void)setOverrideDate:(id)date;
- (void)setOverrideDate:(id)date animated:(BOOL)animated enteringOrb:(BOOL)orb completion:(id)completion;
- (void)startScrubbingAnimated:(BOOL)animated withCompletion:(id)completion;
@end

@implementation NTKCharacterTimeView

- (NTKCharacterTimeView)initWithFrame:(CGRect)frame forDevice:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v36.receiver = self;
  v36.super_class = NTKCharacterTimeView;
  height = [(NTKCharacterTimeView *)&v36 initWithFrame:x, y, width, height];
  if (height)
  {
    kdebug_trace();
    v12 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "NTKCharacterTimeView", v35, 2u);
    }

    objc_storeStrong(&height->_device, device);
    v13 = [CLKUIQuadView quadViewWithFrame:@"Char" identifier:0 options:1 colorSpace:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    characterQuadView = height->_characterQuadView;
    height->_characterQuadView = v13;

    v15 = [[NTKCharacterQuad alloc] initWithCLKDevice:deviceCopy];
    characterQuad = height->_characterQuad;
    height->_characterQuad = v15;

    [(CLKUIQuadView *)height->_characterQuadView addQuad:height->_characterQuad];
    [(CLKUIQuadView *)height->_characterQuadView setPreferredFramesPerSecond:30];
    layer = [(CLKUIQuadView *)height->_characterQuadView layer];
    [layer setOpaque:1];

    v18 = [(NTKCharacterTimeView *)height addSubview:height->_characterQuadView];
    v19 = height->_characterQuadView;
    v20 = CGPointZero.y;
    v21 = sub_53A0(v18, deviceCopy);
    [(CLKUIQuadView *)v19 setBounds:CGPointZero.x, v20, v21, v22];
    v23 = height->_characterQuadView;
    [(NTKCharacterTimeView *)height center];
    [(CLKUIQuadView *)v23 setCenter:?];
    [(CLKDevice *)height->_device screenScale];
    [(NTKCharacterTimeView *)height setContentScaleFactor:?];
    device = height->_device;
    v25 = height->_characterQuadView;
    v26 = [NTKCharacterResourceLoader sharedInstanceForDevice:device withPixelFormat:[(CLKUIQuadView *)v25 colorPixelFormat]];
    loader = height->_loader;
    height->_loader = v26;

    [(NTKCharacterResourceLoader *)height->_loader addClient];
    v28 = +[NSNotificationCenter defaultCenter];
    [v28 addObserver:height selector:"_didEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

    v29 = +[NSNotificationCenter defaultCenter];
    [v29 addObserver:height selector:"_willEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

    v30 = [NTKCharacterRenderer rendererWithCharacter:0 loader:height->_loader];
    v31 = height->_renderers[0];
    height->_renderers[0] = v30;

    v32 = [NTKCharacterRenderer rendererWithCharacter:1 loader:height->_loader];
    v33 = height->_renderers[1];
    height->_renderers[1] = v32;

    [(NTKCharacterTimeView *)height _layoutRenderer];
    kdebug_trace();
  }

  return height;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationDidEnterBackgroundNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];

  [(CLKUIQuadView *)self->_characterQuadView setPaused:1];
  [(CLKUIQuadView *)self->_characterQuadView removeAllQuads];
  characterQuad = self->_characterQuad;
  self->_characterQuad = 0;

  characterQuadView = self->_characterQuadView;
  self->_characterQuadView = 0;

  [(NTKCharacterResourceLoader *)self->_loader removeClient];
  loader = self->_loader;
  self->_loader = 0;

  v8.receiver = self;
  v8.super_class = NTKCharacterTimeView;
  [(NTKCharacterTimeView *)&v8 dealloc];
}

- (void)setAnimationFrameInterval:(int64_t)interval
{
  [(CLKUIQuadView *)self->_characterQuadView setPreferredFramesPerSecond:(60.0 / interval)];
  renderer = self->_renderer;

  *&v5 = interval;
  [(NTKCharacterRenderer *)renderer setAnimationFrameInterval:v5];
}

- (void)setOverrideDate:(id)date animated:(BOOL)animated enteringOrb:(BOOL)orb completion:(id)completion
{
  animatedCopy = animated;
  dateCopy = date;
  completionCopy = completion;
  if (animatedCopy)
  {
    [(NTKCharacterTimeView *)self _startAnimation];
    [(NTKCharacterTimeView *)self setAnimationFrameInterval:1];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_44B8;
    v19[3] = &unk_1C808;
    v12 = &v20;
    v20 = dateCopy;
    orbCopy = orb;
    [(NTKCharacterTimeView *)self enumarateRenderers:v19];
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [(NTKCharacterTimeView *)self setAnimationFrameInterval:2];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_4554;
  v16 = &unk_1C808;
  v12 = &v17;
  v17 = dateCopy;
  orbCopy2 = orb;
  [(NTKCharacterTimeView *)self enumarateRenderers:&v13];
  [(NTKCharacterTimeView *)self renderOneFrame:v13];
  if (completionCopy)
  {
LABEL_5:
    completionCopy[2](completionCopy, 1);
  }

LABEL_6:
}

- (void)setOverrideDate:(id)date
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_468C;
  v5[3] = &unk_1C830;
  dateCopy = date;
  v4 = dateCopy;
  [(NTKCharacterTimeView *)self enumarateRenderers:v5];
}

- (void)enumarateRenderers:(id)renderers
{
  renderers = self->_renderers;
  v7 = renderers + 16;
  (*(renderers + 2))(renderers, self->_renderers[0]);
  v5 = renderers[1];
  v6 = *v7;

  v6(renderers, v5);
}

- (void)setFrozen:(BOOL)frozen
{
  if (frozen)
  {
    [(NTKCharacterTimeView *)self _stopAnimation];
  }

  else
  {
    [(NTKCharacterTimeView *)self _startAnimation];
  }
}

- (void)_startAnimation
{
  if ((*(self + 72) & 2) == 0)
  {
    kdebug_trace();
    *(self + 72) |= 2u;
    characterQuadView = self->_characterQuadView;

    [(CLKUIQuadView *)characterQuadView setPaused:0];
  }
}

- (void)_stopAnimation
{
  if ((*(self + 72) & 2) != 0)
  {
    kdebug_trace();
    *(self + 72) &= ~2u;
    characterQuadView = self->_characterQuadView;

    [(CLKUIQuadView *)characterQuadView setPaused:1];
  }
}

- (void)setCharacter:(unint64_t)character
{
  if (self->_character != character || !self->_renderer)
  {
    self->_character = character;
    v4 = self->_renderers[character];
    LODWORD(v5) = 1.0;
    [(NTKCharacterRenderer *)v4 setCharacterBrightness:v5];
    if (self->_renderer)
    {
      [(NTKCharacterRenderer *)v4 copyStateFrom:?];
      [(NTKCharacterRenderer *)v4 activate];
      [(NTKCharacterRenderer *)self->_renderer deactivate];
    }

    renderer = self->_renderer;
    self->_renderer = v4;
    v7 = v4;

    [(NTKCharacterQuad *)self->_characterQuad setRenderer:self->_renderer];
    [(NTKCharacterTimeView *)self renderOneFrame];
  }
}

- (void)setClothingColor:(id)color andDesaturation:(double)desaturation forCharacter:(unint64_t)character
{
  [(NTKCharacterRenderer *)self->_renderers[character] setClothingColor:color andDesaturation:desaturation];

  [(NTKCharacterTimeView *)self renderOneFrame];
}

- (void)_configureForEditMode:(int64_t)mode
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_49FC;
  v4[3] = &unk_1C850;
  v4[4] = mode;
  [(NTKCharacterTimeView *)self enumarateRenderers:v4];
  [(NTKCharacterTimeView *)self renderOneFrame];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v6 = NTKEditModeDimmedAlpha;
  if (mode)
  {
    v7 = NTKEditModeDimmedAlpha;
  }

  else
  {
    v7 = 1.0;
  }

  if (editMode)
  {
    v8 = NTKEditModeDimmedAlpha;
  }

  else
  {
    v8 = 1.0;
  }

  v10[1] = 3221225472;
  if (mode == 1)
  {
    v9 = NTKEditModeDimmedAlpha;
  }

  else
  {
    v9 = 1.0;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[2] = sub_4B44;
  v10[3] = &unk_1C870;
  *&v10[4] = v7;
  *&v10[5] = v8;
  if (editMode != 1)
  {
    v6 = 1.0;
  }

  *&v10[6] = fraction;
  *&v10[7] = v9;
  *&v10[8] = v6;
  [(NTKCharacterTimeView *)self enumarateRenderers:v10];
  [(NTKCharacterTimeView *)self renderOneFrame];
}

- (void)applyCharacterTransition:(double)transition fromCharacter:(unint64_t)character toCharacter:(unint64_t)toCharacter
{
  if (transition >= 0.5)
  {
    [(NTKCharacterTimeView *)self setCharacter:toCharacter];
    v7 = transition + -0.5 + transition + -0.5;
  }

  else
  {
    [(NTKCharacterTimeView *)self setCharacter:character, toCharacter];
    v7 = transition * -2.0 + 1.0;
  }

  v8 = v7;
  *&v7 = v8;
  [(NTKCharacterRenderer *)self->_renderer setCharacterBrightness:v7];
  *&v9 = v8;
  [(NTKCharacterRenderer *)self->_renderer setGlowBrightness:v9];

  [(NTKCharacterTimeView *)self renderOneFrame];
}

- (void)_renderOneFrame
{
  *(self + 72) &= ~1u;
  if ((*(self + 72) & 2) == 0)
  {
    [(NTKCharacterTimeView *)self renderSynchronouslyWithImageQueueDiscard:0 inGroup:0];
  }
}

- (void)renderOneFrame
{
  if ((*(self + 72) & 2) == 0 && (*(self + 72) & 1) == 0)
  {
    *(self + 72) |= 1u;
    if (+[NSThread isMainThread])
    {

      [(NTKCharacterTimeView *)self _renderOneFrame];
    }

    else
    {

      [NTKCharacterTimeView performSelectorOnMainThread:"performSelectorOnMainThread:withObject:waitUntilDone:" withObject:? waitUntilDone:?];
    }
  }
}

- (void)_didEnterBackground
{
  obj = self;
  objc_sync_enter(obj);
  *(obj + 72) |= 4u;
  *(obj + 72) &= ~8u;
  *(obj + 72) &= ~0x10u;
  objc_sync_exit(obj);
}

- (void)_willEnterForeground
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = *(selfCopy + 72);
  *(selfCopy + 72) = v3 & 0xFB;
  *(selfCopy + 72) &= ~8u;
  *(selfCopy + 72) &= ~0x10u;
  objc_sync_exit(selfCopy);

  if ((v3 & 0x10) != 0)
  {
    [(NTKCharacterTimeView *)selfCopy setNeedsLayout];
  }

  if ((v3 & 8) != 0)
  {

    [(NTKCharacterTimeView *)selfCopy renderOneFrame];
  }
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = NTKCharacterTimeView;
  [(NTKCharacterTimeView *)&v11 layoutSubviews];
  layer = [(NTKCharacterTimeView *)self layer];
  [layer bounds];
  [(NTKCharacterTimeView *)self setBounds:?];

  characterQuadView = self->_characterQuadView;
  y = CGPointZero.y;
  v7 = sub_53A0(v6, self->_device);
  [(CLKUIQuadView *)characterQuadView setBounds:CGPointZero.x, y, v7, v8];
  v9 = self->_characterQuadView;
  [(NTKCharacterTimeView *)self center];
  [(CLKUIQuadView *)v9 setCenter:?];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((*(selfCopy + 72) & 4) != 0)
  {
    *(selfCopy + 72) |= 0x10u;
  }

  else
  {
    [(NTKCharacterTimeView *)selfCopy _layoutRenderer];
  }

  objc_sync_exit(selfCopy);
}

- (void)_layoutRenderer
{
  [(NTKCharacterTimeView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(CLKDevice *)self->_device screenScale];
  v8 = v4 * v7;
  v9 = v6 * v7;
  if (v8 >= 1.0 && v9 >= 1.0)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_5064;
    v11[3] = &unk_1C890;
    *&v11[4] = v4;
    *&v11[5] = v6;
    v12 = v9;
    v13 = v8;
    [(NTKCharacterTimeView *)self enumarateRenderers:v11];
  }
}

- (void)startScrubbingAnimated:(BOOL)animated withCompletion:(id)completion
{
  completionCopy = completion;
  [(NTKCharacterTimeView *)self setAnimationFrameInterval:1];
  completionCopy[2]();
}

- (void)_endScrubbing
{
  [(NTKCharacterRenderer *)self->_renderer scrubToDate:0];

  [(NTKCharacterTimeView *)self setAnimationFrameInterval:2];
}

- (void)endScrubbingAnimated:(BOOL)animated withCompletion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (animatedCopy)
  {
    objc_initWeak(&location, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_5268;
    v7[3] = &unk_1C8B8;
    objc_copyWeak(&v9, &location);
    v8 = completionCopy;
    [(NTKCharacterTimeView *)self setOverrideDate:0 animated:1 enteringOrb:0 completion:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    [(NTKCharacterTimeView *)self _endScrubbing];
    completionCopy[2](completionCopy);
  }
}

@end