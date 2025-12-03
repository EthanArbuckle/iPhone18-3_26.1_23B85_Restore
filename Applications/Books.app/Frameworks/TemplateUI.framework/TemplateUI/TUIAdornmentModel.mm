@interface TUIAdornmentModel
+ (unint64_t)adornmentKindFromString:(id)string;
+ (unint64_t)adornmentRoleFromString:(id)string;
- (TUIModelContaining)parentModel;
- (void)appendContainedChildrenToArray:(id)array;
- (void)onContainedModelsChanged;
- (void)updateModelChildren:(id)children;
@end

@implementation TUIAdornmentModel

- (void)appendContainedChildrenToArray:(id)array
{
  submodel = self->_submodel;
  if (submodel)
  {
    [array addObject:submodel];
  }
}

- (void)onContainedModelsChanged
{
  parentModel = [(TUIAdornmentModel *)self parentModel];
  [parentModel onContainedModelsChanged];
}

- (void)updateModelChildren:(id)children
{
  firstObject = [children firstObject];
  submodel = self->_submodel;
  if (firstObject != submodel)
  {
    obj = firstObject;
    [(TUIModel *)submodel setParentModel:0];
    objc_storeStrong(&self->_submodel, obj);
    [(TUIModel *)self->_submodel setParentModel:self];
    [(TUIAdornmentModel *)self onContainedModelsChanged];
    firstObject = obj;
  }
}

+ (unint64_t)adornmentRoleFromString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (qword_2E6688 != -1)
  {
    sub_19BD9C();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    unsignedIntegerValue = 0;
    goto LABEL_6;
  }

  if (!stringCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E6680 objectForKeyedSubscript:v4];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

LABEL_6:
  return unsignedIntegerValue;
}

+ (unint64_t)adornmentKindFromString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (qword_2E6698 != -1)
  {
    sub_19BDB0();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    unsignedIntegerValue = 0;
    goto LABEL_6;
  }

  if (!stringCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E6690 objectForKeyedSubscript:v4];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

LABEL_6:
  return unsignedIntegerValue;
}

- (TUIModelContaining)parentModel
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);

  return WeakRetained;
}

@end