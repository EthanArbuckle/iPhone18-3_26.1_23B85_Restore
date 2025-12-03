@interface CRLWPPadding
+ (id)padding;
+ (id)paddingWithTopInset:(double)inset leftInset:(double)leftInset bottomInset:(double)bottomInset rightInset:(double)rightInset;
- (BOOL)isEqual:(id)equal;
- (CRLWPPadding)initWithTopInset:(double)inset leftInset:(double)leftInset bottomInset:(double)bottomInset rightInset:(double)rightInset;
- (UIEdgeInsets)edgeInsets;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)paddingByMirroringHorizontal;
- (void)transform:(CGAffineTransform *)transform;
@end

@implementation CRLWPPadding

+ (id)padding
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (id)paddingWithTopInset:(double)inset leftInset:(double)leftInset bottomInset:(double)bottomInset rightInset:(double)rightInset
{
  v6 = [[self alloc] initWithTopInset:inset leftInset:leftInset bottomInset:bottomInset rightInset:rightInset];

  return v6;
}

- (CRLWPPadding)initWithTopInset:(double)inset leftInset:(double)leftInset bottomInset:(double)bottomInset rightInset:(double)rightInset
{
  v24.receiver = self;
  v24.super_class = CRLWPPadding;
  v6 = [(CRLWPPadding *)&v24 init];
  if (v6)
  {
    insetCopy = inset;
    if (inset > 50000000.0 || (insetCopy = leftInset, leftInset > 50000000.0) || (insetCopy = bottomInset, bottomInset > 50000000.0) || (insetCopy = rightInset, rightInset > 50000000.0))
    {
      v8 = [CRLAssertionHandler _atomicIncrementAssertCount:50000000.0];
      if (qword_101AD5A10 != -1)
      {
        sub_10135B7A4();
      }

      v9 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10135B7CC(v8, v9);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135B878();
      }

      v10 = off_1019EDA68;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = +[CRLAssertionHandler packedBacktraceString];
        sub_101318C3C(v11, buf, v8, v10);
      }

      v12 = [NSString stringWithUTF8String:"[CRLWPPadding initWithTopInset:leftInset:bottomInset:rightInset:]"];
      v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLWPPadding.mm"];
      [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:53 isFatal:0 description:"Illegal huge padding value"];
    }

    v14.f64[0] = inset;
    v14.f64[1] = leftInset;
    v15 = vmaxnmq_f64(v14, 0);
    v16 = vdupq_n_s64(0x4187D78400000000uLL);
    *(v6 + 8) = vbslq_s8(vcgtq_f64(v15, v16), v16, v15);
    v17.f64[0] = bottomInset;
    v17.f64[1] = rightInset;
    v18 = vmaxnmq_f64(v17, 0);
    *(v6 + 24) = vbslq_s8(vcgtq_f64(v18, v16), v16, v18);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  topInset = self->_topInset;
  leftInset = self->_leftInset;
  bottomInset = self->_bottomInset;
  rightInset = self->_rightInset;

  return [v4 initWithTopInset:topInset leftInset:leftInset bottomInset:bottomInset rightInset:rightInset];
}

- (void)transform:(CGAffineTransform *)transform
{
  a = transform->a;
  if (transform->a >= transform->d)
  {
    a = transform->d;
  }

  *&self->_topInset = vmulq_n_f64(*&self->_topInset, a);
  *&self->_bottomInset = vmulq_n_f64(*&self->_bottomInset, a);
}

- (id)paddingByMirroringHorizontal
{
  [(CRLWPPadding *)self topInset];
  v4 = v3;
  [(CRLWPPadding *)self rightInset];
  v6 = v5;
  [(CRLWPPadding *)self bottomInset];
  v8 = v7;
  [(CRLWPPadding *)self leftInset];

  return [CRLWPPadding paddingWithTopInset:v4 leftInset:v6 bottomInset:v8 rightInset:v9];
}

- (UIEdgeInsets)edgeInsets
{
  [(CRLWPPadding *)self topInset];
  v4 = v3;
  [(CRLWPPadding *)self leftInset];
  v6 = v5;
  [(CRLWPPadding *)self bottomInset];
  v8 = v7;
  [(CRLWPPadding *)self rightInset];
  v10 = v9;
  v11 = v4;
  v12 = v6;
  v13 = v8;
  result.right = v10;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    v6 = v5[1];
    topInset = self->_topInset;
    if ((v6 == topInset || vabdd_f64(v6, topInset) < fabs(topInset * 0.000000999999997)) && ((v8 = v5[2], leftInset = self->_leftInset, v8 == leftInset) || vabdd_f64(v8, leftInset) < fabs(leftInset * 0.000000999999997)) && ((v10 = v5[3], bottomInset = self->_bottomInset, v10 == bottomInset) || vabdd_f64(v10, bottomInset) < fabs(bottomInset * 0.000000999999997)))
    {
      v12 = v5[4];
      rightInset = self->_rightInset;
      v14 = v12 == rightInset || vabdd_f64(v12, rightInset) < fabs(rightInset * 0.000000999999997);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"(%@*)%p { topInset=%f leftInset=%f; bottomInset=%f; rightInset=%f }", v4, self, *&self->_topInset, *&self->_leftInset, *&self->_bottomInset, *&self->_rightInset];;

  return v5;
}

@end