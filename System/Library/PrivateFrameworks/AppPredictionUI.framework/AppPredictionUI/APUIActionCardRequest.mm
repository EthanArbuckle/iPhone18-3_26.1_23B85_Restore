@interface APUIActionCardRequest
- (APUIActionCardRequest)initWithCardViewConfig:(id)a3;
@end

@implementation APUIActionCardRequest

- (APUIActionCardRequest)initWithCardViewConfig:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = APUIActionCardRequest;
  v6 = [(CRSCardRequest *)&v9 initWithContent:0 format:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cardViewConfig, a3);
  }

  return v7;
}

@end