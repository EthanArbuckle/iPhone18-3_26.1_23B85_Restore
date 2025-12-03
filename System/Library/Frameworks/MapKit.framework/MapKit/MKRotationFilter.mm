@interface MKRotationFilter
- (BOOL)hasAdditionalSnappingAngle;
- (MKRotationFilter)init;
- (MKRotationFilter)initWithMapLayer:(id)layer;
- (MKRotationFilterDelegate)delegate;
- (void)snapToNorthAnimated:(BOOL)animated forceTrueNorth:(BOOL)north;
- (void)startRotatingWithFocusPoint:(CGPoint)point withSnapping:(BOOL)snapping;
- (void)stopRotatingWithFocusPoint:(CGPoint)point;
- (void)updateRotationWithFocusPoint:(CGPoint)point newValue:(double)value;
- (void)updateSnappedToNorth;
@end

@implementation MKRotationFilter

- (MKRotationFilterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)hasAdditionalSnappingAngle
{
  additionalSnappingAngle = self->_additionalSnappingAngle;
  v3 = fmod(additionalSnappingAngle, 360.0);
  if (additionalSnappingAngle < 0.0)
  {
    v3 = v3 + 360.0;
  }

  v4 = 0.0;
  if (vabdd_f64(0.0, v3) > 180.0)
  {
    if (v3 <= 0.0)
    {
      v3 = v3 + 360.0;
    }

    else
    {
      v4 = 360.0;
    }
  }

  return vabdd_f64(v3, v4) >= 0.1;
}

- (void)updateSnappedToNorth
{
  WeakRetained = objc_loadWeakRetained(&self->_mapLayer);
  [WeakRetained yaw];
  v4 = v3;
  v5 = fmod(v3, 360.0);
  if (v4 < 0.0)
  {
    v5 = v5 + 360.0;
  }

  v6 = 0.0;
  if (fabs(v5) > 180.0)
  {
    if (v5 >= 0.0)
    {
      v6 = 360.0;
    }

    else
    {
      v5 = v5 + 360.0;
    }
  }

  if (vabdd_f64(v6, v5) < 0.1)
  {
    [(MKRotationFilter *)self setSnappedToNorth:1];
  }

  else
  {
    v7 = objc_loadWeakRetained(&self->_mapLayer);
    [v7 yaw];
    v9 = v8;
    additionalSnappingAngle = self->_additionalSnappingAngle;
    v11 = fmod(v8, 360.0);
    if (v9 >= 0.0)
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 + 360.0;
    }

    v13 = fmod(additionalSnappingAngle, 360.0);
    if (additionalSnappingAngle < 0.0)
    {
      v13 = v13 + 360.0;
    }

    if (vabdd_f64(v12, v13) > 180.0)
    {
      if (v12 >= v13)
      {
        v13 = v13 + 360.0;
      }

      else
      {
        v12 = v12 + 360.0;
      }
    }

    [(MKRotationFilter *)self setSnappedToNorth:vabdd_f64(v13, v12) < 0.1];
  }
}

- (void)snapToNorthAnimated:(BOOL)animated forceTrueNorth:(BOOL)north
{
  animatedCopy = animated;
  additionalSnappingAngle = 0.0;
  if ([(MKRotationFilter *)self hasAdditionalSnappingAngle]&& !north)
  {
    WeakRetained = objc_loadWeakRetained(&self->_mapLayer);
    [WeakRetained yaw];
    v10 = v9;

    v11 = fmod(v10, 360.0);
    if (v10 >= 0.0)
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 + 360.0;
    }

    v13 = 0.0;
    if (fabs(v12) <= 180.0)
    {
      v14 = v12;
    }

    else
    {
      v14 = v12;
      v13 = 360.0;
      if (v12 < 0.0)
      {
        v14 = v12 + 360.0;
        v13 = 0.0;
      }
    }

    v15 = vabdd_f64(v13, v14);
    additionalSnappingAngle = self->_additionalSnappingAngle;
    v16 = fmod(additionalSnappingAngle, 360.0);
    if (additionalSnappingAngle < 0.0)
    {
      v16 = v16 + 360.0;
    }

    if (vabdd_f64(v12, v16) > 180.0)
    {
      if (v12 >= v16)
      {
        v16 = v16 + 360.0;
      }

      else
      {
        v12 = v12 + 360.0;
      }
    }

    if (v15 >= 0.1)
    {
      v17 = vabdd_f64(v16, v12);
      if (v15 < v17 || v17 < 0.1)
      {
        additionalSnappingAngle = 0.0;
      }
    }
  }

  v19 = objc_loadWeakRetained(&self->_mapLayer);
  [v19 setYaw:animatedCopy animated:additionalSnappingAngle];
}

- (void)stopRotatingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  WeakRetained = objc_loadWeakRetained(&self->_mapLayer);
  [WeakRetained stopRotatingWithFocusPoint:{x, y}];
}

- (void)updateRotationWithFocusPoint:(CGPoint)point newValue:(double)value
{
  y = point.y;
  x = point.x;
  v7 = value * 57.2957795;
  if (!self->_snappingEnabled)
  {
    goto LABEL_36;
  }

  v8 = self->_gestureStartAngle + value * -57.2957795;
  v9 = fmod(v8, 360.0);
  if (v8 >= 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 + 360.0;
  }

  v11 = 0.0;
  v12 = vabdd_f64(0.0, v10);
  v23 = x;
  v13 = y;
  if (v12 <= 180.0)
  {
    goto LABEL_8;
  }

  if (v10 > 0.0)
  {
    v11 = 360.0;
LABEL_8:
    v14 = v10;
    goto LABEL_10;
  }

  v14 = v10 + 360.0;
LABEL_10:
  v15 = v14 - v11;
  additionalSnappingAngle = self->_additionalSnappingAngle;
  v17 = fmod(additionalSnappingAngle, 360.0);
  if (additionalSnappingAngle < 0.0)
  {
    v17 = v17 + 360.0;
  }

  v18 = vabdd_f64(v17, v10);
  v19 = v17;
  v20 = v10;
  if (v18 > 180.0)
  {
    if (v17 >= v10)
    {
      v20 = v10 + 360.0;
      v19 = v17;
    }

    else
    {
      v19 = v17 + 360.0;
      v20 = v10;
    }
  }

  if (fabs(v15) >= *&kRotationSnappingThreshold)
  {
    y = v13;
    if (vabdd_f64(v20, v19) >= *&kRotationSnappingThreshold)
    {
      v21 = 0;
      goto LABEL_28;
    }

    x = v23;
    if (self->_snappedAtStart)
    {
LABEL_32:
      v21 = 1;
      goto LABEL_33;
    }

    if (v18 > 180.0)
    {
      if (v17 >= v10)
      {
        v10 = v10 + 360.0;
      }

      else
      {
        v17 = v17 + 360.0;
      }
    }

LABEL_31:
    v7 = v7 + v10 - v17;
    goto LABEL_32;
  }

  y = v13;
  if (!self->_snappedAtStart)
  {
    v17 = 0.0;
    if (v12 > 180.0)
    {
      if (v10 <= 0.0)
      {
        v10 = v10 + 360.0;
      }

      else
      {
        v17 = 360.0;
      }
    }

    x = v23;
    goto LABEL_31;
  }

  v21 = 1;
LABEL_28:
  x = v23;
LABEL_33:
  if (self->_snappedToNorth != v21)
  {
    [(MKRotationFilter *)self setSnappedToNorth:v21];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained rotationFilter:self didChangeSnapping:v21];

    if ((v21 & 1) == 0)
    {
      self->_snappedAtStart = 0;
    }
  }

LABEL_36:
  v24 = objc_loadWeakRetained(&self->_mapLayer);
  [v24 updateRotationWithFocusPoint:x newValue:{y, v7 * 0.0174532925}];
}

- (void)startRotatingWithFocusPoint:(CGPoint)point withSnapping:(BOOL)snapping
{
  y = point.y;
  x = point.x;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v13 = [standardUserDefaults objectForKey:@"RotationFilterSnappingThreshold"];

  if (v13)
  {
    [v13 doubleValue];
    kRotationSnappingThreshold = v9;
  }

  WeakRetained = objc_loadWeakRetained(&self->_mapLayer);
  [WeakRetained startRotatingWithFocusPoint:{x, y}];

  v11 = objc_loadWeakRetained(&self->_mapLayer);
  [v11 yaw];
  self->_gestureStartAngle = v12;

  self->_snappingEnabled = snapping;
  [(MKRotationFilter *)self updateSnappedToNorth];
  self->_snappedAtStart = self->_snappedToNorth;
}

- (MKRotationFilter)initWithMapLayer:(id)layer
{
  layerCopy = layer;
  v8.receiver = self;
  v8.super_class = MKRotationFilter;
  v5 = [(MKRotationFilter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_mapLayer, layerCopy);
  }

  return v6;
}

- (MKRotationFilter)init
{
  result = [MEMORY[0x1E695DF30] raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

@end