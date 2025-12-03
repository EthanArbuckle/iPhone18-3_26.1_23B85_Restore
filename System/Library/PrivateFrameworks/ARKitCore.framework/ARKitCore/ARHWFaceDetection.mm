@interface ARHWFaceDetection
+ (id)faceDetectionFromDictionary:(id)dictionary;
- (ARHWFaceDetection)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFaceDetection:(id)detection;
- (CGRect)boundingBox;
- (void)encodeWithCoder:(id)coder;
- (void)setTime:(id *)time;
@end

@implementation ARHWFaceDetection

- (void)encodeWithCoder:(id)coder
{
  ID = self->_ID;
  coderCopy = coder;
  [coderCopy encodeInt64:ID forKey:@"ID"];
  [coderCopy encodeDouble:@"rollAngleInDegrees" forKey:self->_rollAngleInDegrees];
  [coderCopy encodeRect:@"boundingBox" forKey:{self->_boundingBox.origin.x, self->_boundingBox.origin.y, self->_boundingBox.size.width, self->_boundingBox.size.height}];
  [coderCopy encodeInteger:self->_detectionOrientation forKey:@"detectionOrientation"];
  time = self->_time;
  [coderCopy encodeCMTime:&time forKey:@"time"];
}

- (ARHWFaceDetection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = ARHWFaceDetection;
  v5 = [(ARHWFaceDetection *)&v14 init];
  if (v5)
  {
    v5->_ID = [coderCopy decodeInt64ForKey:@"ID"];
    [coderCopy decodeDoubleForKey:@"rollAngleInDegrees"];
    v5->_rollAngleInDegrees = v6;
    [coderCopy decodeRectForKey:@"boundingBox"];
    v5->_boundingBox.origin.x = v7;
    v5->_boundingBox.origin.y = v8;
    v5->_boundingBox.size.width = v9;
    v5->_boundingBox.size.height = v10;
    v5->_detectionOrientation = [coderCopy decodeIntegerForKey:@"detectionOrientation"];
    if (coderCopy)
    {
      [coderCopy decodeCMTimeForKey:@"time"];
    }

    else
    {
      v12 = 0uLL;
      v13 = 0;
    }

    *&v5->_time.value = v12;
    v5->_time.epoch = v13;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ARHWFaceDetection *)self isEqualToFaceDetection:equalCopy];

  return v5;
}

- (BOOL)isEqualToFaceDetection:(id)detection
{
  detectionCopy = detection;
  v5 = [(ARHWFaceDetection *)self ID];
  if (v5 == [detectionCopy ID] && (-[ARHWFaceDetection rollAngleInDegrees](self, "rollAngleInDegrees"), v7 = v6, objc_msgSend(detectionCopy, "rollAngleInDegrees"), v7 == v8) && (-[ARHWFaceDetection boundingBox](self, "boundingBox"), v10 = v9, v12 = v11, v14 = v13, v16 = v15, objc_msgSend(detectionCopy, "boundingBox"), v27.origin.x = v17, v27.origin.y = v18, v27.size.width = v19, v27.size.height = v20, v26.origin.x = v10, v26.origin.y = v12, v26.size.width = v14, v26.size.height = v16, CGRectEqualToRect(v26, v27)) && (v21 = -[ARHWFaceDetection detectionOrientation](self, "detectionOrientation"), v21 == objc_msgSend(detectionCopy, "detectionOrientation")))
  {
    [(ARHWFaceDetection *)self time];
    if (detectionCopy)
    {
      [detectionCopy time];
    }

    else
    {
      memset(&v24, 0, sizeof(v24));
    }

    v22 = CMTimeCompare(&time1, &v24) == 0;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)faceDetectionFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"AngleInfoRoll"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass & 1) != 0 && ([dictionaryCopy objectForKey:@"Rect"], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v7 = objc_opt_isKindOfClass(), v6, (v7) && (objc_msgSend(dictionaryCopy, "objectForKey:", @"timestamp"), v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v9 = objc_opt_isKindOfClass(), v8, (v9) && (objc_msgSend(dictionaryCopy, "objectForKey:", @"FaceID"), v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v11 = objc_opt_isKindOfClass(), v10, (v11) && (memset(&rect, 0, sizeof(rect)), objc_msgSend(dictionaryCopy, "objectForKey:", @"Rect"), v12 = objc_claimAutoreleasedReturnValue(), v13 = CGRectMakeWithDictionaryRepresentation(v12, &rect), v12, v13))
  {
    v14 = objc_opt_new();
    v15 = [dictionaryCopy objectForKey:@"FaceID"];
    [v14 setID:{objc_msgSend(v15, "integerValue")}];

    v16 = [dictionaryCopy objectForKey:@"AngleInfoRoll"];
    [v16 doubleValue];
    [v14 setRollAngleInDegrees:?];

    [v14 setBoundingBox:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
    v17 = [dictionaryCopy objectForKey:@"timestamp"];
    CMTimeMake(&v20, [v17 integerValue], 1);
    v19 = v20;
    [v14 setTime:&v19];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setTime:(id *)time
{
  v3 = *&time->var0;
  self->_time.epoch = time->var3;
  *&self->_time.value = v3;
}

@end