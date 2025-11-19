@interface PCPrintJob
+ (id)jobs;
- (id)initJob:(id)a3;
@end

@implementation PCPrintJob

- (id)initJob:(id)a3
{
  v4 = a3;
  v5 = [v4 localJobID];
  v6 = [v4 updatableState];

  v9.receiver = self;
  v9.super_class = PCPrintJob;
  v7 = [(PCPrintJob *)&v9 initWithJobID:v5 updateState:v6];

  return v7;
}

+ (id)jobs
{
  v3 = +[NSMutableArray array];
  v15.receiver = a1;
  v15.super_class = &OBJC_METACLASS___PCPrintJob;
  v4 = objc_msgSendSuper2(&v15, "jobs");
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [[PCPrintJob alloc] initJob:*(*(&v11 + 1) + 8 * i)];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

@end