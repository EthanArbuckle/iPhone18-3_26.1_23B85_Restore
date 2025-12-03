@interface CNUICancelBarButtonItem
- (CNUICancelBarButtonItem)initWithDidTapHandler:(id)handler;
- (void)didTap:(id)tap;
@end

@implementation CNUICancelBarButtonItem

- (void)didTap:(id)tap
{
  didTapHandler = [(CNUICancelBarButtonItem *)self didTapHandler];

  if (didTapHandler)
  {
    didTapHandler2 = [(CNUICancelBarButtonItem *)self didTapHandler];
    didTapHandler2[2]();
  }
}

- (CNUICancelBarButtonItem)initWithDidTapHandler:(id)handler
{
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = CNUICancelBarButtonItem;
  v5 = [(CNUICancelBarButtonItem *)&v12 init];
  if (v5)
  {
    v6 = CNContactsUIBundle();
    v7 = [v6 localizedStringForKey:@"CANCEL" value:&stru_1F0CE7398 table:@"Localized"];
    [(CNUICancelBarButtonItem *)v5 setTitle:v7];

    [(CNUICancelBarButtonItem *)v5 setStyle:2];
    [(CNUICancelBarButtonItem *)v5 setTarget:v5];
    [(CNUICancelBarButtonItem *)v5 setAction:sel_didTap_];
    v8 = _Block_copy(handlerCopy);
    didTapHandler = v5->_didTapHandler;
    v5->_didTapHandler = v8;

    v10 = v5;
  }

  return v5;
}

@end