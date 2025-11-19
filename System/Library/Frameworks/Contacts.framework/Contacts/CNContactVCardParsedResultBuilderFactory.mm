@interface CNContactVCardParsedResultBuilderFactory
- (id)makeBuilder;
@end

@implementation CNContactVCardParsedResultBuilderFactory

- (id)makeBuilder
{
  v2 = objc_alloc_init(CNContactVCardParsedResultBuilder);

  return v2;
}

@end