@interface FBAInbox
- (UIImage)icon;
- (UIImageSymbolConfiguration)iconConfiguration;
- (id)diffableIdentifier;
- (id)inboxItemsForTeam:(id)team withSortDescriptors:(id)descriptors;
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
  iconSystemImageName = [(FBAInbox *)self iconSystemImageName];
  v4 = [UIImage systemImageNamed:iconSystemImageName];
  iconConfiguration = [(FBAInbox *)self iconConfiguration];
  v6 = [v4 imageWithConfiguration:iconConfiguration];

  return v6;
}

- (id)inboxItemsForTeam:(id)team withSortDescriptors:(id)descriptors
{
  teamCopy = team;
  descriptorsCopy = descriptors;
  v8 = +[FBKData sharedInstance];
  currentUser = [v8 currentUser];

  if (currentUser)
  {
    v10 = [(FBAInbox *)self predicateForTeam:teamCopy];
    contentItems = [currentUser contentItems];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001840C;
    v16[3] = &unk_1000DEDC0;
    v17 = v10;
    v12 = v10;
    v13 = [contentItems ded_selectItemsPassingTest:v16];

    v14 = [v13 sortedArrayUsingDescriptors:descriptorsCopy];
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