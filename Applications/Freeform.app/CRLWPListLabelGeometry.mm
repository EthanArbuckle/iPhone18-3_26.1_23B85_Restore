@interface CRLWPListLabelGeometry
+ (id)listLabelGeometry;
- (BOOL)isEqual:(id)equal;
- (CRLWPListLabelGeometry)initWithScale:(double)scale scaleWithText:(BOOL)text baselineOffset:(double)offset;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation CRLWPListLabelGeometry

+ (id)listLabelGeometry
{
  v2 = [[self alloc] initWithScale:1 scaleWithText:1.0 baselineOffset:0.0];

  return v2;
}

- (CRLWPListLabelGeometry)initWithScale:(double)scale scaleWithText:(BOOL)text baselineOffset:(double)offset
{
  v9.receiver = self;
  v9.super_class = CRLWPListLabelGeometry;
  result = [(CRLWPListLabelGeometry *)&v9 init];
  if (result)
  {
    result->mScaleWithText = text;
    result->mScale = scale;
    result->mBaselineOffset = offset;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  v6 = equalCopy == self;
  if (equalCopy && equalCopy != self)
  {
    if ([(CRLWPListLabelGeometry *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v7 = v5;
      mScale = self->mScale;
      v9 = v7[1];
      v6 = (mScale == v9 || vabdd_f64(mScale, v9) < fabs(v9 * 0.000000999999997)) && ((mBaselineOffset = self->mBaselineOffset, v11 = v7[2], mBaselineOffset == v11) || vabdd_f64(mBaselineOffset, v11) < fabs(v11 * 0.000000999999997)) && self->mScaleWithText == *(v7 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(CRLHasher);
  [(CRLHasher *)v3 addBool:self->mScaleWithText];
  hashValue = [(CRLHasher *)v3 hashValue];

  return hashValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRLWPListLabelGeometry alloc];
  mScaleWithText = self->mScaleWithText;
  mScale = self->mScale;
  mBaselineOffset = self->mBaselineOffset;

  return [(CRLWPListLabelGeometry *)v4 initWithScale:mScaleWithText scaleWithText:mScale baselineOffset:mBaselineOffset];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = v4;
  if (self->mScaleWithText)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [NSString stringWithFormat:@"<%@: %p> { scale=%.2f baselineOffset=%.2f scaleWithText=%@ }", v4, self, *&self->mScale, *&self->mBaselineOffset, v6];

  return v7;
}

@end