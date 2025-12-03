@interface AFExperimentConfiguration
- (NSArray)allGroups;
@end

@implementation AFExperimentConfiguration

- (NSArray)allGroups
{
  controlGroup = [(AFExperimentConfiguration *)self controlGroup];
  experimentGroups = [(AFExperimentConfiguration *)self experimentGroups];
  v5 = experimentGroups;
  if (controlGroup)
  {
    if ([experimentGroups count])
    {
      v6 = [v5 mutableCopy];
      [v6 insertObject:controlGroup atIndex:0];
      v7 = [v6 copy];

      goto LABEL_9;
    }

    v11 = controlGroup;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
  }

  else
  {
    v8 = &__NSArray0__struct;
    if (experimentGroups)
    {
      v8 = experimentGroups;
    }

    v9 = v8;
  }

  v7 = v9;
LABEL_9:

  return v7;
}

@end