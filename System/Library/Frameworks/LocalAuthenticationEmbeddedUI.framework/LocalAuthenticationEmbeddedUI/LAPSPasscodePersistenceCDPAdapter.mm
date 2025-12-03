@interface LAPSPasscodePersistenceCDPAdapter
- (unint64_t)_deviceSecretType:(id)type;
- (void)reportPasscodeDidChangeTo:(id)to passcodeType:(id)type completion:(id)completion;
@end

@implementation LAPSPasscodePersistenceCDPAdapter

- (void)reportPasscodeDidChangeTo:(id)to passcodeType:(id)type completion:(id)completion
{
  toCopy = to;
  typeCopy = type;
  completionCopy = completion;
  if (getCDPStateControllerClass())
  {
    v11 = objc_alloc_init(getCDPStateControllerClass());
    v12 = [(LAPSPasscodePersistenceCDPAdapter *)self _deviceSecretType:typeCopy];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __87__LAPSPasscodePersistenceCDPAdapter_reportPasscodeDidChangeTo_passcodeType_completion___block_invoke;
    v15[3] = &unk_278A65720;
    v16 = v11;
    v17 = completionCopy;
    v13 = v11;
    [v13 localSecretChangedTo:toCopy secretType:v12 completion:v15];
  }

  else
  {
    v14 = [LAPSErrorBuilder genericErrorWithDebugDescription:@"CDP update finished with error because required class was not found"];
    (*(completionCopy + 2))(completionCopy, v14);
  }
}

- (unint64_t)_deviceSecretType:(id)type
{
  identifier = [type identifier];
  if (identifier > 4)
  {
    return 2;
  }

  else
  {
    return qword_238BF7AC8[identifier];
  }
}

@end