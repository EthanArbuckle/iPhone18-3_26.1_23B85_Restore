@interface COSInternalUserStudyDataManager
+ (id)sharedManager;
- (COSInternalUserStudyDataManager)init;
@end

@implementation COSInternalUserStudyDataManager

+ (id)sharedManager
{
  if (qword_1002BD2A8 != -1)
  {
    sub_1001868F0();
  }

  v3 = qword_1002BD2A0;

  return v3;
}

- (COSInternalUserStudyDataManager)init
{
  v3.receiver = self;
  v3.super_class = COSInternalUserStudyDataManager;
  result = [(COSInternalUserStudyDataManager *)&v3 init];
  if (result)
  {
    result->_crownChoice = -1;
    result->_wristChoice = -1;
  }

  return result;
}

@end