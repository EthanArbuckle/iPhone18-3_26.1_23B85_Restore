@interface BKSSecureModeViolation
- (BKSSecureModeViolation)initWithProcessId:(id)a3 contextIds:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation BKSSecureModeViolation

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(BKSSecureModeViolation *)self succinctDescriptionBuilder];
  [v5 appendDictionarySection:self->_layerNamesByContext withName:@"layerNamesByContext" multilinePrefix:v4 skipIfEmpty:1];

  return v5;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BKSSecureModeViolation *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
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
  v2 = [(BKSSecureModeViolation *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (BKSSecureModeViolation)initWithProcessId:(id)a3 contextIds:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BKSSecureModeViolation;
  v9 = [(BKSSecureModeViolation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_processId, a3);
    v11 = [v8 copy];
    contextIds = v10->_contextIds;
    v10->_contextIds = v11;
  }

  return v10;
}

@end