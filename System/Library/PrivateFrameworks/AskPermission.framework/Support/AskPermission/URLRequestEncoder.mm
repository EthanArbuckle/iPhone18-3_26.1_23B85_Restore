@interface URLRequestEncoder
- (URLRequestEncoder)init;
- (id)_processInfo;
@end

@implementation URLRequestEncoder

- (URLRequestEncoder)init
{
  v6.receiver = self;
  v6.super_class = URLRequestEncoder;
  v2 = [(URLRequestEncoder *)&v6 init];
  if (v2)
  {
    v3 = +[AMSBag sharedBag];
    [(URLRequestEncoder *)v2 setBag:v3];

    _processInfo = [(URLRequestEncoder *)v2 _processInfo];
    [(URLRequestEncoder *)v2 setClientInfo:_processInfo];
  }

  return v2;
}

- (id)_processInfo
{
  v2 = +[AMSProcessInfo currentProcess];
  [v2 setAccountMediaType:AMSAccountMediaTypeAppStore];

  return v2;
}

@end