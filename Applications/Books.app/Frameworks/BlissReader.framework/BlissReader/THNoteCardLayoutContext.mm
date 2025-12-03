@interface THNoteCardLayoutContext
+ (THNoteCardLayoutContext)contextWithScale:(double)scale hostView:(id)view;
- (BOOL)_isCompactHeight;
- (BOOL)_isCompactWidth;
- (CGPoint)bottomCardOffset;
- (CGSize)noteCardOffset;
- (CGSize)noteCardShadowOffsetForScreenScale:(double)scale;
- (CGSize)noteCardSize;
- (THNoteCardLayoutContext)initWithScale:(double)scale hostView:(id)view;
- (double)bottomCardAngle;
- (double)noteCardShadowRadiusForScreenScale:(double)scale;
- (double)textScale;
- (void)dealloc;
@end

@implementation THNoteCardLayoutContext

+ (THNoteCardLayoutContext)contextWithScale:(double)scale hostView:(id)view
{
  v4 = [objc_alloc(objc_opt_class()) initWithScale:view hostView:scale];

  return v4;
}

- (THNoteCardLayoutContext)initWithScale:(double)scale hostView:(id)view
{
  v8.receiver = self;
  v8.super_class = THNoteCardLayoutContext;
  v6 = [(THNoteCardLayoutContext *)&v8 init];
  if (v6)
  {
    v6->_hostView = view;
    v6->_scale = scale;
  }

  return v6;
}

- (void)dealloc
{
  self->_hostView = 0;
  v3.receiver = self;
  v3.super_class = THNoteCardLayoutContext;
  [(THNoteCardLayoutContext *)&v3 dealloc];
}

- (double)textScale
{
  if ([(THNoteCardLayoutContext *)self _isCompactWidth]|| [(THNoteCardLayoutContext *)self _isCompactHeight])
  {
    return fmin(self->_scale * 1.5, 1.0);
  }

  else
  {
    return self->_scale;
  }
}

- (CGSize)noteCardSize
{
  scale = self->_scale;
  v3 = 895.0 * scale;
  v4 = scale * 614.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)noteCardOffset
{
  scale = self->_scale;
  v3 = *&kTHNoteCardOffset * scale;
  v4 = scale * *(&kTHNoteCardOffset + 1);
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)noteCardShadowOffsetForScreenScale:(double)scale
{
  v3 = vdup_n_s32(scale > 1.0);
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  v5 = vmulq_n_f64(vbslq_s8(vcltzq_s64(vshlq_n_s64(v4, 0x3FuLL)), kTHNoteCardShadowOffsetRetina, kTHNoteCardShadowOffset), self->_scale);
  v6 = v5.f64[1];
  result.width = v5.f64[0];
  result.height = v6;
  return result;
}

- (double)noteCardShadowRadiusForScreenScale:(double)scale
{
  v3 = &kTHNoteCardShadowRadiusRetina;
  if (scale <= 1.0)
  {
    v3 = &kTHNoteCardShadowRadius;
  }

  return *v3 * self->_scale;
}

- (BOOL)_isCompactWidth
{
  rootViewController = [(UIWindow *)[(UIView *)self->_hostView window] rootViewController];

  return [(UIViewController *)rootViewController im_isCompactWidth];
}

- (BOOL)_isCompactHeight
{
  rootViewController = [(UIWindow *)[(UIView *)self->_hostView window] rootViewController];

  return [(UIViewController *)rootViewController im_isCompactHeight];
}

- (double)bottomCardAngle
{
  if ([(THNoteCardLayoutContext *)self _isCompactWidth])
  {
    _isCompactHeight = [(THNoteCardLayoutContext *)self _isCompactHeight];
    v4 = &kTHNoteCardBottomCardAngleCompactWidthCompactHeight;
    if (!_isCompactHeight)
    {
      v4 = &kTHNoteCardBottomCardAngleCompactWidthRegularHeight;
    }
  }

  else
  {
    v4 = &kTHNoteCardBottomCardAngleAnyWidthAnyHeight;
  }

  return *v4;
}

- (CGPoint)bottomCardOffset
{
  if ([(THNoteCardLayoutContext *)self _isCompactWidth])
  {
    [(THNoteCardLayoutContext *)self _isCompactHeight];
  }

  TSDMultiplyPointScalar();
  result.y = v4;
  result.x = v3;
  return result;
}

@end