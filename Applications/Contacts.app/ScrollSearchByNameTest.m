@interface ScrollSearchByNameTest
- (BOOL)prepareForTestWithOptions:(id)a3;
- (void)startSearchQueryWithOptions:(id)a3;
@end

@implementation ScrollSearchByNameTest

- (BOOL)prepareForTestWithOptions:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ScrollSearchByNameTest;
  v5 = [(ContactsTest *)&v16 prepareForTestWithOptions:v4];
  if (v5)
  {
    v6 = [v4 objectForKey:@"animate"];
    -[ScrollSearchByNameTest setAnimate:](self, "setAnimate:", [v6 BOOLValue]);

    v7 = [v4 objectForKey:@"searchQuery"];
    [(ScrollSearchByNameTest *)self setQueryString:v7];

    [(ScrollSearchByNameTest *)self setCurrentQueryIndex:0];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10000DFF4;
    v13 = &unk_100020580;
    v14 = self;
    v15 = v4;
    v8 = objc_retainBlock(&v10);
    [(ContactsTest *)self showContactListWithCompletionBlock:v8, v10, v11, v12, v13, v14];
  }

  return v5;
}

- (void)startSearchQueryWithOptions:(id)a3
{
  v4 = [(ContactsTest *)self contactNavigationController];
  v5 = [v4 contactListViewController];
  v6 = [(ScrollSearchByNameTest *)self queryString];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000E0C8;
  v7[3] = &unk_1000204D0;
  v7[4] = self;
  [v5 searchForString:v6 animated:-[ScrollSearchByNameTest animate](self completionBlock:{"animate"), v7}];
}

@end