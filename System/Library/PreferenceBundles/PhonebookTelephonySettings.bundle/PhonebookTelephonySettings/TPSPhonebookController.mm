@interface TPSPhonebookController
- (BOOL)isSubscriptionEditable;
- (NSString)localizedSubscriptionTelephoneNumber;
- (NSString)subscriptionISOCountryCode;
- (TPSPhonebookController)init;
- (TPSPhonebookController)initWithSubscriptionContext:(id)context;
- (TPSPhonebookControllerDelegate)delegate;
- (void)phonebookController:(id)controller didChangePhoneNumberInfo:(id)info;
- (void)updateSubscriptionTelephoneNumber:(id)number completion:(id)completion;
@end

@implementation TPSPhonebookController

- (TPSPhonebookController)init
{
  [(TPSPhonebookController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSPhonebookController)initWithSubscriptionContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = TPSPhonebookController;
  v6 = [(TPSPhonebookController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, context);
    v8 = [[TPSPhonebookTelephonyController alloc] initWithSubscriptionContext:contextCopy];
    telephonyClient = v7->_telephonyClient;
    v7->_telephonyClient = v8;

    [(TPSPhonebookTelephonyController *)v7->_telephonyClient addDelegate:v7 queue:&_dispatch_main_q];
  }

  return v7;
}

- (BOOL)isSubscriptionEditable
{
  telephonyClient = [(TPSPhonebookController *)self telephonyClient];
  phoneNumberInfo = [telephonyClient phoneNumberInfo];
  isEditable = [phoneNumberInfo isEditable];

  return isEditable;
}

- (NSString)subscriptionISOCountryCode
{
  subscriptionISOCountryCode = self->_subscriptionISOCountryCode;
  if (!subscriptionISOCountryCode)
  {
    subscriptionContext = [(TPSPhonebookController *)self subscriptionContext];
    tps_isoCountryCode = [subscriptionContext tps_isoCountryCode];
    v6 = self->_subscriptionISOCountryCode;
    self->_subscriptionISOCountryCode = tps_isoCountryCode;

    subscriptionISOCountryCode = self->_subscriptionISOCountryCode;
  }

  return subscriptionISOCountryCode;
}

- (NSString)localizedSubscriptionTelephoneNumber
{
  telephonyClient = [(TPSPhonebookController *)self telephonyClient];
  phoneNumberInfo = [telephonyClient phoneNumberInfo];
  displayPhoneNumber = [phoneNumberInfo displayPhoneNumber];

  if (displayPhoneNumber)
  {
    subscriptionISOCountryCode = [(TPSPhonebookController *)self subscriptionISOCountryCode];
    v7 = TPSLocalizedPhoneNumberString();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateSubscriptionTelephoneNumber:(id)number completion:(id)completion
{
  completionCopy = completion;
  numberCopy = number;
  subscriptionISOCountryCode = [(TPSPhonebookController *)self subscriptionISOCountryCode];
  v9 = TPSNormalizedPhoneNumberString();

  telephonyClient = [(TPSPhonebookController *)self telephonyClient];
  phoneNumberInfo = [telephonyClient phoneNumberInfo];

  number = [phoneNumberInfo number];
  v13 = v9;
  v14 = number;
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

    telephonyClient2 = [(TPSPhonebookController *)self telephonyClient];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_11D8;
    v18[3] = &unk_81F8;
    v19 = completionCopy;
    [telephonyClient2 updatePhoneNumberInfo:phoneNumberInfo label:@"My Number" number:v13 completion:v18];
  }

LABEL_7:
}

- (void)phonebookController:(id)controller didChangePhoneNumberInfo:(id)info
{
  infoCopy = info;
  v6 = TPSPhonebookLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = infoCopy;
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