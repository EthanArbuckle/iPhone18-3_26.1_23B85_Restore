@interface LAPSFetchNewPasscodeRequest
- (LAPSFetchNewPasscodeRequest)init;
@end

@implementation LAPSFetchNewPasscodeRequest

- (LAPSFetchNewPasscodeRequest)init
{
  v9.receiver = self;
  v9.super_class = LAPSFetchNewPasscodeRequest;
  v2 = [(LAPSFetchNewPasscodeRequest *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB70]);
    v4 = [v3 initWithArray:MEMORY[0x277CBEBF8]];
    allowedPasscodeTypes = v2->_allowedPasscodeTypes;
    v2->_allowedPasscodeTypes = v4;

    v6 = +[LAPSPasscodeType noneType];
    passcodeType = v2->_passcodeType;
    v2->_passcodeType = v6;

    v2->_isPasscodeRecoveryEnabled = 0;
  }

  return v2;
}

@end