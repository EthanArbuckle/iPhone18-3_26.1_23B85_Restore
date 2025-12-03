@interface NSArray
- (id)mss_specifiersWithIdentifiers:(id)identifiers;
@end

@implementation NSArray

- (id)mss_specifiersWithIdentifiers:(id)identifiers
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_120C8;
  v8[3] = &unk_2CBE8;
  identifiersCopy = identifiers;
  v4 = identifiersCopy;
  v5 = [NSPredicate predicateWithBlock:v8];
  v6 = [(NSArray *)self filteredArrayUsingPredicate:v5];

  return v6;
}

@end