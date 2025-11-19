@interface RequestEnvironment
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RequestEnvironment

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[RequestEnvironment allocWithZone:](RequestEnvironment init];
  v6 = [(AMSProcessInfo *)self->_clientInfo copyWithZone:a3];
  clientInfo = v5->_clientInfo;
  v5->_clientInfo = v6;

  objc_storeStrong(&v5->_logKey, self->_logKey);
  v8 = [self->_reconfigureRequestHandler copyWithZone:a3];
  reconfigureRequestHandler = v5->_reconfigureRequestHandler;
  v5->_reconfigureRequestHandler = v8;

  objc_storeStrong(&v5->_requestPresenter, self->_requestPresenter);
  return v5;
}

@end