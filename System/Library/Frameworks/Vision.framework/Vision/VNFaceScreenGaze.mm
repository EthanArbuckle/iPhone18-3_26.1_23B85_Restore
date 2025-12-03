@interface VNFaceScreenGaze
- (BOOL)isEqual:(id)equal;
- (CGPoint)screenGazeRawOutputInCentimeters;
- (VNFaceScreenGaze)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)initWithScreenGaze:(void *)gaze originatingRequestSpecifier:;
@end

@implementation VNFaceScreenGaze

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(VNFaceScreenGaze *)self screenGazeRawOutputInCentimeters];
  v5 = v4;
  [(VNFaceScreenGaze *)self screenGazeRawOutputInCentimeters];
  v7 = v6;
  [(VNFaceScreenGaze *)self lookingAtDevice];
  v9 = v8;
  [(VNFaceScreenGaze *)self notLookingAtDevice];
  return [v3 stringWithFormat:@"screen gaze in cm [%f, %f]. Probabilities: looking = %f, notLooking = %f, ", v5, v7, *&v9, v10];
}

- (CGPoint)screenGazeRawOutputInCentimeters
{
  x = self->_screenGaze.x;
  y = self->_screenGaze.y;
  result.y = y;
  result.x = x;
  return result;
}

- (VNFaceScreenGaze)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy vn_decodePointForKey:@"gaze"];
  v6 = v5;
  v8 = v7;
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"oreq"];
  if (!v9)
  {
    v17 = 0;
    v9 = [VNRequestSpecifier specifierForRequestClassName:@"VNDetectScreenGazeRequest" revision:1 error:&v17];
    v10 = v17;
    v11 = v10;
    if (!v9)
    {
      [coderCopy failWithError:v10];
      selfCopy = 0;
      goto LABEL_5;
    }
  }

  v16[1] = vneg_f32(0x3F0000003FLL);
  *&v12 = v6;
  *&v13 = v8;
  v16[0] = __PAIR64__(v13, v12);
  self = [(VNFaceScreenGaze *)self initWithScreenGaze:v16 originatingRequestSpecifier:v9];
  v11 = v9;
  selfCopy = self;
LABEL_5:

  return selfCopy;
}

- (void)initWithScreenGaze:(void *)gaze originatingRequestSpecifier:
{
  gazeCopy = gaze;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = VNFaceScreenGaze;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    self = v7;
    if (v7)
    {
      *(v7 + 1) = vcvtq_f64_f32(*a2);
      *(v7 + 8) = a2[1].i32[1];
      *(v7 + 9) = a2[1].i32[0];
      objc_storeStrong(v7 + 1, gaze);
    }
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy vn_encodePoint:@"gaze" forKey:{self->_screenGaze.x, self->_screenGaze.y}];
  [coderCopy encodeObject:self->_originatingRequestSpecifier forKey:@"oreq"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = VNFaceScreenGaze;
    if ([(VNFaceScreenGaze *)&v16 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = equalCopy;
      [(VNFaceScreenGaze *)self screenGazeRawOutputInCentimeters];
      v7 = v6;
      v9 = v8;
      [(VNFaceScreenGaze *)v5 screenGazeRawOutputInCentimeters];
      v11 = 0;
      if (v7 == v12 && v9 == v10)
      {
        originatingRequestSpecifier = [(VNFaceScreenGaze *)self originatingRequestSpecifier];
        originatingRequestSpecifier2 = [(VNFaceScreenGaze *)v5 originatingRequestSpecifier];
        v11 = [originatingRequestSpecifier isEqual:originatingRequestSpecifier2];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  x = self->_screenGaze.x;
  if (x == 0.0)
  {
    x = 0.0;
  }

  y = self->_screenGaze.y;
  if (y == 0.0)
  {
    y = 0.0;
  }

  return [(VNRequestSpecifier *)self->_originatingRequestSpecifier hash]^ __ROR8__(*&y ^ __ROR8__(*&x, 51), 51);
}

@end