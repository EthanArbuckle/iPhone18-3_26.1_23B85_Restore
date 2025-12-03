@interface EKRelation
- (BOOL)shouldSetInverseProperty:(id)property onObject:(id)object forObject:(id)forObject;
- (EKRelation)initWithEntityName:(id)name toMany:(BOOL)many inversePropertyNames:(id)names ownsRelated:(BOOL)related;
@end

@implementation EKRelation

- (EKRelation)initWithEntityName:(id)name toMany:(BOOL)many inversePropertyNames:(id)names ownsRelated:(BOOL)related
{
  nameCopy = name;
  namesCopy = names;
  v18.receiver = self;
  v18.super_class = EKRelation;
  v12 = [(EKRelation *)&v18 init];
  if (v12)
  {
    v13 = [nameCopy copy];
    entityName = v12->_entityName;
    v12->_entityName = v13;

    v12->_toMany = many;
    v12->_ownsRelated = related;
    v15 = [namesCopy copy];
    inversePropertyNames = v12->_inversePropertyNames;
    v12->_inversePropertyNames = v15;
  }

  return v12;
}

- (BOOL)shouldSetInverseProperty:(id)property onObject:(id)object forObject:(id)forObject
{
  propertyCopy = property;
  objectCopy = object;
  forObjectCopy = forObject;
  inversePropertyIsApplicable = [(EKRelation *)self inversePropertyIsApplicable];

  if (inversePropertyIsApplicable)
  {
    inversePropertyIsApplicable2 = [(EKRelation *)self inversePropertyIsApplicable];
    v13 = (inversePropertyIsApplicable2)[2](inversePropertyIsApplicable2, propertyCopy, objectCopy, forObjectCopy);
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

@end