@interface DADiagnosticAnalyticsManager
+ (void)recordConnectionDidFinishTestSuiteFor:(id)a3 with:(id)a4;
+ (void)recordConnectionDidReceiveCancelTestCommand:(id)a3;
+ (void)recordConnectionDidReceiveStartTestCommand:(id)a3;
+ (void)recordConnectionDidRequestInstructionalPromptWith:(id)a3;
+ (void)recordConnectionDidRequestSuiteRunWith:(int64_t)a3;
+ (void)recordExecuteTestFinishedWith:(id)a3 error:(id)a4;
+ (void)recordExecuteTestWith:(id)a3;
+ (void)recordRequestSuiteStartWith:(id)a3;
+ (void)recordStartInOperationMode:(int64_t)a3;
- (DADiagnosticAnalyticsManager)init;
@end

@implementation DADiagnosticAnalyticsManager

- (DADiagnosticAnalyticsManager)init
{
  v3.receiver = self;
  v3.super_class = _s10DiagnosticCMa();
  return [(DADiagnosticAnalyticsManager *)&v3 init];
}

+ (void)recordRequestSuiteStartWith:(id)a3
{
  v4 = swift_allocObject();
  *(v4 + 16) = a3;
  v5 = a3;
  sub_10009F260(0xD000000000000017, 0x800000010018E710, sub_10009F59C, v4);
}

+ (void)recordStartInOperationMode:(int64_t)a3
{
  v4 = swift_allocObject();
  *(v4 + 16) = a3;
  sub_10009F260(0xD00000000000001ALL, 0x800000010018E6D0, sub_10009F594, v4);
}

+ (void)recordExecuteTestWith:(id)a3
{
  v4 = swift_allocObject();
  *(v4 + 16) = a3;
  v5 = a3;
  sub_10009F260(0x5465747563657865, 0xEB00000000747365, sub_10009F568, v4);
}

+ (void)recordExecuteTestFinishedWith:(id)a3 error:(id)a4
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  v7 = a3;
  v8 = a4;
  v9 = v7;
  v10 = v8;
  sub_10009F260(0x706D6F4374736574, 0xED0000646574656CLL, sub_10009F4FC, v6);
}

+ (void)recordConnectionDidRequestSuiteRunWith:(int64_t)a3
{
  v4 = swift_allocObject();
  *(v4 + 16) = a3;
  sub_10009F260(0xD000000000000021, 0x800000010018E680, sub_10009F4F4, v4);
}

+ (void)recordConnectionDidFinishTestSuiteFor:(id)a3 with:(id)a4
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  v7 = a3;
  v8 = a4;
  v9 = v7;
  v10 = v8;
  sub_10009F260(0xD000000000000022, 0x800000010018E650, sub_10009F4B4, v6);
}

+ (void)recordConnectionDidRequestInstructionalPromptWith:(id)a3
{
  v4 = swift_allocObject();
  *(v4 + 16) = a3;
  v5 = a3;
  sub_10009F260(0xD00000000000002DLL, 0x800000010018E600, sub_10009F46C, v4);
}

+ (void)recordConnectionDidReceiveStartTestCommand:(id)a3
{
  v4 = swift_allocObject();
  *(v4 + 16) = a3;
  v5 = a3;
  sub_10009F260(0xD00000000000002ALL, 0x800000010018E5D0, sub_10009F5E0, v4);
}

+ (void)recordConnectionDidReceiveCancelTestCommand:(id)a3
{
  v4 = swift_allocObject();
  *(v4 + 16) = a3;
  v5 = a3;
  sub_10009F260(0xD00000000000002BLL, 0x800000010018E5A0, sub_10009F5E0, v4);
}

@end