@interface AVCaptureSmartFraming
+ (AVCaptureSmartFraming)smartFramingWithAspectRatio:(id)a3 zoomFactor:(float)a4;
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (id)_initWithAspectRatio:(id)a3 zoomFactor:(float)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (void)dealloc;
@end

@implementation AVCaptureSmartFraming

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (AVCaptureSmartFraming)smartFramingWithAspectRatio:(id)a3 zoomFactor:(float)a4
{
  v6 = objc_alloc(objc_opt_class());
  *&v7 = a4;
  v8 = [v6 _initWithAspectRatio:a3 zoomFactor:v7];

  return v8;
}

- (id)_initWithAspectRatio:(id)a3 zoomFactor:(float)a4
{
  v8.receiver = self;
  v8.super_class = AVCaptureSmartFraming;
  v6 = [(AVCaptureSmartFraming *)&v8 init];
  if (v6)
  {
    v6->_aspectRatio = a3;
    v6->_zoomFactor = a4;
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
  v4 = [(AVCaptureSmartFraming *)self aspectRatio];
  [(AVCaptureSmartFraming *)self zoomFactor];
  return [v3 stringWithFormat:@"%@, %.2f", v4, v5];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p %@>", NSStringFromClass(v4), self, -[AVCaptureSmartFraming debugDescription](self, "debugDescription")];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = -[NSString isEqual:](-[AVCaptureSmartFraming aspectRatio](self, "aspectRatio"), "isEqual:", [a3 aspectRatio]);
      if (v5)
      {
        [(AVCaptureSmartFraming *)self zoomFactor];
        v7 = v6;
        [a3 zoomFactor];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(AVCaptureSmartFraming *)self aspectRatio];
  [(AVCaptureSmartFraming *)self zoomFactor];

  return [v4 _initWithAspectRatio:v5 zoomFactor:?];
}

@end