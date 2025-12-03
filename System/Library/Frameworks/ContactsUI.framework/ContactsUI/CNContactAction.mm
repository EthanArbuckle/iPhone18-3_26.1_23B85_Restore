@interface CNContactAction
+ (id)contactActionWithTitle:(id)title target:(id)target selector:(SEL)selector destructive:(BOOL)destructive;
- (CNContactAction)initWithContact:(id)contact;
- (CNContactAction)initWithTitle:(id)title target:(id)target selector:(SEL)selector destructive:(BOOL)destructive;
- (CNContactActionDelegate)delegate;
- (CNMutableContact)mutableContact;
- (SEL)selector;
- (id)description;
- (void)performActionWithSender:(id)sender;
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
  target = [(CNContactAction *)self target];
  if (target && (v4 = target, v5 = [(CNContactAction *)self selector], v4, v5))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    title = [(CNContactAction *)self title];
    target2 = [(CNContactAction *)self target];
    v10 = objc_opt_class();
    v11 = NSStringFromSelector([(CNContactAction *)self selector]);
    v12 = [v6 stringWithFormat:@"<%@ %p> %@: -[%@ %@]", v7, self, title, v10, v11];
  }

  else
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    title = [(CNContactAction *)self contact];
    v12 = [v13 stringWithFormat:@"<%@ %p> : %@", v14, self, title];
  }

  return v12;
}

- (void)performActionWithSender:(id)sender
{
  senderCopy = sender;
  target = [(CNContactAction *)self target];
  if (target)
  {
    v5 = target;
    selector = [(CNContactAction *)self selector];

    if (selector)
    {
      target2 = [(CNContactAction *)self target];
      [target2 -[CNContactAction selector](self];
    }
  }

  delegate = [(CNContactAction *)self delegate];
  [delegate actionDidFinish:self];
}

- (CNMutableContact)mutableContact
{
  contact = [(CNContactAction *)self contact];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    contact2 = [(CNContactAction *)self contact];
  }

  else
  {
    contact2 = 0;
  }

  return contact2;
}

- (CNContactAction)initWithTitle:(id)title target:(id)target selector:(SEL)selector destructive:(BOOL)destructive
{
  titleCopy = title;
  targetCopy = target;
  v17.receiver = self;
  v17.super_class = CNContactAction;
  v12 = [(CNContactAction *)&v17 init];
  if (v12)
  {
    v13 = [titleCopy copy];
    title = v12->_title;
    v12->_title = v13;

    objc_storeStrong(&v12->_target, target);
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v12->_selector = selectorCopy;
    v12->_destructive = destructive;
    v12->_showBackgroundPlatter = 1;
  }

  return v12;
}

- (CNContactAction)initWithContact:(id)contact
{
  contactCopy = contact;
  v9.receiver = self;
  v9.super_class = CNContactAction;
  v6 = [(CNContactAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contact, contact);
    v7->_showBackgroundPlatter = 1;
  }

  return v7;
}

+ (id)contactActionWithTitle:(id)title target:(id)target selector:(SEL)selector destructive:(BOOL)destructive
{
  destructiveCopy = destructive;
  targetCopy = target;
  titleCopy = title;
  v11 = [[CNContactAction alloc] initWithTitle:titleCopy target:targetCopy selector:selector destructive:destructiveCopy];

  return v11;
}

@end