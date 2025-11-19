@interface SearchByNameTest
- (BOOL)prepareForTestWithOptions:(id)a3;
- (void)startSearchQuery;
@end

@implementation SearchByNameTest

- (BOOL)prepareForTestWithOptions:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SearchByNameTest;
  v5 = [(ContactsTest *)&v13 prepareForTestWithOptions:v4];
  if (v5)
  {
    v6 = +[NSMutableDictionary dictionary];
    [(SearchByNameTest *)self setExtraResults:v6];

    v7 = [v4 objectForKey:@"animate"];
    -[SearchByNameTest setAnimate:](self, "setAnimate:", [v7 BOOLValue]);

    v8 = [v4 objectForKey:@"searchQueries"];
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
  v3 = [(SearchByNameTest *)self allSearchQueries];
  v4 = [v3 objectAtIndex:{-[SearchByNameTest currentQueryIndex](self, "currentQueryIndex")}];

  [(SearchByNameTest *)self setLastSearchBeginTime:CFAbsoluteTimeGetCurrent()];
  kdebug_trace();
  v5 = [(ContactsTest *)self contactNavigationController];
  v6 = [v5 contactListViewController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000605C;
  v7[3] = &unk_1000204D0;
  v7[4] = self;
  [v6 searchForString:v4 animated:-[SearchByNameTest animate](self completionBlock:{"animate"), v7}];
}

@end