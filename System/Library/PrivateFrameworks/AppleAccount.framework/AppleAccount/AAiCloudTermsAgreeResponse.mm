@interface AAiCloudTermsAgreeResponse
- (NSDictionary)acceptedTermsInfo;
@end

@implementation AAiCloudTermsAgreeResponse

- (NSDictionary)acceptedTermsInfo
{
  acceptedTermsInfo = self->_acceptedTermsInfo;
  if (!acceptedTermsInfo)
  {
    v4 = [(AAResponse *)self httpResponse];
    v5 = [v4 ak_acceptedTermsInfo];
    v6 = self->_acceptedTermsInfo;
    self->_acceptedTermsInfo = v5;

    acceptedTermsInfo = self->_acceptedTermsInfo;
  }

  return acceptedTermsInfo;
}

@end