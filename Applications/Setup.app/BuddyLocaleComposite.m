@interface BuddyLocaleComposite
- (void)setLanguage:(id)a3;
@end

@implementation BuddyLocaleComposite

- (void)setLanguage:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v8->_language, location[0]);
  v3 = [(BuddyLocaleComposite *)v8 dataSource];

  if (v3)
  {
    v5 = location[0];
    v6 = [(BuddyLocaleComposite *)v8 dataSource];
    [(BYLocaleDataSource *)v6 setLanguage:v5];
  }

  else
  {
    v4 = [BYLocaleDataSource newWithLanguage:location[0]];
    [(BuddyLocaleComposite *)v8 setDataSource:v4];
  }

  objc_storeStrong(location, 0);
}

@end