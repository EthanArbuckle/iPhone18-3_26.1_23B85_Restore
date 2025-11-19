@interface ARImageTrackingConfiguration
+ (BOOL)isSupported;
+ (BOOL)supportsFrameSemantics:(unint64_t)a3;
- (ARImageTrackingConfiguration)init;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)createTechniques:(id)a3;
@end

@implementation ARImageTrackingConfiguration

- (ARImageTrackingConfiguration)init
{
  v6.receiver = self;
  v6.super_class = ARImageTrackingConfiguration;
  v2 = [(ARConfiguration *)&v6 initPrivate];
  if (v2)
  {
    v3 = objc_opt_new();
    trackingImages = v2->_trackingImages;
    v2->_trackingImages = v3;

    [(ARConfiguration *)v2 setAutoFocusEnabled:1];
    [(ARImageTrackingConfiguration *)v2 setMaximumNumberOfTrackedImages:1];
  }

  return v2;
}

+ (BOOL)isSupported
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___ARImageTrackingConfiguration;
  return objc_msgSendSuper2(&v3, sel_isSupported);
}

+ (BOOL)supportsFrameSemantics:(unint64_t)a3
{
  v4 = objc_opt_class();

  return [v4 supportsFrameSemantics:a3];
}

- (void)createTechniques:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ARImageTrackingConfiguration *)self trackingImages];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [ARImageTrackingTechnique alloc];
    v8 = [(ARImageTrackingConfiguration *)self trackingImages];
    v9 = [v8 allObjects];
    v10 = [(ARImageTrackingTechnique *)v7 initWithReferenceImages:v9 maximumNumberOfTrackedImages:[(ARImageTrackingConfiguration *)self maximumNumberOfTrackedImages]];

    v11 = [ARParentTechnique alloc];
    v15[0] = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v13 = [(ARParentTechnique *)v11 initWithParallelTechniques:v12];

    [v4 addObject:v13];
  }

  v14.receiver = self;
  v14.super_class = ARImageTrackingConfiguration;
  [(ARConfiguration *)&v14 createTechniques:v4];
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = ARImageTrackingConfiguration;
  if ([(ARConfiguration *)&v13 isEqual:v6])
  {
    v7 = v6;
    v8 = [(ARImageTrackingConfiguration *)self trackingImages];
    v9 = [v7 trackingImages];
    if (v8 == v9 || (-[ARImageTrackingConfiguration trackingImages](self, "trackingImages"), v3 = objc_claimAutoreleasedReturnValue(), [v7 trackingImages], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqual:", v4)))
    {
      v11 = [(ARImageTrackingConfiguration *)self maximumNumberOfTrackedImages];
      v10 = v11 == [v7 maximumNumberOfTrackedImages];
      if (v8 == v9)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = ARImageTrackingConfiguration;
  v5 = [(ARConfiguration *)&v10 copyWithZone:?];
  v6 = [(ARImageTrackingConfiguration *)self trackingImages];
  v7 = [v6 copyWithZone:a3];
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

  v7 = [(ARConfiguration *)self descriptionWithoutBrackets];
  [v6 appendString:v7];

  v8 = [(ARImageTrackingConfiguration *)self trackingImages];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(ARImageTrackingConfiguration *)self trackingImages];
    v11 = [v10 allObjects];
    v12 = [v11 componentsJoinedByString:{@", "}];
    [v6 appendFormat:@" trackingImages=[%@]", v12];
  }

  v13 = [(ARImageTrackingConfiguration *)self trackingImages];
  v14 = [v13 count];

  if (v14)
  {
    [v6 appendFormat:@" maximumNumberOfTrackedImages=%ld", -[ARImageTrackingConfiguration maximumNumberOfTrackedImages](self, "maximumNumberOfTrackedImages")];
  }

  [v6 appendString:@">"];

  return v6;
}

@end