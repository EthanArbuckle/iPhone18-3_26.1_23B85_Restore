@interface ScrollMemberListTest
- (BOOL)prepareForTestWithOptions:(id)options;
@end

@implementation ScrollMemberListTest

- (BOOL)prepareForTestWithOptions:(id)options
{
  v17.receiver = self;
  v17.super_class = ScrollMemberListTest;
  v4 = [(ContactsTest *)&v17 prepareForTestWithOptions:options];
  if (v4)
  {
    contactNavigationController = [(ContactsTest *)self contactNavigationController];
    contactListViewController = [contactNavigationController contactListViewController];
    collectionView = [contactListViewController collectionView];

    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_10000984C;
    v14 = &unk_100020580;
    selfCopy = self;
    v16 = collectionView;
    v8 = collectionView;
    v9 = objc_retainBlock(&v11);
    [(ContactsTest *)self showContactListWithCompletionBlock:v9, v11, v12, v13, v14, selfCopy];
  }

  return v4;
}

@end