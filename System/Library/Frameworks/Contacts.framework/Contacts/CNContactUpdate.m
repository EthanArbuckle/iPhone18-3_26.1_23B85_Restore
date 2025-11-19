@interface CNContactUpdate
+ (id)updateMultiValueWithDiff:(id)a3 property:(id)a4;
+ (id)updateWithValue:(id)a3 property:(id)a4;
@end

@implementation CNContactUpdate

+ (id)updateWithValue:(id)a3 property:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CNContactKeyValueUpdate alloc] initWithProperty:v5 value:v6];

  return v7;
}

+ (id)updateMultiValueWithDiff:(id)a3 property:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[CNContactMultiValueDiffUpdate alloc] initWithProperty:v5 diff:v6];

  return v7;
}

@end