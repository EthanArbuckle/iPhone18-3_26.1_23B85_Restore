@interface AMSDeviceMessengerFilter
- (BOOL)matchesMessage:(id)a3;
@end

@implementation AMSDeviceMessengerFilter

- (BOOL)matchesMessage:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_8;
  }

  if ([(AMSDeviceMessengerFilter *)self messageType])
  {
    if ([(AMSDeviceMessengerFilter *)self messageType]!= 1)
    {
      goto LABEL_8;
    }

    v5 = [v4 object];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (![(AMSDeviceMessengerFilter *)self deviceType])
  {
    LODWORD(v8) = 1;
    goto LABEL_9;
  }

  if ([(AMSDeviceMessengerFilter *)self deviceType]== 1)
  {
    v7 = [v4 origin];
    LODWORD(v8) = [v7 type] == 1;
  }

  else
  {
LABEL_8:
    LODWORD(v8) = 0;
  }

LABEL_9:
  v9 = [(AMSDeviceMessengerFilter *)self account];
  v10 = [v9 ams_DSID];

  if (v8 && v10)
  {
    v11 = [v4 object];
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();

    if (v12)
    {
      v13 = [v4 object];
      v14 = [v13 userInfo];
      v15 = [v14 objectForKeyedSubscript:0x1F0726A98];
      v16 = v15;
      v17 = &unk_1F0779418;
      if (v15)
      {
        v17 = v15;
      }

      v18 = v17;

      if (objc_opt_respondsToSelector())
      {
        v8 = [v18 longLongValue];
        LOBYTE(v8) = v8 == [v10 longLongValue];
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }
  }

  return v8;
}

@end