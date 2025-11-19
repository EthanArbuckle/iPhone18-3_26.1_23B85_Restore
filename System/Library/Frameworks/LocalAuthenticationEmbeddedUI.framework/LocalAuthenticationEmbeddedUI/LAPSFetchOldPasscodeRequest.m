@interface LAPSFetchOldPasscodeRequest
- (LAPSFetchOldPasscodeRequest)init;
@end

@implementation LAPSFetchOldPasscodeRequest

- (LAPSFetchOldPasscodeRequest)init
{
  v6.receiver = self;
  v6.super_class = LAPSFetchOldPasscodeRequest;
  v2 = [(LAPSFetchOldPasscodeRequest *)&v6 init];
  if (v2)
  {
    v3 = +[LAPSPasscodeType noneType];
    passcodeType = v2->_passcodeType;
    v2->_passcodeType = v3;
  }

  return v2;
}

@end