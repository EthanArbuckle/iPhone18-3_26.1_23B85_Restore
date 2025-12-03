@interface INSendAnnouncementAnnouncementResolutionResult
+ (id)confirmationRequiredWithAnnouncementToConfirm:(id)confirm forReason:(int64_t)reason;
+ (id)unsupportedForReason:(int64_t)reason;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description;
- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description;
@end

@implementation INSendAnnouncementAnnouncementResolutionResult

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description
{
  v12.receiver = self;
  v12.super_class = INSendAnnouncementAnnouncementResolutionResult;
  v4 = [(INIntentResolutionResult *)&v12 _buildIntentSlotResolutionResultWithIntentSlotDescription:description];
  if ([(INIntentResolutionResult *)self resolutionResultCode]== 3 && [(INIntentResolutionResult *)self confirmationReason])
  {
    payloadConfirmation = [v4 payloadConfirmation];
    [payloadConfirmation setReason:1000];

    payloadConfirmation2 = [v4 payloadConfirmation];
    if ([(INIntentResolutionResult *)self confirmationReason]== 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 0x7FFFFFFFLL;
    }

    [payloadConfirmation2 setSendAnnouncementIntentAnnouncementConfirmationReason:v7];
  }

  if ([(INIntentResolutionResult *)self resolutionResultCode]== 1 && [(INIntentResolutionResult *)self unsupportedReason])
  {
    payloadUnsupported = [v4 payloadUnsupported];
    [payloadUnsupported setReason:1000];

    payloadUnsupported2 = [v4 payloadUnsupported];
    if ([(INIntentResolutionResult *)self unsupportedReason]== 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0x7FFFFFFFLL;
    }

    [payloadUnsupported2 setSendAnnouncementIntentAnnouncementUnsupportedReason:v10];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description
{
  resultCopy = result;
  v15.receiver = self;
  v15.super_class = INSendAnnouncementAnnouncementResolutionResult;
  v7 = [(INIntentResolutionResult *)&v15 _initWithIntentSlotResolutionResult:resultCopy slotDescription:description];
  if (v7)
  {
    payloadConfirmation = [resultCopy payloadConfirmation];
    hasSendAnnouncementIntentAnnouncementConfirmationReason = [payloadConfirmation hasSendAnnouncementIntentAnnouncementConfirmationReason];

    if (hasSendAnnouncementIntentAnnouncementConfirmationReason)
    {
      payloadConfirmation2 = [resultCopy payloadConfirmation];
      [v7 setConfirmationReason:{objc_msgSend(payloadConfirmation2, "sendAnnouncementIntentAnnouncementConfirmationReason") == 1}];
    }

    payloadUnsupported = [resultCopy payloadUnsupported];
    hasSendAnnouncementIntentAnnouncementUnsupportedReason = [payloadUnsupported hasSendAnnouncementIntentAnnouncementUnsupportedReason];

    if (hasSendAnnouncementIntentAnnouncementUnsupportedReason)
    {
      payloadUnsupported2 = [resultCopy payloadUnsupported];
      [v7 setUnsupportedReason:{objc_msgSend(payloadUnsupported2, "sendAnnouncementIntentAnnouncementUnsupportedReason") == 1}];
    }
  }

  return v7;
}

+ (id)unsupportedForReason:(int64_t)reason
{
  unsupported = [self unsupported];
  [unsupported setUnsupportedReason:reason];

  return unsupported;
}

+ (id)confirmationRequiredWithAnnouncementToConfirm:(id)confirm forReason:(int64_t)reason
{
  v5 = [self confirmationRequiredWithAnnouncementToConfirm:confirm];
  [v5 setConfirmationReason:reason];

  return v5;
}

@end