@interface NTKAnalogBreatheFaceView
- (id)_complicationsPlatterColor;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)_tapHighlightImage;
- (id)imageForEditOption:(id)a3;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyVideoPlayerTransform;
- (void)_configureTimeView:(id)a3;
- (void)_customizeVideoPlayerOnSetup;
- (void)_faceViewWasTapped;
- (void)_handleEitherScreenWake;
- (void)_updateDialSize;
- (void)setCurrentVideoStyle:(unint64_t)a3;
- (void)setupDataSources;
@end

@implementation NTKAnalogBreatheFaceView

- (void)_configureTimeView:(id)a3
{
  v8.receiver = self;
  v8.super_class = NTKAnalogBreatheFaceView;
  v3 = a3;
  [(NTKAnalogBreatheFaceView *)&v8 _configureTimeView:v3];
  v4 = [v3 secondHandView];
  [v4 setHidden:1];

  v5 = sub_1170();
  [v3 setInlayColor:v5];

  v6 = [v3 minuteHandView];

  v7 = sub_1170();
  [v6 setHandDotColor:v7];
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v10.receiver = self;
  v10.super_class = NTKAnalogBreatheFaceView;
  [(NTKAnalogBreatheFaceView *)&v10 _applyOption:v8 forCustomEditMode:a4 slot:a5];
  if (a4 == 12)
  {
    v9 = [(NTKAnalogBreatheFaceView *)self currentVideoStyle];
    if (v9 != [v8 style])
    {
      -[NTKAnalogBreatheFaceView setCurrentVideoStyle:](self, "setCurrentVideoStyle:", [v8 style]);
    }
  }
}

- (void)setCurrentVideoStyle:(unint64_t)a3
{
  self->_currentVideoStyle = a3;
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
  v3 = [(NTKAnalogBreatheFaceView *)self videoPlayerView];
  [v3 setPlayerBehavior:1];

  v4 = [(NTKAnalogBreatheFaceView *)self videoPlayerView];
  [v4 setPausedViewEnabled:0];

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
  v2 = [(NTKAnalogBreatheFaceView *)self device];
  sub_1A98(v2, v2);
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

- (id)imageForEditOption:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 style];
    editOptionDataSources = self->_editOptionDataSources;
    v7 = [NSNumber numberWithUnsignedInteger:v5];
    v8 = [(NSDictionary *)editOptionDataSources objectForKeyedSubscript:v7];
    v9 = [v8 posterImage];
  }

  else
  {
    v9 = 0;
  }

  return v9;
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
    v5 = [(NTKAnalogBreatheFaceView *)self device];
    [NTKAnalogUtilities dialSizeForDevice:v5];
    width = v6;
    height = v8;
  }

  [(NTKAnalogBreatheFaceView *)self setVideoDialSize:width, height];
}

- (void)setupDataSources
{
  v18 = +[NSMutableDictionary dictionary];
  v3 = [(NTKAnalogBreatheFaceView *)self device];
  v4 = NTKImageNamedFromAssetsBundle();
  v5 = [NTKVideoPlayerArrayDataSource dataSourceForDevice:v3 withPosterImage:v4 order:1 endBehavior:2 andFilenames:&off_8BD8];
  [v18 setObject:v5 forKeyedSubscript:&off_89B0];

  v6 = [(NTKAnalogBreatheFaceView *)self device];
  v7 = NTKImageNamedFromAssetsBundle();
  v8 = [NTKVideoPlayerSingleVideoDataSource dataSourceForDevice:v6 withPosterImage:v7 endBehavior:2 andFilename:@"Breathe_Flower"];
  [v18 setObject:v8 forKeyedSubscript:&off_89C8];

  v9 = [(NTKAnalogBreatheFaceView *)self device];
  v10 = NTKImageNamedFromAssetsBundle();
  v11 = [NTKVideoPlayerSingleVideoDataSource dataSourceForDevice:v9 withPosterImage:v10 endBehavior:2 andFilename:@"Breathe_Rings"];
  [v18 setObject:v11 forKeyedSubscript:&off_89E0];

  v12 = [(NTKAnalogBreatheFaceView *)self device];
  LODWORD(v9) = [v12 supportsPDRCapability:4094027452];

  if (v9)
  {
    v13 = [(NTKAnalogBreatheFaceView *)self device];
    v14 = NTKImageNamedFromAssetsBundle();
    v15 = [NTKVideoPlayerSingleVideoDataSource dataSourceForDevice:v13 withPosterImage:v14 endBehavior:2 andFilename:@"Breathe_Orbs"];
    [v18 setObject:v15 forKeyedSubscript:&off_89F8];
  }

  v16 = [v18 copy];
  editOptionDataSources = self->_editOptionDataSources;
  self->_editOptionDataSources = v16;
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v5 = [a3 style];
  if (v5 > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(&off_83F8 + v5);
  }

  return [NTKBreatheFaceBundle imageWithName:v6];
}

@end