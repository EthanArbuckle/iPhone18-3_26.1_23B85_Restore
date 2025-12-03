@interface AMSDeviceMessengerFilter
- (BOOL)matchesMessage:(id)message;
@end

@implementation AMSDeviceMessengerFilter

- (BOOL)matchesMessage:(id)message
{
  messageCopy = message;
  if (!messageCopy)
  {
    goto LABEL_8;
  }

  if ([(AMSDeviceMessengerFilter *)self messageType])
  {
    if ([(AMSDeviceMessengerFilter *)self messageType]!= 1)
    {
      goto LABEL_8;
    }

    object = [messageCopy object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (![(AMSDeviceMessengerFilter *)self deviceType])
  {
    LODWORD(longLongValue) = 1;
    goto LABEL_9;
  }

  if ([(AMSDeviceMessengerFilter *)self deviceType]== 1)
  {
    origin = [messageCopy origin];
    LODWORD(longLongValue) = [origin type] == 1;
  }

  else
  {
LABEL_8:
    LODWORD(longLongValue) = 0;
  }

LABEL_9:
  account = [(AMSDeviceMessengerFilter *)self account];
  ams_DSID = [account ams_DSID];

  if (longLongValue && ams_DSID)
  {
    object2 = [messageCopy object];
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();

    if (v12)
    {
      object3 = [messageCopy object];
      userInfo = [object3 userInfo];
      v15 = [userInfo objectForKeyedSubscript:0x1F0726A98];
      v16 = v15;
      v17 = &unk_1F0779418;
      if (v15)
      {
        v17 = v15;
      }

      v18 = v17;

      if (objc_opt_respondsToSelector())
      {
        longLongValue = [v18 longLongValue];
        LOBYTE(longLongValue) = longLongValue == [ams_DSID longLongValue];
      }

      else
      {
        LOBYTE(longLongValue) = 0;
      }
    }

    else
    {
      LOBYTE(longLongValue) = 0;
    }
  }

  return longLongValue;
}

@end