@interface EXAuditToken
+ ($115C4C562B26FF47E01F9F4EA65B5887)auditTokenForCurrentProcess;
- (BOOL)isEqual:(id)a3;
- (EXAuditToken)initWithAuditToken:(id *)a3;
- (EXAuditToken)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation EXAuditToken

+ ($115C4C562B26FF47E01F9F4EA65B5887)auditTokenForCurrentProcess
{
  if (_EXAuditTokenForCurrentProcess_once != -1)
  {
    _EXAuditTokenForCurrentProcess_cold_1();
  }

  v4 = *(_EXAuditTokenForCurrentProcess_result + 16);
  *retstr->var0 = *_EXAuditTokenForCurrentProcess_result;
  *&retstr->var0[4] = v4;
  return result;
}

- (EXAuditToken)initWithAuditToken:(id *)a3
{
  v6.receiver = self;
  v6.super_class = EXAuditToken;
  result = [(EXAuditToken *)&v6 init];
  if (result)
  {
    v5 = *a3->var0;
    *&result->_auditToken.val[4] = *&a3->var0[4];
    *result->_auditToken.val = v5;
  }

  return result;
}

- (EXAuditToken)initWithCoder:(id)a3
{
  v11 = 0;
  v5 = a3;
  v6 = [a3 decodeBytesForKey:@"auditToken" returnedLength:&v11];
  v7 = 0;
  if (v6 && v11 == 32)
  {
    v8 = v6[1];
    v10[0] = *v6;
    v10[1] = v8;
    self = [(EXAuditToken *)self initWithAuditToken:v10];
    v7 = self;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = *&self->_auditToken.val[4];
  v7[0] = *self->_auditToken.val;
  v7[1] = v5;
  return [v4 initWithAuditToken:v7];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = self == v4 || *self->_auditToken.val == *v4->_auditToken.val && *&self->_auditToken.val[2] == *&v4->_auditToken.val[2] && *&self->_auditToken.val[4] == *&v4->_auditToken.val[4] && *&self->_auditToken.val[6] == *&v4->_auditToken.val[6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = *&self->_auditToken.val[4];
  *v7.val = *self->_auditToken.val;
  *&v7.val[4] = v3;
  v4 = audit_token_to_pidversion(&v7);
  v5 = *&self->_auditToken.val[4];
  *v7.val = *self->_auditToken.val;
  *&v7.val[4] = v5;
  return audit_token_to_pid(&v7) ^ v4;
}

@end