@interface _WKWebPushDaemonConnectionConfiguration
- ($115C4C562B26FF47E01F9F4EA65B5887)hostApplicationAuditToken;
- (_WKWebPushDaemonConnectionConfiguration)init;
- (void)setHostApplicationAuditToken:(id *)token;
@end

@implementation _WKWebPushDaemonConnectionConfiguration

- (_WKWebPushDaemonConnectionConfiguration)init
{
  v3.receiver = self;
  v3.super_class = _WKWebPushDaemonConnectionConfiguration;
  result = [(_WKWebPushDaemonConnectionConfiguration *)&v3 init];
  if (result)
  {
    result->_machServiceName = @"com.apple.webkit.webpushd.service";
  }

  return result;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)hostApplicationAuditToken
{
  v3 = *&self[1].var0[4];
  *retstr->var0 = *self[1].var0;
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setHostApplicationAuditToken:(id *)token
{
  v3 = *&token->var0[4];
  *self->_hostApplicationAuditToken.val = *token->var0;
  *&self->_hostApplicationAuditToken.val[4] = v3;
}

@end