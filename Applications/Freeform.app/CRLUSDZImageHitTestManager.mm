@interface CRLUSDZImageHitTestManager
+ (CGRect)p_visibleBoundsInContext:(CGContext *)context naturalRect:(CGRect)rect canvasViewScale:(double)scale;
+ (CGRect)p_visibleBoundsInContext:(CGContext *)context withImageProvider:(id)provider canvasViewScale:(double)scale;
- (BOOL)containsPoint:(CGPoint)point withPrecision:(BOOL)precision;
- (CGRect)naturalBounds;
- (CGRect)visibleBounds;
- (CGRect)visibleContentRect;
- (CRLUSDZImageHitTestManager)initWith:(id)with naturalBounds:(CGRect)bounds canvasViewScale:(double)scale;
- (void)dealloc;
- (void)setNaturalBounds:(CGRect)bounds;
@end

@implementation CRLUSDZImageHitTestManager

- (CRLUSDZImageHitTestManager)initWith:(id)with naturalBounds:(CGRect)bounds canvasViewScale:(double)scale
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  withCopy = with;
  v34.receiver = self;
  v34.super_class = CRLUSDZImageHitTestManager;
  v13 = [(CRLUSDZImageHitTestManager *)&v34 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_imageAsset, with);
    v14->_naturalBounds.origin.y = y;
    v14->_naturalBounds.size.width = width;
    v14->_naturalBounds.size.height = height;
    v14->_canvasViewScale = scale;
    v14->_naturalBounds.origin.x = x;
    v15 = +[CRLImageProviderPool sharedPool];
    v16 = [v15 temporaryProviderForAsset:withCopy shouldValidate:1];

    if (v16 && ([v16 isError] & 1) == 0)
    {
      [v16 naturalSize];
      v14->_imageNaturalRect.origin.x = sub_10011ECB4();
      v14->_imageNaturalRect.origin.y = v30;
      v14->_imageNaturalRect.size.width = v31;
      v14->_imageNaturalRect.size.height = v32;
      v14->_ctx = sub_10050DF80(2, v31, v32);
      p_imageVisibleRect = &v14->_imageVisibleRect;
      [objc_opt_class() p_visibleBoundsInContext:v14->_ctx withImageProvider:v16 canvasViewScale:scale];
      v26 = 1;
      v27 = 64;
      v28 = 56;
      v29 = 48;
    }

    else
    {
      [(CRLUSDZImageHitTestManager *)v14 naturalBounds];
      v14->_imageVisibleRect.origin.x = v17;
      v14->_imageVisibleRect.origin.y = v18;
      v14->_imageVisibleRect.size.width = v19;
      v14->_imageVisibleRect.size.height = v20;
      p_imageVisibleRect = &v14->_imageNaturalRect;
      [(CRLUSDZImageHitTestManager *)v14 naturalBounds];
      v26 = 0;
      v27 = 32;
      v28 = 24;
      v29 = 16;
    }

    *&p_imageVisibleRect->origin.x = v22;
    *(&v14->super.isa + v29) = v23;
    *(&v14->super.isa + v28) = v24;
    *(&v14->super.isa + v27) = v25;
    v14->_visibleBoundsComputedFromAsset = v26;
    [(CRLUSDZImageHitTestManager *)v14 setNaturalBounds:x, y, width, height];
  }

  return v14;
}

- (void)dealloc
{
  ctx = self->_ctx;
  if (ctx)
  {
    CGContextRelease(ctx);
  }

  v4.receiver = self;
  v4.super_class = CRLUSDZImageHitTestManager;
  [(CRLUSDZImageHitTestManager *)&v4 dealloc];
}

- (void)setNaturalBounds:(CGRect)bounds
{
  self->_naturalBounds = bounds;
  __asm { FMOV            V1.2D, #1.0 }

  if (bounds.size.width != 0.0 && bounds.size.height != 0.0)
  {
    v9.f64[0] = bounds.size.width;
    v9.f64[1] = bounds.size.height;
    _Q1 = vdivq_f64(v9, self->_imageNaturalRect.size);
  }

  self->_scale = _Q1;
  self->_visibleBounds = self->_imageVisibleRect;
  v10 = vmulq_f64(_Q1, self->_visibleBounds.origin);
  self->_visibleBounds.origin = v10;
  v11 = vmulq_f64(_Q1, self->_visibleBounds.size);
  self->_visibleBounds.size = v11;
  sub_1001217FC(v10.x, v10.y, v11.width, v11.height);
  self->_visibleContentRect.origin.x = v12;
  self->_visibleContentRect.origin.y = v13;
  self->_visibleContentRect.size.width = v14;
  self->_visibleContentRect.size.height = v15;
}

- (BOOL)containsPoint:(CGPoint)point withPrecision:(BOOL)precision
{
  precisionCopy = precision;
  y = point.y;
  x = point.x;
  ctx = self->_ctx;
  v9 = CGRectContainsPoint(self->_visibleBounds, point);
  result = ctx == 0 && v9;
  if (ctx && v9)
  {
    if (self->_scale.width == 0.0)
    {
      return 0;
    }

    if (self->_scale.height == 0.0)
    {
      return 0;
    }

    Width = CGBitmapContextGetWidth(self->_ctx);
    Height = CGBitmapContextGetHeight(self->_ctx);
    BytesPerRow = CGBitmapContextGetBytesPerRow(self->_ctx);
    v14 = BytesPerRow * Height;
    v15 = (x / self->_scale.width);
    v16 = (self->_imageNaturalRect.size.height - y / self->_scale.height);
    v17 = v15 + BytesPerRow * v16;
    if (v17 >= BytesPerRow * Height)
    {
      return 0;
    }

    v18 = BytesPerRow;
    Data = CGBitmapContextGetData(self->_ctx);
    if (Data[v17])
    {
      return 1;
    }

    v20 = &unk_101466738;
    if (!precisionCopy)
    {
      v20 = &unk_101466730;
    }

    v21 = *v20 / self->_canvasViewScale;
    v22 = vcvtpd_u64_f64(v21 + v21);
    v23 = v15 + (v22 >> 1) >= Width - 1 ? Width - 1 : v15 + (v22 >> 1);
    v24 = v16 - (v22 >> 1);
    v25 = v16 + (v22 >> 1) >= Height - 1 ? Height - 1 : v16 + (v22 >> 1);
    if (v24 > v25)
    {
      return 0;
    }

    else
    {
      v26 = v21 * v21;
      v27 = v15 - (v22 >> 1);
      v28 = v16;
      v29 = v15;
      v30 = v18 * v24;
      v31 = &Data[v18 * v24];
      do
      {
        if (v27 <= v23)
        {
          v32 = v27;
          do
          {
            result = sub_10011F068(v29, v28, v32, v24) < v26 && v30 + v32 < v14 && v31[v32] != 0;
            ++v32;
          }

          while (v32 <= v23 && !result);
        }

        else
        {
          result = 0;
        }

        if (++v24 > v25)
        {
          break;
        }

        v31 += v18;
        v30 += v18;
      }

      while (!result);
    }
  }

  return result;
}

+ (CGRect)p_visibleBoundsInContext:(CGContext *)context withImageProvider:(id)provider canvasViewScale:(double)scale
{
  providerCopy = provider;
  CGContextSaveGState(context);
  CGContextSetInterpolationQuality(context, kCGInterpolationNone);
  [providerCopy naturalSize];
  v9 = sub_10011ECB4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [providerCopy drawImageInContext:context rect:?];

  CGContextRestoreGState(context);

  [self p_visibleBoundsInContext:context naturalRect:v9 canvasViewScale:{v11, v13, v15, scale}];
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

+ (CGRect)p_visibleBoundsInContext:(CGContext *)context naturalRect:(CGRect)rect canvasViewScale:(double)scale
{
  Data = CGBitmapContextGetData(context);
  Width = CGBitmapContextGetWidth(context);
  Height = CGBitmapContextGetHeight(context);
  BytesPerRow = CGBitmapContextGetBytesPerRow(context);
  if (Height)
  {
    v13 = Height;
    do
    {
      if (Width)
      {
        v14 = 0;
        v15 = &Data[(v13 - 1) * BytesPerRow];
        do
        {
          v16 = v15[v14];
          v17 = v15[v14++] != 0;
        }

        while (v14 < Width && !v16);
      }

      else
      {
        v17 = 0;
      }

      v13 -= !v17;
    }

    while (v13 && !v17);
    if (v13)
    {
      v18 = 0;
      do
      {
        if (Width)
        {
          v19 = 0;
          v20 = &Data[v18 * BytesPerRow];
          do
          {
            v21 = v20[v19];
            v22 = v20[v19++] != 0;
          }

          while (v19 < Width && !v21);
        }

        else
        {
          v22 = 0;
        }

        v18 += !v22;
      }

      while (v18 < v13 && !v22);
      if (!Width)
      {
        goto LABEL_45;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v13 = 0;
  }

  v18 = 0;
  if (!Width)
  {
LABEL_45:
    v28 = 0;
    goto LABEL_46;
  }

LABEL_25:
  v23 = &Data[BytesPerRow * v18];
  do
  {
    if (v13 <= v18)
    {
      v27 = 0;
    }

    else
    {
      v24 = &v23[Width - 1];
      v25 = v18 + 1;
      do
      {
        v26 = *v24;
        v27 = *v24 != 0;
        if (v25 >= v13)
        {
          break;
        }

        ++v25;
        v24 += BytesPerRow;
      }

      while (!v26);
    }

    Width -= !v27;
  }

  while (Width && !v27);
  if (!Width)
  {
    goto LABEL_45;
  }

  v28 = 0;
  do
  {
    if (v13 <= v18)
    {
      v32 = 0;
    }

    else
    {
      v29 = &v23[v28];
      v30 = v18 + 1;
      do
      {
        v31 = *v29;
        v32 = *v29 != 0;
        if (v30 >= v13)
        {
          break;
        }

        ++v30;
        v29 += BytesPerRow;
      }

      while (!v31);
    }

    v28 += !v32;
  }

  while (v28 < Width && !v32);
LABEL_46:
  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(BytesPerRow, *&v11);
  if (v13 != v18 && Width != v28)
  {
    v37.size.width = (Width - v28);
    v37.origin.x = v33 + v28;
    v37.origin.y = v34 + (Height - v13);
    v37.size.height = (v13 - v18);
    *&v33 = CGRectInset(v37, scale * -25.0, scale * -25.0);
  }

  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (CGRect)naturalBounds
{
  x = self->_naturalBounds.origin.x;
  y = self->_naturalBounds.origin.y;
  width = self->_naturalBounds.size.width;
  height = self->_naturalBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)visibleContentRect
{
  x = self->_visibleContentRect.origin.x;
  y = self->_visibleContentRect.origin.y;
  width = self->_visibleContentRect.size.width;
  height = self->_visibleContentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)visibleBounds
{
  x = self->_visibleBounds.origin.x;
  y = self->_visibleBounds.origin.y;
  width = self->_visibleBounds.size.width;
  height = self->_visibleBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end