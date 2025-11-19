@interface MFSecureMIMEContactHeaderAction
- (MFSecureMIMEContactHeaderAction)initWithTitle:(id)a3 target:(id)a4 selector:(SEL)a5;
- (id)target;
@end

@implementation MFSecureMIMEContactHeaderAction

- (MFSecureMIMEContactHeaderAction)initWithTitle:(id)a3 target:(id)a4 selector:(SEL)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = MFSecureMIMEContactHeaderAction;
  v10 = [(MFSecureMIMEContactHeaderAction *)&v14 init];
  if (v10)
  {
    v11 = [v8 copy];
    title = v10->_title;
    v10->_title = v11;

    objc_storeWeak(&v10->_target, v9);
    v10->_actionSelector = a5;
  }

  return v10;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end