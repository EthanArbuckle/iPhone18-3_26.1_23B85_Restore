@interface NTKCharacterTimeView
- (NTKCharacterTimeView)initWithFrame:(CGRect)a3 forDevice:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_didEnterBackground;
- (void)_endScrubbing;
- (void)_layoutRenderer;
- (void)_renderOneFrame;
- (void)_startAnimation;
- (void)_stopAnimation;
- (void)_willEnterForeground;
- (void)applyCharacterTransition:(double)a3 fromCharacter:(unint64_t)a4 toCharacter:(unint64_t)a5;
- (void)dealloc;
- (void)endScrubbingAnimated:(BOOL)a3 withCompletion:(id)a4;
- (void)enumarateRenderers:(id)a3;
- (void)layoutSubviews;
- (void)renderOneFrame;
- (void)setAnimationFrameInterval:(int64_t)a3;
- (void)setCharacter:(unint64_t)a3;
- (void)setClothingColor:(id)a3 andDesaturation:(double)a4 forCharacter:(unint64_t)a5;
- (void)setFrozen:(BOOL)a3;
- (void)setOverrideDate:(id)a3;
- (void)setOverrideDate:(id)a3 animated:(BOOL)a4 enteringOrb:(BOOL)a5 completion:(id)a6;
- (void)startScrubbingAnimated:(BOOL)a3 withCompletion:(id)a4;
@end

@implementation NTKCharacterTimeView

- (NTKCharacterTimeView)initWithFrame:(CGRect)a3 forDevice:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v36.receiver = self;
  v36.super_class = NTKCharacterTimeView;
  v11 = [(NTKCharacterTimeView *)&v36 initWithFrame:x, y, width, height];
  if (v11)
  {
    kdebug_trace();
    v12 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "NTKCharacterTimeView", v35, 2u);
    }

    objc_storeStrong(&v11->_device, a4);
    v13 = [CLKUIQuadView quadViewWithFrame:@"Char" identifier:0 options:1 colorSpace:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    characterQuadView = v11->_characterQuadView;
    v11->_characterQuadView = v13;

    v15 = [[NTKCharacterQuad alloc] initWithCLKDevice:v10];
    characterQuad = v11->_characterQuad;
    v11->_characterQuad = v15;

    [(CLKUIQuadView *)v11->_characterQuadView addQuad:v11->_characterQuad];
    [(CLKUIQuadView *)v11->_characterQuadView setPreferredFramesPerSecond:30];
    v17 = [(CLKUIQuadView *)v11->_characterQuadView layer];
    [v17 setOpaque:1];

    v18 = [(NTKCharacterTimeView *)v11 addSubview:v11->_characterQuadView];
    v19 = v11->_characterQuadView;
    v20 = CGPointZero.y;
    v21 = sub_53A0(v18, v10);
    [(CLKUIQuadView *)v19 setBounds:CGPointZero.x, v20, v21, v22];
    v23 = v11->_characterQuadView;
    [(NTKCharacterTimeView *)v11 center];
    [(CLKUIQuadView *)v23 setCenter:?];
    [(CLKDevice *)v11->_device screenScale];
    [(NTKCharacterTimeView *)v11 setContentScaleFactor:?];
    device = v11->_device;
    v25 = v11->_characterQuadView;
    v26 = [NTKCharacterResourceLoader sharedInstanceForDevice:device withPixelFormat:[(CLKUIQuadView *)v25 colorPixelFormat]];
    loader = v11->_loader;
    v11->_loader = v26;

    [(NTKCharacterResourceLoader *)v11->_loader addClient];
    v28 = +[NSNotificationCenter defaultCenter];
    [v28 addObserver:v11 selector:"_didEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

    v29 = +[NSNotificationCenter defaultCenter];
    [v29 addObserver:v11 selector:"_willEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

    v30 = [NTKCharacterRenderer rendererWithCharacter:0 loader:v11->_loader];
    v31 = v11->_renderers[0];
    v11->_renderers[0] = v30;

    v32 = [NTKCharacterRenderer rendererWithCharacter:1 loader:v11->_loader];
    v33 = v11->_renderers[1];
    v11->_renderers[1] = v32;

    [(NTKCharacterTimeView *)v11 _layoutRenderer];
    kdebug_trace();
  }

  return v11;
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

- (void)setAnimationFrameInterval:(int64_t)a3
{
  [(CLKUIQuadView *)self->_characterQuadView setPreferredFramesPerSecond:(60.0 / a3)];
  renderer = self->_renderer;

  *&v5 = a3;
  [(NTKCharacterRenderer *)renderer setAnimationFrameInterval:v5];
}

- (void)setOverrideDate:(id)a3 animated:(BOOL)a4 enteringOrb:(BOOL)a5 completion:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a6;
  if (v8)
  {
    [(NTKCharacterTimeView *)self _startAnimation];
    [(NTKCharacterTimeView *)self setAnimationFrameInterval:1];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_44B8;
    v19[3] = &unk_1C808;
    v12 = &v20;
    v20 = v10;
    v21 = a5;
    [(NTKCharacterTimeView *)self enumarateRenderers:v19];
    if (!v11)
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
  v17 = v10;
  v18 = a5;
  [(NTKCharacterTimeView *)self enumarateRenderers:&v13];
  [(NTKCharacterTimeView *)self renderOneFrame:v13];
  if (v11)
  {
LABEL_5:
    v11[2](v11, 1);
  }

LABEL_6:
}

- (void)setOverrideDate:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_468C;
  v5[3] = &unk_1C830;
  v6 = a3;
  v4 = v6;
  [(NTKCharacterTimeView *)self enumarateRenderers:v5];
}

- (void)enumarateRenderers:(id)a3
{
  renderers = self->_renderers;
  v7 = a3 + 16;
  (*(a3 + 2))(a3, self->_renderers[0]);
  v5 = renderers[1];
  v6 = *v7;

  v6(a3, v5);
}

- (void)setFrozen:(BOOL)a3
{
  if (a3)
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

- (void)setCharacter:(unint64_t)a3
{
  if (self->_character != a3 || !self->_renderer)
  {
    self->_character = a3;
    v4 = self->_renderers[a3];
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

- (void)setClothingColor:(id)a3 andDesaturation:(double)a4 forCharacter:(unint64_t)a5
{
  [(NTKCharacterRenderer *)self->_renderers[a5] setClothingColor:a3 andDesaturation:a4];

  [(NTKCharacterTimeView *)self renderOneFrame];
}

- (void)_configureForEditMode:(int64_t)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_49FC;
  v4[3] = &unk_1C850;
  v4[4] = a3;
  [(NTKCharacterTimeView *)self enumarateRenderers:v4];
  [(NTKCharacterTimeView *)self renderOneFrame];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v6 = NTKEditModeDimmedAlpha;
  if (a4)
  {
    v7 = NTKEditModeDimmedAlpha;
  }

  else
  {
    v7 = 1.0;
  }

  if (a5)
  {
    v8 = NTKEditModeDimmedAlpha;
  }

  else
  {
    v8 = 1.0;
  }

  v10[1] = 3221225472;
  if (a4 == 1)
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
  if (a5 != 1)
  {
    v6 = 1.0;
  }

  *&v10[6] = a3;
  *&v10[7] = v9;
  *&v10[8] = v6;
  [(NTKCharacterTimeView *)self enumarateRenderers:v10];
  [(NTKCharacterTimeView *)self renderOneFrame];
}

- (void)applyCharacterTransition:(double)a3 fromCharacter:(unint64_t)a4 toCharacter:(unint64_t)a5
{
  if (a3 >= 0.5)
  {
    [(NTKCharacterTimeView *)self setCharacter:a5];
    v7 = a3 + -0.5 + a3 + -0.5;
  }

  else
  {
    [(NTKCharacterTimeView *)self setCharacter:a4, a5];
    v7 = a3 * -2.0 + 1.0;
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = *(v2 + 72);
  *(v2 + 72) = v3 & 0xFB;
  *(v2 + 72) &= ~8u;
  *(v2 + 72) &= ~0x10u;
  objc_sync_exit(v2);

  if ((v3 & 0x10) != 0)
  {
    [(NTKCharacterTimeView *)v2 setNeedsLayout];
  }

  if ((v3 & 8) != 0)
  {

    [(NTKCharacterTimeView *)v2 renderOneFrame];
  }
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = NTKCharacterTimeView;
  [(NTKCharacterTimeView *)&v11 layoutSubviews];
  v3 = [(NTKCharacterTimeView *)self layer];
  [v3 bounds];
  [(NTKCharacterTimeView *)self setBounds:?];

  characterQuadView = self->_characterQuadView;
  y = CGPointZero.y;
  v7 = sub_53A0(v6, self->_device);
  [(CLKUIQuadView *)characterQuadView setBounds:CGPointZero.x, y, v7, v8];
  v9 = self->_characterQuadView;
  [(NTKCharacterTimeView *)self center];
  [(CLKUIQuadView *)v9 setCenter:?];
  v10 = self;
  objc_sync_enter(v10);
  if ((*(v10 + 72) & 4) != 0)
  {
    *(v10 + 72) |= 0x10u;
  }

  else
  {
    [(NTKCharacterTimeView *)v10 _layoutRenderer];
  }

  objc_sync_exit(v10);
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

- (void)startScrubbingAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v5 = a4;
  [(NTKCharacterTimeView *)self setAnimationFrameInterval:1];
  v5[2]();
}

- (void)_endScrubbing
{
  [(NTKCharacterRenderer *)self->_renderer scrubToDate:0];

  [(NTKCharacterTimeView *)self setAnimationFrameInterval:2];
}

- (void)endScrubbingAnimated:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    objc_initWeak(&location, self);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_5268;
    v7[3] = &unk_1C8B8;
    objc_copyWeak(&v9, &location);
    v8 = v6;
    [(NTKCharacterTimeView *)self setOverrideDate:0 animated:1 enteringOrb:0 completion:v7];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    [(NTKCharacterTimeView *)self _endScrubbing];
    v6[2](v6);
  }
}

@end