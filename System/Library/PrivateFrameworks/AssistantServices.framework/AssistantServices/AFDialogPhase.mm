@interface AFDialogPhase
+ (id)_dialogPhaseWithType:(int64_t)type;
+ (id)dialogPhaseForAceDialogPhase:(id)phase;
- (AFDialogPhase)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDialogPhase:(id)phase;
- (NSString)aceDialogPhaseValue;
- (id)_initWithType:(int64_t)type;
- (id)description;
- (int)UEIUUFRReadyDialogPhase;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFDialogPhase

- (id)description
{
  v3 = +[AFDialogPhase acknowledgementDialogPhase];
  v4 = [(AFDialogPhase *)self isEqualToDialogPhase:v3];

  if (v4)
  {
    v5 = @"acknowledgementDialogPhase";
  }

  else
  {
    v6 = +[AFDialogPhase reflectionDialogPhase];
    v7 = [(AFDialogPhase *)self isEqualToDialogPhase:v6];

    if (v7)
    {
      v5 = @"reflectionDialogPhase";
    }

    else
    {
      v8 = +[AFDialogPhase statusDialogPhase];
      v9 = [(AFDialogPhase *)self isEqualToDialogPhase:v8];

      if (v9)
      {
        v5 = @"statusDialogPhase";
      }

      else
      {
        v10 = +[AFDialogPhase clarificationDialogPhase];
        v11 = [(AFDialogPhase *)self isEqualToDialogPhase:v10];

        if (v11)
        {
          v5 = @"clarificationDialogPhase";
        }

        else
        {
          v12 = +[AFDialogPhase summaryDialogPhase];
          v13 = [(AFDialogPhase *)self isEqualToDialogPhase:v12];

          if (v13)
          {
            v5 = @"summaryDialogPhase";
          }

          else
          {
            v14 = +[AFDialogPhase confirmationDialogPhase];
            v15 = [(AFDialogPhase *)self isEqualToDialogPhase:v14];

            if (v15)
            {
              v5 = @"confirmationDialogPhase";
            }

            else
            {
              v16 = +[AFDialogPhase completionDialogPhase];
              v17 = [(AFDialogPhase *)self isEqualToDialogPhase:v16];

              if (v17)
              {
                v5 = @"completionDialogPhase";
              }

              else
              {
                v18 = +[AFDialogPhase errorDialogPhase];
                v19 = [(AFDialogPhase *)self isEqualToDialogPhase:v18];

                if (v19)
                {
                  v5 = @"errorDialogPhase";
                }

                else
                {
                  v20 = +[AFDialogPhase confirmedDialogPhase];
                  v21 = [(AFDialogPhase *)self isEqualToDialogPhase:v20];

                  if (v21)
                  {
                    v5 = @"confirmedDialogPhase";
                  }

                  else
                  {
                    v22 = +[AFDialogPhase cancelledDialogPhase];
                    v23 = [(AFDialogPhase *)self isEqualToDialogPhase:v22];

                    if (v23)
                    {
                      v5 = @"cancelledDialogPhase";
                    }

                    else
                    {
                      v24 = +[AFDialogPhase userRequestDialogPhase];
                      v25 = [(AFDialogPhase *)self isEqualToDialogPhase:v24];

                      if (v25)
                      {
                        v5 = @"userRequestDialogPhase";
                      }

                      else
                      {
                        v5 = @"unknown dialogPhase";
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@ %@>", objc_opt_class(), v5];
}

- (NSString)aceDialogPhaseValue
{
  _type = [(AFDialogPhase *)self _type];
  if (_type <= 5)
  {
    if (_type > 2)
    {
      if (_type == 3)
      {
        v4 = MEMORY[0x1E69C8330];
      }

      else if (_type == 4)
      {
        v4 = MEMORY[0x1E69C8300];
      }

      else
      {
        v4 = MEMORY[0x1E69C8338];
      }

      goto LABEL_24;
    }

    if (_type == 1)
    {
      v4 = MEMORY[0x1E69C82F0];
    }

    else
    {
      if (_type != 2)
      {
        goto LABEL_28;
      }

      v4 = MEMORY[0x1E69C8328];
    }
  }

  else
  {
    if (_type <= 8)
    {
      if (_type == 6)
      {
        v4 = MEMORY[0x1E69C8310];
      }

      else if (_type == 7)
      {
        v4 = MEMORY[0x1E69C8308];
      }

      else
      {
        v4 = MEMORY[0x1E69C8320];
      }

      goto LABEL_24;
    }

    switch(_type)
    {
      case 9:
        v4 = MEMORY[0x1E69C8318];
        break;
      case 10:
        v4 = MEMORY[0x1E69C82F8];
        break;
      case 11:
        v5 = 0;
        goto LABEL_25;
      default:
LABEL_28:
        v7 = MEMORY[0x1E695DF30];
        v8 = *MEMORY[0x1E695D930];
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected value for _type: %ld", -[AFDialogPhase _type](self, "_type")];
        v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
        v11 = v10;

        objc_exception_throw(v10);
    }
  }

LABEL_24:
  v5 = *v4;
LABEL_25:

  return v5;
}

- (int)UEIUUFRReadyDialogPhase
{
  _type = [(AFDialogPhase *)self _type];
  if ((_type - 1) >= 0xB)
  {
    LODWORD(_type) = 0;
  }

  return _type;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AFDialogPhase *)self isEqualToDialogPhase:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToDialogPhase:(id)phase
{
  phaseCopy = phase;
  _type = [(AFDialogPhase *)self _type];
  _type2 = [phaseCopy _type];

  return _type == _type2;
}

- (AFDialogPhase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = AFDialogPhase;
  v5 = [(AFDialogPhase *)&v7 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"AFDialogPhaseType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[AFDialogPhase _type](self forKey:{"_type"), @"AFDialogPhaseType"}];
}

- (id)_initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = AFDialogPhase;
  result = [(AFDialogPhase *)&v5 init];
  if (result)
  {
    *(result + 1) = type;
  }

  return result;
}

+ (id)_dialogPhaseWithType:(int64_t)type
{
  v3 = [[AFDialogPhase alloc] _initWithType:type];

  return v3;
}

+ (id)dialogPhaseForAceDialogPhase:(id)phase
{
  phaseCopy = phase;
  if ([phaseCopy isEqualToString:*MEMORY[0x1E69C82F0]])
  {
    v4 = +[AFDialogPhase acknowledgementDialogPhase];
LABEL_21:
    v5 = v4;
    goto LABEL_22;
  }

  if ([phaseCopy isEqualToString:*MEMORY[0x1E69C8328]])
  {
    v4 = +[AFDialogPhase reflectionDialogPhase];
    goto LABEL_21;
  }

  if ([phaseCopy isEqualToString:*MEMORY[0x1E69C8330]])
  {
    v4 = +[AFDialogPhase statusDialogPhase];
    goto LABEL_21;
  }

  if ([phaseCopy isEqualToString:*MEMORY[0x1E69C8300]])
  {
    v4 = +[AFDialogPhase clarificationDialogPhase];
    goto LABEL_21;
  }

  if ([phaseCopy isEqualToString:*MEMORY[0x1E69C8338]])
  {
    v4 = +[AFDialogPhase summaryDialogPhase];
    goto LABEL_21;
  }

  if ([phaseCopy isEqualToString:*MEMORY[0x1E69C8310]])
  {
    v4 = +[AFDialogPhase confirmationDialogPhase];
    goto LABEL_21;
  }

  if ([phaseCopy isEqualToString:*MEMORY[0x1E69C8308]])
  {
    v4 = +[AFDialogPhase completionDialogPhase];
    goto LABEL_21;
  }

  if ([phaseCopy isEqualToString:*MEMORY[0x1E69C8320]])
  {
    v4 = +[AFDialogPhase errorDialogPhase];
    goto LABEL_21;
  }

  if ([phaseCopy isEqualToString:*MEMORY[0x1E69C8318]])
  {
    v4 = +[AFDialogPhase confirmedDialogPhase];
    goto LABEL_21;
  }

  if ([phaseCopy isEqualToString:*MEMORY[0x1E69C82F8]])
  {
    v4 = +[AFDialogPhase cancelledDialogPhase];
    goto LABEL_21;
  }

  v5 = 0;
LABEL_22:

  return v5;
}

@end