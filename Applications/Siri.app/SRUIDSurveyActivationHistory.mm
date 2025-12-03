@interface SRUIDSurveyActivationHistory
- (SRUIDSurveyActivationHistory)initWithCountOfIntended:(unint64_t)intended countOfUnintended:(unint64_t)unintended countOfUnintendedActivationSinceLastIntended:(unint64_t)lastIntended days:(unint64_t)days;
@end

@implementation SRUIDSurveyActivationHistory

- (SRUIDSurveyActivationHistory)initWithCountOfIntended:(unint64_t)intended countOfUnintended:(unint64_t)unintended countOfUnintendedActivationSinceLastIntended:(unint64_t)lastIntended days:(unint64_t)days
{
  v11.receiver = self;
  v11.super_class = SRUIDSurveyActivationHistory;
  result = [(SRUIDSurveyActivationHistory *)&v11 init];
  if (result)
  {
    result->_countOfUnintendedActivations = unintended;
    result->_countOfIntendedActivations = intended;
    result->_countOfTotalActivations = unintended + intended;
    result->_countOfUnintendedActivationsSinceLastIntendedActivation = lastIntended;
    result->_days = days;
  }

  return result;
}

@end