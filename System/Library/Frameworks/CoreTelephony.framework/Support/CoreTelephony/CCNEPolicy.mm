@interface CCNEPolicy
- (CCNEPolicy)initWithOrder:(unsigned int)order result:(id)result conditions:(id)conditions;
@end

@implementation CCNEPolicy

- (CCNEPolicy)initWithOrder:(unsigned int)order result:(id)result conditions:(id)conditions
{
  v6 = *&order;
  resultCopy = result;
  conditionsCopy = conditions;
  v18.receiver = self;
  v18.super_class = CCNEPolicy;
  v10 = [(CCNEPolicy *)&v18 init];
  if (v10)
  {
    v11 = objc_alloc_init(NSMutableArray);
    objectEnumerator = [conditionsCopy objectEnumerator];
    v13 = 0;
    while (1)
    {
      nextObject = [objectEnumerator nextObject];

      if (!nextObject)
      {
        break;
      }

      v13 = nextObject;
      [v11 addObject:*(nextObject + 8)];
    }

    v15 = [[NEPolicy alloc] initWithOrder:v6 result:resultCopy[1] conditions:v11];
    policy = v10->policy;
    v10->policy = v15;
  }

  return v10;
}

@end