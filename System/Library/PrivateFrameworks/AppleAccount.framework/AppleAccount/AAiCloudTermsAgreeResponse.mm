@interface AAiCloudTermsAgreeResponse
- (NSDictionary)acceptedTermsInfo;
@end

@implementation AAiCloudTermsAgreeResponse

- (NSDictionary)acceptedTermsInfo
{
  acceptedTermsInfo = self->_acceptedTermsInfo;
  if (!acceptedTermsInfo)
  {
    httpResponse = [(AAResponse *)self httpResponse];
    ak_acceptedTermsInfo = [httpResponse ak_acceptedTermsInfo];
    v6 = self->_acceptedTermsInfo;
    self->_acceptedTermsInfo = ak_acceptedTermsInfo;

    acceptedTermsInfo = self->_acceptedTermsInfo;
  }

  return acceptedTermsInfo;
}

@end