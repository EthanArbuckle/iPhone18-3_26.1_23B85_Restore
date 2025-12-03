@interface ScrollPseudoContactListTest
- (BOOL)prepareForTestWithOptions:(id)options;
- (void)startSearchQueryWithCompletionBlock:(id)block;
@end

@implementation ScrollPseudoContactListTest

- (BOOL)prepareForTestWithOptions:(id)options
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = ScrollPseudoContactListTest;
  v5 = [(ContactsTest *)&v13 prepareForTestWithOptions:optionsCopy];
  if (v5)
  {
    v6 = +[NSMutableDictionary dictionary];
    [(ScrollPseudoContactListTest *)self setExtraResults:v6];

    v7 = [optionsCopy objectForKey:@"animate"];
    -[ScrollPseudoContactListTest setAnimate:](self, "setAnimate:", [v7 BOOLValue]);

    v8 = [optionsCopy objectForKey:@"searchQueries"];
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

- (void)startSearchQueryWithCompletionBlock:(id)block
{
  blockCopy = block;
  allSearchQueries = [(ScrollPseudoContactListTest *)self allSearchQueries];
  v8 = [allSearchQueries objectAtIndex:{-[ScrollPseudoContactListTest currentQueryIndex](self, "currentQueryIndex")}];

  [(ScrollPseudoContactListTest *)self setLastSearchBeginTime:CFAbsoluteTimeGetCurrent()];
  contactNavigationController = [(ContactsTest *)self contactNavigationController];
  contactListViewController = [contactNavigationController contactListViewController];
  [contactListViewController searchForString:v8 animated:-[ScrollPseudoContactListTest animate](self completionBlock:{"animate"), blockCopy}];
}

@end