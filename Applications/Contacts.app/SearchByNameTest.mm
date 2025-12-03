@interface SearchByNameTest
- (BOOL)prepareForTestWithOptions:(id)options;
- (void)startSearchQuery;
@end

@implementation SearchByNameTest

- (BOOL)prepareForTestWithOptions:(id)options
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = SearchByNameTest;
  v5 = [(ContactsTest *)&v13 prepareForTestWithOptions:optionsCopy];
  if (v5)
  {
    v6 = +[NSMutableDictionary dictionary];
    [(SearchByNameTest *)self setExtraResults:v6];

    v7 = [optionsCopy objectForKey:@"animate"];
    -[SearchByNameTest setAnimate:](self, "setAnimate:", [v7 BOOLValue]);

    v8 = [optionsCopy objectForKey:@"searchQueries"];
    v9 = [v8 componentsSeparatedByString:@"%"];
    [(SearchByNameTest *)self setAllSearchQueries:v9];
    [(SearchByNameTest *)self setCurrentQueryIndex:0];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100005F10;
    v12[3] = &unk_1000204D0;
    v12[4] = self;
    v10 = objc_retainBlock(v12);
    [(ContactsTest *)self showContactListWithCompletionBlock:v10];
  }

  return v5;
}

- (void)startSearchQuery
{
  allSearchQueries = [(SearchByNameTest *)self allSearchQueries];
  v4 = [allSearchQueries objectAtIndex:{-[SearchByNameTest currentQueryIndex](self, "currentQueryIndex")}];

  [(SearchByNameTest *)self setLastSearchBeginTime:CFAbsoluteTimeGetCurrent()];
  kdebug_trace();
  contactNavigationController = [(ContactsTest *)self contactNavigationController];
  contactListViewController = [contactNavigationController contactListViewController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000605C;
  v7[3] = &unk_1000204D0;
  v7[4] = self;
  [contactListViewController searchForString:v4 animated:-[SearchByNameTest animate](self completionBlock:{"animate"), v7}];
}

@end