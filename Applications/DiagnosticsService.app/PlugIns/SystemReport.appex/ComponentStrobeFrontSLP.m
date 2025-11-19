@interface ComponentStrobeFrontSLP
- (BOOL)flexDisconnected;
- (BOOL)isPresent;
- (BOOL)serialNumberMismatch;
- (id)authenticityStatus;
- (id)serialNumber;
- (void)populateAttributes:(id)a3;
@end

@implementation ComponentStrobeFrontSLP

- (BOOL)isPresent
{
  v2 = [(ComponentCameraBase *)self IORegClassName];
  v3 = v2 != 0;

  return v3 & MGGetBoolAnswer();
}

- (void)populateAttributes:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ComponentStrobeFrontSLP;
  [(ComponentCameraBase *)&v8 populateAttributes:v4];
  v5 = [NSNumber numberWithBool:[(ComponentStrobeFrontSLP *)self flexDisconnected]];
  [v4 setObject:v5 forKeyedSubscript:@"flexDisconnected"];

  v6 = [NSNumber numberWithBool:[(ComponentStrobeFrontSLP *)self serialNumberMismatch]];
  [v4 setObject:v6 forKeyedSubscript:@"serialNumberMismatch"];

  v7 = [(ComponentStrobeFrontSLP *)self authenticityStatus];
  if (v7)
  {
    [v4 setObject:v7 forKeyedSubscript:@"authenticityStatus"];
  }
}

- (id)serialNumber
{
  v2 = [(ComponentCameraBase *)self IORegClassName];
  v3 = +[DAComponentUtil getIOregData:property:length:optionalKey:](DAComponentUtil, "getIOregData:property:length:optionalKey:", [v2 UTF8String], @"FrontIRStructuredLightProjectorSerialNumString", 17, 0);

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
  v2 = [(ComponentCameraBase *)self IORegClassName];
  v3 = +[DAComponentUtil getIOregData:property:length:optionalKey:](DAComponentUtil, "getIOregData:property:length:optionalKey:", [v2 UTF8String], @"RomeoStatus", 8, 0);

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