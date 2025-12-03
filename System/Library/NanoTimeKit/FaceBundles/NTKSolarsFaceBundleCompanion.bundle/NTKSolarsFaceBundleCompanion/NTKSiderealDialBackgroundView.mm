@interface NTKSiderealDialBackgroundView
- (NTKSiderealDialBackgroundView)initWithFrame:(CGRect)frame orbitDiameter:(double)diameter timeOrbitRadius:(double)radius timeRadius:(double)timeRadius dialImage:(id)image waypointImage:(id)waypointImage gnomonImage:(id)gnomonImage dayGnomonImage:(id)self0 dayDiskBloomImage:(id)self1 dayDiscImage:(id)self2 nightGnomonImage:(id)self3 nightDiscImage:(id)self4 nightRingImage:(id)self5 initialData:(id)self6 useXR:(BOOL)self7;
- (void)layoutSubviews;
- (void)setSectors:(id)sectors;
- (void)updateDayMask;
@end

@implementation NTKSiderealDialBackgroundView

- (NTKSiderealDialBackgroundView)initWithFrame:(CGRect)frame orbitDiameter:(double)diameter timeOrbitRadius:(double)radius timeRadius:(double)timeRadius dialImage:(id)image waypointImage:(id)waypointImage gnomonImage:(id)gnomonImage dayGnomonImage:(id)self0 dayDiskBloomImage:(id)self1 dayDiscImage:(id)self2 nightGnomonImage:(id)self3 nightDiscImage:(id)self4 nightRingImage:(id)self5 initialData:(id)self6 useXR:(BOOL)self7
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  imageCopy = image;
  waypointImageCopy = waypointImage;
  gnomonImageCopy = gnomonImage;
  dayGnomonImageCopy = dayGnomonImage;
  bloomImageCopy = bloomImage;
  discImageCopy = discImage;
  nightGnomonImageCopy = nightGnomonImage;
  nightDiscImageCopy = nightDiscImage;
  ringImageCopy = ringImage;
  dataCopy = data;
  v57.receiver = self;
  v57.super_class = NTKSiderealDialBackgroundView;
  height = [(NTKSiderealDialBackgroundView *)&v57 initWithFrame:x, y, width, height];
  if (height)
  {
    v53 = ringImageCopy;
    v39 = nightDiscImageCopy;
    v40 = bloomImageCopy;
    v41 = waypointImageCopy;
    v42 = [NTKSiderealBackgroundQuad alloc];
    +[CLKDevice currentDevice];
    v54 = nightGnomonImageCopy;
    v44 = v43 = gnomonImageCopy;
    LOBYTE(v52) = r;
    v45 = [(NTKSiderealBackgroundQuad *)v42 initWithDevice:v44 orbitDiameter:imageCopy timeOrbitRadius:v41 timeRadius:v43 dialImage:dayGnomonImageCopy waypointImage:v40 gnomonImage:diameter dayGnomonImage:radius dayDiskBloomImage:timeRadius dayDiscImage:discImageCopy nightGnomonImage:v54 nightDiscImage:v39 nightRingImage:v53 initialData:dataCopy useXR:v52];
    backgroundQuad = height->_backgroundQuad;
    height->_backgroundQuad = v45;

    [(NTKSiderealDialBackgroundView *)height bounds];
    if (r)
    {
      v47 = 2;
    }

    else
    {
      v47 = 0;
    }

    v48 = [CLKUIQuadView quadViewWithFrame:@"Sdrl" identifier:0 options:v47 colorSpace:?];
    quadView = height->_quadView;
    height->_quadView = v48;

    [(CLKUIQuadView *)height->_quadView setPaused:1];
    [(CLKUIQuadView *)height->_quadView setPreferredFramesPerSecond:0];
    [(CLKUIQuadView *)height->_quadView addQuad:height->_backgroundQuad];
    layer = [(CLKUIQuadView *)height->_quadView layer];
    [layer setAllowsEdgeAntialiasing:0];

    waypointImageCopy = v41;
    bloomImageCopy = v40;
    nightDiscImageCopy = v39;
    ringImageCopy = v53;
    objc_storeStrong(&height->_quad, height->_backgroundQuad);
    gnomonImageCopy = v43;
    nightGnomonImageCopy = v54;
    [(NTKSiderealDialBackgroundView *)height addSubview:height->_quadView];
  }

  return height;
}

- (void)updateDayMask
{
  [(NTKSiderealBackgroundQuad *)self->_backgroundQuad setRenderingMode:1];
  quadView = self->_quadView;
  [(NTKSiderealDialBackgroundView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = +[CLKDevice currentDevice];
  [v12 screenScale];
  v14 = [(CLKUIQuadView *)quadView snapshotTextureInRect:v5 scale:v7 time:v9, v11, v13, 0.0];
  [(NTKSiderealBackgroundQuad *)self->_quad setDayMask:v14];

  [(NTKSiderealBackgroundQuad *)self->_backgroundQuad setRenderingMode:2];
  v15 = self->_quadView;
  [(NTKSiderealDialBackgroundView *)self bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = +[CLKDevice currentDevice];
  [v24 screenScale];
  v26 = [(CLKUIQuadView *)v15 snapshotTextureInRect:v17 scale:v19 time:v21, v23, v25, 0.0];
  [(NTKSiderealBackgroundQuad *)self->_quad setNightMask:v26];

  backgroundQuad = self->_backgroundQuad;

  [(NTKSiderealBackgroundQuad *)backgroundQuad setRenderingMode:0];
}

- (void)setSectors:(id)sectors
{
  [(NTKSiderealBackgroundQuad *)self->_backgroundQuad setSectors:sectors];

  [(NTKSiderealDialBackgroundView *)self updateDayMask];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NTKSiderealDialBackgroundView;
  [(NTKSiderealDialBackgroundView *)&v3 layoutSubviews];
  [(NTKSiderealDialBackgroundView *)self bounds];
  [(CLKUIQuadView *)self->_quadView setFrame:?];
}

@end