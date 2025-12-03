@interface ComponentStrobeFrontSLP
- (BOOL)flexDisconnected;
- (BOOL)isPresent;
- (BOOL)serialNumberMismatch;
- (id)authenticityStatus;
- (id)serialNumber;
- (void)populateAttributes:(id)attributes;
@end

@implementation ComponentStrobeFrontSLP

- (BOOL)isPresent
{
  iORegClassName = [(ComponentCameraBase *)self IORegClassName];
  v3 = iORegClassName != 0;

  return v3 & MGGetBoolAnswer();
}

- (void)populateAttributes:(id)attributes
{
  attributesCopy = attributes;
  v8.receiver = self;
  v8.super_class = ComponentStrobeFrontSLP;
  [(ComponentCameraBase *)&v8 populateAttributes:attributesCopy];
  v5 = [NSNumber numberWithBool:[(ComponentStrobeFrontSLP *)self flexDisconnected]];
  [attributesCopy setObject:v5 forKeyedSubscript:@"flexDisconnected"];

  v6 = [NSNumber numberWithBool:[(ComponentStrobeFrontSLP *)self serialNumberMismatch]];
  [attributesCopy setObject:v6 forKeyedSubscript:@"serialNumberMismatch"];

  authenticityStatus = [(ComponentStrobeFrontSLP *)self authenticityStatus];
  if (authenticityStatus)
  {
    [attributesCopy setObject:authenticityStatus forKeyedSubscript:@"authenticityStatus"];
  }
}

- (id)serialNumber
{
  iORegClassName = [(ComponentCameraBase *)self IORegClassName];
  v3 = +[DAComponentUtil getIOregData:property:length:optionalKey:](DAComponentUtil, "getIOregData:property:length:optionalKey:", [iORegClassName UTF8String], @"FrontIRStructuredLightProjectorSerialNumString", 17, 0);

  v4 = [[NSString alloc] initWithData:v3 encoding:4];

  return v4;
}

- (BOOL)flexDisconnected
{
  v6 = 0;
  v2 = [DAComponentUtil getIORegistryName:@"romeo" property:@"romeo-b2b-unplug-detected" optionalKey:0];
  v3 = v2;
  if (v2)
  {
    [v2 getBytes:&v6 length:1];
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (BOOL)serialNumberMismatch
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:@"/private/var/tmp/biokit_hw_issue_notification"];

  return v3;
}

- (id)authenticityStatus
{
  iORegClassName = [(ComponentCameraBase *)self IORegClassName];
  v3 = +[DAComponentUtil getIOregData:property:length:optionalKey:](DAComponentUtil, "getIOregData:property:length:optionalKey:", [iORegClassName UTF8String], @"RomeoStatus", 8, 0);

  if (v3)
  {
    v4 = [[NSString alloc] initWithData:v3 encoding:4];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end