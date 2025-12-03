@interface CNContactCustomViewConfiguration
- (CNContactCustomViewConfiguration)initWithAttributedTitle:(id)title;
- (void)setTrailingDisclosureAccesoryWithSystemImageName:(id)name target:(id)target selector:(SEL)selector;
@end

@implementation CNContactCustomViewConfiguration

- (void)setTrailingDisclosureAccesoryWithSystemImageName:(id)name target:(id)target selector:(SEL)selector
{
  objc_storeStrong(&self->_trailingDisclosureSystemImageName, name);
  nameCopy = name;
  targetCopy = target;
  v10 = [CNContactAction contactActionWithTitle:@"CustomViewDisclosure" target:targetCopy selector:selector];

  trailingDisclosureAction = self->_trailingDisclosureAction;
  self->_trailingDisclosureAction = v10;
}

- (CNContactCustomViewConfiguration)initWithAttributedTitle:(id)title
{
  titleCopy = title;
  v10.receiver = self;
  v10.super_class = CNContactCustomViewConfiguration;
  v5 = [(CNContactCustomViewConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [titleCopy copy];
    title = v5->_title;
    v5->_title = v6;

    v8 = v5;
  }

  return v5;
}

@end