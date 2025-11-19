@interface PushDiagnostic
- (PushDiagnostic)initWithService:(id)a3;
- (void)pushService:(id)a3 didReceiveMessage:(id)a4;
@end

@implementation PushDiagnostic

- (PushDiagnostic)initWithService:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PushDiagnostic;
  v5 = [(PushDiagnostic *)&v7 init];
  if (v5)
  {
    [v4 registerConsumer:v5 forActionType:99];
  }

  return v5;
}

- (void)pushService:(id)a3 didReceiveMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_1003D45A8 != -1)
  {
    sub_1002D01B0();
  }

  v8 = qword_1003D4580;
  if (os_log_type_enabled(qword_1003D4580, OS_LOG_TYPE_ERROR))
  {
    sub_1002D01C4(v8, self, v7);
  }
}

@end