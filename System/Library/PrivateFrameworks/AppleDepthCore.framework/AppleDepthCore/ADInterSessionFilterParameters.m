@interface ADInterSessionFilterParameters
- (ADInterSessionFilterParameters)init;
@end

@implementation ADInterSessionFilterParameters

- (ADInterSessionFilterParameters)init
{
  v3.receiver = self;
  v3.super_class = ADInterSessionFilterParameters;
  result = [(ADInterSessionFilterParameters *)&v3 init];
  if (result)
  {
    *&result->_minimalEntriesForResult = 0x4B0000004BLL;
    *&result->_minimalWeight = 0x3E8000003CE56042;
    *&result->_outlierNumber = 0x3CE5604200000011;
    result->_isStepDetectionActive = 1;
    *&result->_minStepIndex = 0xF00000002;
    result->_stepDetectionThreshold = 5.342;
  }

  return result;
}

@end