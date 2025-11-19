@interface AVCaptureTimecodeSource
- (AVCaptureTimecodeSource)initWithDisplayName:(id)a3 sourceType:(int64_t)a4 uuid:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation AVCaptureTimecodeSource

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = -[NSString isEqualToString:](-[AVCaptureTimecodeSource displayName](self, "displayName"), "isEqualToString:", [a3 displayName]);
  if (!v5)
  {
    return v5;
  }

  v6 = [(AVCaptureTimecodeSource *)self type];
  if (v6 != [a3 type])
  {
LABEL_8:
    LOBYTE(v5) = 0;
    return v5;
  }

  v7 = [(AVCaptureTimecodeSource *)self uuid];
  v8 = [a3 uuid];

  LOBYTE(v5) = [(NSUUID *)v7 isEqual:v8];
  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)[(AVCaptureTimecodeSource *)self displayName] hash];
  v4 = [(AVCaptureTimecodeSource *)self type]^ v3;
  return v4 ^ [(NSUUID *)[(AVCaptureTimecodeSource *)self uuid] hash];
}

- (AVCaptureTimecodeSource)initWithDisplayName:(id)a3 sourceType:(int64_t)a4 uuid:(id)a5
{
  v10.receiver = self;
  v10.super_class = AVCaptureTimecodeSource;
  v8 = [(AVCaptureTimecodeSource *)&v10 init];
  if (v8)
  {
    v8->_displayName = [a3 copy];
    v8->_type = a4;
    if (a5)
    {
      v8->_uuid = [a5 copy];
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  displayName = self->_displayName;
  type = self->_type;
  uuid = self->_uuid;

  return [v4 initWithDisplayName:displayName sourceType:type uuid:uuid];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureTimecodeSource;
  [(AVCaptureTimecodeSource *)&v3 dealloc];
}

@end