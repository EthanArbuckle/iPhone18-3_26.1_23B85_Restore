@interface AAOVADSensorInfo
- (AAOVADSensorInfo)initWithBTAddress:(id)address;
- (AAOVADSensorInfo)initWithCoder:(id)coder;
- (BOOL)update:(id)update;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AAOVADSensorInfo

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  btAddress = [(AASensorInfo *)self btAddress];
  v6 = [v4 initWithBTAddress:btAddress];

  [v6 setOwnVoiceActivityLevel:{-[AAOVADSensorInfo ownVoiceActivityLevel](self, "ownVoiceActivityLevel")}];
  return v6;
}

- (AAOVADSensorInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = AAOVADSensorInfo;
  v5 = [(AASensorInfo *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v9 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_ownVoiceActivityLevel = v9;
    }

    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = AAOVADSensorInfo;
  [(AASensorInfo *)&v6 encodeWithCoder:coderCopy];
  ownVoiceActivityLevel = self->_ownVoiceActivityLevel;
  if (ownVoiceActivityLevel)
  {
    [coderCopy encodeInt64:ownVoiceActivityLevel forKey:@"ovLv"];
  }
}

- (AAOVADSensorInfo)initWithBTAddress:(id)address
{
  v4.receiver = self;
  v4.super_class = AAOVADSensorInfo;
  result = [(AASensorInfo *)&v4 initWithBTAddress:address];
  result->_ownVoiceActivityLevel = 0;
  return result;
}

- (BOOL)update:(id)update
{
  updateCopy = update;
  if ([updateCopy length] < 2)
  {
    if (gLogCategory_AASensorService <= 90 && (gLogCategory_AASensorService != -1 || _LogCategory_Initialize()))
    {
      [AAOVADSensorInfo update:];
    }
  }

  else
  {
    v10 = 0;
    [updateCopy getBytes:&v10 length:2];
    if (v10 == 1)
    {
      if (HIBYTE(v10) == 1)
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }

      ownVoiceActivityLevel = self->_ownVoiceActivityLevel;
      if (v5 != ownVoiceActivityLevel)
      {
        if (gLogCategory_AASensorService <= 40)
        {
          if (gLogCategory_AASensorService == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_20;
            }

            v9 = self->_ownVoiceActivityLevel;
          }

          LogPrintF();
        }

LABEL_20:
        self->_ownVoiceActivityLevel = v5;
        v7 = 1;
        goto LABEL_18;
      }
    }

    else if (gLogCategory_AASensorService <= 90 && (gLogCategory_AASensorService != -1 || _LogCategory_Initialize()))
    {
      [AAOVADSensorInfo update:];
    }
  }

  v7 = 0;
LABEL_18:

  return v7;
}

@end