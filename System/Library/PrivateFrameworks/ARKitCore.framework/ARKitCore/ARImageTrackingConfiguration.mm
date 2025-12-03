@interface ARImageTrackingConfiguration
+ (BOOL)isSupported;
+ (BOOL)supportsFrameSemantics:(unint64_t)semantics;
- (ARImageTrackingConfiguration)init;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)createTechniques:(id)techniques;
@end

@implementation ARImageTrackingConfiguration

- (ARImageTrackingConfiguration)init
{
  v6.receiver = self;
  v6.super_class = ARImageTrackingConfiguration;
  initPrivate = [(ARConfiguration *)&v6 initPrivate];
  if (initPrivate)
  {
    v3 = objc_opt_new();
    trackingImages = initPrivate->_trackingImages;
    initPrivate->_trackingImages = v3;

    [(ARConfiguration *)initPrivate setAutoFocusEnabled:1];
    [(ARImageTrackingConfiguration *)initPrivate setMaximumNumberOfTrackedImages:1];
  }

  return initPrivate;
}

+ (BOOL)isSupported
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___ARImageTrackingConfiguration;
  return objc_msgSendSuper2(&v3, sel_isSupported);
}

+ (BOOL)supportsFrameSemantics:(unint64_t)semantics
{
  v4 = objc_opt_class();

  return [v4 supportsFrameSemantics:semantics];
}

- (void)createTechniques:(id)techniques
{
  v15[1] = *MEMORY[0x1E69E9840];
  techniquesCopy = techniques;
  trackingImages = [(ARImageTrackingConfiguration *)self trackingImages];
  v6 = [trackingImages count];

  if (v6)
  {
    v7 = [ARImageTrackingTechnique alloc];
    trackingImages2 = [(ARImageTrackingConfiguration *)self trackingImages];
    allObjects = [trackingImages2 allObjects];
    v10 = [(ARImageTrackingTechnique *)v7 initWithReferenceImages:allObjects maximumNumberOfTrackedImages:[(ARImageTrackingConfiguration *)self maximumNumberOfTrackedImages]];

    v11 = [ARParentTechnique alloc];
    v15[0] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v13 = [(ARParentTechnique *)v11 initWithParallelTechniques:v12];

    [techniquesCopy addObject:v13];
  }

  v14.receiver = self;
  v14.super_class = ARImageTrackingConfiguration;
  [(ARConfiguration *)&v14 createTechniques:techniquesCopy];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = ARImageTrackingConfiguration;
  if ([(ARConfiguration *)&v13 isEqual:equalCopy])
  {
    v7 = equalCopy;
    trackingImages = [(ARImageTrackingConfiguration *)self trackingImages];
    trackingImages2 = [v7 trackingImages];
    if (trackingImages == trackingImages2 || (-[ARImageTrackingConfiguration trackingImages](self, "trackingImages"), v3 = objc_claimAutoreleasedReturnValue(), [v7 trackingImages], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      maximumNumberOfTrackedImages = [(ARImageTrackingConfiguration *)self maximumNumberOfTrackedImages];
      v10 = maximumNumberOfTrackedImages == [v7 maximumNumberOfTrackedImages];
      if (trackingImages == trackingImages2)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_8;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = ARImageTrackingConfiguration;
  v5 = [(ARConfiguration *)&v10 copyWithZone:?];
  trackingImages = [(ARImageTrackingConfiguration *)self trackingImages];
  v7 = [trackingImages copyWithZone:zone];
  v8 = v5[14];
  v5[14] = v7;

  v5[15] = [(ARImageTrackingConfiguration *)self maximumNumberOfTrackedImages];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  descriptionWithoutBrackets = [(ARConfiguration *)self descriptionWithoutBrackets];
  [v6 appendString:descriptionWithoutBrackets];

  trackingImages = [(ARImageTrackingConfiguration *)self trackingImages];
  v9 = [trackingImages count];

  if (v9)
  {
    trackingImages2 = [(ARImageTrackingConfiguration *)self trackingImages];
    allObjects = [trackingImages2 allObjects];
    v12 = [allObjects componentsJoinedByString:{@", "}];
    [v6 appendFormat:@" trackingImages=[%@]", v12];
  }

  trackingImages3 = [(ARImageTrackingConfiguration *)self trackingImages];
  v14 = [trackingImages3 count];

  if (v14)
  {
    [v6 appendFormat:@" maximumNumberOfTrackedImages=%ld", -[ARImageTrackingConfiguration maximumNumberOfTrackedImages](self, "maximumNumberOfTrackedImages")];
  }

  [v6 appendString:@">"];

  return v6;
}

@end