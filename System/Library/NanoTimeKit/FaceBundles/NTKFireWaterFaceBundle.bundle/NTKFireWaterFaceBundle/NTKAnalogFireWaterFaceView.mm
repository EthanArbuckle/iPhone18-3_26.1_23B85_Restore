@interface NTKAnalogFireWaterFaceView
+ (id)_nameForColor:(unint64_t)color;
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (BOOL)_wantsStatusBarIconShadow;
- (id)_complicationsCompanionForegroundColor;
- (id)_swatchImageForColor:(unint64_t)color andDialShape:(unint64_t)shape;
- (id)_swatchImageForColorOption:(id)option size:(CGSize)size;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)imageForEditOption:(id)option;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_customizeVideoPlayerOnSetup;
- (void)_updateDialSize;
- (void)reloadDataSources;
- (void)setCurrentDialShape:(unint64_t)shape;
- (void)setupDataSources;
@end

@implementation NTKAnalogFireWaterFaceView

- (BOOL)_wantsStatusBarIconShadow
{
  v2 = [(NTKAnalogFireWaterFaceView *)self optionForCustomEditMode:15 slot:0];
  v3 = [v2 dialShape] == &dword_0 + 1;

  return v3;
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v10.receiver = self;
  v10.super_class = NTKAnalogFireWaterFaceView;
  [(NTKAnalogFireWaterFaceView *)&v10 _applyOption:optionCopy forCustomEditMode:mode slot:slot];
  if (mode == 15)
  {
    -[NTKAnalogFireWaterFaceView setCurrentDialShape:](self, "setCurrentDialShape:", [optionCopy dialShape]);
    delegate = [(NTKAnalogFireWaterFaceView *)self delegate];
    [delegate faceViewDidChangeWantsStatusBarIconShadow];
  }

  else if (mode == 10)
  {
    -[NTKAnalogFireWaterFaceView setCurrentColor:](self, "setCurrentColor:", [optionCopy color]);
  }
}

- (void)setCurrentDialShape:(unint64_t)shape
{
  self->_currentDialShape = shape;
  [(NTKAnalogFireWaterFaceView *)self _updateDialSize];

  [(NTKAnalogFireWaterFaceView *)self reloadDataSources];
}

- (void)_customizeVideoPlayerOnSetup
{
  [(NTKAnalogFireWaterFaceView *)self setupDataSources];
  videoPlayerView = [(NTKAnalogFireWaterFaceView *)self videoPlayerView];
  [videoPlayerView setPausedViewEnabled:0];

  [(NTKAnalogFireWaterFaceView *)self reloadDataSources];

  [(NTKAnalogFireWaterFaceView *)self _updateDialSize];
}

- (id)_complicationsCompanionForegroundColor
{
  currentColor = self->_currentColor;
  switch(currentColor)
  {
    case 2uLL:
      self = sub_1BC8();
      break;
    case 1uLL:
      self = sub_1B84();
      break;
    case 0uLL:
      self = +[UIColor whiteColor];
      break;
  }

  return self;
}

- (id)imageForEditOption:(id)option
{
  optionCopy = option;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    color = [optionCopy color];
    dataSources = self->_dataSources;
    v7 = [NSNumber numberWithUnsignedInteger:self->_currentDialShape];
    v8 = [(NSDictionary *)dataSources objectForKeyedSubscript:v7];
    currentColor = color;
LABEL_5:
    v12 = [NSNumber numberWithUnsignedInteger:currentColor];
    v13 = [v8 objectForKeyedSubscript:v12];

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dialShape = [optionCopy dialShape];
    v11 = self->_dataSources;
    v7 = [NSNumber numberWithUnsignedInteger:dialShape];
    v8 = [(NSDictionary *)v11 objectForKeyedSubscript:v7];
    currentColor = self->_currentColor;
    goto LABEL_5;
  }

  v13 = 0;
LABEL_7:
  posterImage = [v13 posterImage];

  return posterImage;
}

- (void)_updateDialSize
{
  if (self->_currentDialShape)
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    device = [(NTKAnalogFireWaterFaceView *)self device];
    [NTKAnalogUtilities dialSizeForDevice:device];
    width = v6;
    height = v7;
  }

  [(NTKAnalogFireWaterFaceView *)self setVideoDialSize:width, height];
}

- (void)setupDataSources
{
  device = [(NTKAnalogFireWaterFaceView *)self device];
  v3 = sub_1B84();
  v4 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Fire_Fullscreen_008" andColor:v3];
  v69[0] = v4;
  v5 = sub_1B84();
  v6 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Fire_Fullscreen_008_Calm" andColor:v5];
  v69[1] = v6;
  v57 = [NSArray arrayWithObjects:v69 count:2];

  v7 = sub_1BC8();
  v8 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Water_Fullscreen_005" andColor:v7];
  v68[0] = v8;
  v9 = sub_1BC8();
  v10 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Water_Fullscreen_005_Edge" andColor:v9];
  v68[1] = v10;
  v56 = [NSArray arrayWithObjects:v68 count:2];

  v11 = sub_1B84();
  v12 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Fire_Fullscreen_008" andColor:v11];
  v67[0] = v12;
  v13 = sub_1BC8();
  v14 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Water_Fullscreen_005" andColor:v13];
  v67[1] = v14;
  v15 = sub_1B84();
  v16 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Fire_Fullscreen_008_Calm" andColor:v15];
  v67[2] = v16;
  v17 = sub_1BC8();
  v18 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Water_Fullscreen_005_Edge" andColor:v17];
  v67[3] = v18;
  v52 = [NSArray arrayWithObjects:v67 count:4];

  v65[0] = &off_88C0;
  v19 = NTKImageNamedFromAssetsBundle();
  v20 = [NTKVideoPlayerArrayDataSource dataSourceForDevice:device withPosterImage:v19 order:0 andListings:v57];
  v66[0] = v20;
  v65[1] = &off_88D8;
  v21 = NTKImageNamedFromAssetsBundle();
  v22 = [NTKVideoPlayerArrayDataSource dataSourceForDevice:device withPosterImage:v21 order:0 andListings:v56];
  v66[1] = v22;
  v65[2] = &off_88F0;
  v23 = NTKImageNamedFromAssetsBundle();
  v24 = [NTKVideoPlayerArrayDataSource dataSourceForDevice:device withPosterImage:v23 order:0 andListings:v52];
  v66[2] = v24;
  v51 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:3];

  v25 = sub_1B84();
  v26 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Fire_Circular_008" andColor:v25];
  v64[0] = v26;
  v27 = sub_1B84();
  v28 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Fire_Circular_008_Calm" andColor:v27];
  v64[1] = v28;
  v55 = [NSArray arrayWithObjects:v64 count:2];

  v29 = sub_1BC8();
  v30 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Water_Circular_005" andColor:v29];
  v63[0] = v30;
  v31 = sub_1BC8();
  v32 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Water_Circular_005_Edge" andColor:v31];
  v63[1] = v32;
  v54 = [NSArray arrayWithObjects:v63 count:2];

  v33 = sub_1B84();
  v34 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Fire_Circular_008" andColor:v33];
  v62[0] = v34;
  v35 = sub_1BC8();
  v36 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Water_Circular_005" andColor:v35];
  v62[1] = v36;
  v37 = sub_1B84();
  v38 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Fire_Circular_008_Calm" andColor:v37];
  v62[2] = v38;
  v39 = sub_1BC8();
  v40 = [NTKVideoPlayerListing listingForDevice:device withFilename:@"Water_Circular_005_Edge" andColor:v39];
  v62[3] = v40;
  v41 = [NSArray arrayWithObjects:v62 count:4];

  v60[0] = &off_88C0;
  v42 = NTKImageNamedFromAssetsBundle();
  v43 = [NTKVideoPlayerArrayDataSource dataSourceForDevice:device withPosterImage:v42 order:0 andListings:v55];
  v61[0] = v43;
  v60[1] = &off_88D8;
  v44 = NTKImageNamedFromAssetsBundle();
  v45 = [NTKVideoPlayerArrayDataSource dataSourceForDevice:device withPosterImage:v44 order:0 andListings:v54];
  v61[1] = v45;
  v60[2] = &off_88F0;
  v46 = NTKImageNamedFromAssetsBundle();
  v47 = [NTKVideoPlayerArrayDataSource dataSourceForDevice:device withPosterImage:v46 order:0 andListings:v41];
  v61[2] = v47;
  v48 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:3];

  v58[0] = &off_88C0;
  v58[1] = &off_88F0;
  v59[0] = v51;
  v59[1] = v48;
  v49 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:2];
  dataSources = self->_dataSources;
  self->_dataSources = v49;
}

- (void)reloadDataSources
{
  dataSources = self->_dataSources;
  v7 = [NSNumber numberWithUnsignedInteger:self->_currentDialShape];
  v4 = [(NSDictionary *)dataSources objectForKeyedSubscript:v7];
  v5 = [NSNumber numberWithUnsignedInteger:self->_currentColor];
  v6 = [v4 objectForKeyedSubscript:v5];
  [(NTKAnalogFireWaterFaceView *)self _setVideoPlayerDataSource:v6];
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if (options == 15)
  {
    return &off_8AF0;
  }

  else
  {
    return 0;
  }
}

+ (id)_nameForColor:(unint64_t)color
{
  v3 = @"All";
  if (color == 1)
  {
    v3 = @"Fire";
  }

  if (color == 2)
  {
    return @"Water";
  }

  else
  {
    return v3;
  }
}

- (id)_swatchImageForColorOption:(id)option size:(CGSize)size
{
  v4 = +[NTKAnalogFireWaterFaceView _nameForColor:](NTKAnalogFireWaterFaceView, "_nameForColor:", [option color]);
  v5 = [NSString stringWithFormat:@"Swatch-FireWater-Color-%@", v4];

  v6 = [NTKFireWaterFaceBundle imageWithName:v5];

  return v6;
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  if (mode == 15)
  {
    v9 = [options objectForKeyedSubscript:&off_8908];
    v10 = optionCopy;
    color = [v9 color];
    dialShape = [v10 dialShape];

    v13 = [(NTKAnalogFireWaterFaceView *)self _swatchImageForColor:color andDialShape:dialShape];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NTKAnalogFireWaterFaceView;
    v13 = [(NTKAnalogFireWaterFaceView *)&v15 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:options];
  }

  return v13;
}

- (id)_swatchImageForColor:(unint64_t)color andDialShape:(unint64_t)shape
{
  v5 = [NTKAnalogFireWaterFaceView _nameForColor:color];
  v6 = @"Circular";
  if (shape)
  {
    v6 = 0;
  }

  if (shape == 1)
  {
    v6 = @"Fullscreen";
  }

  v7 = [NSString stringWithFormat:@"Swatch-FireWater-%@-%@", v6, v5];
  v8 = [NTKFireWaterFaceBundle imageWithName:v7];

  return v8;
}

@end