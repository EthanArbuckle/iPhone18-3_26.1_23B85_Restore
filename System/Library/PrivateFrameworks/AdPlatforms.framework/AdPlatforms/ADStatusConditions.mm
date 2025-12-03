@interface ADStatusConditions
+ (void)clearStatusCondition:(id)condition completionHandler:(id)handler;
+ (void)isStatusConditionRegistered:(id)registered bundleIdentifier:(id)identifier completionHandler:(id)handler;
+ (void)setStatusCondition:(id)condition completionHandler:(id)handler;
@end

@implementation ADStatusConditions

+ (void)setStatusCondition:(id)condition completionHandler:(id)handler
{
  conditionCopy = condition;
  handlerCopy = handler;
  if (conditionCopy)
  {
    v6 = objc_alloc_init(ADStatusConditionsImpl);
    [(ADStatusConditionsImpl *)v6 setStatusCondition:conditionCopy completionHandler:handlerCopy];
  }

  else
  {
    if (!handlerCopy)
    {
      goto LABEL_6;
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ADStatusConditionsErrorDomain" code:-1102 userInfo:0];
    handlerCopy[2](handlerCopy, v6);
  }

LABEL_6:
}

+ (void)clearStatusCondition:(id)condition completionHandler:(id)handler
{
  conditionCopy = condition;
  handlerCopy = handler;
  if (conditionCopy)
  {
    v6 = objc_alloc_init(ADStatusConditionsImpl);
    [(ADStatusConditionsImpl *)v6 clearStatusCondition:conditionCopy completionHandler:handlerCopy];
  }

  else
  {
    if (!handlerCopy)
    {
      goto LABEL_6;
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ADStatusConditionsErrorDomain" code:-1102 userInfo:0];
    handlerCopy[2](handlerCopy, v6);
  }

LABEL_6:
}

+ (void)isStatusConditionRegistered:(id)registered bundleIdentifier:(id)identifier completionHandler:(id)handler
{
  registeredCopy = registered;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (registeredCopy && identifierCopy)
  {
    v9 = objc_alloc_init(ADStatusConditionsImpl);
    [(ADStatusConditionsImpl *)v9 isStatusConditionRegistered:registeredCopy bundleIdentifier:identifierCopy completionHandler:handlerCopy];
  }

  else
  {
    if (!handlerCopy)
    {
      goto LABEL_7;
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ADStatusConditionsErrorDomain" code:-1102 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v9);
  }

LABEL_7:
}

@end