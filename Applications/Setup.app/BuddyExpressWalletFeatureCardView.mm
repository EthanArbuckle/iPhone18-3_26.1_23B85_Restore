@interface BuddyExpressWalletFeatureCardView
- (BuddyExpressWalletFeatureCardView)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon;
- (CGSize)setupAssistantCredentialCardArtSize;
- (void)addCardCell:(id)cell;
- (void)setupAssistantCredentialUpdatedCardArt:(id)art;
@end

@implementation BuddyExpressWalletFeatureCardView

- (BuddyExpressWalletFeatureCardView)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v15 = 0;
  objc_storeStrong(&v15, subtitle);
  v14 = 0;
  objc_storeStrong(&v14, icon);
  v7 = selfCopy;
  selfCopy = 0;
  v13.receiver = v7;
  v13.super_class = BuddyExpressWalletFeatureCardView;
  v8 = [(BuddyExpressSetupFeatureCardView *)&v13 initWithTitle:location[0] subtitle:v15 icon:v14];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    v9 = +[NSMutableDictionary dictionary];
    v10 = *(selfCopy + 7);
    *(selfCopy + 7) = v9;
  }

  v11 = selfCopy;
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (void)addCardCell:(id)cell
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cell);
  uniqueIdentifier = [location[0] uniqueIdentifier];

  if (uniqueIdentifier)
  {
    v4 = location[0];
    featureCardCellMap = [(BuddyExpressWalletFeatureCardView *)selfCopy featureCardCellMap];
    uniqueIdentifier2 = [location[0] uniqueIdentifier];
    [(NSMutableDictionary *)featureCardCellMap setObject:v4 forKeyedSubscript:uniqueIdentifier2];
  }

  v7.receiver = selfCopy;
  v7.super_class = BuddyExpressWalletFeatureCardView;
  [(BuddyExpressSetupFeatureCardView *)&v7 addCardCell:location[0]];
  objc_storeStrong(location, 0);
}

- (CGSize)setupAssistantCredentialCardArtSize
{
  v2 = sub_1000DBD18();
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setupAssistantCredentialUpdatedCardArt:(id)art
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, art);
  featureCardCellMap = [(BuddyExpressWalletFeatureCardView *)selfCopy featureCardCellMap];
  uniqueIdentifier = [location[0] uniqueIdentifier];
  v7 = [(NSMutableDictionary *)featureCardCellMap objectForKeyedSubscript:uniqueIdentifier];

  if (v7)
  {
    accessoryView = [v7 accessoryView];
    passSnapshot = [location[0] passSnapshot];
    [accessoryView setImage:passSnapshot];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

@end