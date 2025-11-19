@interface AAUIServiceSignInConfiguration
- (AAUIServiceSignInConfiguration)init;
- (AAUIServiceSignInControllerDelegate)serviceDelegate;
- (void)setServiceTypes:(id)a3;
@end

@implementation AAUIServiceSignInConfiguration

- (AAUIServiceSignInConfiguration)init
{
  v5.receiver = self;
  v5.super_class = AAUIServiceSignInConfiguration;
  v2 = [(AAUIServiceSignInConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AAUIServiceSignInConfiguration *)v2 setCanEditUsername:1];
    [(AAUIServiceSignInConfiguration *)v3 setAidaOperationUIPermissions:1];
    [(AAUIServiceSignInConfiguration *)v3 setPrivacyLinkIdentifiers:&unk_1F44C06D8];
  }

  return v3;
}

- (void)setServiceTypes:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_serviceTypes, a3);
  if ([v6 count] == 1)
  {
    v5 = [v6 firstObject];
    [(AAUIServiceSignInConfiguration *)self setServiceType:v5];
  }

  else
  {
    [(AAUIServiceSignInConfiguration *)self setServiceType:0];
  }
}

- (AAUIServiceSignInControllerDelegate)serviceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->serviceDelegate);

  return WeakRetained;
}

@end