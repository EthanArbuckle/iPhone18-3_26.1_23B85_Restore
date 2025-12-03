@interface MFSecureMIMEContactHeaderAction
- (MFSecureMIMEContactHeaderAction)initWithTitle:(id)title target:(id)target selector:(SEL)selector;
- (id)target;
@end

@implementation MFSecureMIMEContactHeaderAction

- (MFSecureMIMEContactHeaderAction)initWithTitle:(id)title target:(id)target selector:(SEL)selector
{
  titleCopy = title;
  targetCopy = target;
  v14.receiver = self;
  v14.super_class = MFSecureMIMEContactHeaderAction;
  v10 = [(MFSecureMIMEContactHeaderAction *)&v14 init];
  if (v10)
  {
    v11 = [titleCopy copy];
    title = v10->_title;
    v10->_title = v11;

    objc_storeWeak(&v10->_target, targetCopy);
    v10->_actionSelector = selector;
  }

  return v10;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end