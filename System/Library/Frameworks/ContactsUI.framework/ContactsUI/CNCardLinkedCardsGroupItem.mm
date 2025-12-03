@interface CNCardLinkedCardsGroupItem
- (CNCardLinkedCardsGroupItem)initWithContact:(id)contact;
@end

@implementation CNCardLinkedCardsGroupItem

- (CNCardLinkedCardsGroupItem)initWithContact:(id)contact
{
  contactCopy = contact;
  v9.receiver = self;
  v9.super_class = CNCardLinkedCardsGroupItem;
  v6 = [(CNCardLinkedCardsGroupItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contact, contact);
  }

  return v7;
}

@end