@interface INReportIncidentIncidentTypeResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description;
- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description;
@end

@implementation INReportIncidentIncidentTypeResolutionResult

- (id)_buildIntentSlotResolutionResultWithIntentSlotDescription:(id)description
{
  v10.receiver = self;
  v10.super_class = INReportIncidentIncidentTypeResolutionResult;
  v4 = [(INIntentResolutionResult *)&v10 _buildIntentSlotResolutionResultWithIntentSlotDescription:description];
  if ([(INIntentResolutionResult *)self resolutionResultCode]== 1 && [(INIntentResolutionResult *)self unsupportedReason])
  {
    payloadUnsupported = [v4 payloadUnsupported];
    [payloadUnsupported setReason:1000];

    payloadUnsupported2 = [v4 payloadUnsupported];
    v7 = [(INIntentResolutionResult *)self unsupportedReason]- 1;
    if (v7 >= 5)
    {
      v8 = 0x7FFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    [payloadUnsupported2 setReportIncidentIntentIncidentTypeUnsupportedReason:v8];
  }

  return v4;
}

- (id)_initWithIntentSlotResolutionResult:(id)result slotDescription:(id)description
{
  resultCopy = result;
  v14.receiver = self;
  v14.super_class = INReportIncidentIncidentTypeResolutionResult;
  v7 = [(INIntentResolutionResult *)&v14 _initWithIntentSlotResolutionResult:resultCopy slotDescription:description];
  if (v7)
  {
    payloadUnsupported = [resultCopy payloadUnsupported];
    hasReportIncidentIntentIncidentTypeUnsupportedReason = [payloadUnsupported hasReportIncidentIntentIncidentTypeUnsupportedReason];

    if (hasReportIncidentIntentIncidentTypeUnsupportedReason)
    {
      payloadUnsupported2 = [resultCopy payloadUnsupported];
      reportIncidentIntentIncidentTypeUnsupportedReason = [payloadUnsupported2 reportIncidentIntentIncidentTypeUnsupportedReason];
      if (reportIncidentIntentIncidentTypeUnsupportedReason < 5)
      {
        v12 = reportIncidentIntentIncidentTypeUnsupportedReason + 1;
      }

      else
      {
        v12 = 0;
      }

      [v7 setUnsupportedReason:v12];
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

@end