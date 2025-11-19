@interface AMSUIAirplaneModeInquiry
- (AMSUIAirplaneModeInquiry)init;
- (AMSUIAirplaneModeInquiryDelegate)delegate;
- (BOOL)isEnabled;
- (void)airplaneModeChanged;
@end

@implementation AMSUIAirplaneModeInquiry

- (AMSUIAirplaneModeInquiry)init
{
  v6.receiver = self;
  v6.super_class = AMSUIAirplaneModeInquiry;
  v2 = [(AMSUIAirplaneModeInquiry *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E698B6B0]);
    radiosPreferences = v2->_radiosPreferences;
    v2->_radiosPreferences = v3;

    [(RadiosPreferences *)v2->_radiosPreferences setDelegate:v2];
  }

  return v2;
}

- (BOOL)isEnabled
{
  v2 = [(AMSUIAirplaneModeInquiry *)self radiosPreferences];
  v3 = [v2 airplaneMode];

  return v3;
}

- (void)airplaneModeChanged
{
  v3 = [(AMSUIAirplaneModeInquiry *)self delegate];
  [v3 airplaneModeInquiryDidObserveChange:self];
}

- (AMSUIAirplaneModeInquiryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end