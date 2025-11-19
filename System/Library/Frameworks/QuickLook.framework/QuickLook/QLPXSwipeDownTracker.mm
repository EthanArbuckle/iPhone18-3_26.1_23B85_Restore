@interface QLPXSwipeDownTracker
- (CGAffineTransform)trackedTransform;
- (CGPoint)trackedCenter;
- (CGRect)trackedBounds;
- (QLPXDisplayVelocity)trackedVelocity;
- (QLPXSwipeDownTracker)initWithOptions:(unint64_t)a3;
- (void)setTrackedTransform:(CGAffineTransform *)a3;
- (void)startTrackingCenter:(CGPoint)a3 bounds:(CGRect)a4 transform:(CGAffineTransform *)a5 withInitialGestureLocation:(CGPoint)a6;
- (void)trackGestureTranslation:(CGPoint)a3 velocity:(CGPoint)a4;
@end

@implementation QLPXSwipeDownTracker

- (QLPXSwipeDownTracker)initWithOptions:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = QLPXSwipeDownTracker;
  result = [(QLPXSwipeDownTracker *)&v5 init];
  if (result)
  {
    result->_options = a3;
    *&result->_trackedVelocity.x = QLPXDisplayVelocityZero;
    *&result->_trackedVelocity.scale = unk_23A7FC498;
    *&result->_finalAnimationDuration = xmmword_23A7FC2F0;
  }

  return result;
}

- (void)startTrackingCenter:(CGPoint)a3 bounds:(CGRect)a4 transform:(CGAffineTransform *)a5 withInitialGestureLocation:(CGPoint)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  self->_didStartTracking = 1;
  self->_initialTouchLocation = a6;
  self->_initialCenter = a3;
  self->_initialBounds = a4;
  v12 = *&a5->a;
  v13 = *&a5->tx;
  *&self->_initialTransform.c = *&a5->c;
  *&self->_initialTransform.tx = v13;
  *&self->_initialTransform.a = v12;
  [(QLPXSwipeDownTracker *)self setTrackedCenter:?];
  [(QLPXSwipeDownTracker *)self setTrackedBounds:x, y, width, height];
  v14 = *&a5->c;
  v15[0] = *&a5->a;
  v15[1] = v14;
  v15[2] = *&a5->tx;
  [(QLPXSwipeDownTracker *)self setTrackedTransform:v15];
}

- (void)trackGestureTranslation:(CGPoint)a3 velocity:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v9 = [(QLPXSwipeDownTracker *)self options];
  v10 = v9 & 1;
  if (v9)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = x;
  }

  if (v9)
  {
    v7 = 0.0;
  }

  v12 = [(QLPXSwipeDownTracker *)self verticalDirectionFilter];
  if (!v12)
  {
    v13 = objc_alloc_init(QLPXChangeDirectionNumberFilter);
    [(QLPXChangeDirectionNumberFilter *)v13 setMinimumChange:5.0];
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __57__QLPXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke;
    v89[3] = &unk_278B57CA8;
    v12 = v13;
    v90 = v12;
    [(QLPXNumberFilter *)v12 performChanges:v89];
    [(QLPXSwipeDownTracker *)self setVerticalDirectionFilter:v12];
  }

  v88[0] = MEMORY[0x277D85DD0];
  v88[1] = 3221225472;
  v88[2] = __57__QLPXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke_2;
  v88[3] = &__block_descriptor_48_e35_v16__0___QLPXMutableNumberFilter__8l;
  *&v88[4] = v7;
  *&v88[5] = v6;
  [(QLPXNumberFilter *)v12 performChanges:v88];
  [(QLPXNumberFilter *)v12 output];
  if (self->_didStartTracking)
  {
    v36 = v14;
    v15 = [(QLPXSwipeDownTracker *)self horizontalTranslationFilter];
    if (!v15)
    {
      v15 = objc_alloc_init(QLPXInitialHysteresisNumberFilter);
      [(QLPXInitialHysteresisNumberFilter *)v15 setHysteresis:20.0];
      [(QLPXSwipeDownTracker *)self setHorizontalTranslationFilter:v15];
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__QLPXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke_3;
    aBlock[3] = &unk_278B57CF0;
    v87 = v10;
    aBlock[4] = self;
    *&aBlock[5] = v7;
    *&aBlock[6] = v6;
    v16 = _Block_copy(aBlock);
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __57__QLPXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke_5;
    v85[3] = &__block_descriptor_48_e35_v16__0___QLPXMutableNumberFilter__8l;
    *&v85[4] = v7;
    *&v85[5] = v6;
    [(QLPXNumberFilter *)v15 performChanges:v85];
    [(QLPXNumberFilter *)v15 output];
    v18 = v17;
    v80 = 0;
    v81 = &v80;
    v82 = 0x3010000000;
    v83 = &unk_23A81BCCF;
    v84 = *MEMORY[0x277CBF348];
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v79 = 0x3FF0000000000000;
    v72 = 0;
    v73 = &v72;
    v74 = 0x2020000000;
    v75 = 0;
    v16[2](v16, &v84, &v79, &v75, v7, v6, v17);
    v19 = self->_initialBounds.origin.x;
    v20 = self->_initialBounds.origin.y;
    height = self->_initialBounds.size.height;
    width = self->_initialBounds.size.width;
    v21 = *&self->_initialTransform.tx;
    v22 = *&self->_initialTransform.a;
    *&v71.c = *&self->_initialTransform.c;
    *&v71.tx = v21;
    v40 = v81[2];
    initialCenter = self->_initialCenter;
    v37 = v77[3];
    v23 = v73[3];
    *&v70.a = v22;
    *&v70.c = *&v71.c;
    *&v70.tx = *&self->_initialTransform.tx;
    *&v71.a = v22;
    CGAffineTransformRotate(&v71, &v70, v23);
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __57__QLPXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke_6;
    v64[3] = &unk_278B57D18;
    v24 = v16;
    v66 = v24;
    v68 = v7;
    v69 = v6;
    v25 = v15;
    v65 = v25;
    v67 = &v80;
    v35 = QLPXDerivative(v64, 0.0);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __57__QLPXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke_7;
    v58[3] = &unk_278B57D40;
    v26 = v24;
    v61 = v7;
    v62 = v6;
    v63 = v18;
    v59 = v26;
    v60 = &v80;
    v34 = QLPXDerivative(v58, v6);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __57__QLPXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke_8;
    v50[3] = &unk_278B57D68;
    v27 = v26;
    v52 = v27;
    v54 = v7;
    v55 = v6;
    v56 = v11;
    v57 = y;
    v28 = v25;
    v51 = v28;
    v53 = &v76;
    v29 = QLPXDerivative(v50, 0.0);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __57__QLPXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke_9;
    v42[3] = &unk_278B57D68;
    v30 = v27;
    v44 = v30;
    v46 = v7;
    v47 = v6;
    v48 = v11;
    v49 = y;
    v31 = v28;
    v43 = v31;
    v45 = &v72;
    v32 = QLPXDerivative(v42, 0.0);
    [(QLPXSwipeDownTracker *)self setTrackedCenter:vaddq_f64(initialCenter, v40)];
    [(QLPXSwipeDownTracker *)self setTrackedBounds:v19, v20, width * v37, height * v37];
    v70 = v71;
    [(QLPXSwipeDownTracker *)self setTrackedTransform:&v70];
    [(QLPXSwipeDownTracker *)self setTrackedVelocity:v11 * v35, y * v34, v29, v32];

    _Block_object_dispose(&v72, 8);
    _Block_object_dispose(&v76, 8);
    _Block_object_dispose(&v80, 8);

    v14 = v36;
  }

  v33 = v14 >= 0.0;
  [(QLPXSwipeDownTracker *)self setDismissalProgress:v6 / 400.0];
  [(QLPXSwipeDownTracker *)self setShouldFinishDismissal:v33];
}

void __57__QLPXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v2 minimumChange];
  [v4 setInput:v3 + 1.0];
}

void __57__QLPXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke_3(uint64_t a1, double *a2, double *a3, double *a4, double a5, double a6)
{
  v9 = a6;
  v32 = 1.0;
  if (a6 <= 0.0)
  {
    v12 = 1.0;
    v17 = log(fabs(a5) / 100.0 + 1.0) * 100.0;
    if (a5 >= 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = -1.0;
    }

    if (a5 > 0.0)
    {
      v18 = 1.0;
    }

    v16 = v18 * v17;
    v19 = log(fabs(v9) / 100.0 + 1.0) * 100.0;
    if (v9 >= 0.0)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = -1.0;
    }

    v9 = v20 * v19;
  }

  else
  {
    v12 = 1.0;
    if ((*(a1 + 56) & 1) == 0)
    {
      v13 = atan(a6 / 200.0);
      v12 = cos(v13) * 0.5 + 0.5;
      v32 = v12;
    }

    v14 = log(fabs(a5) / 100.0 + 1.0) * 100.0;
    v15 = 0.0;
    if (a5 < 0.0)
    {
      v15 = -1.0;
    }

    if (a5 > 0.0)
    {
      v15 = 1.0;
    }

    v16 = v15 * v14;
  }

  v21 = *(a1 + 48);
  if (v21 == 0.0)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v9 / v21 * 0.0;
  }

  v31 = v22;
  v23 = *(a1 + 32);
  v24 = v23[2] - v23[4];
  v25 = v23[3] - v23[5];
  v26 = *(MEMORY[0x277CBF2C0] + 16);
  *&v30.a = *MEMORY[0x277CBF2C0];
  *&v30.c = v26;
  *&v30.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&v29.a = *&v30.a;
  *&v29.c = v26;
  *&v29.tx = *&v30.tx;
  CGAffineTransformTranslate(&v30, &v29, v24, v25);
  v28 = v30;
  CGAffineTransformScale(&v29, &v28, v12, v12);
  v30 = v29;
  v28 = v29;
  CGAffineTransformRotate(&v29, &v28, v22);
  v30 = v29;
  v28 = v29;
  CGAffineTransformTranslate(&v29, &v28, -v24, -v25);
  v30 = v29;
  *&v28.a = *MEMORY[0x277CBF348];
  QLPXAffineTransformDecomposeTranslationScaleRotation(&v29, &v28, &v32, 0, &v31);
  if (a2)
  {
    v27 = v9 + v28.b;
    *a2 = v16 + v28.a;
    a2[1] = v27;
  }

  if (a3)
  {
    *a3 = v32;
  }

  if (a4)
  {
    *a4 = v31;
  }
}

double __57__QLPXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke_6(uint64_t a1, double a2)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 56) + a2;
  v6 = *(a1 + 40);
  [*(a1 + 32) outputDerivative];
  (*(v6 + 16))(v6, *(*(a1 + 48) + 8) + 32, 0, 0, v5, v4, v7 * a2);
  return *(*(*(a1 + 48) + 8) + 32);
}

double __57__QLPXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke_7(uint64_t a1, double a2)
{
  v3 = *(*(a1 + 40) + 8);
  (*(*(a1 + 32) + 16))(*(a1 + 48), a2, *(a1 + 64));
  return *(*(*(a1 + 40) + 8) + 40);
}

double __57__QLPXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke_8(uint64_t a1, double a2)
{
  v4 = *(a1 + 56) + a2 * *(a1 + 72);
  v5 = *(a1 + 64) + a2 * *(a1 + 80);
  v6 = *(a1 + 40);
  [*(a1 + 32) outputDerivative];
  (*(v6 + 16))(v6, 0, *(*(a1 + 48) + 8) + 24, 0, v4, v5, v7 * a2 * *(a1 + 72));
  return *(*(*(a1 + 48) + 8) + 24);
}

double __57__QLPXSwipeDownTracker_trackGestureTranslation_velocity___block_invoke_9(uint64_t a1, double a2)
{
  v4 = *(a1 + 56) + a2 * *(a1 + 72);
  v5 = *(a1 + 64) + a2 * *(a1 + 80);
  v6 = *(a1 + 40);
  [*(a1 + 32) outputDerivative];
  (*(v6 + 16))(v6, 0, 0, *(*(a1 + 48) + 8) + 24, v4, v5, v7 * a2 * *(a1 + 72));
  return *(*(*(a1 + 48) + 8) + 24);
}

- (CGPoint)trackedCenter
{
  x = self->_trackedCenter.x;
  y = self->_trackedCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)trackedBounds
{
  x = self->_trackedBounds.origin.x;
  y = self->_trackedBounds.origin.y;
  width = self->_trackedBounds.size.width;
  height = self->_trackedBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGAffineTransform)trackedTransform
{
  v3 = *&self[5].ty;
  *&retstr->a = *&self[5].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[6].b;
  return self;
}

- (void)setTrackedTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_trackedTransform.c = *&a3->c;
  *&self->_trackedTransform.tx = v4;
  *&self->_trackedTransform.a = v3;
}

- (QLPXDisplayVelocity)trackedVelocity
{
  x = self->_trackedVelocity.x;
  y = self->_trackedVelocity.y;
  scale = self->_trackedVelocity.scale;
  rotation = self->_trackedVelocity.rotation;
  result.rotation = rotation;
  result.scale = scale;
  result.y = y;
  result.x = x;
  return result;
}

@end