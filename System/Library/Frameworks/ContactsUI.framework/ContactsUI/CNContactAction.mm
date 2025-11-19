@interface CNContactAction
+ (id)contactActionWithTitle:(id)a3 target:(id)a4 selector:(SEL)a5 destructive:(BOOL)a6;
- (CNContactAction)initWithContact:(id)a3;
- (CNContactAction)initWithTitle:(id)a3 target:(id)a4 selector:(SEL)a5 destructive:(BOOL)a6;
- (CNContactActionDelegate)delegate;
- (CNMutableContact)mutableContact;
- (SEL)selector;
- (id)description;
- (void)performActionWithSender:(id)a3;
@end

@implementation CNContactAction

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (CNContactActionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)description
{
  v3 = [(CNContactAction *)self target];
  if (v3 && (v4 = v3, v5 = [(CNContactAction *)self selector], v4, v5))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = [(CNContactAction *)self title];
    v9 = [(CNContactAction *)self target];
    v10 = objc_opt_class();
    v11 = NSStringFromSelector([(CNContactAction *)self selector]);
    v12 = [v6 stringWithFormat:@"<%@ %p> %@: -[%@ %@]", v7, self, v8, v10, v11];
  }

  else
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v8 = [(CNContactAction *)self contact];
    v12 = [v13 stringWithFormat:@"<%@ %p> : %@", v14, self, v8];
  }

  return v12;
}

- (void)performActionWithSender:(id)a3
{
  v9 = a3;
  v4 = [(CNContactAction *)self target];
  if (v4)
  {
    v5 = v4;
    v6 = [(CNContactAction *)self selector];

    if (v6)
    {
      v7 = [(CNContactAction *)self target];
      [v7 -[CNContactAction selector](self];
    }
  }

  v8 = [(CNContactAction *)self delegate];
  [v8 actionDidFinish:self];
}

- (CNMutableContact)mutableContact
{
  v3 = [(CNContactAction *)self contact];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(CNContactAction *)self contact];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CNContactAction)initWithTitle:(id)a3 target:(id)a4 selector:(SEL)a5 destructive:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v17.receiver = self;
  v17.super_class = CNContactAction;
  v12 = [(CNContactAction *)&v17 init];
  if (v12)
  {
    v13 = [v10 copy];
    title = v12->_title;
    v12->_title = v13;

    objc_storeStrong(&v12->_target, a4);
    if (a5)
    {
      v15 = a5;
    }

    else
    {
      v15 = 0;
    }

    v12->_selector = v15;
    v12->_destructive = a6;
    v12->_showBackgroundPlatter = 1;
  }

  return v12;
}

- (CNContactAction)initWithContact:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNContactAction;
  v6 = [(CNContactAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contact, a3);
    v7->_showBackgroundPlatter = 1;
  }

  return v7;
}

+ (id)contactActionWithTitle:(id)a3 target:(id)a4 selector:(SEL)a5 destructive:(BOOL)a6
{
  v6 = a6;
  v9 = a4;
  v10 = a3;
  v11 = [[CNContactAction alloc] initWithTitle:v10 target:v9 selector:a5 destructive:v6];

  return v11;
}

@end