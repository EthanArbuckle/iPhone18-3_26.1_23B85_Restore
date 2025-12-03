@interface SRDevice
+ (SRDevice)currentDevice;
- (BOOL)isEqual:(id)equal;
- (SRDevice)initWithCoder:(id)coder;
- (SRDevice)initWithDeviceDetails:(id)details;
- (id)description;
- (id)sr_dictionaryRepresentation;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRDevice

- (SRDevice)initWithDeviceDetails:(id)details
{
  v6.receiver = self;
  v6.super_class = SRDevice;
  v4 = [(SRDevice *)&v6 init];
  if (v4)
  {
    v4->_name = [details objectForKeyedSubscript:0x1F48BF380];
    v4->_model = [details objectForKeyedSubscript:0x1F48BF320];
    v4->_systemName = [details objectForKeyedSubscript:0x1F48BF340];
    v4->_systemVersion = [details objectForKeyedSubscript:0x1F48BF360];
    v4->_buildVersion = [details objectForKeyedSubscript:0x1F48BF3A0];
    v4->_deviceIdentifier = [details objectForKeyedSubscript:0x1F48BF300];
    v4->_internalProductType = [details objectForKeyedSubscript:0x1F48BF3E0];
    v4->_deviceEnclosureMaterial = [objc_msgSend(details objectForKeyedSubscript:{0x1F48BF400), "integerValue"}];
  }

  return v4;
}

- (void)dealloc
{
  self->_name = 0;

  self->_model = 0;
  self->_systemName = 0;

  self->_systemVersion = 0;
  self->_buildVersion = 0;

  self->_internalProductType = 0;
  [(SRDevice *)self setDeviceIdentifier:0];
  v3.receiver = self;
  v3.super_class = SRDevice;
  [(SRDevice *)&v3 dealloc];
}

+ (SRDevice)currentDevice
{
  if (qword_1EE02AAD0 != -1)
  {
    dispatch_once(&qword_1EE02AAD0, &__block_literal_global_1);
  }

  return _MergedGlobals_1;
}

SRDevice *__25__SRDevice_currentDevice__block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v3[0] = [objc_msgSend(getUIDeviceClass() currentDevice];
  v2[1] = 0x1F48BF320;
  v3[1] = [objc_msgSend(getUIDeviceClass() "currentDevice")];
  v2[2] = 0x1F48BF340;
  v3[2] = [objc_msgSend(getUIDeviceClass() "currentDevice")];
  v2[3] = 0x1F48BF360;
  v3[3] = [objc_msgSend(getUIDeviceClass() "currentDevice")];
  v2[4] = 0x1F48BF3A0;
  v3[4] = [objc_msgSend(getUIDeviceClass() "currentDevice")];
  v2[5] = 0x1F48BF3E0;
  memset(&v4, 0, 512);
  uname(&v4);
  v3[5] = [MEMORY[0x1E696AEC0] stringWithCString:v4.machine encoding:4];
  result = -[SRDevice initWithDeviceDetails:]([SRDevice alloc], "initWithDeviceDetails:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:6]);
  _MergedGlobals_1 = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)sr_dictionaryRepresentation
{
  v6[4] = *MEMORY[0x1E69E9840];
  v5[0] = 0x1F48BF380;
  v6[0] = [(SRDevice *)self name];
  v5[1] = 0x1F48BF320;
  v6[1] = [(SRDevice *)self model];
  v5[2] = 0x1F48BF340;
  v6[2] = [(SRDevice *)self systemName];
  v5[3] = 0x1F48BF360;
  v6[3] = [(SRDevice *)self systemVersion];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(deviceIdentifier) = 1;
    return deviceIdentifier;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (!self->_deviceIdentifier)
  {
    if (![equal deviceIdentifier])
    {
      if (!self->_deviceIdentifier)
      {
        goto LABEL_12;
      }

      goto LABEL_4;
    }

LABEL_9:
    LOBYTE(deviceIdentifier) = 0;
    return deviceIdentifier;
  }

LABEL_4:
  deviceIdentifier = [equal deviceIdentifier];
  if (!deviceIdentifier)
  {
    return deviceIdentifier;
  }

  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier)
  {
    goto LABEL_14;
  }

LABEL_12:
  if ([equal deviceIdentifier])
  {
    deviceIdentifier = self->_deviceIdentifier;
LABEL_14:
    deviceIdentifier2 = [equal deviceIdentifier];

    LOBYTE(deviceIdentifier) = [(NSString *)deviceIdentifier isEqualToString:deviceIdentifier2];
    return deviceIdentifier;
  }

  LODWORD(deviceIdentifier) = -[NSString isEqualToString:](self->_name, "isEqualToString:", [equal name]);
  if (deviceIdentifier)
  {
    LODWORD(deviceIdentifier) = -[NSString isEqualToString:](self->_model, "isEqualToString:", [equal model]);
    if (deviceIdentifier)
    {
      LODWORD(deviceIdentifier) = -[NSString isEqualToString:](self->_systemName, "isEqualToString:", [equal systemName]);
      if (deviceIdentifier)
      {
        LODWORD(deviceIdentifier) = -[NSString isEqualToString:](self->_systemVersion, "isEqualToString:", [equal systemVersion]);
        if (deviceIdentifier)
        {
          LODWORD(deviceIdentifier) = -[NSString isEqualToString:](self->_buildVersion, "isEqualToString:", [equal buildVersion]);
          if (deviceIdentifier)
          {
            LODWORD(deviceIdentifier) = -[NSString isEqualToString:](self->_internalProductType, "isEqualToString:", [equal productType]);
            if (deviceIdentifier)
            {
              deviceEnclosureMaterial = self->_deviceEnclosureMaterial;
              LOBYTE(deviceIdentifier) = deviceEnclosureMaterial == [equal deviceEnclosureMaterial];
            }
          }
        }
      }
    }
  }

  return deviceIdentifier;
}

- (unint64_t)hash
{
  deviceIdentifier = self->_deviceIdentifier;
  if (deviceIdentifier)
  {

    return [(NSString *)deviceIdentifier hash];
  }

  else
  {
    v5 = [(NSString *)self->_name hash];
    v6 = v5 ^ (2 * [(NSString *)self->_model hash]);
    v7 = v6 ^ (4 * [(NSString *)self->_systemName hash]);
    v8 = v7 ^ (8 * [(NSString *)self->_systemVersion hash]);
    v9 = v8 ^ (16 * [(NSString *)self->_buildVersion hash]);
    v10 = v9 ^ (32 * [(NSString *)self->_internalProductType hash]);
    return v10 ^ ([objc_msgSend(MEMORY[0x1E696AD98] numberWithInteger:{self->_deviceEnclosureMaterial), "hash"}] << 6);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@: %@, %@, %@ %@", NSStringFromClass(v4), self->_name, self->_model, self->_systemName, self->_systemVersion];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_name forKey:0x1F48BF380];
  [coder encodeObject:self->_model forKey:0x1F48BF320];
  [coder encodeObject:self->_systemName forKey:0x1F48BF340];
  [coder encodeObject:self->_systemVersion forKey:0x1F48BF360];
  [coder encodeObject:self->_buildVersion forKey:0x1F48BF3A0];
  [coder encodeObject:self->_deviceIdentifier forKey:0x1F48BF300];
  [coder encodeObject:self->_internalProductType forKey:0x1F48BF3E0];
  deviceEnclosureMaterial = self->_deviceEnclosureMaterial;

  [coder encodeInteger:deviceEnclosureMaterial forKey:0x1F48BF400];
}

- (SRDevice)initWithCoder:(id)coder
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v5 setObject:objc_msgSend(coder forKeyedSubscript:{"decodeObjectOfClass:forKey:", objc_opt_class(), 0x1F48BF380), 0x1F48BF380}];
  [v5 setObject:objc_msgSend(coder forKeyedSubscript:{"decodeObjectOfClass:forKey:", objc_opt_class(), 0x1F48BF320), 0x1F48BF320}];
  [v5 setObject:objc_msgSend(coder forKeyedSubscript:{"decodeObjectOfClass:forKey:", objc_opt_class(), 0x1F48BF340), 0x1F48BF340}];
  [v5 setObject:objc_msgSend(coder forKeyedSubscript:{"decodeObjectOfClass:forKey:", objc_opt_class(), 0x1F48BF360), 0x1F48BF360}];
  [v5 setObject:objc_msgSend(coder forKeyedSubscript:{"decodeObjectOfClass:forKey:", objc_opt_class(), 0x1F48BF3A0), 0x1F48BF3A0}];
  [v5 setObject:objc_msgSend(coder forKeyedSubscript:{"decodeObjectOfClass:forKey:", objc_opt_class(), 0x1F48BF300), 0x1F48BF300}];
  [v5 setObject:objc_msgSend(coder forKeyedSubscript:{"decodeObjectOfClass:forKey:", objc_opt_class(), 0x1F48BF3E0), 0x1F48BF3E0}];
  [v5 setObject:objc_msgSend(objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", objc_msgSend(coder, "decodeIntegerForKey:", 0x1F48BF400)), "stringValue"), 0x1F48BF400}];
  v6 = [(SRDevice *)self initWithDeviceDetails:v5];

  return v6;
}

@end