@interface InfographPoster
- (id)looksForEditor:(id)editor;
- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment;
- (void)updateDescriptors:(id)descriptors withSessionInfo:(id)info completion:(id)completion;
@end

@implementation InfographPoster

- (void)renderer:(id)renderer didInitializeWithEnvironment:(id)environment
{
  foregroundView = [renderer foregroundView];
  v4 = +[UIColor blackColor];
  [foregroundView setBackgroundColor:v4];
}

- (id)looksForEditor:(id)editor
{
  v3 = [[PREditingLook alloc] initWithIdentifier:@"InfographPoster" displayName:@"Infograph" initialTimeFontConfiguration:0 initialTitleColor:0];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (void)updateDescriptors:(id)descriptors withSessionInfo:(id)info completion:(id)completion
{
  descriptorsCopy = descriptors;
  completionCopy = completion;
  if ([descriptorsCopy count])
  {
    allValues = [descriptorsCopy allValues];
    completionCopy[2](completionCopy, allValues, 0);
  }

  else
  {
    allValues = [PRMutablePosterDescriptor mutableDescriptorWithIdentifier:@"InfographPoster" role:PRPosterRoleAmbient];
    v9 = [[PRPosterAmbientConfiguration alloc] initWithSupportedDataLayout:2 creationBehavior:0 editingBehavior:1 deletionBehavior:2];
    [allValues setAmbientConfiguration:v9];
    v11 = allValues;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    completionCopy[2](completionCopy, v10, 0);
  }
}

@end