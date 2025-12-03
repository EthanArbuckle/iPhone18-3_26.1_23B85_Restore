@interface LAPSPasscodeChangeSystemStubbedAdapter
- (id)lastPasscodeChange;
- (id)newPasscodeRequest;
- (id)oldPasscodeRequest;
- (void)changePasscode:(id)passcode to:(id)to completion:(id)completion;
- (void)verifyNewPasscode:(id)passcode completion:(id)completion;
- (void)verifyPasscode:(id)passcode completion:(id)completion;
@end

@implementation LAPSPasscodeChangeSystemStubbedAdapter

- (id)oldPasscodeRequest
{
  v2 = objc_alloc_init(LAPSFetchOldPasscodeRequest);
  [(LAPSFetchOldPasscodeRequest *)v2 setFailedAttempts:0];
  v3 = +[LAPSPasscodeType numericSixDigitsType];
  [(LAPSFetchOldPasscodeRequest *)v2 setPasscodeType:v3];

  [(LAPSFetchOldPasscodeRequest *)v2 setBackoffTimeout:0];

  return v2;
}

- (id)newPasscodeRequest
{
  v2 = objc_alloc_init(LAPSFetchNewPasscodeRequest);
  v3 = __60__LAPSPasscodeChangeSystemStubbedAdapter_newPasscodeRequest__block_invoke();
  [(LAPSFetchNewPasscodeRequest *)v2 setAllowedPasscodeTypes:v3];

  v4 = +[LAPSPasscodeType numericSixDigitsType];
  [(LAPSFetchNewPasscodeRequest *)v2 setPasscodeType:v4];

  [(LAPSFetchNewPasscodeRequest *)v2 setIsPasscodeSet:1];
  [(LAPSFetchNewPasscodeRequest *)v2 setIsPasscodeRecoverySupported:1];
  [(LAPSFetchNewPasscodeRequest *)v2 setIsPasscodeRecoveryRestricted:0];
  [(LAPSFetchNewPasscodeRequest *)v2 setIsPasscodeRecoveryEnabled:1];
  return v2;
}

id __60__LAPSPasscodeChangeSystemStubbedAdapter_newPasscodeRequest__block_invoke()
{
  v9[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB70];
  v1 = +[LAPSPasscodeType numericFourDigitsType];
  v9[0] = v1;
  v2 = +[LAPSPasscodeType numericSixDigitsType];
  v9[1] = v2;
  v3 = +[LAPSPasscodeType numericCustomDigitsType];
  v9[2] = v3;
  v4 = +[LAPSPasscodeType alphanumericType];
  v9[3] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];
  v6 = [v0 orderedSetWithArray:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)lastPasscodeChange
{
  v2 = [MEMORY[0x277CBEAA8] now];
  v3 = [v2 dateByAddingTimeInterval:-86400.0];

  return v3;
}

- (void)verifyPasscode:(id)passcode completion:(id)completion
{
  passcodeCopy = passcode;
  completionCopy = completion;
  v7 = dispatch_time(0, 1000000000);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__LAPSPasscodeChangeSystemStubbedAdapter_verifyPasscode_completion___block_invoke;
  v10[3] = &unk_278A65A20;
  v11 = passcodeCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = passcodeCopy;
  dispatch_after(v7, MEMORY[0x277D85CD0], v10);
}

void __68__LAPSPasscodeChangeSystemStubbedAdapter_verifyPasscode_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) passcode];
  v3 = [v2 isEqualToString:@"111111"];

  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = *(v4 + 16);

    v5(v4, 0);
  }

  else
  {
    v6 = [LAPSErrorBuilder invalidPasscodeErrorWithFailedAttemptsCount:1];
    (*(v4 + 16))(v4, v6);
  }
}

- (void)verifyNewPasscode:(id)passcode completion:(id)completion
{
  passcodeCopy = passcode;
  completionCopy = completion;
  v7 = dispatch_time(0, 1000000000);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__LAPSPasscodeChangeSystemStubbedAdapter_verifyNewPasscode_completion___block_invoke;
  v10[3] = &unk_278A65A20;
  v11 = passcodeCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = passcodeCopy;
  dispatch_after(v7, MEMORY[0x277D85CD0], v10);
}

void __71__LAPSPasscodeChangeSystemStubbedAdapter_verifyNewPasscode_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) type];
  if ([v2 hasFixedLength])
  {

LABEL_7:
    v6 = *(*(a1 + 40) + 16);

    v6();
    return;
  }

  v3 = [*(a1 + 32) passcode];
  v4 = [v3 length];

  if (v4 > 5)
  {
    goto LABEL_7;
  }

  v5 = *(a1 + 40);
  v7 = [LAPSErrorBuilder newPasscodeDoesNotMeetRequirementsErrorWithLocalizedDescription:@"Enter a strong passcode with 6 or more characters"];
  (*(v5 + 16))(v5, v7);
}

- (void)changePasscode:(id)passcode to:(id)to completion:(id)completion
{
  completionCopy = completion;
  v6 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__LAPSPasscodeChangeSystemStubbedAdapter_changePasscode_to_completion___block_invoke;
  block[3] = &unk_278A65A48;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_after(v6, MEMORY[0x277D85CD0], block);
}

@end