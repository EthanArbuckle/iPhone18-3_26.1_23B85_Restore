@interface BKPreferredLayoutCache
- (unint64_t)preferredDirectoryTypeForBook:(id)book;
- (void)setPreferredDirectoryType:(unint64_t)type forBook:(id)book;
@end

@implementation BKPreferredLayoutCache

- (unint64_t)preferredDirectoryTypeForBook:(id)book
{
  bookCopy = book;
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 dictionaryForKey:@"_BKFixedLayoutPreferredTOCStyle"];
  v6 = sub_D2CEC(bookCopy);

  v7 = [v5 objectForKeyedSubscript:v6];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setPreferredDirectoryType:(unint64_t)type forBook:(id)book
{
  bookCopy = book;
  v12 = +[NSUserDefaults standardUserDefaults];
  v6 = [v12 dictionaryForKey:@"_BKFixedLayoutPreferredTOCStyle"];
  v7 = v6;
  if (!v6)
  {
    v6 = &__NSDictionary0__struct;
  }

  v8 = [v6 mutableCopy];

  v9 = sub_D2CEC(bookCopy);

  v10 = [NSNumber numberWithUnsignedInteger:type];
  [v8 setObject:v10 forKeyedSubscript:v9];

  v11 = [v8 copy];
  [v12 setValue:v11 forKey:@"_BKFixedLayoutPreferredTOCStyle"];
}

@end