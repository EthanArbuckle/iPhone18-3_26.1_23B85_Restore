@interface ARBodyAnchor
- (ARBodyAnchor)initWithAnchor:(id)anchor;
- (ARBodyAnchor)initWithCoder:(id)coder;
- (ARBodyAnchor)initWithIdentifier:(double)identifier transform:(double)transform tracked:(double)tracked skeletonData:(uint64_t)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToARBodyAnchor:(id)anchor;
- (id)copyWithTrackedState:(BOOL)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARBodyAnchor

- (ARBodyAnchor)initWithIdentifier:(double)identifier transform:(double)transform tracked:(double)tracked skeletonData:(uint64_t)data
{
  v13 = a9;
  v30.receiver = self;
  v30.super_class = ARBodyAnchor;
  tracked = [(ARAnchor *)&v30 initWithIdentifier:a7 transform:a2, identifier, transform, tracked];
  v15 = tracked;
  if (tracked)
  {
    objc_storeStrong(&tracked->_skeletonData, a9);
    v16 = [[ARSkeleton3D alloc] initWithCoreRESkeletonResult:v15->_skeletonData];
    skeleton = v15->_skeleton;
    v15->_skeleton = v16;

    v15->_tracked = a8;
    [v13 estimatedScaleFactor];
    v15->_estimatedScaleFactor = v18;
    v19 = [ARSkeleton2D alloc];
    liftedSkeletonData = [v13 liftedSkeletonData];
    skeletonDetectionResult2D = [liftedSkeletonData skeletonDetectionResult2D];
    v22 = [(ARSkeleton2D *)v19 initWithDetectedSkeleton:skeletonDetectionResult2D];

    v23 = [[ARBody2D alloc] initWithSkeleton2D:v22];
    referenceBody = v15->_referenceBody;
    v15->_referenceBody = v23;
  }

  return v15;
}

- (id)copyWithTrackedState:(BOOL)state
{
  stateCopy = state;
  v5 = [ARBodyAnchor alloc];
  identifier = [(ARAnchor *)self identifier];
  [(ARAnchor *)self transform];
  v7 = [(ARBodyAnchor *)v5 initWithIdentifier:identifier transform:stateCopy tracked:self->_skeletonData skeletonData:?];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ARBodyAnchor;
  coderCopy = coder;
  [(ARAnchor *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_tracked forKey:{@"tracked", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_skeletonData forKey:@"skeletonData"];
}

- (ARBodyAnchor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = ARBodyAnchor;
  v5 = [(ARAnchor *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_tracked = [coderCopy decodeBoolForKey:@"tracked"];
    v6 = [coderCopy decodeObjectForKey:@"skeletonData"];
    skeletonData = v5->_skeletonData;
    v5->_skeletonData = v6;

    v8 = [[ARSkeleton3D alloc] initWithCoreRESkeletonResult:v5->_skeletonData];
    skeleton = v5->_skeleton;
    v5->_skeleton = v8;

    v10 = [ARSkeleton2D alloc];
    liftedSkeletonData = [(ARCoreRESkeletonResult *)v5->_skeletonData liftedSkeletonData];
    skeletonDetectionResult2D = [liftedSkeletonData skeletonDetectionResult2D];
    v13 = [(ARSkeleton2D *)v10 initWithDetectedSkeleton:skeletonDetectionResult2D];

    v14 = [[ARBody2D alloc] initWithSkeleton2D:v13];
    referenceBody = v5->_referenceBody;
    v5->_referenceBody = v14;
  }

  return v5;
}

- (BOOL)isEqualToARBodyAnchor:(id)anchor
{
  anchorCopy = anchor;
  if ([anchorCopy isMemberOfClass:objc_opt_class()] && (objc_msgSend(anchorCopy, "identifier"), v5 = objc_claimAutoreleasedReturnValue(), -[ARAnchor identifier](self, "identifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, v7) && (v8 = objc_msgSend(anchorCopy, "isTracked"), v8 == -[ARBodyAnchor isTracked](self, "isTracked")))
  {
    v9 = [anchorCopy[24] isEqual:self->_skeletonData];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [(ARBodyAnchor *)self isEqualToARBodyAnchor:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ARBodyAnchor)initWithAnchor:(id)anchor
{
  anchorCopy = anchor;
  v11.receiver = self;
  v11.super_class = ARBodyAnchor;
  v5 = [(ARAnchor *)&v11 initWithAnchor:anchorCopy];
  if (v5)
  {
    v6 = [anchorCopy[24] copy];
    skeletonData = v5->_skeletonData;
    v5->_skeletonData = v6;

    v8 = [[ARSkeleton3D alloc] initWithCoreRESkeletonResult:v5->_skeletonData];
    skeleton = v5->_skeleton;
    v5->_skeleton = v8;

    v5->_tracked = [anchorCopy isTracked];
  }

  return v5;
}

@end