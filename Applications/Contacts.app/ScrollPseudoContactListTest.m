@interface ScrollPseudoContactListTest
- (BOOL)prepareForTestWithOptions:(id)a3;
- (void)startSearchQueryWithCompletionBlock:(id)a3;
@end

@implementation ScrollPseudoContactListTest

- (BOOL)prepareForTestWithOptions:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ScrollPseudoContactListTest;
  v5 = [(ContactsTest *)&v13 prepareForTestWithOptions:v4];
  if (v5)
  {
    v6 = +[NSMutableDictionary dictionary];
    [(ScrollPseudoContactListTest *)self setExtraResults:v6];

    v7 = [v4 objectForKey:@"animate"];
    -[ScrollPseudoContactListTest setAnimate:](self, "setAnimate:", [v7 BOOLValue]);

    v8 = [v4 objectForKey:@"searchQueries"];
    v9 = [v8 componentsSeparatedByString:@"%"];
    [(ScrollPseudoContactListTest *)self setAllSearchQueries:v9];
    [(ScrollPseudoContactListTest *)self setCurrentQueryIndex:0];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000ED74;
    v12[3] = &unk_1000204D0;
    v12[4] = self;
    v10 = objc_retainBlock(v12);
    [(ContactsTest *)self showContactListWithCompletionBlock:v10];
  }

  return v5;
}

- (void)startSearchQueryWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(ScrollPseudoContactListTest *)self allSearchQueries];
  v8 = [v5 objectAtIndex:{-[ScrollPseudoContactListTest currentQueryIndex](self, "currentQueryIndex")}];

  [(ScrollPseudoContactListTest *)self setLastSearchBeginTime:CFAbsoluteTimeGetCurrent()];
  v6 = [(ContactsTest *)self contactNavigationController];
  v7 = [v6 contactListViewController];
  [v7 searchForString:v8 animated:-[ScrollPseudoContactListTest animate](self completionBlock:{"animate"), v4}];
}

@end