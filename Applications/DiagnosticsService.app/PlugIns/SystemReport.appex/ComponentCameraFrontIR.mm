@interface ComponentCameraFrontIR
- (BOOL)isPresent;
- (id)savageChipID;
- (id)savageSerialNumber;
- (id)savageUID;
- (id)sensorSerialNumber;
- (id)yonkersSerialNumber;
- (void)populateAttributes:(id)attributes;
@end

@implementation ComponentCameraFrontIR

- (void)populateAttributes:(id)attributes
{
  v8.receiver = self;
  v8.super_class = ComponentCameraFrontIR;
  attributesCopy = attributes;
  [(ComponentCameraBase *)&v8 populateAttributes:attributesCopy];
  v5 = [(ComponentCameraFrontIR *)self sensorSerialNumber:v8.receiver];
  [attributesCopy setObject:v5 forKeyedSubscript:@"sensorSerialNumber"];

  savageChipID = [(ComponentCameraFrontIR *)self savageChipID];
  [attributesCopy setObject:savageChipID forKeyedSubscript:@"sensorChipID"];

  savageUID = [(ComponentCameraFrontIR *)self savageUID];
  [attributesCopy setObject:savageUID forKeyedSubscript:@"sensorUID"];
}

- (BOOL)isPresent
{
  iORegClassName = [(ComponentCameraBase *)self IORegClassName];
  v3 = iORegClassName != 0;

  return v3 & MGGetBoolAnswer();
}

- (id)sensorSerialNumber
{
  savageSerialNumber = [(ComponentCameraFrontIR *)self savageSerialNumber];
  if (!savageSerialNumber)
  {
    yonkersSerialNumber = [(ComponentCameraFrontIR *)self yonkersSerialNumber];
    savageSerialNumber = yonkersSerialNumber;
    if (yonkersSerialNumber)
    {
      v5 = yonkersSerialNumber;
    }
  }

  if (isValidSerialNumber(savageSerialNumber))
  {
    v6 = savageSerialNumber;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)savageSerialNumber
{
  iORegClassName = [(ComponentCameraBase *)self IORegClassName];
  v3 = +[DAComponentUtil getIOregData:property:length:optionalKey:](DAComponentUtil, "getIOregData:property:length:optionalKey:", [iORegClassName UTF8String], @"SavageSNUM", 20, 0);

  if (v3)
  {
    v4 = [v3 base64EncodedStringWithOptions:0];
  }

  else
  {
    v4 = 0;
  }

  if (isValidSerialNumber(v4))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)savageChipID
{
  iORegClassName = [(ComponentCameraBase *)self IORegClassName];
  v3 = +[DAComponentUtil getIOregData:property:length:optionalKey:](DAComponentUtil, "getIOregData:property:length:optionalKey:", [iORegClassName UTF8String], @"SavageChipID", 4, 0);

  if (v3)
  {
    v4 = [v3 base64EncodedStringWithOptions:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = stringOrNull(v4);

  return v5;
}

- (id)savageUID
{
  iORegClassName = [(ComponentCameraBase *)self IORegClassName];
  v3 = +[DAComponentUtil getIOregData:property:length:optionalKey:](DAComponentUtil, "getIOregData:property:length:optionalKey:", [iORegClassName UTF8String], @"SavageUID", 16, 0);

  if (v3)
  {
    v4 = [v3 base64EncodedStringWithOptions:0];
  }

  else
  {
    v4 = 0;
  }

  v5 = stringOrNull(v4);

  return v5;
}

- (id)yonkersSerialNumber
{
  iORegClassName = [(ComponentCameraBase *)self IORegClassName];
  v3 = +[DAComponentUtil getIOregData:property:length:optionalKey:](DAComponentUtil, "getIOregData:property:length:optionalKey:", [iORegClassName UTF8String], @"YonkersSNUM", 20, 0);

  if (v3)
  {
    v4 = [v3 base64EncodedStringWithOptions:0];
  }

  else
  {
    v4 = 0;
  }

  if (isValidSerialNumber(v4))
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

@end