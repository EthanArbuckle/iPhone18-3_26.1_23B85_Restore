@interface RDDistributedEvaluationPlugin
- (RDDistributedEvaluationPlugin)init;
- (void)performEvaluation:(id)evaluation;
@end

@implementation RDDistributedEvaluationPlugin

- (void)performEvaluation:(id)evaluation
{
  evaluationCopy = evaluation;
  selfCopy = self;
  sub_2D2C(evaluationCopy);
}

- (RDDistributedEvaluationPlugin)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RDDistributedEvaluationPlugin();
  return [(RDDistributedEvaluationPlugin *)&v3 init];
}

@end