@interface AAFamilyDetailsRequest
- (AAFamilyDetailsRequest)initWithAccount:(id)account;
- (id)urlString;
@end

@implementation AAFamilyDetailsRequest

- (AAFamilyDetailsRequest)initWithAccount:(id)account
{
  accountCopy = account;
  accountStore = [accountCopy accountStore];
  v6 = [accountStore aida_accountForiCloudAccount:accountCopy];
  v7 = [(AAFamilyRequest *)self initWithAppleAccount:accountCopy grandSlamAccount:v6 accountStore:accountStore];

  return v7;
}

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  getFamilyDetailsURL = [v2 getFamilyDetailsURL];

  return getFamilyDetailsURL;
}

@end