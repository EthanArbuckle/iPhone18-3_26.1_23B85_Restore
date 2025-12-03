@interface AMSUIDAirplaneModeInquiry
- (AMSUIDAirplaneModeInquiry)init;
- (AMSUIDAirplaneModeInquiryDelegate)delegate;
- (BOOL)isEnabled;
- (void)airplaneModeChanged;
@end

@implementation AMSUIDAirplaneModeInquiry

- (AMSUIDAirplaneModeInquiry)init
{
  v6.receiver = self;
  v6.super_class = AMSUIDAirplaneModeInquiry;
  v2 = [(AMSUIDAirplaneModeInquiry *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(RadiosPreferences);
    radiosPreferences = v2->_radiosPreferences;
    v2->_radiosPreferences = v3;

    [(RadiosPreferences *)v2->_radiosPreferences setDelegate:v2];
  }

  return v2;
}

- (BOOL)isEnabled
{
  radiosPreferences = [(AMSUIDAirplaneModeInquiry *)self radiosPreferences];
  airplaneMode = [radiosPreferences airplaneMode];

  return airplaneMode;
}

- (void)airplaneModeChanged
{
  delegate = [(AMSUIDAirplaneModeInquiry *)self delegate];
  [delegate airplaneModeInquiryDidObserveChange:self];
}

- (AMSUIDAirplaneModeInquiryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end