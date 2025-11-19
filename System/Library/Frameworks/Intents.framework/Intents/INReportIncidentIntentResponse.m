@interface INReportIncidentIntentResponse
+ (int)_errorCodeFromCode:(int64_t)a3;
+ (int)_typeFromCode:(int64_t)a3;
+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5;
- (CLPlacemark)location;
- (INReportIncidentIntentResponse)initWithBackingStore:(id)a3;
- (INReportIncidentIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
- (INReportIncidentIntentResponse)initWithCoder:(id)a3;
- (NSArray)supportedTypes;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4;
- (int64_t)_codeWithName:(id)a3;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (unint64_t)transportTypes;
- (void)encodeWithCoder:(id)a3;
- (void)setLocation:(id)a3;
- (void)setSupportedTypes:(id)a3;
- (void)setTransportTypes:(unint64_t)a3;
@end

@implementation INReportIncidentIntentResponse

- (id)_dictionaryRepresentation
{
  v17[4] = *MEMORY[0x1E69E9840];
  v16[0] = @"code";
  v3 = [(INReportIncidentIntentResponse *)self code];
  v4 = v3;
  if (v3 < 0xE)
  {
    v5 = off_1E7288648[v3];
    v6 = v5;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v17[0] = v5;
  v16[1] = @"transportTypes";
  v7 = INMapsTransportTypeOptionsGetNames([(INReportIncidentIntentResponse *)self transportTypes]);
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = v8;
  v16[2] = @"location";
  v9 = [(INReportIncidentIntentResponse *)self location];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = v10;
  v16[3] = @"supportedTypes";
  v11 = [(INReportIncidentIntentResponse *)self supportedTypes];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v17[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (!v11)
  {
  }

  if (!v9)
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

- (void)setSupportedTypes:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToSupportedTrafficIncidentTypes(v4);

  [v5 setSupportedTypes:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setLocation:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToLocation(v4);

  [v5 setLocation:v6];
  v8 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v8 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

- (void)setTransportTypes:(unint64_t)a3
{
  v5 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  [v5 clearTransportTypes];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__INReportIncidentIntentResponse_setTransportTypes___block_invoke;
  v8[3] = &unk_1E7288628;
  v8[4] = self;
  INMapsTransportTypeOptionsEnumerateBackingTypes(a3, v8);
  v6 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v7 = [v6 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:v7];
}

void __52__INReportIncidentIntentResponse_setTransportTypes___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _responseMessagePBRepresentation];
  [v3 addTransportType:a2];
}

- (NSArray)supportedTypes
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 supportedTypes];
  v4 = INIntentSlotValueTransformFromSupportedTrafficIncidentTypes(v3);

  return v4;
}

- (CLPlacemark)location
{
  v2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v3 = [v2 location];
  v4 = INIntentSlotValueTransformFromLocation(v3);

  return v4;
}

- (unint64_t)transportTypes
{
  v8 = 0;
  v3 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v4 = [v3 transportTypesCount];

  if (!v4)
  {
    return 0;
  }

  for (i = 0; i != v4; ++i)
  {
    v6 = [(INIntentResponse *)self _responseMessagePBRepresentation];
    INMapsTransportTypeOptionsAddBackingType(&v8, [v6 transportTypeAtIndex:i]);
  }

  return v8;
}

- (int64_t)_codeWithName:(id)a3
{
  v3 = a3;
  [v3 isEqualToString:@"INReportIncidentIntentResponseCodeUnspecified"];
  v4 = [v3 isEqualToString:@"INReportIncidentIntentResponseCodeReady"];
  if ([v3 isEqualToString:@"INReportIncidentIntentResponseCodeContinueInApp"])
  {
    v4 = 2;
  }

  if ([v3 isEqualToString:@"INReportIncidentIntentResponseCodeUserConfirmationRequired"])
  {
    v4 = 3;
  }

  if ([v3 isEqualToString:@"INReportIncidentIntentResponseCodeFailure"])
  {
    v4 = 4;
  }

  if ([v3 isEqualToString:@"INReportIncidentIntentResponseCodeFailureRequiringAppLaunch"])
  {
    v4 = 5;
  }

  if ([v3 isEqualToString:@"INReportIncidentIntentResponseCodeFailureUnknownError"])
  {
    v4 = 6;
  }

  if ([v3 isEqualToString:@"INReportIncidentIntentResponseCodeFailureMapsLocationDisabled"])
  {
    v4 = 7;
  }

  if ([v3 isEqualToString:@"INReportIncidentIntentResponseCodeFailureMapsCoarseMode"])
  {
    v4 = 8;
  }

  if ([v3 isEqualToString:@"INReportIncidentIntentResponseCodeFailureMapsNotInstalled"])
  {
    v4 = 9;
  }

  if ([v3 isEqualToString:@"INReportIncidentIntentResponseCodeFailureUnsupportedIncidentType"])
  {
    v4 = 10;
  }

  if ([v3 isEqualToString:@"INReportIncidentIntentResponseCodeFailureUnsupportedRegion"])
  {
    v4 = 11;
  }

  if ([v3 isEqualToString:@"INReportIncidentIntentResponseCodeFailureUnsupportedTransportType"])
  {
    v5 = 12;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 isEqualToString:@"INReportIncidentIntentResponseCodeFailureUnsupportedUpdate"];

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
  v2 = [(INReportIncidentIntentResponse *)self code];
  if ((v2 - 1) > 0xC)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FB40[v2 - 1];
  }
}

- (INReportIncidentIntentResponse)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = INReportIncidentIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = INReportIncidentIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:a3];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INReportIncidentIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INReportIncidentIntentResponse)initWithBackingStore:(id)a3
{
  v4.receiver = self;
  v4.super_class = INReportIncidentIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:a3];
}

- (id)_initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v5.receiver = self;
  v5.super_class = INReportIncidentIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:a3 userActivity:a4];
}

- (INReportIncidentIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (a3 > 0xD)
    {
      v9 = 0;
    }

    else
    {
      v9 = off_1E7288648[a3];
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INReportIncidentIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    v18 = a3;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INReportIncidentIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:a3 userActivity:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_errorCodeFromCode:(int64_t)a3
{
  if ((a3 - 6) >= 8)
  {
    return 0x7FFFFFFF;
  }

  else
  {
    return a3 - 6;
  }
}

+ (int)_typeFromCode:(int64_t)a3
{
  if ((a3 - 1) > 0xC)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FB0C[a3 - 1];
  }
}

+ (int64_t)_codeFromType:(int)a3 errorCode:(int)a4 appLaunchRequested:(BOOL)a5
{
  v5 = 3;
  if (a3 != 7)
  {
    v5 = a3 == 5;
  }

  v6 = (a4 + 6);
  v7 = 4;
  if (a5)
  {
    v7 = 5;
  }

  if (a4 >= 8)
  {
    v6 = v7;
  }

  v8 = 2;
  if (a3 != 4)
  {
    v8 = 0;
  }

  if (a3 != 1)
  {
    v6 = v8;
  }

  if (a3 <= 4)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

@end