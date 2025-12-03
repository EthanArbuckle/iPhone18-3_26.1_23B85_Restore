@interface SiriInferenceDodMLPlugin
- (void)performEvaluation:(id)evaluation;
@end

@implementation SiriInferenceDodMLPlugin

- (void)performEvaluation:(id)evaluation
{
  evaluationCopy = evaluation;
  selfCopy = self;
  sub_14D0(evaluationCopy);
}

@end