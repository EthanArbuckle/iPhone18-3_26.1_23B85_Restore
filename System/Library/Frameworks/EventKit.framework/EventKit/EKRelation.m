@interface EKRelation
- (BOOL)shouldSetInverseProperty:(id)a3 onObject:(id)a4 forObject:(id)a5;
- (EKRelation)initWithEntityName:(id)a3 toMany:(BOOL)a4 inversePropertyNames:(id)a5 ownsRelated:(BOOL)a6;
@end

@implementation EKRelation

- (EKRelation)initWithEntityName:(id)a3 toMany:(BOOL)a4 inversePropertyNames:(id)a5 ownsRelated:(BOOL)a6
{
  v10 = a3;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = EKRelation;
  v12 = [(EKRelation *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    entityName = v12->_entityName;
    v12->_entityName = v13;

    v12->_toMany = a4;
    v12->_ownsRelated = a6;
    v15 = [v11 copy];
    inversePropertyNames = v12->_inversePropertyNames;
    v12->_inversePropertyNames = v15;
  }

  return v12;
}

- (BOOL)shouldSetInverseProperty:(id)a3 onObject:(id)a4 forObject:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(EKRelation *)self inversePropertyIsApplicable];

  if (v11)
  {
    v12 = [(EKRelation *)self inversePropertyIsApplicable];
    v13 = (v12)[2](v12, v8, v9, v10);
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

@end