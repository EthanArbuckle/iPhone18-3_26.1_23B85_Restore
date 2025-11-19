@interface FBAInbox
- (UIImage)icon;
- (UIImageSymbolConfiguration)iconConfiguration;
- (id)diffableIdentifier;
- (id)inboxItemsForTeam:(id)a3 withSortDescriptors:(id)a4;
@end

@implementation FBAInbox

- (UIImageSymbolConfiguration)iconConfiguration
{
  if (qword_10010AFC8 != -1)
  {
    sub_100092FA8();
  }

  v3 = qword_10010AFC0;

  return v3;
}

- (UIImage)icon
{
  v3 = [(FBAInbox *)self iconSystemImageName];
  v4 = [UIImage systemImageNamed:v3];
  v5 = [(FBAInbox *)self iconConfiguration];
  v6 = [v4 imageWithConfiguration:v5];

  return v6;
}

- (id)inboxItemsForTeam:(id)a3 withSortDescriptors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[FBKData sharedInstance];
  v9 = [v8 currentUser];

  if (v9)
  {
    v10 = [(FBAInbox *)self predicateForTeam:v6];
    v11 = [v9 contentItems];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001840C;
    v16[3] = &unk_1000DEDC0;
    v17 = v10;
    v12 = v10;
    v13 = [v11 ded_selectItemsPassingTest:v16];

    v14 = [v13 sortedArrayUsingDescriptors:v7];
  }

  else
  {
    v14 = &__NSArray0__struct;
  }

  return v14;
}

- (id)diffableIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end