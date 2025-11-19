@interface AAAppleTVRequest
- (AAAppleTVRequest)initWithAccount:(id)a3;
@end

@implementation AAAppleTVRequest

- (AAAppleTVRequest)initWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AAAppleTVRequest;
  v6 = [(AAAppleTVRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

@end