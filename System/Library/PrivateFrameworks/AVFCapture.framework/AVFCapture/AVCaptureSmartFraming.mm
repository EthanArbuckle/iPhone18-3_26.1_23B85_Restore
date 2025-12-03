@interface AVCaptureSmartFraming
+ (AVCaptureSmartFraming)smartFramingWithAspectRatio:(id)ratio zoomFactor:(float)factor;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (id)_initWithAspectRatio:(id)ratio zoomFactor:(float)factor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (void)dealloc;
@end

@implementation AVCaptureSmartFraming

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (AVCaptureSmartFraming)smartFramingWithAspectRatio:(id)ratio zoomFactor:(float)factor
{
  v6 = objc_alloc(objc_opt_class());
  *&v7 = factor;
  v8 = [v6 _initWithAspectRatio:ratio zoomFactor:v7];

  return v8;
}

- (id)_initWithAspectRatio:(id)ratio zoomFactor:(float)factor
{
  v8.receiver = self;
  v8.super_class = AVCaptureSmartFraming;
  v6 = [(AVCaptureSmartFraming *)&v8 init];
  if (v6)
  {
    v6->_aspectRatio = ratio;
    v6->_zoomFactor = factor;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureSmartFraming;
  [(AVCaptureSmartFraming *)&v3 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  aspectRatio = [(AVCaptureSmartFraming *)self aspectRatio];
  [(AVCaptureSmartFraming *)self zoomFactor];
  return [v3 stringWithFormat:@"%@, %.2f", aspectRatio, v5];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVCaptureSmartFraming debugDescription](self, "debugDescription")];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = -[NSString isEqual:](-[AVCaptureSmartFraming aspectRatio](self, "aspectRatio"), "isEqual:", [equal aspectRatio]);
      if (v5)
      {
        [(AVCaptureSmartFraming *)self zoomFactor];
        v7 = v6;
        [equal zoomFactor];
        LOBYTE(v5) = v7 == v8;
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  aspectRatio = [(AVCaptureSmartFraming *)self aspectRatio];
  [(AVCaptureSmartFraming *)self zoomFactor];

  return [v4 _initWithAspectRatio:aspectRatio zoomFactor:?];
}

@end