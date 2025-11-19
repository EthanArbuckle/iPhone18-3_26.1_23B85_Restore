@interface DAButtonSwitchState
- (BOOL)isEventAcceptable:(unint64_t)a3 type:(id *)a4 eventType:(id *)a5;
- (DAButtonSwitchState)initWithIdentifier:(id)a3;
- (DAButtonSwitchState)initWithIdentifier:(id)a3 startingState:(int)a4;
- (void)getNextEvent;
- (void)getTypeForEvent:(unint64_t)a3 type:(id *)a4 eventType:(id *)a5;
@end

@implementation DAButtonSwitchState

- (DAButtonSwitchState)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DAButtonSwitchState;
  v5 = [(DAButtonSwitchState *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->_identifier = v4;
    if ([(NSString *)v4 isEqualToString:@"Home"])
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

- (DAButtonSwitchState)initWithIdentifier:(id)a3 startingState:(int)a4
{
  result = [(DAButtonSwitchState *)self initWithIdentifier:a3];
  if (result)
  {
    if (a4 == 1)
    {
      v6 = 8;
    }

    else
    {
      if (a4)
      {
        return result;
      }

      v6 = 4;
    }

    result->_expectedEvent = v6;
  }

  return result;
}

- (BOOL)isEventAcceptable:(unint64_t)a3 type:(id *)a4 eventType:(id *)a5
{
  [(DAButtonSwitchState *)self getTypeForEvent:a3 type:a4 eventType:a5];
  v7 = [(DAButtonSwitchState *)self expectedEvent];
  if (v7 == a3)
  {
    [(DAButtonSwitchState *)self getNextEvent];
  }

  return v7 == a3;
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

- (void)getTypeForEvent:(unint64_t)a3 type:(id *)a4 eventType:(id *)a5
{
  *a4 = @"Button";
  v8 = @"KeyDown";
  if (a3 > 511)
  {
    if (a3 < 0x2000)
    {
      if (a3 > 2047)
      {
        if (a3 != 2048)
        {
          if (a3 != 4096)
          {
            return;
          }

          goto LABEL_35;
        }
      }

      else if (a3 != 512)
      {
        if (a3 != 1024)
        {
          return;
        }

        goto LABEL_35;
      }
    }

    else if (a3 <= 0x7FFFFFF)
    {
      if (a3 != 0x2000)
      {
        if (a3 != 0x4000000)
        {
          return;
        }

        goto LABEL_35;
      }
    }

    else if (a3 != 0x8000000)
    {
      if (a3 == 0x10000000)
      {
        goto LABEL_35;
      }

      if (a3 != 0x20000000)
      {
        return;
      }
    }

    goto LABEL_34;
  }

  if (a3 <= 15)
  {
    if (a3 > 3)
    {
      if (a3 == 4)
      {
        *a4 = @"Switch";
        v8 = @"StateTone";
      }

      else
      {
        if (a3 != 8)
        {
          return;
        }

        *a4 = @"Switch";
        v8 = @"StateSilent";
      }

      goto LABEL_35;
    }

    if (a3 == 1)
    {
      goto LABEL_35;
    }

    if (a3 != 2)
    {
      return;
    }

LABEL_34:
    v8 = @"KeyUp";
    goto LABEL_35;
  }

  if (a3 <= 63)
  {
    if (a3 == 16)
    {
      goto LABEL_35;
    }

    if (a3 != 32)
    {
      return;
    }

    goto LABEL_34;
  }

  if (a3 != 64)
  {
    if (a3 != 128)
    {
      if (a3 != 256)
      {
        return;
      }

      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_35:
  *a5 = v8;
}

@end