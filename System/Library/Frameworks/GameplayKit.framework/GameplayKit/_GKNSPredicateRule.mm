@interface _GKNSPredicateRule
- (_GKNSPredicateRule)initWithPredicate:(id)a3 fact:(id)a4 grade:(float)a5 asserting:(BOOL)a6;
- (void)performActionWithSystem:(id)a3;
@end

@implementation _GKNSPredicateRule

- (_GKNSPredicateRule)initWithPredicate:(id)a3 fact:(id)a4 grade:(float)a5 asserting:(BOOL)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = _GKNSPredicateRule;
  v12 = [(GKNSPredicateRule *)&v15 initWithPredicate:a3];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fact, a4);
    v13->_grade = a5;
    v13->_asserting = a6;
  }

  return v13;
}

- (void)performActionWithSystem:(id)a3
{
  fact = self->_fact;
  *&v3 = self->_grade;
  if (self->_asserting)
  {
    [a3 assertFact:fact grade:v3];
  }

  else
  {
    [a3 retractFact:fact grade:v3];
  }
}

@end