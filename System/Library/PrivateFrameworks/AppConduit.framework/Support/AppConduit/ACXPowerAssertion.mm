@interface ACXPowerAssertion
- (ACXPowerAssertion)initWithName:(id)a3 description:(id)a4 timeoutSeconds:(unint64_t)a5;
- (void)dealloc;
@end

@implementation ACXPowerAssertion

- (ACXPowerAssertion)initWithName:(id)a3 description:(id)a4 timeoutSeconds:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = ACXPowerAssertion;
  v10 = [(ACXPowerAssertion *)&v15 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_8;
  }

  AssertionID = 0;
  [(ACXPowerAssertion *)v10 setAssertion:0];
  if (!IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", v8, v9, 0, 0, a5, 0, &AssertionID))
  {
    [(ACXPowerAssertion *)v11 setAssertion:AssertionID];
LABEL_8:
    v12 = v11;
    goto LABEL_9;
  }

  if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
  {
    MOLogWrite();
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (void)dealloc
{
  if ([(ACXPowerAssertion *)self assertion])
  {
    v3 = IOPMAssertionRelease([(ACXPowerAssertion *)self assertion]);
    if (v3)
    {
      if (!qword_1000A4878 || *(qword_1000A4878 + 44) >= 3)
      {
        v4 = v3;
        MOLogWrite();
      }
    }
  }

  v5.receiver = self;
  v5.super_class = ACXPowerAssertion;
  [(ACXPowerAssertion *)&v5 dealloc];
}

@end