@interface BKSSecureModeViolation
- (BKSSecureModeViolation)initWithProcessId:(id)id contextIds:(id)ids;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation BKSSecureModeViolation

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(BKSSecureModeViolation *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder appendDictionarySection:self->_layerNamesByContext withName:@"layerNamesByContext" multilinePrefix:prefixCopy skipIfEmpty:1];

  return succinctDescriptionBuilder;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(BKSSecureModeViolation *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendInteger:-[NSNumber integerValue](self->_processId withName:{"integerValue"), @"processId"}];
  [v3 appendArraySection:self->_contextIds withName:@"contextIds" skipIfEmpty:1 objectTransformer:&__block_literal_global_6024];

  return v3;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(BKSSecureModeViolation *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (BKSSecureModeViolation)initWithProcessId:(id)id contextIds:(id)ids
{
  idCopy = id;
  idsCopy = ids;
  v14.receiver = self;
  v14.super_class = BKSSecureModeViolation;
  v9 = [(BKSSecureModeViolation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_processId, id);
    v11 = [idsCopy copy];
    contextIds = v10->_contextIds;
    v10->_contextIds = v11;
  }

  return v10;
}

@end