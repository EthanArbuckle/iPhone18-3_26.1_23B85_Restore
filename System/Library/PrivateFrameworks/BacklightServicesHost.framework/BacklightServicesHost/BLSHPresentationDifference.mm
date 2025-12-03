@interface BLSHPresentationDifference
- (BLSHPresentationDifference)initWithHasChanges:(BOOL)changes insertedEnvironments:(id)environments removedEnvironments:(id)removedEnvironments;
- (id)description;
@end

@implementation BLSHPresentationDifference

- (BLSHPresentationDifference)initWithHasChanges:(BOOL)changes insertedEnvironments:(id)environments removedEnvironments:(id)removedEnvironments
{
  environmentsCopy = environments;
  removedEnvironmentsCopy = removedEnvironments;
  v14.receiver = self;
  v14.super_class = BLSHPresentationDifference;
  v11 = [(BLSHPresentationDifference *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_hasChanges = changes;
    objc_storeStrong(&v11->_insertions, environments);
    objc_storeStrong(&v12->_removals, removedEnvironments);
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_hasChanges withName:@"hasChanges"];
  v5 = [(NSArray *)self->_insertions bs_map:&__block_literal_global_149];
  [v3 appendArraySection:v5 withName:@"adds" skipIfEmpty:1];

  v6 = [(NSArray *)self->_removals bs_map:&__block_literal_global_154];
  [v3 appendArraySection:v6 withName:@"removes" skipIfEmpty:1];

  build = [v3 build];

  return build;
}

id __41__BLSHPresentationDifference_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v2 stringWithFormat:@"<%p:%@>", v3, v4];

  return v5;
}

id __41__BLSHPresentationDifference_description__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v2 stringWithFormat:@"<%p:%@>", v3, v4];

  return v5;
}

@end