@interface SearchHomePublishersDataProvider
- (BOOL)showDisclosureIndicator;
- (SearchHomePublishersDataProvider)initWithObjects:(id)a3 type:(int64_t)a4 identifier:(id)a5 title:(id)a6;
@end

@implementation SearchHomePublishersDataProvider

- (BOOL)showDisclosureIndicator
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] != 5;

  return v3;
}

- (SearchHomePublishersDataProvider)initWithObjects:(id)a3 type:(int64_t)a4 identifier:(id)a5 title:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v37.receiver = self;
  v37.super_class = SearchHomePublishersDataProvider;
  v13 = [(SearchHomePublishersDataProvider *)&v37 init];
  if (v13)
  {
    v31 = a4;
    v32 = v11;
    v14 = [v10 copy];
    objects = v13->_objects;
    v13->_objects = v14;

    v16 = [(SearchHomePublishersDataProvider *)v13 showDisclosureIndicator];
    v17 = [NSMutableArray arrayWithCapacity:[(NSArray *)v13->_objects count]];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v18 = v13->_objects;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v34;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [TwoLinesContentViewModelComposer cellModelForPublisher:*(*(&v33 + 1) + 8 * i) showDisclosureIndicator:v16];
          [v17 addObject:v23];
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v20);
    }

    v24 = [v17 copy];
    viewModels = v13->_viewModels;
    v13->_viewModels = v24;

    v11 = v32;
    v13->_type = v31;
    v26 = [v32 copy];
    identifier = v13->_identifier;
    v13->_identifier = v26;

    v28 = [v12 copy];
    title = v13->_title;
    v13->_title = v28;
  }

  return v13;
}

@end