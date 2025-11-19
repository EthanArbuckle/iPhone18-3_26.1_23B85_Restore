@interface SiriGKPropertyPod
- (SiriGKPropertyPod)initWithPropertyPod:(id)a3;
@end

@implementation SiriGKPropertyPod

- (SiriGKPropertyPod)initWithPropertyPod:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SiriGKPropertyPod;
  v5 = [(SiriGKPropertyPod *)&v20 init];
  if (v5)
  {
    v6 = [v4 propertyList];
    v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
    viewArray = v5->_viewArray;
    v5->_viewArray = v7;

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [v4 propertyList];
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [[SiriGKPropertyView alloc] initWithAnswerProperty:*(*(&v16 + 1) + 8 * v13)];
          if (v14)
          {
            [(NSMutableArray *)v5->_viewArray addObject:v14];
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v11);
    }
  }

  return v5;
}

@end