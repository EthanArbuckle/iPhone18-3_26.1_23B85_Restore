@interface SearchPseudoContactsTest
- (BOOL)prepareForTestWithOptions:(id)options;
- (void)startSearchQuery;
@end

@implementation SearchPseudoContactsTest

- (BOOL)prepareForTestWithOptions:(id)options
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = SearchPseudoContactsTest;
  v5 = [(ContactsTest *)&v13 prepareForTestWithOptions:optionsCopy];
  if (v5)
  {
    v6 = +[NSMutableDictionary dictionary];
    [(SearchPseudoContactsTest *)self setExtraResults:v6];

    v7 = [optionsCopy objectForKey:@"animate"];
    -[SearchPseudoContactsTest setAnimate:](self, "setAnimate:", [v7 BOOLValue]);

    v8 = [optionsCopy objectForKey:@"searchQueries"];
    v9 = [v8 componentsSeparatedByString:@"%"];
    [(SearchPseudoContactsTest *)self setAllSearchQueries:v9];
    [(SearchPseudoContactsTest *)self setCurrentQueryIndex:0];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100003D98;
    v12[3] = &unk_1000204D0;
    v12[4] = self;
    v10 = objc_retainBlock(v12);
    [(ContactsTest *)self showContactListWithCompletionBlock:v10];
  }

  return v5;
}

- (void)startSearchQuery
{
  allSearchQueries = [(SearchPseudoContactsTest *)self allSearchQueries];
  v4 = [allSearchQueries objectAtIndex:{-[SearchPseudoContactsTest currentQueryIndex](self, "currentQueryIndex")}];

  [(SearchPseudoContactsTest *)self setLastSearchBeginTime:CFAbsoluteTimeGetCurrent()];
  contactNavigationController = [(ContactsTest *)self contactNavigationController];
  contactListViewController = [contactNavigationController contactListViewController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003EC8;
  v7[3] = &unk_1000204D0;
  v7[4] = self;
  [contactListViewController searchForString:v4 animated:-[SearchPseudoContactsTest animate](self completionBlock:{"animate"), v7}];
}

@end