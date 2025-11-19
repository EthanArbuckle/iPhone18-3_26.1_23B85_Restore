@interface LAPSPasscodePersistenceCDPAdapter
- (unint64_t)_deviceSecretType:(id)a3;
- (void)reportPasscodeDidChangeTo:(id)a3 passcodeType:(id)a4 completion:(id)a5;
@end

@implementation LAPSPasscodePersistenceCDPAdapter

- (void)reportPasscodeDidChangeTo:(id)a3 passcodeType:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (getCDPStateControllerClass())
  {
    v11 = objc_alloc_init(getCDPStateControllerClass());
    v12 = [(LAPSPasscodePersistenceCDPAdapter *)self _deviceSecretType:v9];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __87__LAPSPasscodePersistenceCDPAdapter_reportPasscodeDidChangeTo_passcodeType_completion___block_invoke;
    v15[3] = &unk_278A65720;
    v16 = v11;
    v17 = v10;
    v13 = v11;
    [v13 localSecretChangedTo:v8 secretType:v12 completion:v15];
  }

  else
  {
    v14 = [LAPSErrorBuilder genericErrorWithDebugDescription:@"CDP update finished with error because required class was not found"];
    (*(v10 + 2))(v10, v14);
  }
}

- (unint64_t)_deviceSecretType:(id)a3
{
  v3 = [a3 identifier];
  if (v3 > 4)
  {
    return 2;
  }

  else
  {
    return qword_238BF7AC8[v3];
  }
}

@end