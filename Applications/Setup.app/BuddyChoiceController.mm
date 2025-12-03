@interface BuddyChoiceController
+ (id)cloudConfigSkipKey;
- (BFFFlowItemDelegate)delegate;
- (void)_tappedChoice:(id)choice;
- (void)didSelectChoice:(id)choice;
- (void)setChoices:(id)choices;
@end

@implementation BuddyChoiceController

+ (id)cloudConfigSkipKey
{
  selfCopy = self;
  aSelector = a2;
  oslog = _BYLoggingFacility();
  v4 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    location = NSStringFromSelector(aSelector);
    sub_10006AE18(buf, location);
    _os_log_impl(&_mh_execute_header, oslog, v4, "Subclasses must implement %@", buf, 0xCu);

    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&oslog, 0);
  return 0;
}

- (void)setChoices:(id)choices
{
  val = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choices);
  if (*(val + 2) != location[0])
  {
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v3 = location[0];
    v4 = [v3 countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v4)
    {
      v5 = *v24;
      do
      {
        for (i = 0; i < v4; ++i)
        {
          if (*v24 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v27 = *(*(&v23 + 1) + 8 * i);
          [v27 setChoiceController:0];
        }

        v4 = [v3 countByEnumeratingWithState:&v23 objects:v30 count:16];
      }

      while (v4);
    }

    [val removeAllButtons];
    objc_storeStrong(val + 2, location[0]);
    objc_initWeak(&from, val);
    for (j = 0; ; ++j)
    {
      v7 = j;
      if (v7 >= [*(val + 2) count])
      {
        break;
      }

      v20 = [*(val + 2) objectAtIndexedSubscript:j];
      [v20 setChoiceController:val];
      v8 = 1;
      if (j)
      {
        v8 = 2;
      }

      v19 = v8;
      v9 = val;
      title = [v20 title];
      v11 = v19;
      v12 = _NSConcreteStackBlock;
      v13 = -1073741824;
      v14 = 0;
      v15 = sub_10012B5C0;
      v16 = &unk_10032AFA8;
      objc_copyWeak(&v18, &from);
      v17 = v20;
      [v9 addButtonWithTitle:title style:v11 action:&v12];

      objc_storeStrong(&v17, 0);
      objc_destroyWeak(&v18);
      objc_storeStrong(&v20, 0);
    }

    objc_destroyWeak(&from);
  }

  objc_storeStrong(location, 0);
}

- (void)_tappedChoice:(id)choice
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choice);
  v3 = location[0];
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_10012B704;
  v8 = &unk_10032AEF0;
  v9 = selfCopy;
  v10 = location[0];
  [v3 runConfirmationIfNeededCompletion:&v4];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)didSelectChoice:(id)choice
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, choice);
  delegate = [(BuddyChoiceController *)selfCopy delegate];
  -[BFFFlowItemDelegate flowItemDone:nextItemClass:](delegate, "flowItemDone:nextItemClass:", selfCopy, [location[0] nextControllerClass]);

  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end