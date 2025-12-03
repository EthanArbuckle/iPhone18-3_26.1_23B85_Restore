@interface _GKNSPredicateRule
- (_GKNSPredicateRule)initWithPredicate:(id)predicate fact:(id)fact grade:(float)grade asserting:(BOOL)asserting;
- (void)performActionWithSystem:(id)system;
@end

@implementation _GKNSPredicateRule

- (_GKNSPredicateRule)initWithPredicate:(id)predicate fact:(id)fact grade:(float)grade asserting:(BOOL)asserting
{
  factCopy = fact;
  v15.receiver = self;
  v15.super_class = _GKNSPredicateRule;
  v12 = [(GKNSPredicateRule *)&v15 initWithPredicate:predicate];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fact, fact);
    v13->_grade = grade;
    v13->_asserting = asserting;
  }

  return v13;
}

- (void)performActionWithSystem:(id)system
{
  fact = self->_fact;
  *&v3 = self->_grade;
  if (self->_asserting)
  {
    [system assertFact:fact grade:v3];
  }

  else
  {
    [system retractFact:fact grade:v3];
  }
}

@end