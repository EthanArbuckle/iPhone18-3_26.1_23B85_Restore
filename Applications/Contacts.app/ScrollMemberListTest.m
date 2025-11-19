@interface ScrollMemberListTest
- (BOOL)prepareForTestWithOptions:(id)a3;
@end

@implementation ScrollMemberListTest

- (BOOL)prepareForTestWithOptions:(id)a3
{
  v17.receiver = self;
  v17.super_class = ScrollMemberListTest;
  v4 = [(ContactsTest *)&v17 prepareForTestWithOptions:a3];
  if (v4)
  {
    v5 = [(ContactsTest *)self contactNavigationController];
    v6 = [v5 contactListViewController];
    v7 = [v6 collectionView];

    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10000984C;
    v14 = &unk_100020580;
    v15 = self;
    v16 = v7;
    v8 = v7;
    v9 = objc_retainBlock(&v11);
    [(ContactsTest *)self showContactListWithCompletionBlock:v9, v11, v12, v13, v14, v15];
  }

  return v4;
}

@end