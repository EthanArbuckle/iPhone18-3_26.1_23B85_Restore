@interface NTKSiderealDialBackgroundView
- (NTKSiderealDialBackgroundView)initWithFrame:(CGRect)a3 orbitDiameter:(double)a4 timeOrbitRadius:(double)a5 timeRadius:(double)a6 dialImage:(id)a7 waypointImage:(id)a8 gnomonImage:(id)a9 dayGnomonImage:(id)a10 dayDiskBloomImage:(id)a11 dayDiscImage:(id)a12 nightGnomonImage:(id)a13 nightDiscImage:(id)a14 nightRingImage:(id)a15 initialData:(id)a16 useXR:(BOOL)a17;
- (void)layoutSubviews;
- (void)setSectors:(id)a3;
- (void)updateDayMask;
@end

@implementation NTKSiderealDialBackgroundView

- (NTKSiderealDialBackgroundView)initWithFrame:(CGRect)a3 orbitDiameter:(double)a4 timeOrbitRadius:(double)a5 timeRadius:(double)a6 dialImage:(id)a7 waypointImage:(id)a8 gnomonImage:(id)a9 dayGnomonImage:(id)a10 dayDiskBloomImage:(id)a11 dayDiscImage:(id)a12 nightGnomonImage:(id)a13 nightDiscImage:(id)a14 nightRingImage:(id)a15 initialData:(id)a16 useXR:(BOOL)a17
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v56 = a7;
  v30 = a8;
  v31 = a9;
  v32 = a10;
  v33 = a11;
  v55 = a12;
  v34 = a13;
  v35 = a14;
  v36 = a15;
  v37 = a16;
  v57.receiver = self;
  v57.super_class = NTKSiderealDialBackgroundView;
  v38 = [(NTKSiderealDialBackgroundView *)&v57 initWithFrame:x, y, width, height];
  if (v38)
  {
    v53 = v36;
    v39 = v35;
    v40 = v33;
    v41 = v30;
    v42 = [NTKSiderealBackgroundQuad alloc];
    +[CLKDevice currentDevice];
    v54 = v34;
    v44 = v43 = v31;
    LOBYTE(v52) = a17;
    v45 = [(NTKSiderealBackgroundQuad *)v42 initWithDevice:v44 orbitDiameter:v56 timeOrbitRadius:v41 timeRadius:v43 dialImage:v32 waypointImage:v40 gnomonImage:a4 dayGnomonImage:a5 dayDiskBloomImage:a6 dayDiscImage:v55 nightGnomonImage:v54 nightDiscImage:v39 nightRingImage:v53 initialData:v37 useXR:v52];
    backgroundQuad = v38->_backgroundQuad;
    v38->_backgroundQuad = v45;

    [(NTKSiderealDialBackgroundView *)v38 bounds];
    if (a17)
    {
      v47 = 2;
    }

    else
    {
      v47 = 0;
    }

    v48 = [CLKUIQuadView quadViewWithFrame:@"Sdrl" identifier:0 options:v47 colorSpace:?];
    quadView = v38->_quadView;
    v38->_quadView = v48;

    [(CLKUIQuadView *)v38->_quadView setPaused:1];
    [(CLKUIQuadView *)v38->_quadView setPreferredFramesPerSecond:0];
    [(CLKUIQuadView *)v38->_quadView addQuad:v38->_backgroundQuad];
    v50 = [(CLKUIQuadView *)v38->_quadView layer];
    [v50 setAllowsEdgeAntialiasing:0];

    v30 = v41;
    v33 = v40;
    v35 = v39;
    v36 = v53;
    objc_storeStrong(&v38->_quad, v38->_backgroundQuad);
    v31 = v43;
    v34 = v54;
    [(NTKSiderealDialBackgroundView *)v38 addSubview:v38->_quadView];
  }

  return v38;
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

- (void)setSectors:(id)a3
{
  [(NTKSiderealBackgroundQuad *)self->_backgroundQuad setSectors:a3];

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