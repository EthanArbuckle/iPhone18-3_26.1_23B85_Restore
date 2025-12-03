@interface CNContactUpdate
+ (id)updateMultiValueWithDiff:(id)diff property:(id)property;
+ (id)updateWithValue:(id)value property:(id)property;
@end

@implementation CNContactUpdate

+ (id)updateWithValue:(id)value property:(id)property
{
  propertyCopy = property;
  valueCopy = value;
  v7 = [[CNContactKeyValueUpdate alloc] initWithProperty:propertyCopy value:valueCopy];

  return v7;
}

+ (id)updateMultiValueWithDiff:(id)diff property:(id)property
{
  propertyCopy = property;
  diffCopy = diff;
  v7 = [[CNContactMultiValueDiffUpdate alloc] initWithProperty:propertyCopy diff:diffCopy];

  return v7;
}

@end