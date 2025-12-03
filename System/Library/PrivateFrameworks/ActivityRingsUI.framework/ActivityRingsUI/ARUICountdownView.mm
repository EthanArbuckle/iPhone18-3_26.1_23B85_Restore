@interface ARUICountdownView
+ (id)countdownViewConfiguredForCompanion;
+ (id)countdownViewConfiguredForDisplayWithRingDiameter:(float)diameter;
+ (id)countdownViewConfiguredForWatch;
- (id)backingTrackRingGroup;
- (id)ringGroup;
@end

@implementation ARUICountdownView

- (id)ringGroup
{
  ringGroups = [(ARUIRingsView *)self ringGroups];
  v4 = [ringGroups count];

  if (v4 < 2)
  {
    v8.receiver = self;
    v8.super_class = ARUICountdownView;
    ringGroup = [(ARUIRingsView *)&v8 ringGroup];
  }

  else
  {
    ringGroups2 = [(ARUIRingsView *)self ringGroups];
    ringGroup = [ringGroups2 lastObject];
  }

  return ringGroup;
}

- (id)backingTrackRingGroup
{
  ringGroups = [(ARUIRingsView *)self ringGroups];
  v4 = [ringGroups count];

  if (v4 < 2)
  {
    v6 = 0;
  }

  else
  {
    ringGroups2 = [(ARUIRingsView *)self ringGroups];
    v6 = [ringGroups2 objectAtIndex:0];
  }

  return v6;
}

+ (id)countdownViewConfiguredForWatch
{
  v2 = +[ARUIRingGroup countdownRingGroup];
  v3 = [[ARUIRenderer alloc] initWithRenderStyle:1];
  v4 = [[ARUIRingGroupController alloc] initWithRingGroup:v2];
  LODWORD(v5) = 1122238464;
  [(ARUIRingGroupController *)v4 setRingDiameter:v5];
  LODWORD(v6) = 9.5;
  [(ARUIRingGroupController *)v4 setRingThickness:v6];
  [(ARUIRingGroupController *)v4 setPercentage:0 ofRingAtIndex:0 animated:0.0];
  v7 = [(ARUIRingsView *)[ARUICountdownView alloc] initWithRingGroupController:v4 renderer:v3];

  return v7;
}

+ (id)countdownViewConfiguredForCompanion
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = +[ARUIRingGroup countdownRingGroup];
  v3 = [[ARUIRingGroupController alloc] initWithRingGroup:v2];
  v4 = +[ARUIRingGroup countdownRingGroup];
  v5 = [[ARUIRingGroupController alloc] initWithRingGroup:v4];
  v6 = [[ARUIRenderer alloc] initWithRenderStyle:1];
  v7 = [ARUICountdownView alloc];
  v11[0] = v5;
  v11[1] = v3;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v9 = [(ARUIRingsView *)v7 initWithRingGroupControllers:v8 renderer:v6];

  return v9;
}

+ (id)countdownViewConfiguredForDisplayWithRingDiameter:(float)diameter
{
  v33[2] = *MEMORY[0x1E69E9840];
  v4 = +[ARUIRingGroup countdownRingGroup];
  v5 = +[ARUIRingGroup countdownRingGroup];
  v26 = v4;
  v33[0] = v4;
  v33[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v7 = +[ARUIMetricColors keyColors];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        *&v10 = diameter;
        [v14 setGroupDiameter:v10];
        LODWORD(v15) = 7.0;
        [v14 setThickness:v15];
        [v14 setPercentage:0 ofRingAtIndex:0.0];
        gradientLightColor = [v7 gradientLightColor];
        gradientDarkColor = [v7 gradientDarkColor];
        [v14 setTopColor:gradientLightColor bottomColor:gradientDarkColor ofRingAtIndex:0];

        LODWORD(v18) = ARUIRingPercentageValueNoRing;
        [v14 setPercentage:0 ofRingAtIndex:v18];
      }

      v11 = [v8 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v11);
  }

  v19 = [[ARUIRingGroupController alloc] initWithRingGroup:v26];
  v20 = [[ARUIRingGroupController alloc] initWithRingGroup:v5];
  v21 = [[ARUIRenderer alloc] initWithRenderStyle:1];
  v22 = [ARUICountdownView alloc];
  v31[0] = v20;
  v31[1] = v19;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v24 = [(ARUIRingsView *)v22 initWithRingGroupControllers:v23 renderer:v21];

  return v24;
}

@end