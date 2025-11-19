@interface SRUIDSurveyActivationHistory
- (SRUIDSurveyActivationHistory)initWithCountOfIntended:(unint64_t)a3 countOfUnintended:(unint64_t)a4 countOfUnintendedActivationSinceLastIntended:(unint64_t)a5 days:(unint64_t)a6;
@end

@implementation SRUIDSurveyActivationHistory

- (SRUIDSurveyActivationHistory)initWithCountOfIntended:(unint64_t)a3 countOfUnintended:(unint64_t)a4 countOfUnintendedActivationSinceLastIntended:(unint64_t)a5 days:(unint64_t)a6
{
  v11.receiver = self;
  v11.super_class = SRUIDSurveyActivationHistory;
  result = [(SRUIDSurveyActivationHistory *)&v11 init];
  if (result)
  {
    result->_countOfUnintendedActivations = a4;
    result->_countOfIntendedActivations = a3;
    result->_countOfTotalActivations = a4 + a3;
    result->_countOfUnintendedActivationsSinceLastIntendedActivation = a5;
    result->_days = a6;
  }

  return result;
}

@end