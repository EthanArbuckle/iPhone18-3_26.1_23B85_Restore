@interface ARHWFaceDetection
+ (id)faceDetectionFromDictionary:(id)a3;
- (ARHWFaceDetection)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFaceDetection:(id)a3;
- (CGRect)boundingBox;
- (void)encodeWithCoder:(id)a3;
- (void)setTime:(id *)a3;
@end

@implementation ARHWFaceDetection

- (void)encodeWithCoder:(id)a3
{
  ID = self->_ID;
  v5 = a3;
  [v5 encodeInt64:ID forKey:@"ID"];
  [v5 encodeDouble:@"rollAngleInDegrees" forKey:self->_rollAngleInDegrees];
  [v5 encodeRect:@"boundingBox" forKey:{self->_boundingBox.origin.x, self->_boundingBox.origin.y, self->_boundingBox.size.width, self->_boundingBox.size.height}];
  [v5 encodeInteger:self->_detectionOrientation forKey:@"detectionOrientation"];
  time = self->_time;
  [v5 encodeCMTime:&time forKey:@"time"];
}

- (ARHWFaceDetection)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ARHWFaceDetection;
  v5 = [(ARHWFaceDetection *)&v14 init];
  if (v5)
  {
    v5->_ID = [v4 decodeInt64ForKey:@"ID"];
    [v4 decodeDoubleForKey:@"rollAngleInDegrees"];
    v5->_rollAngleInDegrees = v6;
    [v4 decodeRectForKey:@"boundingBox"];
    v5->_boundingBox.origin.x = v7;
    v5->_boundingBox.origin.y = v8;
    v5->_boundingBox.size.width = v9;
    v5->_boundingBox.size.height = v10;
    v5->_detectionOrientation = [v4 decodeIntegerForKey:@"detectionOrientation"];
    if (v4)
    {
      [v4 decodeCMTimeForKey:@"time"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ARHWFaceDetection *)self isEqualToFaceDetection:v4];

  return v5;
}

- (BOOL)isEqualToFaceDetection:(id)a3
{
  v4 = a3;
  v5 = [(ARHWFaceDetection *)self ID];
  if (v5 == [v4 ID] && (-[ARHWFaceDetection rollAngleInDegrees](self, "rollAngleInDegrees"), v7 = v6, objc_msgSend(v4, "rollAngleInDegrees"), v7 == v8) && (-[ARHWFaceDetection boundingBox](self, "boundingBox"), v10 = v9, v12 = v11, v14 = v13, v16 = v15, objc_msgSend(v4, "boundingBox"), v27.origin.x = v17, v27.origin.y = v18, v27.size.width = v19, v27.size.height = v20, v26.origin.x = v10, v26.origin.y = v12, v26.size.width = v14, v26.size.height = v16, CGRectEqualToRect(v26, v27)) && (v21 = -[ARHWFaceDetection detectionOrientation](self, "detectionOrientation"), v21 == objc_msgSend(v4, "detectionOrientation")))
  {
    [(ARHWFaceDetection *)self time];
    if (v4)
    {
      [v4 time];
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

+ (id)faceDetectionFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"AngleInfoRoll"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass & 1) != 0 && ([v3 objectForKey:@"Rect"], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v7 = objc_opt_isKindOfClass(), v6, (v7) && (objc_msgSend(v3, "objectForKey:", @"timestamp"), v8 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v9 = objc_opt_isKindOfClass(), v8, (v9) && (objc_msgSend(v3, "objectForKey:", @"FaceID"), v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v11 = objc_opt_isKindOfClass(), v10, (v11) && (memset(&rect, 0, sizeof(rect)), objc_msgSend(v3, "objectForKey:", @"Rect"), v12 = objc_claimAutoreleasedReturnValue(), v13 = CGRectMakeWithDictionaryRepresentation(v12, &rect), v12, v13))
  {
    v14 = objc_opt_new();
    v15 = [v3 objectForKey:@"FaceID"];
    [v14 setID:{objc_msgSend(v15, "integerValue")}];

    v16 = [v3 objectForKey:@"AngleInfoRoll"];
    [v16 doubleValue];
    [v14 setRollAngleInDegrees:?];

    [v14 setBoundingBox:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
    v17 = [v3 objectForKey:@"timestamp"];
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

- (void)setTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_time.epoch = a3->var3;
  *&self->_time.value = v3;
}

@end