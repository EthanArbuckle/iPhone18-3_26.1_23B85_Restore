@interface BuddyLocaleComposite
- (void)setLanguage:(id)language;
@end

@implementation BuddyLocaleComposite

- (void)setLanguage:(id)language
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, language);
  objc_storeStrong(&selfCopy->_language, location[0]);
  dataSource = [(BuddyLocaleComposite *)selfCopy dataSource];

  if (dataSource)
  {
    v5 = location[0];
    dataSource2 = [(BuddyLocaleComposite *)selfCopy dataSource];
    [(BYLocaleDataSource *)dataSource2 setLanguage:v5];
  }

  else
  {
    v4 = [BYLocaleDataSource newWithLanguage:location[0]];
    [(BuddyLocaleComposite *)selfCopy setDataSource:v4];
  }

  objc_storeStrong(location, 0);
}

@end