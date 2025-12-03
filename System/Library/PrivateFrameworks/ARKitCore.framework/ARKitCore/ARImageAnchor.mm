@interface ARImageAnchor
- (ARImageAnchor)initWithAnchor:(id)anchor;
- (ARImageAnchor)initWithCoder:(id)coder;
- (ARImageAnchor)initWithReferenceImage:(double)image transform:(double)transform detectionOnly:(double)only tracked:(uint64_t)tracked;
- (NSString)description;
- (id)copyWithTrackedState:(BOOL)state;
- (id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARImageAnchor

- (ARImageAnchor)initWithReferenceImage:(double)image transform:(double)transform detectionOnly:(double)only tracked:(uint64_t)tracked
{
  v13 = a7;
  identifier = [v13 identifier];
  v21.receiver = self;
  v21.super_class = ARImageAnchor;
  only = [(ARAnchor *)&v21 initWithIdentifier:identifier transform:a2, image, transform, only];

  if (only)
  {
    [(ARImageAnchor *)only setIsTracked:a9];
    objc_storeStrong(&only->_referenceImage, a7);
    only->_detectionOnly = a8;
  }

  return only;
}

- (id)name
{
  referenceImage = [(ARImageAnchor *)self referenceImage];
  name = [referenceImage name];

  return name;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  identifier = [(ARAnchor *)self identifier];
  [v6 appendFormat:@" identifier=%@", identifier];

  name = [(ARImageAnchor *)self name];

  if (name)
  {
    name2 = [(ARImageAnchor *)self name];
    [v6 appendFormat:@" name=%@", name2];
  }

  [(ARAnchor *)self transform];
  v14 = ARMatrix4x4Description(0, v10, v11, v12, v13);
  [v6 appendFormat:@" transform=%@", v14];

  referenceImage = [(ARImageAnchor *)self referenceImage];
  v16 = [referenceImage description];
  [v6 appendFormat:@" referenceImage=%@", v16];

  isTracked = [(ARImageAnchor *)self isTracked];
  v18 = @"NO";
  if (isTracked)
  {
    v18 = @"YES";
  }

  [v6 appendFormat:@" tracked=%@", v18];
  [(ARImageAnchor *)self estimatedScaleFactor];
  [v6 appendFormat:@" estimatedScale=%f", v19];
  [v6 appendString:@">"];

  return v6;
}

- (id)copyWithTrackedState:(BOOL)state
{
  stateCopy = state;
  v4 = [(ARImageAnchor *)self copy];
  v5 = v4;
  if (v4 && [v4 isTracked] != stateCopy)
  {
    [v5 setIsTracked:stateCopy];
  }

  return v5;
}

- (ARImageAnchor)initWithAnchor:(id)anchor
{
  anchorCopy = anchor;
  v10.receiver = self;
  v10.super_class = ARImageAnchor;
  v5 = [(ARAnchor *)&v10 initWithAnchor:anchorCopy];
  if (v5)
  {
    referenceImage = [anchorCopy referenceImage];
    referenceImage = v5->_referenceImage;
    v5->_referenceImage = referenceImage;

    v5->_detectionOnly = [anchorCopy isDetectionOnly];
    v5->_isTracked = [anchorCopy isTracked];
    [anchorCopy estimatedScaleFactor];
    v5->_estimatedScaleFactor = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ARImageAnchor;
  coderCopy = coder;
  [(ARAnchor *)&v6 encodeWithCoder:coderCopy];
  v5 = [(ARImageAnchor *)self referenceImage:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"referenceImage"];

  [coderCopy encodeObject:self->_referenceImageUUID forKey:@"referenceImageUUID"];
  [coderCopy encodeBool:-[ARImageAnchor isDetectionOnly](self forKey:{"isDetectionOnly"), @"detectionOnly"}];
  [coderCopy encodeBool:-[ARImageAnchor isTracked](self forKey:{"isTracked"), @"tracked"}];
  [(ARImageAnchor *)self estimatedScaleFactor];
  [coderCopy encodeDouble:@"estimatedScaleFactor" forKey:?];
}

- (ARImageAnchor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ARImageAnchor;
  v5 = [(ARAnchor *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referenceImage"];
    referenceImage = v5->_referenceImage;
    v5->_referenceImage = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"referenceImageUUID"];
    referenceImageUUID = v5->_referenceImageUUID;
    v5->_referenceImageUUID = v8;

    v5->_detectionOnly = [coderCopy decodeBoolForKey:@"detectionOnly"];
    v5->_isTracked = [coderCopy decodeBoolForKey:@"tracked"];
    [coderCopy decodeDoubleForKey:@"estimatedScaleFactor"];
    v5->_estimatedScaleFactor = v10;
  }

  return v5;
}

@end