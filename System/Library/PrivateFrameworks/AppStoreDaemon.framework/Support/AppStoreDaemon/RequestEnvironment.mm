@interface RequestEnvironment
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RequestEnvironment

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[RequestEnvironment allocWithZone:](RequestEnvironment init];
  v6 = [(AMSProcessInfo *)self->_clientInfo copyWithZone:zone];
  clientInfo = v5->_clientInfo;
  v5->_clientInfo = v6;

  objc_storeStrong(&v5->_logKey, self->_logKey);
  v8 = [self->_reconfigureRequestHandler copyWithZone:zone];
  reconfigureRequestHandler = v5->_reconfigureRequestHandler;
  v5->_reconfigureRequestHandler = v8;

  objc_storeStrong(&v5->_requestPresenter, self->_requestPresenter);
  return v5;
}

@end