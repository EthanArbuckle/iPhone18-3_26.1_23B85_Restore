@interface SAPhoneHangUpResponse
- (int64_t)resultCallbackCode;
@end

@implementation SAPhoneHangUpResponse

- (int64_t)resultCallbackCode
{
  if (([(SAPhoneHangUpResponse *)self activeCallRemaining]& 1) == 0)
  {
    phoneHangUpCallType = [(SAPhoneHangUpResponse *)self phoneHangUpCallType];
    if ([phoneHangUpCallType isEqualToString:SAPhoneHangUpCallTypeACTIVEValue])
    {
      v5 = &SAPhoneActiveCallHungUpErrorCode;
    }

    else if ([phoneHangUpCallType isEqualToString:SAPhoneHangUpCallTypeINCOMINGValue])
    {
      v5 = &SAPhoneIncomingCallDeclinedErrorCode;
    }

    else
    {
      if (![phoneHangUpCallType isEqualToString:SAPhoneHangUpCallTypeOUTGOINGValue])
      {
        if ([phoneHangUpCallType isEqualToString:SAPhoneHangUpCallTypeHELDValue])
        {
          v3 = SAPhoneHeldCallHungUpErrorCode;
        }

        else
        {
          v3 = 0;
        }

        goto LABEL_10;
      }

      v5 = &SAPhoneOutgoingCallHungUpErrorCode;
    }

    v3 = *v5;
LABEL_10:

    return v3;
  }

  return 0;
}

@end