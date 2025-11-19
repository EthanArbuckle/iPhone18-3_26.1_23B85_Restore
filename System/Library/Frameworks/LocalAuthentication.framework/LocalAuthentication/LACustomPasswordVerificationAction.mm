@interface LACustomPasswordVerificationAction
+ (LACustomPasswordVerificationAction)terminateAction;
+ (LACustomPasswordVerificationAction)userCancelAction;
+ (id)submitCustomPasswordAction:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)initWithType:(id *)result;
- (id)initWithType:(void *)a3 customPassword:;
@end

@implementation LACustomPasswordVerificationAction

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (v5[1] == self->_type)
    {
      v7 = v5[2];
      if (v7 | self->_customPassword)
      {
        v8 = [v7 isEqualToString:?];
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)initWithType:(id *)result
{
  if (result)
  {
    return [(LACustomPasswordVerificationAction *)result initWithType:a2 customPassword:0];
  }

  return result;
}

- (id)initWithType:(void *)a3 customPassword:
{
  v6 = a3;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = LACustomPasswordVerificationAction;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    a1 = v7;
    if (v7)
    {
      v7[1] = a2;
      objc_storeStrong(v7 + 2, a3);
    }
  }

  return a1;
}

+ (LACustomPasswordVerificationAction)terminateAction
{
  v2 = [LACustomPasswordVerificationAction alloc];
  if (v2)
  {
    v2 = [(LACustomPasswordVerificationAction *)&v2->super.isa initWithType:0 customPassword:?];
  }

  return v2;
}

+ (LACustomPasswordVerificationAction)userCancelAction
{
  v2 = [LACustomPasswordVerificationAction alloc];
  if (v2)
  {
    v2 = [(LACustomPasswordVerificationAction *)&v2->super.isa initWithType:0 customPassword:?];
  }

  return v2;
}

+ (id)submitCustomPasswordAction:(id)a3
{
  v3 = a3;
  v4 = [[LACustomPasswordVerificationAction alloc] initWithType:v3 customPassword:?];

  return v4;
}

@end