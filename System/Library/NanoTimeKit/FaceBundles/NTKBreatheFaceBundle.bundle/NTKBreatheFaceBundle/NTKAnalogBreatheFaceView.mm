@interface NTKAnalogBreatheFaceView
- (id)_complicationsPlatterColor;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)_tapHighlightImage;
- (id)imageForEditOption:(id)option;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyVideoPlayerTransform;
- (void)_configureTimeView:(id)view;
- (void)_customizeVideoPlayerOnSetup;
- (void)_faceViewWasTapped;
- (void)_handleEitherScreenWake;
- (void)_updateDialSize;
- (void)setCurrentVideoStyle:(unint64_t)style;
- (void)setupDataSources;
@end

@implementation NTKAnalogBreatheFaceView

- (void)_configureTimeView:(id)view
{
  v8.receiver = self;
  v8.super_class = NTKAnalogBreatheFaceView;
  viewCopy = view;
  [(NTKAnalogBreatheFaceView *)&v8 _configureTimeView:viewCopy];
  secondHandView = [viewCopy secondHandView];
  [secondHandView setHidden:1];

  v5 = sub_1170();
  [viewCopy setInlayColor:v5];

  minuteHandView = [viewCopy minuteHandView];

  v7 = sub_1170();
  [minuteHandView setHandDotColor:v7];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v10.receiver = self;
  v10.super_class = NTKAnalogBreatheFaceView;
  [(NTKAnalogBreatheFaceView *)&v10 _applyOption:optionCopy forCustomEditMode:mode slot:slot];
  if (mode == 12)
  {
    currentVideoStyle = [(NTKAnalogBreatheFaceView *)self currentVideoStyle];
    if (currentVideoStyle != [optionCopy style])
    {
      -[NTKAnalogBreatheFaceView setCurrentVideoStyle:](self, "setCurrentVideoStyle:", [optionCopy style]);
    }
  }
}

- (void)setCurrentVideoStyle:(unint64_t)style
{
  self->_currentVideoStyle = style;
  editOptionDataSources = self->_editOptionDataSources;
  v5 = [NSNumber numberWithUnsignedInteger:?];
  v6 = [(NSDictionary *)editOptionDataSources objectForKeyedSubscript:v5];
  [(NTKAnalogBreatheFaceView *)self _setVideoPlayerDataSource:v6];

  [(NTKAnalogBreatheFaceView *)self _applyVideoPlayerTransform];

  [(NTKAnalogBreatheFaceView *)self _updateDialSize];
}

- (void)_customizeVideoPlayerOnSetup
{
  [(NTKAnalogBreatheFaceView *)self setupDataSources];
  videoPlayerView = [(NTKAnalogBreatheFaceView *)self videoPlayerView];
  [videoPlayerView setPlayerBehavior:1];

  videoPlayerView2 = [(NTKAnalogBreatheFaceView *)self videoPlayerView];
  [videoPlayerView2 setPausedViewEnabled:0];

  currentVideoStyle = self->_currentVideoStyle;

  [(NTKAnalogBreatheFaceView *)self setCurrentVideoStyle:currentVideoStyle];
}

- (void)_handleEitherScreenWake
{
  self->_shouldApplyTransform = 1;
  v3.receiver = self;
  v3.super_class = NTKAnalogBreatheFaceView;
  [(NTKAnalogBreatheFaceView *)&v3 _handleEitherScreenWake];
  [(NTKAnalogBreatheFaceView *)self _takeBacklightAssertion];
  [(NTKAnalogBreatheFaceView *)self _applyVideoPlayerTransform];
}

- (void)_faceViewWasTapped
{
  v2 = NTKDefaultAppLaunchLocation();
  NTKLaunchApp();
}

- (id)_tapHighlightImage
{
  device = [(NTKAnalogBreatheFaceView *)self device];
  sub_1A98(device, device);
  if (qword_CBB0 != -1)
  {
    sub_2D20();
  }

  v3 = qword_CB88;
  v4 = qword_CB88;

  return v3;
}

- (id)_complicationsPlatterColor
{
  v2 = sub_151C();
  v3 = NTKColorByPremultiplyingAlpha();

  return v3;
}

- (id)imageForEditOption:(id)option
{
  optionCopy = option;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    style = [optionCopy style];
    editOptionDataSources = self->_editOptionDataSources;
    v7 = [NSNumber numberWithUnsignedInteger:style];
    v8 = [(NSDictionary *)editOptionDataSources objectForKeyedSubscript:v7];
    posterImage = [v8 posterImage];
  }

  else
  {
    posterImage = 0;
  }

  return posterImage;
}

- (void)_applyVideoPlayerTransform
{
  if (self->_currentVideoStyle == 1 && self->_shouldApplyTransform)
  {
    self->_shouldApplyTransform = 0;
    [(NTKAnalogBreatheFaceView *)self _transformVideoPlayerView:2];
  }

  else
  {
    [(NTKAnalogBreatheFaceView *)self _transformVideoPlayerView:0];
  }
}

- (void)_updateDialSize
{
  currentVideoStyle = self->_currentVideoStyle;
  if (currentVideoStyle > 3 || currentVideoStyle == 1)
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    device = [(NTKAnalogBreatheFaceView *)self device];
    [NTKAnalogUtilities dialSizeForDevice:device];
    width = v6;
    height = v8;
  }

  [(NTKAnalogBreatheFaceView *)self setVideoDialSize:width, height];
}

- (void)setupDataSources
{
  v18 = +[NSMutableDictionary dictionary];
  device = [(NTKAnalogBreatheFaceView *)self device];
  v4 = NTKImageNamedFromAssetsBundle();
  v5 = [NTKVideoPlayerArrayDataSource dataSourceForDevice:device withPosterImage:v4 order:1 endBehavior:2 andFilenames:&off_8BD8];
  [v18 setObject:v5 forKeyedSubscript:&off_89B0];

  device2 = [(NTKAnalogBreatheFaceView *)self device];
  v7 = NTKImageNamedFromAssetsBundle();
  v8 = [NTKVideoPlayerSingleVideoDataSource dataSourceForDevice:device2 withPosterImage:v7 endBehavior:2 andFilename:@"Breathe_Flower"];
  [v18 setObject:v8 forKeyedSubscript:&off_89C8];

  device3 = [(NTKAnalogBreatheFaceView *)self device];
  v10 = NTKImageNamedFromAssetsBundle();
  v11 = [NTKVideoPlayerSingleVideoDataSource dataSourceForDevice:device3 withPosterImage:v10 endBehavior:2 andFilename:@"Breathe_Rings"];
  [v18 setObject:v11 forKeyedSubscript:&off_89E0];

  device4 = [(NTKAnalogBreatheFaceView *)self device];
  LODWORD(device3) = [device4 supportsPDRCapability:4094027452];

  if (device3)
  {
    device5 = [(NTKAnalogBreatheFaceView *)self device];
    v14 = NTKImageNamedFromAssetsBundle();
    v15 = [NTKVideoPlayerSingleVideoDataSource dataSourceForDevice:device5 withPosterImage:v14 endBehavior:2 andFilename:@"Breathe_Orbs"];
    [v18 setObject:v15 forKeyedSubscript:&off_89F8];
  }

  v16 = [v18 copy];
  editOptionDataSources = self->_editOptionDataSources;
  self->_editOptionDataSources = v16;
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  style = [option style];
  if (style > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(&off_83F8 + style);
  }

  return [NTKBreatheFaceBundle imageWithName:v6];
}

@end