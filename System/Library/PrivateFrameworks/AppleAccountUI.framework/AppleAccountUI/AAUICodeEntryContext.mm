@interface AAUICodeEntryContext
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AAUICodeEntryContext

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(NSString *)self->_promptTitle copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSString *)self->_promptMessage copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSString *)self->_escapeTitle copy];
  v10 = v4[3];
  v4[3] = v9;

  v11 = [self->_escapeAction copy];
  v12 = v4[4];
  v4[4] = v11;

  v13 = [self->_codeEnteredAction copy];
  v14 = v4[5];
  v4[5] = v13;

  v15 = [self->_cancelEntryAction copy];
  v16 = v4[6];
  v4[6] = v15;

  return v4;
}

@end