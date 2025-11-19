@interface RDDistributedEvaluationPlugin
- (RDDistributedEvaluationPlugin)init;
- (void)performEvaluation:(id)a3;
@end

@implementation RDDistributedEvaluationPlugin

- (void)performEvaluation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2D2C(v4);
}

- (RDDistributedEvaluationPlugin)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RDDistributedEvaluationPlugin();
  return [(RDDistributedEvaluationPlugin *)&v3 init];
}

@end