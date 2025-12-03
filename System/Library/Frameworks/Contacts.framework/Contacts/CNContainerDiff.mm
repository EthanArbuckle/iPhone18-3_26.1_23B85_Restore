@interface CNContainerDiff
+ (id)diffContainer:(id)container to:(id)to;
- (CNContainerDiff)initWithUpdates:(id)updates;
- (id)description;
@end

@implementation CNContainerDiff

+ (id)diffContainer:(id)container to:(id)to
{
  v4 = [CNContainerDiffCalculator diffContainer:container to:to];
  v5 = [[CNContainerDiff alloc] initWithUpdates:v4];

  return v5;
}

- (CNContainerDiff)initWithUpdates:(id)updates
{
  updatesCopy = updates;
  v10.receiver = self;
  v10.super_class = CNContainerDiff;
  v5 = [(CNContainerDiff *)&v10 init];
  if (v5)
  {
    v6 = [updatesCopy copy];
    updates = v5->_updates;
    v5->_updates = v6;

    v8 = v5;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E69966B0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"updates" object:self->_updates];
  build = [v3 build];

  return build;
}

@end