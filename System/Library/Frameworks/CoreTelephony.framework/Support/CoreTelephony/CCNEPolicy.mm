@interface CCNEPolicy
- (CCNEPolicy)initWithOrder:(unsigned int)a3 result:(id)a4 conditions:(id)a5;
@end

@implementation CCNEPolicy

- (CCNEPolicy)initWithOrder:(unsigned int)a3 result:(id)a4 conditions:(id)a5
{
  v6 = *&a3;
  v8 = a4;
  v9 = a5;
  v18.receiver = self;
  v18.super_class = CCNEPolicy;
  v10 = [(CCNEPolicy *)&v18 init];
  if (v10)
  {
    v11 = objc_alloc_init(NSMutableArray);
    v12 = [v9 objectEnumerator];
    v13 = 0;
    while (1)
    {
      v14 = [v12 nextObject];

      if (!v14)
      {
        break;
      }

      v13 = v14;
      [v11 addObject:*(v14 + 8)];
    }

    v15 = [[NEPolicy alloc] initWithOrder:v6 result:v8[1] conditions:v11];
    policy = v10->policy;
    v10->policy = v15;
  }

  return v10;
}

@end