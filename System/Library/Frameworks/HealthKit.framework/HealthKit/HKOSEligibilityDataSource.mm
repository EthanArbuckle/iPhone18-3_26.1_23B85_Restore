@interface HKOSEligibilityDataSource
- (BOOL)getAnswer:(unint64_t *)a3 forDomain:(unint64_t)a4 error:(id *)a5;
- (HKOSEligibilityDataSource)init;
- (HKOSEligibilityDataSource)initWithAnswerOverrideHandler:(id)a3 darwinNotificationOverride:(id)a4;
- (id)notificationNameForDomain:(unint64_t)a3;
@end

@implementation HKOSEligibilityDataSource

- (HKOSEligibilityDataSource)init
{
  v3.receiver = self;
  v3.super_class = HKOSEligibilityDataSource;
  return [(HKOSEligibilityDataSource *)&v3 init];
}

- (HKOSEligibilityDataSource)initWithAnswerOverrideHandler:(id)a3 darwinNotificationOverride:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HKOSEligibilityDataSource;
  v8 = [(HKOSEligibilityDataSource *)&v14 init];
  if (v8)
  {
    v9 = _Block_copy(v6);
    answerOverrideHandler = v8->_answerOverrideHandler;
    v8->_answerOverrideHandler = v9;

    v11 = [v7 copy];
    darwinNotificationOverride = v8->_darwinNotificationOverride;
    v8->_darwinNotificationOverride = v11;
  }

  return v8;
}

- (BOOL)getAnswer:(unint64_t *)a3 forDomain:(unint64_t)a4 error:(id *)a5
{
  v12 = 0;
  answerOverrideHandler = self->_answerOverrideHandler;
  if (answerOverrideHandler)
  {
    domain_answer = (*(answerOverrideHandler + 2))(answerOverrideHandler, a4, &v12, 0, 0, 0);
  }

  else
  {
    domain_answer = os_eligibility_get_domain_answer();
  }

  if (domain_answer)
  {
    v9 = 1;
  }

  else
  {
    v9 = v12 == 0;
  }

  v10 = !v9;
  if (v9)
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a5 code:100 format:{@"Error attempting to retrieve eligibility answer: %d %s", domain_answer, strerror(domain_answer)}];
  }

  else if (a3)
  {
    *a3 = v12;
  }

  return v10;
}

- (id)notificationNameForDomain:(unint64_t)a3
{
  v3 = self->_darwinNotificationOverride;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
LABEL_5:
    v7 = v5;
    goto LABEL_6;
  }

  domain_notification_name = os_eligibility_get_domain_notification_name();
  if (domain_notification_name)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:domain_notification_name];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

@end