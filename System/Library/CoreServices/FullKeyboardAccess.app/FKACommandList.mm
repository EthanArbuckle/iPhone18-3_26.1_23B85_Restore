@interface FKACommandList
+ (id)listWithTitle:(id)title items:(id)items footerText:(id)text;
- (FKACommandList)initWithTitle:(id)title items:(id)items footerText:(id)text;
@end

@implementation FKACommandList

+ (id)listWithTitle:(id)title items:(id)items footerText:(id)text
{
  textCopy = text;
  itemsCopy = items;
  titleCopy = title;
  v11 = [[self alloc] initWithTitle:titleCopy items:itemsCopy footerText:textCopy];

  return v11;
}

- (FKACommandList)initWithTitle:(id)title items:(id)items footerText:(id)text
{
  titleCopy = title;
  itemsCopy = items;
  textCopy = text;
  v17.receiver = self;
  v17.super_class = FKACommandList;
  v11 = [(FKACommandList *)&v17 init];
  if (v11)
  {
    v12 = [titleCopy copy];
    title = v11->_title;
    v11->_title = v12;

    objc_storeStrong(&v11->_items, items);
    v14 = [textCopy copy];
    footerText = v11->_footerText;
    v11->_footerText = v14;
  }

  return v11;
}

@end