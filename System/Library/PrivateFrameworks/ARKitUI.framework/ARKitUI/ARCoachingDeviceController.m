@interface ARCoachingDeviceController
- (ARCoachingDeviceController)initWithDeviceMaskImage:(id)a3 solidColor:(id)a4 geoTrackingMode:(BOOL)a5;
- (CATransform3D)transform;
- (CGPoint)position;
- (CGRect)bounds;
- (void)setBounds:(CGRect)a3;
- (void)setLayerParent:(id)a3;
- (void)setOpacity:(float)a3;
- (void)setPosition:(CGPoint)a3;
- (void)setTransform:(CATransform3D *)a3;
- (void)update:(double)a3 visibility:(double)a4 layer:(id)a5 renderParams:(id *)a6;
@end

@implementation ARCoachingDeviceController

- (CGRect)bounds
{
  [(CALayer *)self->_deviceLayer bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CALayer *)self->_deviceLayer setBounds:?];
  [(CALayer *)self->_holeLayer setBounds:x, y, width, height];
  deviceMaskLayer = self->_deviceMaskLayer;
  if (deviceMaskLayer)
  {
    [(CALayer *)deviceMaskLayer setBounds:x, y, width, height];
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    MidX = CGRectGetMidX(v13);
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    MidY = CGRectGetMidY(v14);
    v11 = self->_deviceMaskLayer;

    [(CALayer *)v11 setPosition:MidX, MidY];
  }
}

- (CGPoint)position
{
  [(CALayer *)self->_deviceLayer position];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(CALayer *)self->_deviceLayer setPosition:?];
  holeLayer = self->_holeLayer;

  [(CALayer *)holeLayer setPosition:x, y];
}

- (CATransform3D)transform
{
  result = self->_deviceLayer;
  if (result)
  {
    return [(CATransform3D *)result transform];
  }

  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  return result;
}

- (void)setTransform:(CATransform3D *)a3
{
  v5 = *&a3->m33;
  v17 = *&a3->m31;
  v18 = v5;
  v6 = *&a3->m43;
  v19 = *&a3->m41;
  v20 = v6;
  v7 = *&a3->m13;
  v13 = *&a3->m11;
  v14 = v7;
  v8 = *&a3->m23;
  v15 = *&a3->m21;
  v16 = v8;
  [(CALayer *)self->_deviceLayer setTransform:&v13];
  v9 = *&a3->m33;
  v17 = *&a3->m31;
  v18 = v9;
  v10 = *&a3->m43;
  v19 = *&a3->m41;
  v20 = v10;
  v11 = *&a3->m13;
  v13 = *&a3->m11;
  v14 = v11;
  v12 = *&a3->m23;
  v15 = *&a3->m21;
  v16 = v12;
  [(CALayer *)self->_holeLayer setTransform:&v13];
}

- (void)setOpacity:(float)a3
{
  [(CALayer *)self->_deviceLayer setOpacity:?];
  holeLayer = self->_holeLayer;
  if (self->_geoTrackingMode)
  {
    LODWORD(v5) = 1.0;
    [(CALayer *)holeLayer setOpacity:v5];
    holeLayer = self->_holeLayer;
  }

  *&v5 = a3;

  [(CALayer *)holeLayer setOpacity:v5];
}

- (ARCoachingDeviceController)initWithDeviceMaskImage:(id)a3 solidColor:(id)a4 geoTrackingMode:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v25.receiver = self;
  v25.super_class = ARCoachingDeviceController;
  v10 = [(ARCoachingDeviceController *)&v25 init];
  if (v10)
  {
    v11 = [MEMORY[0x277CD9ED0] layer];
    holeLayer = v10->_holeLayer;
    v10->_holeLayer = v11;

    [(CALayer *)v10->_holeLayer setCompositingFilter:*MEMORY[0x277CDA598]];
    -[CALayer setBackgroundColor:](v10->_holeLayer, "setBackgroundColor:", [v9 CGColor]);
    [(CALayer *)v10->_holeLayer setCornerRadius:8.0];
    v13 = *MEMORY[0x277CDA138];
    [(CALayer *)v10->_holeLayer setCornerCurve:*MEMORY[0x277CDA138]];
    v14 = [MEMORY[0x277CD9ED0] layer];
    deviceLayer = v10->_deviceLayer;
    v10->_deviceLayer = v14;

    v10->_geoTrackingMode = a5;
    if (v8)
    {
      v16 = [MEMORY[0x277CD9ED0] layer];
      deviceMaskLayer = v10->_deviceMaskLayer;
      v10->_deviceMaskLayer = v16;

      -[CALayer setContents:](v10->_deviceMaskLayer, "setContents:", [v8 CGImage]);
      [(CALayer *)v10->_deviceMaskLayer setAllowsEdgeAntialiasing:1];
      [(CALayer *)v10->_deviceLayer setMask:v10->_deviceMaskLayer];
      v18 = [MEMORY[0x277D75348] whiteColor];
      -[CALayer setBackgroundColor:](v10->_deviceLayer, "setBackgroundColor:", [v18 CGColor]);

      [v8 size];
      v20 = v19;
      [v8 size];
      v22 = v20 / v21;
    }

    else
    {
      v23 = [MEMORY[0x277D75348] whiteColor];
      -[CALayer setBorderColor:](v10->_deviceLayer, "setBorderColor:", [v23 CGColor]);

      [(CALayer *)v10->_deviceLayer setBorderWidth:2.0];
      [(CALayer *)v10->_deviceLayer setCornerRadius:8.0];
      [(CALayer *)v10->_deviceLayer setCornerCurve:v13];
      v22 = 0.5;
    }

    v10->_aspectRatio = v22;
  }

  return v10;
}

- (void)update:(double)a3 visibility:(double)a4 layer:(id)a5 renderParams:(id *)a6
{
  v10 = a5;
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  *&v11 = a3;
  v19 = cosf(*&v11);
  if (self->_geoTrackingMode)
  {
    v20 = a3 * 0.25 * 3.14159265 + a3 * 0.25 * 3.14159265;
    v19 = sinf(v20);
  }

  v21 = v19;
  v22 = v18 / 600.0;
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(ARCoachingDeviceController *)self setBounds:0.0, 0.0, self->_aspectRatio * 72.0 * v22, (v22 * 72.0)];
  v62.origin.x = v12;
  v62.origin.y = v14;
  v62.size.width = v16;
  v62.size.height = v18;
  MidX = CGRectGetMidX(v62);
  v63.origin.x = v12;
  v63.origin.y = v14;
  v63.size.width = v16;
  v63.size.height = v18;
  [(ARCoachingDeviceController *)self setPosition:MidX, CGRectGetMidY(v63)];
  v24 = *(MEMORY[0x277CD9DE8] + 48);
  *&v61.m21 = *(MEMORY[0x277CD9DE8] + 32);
  *&v61.m23 = v24;
  *&v61.m31 = *(MEMORY[0x277CD9DE8] + 64);
  v61.m33 = *(MEMORY[0x277CD9DE8] + 80);
  v25 = *(MEMORY[0x277CD9DE8] + 16);
  *&v61.m11 = *MEMORY[0x277CD9DE8];
  *&v61.m13 = v25;
  v26 = *(MEMORY[0x277CD9DE8] + 112);
  *&v61.m41 = *(MEMORY[0x277CD9DE8] + 96);
  *&v61.m43 = v26;
  v61.m34 = -1.0 / (v18 * 0.615763547);
  [(ARCoachingDeviceController *)self setTransform:&v61];
  [(ARCoachingDeviceController *)self transform];
  CATransform3DRotate(&v60, &v61, a6->var0 * 3.14159265 / 180.0, 0.0, 1.0, 0.0);
  v61 = v60;
  [(ARCoachingDeviceController *)self setTransform:&v61];
  v27 = a4 * 0.7 + 0.3;
  [(ARCoachingDeviceController *)self transform];
  CATransform3DScale(&v59, &v61, v27, v27, 1.0);
  v61 = v59;
  [(ARCoachingDeviceController *)self setTransform:&v61];
  v28 = a6->var1 + (v21 * 0.25133);
  v30 = __sincosf_stret(v28);
  v31 = (1.0 - v30.__cosval) / -0.0314168334 + 1.0;
  var2 = a6->var2;
  v33 = v18 * 0.04618 * v31 * var2 + v18 * 0.04618;
  v34 = a4 * 0.4 + 0.6;
  v35 = (a6->var3 * v22) + v18 * 0.15 * v34;
  v36 = v34 * (v18 * 0.182 * (v30.__sinval / 0.24869)) * var2;
  if (self->_geoTrackingMode)
  {
    v37 = v36 * 0.5;
  }

  else
  {
    v37 = v36;
  }

  if (self->_geoTrackingMode)
  {
    v38 = (v35 + -72.0) + (v30.__sinval * 5.0);
  }

  else
  {
    v38 = v35;
  }

  if (self->_geoTrackingMode)
  {
    v39 = (v30.__sinval * -55.0) + 25.0;
  }

  else
  {
    v39 = v33;
  }

  *&v29 = (v30.__sinval * -55.0) + 25.0;
  [(ARCoachingDeviceController *)self transform];
  CATransform3DTranslate(&v58, &v61, v37, v38, v39);
  v61 = v58;
  [(ARCoachingDeviceController *)self setTransform:&v61];
  if (self->_geoTrackingMode)
  {
    [(ARCoachingDeviceController *)self transform];
    CATransform3DRotate(&v57, &v61, ((v28 * -0.75) + -0.3), 0.0, 1.0, 0.0);
    *&v61.m31 = *&v57.m31;
    *&v61.m33 = *&v57.m33;
    *&v61.m41 = *&v57.m41;
    *&v61.m43 = *&v57.m43;
    *&v61.m11 = *&v57.m11;
    *&v61.m13 = *&v57.m13;
    v40 = *&v57.m21;
    v41 = *&v57.m23;
  }

  else
  {
    [(ARCoachingDeviceController *)self transform];
    CATransform3DRotate(&v56, &v61, v28, 0.0, 1.0, 0.0);
    *&v61.m31 = *&v56.m31;
    *&v61.m33 = *&v56.m33;
    *&v61.m41 = *&v56.m41;
    *&v61.m43 = *&v56.m43;
    *&v61.m11 = *&v56.m11;
    *&v61.m13 = *&v56.m13;
    v40 = *&v56.m21;
    v41 = *&v56.m23;
  }

  *&v61.m21 = v40;
  *&v61.m23 = v41;
  [(ARCoachingDeviceController *)self setTransform:&v61];
  v42 = a4;
  *&v43 = v42 * v42;
  [(ARCoachingDeviceController *)self setOpacity:v43];
  [v10 contentsScale];
  v45 = v44;

  [(CALayer *)self->_deviceMaskLayer setContentsScale:v45];
  [(ARCoachingDeviceController *)self bounds];
  [(CALayer *)self->_shineLayer setBounds:?];
  [(ARCoachingDeviceController *)self opacity];
  [(CALayer *)self->_shineLayer setOpacity:?];
  [(ARCoachingDeviceController *)self transform];
  shineLayer = self->_shineLayer;
  v61 = v55;
  [(CALayer *)shineLayer setTransform:&v61];
  [(ARCoachingDeviceController *)self position];
  [(CALayer *)self->_shineLayer setPosition:?];
  LODWORD(v47) = 1053609165;
  [(CALayer *)self->_shineInnerLayer setOpacity:v47];
  [(CALayer *)self->_shineLayer bounds];
  *&v45 = v48 * 6.0;
  [(CALayer *)self->_shineLayer bounds];
  v50 = v49;
  v51 = *&v45;
  v52 = v50;
  [(CALayer *)self->_shineInnerLayer setBounds:0.0, 0.0, v51, v50];
  v53 = v52 + v52 * -0.2 * v21;
  [(CALayer *)self->_shineLayer bounds];
  v54 = CGRectGetMidX(v64) + 5.0;
  [(CALayer *)self->_shineLayer bounds];
  [(CALayer *)self->_shineInnerLayer setPosition:v54, CGRectGetMidX(v65) - v53];
  [MEMORY[0x277CD9FF0] setDisableActions:0];
}

- (void)setLayerParent:(id)a3
{
  holeLayer = self->_holeLayer;
  v5 = a3;
  [v5 addSublayer:holeLayer];
  [v5 addSublayer:self->_shineLayer];
  [v5 addSublayer:self->_deviceLayer];
}

@end