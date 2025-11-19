@interface InfographPoster
- (id)looksForEditor:(id)a3;
- (void)renderer:(id)a3 didInitializeWithEnvironment:(id)a4;
- (void)updateDescriptors:(id)a3 withSessionInfo:(id)a4 completion:(id)a5;
@end

@implementation InfographPoster

- (void)renderer:(id)a3 didInitializeWithEnvironment:(id)a4
{
  v5 = [a3 foregroundView];
  v4 = +[UIColor blackColor];
  [v5 setBackgroundColor:v4];
}

- (id)looksForEditor:(id)a3
{
  v3 = [[PREditingLook alloc] initWithIdentifier:@"InfographPoster" displayName:@"Infograph" initialTimeFontConfiguration:0 initialTitleColor:0];
  v6 = v3;
  v4 = [NSArray arrayWithObjects:&v6 count:1];

  return v4;
}

- (void)updateDescriptors:(id)a3 withSessionInfo:(id)a4 completion:(id)a5
{
  v6 = a3;
  v7 = a5;
  if ([v6 count])
  {
    v8 = [v6 allValues];
    v7[2](v7, v8, 0);
  }

  else
  {
    v8 = [PRMutablePosterDescriptor mutableDescriptorWithIdentifier:@"InfographPoster" role:PRPosterRoleAmbient];
    v9 = [[PRPosterAmbientConfiguration alloc] initWithSupportedDataLayout:2 creationBehavior:0 editingBehavior:1 deletionBehavior:2];
    [v8 setAmbientConfiguration:v9];
    v11 = v8;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    v7[2](v7, v10, 0);
  }
}

@end