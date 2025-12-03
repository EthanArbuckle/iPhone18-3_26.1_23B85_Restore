@interface THGuidedPanColumnAnimator
- (BOOL)_getBouncingDecelerationOffset:(double *)offset forTimeInterval:(double)interval lastUpdateOffset:(double)updateOffset min:(double)min max:(double)max decelerationFactor:(double)factor decelerationLnFactor:(double)lnFactor velocity:(double *)self0;
- (THGuidedPanColumnAnimator)initWithLocation:(id)location velocity:(CGPoint)velocity min:(CGPoint)min max:(CGPoint)max targetViewScale:(double)scale controller:(id)controller;
- (void)_getStandardDecelerationOffset:(double *)offset forTimeInterval:(double)interval min:(double)min max:(double)max decelerationFactor:(double)factor decelerationLnFactor:(double)lnFactor velocity:(double *)velocity;
- (void)dealloc;
@end

@implementation THGuidedPanColumnAnimator

- (THGuidedPanColumnAnimator)initWithLocation:(id)location velocity:(CGPoint)velocity min:(CGPoint)min max:(CGPoint)max targetViewScale:(double)scale controller:(id)controller
{
  y = max.y;
  x = max.x;
  v12 = min.y;
  v13 = min.x;
  v14 = velocity.y;
  v28.receiver = self;
  v28.super_class = THGuidedPanColumnAnimator;
  v16 = [(THGuidedPanColumnAnimator *)&v28 init];
  if (v16)
  {
    v17 = +[TSDContinuousContentPathAnimation animation];
    v16->_verticalBounceEnabled = 1;
    v16->_accuracy = 1.0;
    *&v16->_fastScrollCount = xmmword_34AF30;
    v16->_minCenter.x = v13;
    v16->_minCenter.y = v12;
    v16->_maxCenter.x = x;
    v16->_maxCenter.y = y;
    [location viewScale];
    v16->_currentViewScale = v18;
    [objc_msgSend(controller "interactiveCanvasController")];
    v16->_unscaledVelocity.x = v19;
    v16->_unscaledVelocity.y = v20;
    [location unscaledPoint];
    v16->_unscaledPosition.x = v21;
    v16->_unscaledPosition.y = v22;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_17AB2C;
    v25[3] = &unk_45E3B0;
    v25[4] = v16;
    v26 = xmmword_34AF40;
    scaleCopy = scale;
    [v17 setTick:v25];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_17AC00;
    v24[3] = &unk_45E3D8;
    v24[4] = v16;
    [v17 setIsFinished:v24];
    v16->_animation = v17;
  }

  return v16;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THGuidedPanColumnAnimator;
  [(THGuidedPanColumnAnimator *)&v3 dealloc];
}

- (BOOL)_getBouncingDecelerationOffset:(double *)offset forTimeInterval:(double)interval lastUpdateOffset:(double)updateOffset min:(double)min max:(double)max decelerationFactor:(double)factor decelerationLnFactor:(double)lnFactor velocity:(double *)self0
{
  if (min >= max)
  {
    maxCopy = min;
  }

  else
  {
    maxCopy = max;
  }

  if (!velocity)
  {
    return 0;
  }

  if (updateOffset < min || maxCopy < updateOffset)
  {
    intervalCopy = interval;
  }

  else
  {
    v21 = *velocity;
    if (*velocity == 0.0)
    {
      goto LABEL_42;
    }

    v22 = interval * lnFactor;
    if (interval * lnFactor >= -0.5)
    {
      v23 = v22 * (v22 * 0.5 + 1.0) + 1.0;
    }

    else
    {
      v23 = exp(v22);
    }

    v24 = (1.0 - v23) / (1.0 - factor) * factor;
    v25 = *offset + v21 * v24 * self->_fastScrollMultiplier;
    *offset = v25;
    intervalCopy = 0.0;
    v26 = v25 < min || v25 > maxCopy;
    intervalCopy2 = interval;
    if (v26)
    {
      if (v25 >= min)
      {
        v28 = (maxCopy - updateOffset) * interval;
        v29 = v25 - updateOffset;
      }

      else
      {
        v28 = (updateOffset - min) * interval;
        v29 = updateOffset - v25;
      }

      intervalCopy2 = v28 / v29;
      intervalCopy = interval - intervalCopy2;
    }

    if (intervalCopy2 > 0.0)
    {
      if (intervalCopy2 != interval)
      {
        v30 = intervalCopy2 * lnFactor;
        if (intervalCopy2 * lnFactor >= -0.5)
        {
          v23 = v30 * (v30 * 0.5 + 1.0) + 1.0;
        }

        else
        {
          v23 = exp(v30);
        }

        v24 = (1.0 - v23) / (1.0 - factor) * factor;
      }

      *offset = updateOffset + v24 * *velocity * self->_fastScrollMultiplier;
      *velocity = v23 * *velocity;
    }
  }

  if (intervalCopy > 0.0)
  {
    v31 = intervalCopy * lnFactor;
    if (intervalCopy * lnFactor >= -0.5)
    {
      v32 = v31 * (v31 * 0.5 + 1.0) + 1.0;
    }

    else
    {
      v32 = exp(v31);
    }

    v33 = intervalCopy * -0.01005;
    if (intervalCopy * -0.01005 >= -0.5)
    {
      v34 = v33 * (v33 * 0.5 + 1.0) + 1.0;
    }

    else
    {
      v34 = exp(v33);
    }

    if (*offset >= min)
    {
      v35 = maxCopy + (*offset - maxCopy) * v34;
    }

    else
    {
      v35 = min + (*offset - min) * v34;
    }

    *offset = v35;
    *offset = v35 + (1.0 - v32) * (v34 * factor * *velocity) / (1.0 - factor);
    *velocity = v32 * v34 * *velocity;
    *&self->_fastScrollCount = xmmword_34AF30;
  }

LABEL_42:
  v36 = *offset;
  v37 = maxCopy + 0.5;
  v38 = maxCopy > 0.0 || v36 < v37;
  if (!v38 && ((accuracy = self->_accuracy, accuracy == 1.0) ? (v41 = round(v36)) : (v40 = floor(v36), v41 = v40 + round((v36 - v40) * accuracy) / accuracy), v41 != 0.0) || (v36 > min + -0.5 ? (v42 = v36 < v37) : (v42 = 0), !v42))
  {
    *&self->_fastScrollCount = xmmword_34AF30;
    return 1;
  }

  return 0;
}

- (void)_getStandardDecelerationOffset:(double *)offset forTimeInterval:(double)interval min:(double)min max:(double)max decelerationFactor:(double)factor decelerationLnFactor:(double)lnFactor velocity:(double *)velocity
{
  minCopy = min;
  if (min >= max)
  {
    maxCopy = min;
  }

  else
  {
    maxCopy = max;
  }

  v15 = interval * lnFactor;
  if (v15 >= -0.5)
  {
    v16 = v15 * (v15 * 0.5 + 1.0) + 1.0;
  }

  else
  {
    v16 = exp(v15);
  }

  *offset = *offset + *velocity * ((1.0 - v16) / (1.0 - factor) * factor) * self->_fastScrollMultiplier;
  *velocity = v16 * *velocity;
  if (*offset < minCopy || (minCopy = maxCopy, *offset > maxCopy))
  {
    *offset = minCopy;
    *velocity = 0.0;
  }
}

@end