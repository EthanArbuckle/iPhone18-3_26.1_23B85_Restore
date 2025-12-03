@interface DAButtonSwitchState
- (BOOL)isEventAcceptable:(unint64_t)acceptable type:(id *)type eventType:(id *)eventType;
- (DAButtonSwitchState)initWithIdentifier:(id)identifier;
- (DAButtonSwitchState)initWithIdentifier:(id)identifier startingState:(int)state;
- (void)getNextEvent;
- (void)getTypeForEvent:(unint64_t)event type:(id *)type eventType:(id *)eventType;
@end

@implementation DAButtonSwitchState

- (DAButtonSwitchState)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = DAButtonSwitchState;
  v5 = [(DAButtonSwitchState *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->_identifier = identifierCopy;
    if ([(NSString *)identifierCopy isEqualToString:@"Home"])
    {
      v7 = 1;
LABEL_20:
      v6->_expectedEvent = v7;
      goto LABEL_21;
    }

    if ([(NSString *)v6->_identifier isEqualToString:@"RingerButton"])
    {
      v7 = 0x10000000;
      goto LABEL_20;
    }

    if ([(NSString *)v6->_identifier isEqualToString:@"Ringer"])
    {
      v7 = 4;
      goto LABEL_20;
    }

    if ([(NSString *)v6->_identifier isEqualToString:@"Sleep"])
    {
      v7 = 16;
      goto LABEL_20;
    }

    if ([(NSString *)v6->_identifier isEqualToString:@"VolumeIncrement"])
    {
      v7 = 64;
      goto LABEL_20;
    }

    if ([(NSString *)v6->_identifier isEqualToString:@"VolumeDecrement"])
    {
      v7 = 256;
      goto LABEL_20;
    }

    if ([(NSString *)v6->_identifier isEqualToString:@"DigitalCrown"])
    {
      v7 = 1024;
      goto LABEL_20;
    }

    if ([(NSString *)v6->_identifier isEqualToString:@"Side"])
    {
      v7 = 4096;
      goto LABEL_20;
    }

    if ([(NSString *)v6->_identifier isEqualToString:@"App"])
    {
      v7 = 0x4000000;
      goto LABEL_20;
    }
  }

LABEL_21:

  return v6;
}

- (DAButtonSwitchState)initWithIdentifier:(id)identifier startingState:(int)state
{
  result = [(DAButtonSwitchState *)self initWithIdentifier:identifier];
  if (result)
  {
    if (state == 1)
    {
      v6 = 8;
    }

    else
    {
      if (state)
      {
        return result;
      }

      v6 = 4;
    }

    result->_expectedEvent = v6;
  }

  return result;
}

- (BOOL)isEventAcceptable:(unint64_t)acceptable type:(id *)type eventType:(id *)eventType
{
  [(DAButtonSwitchState *)self getTypeForEvent:acceptable type:type eventType:eventType];
  expectedEvent = [(DAButtonSwitchState *)self expectedEvent];
  if (expectedEvent == acceptable)
  {
    [(DAButtonSwitchState *)self getNextEvent];
  }

  return expectedEvent == acceptable;
}

- (void)getNextEvent
{
  if ([(DAButtonSwitchState *)self expectedEvent]== 1)
  {
    v3 = 2;
  }

  else if ([(DAButtonSwitchState *)self expectedEvent]== 2)
  {
    v3 = 1;
  }

  else if ([(DAButtonSwitchState *)self expectedEvent]== 0x10000000)
  {
    v3 = 0x20000000;
  }

  else if ([(DAButtonSwitchState *)self expectedEvent]== 0x20000000)
  {
    v3 = 0x10000000;
  }

  else if ([(DAButtonSwitchState *)self expectedEvent]== 4)
  {
    v3 = 8;
  }

  else if ([(DAButtonSwitchState *)self expectedEvent]== 8)
  {
    v3 = 4;
  }

  else if ([(DAButtonSwitchState *)self expectedEvent]== 16)
  {
    v3 = 32;
  }

  else if ([(DAButtonSwitchState *)self expectedEvent]== 32)
  {
    v3 = 16;
  }

  else if ([(DAButtonSwitchState *)self expectedEvent]== 64)
  {
    v3 = 128;
  }

  else if ([(DAButtonSwitchState *)self expectedEvent]== 128)
  {
    v3 = 64;
  }

  else if ([(DAButtonSwitchState *)self expectedEvent]== 512)
  {
    v3 = 256;
  }

  else if ([(DAButtonSwitchState *)self expectedEvent]== 256)
  {
    v3 = 512;
  }

  else if ([(DAButtonSwitchState *)self expectedEvent]== 2048)
  {
    v3 = 1024;
  }

  else if ([(DAButtonSwitchState *)self expectedEvent]== 1024)
  {
    v3 = 2048;
  }

  else if ([(DAButtonSwitchState *)self expectedEvent]== 4096)
  {
    v3 = 0x2000;
  }

  else if ([(DAButtonSwitchState *)self expectedEvent]== 0x2000)
  {
    v3 = 4096;
  }

  else if ([(DAButtonSwitchState *)self expectedEvent]== 0x8000000)
  {
    v3 = 0x4000000;
  }

  else
  {
    if ([(DAButtonSwitchState *)self expectedEvent]!= 0x4000000)
    {
      return;
    }

    v3 = 0x8000000;
  }

  [(DAButtonSwitchState *)self setExpectedEvent:v3];
}

- (void)getTypeForEvent:(unint64_t)event type:(id *)type eventType:(id *)eventType
{
  *type = @"Button";
  v8 = @"KeyDown";
  if (event > 511)
  {
    if (event < 0x2000)
    {
      if (event > 2047)
      {
        if (event != 2048)
        {
          if (event != 4096)
          {
            return;
          }

          goto LABEL_35;
        }
      }

      else if (event != 512)
      {
        if (event != 1024)
        {
          return;
        }

        goto LABEL_35;
      }
    }

    else if (event <= 0x7FFFFFF)
    {
      if (event != 0x2000)
      {
        if (event != 0x4000000)
        {
          return;
        }

        goto LABEL_35;
      }
    }

    else if (event != 0x8000000)
    {
      if (event == 0x10000000)
      {
        goto LABEL_35;
      }

      if (event != 0x20000000)
      {
        return;
      }
    }

    goto LABEL_34;
  }

  if (event <= 15)
  {
    if (event > 3)
    {
      if (event == 4)
      {
        *type = @"Switch";
        v8 = @"StateTone";
      }

      else
      {
        if (event != 8)
        {
          return;
        }

        *type = @"Switch";
        v8 = @"StateSilent";
      }

      goto LABEL_35;
    }

    if (event == 1)
    {
      goto LABEL_35;
    }

    if (event != 2)
    {
      return;
    }

LABEL_34:
    v8 = @"KeyUp";
    goto LABEL_35;
  }

  if (event <= 63)
  {
    if (event == 16)
    {
      goto LABEL_35;
    }

    if (event != 32)
    {
      return;
    }

    goto LABEL_34;
  }

  if (event != 64)
  {
    if (event != 128)
    {
      if (event != 256)
      {
        return;
      }

      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_35:
  *eventType = v8;
}

@end