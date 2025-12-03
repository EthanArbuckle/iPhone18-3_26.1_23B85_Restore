@interface ScrollSearchByNameTest
- (BOOL)prepareForTestWithOptions:(id)options;
- (void)startSearchQueryWithOptions:(id)options;
@end

@implementation ScrollSearchByNameTest

- (BOOL)prepareForTestWithOptions:(id)options
{
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = ScrollSearchByNameTest;
  v5 = [(ContactsTest *)&v16 prepareForTestWithOptions:optionsCopy];
  if (v5)
  {
    v6 = [optionsCopy objectForKey:@"animate"];
    -[ScrollSearchByNameTest setAnimate:](self, "setAnimate:", [v6 BOOLValue]);

    v7 = [optionsCopy objectForKey:@"searchQuery"];
    [(ScrollSearchByNameTest *)self setQueryString:v7];

    [(ScrollSearchByNameTest *)self setCurrentQueryIndex:0];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10000DFF4;
    v13 = &unk_100020580;
    selfCopy = self;
    v15 = optionsCopy;
    v8 = objc_retainBlock(&v10);
    [(ContactsTest *)self showContactListWithCompletionBlock:v8, v10, v11, v12, v13, selfCopy];
  }

  return v5;
}

- (void)startSearchQueryWithOptions:(id)options
{
  contactNavigationController = [(ContactsTest *)self contactNavigationController];
  contactListViewController = [contactNavigationController contactListViewController];
  queryString = [(ScrollSearchByNameTest *)self queryString];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000E0C8;
  v7[3] = &unk_1000204D0;
  v7[4] = self;
  [contactListViewController searchForString:queryString animated:-[ScrollSearchByNameTest animate](self completionBlock:{"animate"), v7}];
}

@end