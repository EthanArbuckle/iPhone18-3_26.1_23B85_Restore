@interface DADiagnosticAnalyticsManager
+ (void)recordConnectionDidFinishTestSuiteFor:(id)for with:(id)with;
+ (void)recordConnectionDidReceiveCancelTestCommand:(id)command;
+ (void)recordConnectionDidReceiveStartTestCommand:(id)command;
+ (void)recordConnectionDidRequestInstructionalPromptWith:(id)with;
+ (void)recordConnectionDidRequestSuiteRunWith:(int64_t)with;
+ (void)recordExecuteTestFinishedWith:(id)with error:(id)error;
+ (void)recordExecuteTestWith:(id)with;
+ (void)recordRequestSuiteStartWith:(id)with;
+ (void)recordStartInOperationMode:(int64_t)mode;
- (DADiagnosticAnalyticsManager)init;
@end

@implementation DADiagnosticAnalyticsManager

- (DADiagnosticAnalyticsManager)init
{
  v3.receiver = self;
  v3.super_class = _s10DiagnosticCMa();
  return [(DADiagnosticAnalyticsManager *)&v3 init];
}

+ (void)recordRequestSuiteStartWith:(id)with
{
  v4 = swift_allocObject();
  *(v4 + 16) = with;
  withCopy = with;
  sub_10009F260(0xD000000000000017, 0x800000010018E710, sub_10009F59C, v4);
}

+ (void)recordStartInOperationMode:(int64_t)mode
{
  v4 = swift_allocObject();
  *(v4 + 16) = mode;
  sub_10009F260(0xD00000000000001ALL, 0x800000010018E6D0, sub_10009F594, v4);
}

+ (void)recordExecuteTestWith:(id)with
{
  v4 = swift_allocObject();
  *(v4 + 16) = with;
  withCopy = with;
  sub_10009F260(0x5465747563657865, 0xEB00000000747365, sub_10009F568, v4);
}

+ (void)recordExecuteTestFinishedWith:(id)with error:(id)error
{
  v6 = swift_allocObject();
  *(v6 + 16) = with;
  *(v6 + 24) = error;
  withCopy = with;
  errorCopy = error;
  v9 = withCopy;
  v10 = errorCopy;
  sub_10009F260(0x706D6F4374736574, 0xED0000646574656CLL, sub_10009F4FC, v6);
}

+ (void)recordConnectionDidRequestSuiteRunWith:(int64_t)with
{
  v4 = swift_allocObject();
  *(v4 + 16) = with;
  sub_10009F260(0xD000000000000021, 0x800000010018E680, sub_10009F4F4, v4);
}

+ (void)recordConnectionDidFinishTestSuiteFor:(id)for with:(id)with
{
  v6 = swift_allocObject();
  *(v6 + 16) = for;
  *(v6 + 24) = with;
  forCopy = for;
  withCopy = with;
  v9 = forCopy;
  v10 = withCopy;
  sub_10009F260(0xD000000000000022, 0x800000010018E650, sub_10009F4B4, v6);
}

+ (void)recordConnectionDidRequestInstructionalPromptWith:(id)with
{
  v4 = swift_allocObject();
  *(v4 + 16) = with;
  withCopy = with;
  sub_10009F260(0xD00000000000002DLL, 0x800000010018E600, sub_10009F46C, v4);
}

+ (void)recordConnectionDidReceiveStartTestCommand:(id)command
{
  v4 = swift_allocObject();
  *(v4 + 16) = command;
  commandCopy = command;
  sub_10009F260(0xD00000000000002ALL, 0x800000010018E5D0, sub_10009F5E0, v4);
}

+ (void)recordConnectionDidReceiveCancelTestCommand:(id)command
{
  v4 = swift_allocObject();
  *(v4 + 16) = command;
  commandCopy = command;
  sub_10009F260(0xD00000000000002BLL, 0x800000010018E5A0, sub_10009F5E0, v4);
}

@end