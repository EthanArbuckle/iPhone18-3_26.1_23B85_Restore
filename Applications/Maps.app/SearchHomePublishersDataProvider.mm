@interface SearchHomePublishersDataProvider
- (BOOL)showDisclosureIndicator;
- (SearchHomePublishersDataProvider)initWithObjects:(id)objects type:(int64_t)type identifier:(id)identifier title:(id)title;
@end

@implementation SearchHomePublishersDataProvider

- (BOOL)showDisclosureIndicator
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] != 5;

  return v3;
}

- (SearchHomePublishersDataProvider)initWithObjects:(id)objects type:(int64_t)type identifier:(id)identifier title:(id)title
{
  objectsCopy = objects;
  identifierCopy = identifier;
  titleCopy = title;
  v37.receiver = self;
  v37.super_class = SearchHomePublishersDataProvider;
  v13 = [(SearchHomePublishersDataProvider *)&v37 init];
  if (v13)
  {
    typeCopy = type;
    v32 = identifierCopy;
    v14 = [objectsCopy copy];
    objects = v13->_objects;
    v13->_objects = v14;

    showDisclosureIndicator = [(SearchHomePublishersDataProvider *)v13 showDisclosureIndicator];
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

          v23 = [TwoLinesContentViewModelComposer cellModelForPublisher:*(*(&v33 + 1) + 8 * i) showDisclosureIndicator:showDisclosureIndicator];
          [v17 addObject:v23];
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v20);
    }

    v24 = [v17 copy];
    viewModels = v13->_viewModels;
    v13->_viewModels = v24;

    identifierCopy = v32;
    v13->_type = typeCopy;
    v26 = [v32 copy];
    identifier = v13->_identifier;
    v13->_identifier = v26;

    v28 = [titleCopy copy];
    title = v13->_title;
    v13->_title = v28;
  }

  return v13;
}

@end