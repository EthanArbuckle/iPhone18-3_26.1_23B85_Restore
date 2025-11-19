@interface TUIAdornmentModel
+ (unint64_t)adornmentKindFromString:(id)a3;
+ (unint64_t)adornmentRoleFromString:(id)a3;
- (TUIModelContaining)parentModel;
- (void)appendContainedChildrenToArray:(id)a3;
- (void)onContainedModelsChanged;
- (void)updateModelChildren:(id)a3;
@end

@implementation TUIAdornmentModel

- (void)appendContainedChildrenToArray:(id)a3
{
  submodel = self->_submodel;
  if (submodel)
  {
    [a3 addObject:submodel];
  }
}

- (void)onContainedModelsChanged
{
  v2 = [(TUIAdornmentModel *)self parentModel];
  [v2 onContainedModelsChanged];
}

- (void)updateModelChildren:(id)a3
{
  v4 = [a3 firstObject];
  submodel = self->_submodel;
  if (v4 != submodel)
  {
    obj = v4;
    [(TUIModel *)submodel setParentModel:0];
    objc_storeStrong(&self->_submodel, obj);
    [(TUIModel *)self->_submodel setParentModel:self];
    [(TUIAdornmentModel *)self onContainedModelsChanged];
    v4 = obj;
  }
}

+ (unint64_t)adornmentRoleFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E6688 != -1)
  {
    sub_19BD9C();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E6680 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

LABEL_6:
  return v6;
}

+ (unint64_t)adornmentKindFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E6698 != -1)
  {
    sub_19BDB0();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E6690 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

LABEL_6:
  return v6;
}

- (TUIModelContaining)parentModel
{
  WeakRetained = objc_loadWeakRetained(&self->_parentModel);

  return WeakRetained;
}

@end