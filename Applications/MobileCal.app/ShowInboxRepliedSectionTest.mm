@interface ShowInboxRepliedSectionTest
- (void)runTest;
@end

@implementation ShowInboxRepliedSectionTest

- (void)runTest
{
  v3 = [(ApplicationTest *)self application];
  v4 = [v3 rootNavigationController];
  v5 = [v4 resetToYearView];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10011165C;
  v16 = sub_10011166C;
  v17 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100111674;
  v9[3] = &unk_1002119A8;
  v9[4] = self;
  v11 = &v12;
  v6 = v3;
  v10 = v6;
  v7 = [v4 showInboxAnimated:1 completion:v9];
  v8 = v13[5];
  v13[5] = v7;

  _Block_object_dispose(&v12, 8);
}

@end