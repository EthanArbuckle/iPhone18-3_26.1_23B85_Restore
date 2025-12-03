@interface AVCaptureTimecodeSource
- (AVCaptureTimecodeSource)initWithDisplayName:(id)name sourceType:(int64_t)type uuid:(id)uuid;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation AVCaptureTimecodeSource

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = -[NSString isEqualToString:](-[AVCaptureTimecodeSource displayName](self, "displayName"), "isEqualToString:", [equal displayName]);
  if (!v5)
  {
    return v5;
  }

  type = [(AVCaptureTimecodeSource *)self type];
  if (type != [equal type])
  {
LABEL_8:
    LOBYTE(v5) = 0;
    return v5;
  }

  uuid = [(AVCaptureTimecodeSource *)self uuid];
  uuid2 = [equal uuid];

  LOBYTE(v5) = [(NSUUID *)uuid isEqual:uuid2];
  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)[(AVCaptureTimecodeSource *)self displayName] hash];
  v4 = [(AVCaptureTimecodeSource *)self type]^ v3;
  return v4 ^ [(NSUUID *)[(AVCaptureTimecodeSource *)self uuid] hash];
}

- (AVCaptureTimecodeSource)initWithDisplayName:(id)name sourceType:(int64_t)type uuid:(id)uuid
{
  v10.receiver = self;
  v10.super_class = AVCaptureTimecodeSource;
  v8 = [(AVCaptureTimecodeSource *)&v10 init];
  if (v8)
  {
    v8->_displayName = [name copy];
    v8->_type = type;
    if (uuid)
    {
      v8->_uuid = [uuid copy];
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
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