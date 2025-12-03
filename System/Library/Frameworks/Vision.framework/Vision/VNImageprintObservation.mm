@interface VNImageprintObservation
+ (id)observationWithImageprint:(id)imageprint error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (VNImageprintObservation)initWithCoder:(id)coder;
- (float)calculateDistanceFromImageprintObservation:(id)observation;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNImageprintObservation

- (float)calculateDistanceFromImageprintObservation:(id)observation
{
  observationCopy = observation;
  if (observationCopy)
  {
    imageprint = [(VNImageprintObservation *)self imageprint];
    imageprint2 = [observationCopy imageprint];
    v7 = [imageprint distanceToImageprint:imageprint2 error:0];

    [v7 floatValue];
    v9 = v8;
  }

  else
  {
    v9 = -1.0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VNImageprintObservation;
    if ([(VNObservation *)&v10 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      imageprint = [(VNImageprintObservation *)self imageprint];
      imageprint2 = [(VNImageprintObservation *)v5 imageprint];
      v8 = VisionCoreEqualOrNilObjects();
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = VNImageprintObservation;
  v3 = [(VNObservation *)&v7 hash];
  imageprint = [(VNImageprintObservation *)self imageprint];
  v5 = [imageprint hash] ^ __ROR8__(v3, 51);

  return v5;
}

- (id)vn_cloneObject
{
  v6.receiver = self;
  v6.super_class = VNImageprintObservation;
  vn_cloneObject = [(VNObservation *)&v6 vn_cloneObject];
  if (vn_cloneObject)
  {
    v4 = [(VNImageprint *)self->_imageprint copy];
    [vn_cloneObject setImageprint:v4];
  }

  return vn_cloneObject;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = VNImageprintObservation;
  [(VNObservation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy vn_encodeCodingVersion:0 forKey:@"VNImageprintObservation"];
  [coderCopy encodeObject:self->_imageprint forKey:@"VNImageprint"];
}

- (VNImageprintObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = VNImageprintObservation;
  v5 = [(VNObservation *)&v17 initWithCoder:coderCopy];
  if (v5 && ![coderCopy vn_decodeCodingVersionForKey:@"VNImageprintObservation"])
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VNImageprint"];
    if (v7)
    {
      objc_storeStrong(&v5->_imageprint, v7);
LABEL_6:
      v6 = v5;
LABEL_12:

      goto LABEL_13;
    }

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];
    v9 = objc_opt_class();
    v16 = 0;
    v10 = +[VNRequestSpecifier specifierForRequestClass:revision:error:](VNRequestSpecifier, "specifierForRequestClass:revision:error:", v9, [v9 currentRevision], &v16);
    v11 = v16;
    if (v10)
    {
      v12 = [[VNImageprint alloc] initWithImageDescriptor:v8 type:0 originatingRequestSpecifier:v10];
      imageprint = v5->_imageprint;
      v5->_imageprint = v12;

      v14 = v5->_imageprint;
      if (v14)
      {
        goto LABEL_6;
      }
    }

    else
    {
      [coderCopy failWithError:v11];
    }

    v6 = 0;
    goto LABEL_12;
  }

  v6 = 0;
LABEL_13:

  return v6;
}

+ (id)observationWithImageprint:(id)imageprint error:(id *)error
{
  imageprintCopy = imageprint;
  if (imageprintCopy)
  {
    v6 = -[VNObservation initWithRequestRevision:]([VNImageprintObservation alloc], "initWithRequestRevision:", [imageprintCopy requestRevision]);
    v7 = v6;
    if (v6)
    {
      [(VNImageprintObservation *)v6 setImageprint:imageprintCopy];
      v8 = objc_alloc(MEMORY[0x1E696AFB0]);
      descriptor = [imageprintCopy descriptor];
      externalImageId = [descriptor externalImageId];
      v11 = [v8 initWithUUIDString:externalImageId];

      if (v11)
      {
        [(VNObservation *)v7 setUUID:v11];
      }

      v12 = v7;
    }

    else if (error)
    {
      *error = [VNError errorWithCode:5 message:@"Failed creating a new VNImageprintObservation object"];
    }
  }

  else if (error)
  {
    [VNError errorWithCode:5 message:@"nil imageprint supplied"];
    *error = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end