@interface LAPSNewPasscodeService
- (LAPSNewPasscodeService)initWithPersistence:(id)persistence;
- (id)allowedPasscodeTypes;
- (id)passcodeType;
- (void)verifyPasscode:(id)passcode completion:(id)completion;
@end

@implementation LAPSNewPasscodeService

- (LAPSNewPasscodeService)initWithPersistence:(id)persistence
{
  persistenceCopy = persistence;
  v9.receiver = self;
  v9.super_class = LAPSNewPasscodeService;
  v6 = [(LAPSNewPasscodeService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistence, persistence);
  }

  return v7;
}

- (id)allowedPasscodeTypes
{
  persistence = [(LAPSNewPasscodeService *)self persistence];
  simplestAllowedNewPasscodeType = [persistence simplestAllowedNewPasscodeType];

  if (![simplestAllowedNewPasscodeType identifier])
  {
    [LAPSNewPasscodeService allowedPasscodeTypes];
  }

  v4 = +[LAPSPasscodeTypeCollection allPasscodeTypesWhereComplexityIsGreaterThanOrEqualTo:](LAPSPasscodeTypeCollection, "allPasscodeTypesWhereComplexityIsGreaterThanOrEqualTo:", [simplestAllowedNewPasscodeType complexityRating]);

  return v4;
}

- (id)passcodeType
{
  persistence = [(LAPSNewPasscodeService *)self persistence];
  defaultNewPasscodeType = [persistence defaultNewPasscodeType];

  return defaultNewPasscodeType;
}

- (void)verifyPasscode:(id)passcode completion:(id)completion
{
  passcodeCopy = passcode;
  completionCopy = completion;
  persistence = [(LAPSNewPasscodeService *)self persistence];
  v25 = 0;
  v9 = [persistence verifyNewPasscodeMeetsPlatformRequirements:passcodeCopy error:&v25];
  v10 = v25;

  if ((v9 & 1) == 0)
  {
    localizedDescription = [v10 localizedDescription];
    v17 = localizedDescription;
    if (localizedDescription)
    {
      v18 = localizedDescription;
    }

    else
    {
      persistence2 = [(LAPSNewPasscodeService *)self persistence];
      localizedPasscodeRequirements = [persistence2 localizedPasscodeRequirements];
      v22 = localizedPasscodeRequirements;
      v23 = &stru_284B7B4C0;
      if (localizedPasscodeRequirements)
      {
        v23 = localizedPasscodeRequirements;
      }

      v18 = v23;
    }

    v24 = [LAPSErrorBuilder newPasscodeDoesNotMeetRequirementsErrorWithLocalizedDescription:v18];
    completionCopy[2](completionCopy, v24);

    goto LABEL_16;
  }

  type = [passcodeCopy type];
  if ([type hasFixedLength])
  {
    type2 = [passcodeCopy type];
    identifier = [type2 identifier];

    if (identifier != 4)
    {
      persistence3 = [(LAPSNewPasscodeService *)self persistence];
      v15 = [persistence3 verifyFixedLengthNumericPasscodeIsStrong:passcodeCopy];
      goto LABEL_9;
    }
  }

  else
  {
  }

  persistence3 = [(LAPSNewPasscodeService *)self persistence];
  v15 = [persistence3 verifyVariableLengthAlphanumericPasscodeIsStrong:passcodeCopy];
LABEL_9:
  v19 = v15;

  if ((v19 & 1) == 0)
  {
    v18 = +[LAPSErrorBuilder newPasscodeIsTooEasyError];
    completionCopy[2](completionCopy, v18);
LABEL_16:

    goto LABEL_17;
  }

  completionCopy[2](completionCopy, 0);
LABEL_17:
}

@end