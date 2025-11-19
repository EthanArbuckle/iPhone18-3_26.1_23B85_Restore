@interface MechanismCompanion
- (BOOL)isAvailableForPurpose:(int64_t)a3 error:(id *)a4;
- (MechanismCompanion)initWithParams:(id)a3 request:(id)a4;
- (void)runWithHints:(id)a3 eventsDelegate:(id)a4 reply:(id)a5;
@end

@implementation MechanismCompanion

- (MechanismCompanion)initWithParams:(id)a3 request:(id)a4
{
  v6 = a4;
  v7 = [a3 objectForKeyedSubscript:@"AcmContextRecord"];
  v10.receiver = self;
  v10.super_class = MechanismCompanion;
  v8 = [(MechanismACM *)&v10 initWithEventIdentifier:13 remoteViewController:0 acmContextRecord:v7 request:v6];

  return v8;
}

- (void)runWithHints:(id)a3 eventsDelegate:(id)a4 reply:(id)a5
{
  v7.receiver = self;
  v7.super_class = MechanismCompanion;
  [(MechanismBase *)&v7 runWithHints:a3 eventsDelegate:a4 reply:a5];
  v6 = [MEMORY[0x277CD47F0] errorWithCode:*MEMORY[0x277D23E78] message:@"No companion device available"];
  [(MechanismBase *)self finishRunWithResult:0 error:v6];
}

- (BOOL)isAvailableForPurpose:(int64_t)a3 error:(id *)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [(MechanismBase *)self request];
  v7 = [v6 serviceLocator];
  v8 = NSStringFromProtocol(&unk_284B7E948);
  v9 = [v7 serviceWithIdentifier:v8];

  if (v9 && ([v9 conformsToProtocol:&unk_284B7E948] & 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277CD47F0] errorWithCode:-1000 message:@"Missing dependency"];
  }

  if (([v9 isCompanionDeviceAvailable] & 1) == 0)
  {
    v11 = [MEMORY[0x277CD47F0] errorWithCode:-1000 message:@"No companion device available"];

    v10 = v11;
  }

  if (a4)
  {
    v12 = v10;
    *a4 = v10;
  }

  v13 = LACLogABM();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"YES";
    if (v10)
    {
      v14 = v10;
    }

    v17 = 138543618;
    v18 = self;
    v19 = 2114;
    v20 = v14;
    _os_log_impl(&dword_238B95000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ isAvailable -> %{public}@", &v17, 0x16u);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10 == 0;
}

@end