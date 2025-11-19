@interface TKTokenPasswordAuthOperation
- (TKTokenPasswordAuthOperation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)importOperation:(id)a3;
@end

@implementation TKTokenPasswordAuthOperation

- (TKTokenPasswordAuthOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = TKTokenPasswordAuthOperation;
  v5 = [(TKTokenAuthOperation *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_password);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    password = v5->_password;
    v5->_password = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_localizedPasswordLabel);
    v12 = [v4 decodeObjectOfClass:v10 forKey:v11];
    localizedPasswordLabel = v5->_localizedPasswordLabel;
    v5->_localizedPasswordLabel = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = TKTokenPasswordAuthOperation;
  v4 = a3;
  [(TKTokenAuthOperation *)&v9 encodeWithCoder:v4];
  password = self->_password;
  v6 = NSStringFromSelector(sel_password);
  [v4 encodeObject:password forKey:{v6, v9.receiver, v9.super_class}];

  localizedPasswordLabel = self->_localizedPasswordLabel;
  v8 = NSStringFromSelector(sel_localizedPasswordLabel);
  [v4 encodeObject:localizedPasswordLabel forKey:v8];
}

- (void)importOperation:(id)a3
{
  v9.receiver = self;
  v9.super_class = TKTokenPasswordAuthOperation;
  v4 = a3;
  [(TKTokenAuthOperation *)&v9 importOperation:v4];
  v5 = [v4 localizedPasswordLabel];
  localizedPasswordLabel = self->_localizedPasswordLabel;
  self->_localizedPasswordLabel = v5;

  v7 = [v4 password];

  password = self->_password;
  self->_password = v7;
}

@end