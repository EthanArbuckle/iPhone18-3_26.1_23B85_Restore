@interface VNImageprintObservation
+ (id)observationWithImageprint:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (VNImageprintObservation)initWithCoder:(id)a3;
- (float)calculateDistanceFromImageprintObservation:(id)a3;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNImageprintObservation

- (float)calculateDistanceFromImageprintObservation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(VNImageprintObservation *)self imageprint];
    v6 = [v4 imageprint];
    v7 = [v5 distanceToImageprint:v6 error:0];

    [v7 floatValue];
    v9 = v8;
  }

  else
  {
    v9 = -1.0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = VNImageprintObservation;
    if ([(VNObservation *)&v10 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
      v6 = [(VNImageprintObservation *)self imageprint];
      v7 = [(VNImageprintObservation *)v5 imageprint];
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
  v4 = [(VNImageprintObservation *)self imageprint];
  v5 = [v4 hash] ^ __ROR8__(v3, 51);

  return v5;
}

- (id)vn_cloneObject
{
  v6.receiver = self;
  v6.super_class = VNImageprintObservation;
  v3 = [(VNObservation *)&v6 vn_cloneObject];
  if (v3)
  {
    v4 = [(VNImageprint *)self->_imageprint copy];
    [v3 setImageprint:v4];
  }

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = VNImageprintObservation;
  [(VNObservation *)&v5 encodeWithCoder:v4];
  [v4 vn_encodeCodingVersion:0 forKey:@"VNImageprintObservation"];
  [v4 encodeObject:self->_imageprint forKey:@"VNImageprint"];
}

- (VNImageprintObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = VNImageprintObservation;
  v5 = [(VNObservation *)&v17 initWithCoder:v4];
  if (v5 && ![v4 vn_decodeCodingVersionForKey:@"VNImageprintObservation"])
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"VNImageprint"];
    if (v7)
    {
      objc_storeStrong(&v5->_imageprint, v7);
LABEL_6:
      v6 = v5;
LABEL_12:

      goto LABEL_13;
    }

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"descriptor"];
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
      [v4 failWithError:v11];
    }

    v6 = 0;
    goto LABEL_12;
  }

  v6 = 0;
LABEL_13:

  return v6;
}

+ (id)observationWithImageprint:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = -[VNObservation initWithRequestRevision:]([VNImageprintObservation alloc], "initWithRequestRevision:", [v5 requestRevision]);
    v7 = v6;
    if (v6)
    {
      [(VNImageprintObservation *)v6 setImageprint:v5];
      v8 = objc_alloc(MEMORY[0x1E696AFB0]);
      v9 = [v5 descriptor];
      v10 = [v9 externalImageId];
      v11 = [v8 initWithUUIDString:v10];

      if (v11)
      {
        [(VNObservation *)v7 setUUID:v11];
      }

      v12 = v7;
    }

    else if (a4)
    {
      *a4 = [VNError errorWithCode:5 message:@"Failed creating a new VNImageprintObservation object"];
    }
  }

  else if (a4)
  {
    [VNError errorWithCode:5 message:@"nil imageprint supplied"];
    *a4 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end