@interface WKTapHighlightView
- (WKTapHighlightView)initWithFrame:(CGRect)a3;
- (id).cxx_construct;
- (void)cleanUp;
- (void)drawRect:(CGRect)a3;
- (void)setColor:(id)a3;
- (void)setCornerRadii:(Radii *)a3;
- (void)setFrame:(CGRect)a3;
- (void)setFrames:(void *)a3;
- (void)setQuads:(void *)a3 boundaryRect:(const FloatRect *)a4;
@end

@implementation WKTapHighlightView

- (WKTapHighlightView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = WKTapHighlightView;
  v3 = [(WKTapHighlightView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [-[WKTapHighlightView layer](v3 "layer")];
  }

  return v4;
}

- (void)cleanUp
{
  WTF::Vector<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::PlatformLayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&self->_innerFrames, 0);

  WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&self->_innerQuads, 0);
}

- (void)setColor:(id)a3
{
  if (a3)
  {
    v5 = a3;
  }

  m_ptr = self->_color.m_ptr;
  self->_color.m_ptr = a3;
  if (m_ptr)
  {
  }
}

- (void)setCornerRadii:(Radii *)a3
{
  v3 = *&a3->m_bottomLeft.m_width;
  *&self->_cornerRadii.m_topLeft.m_width = *&a3->m_topLeft.m_width;
  *&self->_cornerRadii.m_bottomLeft.m_width = v3;
}

- (void)setFrames:(void *)a3
{
  [(WKTapHighlightView *)self cleanUp];
  v5 = *(a3 + 3);
  if (v5)
  {
    v18 = 0uLL;
    goto LABEL_4;
  }

  [(WKTapHighlightView *)self setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = *(a3 + 3);
  v18 = 0uLL;
  if (v5)
  {
LABEL_4:
    v6 = *a3;
    v7 = *a3 + 16 * v5;
    v8 = 0;
    do
    {
      v17 = *v6;
      if (v8)
      {
        v19 = v18;
        WebCore::FloatRect::unite(&v19, &v17);
        v9 = v19;
      }

      else
      {
        v18 = *v6;
        p_minimumCornerRadius = &self->_minimumCornerRadius;
        v11 = vld1q_dup_f32(p_minimumCornerRadius).u64[0];
        v12 = vadd_f32(vadd_f32(v11, *(&v18 + 8)), v11);
        *&v9 = vsub_f32(*&v18, v11);
        *(&v9 + 1) = v12;
      }

      v18 = v9;
      ++v6;
      v8 = 1;
    }

    while (v6 != v7);
  }

  WebCore::FloatRect::operator CGRect();
  v16.receiver = self;
  v16.super_class = WKTapHighlightView;
  [(WKTapHighlightView *)&v16 setFrame:?];
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(&self->_innerFrames, a3);
  m_size = self->_innerFrames.m_size;
  if (m_size)
  {
    m_buffer = self->_innerFrames.m_buffer;
    v15 = 16 * m_size;
    do
    {
      *m_buffer = vsub_f32(*m_buffer, *&v18);
      m_buffer += 2;
      v15 -= 16;
    }

    while (v15);
  }

  if ([-[WKTapHighlightView layer](self "layer")])
  {
    [(WKTapHighlightView *)self setNeedsDisplay];
  }
}

- (void)setQuads:(void *)a3 boundaryRect:(const FloatRect *)a4
{
  [(WKTapHighlightView *)self cleanUp];
  v7 = *(a3 + 3);
  if (v7 || ([(WKTapHighlightView *)self setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)], v7 = *(a3 + 3), v7))
  {
    v9 = *a3;
    v10 = *a3 + 32 * v7;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = 0;
      v15 = v9[1];
      v30[0] = *v9;
      v30[1] = v15;
      do
      {
        v8 = *(v30 + v14);
        v16 = vbsl_s8(vcgt_f32(v13, v8), v8, v13);
        v17 = vcgt_f32(v8, v12);
        if (v11)
        {
          v18 = -1;
        }

        else
        {
          v18 = 0;
        }

        v19 = vdup_n_s32(v18);
        v12 = vbsl_s8(v19, vbsl_s8(v17, v8, v12), v8);
        v13 = vbsl_s8(v19, v16, v8);
        v14 += 8;
        v11 = 1;
      }

      while (v14 != 32);
      v9 += 2;
    }

    while (v9 != v10);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v20 = vsub_f32(v12, v13);
  v8.f32[0] = self->_minimumCornerRadius * 4.0;
  *v30 = v13.f32[0] - v8.f32[0];
  *(v30 + 1) = v13.f32[1] - v8.f32[0];
  v21 = vdup_lane_s32(v8, 0);
  *(&v30[0] + 1) = vadd_f32(v21, vadd_f32(v20, v21));
  WebCore::FloatRect::intersect(v30, a4);
  WebCore::FloatRect::operator CGRect();
  v29.receiver = self;
  v29.super_class = WKTapHighlightView;
  [(WKTapHighlightView *)&v29 setFrame:?];
  p_innerQuads = &self->_innerQuads;
  WTF::VectorBuffer<WebCore::HTTPHeaderField,0ul,WTF::FastMalloc>::adopt(&self->_innerQuads, a3);
  m_size = self->_innerQuads.m_size;
  if (m_size)
  {
    m_buffer = p_innerQuads->m_buffer;
    v25 = &p_innerQuads->m_buffer[m_size];
    do
    {
      v26.i64[0] = *&v30[0];
      v26.i64[1] = *&v30[0];
      v27 = vsubq_f32(*m_buffer, v26);
      v28 = vsubq_f32(m_buffer[1], v26);
      *m_buffer = v27;
      m_buffer[1] = v28;
      m_buffer += 2;
    }

    while (m_buffer != v25);
  }

  if ([-[WKTapHighlightView layer](self "layer")])
  {
    [(WKTapHighlightView *)self setNeedsDisplay];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(WKTapHighlightView *)self cleanUp];
  v8.receiver = self;
  v8.super_class = WKTapHighlightView;
  [(WKTapHighlightView *)&v8 setFrame:x, y, width, height];
}

- (void)drawRect:(CGRect)a3
{
  v18 = *MEMORY[0x1E69E9840];
  p_innerFrames = &self->_innerFrames;
  if (self->_innerFrames.m_size || self->_innerQuads.m_size)
  {
    v5 = [MEMORY[0x1E69DC728] bezierPath];
    if (p_innerFrames->m_size)
    {
      WebCore::PathUtilities::pathWithShrinkWrappedRects();
      [v5 appendPath:{objc_msgSend(MEMORY[0x1E69DC728], "bezierPathWithCGPath:", WebCore::Path::platformPath(&v16))}];
      if (v17 >= 2u && v17 != 255)
      {
        v6 = v16;
        v16 = 0;
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v6 + 2);
            (*(*v6 + 8))(v6);
          }
        }
      }
    }

    else
    {
      p_innerQuads = &self->_innerQuads;
      m_size = self->_innerQuads.m_size;
      if (m_size)
      {
        m_buffer = p_innerQuads->m_buffer;
        v10 = &p_innerQuads->m_buffer[m_size];
        do
        {
          v11 = [MEMORY[0x1E69DC728] bezierPath];
          WebCore::FloatPoint::operator CGPoint();
          [v11 moveToPoint:?];
          WebCore::FloatPoint::operator CGPoint();
          [v11 addLineToPoint:?];
          WebCore::FloatPoint::operator CGPoint();
          [v11 addLineToPoint:?];
          WebCore::FloatPoint::operator CGPoint();
          [v11 addLineToPoint:?];
          [v11 closePath];
          [v5 appendPath:v11];
          ++m_buffer;
        }

        while (m_buffer != v10);
      }
    }

    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    if (self->_innerQuads.m_size)
    {
      CGContextSetLineWidth(CurrentContext, (self->_minimumCornerRadius * 4.0));
    }

    CGContextSetLineJoin(CurrentContext, kCGLineJoinRound);
    Alpha = CGColorGetAlpha([(UIColor *)self->_color.m_ptr CGColor]);
    [[(UIColor *)self->_color.m_ptr colorWithAlphaComponent:1.0] set];
    CGContextSetAlpha(CurrentContext, Alpha);
    CGContextBeginTransparencyLayer(CurrentContext, 0);
    CGContextAddPath(CurrentContext, [v5 CGPath]);
    CGContextDrawPath(CurrentContext, kCGPathFillStroke);
    CGContextEndTransparencyLayer(CurrentContext);
    CGContextRestoreGState(CurrentContext);
  }

  else
  {
    [(UIColor *)self->_color.m_ptr set:a3.origin.x];
    v14 = MEMORY[0x1E69DC728];
    [(WKTapHighlightView *)self bounds];
    v15 = [v14 bezierPathWithRoundedRect:? cornerRadius:?];

    [v15 fill];
  }
}

- (id).cxx_construct
{
  *(self + 51) = 0;
  *(self + 420) = 0u;
  *(self + 436) = 0u;
  *(self + 57) = 0;
  *(self + 58) = 0;
  *(self + 59) = 0;
  *(self + 60) = 0;
  return self;
}

@end