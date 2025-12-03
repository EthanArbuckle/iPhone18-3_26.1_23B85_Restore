@interface GCDeviceAdaptiveTriggersStatusPayload
- (BOOL)isEqual:(id)equal;
- (GCDeviceAdaptiveTriggersStatusPayload)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCDeviceAdaptiveTriggersStatusPayload

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      status = self->_status;
      status = [(GCDeviceAdaptiveTriggersStatusPayload *)v5 status];
      if ([(NSNumber *)status isEqualToNumber:status])
      {
        armPosition = self->_armPosition;
        armPosition = [(GCDeviceAdaptiveTriggersStatusPayload *)v5 armPosition];
        if ([(NSNumber *)armPosition isEqualToNumber:armPosition])
        {
          mode = self->_mode;
          mode = [(GCDeviceAdaptiveTriggersStatusPayload *)v5 mode];
          v12 = [(NSNumber *)mode isEqualToNumber:mode];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSNumber *)self->_status hash];
  v4 = [(NSNumber *)self->_armPosition hash]^ v3;
  return v4 ^ [(NSNumber *)self->_mode hash];
}

- (GCDeviceAdaptiveTriggersStatusPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = GCDeviceAdaptiveTriggersStatusPayload;
  v5 = [(GCDeviceAdaptiveTriggersStatusPayload *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_status"];
    status = v5->_status;
    v5->_status = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_armPosition"];
    armPosition = v5->_armPosition;
    v5->_armPosition = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_mode"];
    mode = v5->_mode;
    v5->_mode = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  status = self->_status;
  coderCopy = coder;
  [coderCopy encodeObject:status forKey:@"_status"];
  [coderCopy encodeObject:self->_armPosition forKey:@"_armPosition"];
  [coderCopy encodeObject:self->_mode forKey:@"_mode"];
}

@end