@interface TUIInstantiateContextState
- (TUIInstantiateContextState)initWithViewStateMapping:(id)mapping;
@end

@implementation TUIInstantiateContextState

- (TUIInstantiateContextState)initWithViewStateMapping:(id)mapping
{
  mappingCopy = mapping;
  v9.receiver = self;
  v9.super_class = TUIInstantiateContextState;
  v5 = [(TUIInstantiateContextState *)&v9 init];
  if (v5)
  {
    v6 = [mappingCopy copy];
    viewStateMapping = v5->_viewStateMapping;
    v5->_viewStateMapping = v6;
  }

  return v5;
}

@end