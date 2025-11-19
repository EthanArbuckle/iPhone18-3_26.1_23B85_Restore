@interface GCDeviceAdaptiveTriggersStatusPayload
- (BOOL)isEqual:(id)a3;
- (GCDeviceAdaptiveTriggersStatusPayload)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCDeviceAdaptiveTriggersStatusPayload

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      status = self->_status;
      v7 = [(GCDeviceAdaptiveTriggersStatusPayload *)v5 status];
      if ([(NSNumber *)status isEqualToNumber:v7])
      {
        armPosition = self->_armPosition;
        v9 = [(GCDeviceAdaptiveTriggersStatusPayload *)v5 armPosition];
        if ([(NSNumber *)armPosition isEqualToNumber:v9])
        {
          mode = self->_mode;
          v11 = [(GCDeviceAdaptiveTriggersStatusPayload *)v5 mode];
          v12 = [(NSNumber *)mode isEqualToNumber:v11];
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

- (GCDeviceAdaptiveTriggersStatusPayload)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = GCDeviceAdaptiveTriggersStatusPayload;
  v5 = [(GCDeviceAdaptiveTriggersStatusPayload *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_status"];
    status = v5->_status;
    v5->_status = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_armPosition"];
    armPosition = v5->_armPosition;
    v5->_armPosition = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_mode"];
    mode = v5->_mode;
    v5->_mode = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  status = self->_status;
  v5 = a3;
  [v5 encodeObject:status forKey:@"_status"];
  [v5 encodeObject:self->_armPosition forKey:@"_armPosition"];
  [v5 encodeObject:self->_mode forKey:@"_mode"];
}

@end