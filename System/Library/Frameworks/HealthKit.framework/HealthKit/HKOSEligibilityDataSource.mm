@interface HKOSEligibilityDataSource
- (BOOL)getAnswer:(unint64_t *)answer forDomain:(unint64_t)domain error:(id *)error;
- (HKOSEligibilityDataSource)init;
- (HKOSEligibilityDataSource)initWithAnswerOverrideHandler:(id)handler darwinNotificationOverride:(id)override;
- (id)notificationNameForDomain:(unint64_t)domain;
@end

@implementation HKOSEligibilityDataSource

- (HKOSEligibilityDataSource)init
{
  v3.receiver = self;
  v3.super_class = HKOSEligibilityDataSource;
  return [(HKOSEligibilityDataSource *)&v3 init];
}

- (HKOSEligibilityDataSource)initWithAnswerOverrideHandler:(id)handler darwinNotificationOverride:(id)override
{
  handlerCopy = handler;
  overrideCopy = override;
  v14.receiver = self;
  v14.super_class = HKOSEligibilityDataSource;
  v8 = [(HKOSEligibilityDataSource *)&v14 init];
  if (v8)
  {
    v9 = _Block_copy(handlerCopy);
    answerOverrideHandler = v8->_answerOverrideHandler;
    v8->_answerOverrideHandler = v9;

    v11 = [overrideCopy copy];
    darwinNotificationOverride = v8->_darwinNotificationOverride;
    v8->_darwinNotificationOverride = v11;
  }

  return v8;
}

- (BOOL)getAnswer:(unint64_t *)answer forDomain:(unint64_t)domain error:(id *)error
{
  v12 = 0;
  answerOverrideHandler = self->_answerOverrideHandler;
  if (answerOverrideHandler)
  {
    domain_answer = (*(answerOverrideHandler + 2))(answerOverrideHandler, domain, &v12, 0, 0, 0);
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
    [MEMORY[0x1E696ABC0] hk_assignError:error code:100 format:{@"Error attempting to retrieve eligibility answer: %d %s", domain_answer, strerror(domain_answer)}];
  }

  else if (answer)
  {
    *answer = v12;
  }

  return v10;
}

- (id)notificationNameForDomain:(unint64_t)domain
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