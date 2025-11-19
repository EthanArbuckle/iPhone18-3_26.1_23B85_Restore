@interface THPageViewDisplacement
- (THPageViewDisplacement)initWithView:(id)a3 scrollView:(id)a4;
- (void)animateFadeWithDuration:(double)a3 forPageIndex:(unint64_t)a4 enumerator:(id)a5;
- (void)animateOpacityAndDisplaymentProgess:(double)a3 delay:(double)a4 duration:(double)a5 initialPageIndex:(unint64_t)a6 enumerator:(id)a7;
- (void)animateOverscrollWithDuration:(unint64_t)a3 enumerator:(id)a4;
- (void)animateShowWithDuration:(double)a3 forPageIndex:(unint64_t)a4 enumerator:(id)a5;
- (void)animateZoomWithDuration:(double)a3 initialPageIndex:(unint64_t)a4 minViewScale:(double)a5 maxViewScale:(double)a6 currentViewScale:(double)a7 enumerator:(id)a8;
- (void)dealloc;
- (void)startRevealTOCWithPageIndex:(unint64_t)a3 enumerator:(id)a4;
- (void)updateDisplacementAnimated:(BOOL)a3 restoreOrigin:(BOOL)a4 enumerator:(id)a5;
- (void)updateZoomInitialPageIndex:(unint64_t)a3 minViewScale:(double)a4 maxViewScale:(double)a5 currentViewScale:(double)a6 enumerator:(id)a7;
@end

@implementation THPageViewDisplacement

- (THPageViewDisplacement)initWithView:(id)a3 scrollView:(id)a4
{
  v8.receiver = self;
  v8.super_class = THPageViewDisplacement;
  v6 = [(THPageViewDisplacement *)&v8 init];
  if (v6)
  {
    v6->_view = a3;
    v6->_scrollView = a4;
    v6->_numberOfPagesShown = 1;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THPageViewDisplacement;
  [(THPageViewDisplacement *)&v3 dealloc];
}

- (void)animateZoomWithDuration:(double)a3 initialPageIndex:(unint64_t)a4 minViewScale:(double)a5 maxViewScale:(double)a6 currentViewScale:(double)a7 enumerator:(id)a8
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1785EC;
  v12[3] = &unk_45E200;
  *&v12[6] = a6;
  *&v12[7] = a5;
  v12[4] = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  v12[5] = a4;
  *&v12[8] = a7;
  *&v12[9] = a3;
  (*(a8 + 2))(a8, v12);
}

- (void)animateOpacityAndDisplaymentProgess:(double)a3 delay:(double)a4 duration:(double)a5 initialPageIndex:(unint64_t)a6 enumerator:(id)a7
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_178880;
  v12[3] = &unk_45E228;
  v12[4] = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  v12[5] = a6;
  *&v12[6] = a3;
  *&v12[7] = a5;
  *&v12[8] = a4;
  (*(a7 + 2))(a7, v12);
}

- (void)updateZoomInitialPageIndex:(unint64_t)a3 minViewScale:(double)a4 maxViewScale:(double)a5 currentViewScale:(double)a6 enumerator:(id)a7
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_178ADC;
  v9[3] = &unk_45E228;
  *&v9[6] = a5;
  *&v9[7] = a4;
  *&v9[8] = a6;
  v9[4] = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  v9[5] = a3;
  (*(a7 + 2))(a7, v9);
}

- (void)animateFadeWithDuration:(double)a3 forPageIndex:(unint64_t)a4 enumerator:(id)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_178D18;
  v5[3] = &unk_45E248;
  v5[4] = a4;
  *&v5[5] = a3;
  (*(a5 + 2))(a5, v5);
}

- (void)animateShowWithDuration:(double)a3 forPageIndex:(unint64_t)a4 enumerator:(id)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_178EFC;
  v5[3] = &unk_45E248;
  v5[4] = a4;
  *&v5[5] = a3;
  (*(a5 + 2))(a5, v5);
}

- (void)animateOverscrollWithDuration:(unint64_t)a3 enumerator:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1790DC;
  v4[3] = &unk_45E268;
  v4[4] = a3;
  (*(a4 + 2))(a4, v4);
}

- (void)startRevealTOCWithPageIndex:(unint64_t)a3 enumerator:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_179270;
  v4[3] = &unk_45E288;
  v4[4] = a3;
  (*(a4 + 2))(a4, v4);
}

- (void)updateDisplacementAnimated:(BOOL)a3 restoreOrigin:(BOOL)a4 enumerator:(id)a5
{
  [(TSKScrollView *)self->_scrollView tsk_bounds];
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  v12 = CGRectGetWidth(v41);
  if (v12 == 0.0)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = v12;
  }

  numberOfPagesShown = self->_numberOfPagesShown;
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  rect.origin.y = CGRectGetMinX(v42) / v13 * numberOfPagesShown;
  v15 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [(UIView *)self->_view bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  view = self->_view;
  [(TSKScrollView *)self->_scrollView bounds];
  [(UIView *)view convertRect:self->_scrollView fromView:?];
  rect.origin.x = v43.origin.x;
  v25 = v43.origin.y;
  v26 = v43.size.width;
  v27 = v43.size.height;
  MinX = CGRectGetMinX(v43);
  v44.origin.x = v17;
  v44.origin.y = v19;
  v44.size.width = v21;
  v44.size.height = v23;
  v32 = fmax(MinX - CGRectGetMinX(v44), 0.0);
  v45.origin.x = v17;
  v45.origin.y = v19;
  v45.size.width = v21;
  v45.size.height = v23;
  MaxX = CGRectGetMaxX(v45);
  v46.origin.x = rect.origin.x;
  v46.origin.y = v25;
  v46.size.width = v26;
  v46.size.height = v27;
  v30 = fmin(v32, 40.0) + fmin(fmax(MaxX - CGRectGetMaxX(v46), 0.0), 40.0) <= 0.0;
  v31 = 1.0;
  if (v30)
  {
    v31 = 0.0;
  }

  *&rect.size.width = _NSConcreteStackBlock;
  *&rect.size.height = 3221225472;
  v34 = sub_17965C;
  v35 = &unk_45E2F0;
  v40 = a4;
  v37 = rect.origin.y;
  v38 = numberOfPagesShown;
  v36 = v15;
  v39 = v31;
  (*(a5 + 2))(a5, &rect.size);
}

@end