@interface VNRecognizedObjectObservation
- (BOOL)isEqual:(id)a3;
- (VNRecognizedObjectObservation)initWithCoder:(id)a3;
- (VNRecognizedObjectObservation)initWithOriginatingRequestSpecifier:(id)a3 boundingBox:(CGRect)a4 confidence:(float)a5 labels:(id)a6 segmentationMask:(id)a7 groupId:(id)a8;
- (VNRecognizedObjectObservation)initWithRequestRevision:(unint64_t)a3 boundingBox:(CGRect)a4 confidence:(float)a5 labels:(id)a6;
- (id)description;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VNRecognizedObjectObservation

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = VNRecognizedObjectObservation;
  [(VNDetectedObjectObservation *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_labels forKey:@"labels"];
  segmentationMask = self->_segmentationMask;
  if (segmentationMask)
  {
    [v4 encodeObject:segmentationMask forKey:@"segmentationMask"];
  }
}

- (VNRecognizedObjectObservation)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = VNRecognizedObjectObservation;
  v5 = [(VNDetectedObjectObservation *)&v16 initWithCoder:v4];
  if (v5 && (v6 = objc_alloc(MEMORY[0x1E695DFD8]), v7 = objc_opt_class(), v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}], objc_msgSend(v4, "decodeObjectOfClasses:forKey:", v8, @"labels"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "copy"), labels = v5->_labels, v5->_labels = v10, labels, v9, v8, v5->_labels) && (!objc_msgSend(v4, "containsValueForKey:", @"segmentationMask") || (objc_msgSend(v4, "decodeObjectOfClass:forKey:", objc_opt_class(), @"segmentationMask"), v12 = objc_claimAutoreleasedReturnValue(), segmentationMask = v5->_segmentationMask, v5->_segmentationMask = v12, segmentationMask, v5->_segmentationMask)))
  {
    v14 = v5;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v3 = [(VNRecognizedObjectObservation *)self labels];
  v4 = [v3 valueForKey:@"identifier"];

  v5 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = VNRecognizedObjectObservation;
  v6 = [(VNDetectedObjectObservation *)&v10 description];
  v7 = [v4 componentsJoinedByString:{@", "}];
  v8 = [v5 stringWithFormat:@"%@ labels=[%@]", v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = VNRecognizedObjectObservation;
  if ([(VNDetectedObjectObservation *)&v13 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(VNRecognizedObjectObservation *)self segmentationMask];
    v7 = [v5 segmentationMask];
    v8 = VisionCoreEqualOrNilObjects();

    if (v8)
    {
      v9 = [(VNRecognizedObjectObservation *)self labels];
      v10 = [v5 labels];
      v11 = VisionCoreEquivalentOrNilUnorderedArrays();
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = VNRecognizedObjectObservation;
  return [(VNPixelBufferObservation *)self->_segmentationMask hash]^ __ROR8__([(NSArray *)self->_labels hash]^ __ROR8__([(VNDetectedObjectObservation *)&v3 hash], 51), 51);
}

- (id)vn_cloneObject
{
  v9.receiver = self;
  v9.super_class = VNRecognizedObjectObservation;
  v3 = [(VNDetectedObjectObservation *)&v9 vn_cloneObject];
  if (v3)
  {
    v4 = [(NSArray *)self->_labels copy];
    v5 = v3[20];
    v3[20] = v4;

    v6 = [(VNPixelBufferObservation *)self->_segmentationMask copy];
    v7 = v3[21];
    v3[21] = v6;
  }

  return v3;
}

- (VNRecognizedObjectObservation)initWithOriginatingRequestSpecifier:(id)a3 boundingBox:(CGRect)a4 confidence:(float)a5 labels:(id)a6 segmentationMask:(id)a7 groupId:(id)a8
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v17 = a3;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v27.receiver = self;
  v27.super_class = VNRecognizedObjectObservation;
  v21 = [(VNDetectedObjectObservation *)&v27 initWithOriginatingRequestSpecifier:v17 boundingBox:v20 groupId:x, y, width, height];
  v23 = v21;
  if (v21)
  {
    *&v22 = a5;
    [(VNObservation *)v21 setConfidence:v22];
    v24 = [v18 copy];
    labels = v23->_labels;
    v23->_labels = v24;

    objc_storeStrong(&v23->_segmentationMask, a7);
  }

  return v23;
}

- (VNRecognizedObjectObservation)initWithRequestRevision:(unint64_t)a3 boundingBox:(CGRect)a4 confidence:(float)a5 labels:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a6;
  v14 = [objc_opt_class() defaultOriginatingRequestSpecifierForRevision:a3];
  if (v14)
  {
    *&v15 = a5;
    self = [(VNRecognizedObjectObservation *)self initWithOriginatingRequestSpecifier:v14 boundingBox:v13 confidence:0 labels:0 segmentationMask:x groupId:y, width, height, v15];
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end