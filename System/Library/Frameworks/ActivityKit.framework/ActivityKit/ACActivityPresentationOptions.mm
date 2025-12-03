@interface ACActivityPresentationOptions
- (ACActivityPresentationOptions)initWithDestinations:(id)destinations;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ACActivityPresentationOptions

- (id)_init
{
  v6.receiver = self;
  v6.super_class = ACActivityPresentationOptions;
  v2 = [(ACActivityPresentationOptions *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_isUserDismissalAllowedOnLockScreen = 65792;
    *&v2->_isActionButtonInitiated = 0;
    destinations = v2->_destinations;
    v2->_destinations = MEMORY[0x1E695E0F0];

    v3->_authorizationOptionsType = 3;
  }

  return v3;
}

- (ACActivityPresentationOptions)initWithDestinations:(id)destinations
{
  destinationsCopy = destinations;
  v9.receiver = self;
  v9.super_class = ACActivityPresentationOptions;
  v6 = [(ACActivityPresentationOptions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_destinations, destinations);
    *&v7->_isUserDismissalAllowedOnLockScreen = 65792;
    *&v7->_isActionButtonInitiated = 0;
    v7->_authorizationOptionsType = 3;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ACActivityPresentationOptions);
  [(ACActivityPresentationOptions *)v4 setUserDismissalAllowedOnLockScreen:self->_isUserDismissalAllowedOnLockScreen];
  [(ACActivityPresentationOptions *)v4 setShouldSuppressAlertContentOnLockScreen:self->_shouldSuppressAlertContentOnLockScreen];
  [(ACActivityPresentationOptions *)v4 setShouldSuppressAlertContentOnHostApplication:self->_shouldSuppressAlertContentOnHostApplication];
  [(ACActivityPresentationOptions *)v4 setShowsAuthorizationOptions:self->_showsAuthorizationOptions];
  [(ACActivityPresentationOptions *)v4 setActionButtonInitiated:self->_isActionButtonInitiated];
  [(ACActivityPresentationOptions *)v4 setShouldShowSystemAperture:self->_shouldShowSystemAperture];
  [(ACActivityPresentationOptions *)v4 setDestinations:self->_destinations];
  [(ACActivityPresentationOptions *)v4 setAuthorizationOptionsType:self->_authorizationOptionsType];
  return v4;
}

@end