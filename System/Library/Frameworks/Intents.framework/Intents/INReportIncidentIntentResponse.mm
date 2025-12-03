@interface INReportIncidentIntentResponse
+ (int)_errorCodeFromCode:(int64_t)code;
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (CLPlacemark)location;
- (INReportIncidentIntentResponse)initWithBackingStore:(id)store;
- (INReportIncidentIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INReportIncidentIntentResponse)initWithCoder:(id)coder;
- (NSArray)supportedTypes;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (unint64_t)transportTypes;
- (void)encodeWithCoder:(id)coder;
- (void)setLocation:(id)location;
- (void)setSupportedTypes:(id)types;
- (void)setTransportTypes:(unint64_t)types;
@end

@implementation INReportIncidentIntentResponse

- (id)_dictionaryRepresentation
{
  v17[4] = *MEMORY[0x1E69E9840];
  v16[0] = @"code";
  code = [(INReportIncidentIntentResponse *)self code];
  v4 = code;
  if (code < 0xE)
  {
    null = off_1E7288648[code];
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v17[0] = null;
  v16[1] = @"transportTypes";
  v7 = INMapsTransportTypeOptionsGetNames([(INReportIncidentIntentResponse *)self transportTypes]);
  null2 = v7;
  if (!v7)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = null2;
  v16[2] = @"location";
  location = [(INReportIncidentIntentResponse *)self location];
  null3 = location;
  if (!location)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = null3;
  v16[3] = @"supportedTypes";
  supportedTypes = [(INReportIncidentIntentResponse *)self supportedTypes];
  null4 = supportedTypes;
  if (!supportedTypes)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v17[3] = null4;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (!supportedTypes)
  {
  }

  if (!location)
  {
  }

  if (!v7)
  {
  }

  if (v4 >= 0xE)
  {
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)setSupportedTypes:(id)types
{
  typesCopy = types;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToSupportedTrafficIncidentTypes(typesCopy);

  [_responseMessagePBRepresentation setSupportedTypes:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setLocation:(id)location
{
  locationCopy = location;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToLocation(locationCopy);

  [_responseMessagePBRepresentation setLocation:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setTransportTypes:(unint64_t)types
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [_responseMessagePBRepresentation clearTransportTypes];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__INReportIncidentIntentResponse_setTransportTypes___block_invoke;
  v8[3] = &unk_1E7288628;
  v8[4] = self;
  INMapsTransportTypeOptionsEnumerateBackingTypes(types, v8);
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

void __52__INReportIncidentIntentResponse_setTransportTypes___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _responseMessagePBRepresentation];
  [v3 addTransportType:a2];
}

- (NSArray)supportedTypes
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  supportedTypes = [_responseMessagePBRepresentation supportedTypes];
  v4 = INIntentSlotValueTransformFromSupportedTrafficIncidentTypes(supportedTypes);

  return v4;
}

- (CLPlacemark)location
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  location = [_responseMessagePBRepresentation location];
  v4 = INIntentSlotValueTransformFromLocation(location);

  return v4;
}

- (unint64_t)transportTypes
{
  v8 = 0;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  transportTypesCount = [_responseMessagePBRepresentation transportTypesCount];

  if (!transportTypesCount)
  {
    return 0;
  }

  for (i = 0; i != transportTypesCount; ++i)
  {
    _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
    INMapsTransportTypeOptionsAddBackingType(&v8, [_responseMessagePBRepresentation2 transportTypeAtIndex:i]);
  }

  return v8;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INReportIncidentIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INReportIncidentIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INReportIncidentIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INReportIncidentIntentResponseCodeUserConfirmationRequired"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INReportIncidentIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([nameCopy isEqualToString:@"INReportIncidentIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([nameCopy isEqualToString:@"INReportIncidentIntentResponseCodeFailureUnknownError"])
  {
    v4 = 6;
  }

  if ([nameCopy isEqualToString:@"INReportIncidentIntentResponseCodeFailureMapsLocationDisabled"])
  {
    v4 = 7;
  }

  if ([nameCopy isEqualToString:@"INReportIncidentIntentResponseCodeFailureMapsCoarseMode"])
  {
    v4 = 8;
  }

  if ([nameCopy isEqualToString:@"INReportIncidentIntentResponseCodeFailureMapsNotInstalled"])
  {
    v4 = 9;
  }

  if ([nameCopy isEqualToString:@"INReportIncidentIntentResponseCodeFailureUnsupportedIncidentType"])
  {
    v4 = 10;
  }

  if ([nameCopy isEqualToString:@"INReportIncidentIntentResponseCodeFailureUnsupportedRegion"])
  {
    v4 = 11;
  }

  if ([nameCopy isEqualToString:@"INReportIncidentIntentResponseCodeFailureUnsupportedTransportType"])
  {
    v5 = 12;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INReportIncidentIntentResponseCodeFailureUnsupportedUpdate"];

  if (v6)
  {
    return 13;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  code = [(INReportIncidentIntentResponse *)self code];
  if ((code - 1) > 0xC)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FB40[code - 1];
  }
}

- (INReportIncidentIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INReportIncidentIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INReportIncidentIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INReportIncidentIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INReportIncidentIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INReportIncidentIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INReportIncidentIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INReportIncidentIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  v23 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > 0xD)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7288648[code];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INReportIncidentIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    codeCopy = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = activityCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INReportIncidentIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:activityCopy];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)code
{
  if ((code - 6) >= 8)
  {
    return 0x7FFFFFFF;
  }

  else
  {
    return code - 6;
  }
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 0xC)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FB0C[code - 1];
  }
}

+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested
{
  v5 = 3;
  if (type != 7)
  {
    v5 = type == 5;
  }

  v6 = (code + 6);
  v7 = 4;
  if (requested)
  {
    v7 = 5;
  }

  if (code >= 8)
  {
    v6 = v7;
  }

  v8 = 2;
  if (type != 4)
  {
    v8 = 0;
  }

  if (type != 1)
  {
    v6 = v8;
  }

  if (type <= 4)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

@end