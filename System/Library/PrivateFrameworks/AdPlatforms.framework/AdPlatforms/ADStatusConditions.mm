@interface ADStatusConditions
+ (void)clearStatusCondition:(id)a3 completionHandler:(id)a4;
+ (void)isStatusConditionRegistered:(id)a3 bundleIdentifier:(id)a4 completionHandler:(id)a5;
+ (void)setStatusCondition:(id)a3 completionHandler:(id)a4;
@end

@implementation ADStatusConditions

+ (void)setStatusCondition:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v5 = a4;
  if (v7)
  {
    v6 = objc_alloc_init(ADStatusConditionsImpl);
    [(ADStatusConditionsImpl *)v6 setStatusCondition:v7 completionHandler:v5];
  }

  else
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ADStatusConditionsErrorDomain" code:-1102 userInfo:0];
    v5[2](v5, v6);
  }

LABEL_6:
}

+ (void)clearStatusCondition:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v5 = a4;
  if (v7)
  {
    v6 = objc_alloc_init(ADStatusConditionsImpl);
    [(ADStatusConditionsImpl *)v6 clearStatusCondition:v7 completionHandler:v5];
  }

  else
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ADStatusConditionsErrorDomain" code:-1102 userInfo:0];
    v5[2](v5, v6);
  }

LABEL_6:
}

+ (void)isStatusConditionRegistered:(id)a3 bundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v10 = a3;
  v7 = a4;
  v8 = a5;
  if (v10 && v7)
  {
    v9 = objc_alloc_init(ADStatusConditionsImpl);
    [(ADStatusConditionsImpl *)v9 isStatusConditionRegistered:v10 bundleIdentifier:v7 completionHandler:v8];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ADStatusConditionsErrorDomain" code:-1102 userInfo:0];
    v8[2](v8, 0, v9);
  }

LABEL_7:
}

@end