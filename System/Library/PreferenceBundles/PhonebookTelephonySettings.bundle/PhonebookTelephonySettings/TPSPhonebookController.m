@interface TPSPhonebookController
- (BOOL)isSubscriptionEditable;
- (NSString)localizedSubscriptionTelephoneNumber;
- (NSString)subscriptionISOCountryCode;
- (TPSPhonebookController)init;
- (TPSPhonebookController)initWithSubscriptionContext:(id)a3;
- (TPSPhonebookControllerDelegate)delegate;
- (void)phonebookController:(id)a3 didChangePhoneNumberInfo:(id)a4;
- (void)updateSubscriptionTelephoneNumber:(id)a3 completion:(id)a4;
@end

@implementation TPSPhonebookController

- (TPSPhonebookController)init
{
  [(TPSPhonebookController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSPhonebookController)initWithSubscriptionContext:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TPSPhonebookController;
  v6 = [(TPSPhonebookController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, a3);
    v8 = [[TPSPhonebookTelephonyController alloc] initWithSubscriptionContext:v5];
    telephonyClient = v7->_telephonyClient;
    v7->_telephonyClient = v8;

    [(TPSPhonebookTelephonyController *)v7->_telephonyClient addDelegate:v7 queue:&_dispatch_main_q];
  }

  return v7;
}

- (BOOL)isSubscriptionEditable
{
  v2 = [(TPSPhonebookController *)self telephonyClient];
  v3 = [v2 phoneNumberInfo];
  v4 = [v3 isEditable];

  return v4;
}

- (NSString)subscriptionISOCountryCode
{
  subscriptionISOCountryCode = self->_subscriptionISOCountryCode;
  if (!subscriptionISOCountryCode)
  {
    v4 = [(TPSPhonebookController *)self subscriptionContext];
    v5 = [v4 tps_isoCountryCode];
    v6 = self->_subscriptionISOCountryCode;
    self->_subscriptionISOCountryCode = v5;

    subscriptionISOCountryCode = self->_subscriptionISOCountryCode;
  }

  return subscriptionISOCountryCode;
}

- (NSString)localizedSubscriptionTelephoneNumber
{
  v3 = [(TPSPhonebookController *)self telephonyClient];
  v4 = [v3 phoneNumberInfo];
  v5 = [v4 displayPhoneNumber];

  if (v5)
  {
    v6 = [(TPSPhonebookController *)self subscriptionISOCountryCode];
    v7 = TPSLocalizedPhoneNumberString();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateSubscriptionTelephoneNumber:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TPSPhonebookController *)self subscriptionISOCountryCode];
  v9 = TPSNormalizedPhoneNumberString();

  v10 = [(TPSPhonebookController *)self telephonyClient];
  v11 = [v10 phoneNumberInfo];

  v12 = [v11 number];
  v13 = v9;
  v14 = v12;
  if (v13 | v14)
  {
    v15 = v14;
    if (v14)
    {
      v16 = [v13 isEqualToString:v14];

      if (v16)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v17 = [(TPSPhonebookController *)self telephonyClient];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_11D8;
    v18[3] = &unk_81F8;
    v19 = v6;
    [v17 updatePhoneNumberInfo:v11 label:@"My Number" number:v13 completion:v18];
  }

LABEL_7:
}

- (void)phonebookController:(id)a3 didChangePhoneNumberInfo:(id)a4
{
  v5 = a4;
  v6 = TPSPhonebookLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Phone number info changed to %@.", &v8, 0xCu);
  }

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:TPSPhonebookControllerSubscriptionDidChangeNotification object:self];
}

- (TPSPhonebookControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end