@interface VNRecognizedObjectObservation
- (BOOL)isEqual:(id)equal;
- (VNRecognizedObjectObservation)initWithCoder:(id)coder;
- (VNRecognizedObjectObservation)initWithOriginatingRequestSpecifier:(id)specifier boundingBox:(CGRect)box confidence:(float)confidence labels:(id)labels segmentationMask:(id)mask groupId:(id)id;
- (VNRecognizedObjectObservation)initWithRequestRevision:(unint64_t)revision boundingBox:(CGRect)box confidence:(float)confidence labels:(id)labels;
- (id)description;
- (id)vn_cloneObject;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNRecognizedObjectObservation

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = VNRecognizedObjectObservation;
  [(VNDetectedObjectObservation *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_labels forKey:@"labels"];
  segmentationMask = self->_segmentationMask;
  if (segmentationMask)
  {
    [coderCopy encodeObject:segmentationMask forKey:@"segmentationMask"];
  }
}

- (VNRecognizedObjectObservation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = VNRecognizedObjectObservation;
  v5 = [(VNDetectedObjectObservation *)&v16 initWithCoder:coderCopy];
  if (v5 && (v6 = objc_alloc(MEMORY[0x1E695DFD8]), v7 = objc_opt_class(), v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}], objc_msgSend(coderCopy, "decodeObjectOfClasses:forKey:", v8, @"labels"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "copy"), labels = v5->_labels, v5->_labels = v10, labels, v9, v8, v5->_labels) && (!objc_msgSend(coderCopy, "containsValueForKey:", @"segmentationMask") || (objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"segmentationMask"), v12 = objc_claimAutoreleasedReturnValue(), segmentationMask = v5->_segmentationMask, v5->_segmentationMask = v12, segmentationMask, v5->_segmentationMask)))
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
  labels = [(VNRecognizedObjectObservation *)self labels];
  v4 = [labels valueForKey:@"identifier"];

  v5 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = VNRecognizedObjectObservation;
  v6 = [(VNDetectedObjectObservation *)&v10 description];
  v7 = [v4 componentsJoinedByString:{@", "}];
  v8 = [v5 stringWithFormat:@"%@ labels=[%@]", v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = VNRecognizedObjectObservation;
  if ([(VNDetectedObjectObservation *)&v13 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    segmentationMask = [(VNRecognizedObjectObservation *)self segmentationMask];
    segmentationMask2 = [v5 segmentationMask];
    v8 = VisionCoreEqualOrNilObjects();

    if (v8)
    {
      labels = [(VNRecognizedObjectObservation *)self labels];
      labels2 = [v5 labels];
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
  vn_cloneObject = [(VNDetectedObjectObservation *)&v9 vn_cloneObject];
  if (vn_cloneObject)
  {
    v4 = [(NSArray *)self->_labels copy];
    v5 = vn_cloneObject[20];
    vn_cloneObject[20] = v4;

    v6 = [(VNPixelBufferObservation *)self->_segmentationMask copy];
    v7 = vn_cloneObject[21];
    vn_cloneObject[21] = v6;
  }

  return vn_cloneObject;
}

- (VNRecognizedObjectObservation)initWithOriginatingRequestSpecifier:(id)specifier boundingBox:(CGRect)box confidence:(float)confidence labels:(id)labels segmentationMask:(id)mask groupId:(id)id
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  specifierCopy = specifier;
  labelsCopy = labels;
  maskCopy = mask;
  idCopy = id;
  v27.receiver = self;
  v27.super_class = VNRecognizedObjectObservation;
  height = [(VNDetectedObjectObservation *)&v27 initWithOriginatingRequestSpecifier:specifierCopy boundingBox:idCopy groupId:x, y, width, height];
  v23 = height;
  if (height)
  {
    *&v22 = confidence;
    [(VNObservation *)height setConfidence:v22];
    v24 = [labelsCopy copy];
    labels = v23->_labels;
    v23->_labels = v24;

    objc_storeStrong(&v23->_segmentationMask, mask);
  }

  return v23;
}

- (VNRecognizedObjectObservation)initWithRequestRevision:(unint64_t)revision boundingBox:(CGRect)box confidence:(float)confidence labels:(id)labels
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  labelsCopy = labels;
  v14 = [objc_opt_class() defaultOriginatingRequestSpecifierForRevision:revision];
  if (v14)
  {
    *&v15 = confidence;
    self = [(VNRecognizedObjectObservation *)self initWithOriginatingRequestSpecifier:v14 boundingBox:labelsCopy confidence:0 labels:0 segmentationMask:x groupId:y, width, height, v15];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end