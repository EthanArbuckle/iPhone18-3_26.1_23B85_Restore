@interface CNCardLinkedCardsGroupItem
- (CNCardLinkedCardsGroupItem)initWithContact:(id)a3;
@end

@implementation CNCardLinkedCardsGroupItem

- (CNCardLinkedCardsGroupItem)initWithContact:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNCardLinkedCardsGroupItem;
  v6 = [(CNCardLinkedCardsGroupItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contact, a3);
  }

  return v7;
}

@end