@interface AFExperimentConfiguration
- (NSArray)allGroups;
@end

@implementation AFExperimentConfiguration

- (NSArray)allGroups
{
  v3 = [(AFExperimentConfiguration *)self controlGroup];
  v4 = [(AFExperimentConfiguration *)self experimentGroups];
  v5 = v4;
  if (v3)
  {
    if ([v4 count])
    {
      v6 = [v5 mutableCopy];
      [v6 insertObject:v3 atIndex:0];
      v7 = [v6 copy];

      goto LABEL_9;
    }

    v11 = v3;
    v9 = [NSArray arrayWithObjects:&v11 count:1];
  }

  else
  {
    v8 = &__NSArray0__struct;
    if (v4)
    {
      v8 = v4;
    }

    v9 = v8;
  }

  v7 = v9;
LABEL_9:

  return v7;
}

@end