@interface ARBodyAnchor
- (ARBodyAnchor)initWithAnchor:(id)a3;
- (ARBodyAnchor)initWithCoder:(id)a3;
- (ARBodyAnchor)initWithIdentifier:(double)a3 transform:(double)a4 tracked:(double)a5 skeletonData:(uint64_t)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToARBodyAnchor:(id)a3;
- (id)copyWithTrackedState:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARBodyAnchor

- (ARBodyAnchor)initWithIdentifier:(double)a3 transform:(double)a4 tracked:(double)a5 skeletonData:(uint64_t)a6
{
  v13 = a9;
  v30.receiver = a1;
  v30.super_class = ARBodyAnchor;
  v14 = [(ARAnchor *)&v30 initWithIdentifier:a7 transform:a2, a3, a4, a5];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_skeletonData, a9);
    v16 = [[ARSkeleton3D alloc] initWithCoreRESkeletonResult:v15->_skeletonData];
    skeleton = v15->_skeleton;
    v15->_skeleton = v16;

    v15->_tracked = a8;
    [v13 estimatedScaleFactor];
    v15->_estimatedScaleFactor = v18;
    v19 = [ARSkeleton2D alloc];
    v20 = [v13 liftedSkeletonData];
    v21 = [v20 skeletonDetectionResult2D];
    v22 = [(ARSkeleton2D *)v19 initWithDetectedSkeleton:v21];

    v23 = [[ARBody2D alloc] initWithSkeleton2D:v22];
    referenceBody = v15->_referenceBody;
    v15->_referenceBody = v23;
  }

  return v15;
}

- (id)copyWithTrackedState:(BOOL)a3
{
  v3 = a3;
  v5 = [ARBodyAnchor alloc];
  v6 = [(ARAnchor *)self identifier];
  [(ARAnchor *)self transform];
  v7 = [(ARBodyAnchor *)v5 initWithIdentifier:v6 transform:v3 tracked:self->_skeletonData skeletonData:?];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ARBodyAnchor;
  v4 = a3;
  [(ARAnchor *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_tracked forKey:{@"tracked", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_skeletonData forKey:@"skeletonData"];
}

- (ARBodyAnchor)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ARBodyAnchor;
  v5 = [(ARAnchor *)&v17 initWithCoder:v4];
  if (v5)
  {
    v5->_tracked = [v4 decodeBoolForKey:@"tracked"];
    v6 = [v4 decodeObjectForKey:@"skeletonData"];
    skeletonData = v5->_skeletonData;
    v5->_skeletonData = v6;

    v8 = [[ARSkeleton3D alloc] initWithCoreRESkeletonResult:v5->_skeletonData];
    skeleton = v5->_skeleton;
    v5->_skeleton = v8;

    v10 = [ARSkeleton2D alloc];
    v11 = [(ARCoreRESkeletonResult *)v5->_skeletonData liftedSkeletonData];
    v12 = [v11 skeletonDetectionResult2D];
    v13 = [(ARSkeleton2D *)v10 initWithDetectedSkeleton:v12];

    v14 = [[ARBody2D alloc] initWithSkeleton2D:v13];
    referenceBody = v5->_referenceBody;
    v5->_referenceBody = v14;
  }

  return v5;
}

- (BOOL)isEqualToARBodyAnchor:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (objc_msgSend(v4, "identifier"), v5 = objc_claimAutoreleasedReturnValue(), -[ARAnchor identifier](self, "identifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, v7) && (v8 = objc_msgSend(v4, "isTracked"), v8 == -[ARBodyAnchor isTracked](self, "isTracked")))
  {
    v9 = [v4[24] isEqual:self->_skeletonData];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(ARBodyAnchor *)self isEqualToARBodyAnchor:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ARBodyAnchor)initWithAnchor:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ARBodyAnchor;
  v5 = [(ARAnchor *)&v11 initWithAnchor:v4];
  if (v5)
  {
    v6 = [v4[24] copy];
    skeletonData = v5->_skeletonData;
    v5->_skeletonData = v6;

    v8 = [[ARSkeleton3D alloc] initWithCoreRESkeletonResult:v5->_skeletonData];
    skeleton = v5->_skeleton;
    v5->_skeleton = v8;

    v5->_tracked = [v4 isTracked];
  }

  return v5;
}

@end