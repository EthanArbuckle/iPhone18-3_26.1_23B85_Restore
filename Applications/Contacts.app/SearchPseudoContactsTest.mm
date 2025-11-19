@interface SearchPseudoContactsTest
- (BOOL)prepareForTestWithOptions:(id)a3;
- (void)startSearchQuery;
@end

@implementation SearchPseudoContactsTest

- (BOOL)prepareForTestWithOptions:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SearchPseudoContactsTest;
  v5 = [(ContactsTest *)&v13 prepareForTestWithOptions:v4];
  if (v5)
  {
    v6 = +[NSMutableDictionary dictionary];
    [(SearchPseudoContactsTest *)self setExtraResults:v6];

    v7 = [v4 objectForKey:@"animate"];
    -[SearchPseudoContactsTest setAnimate:](self, "setAnimate:", [v7 BOOLValue]);

    v8 = [v4 objectForKey:@"searchQueries"];
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
  v3 = [(SearchPseudoContactsTest *)self allSearchQueries];
  v4 = [v3 objectAtIndex:{-[SearchPseudoContactsTest currentQueryIndex](self, "currentQueryIndex")}];

  [(SearchPseudoContactsTest *)self setLastSearchBeginTime:CFAbsoluteTimeGetCurrent()];
  v5 = [(ContactsTest *)self contactNavigationController];
  v6 = [v5 contactListViewController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003EC8;
  v7[3] = &unk_1000204D0;
  v7[4] = self;
  [v6 searchForString:v4 animated:-[SearchPseudoContactsTest animate](self completionBlock:{"animate"), v7}];
}

@end