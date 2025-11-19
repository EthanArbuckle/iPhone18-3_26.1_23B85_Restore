@interface THWReviewMoreAnswersLayer
- (CGSize)layerSize;
- (THWReviewMoreAnswersLayer)init;
- (id)p_pathWithDirection:(int)a3 origin:(CGPoint)a4 size:(CGSize)a5 scale:(double)a6 includeWedge:(BOOL)a7;
- (void)dealloc;
- (void)p_updateTextLayerFrame;
- (void)setContentsScale:(double)a3;
- (void)setScale:(double)a3;
@end

@implementation THWReviewMoreAnswersLayer

- (THWReviewMoreAnswersLayer)init
{
  v7.receiver = self;
  v7.super_class = THWReviewMoreAnswersLayer;
  v2 = [(THWReviewMoreAnswersLayer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_scale = 1.0;
    p_width = &v2->_layerSize.width;
    v2->_layerSize = xmmword_34A910;
    -[THWReviewMoreAnswersLayer setBackgroundColor:](v2, "setBackgroundColor:", [+[TSUColor clearColor](TSUColor "clearColor")]);
    -[THWReviewMoreAnswersLayer setFillColor:](v3, "setFillColor:", [+[TSUColor whiteColor](TSUColor "whiteColor")]);
    [(THWReviewMoreAnswersLayer *)v3 setLineWidth:1.0];
    -[THWReviewMoreAnswersLayer setStrokeColor:](v3, "setStrokeColor:", [+[TSUColor colorWithWhite:alpha:](TSUColor CGColor:0.0]);
    -[THWReviewMoreAnswersLayer setShadowColor:](v3, "setShadowColor:", [+[TSUColor blackColor](TSUColor "blackColor")]);
    LODWORD(v5) = 0.25;
    [(THWReviewMoreAnswersLayer *)v3 setShadowOpacity:v5];
    [(THWReviewMoreAnswersLayer *)v3 setShadowOffset:0.0, 3.0];
    [(THWReviewMoreAnswersLayer *)v3 setShadowRadius:3.0];
    -[THWReviewMoreAnswersLayer setPath:](v3, "setPath:", [-[THWReviewMoreAnswersLayer p_pathWithDirection:origin:size:scale:includeWedge:](v3 p_pathWithDirection:3 origin:1 size:CGPointZero.x scale:CGPointZero.y includeWedge:{*p_width, v3->_layerSize.height, v3->_scale), "CGPath"}]);
    v3->_textLayer = objc_alloc_init(CATextLayer);
    [(CATextLayer *)v3->_textLayer setDelegate:+[THNoAnimationLayerDelegate sharedInstance]];
    [(CATextLayer *)v3->_textLayer setContentsGravity:kCAGravityCenter];
    [(CATextLayer *)v3->_textLayer setAlignmentMode:kCAAlignmentCenter];
    [(CATextLayer *)v3->_textLayer setTruncationMode:kCATruncationEnd];
    -[CATextLayer setString:](v3->_textLayer, "setString:", [THBundle() localizedStringForKey:@"Select more answers." value:&stru_471858 table:0]);
    -[CATextLayer setFont:](v3->_textLayer, "setFont:", [+[TSUFont systemFontOfSize:](TSUFont systemFontOfSize:{v3->_scale * 14.0), "fontName"}]);
    [(CATextLayer *)v3->_textLayer setFontSize:v3->_scale * 14.0];
    -[CATextLayer setForegroundColor:](v3->_textLayer, "setForegroundColor:", [+[TSUColor colorWithWhite:alpha:](TSUColor CGColor:0.300000012]);
    -[CATextLayer setBackgroundColor:](v3->_textLayer, "setBackgroundColor:", [+[TSUColor clearColor](TSUColor "clearColor")]);
    [(THWReviewMoreAnswersLayer *)v3 p_updateTextLayerFrame];
    [(THWReviewMoreAnswersLayer *)v3 addSublayer:v3->_textLayer];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWReviewMoreAnswersLayer;
  [(THWReviewMoreAnswersLayer *)&v3 dealloc];
}

- (void)p_updateTextLayerFrame
{
  TSDRectWithSize();
  CGRectInset(v5, 10.0, 10.0);
  TSDMultiplyRectScalar();
  [(CATextLayer *)self->_textLayer contentsScale];
  TSDRoundedRectForScale();
  textLayer = self->_textLayer;

  [(CATextLayer *)textLayer setFrame:?];
}

- (void)setContentsScale:(double)a3
{
  v5.receiver = self;
  v5.super_class = THWReviewMoreAnswersLayer;
  [(THWReviewMoreAnswersLayer *)&v5 setContentsScale:?];
  [(CATextLayer *)self->_textLayer setContentsScale:a3];
  [(THWReviewMoreAnswersLayer *)self p_updateTextLayerFrame];
}

- (void)setScale:(double)a3
{
  if (self->_scale != a3)
  {
    self->_scale = a3;
    [(CATextLayer *)self->_textLayer setFontSize:a3 * 14.0];
    -[THWReviewMoreAnswersLayer setPath:](self, "setPath:", [-[THWReviewMoreAnswersLayer p_pathWithDirection:origin:size:scale:includeWedge:](self p_pathWithDirection:3 origin:1 size:CGPointZero.x scale:CGPointZero.y includeWedge:{self->_layerSize.width, self->_layerSize.height, self->_scale), "CGPath"}]);

    [(THWReviewMoreAnswersLayer *)self p_updateTextLayerFrame];
  }
}

- (id)p_pathWithDirection:(int)a3 origin:(CGPoint)a4 size:(CGSize)a5 scale:(double)a6 includeWedge:(BOOL)a7
{
  TSURound();
  v11 = v10;
  TSURound();
  if (a3 != 0 && a7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  TSDMultiplyPointScalar();
  TSDRoundedPoint();
  v15 = v14;
  v17 = v16;
  TSDMultiplySizeScalar();
  TSDRoundedSize();
  v19 = v18;
  v21 = v20;
  v22 = a6 * 3.5;
  memset(&m, 0, sizeof(m));
  CGAffineTransformMakeTranslation(&m, v15, v17);
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, &m, v22, 0.0);
  v33 = (v19 - v11) * 0.5;
  CGPathAddLineToPoint(Mutable, &m, v33, 0.0);
  v24 = 0.0;
  if (a3 == 1)
  {
    v24 = -v13;
  }

  CGPathAddLineToPoint(Mutable, &m, v19 * 0.5, v24);
  v25 = (v11 + v19) * 0.5;
  CGPathAddLineToPoint(Mutable, &m, v25, 0.0);
  CGPathAddLineToPoint(Mutable, &m, v19 - v22, 0.0);
  CGPathAddArcToPoint(Mutable, &m, v19, 0.0, v19, v22, v22);
  v32 = (v21 - v11) * 0.5;
  CGPathAddLineToPoint(Mutable, &m, v19, v32);
  v26 = 0.0;
  if (a3 == 2)
  {
    v26 = v13;
  }

  CGPathAddLineToPoint(Mutable, &m, v26 + v19, v21 * 0.5);
  v27 = (v11 + v21) * 0.5;
  CGPathAddLineToPoint(Mutable, &m, v19, v27);
  CGPathAddLineToPoint(Mutable, &m, v19, v21 - v22);
  CGPathAddArcToPoint(Mutable, &m, v19, v21, v19 - v22, v21, v22);
  CGPathAddLineToPoint(Mutable, &m, v25, v21);
  if (a3 == 3)
  {
    v28 = v13;
  }

  else
  {
    v28 = 0.0;
  }

  CGPathAddLineToPoint(Mutable, &m, v19 * 0.5, v28 + v21);
  CGPathAddLineToPoint(Mutable, &m, v33, v21);
  CGPathAddLineToPoint(Mutable, &m, v22, v21);
  CGPathAddArcToPoint(Mutable, &m, 0.0, v21, 0.0, v21 - v22, v22);
  CGPathAddLineToPoint(Mutable, &m, 0.0, v27);
  v29 = -v13;
  if (a3 != 4)
  {
    v29 = 0.0;
  }

  CGPathAddLineToPoint(Mutable, &m, v29, v21 * 0.5);
  CGPathAddLineToPoint(Mutable, &m, 0.0, v32);
  CGPathAddLineToPoint(Mutable, &m, 0.0, v22);
  CGPathAddArcToPoint(Mutable, &m, 0.0, 0.0, v22, 0.0, v22);
  CGPathCloseSubpath(Mutable);
  v30 = [TSDBezierPath bezierPathWithCGPath:Mutable];
  CGPathRelease(Mutable);
  return v30;
}

- (CGSize)layerSize
{
  width = self->_layerSize.width;
  height = self->_layerSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end