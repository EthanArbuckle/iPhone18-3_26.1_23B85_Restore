@interface CNContactCustomViewConfiguration
- (CNContactCustomViewConfiguration)initWithAttributedTitle:(id)a3;
- (void)setTrailingDisclosureAccesoryWithSystemImageName:(id)a3 target:(id)a4 selector:(SEL)a5;
@end

@implementation CNContactCustomViewConfiguration

- (void)setTrailingDisclosureAccesoryWithSystemImageName:(id)a3 target:(id)a4 selector:(SEL)a5
{
  objc_storeStrong(&self->_trailingDisclosureSystemImageName, a3);
  v12 = a3;
  v9 = a4;
  v10 = [CNContactAction contactActionWithTitle:@"CustomViewDisclosure" target:v9 selector:a5];

  trailingDisclosureAction = self->_trailingDisclosureAction;
  self->_trailingDisclosureAction = v10;
}

- (CNContactCustomViewConfiguration)initWithAttributedTitle:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNContactCustomViewConfiguration;
  v5 = [(CNContactCustomViewConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    title = v5->_title;
    v5->_title = v6;

    v8 = v5;
  }

  return v5;
}

@end