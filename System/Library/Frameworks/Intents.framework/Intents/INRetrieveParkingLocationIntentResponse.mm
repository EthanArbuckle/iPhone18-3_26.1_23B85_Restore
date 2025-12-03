@interface INRetrieveParkingLocationIntentResponse
+ (int)_typeFromCode:(int64_t)code;
+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested;
- (CLPlacemark)parkingLocation;
- (INRetrieveParkingLocationIntentResponse)initWithBackingStore:(id)store;
- (INRetrieveParkingLocationIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
- (INRetrieveParkingLocationIntentResponse)initWithCoder:(id)coder;
- (NSString)parkingNote;
- (id)_dictionaryRepresentation;
- (id)_initWithCode:(int64_t)code userActivity:(id)activity;
- (int64_t)_codeWithName:(id)name;
- (int64_t)_intentResponseCode;
- (int64_t)code;
- (void)encodeWithCoder:(id)coder;
- (void)setParkingLocation:(id)location;
- (void)setParkingNote:(id)note;
@end

@implementation INRetrieveParkingLocationIntentResponse

- (id)_dictionaryRepresentation
{
  v15[3] = *MEMORY[0x1E69E9840];
  v14[0] = @"code";
  code = [(INRetrieveParkingLocationIntentResponse *)self code];
  v4 = code;
  if (code < 6)
  {
    null = *(&off_1E72878C0 + code);
    v6 = null;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    v6 = 0;
  }

  v15[0] = null;
  v14[1] = @"parkingLocation";
  parkingLocation = [(INRetrieveParkingLocationIntentResponse *)self parkingLocation];
  null2 = parkingLocation;
  if (!parkingLocation)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"parkingNote";
  parkingNote = [(INRetrieveParkingLocationIntentResponse *)self parkingNote];
  null3 = parkingNote;
  if (!parkingNote)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (!parkingNote)
  {
  }

  if (!parkingLocation)
  {
  }

  if (v4 >= 6)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)setParkingNote:(id)note
{
  noteCopy = note;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToString(noteCopy);

  [_responseMessagePBRepresentation setParkingNote:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (void)setParkingLocation:(id)location
{
  locationCopy = location;
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  v6 = INIntentSlotValueTransformToLocation(locationCopy);

  [_responseMessagePBRepresentation setParkingLocation:v6];
  _responseMessagePBRepresentation2 = [(INIntentResponse *)self _responseMessagePBRepresentation];
  data = [_responseMessagePBRepresentation2 data];
  [(INIntentResponse *)self _setPayloadResponseMessageData:data];
}

- (NSString)parkingNote
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  parkingNote = [_responseMessagePBRepresentation parkingNote];
  v4 = INIntentSlotValueTransformFromString(parkingNote);

  return v4;
}

- (CLPlacemark)parkingLocation
{
  _responseMessagePBRepresentation = [(INIntentResponse *)self _responseMessagePBRepresentation];
  parkingLocation = [_responseMessagePBRepresentation parkingLocation];
  v4 = INIntentSlotValueTransformFromLocation(parkingLocation);

  return v4;
}

- (int64_t)_codeWithName:(id)name
{
  nameCopy = name;
  [nameCopy isEqualToString:@"INRetrieveParkingLocationIntentResponseCodeUnspecified"];
  v4 = [nameCopy isEqualToString:@"INRetrieveParkingLocationIntentResponseCodeReady"];
  if ([nameCopy isEqualToString:@"INRetrieveParkingLocationIntentResponseCodeInProgress"])
  {
    v4 = 2;
  }

  if ([nameCopy isEqualToString:@"INRetrieveParkingLocationIntentResponseCodeSuccess"])
  {
    v4 = 3;
  }

  if ([nameCopy isEqualToString:@"INRetrieveParkingLocationIntentResponseCodeFailure"])
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  v6 = [nameCopy isEqualToString:@"INRetrieveParkingLocationIntentResponseCodeFailureRequiringAppLaunch"];

  if (v6)
  {
    return 5;
  }

  else
  {
    return v5;
  }
}

- (int64_t)_intentResponseCode
{
  code = [(INRetrieveParkingLocationIntentResponse *)self code];
  if ((code - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_18EE5FDC8[code - 1];
  }
}

- (INRetrieveParkingLocationIntentResponse)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = INRetrieveParkingLocationIntentResponse;
  return [(INIntentResponse *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = INRetrieveParkingLocationIntentResponse;
  [(INIntentResponse *)&v3 encodeWithCoder:coder];
}

- (int64_t)code
{
  v3.receiver = self;
  v3.super_class = INRetrieveParkingLocationIntentResponse;
  return [(INIntentResponse *)&v3 code];
}

- (INRetrieveParkingLocationIntentResponse)initWithBackingStore:(id)store
{
  v4.receiver = self;
  v4.super_class = INRetrieveParkingLocationIntentResponse;
  return [(INIntentResponse *)&v4 initWithBackingStore:store];
}

- (id)_initWithCode:(int64_t)code userActivity:(id)activity
{
  v5.receiver = self;
  v5.super_class = INRetrieveParkingLocationIntentResponse;
  return [(INIntentResponse *)&v5 _initWithCode:code userActivity:activity];
}

- (INRetrieveParkingLocationIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  v23 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    if (code > 5)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(&off_1E72878C0 + code);
    }

    v10 = v9;
    *buf = 136315906;
    v16 = "[INRetrieveParkingLocationIntentResponse initWithCode:userActivity:]";
    v17 = 2048;
    codeCopy = code;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = activityCopy;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s code = %zd (%@), userActivity = %@", buf, 0x2Au);
  }

  v14.receiver = self;
  v14.super_class = INRetrieveParkingLocationIntentResponse;
  v11 = [(INIntentResponse *)&v14 _initWithCode:code userActivity:activityCopy];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (int)_typeFromCode:(int64_t)code
{
  if ((code - 1) > 4)
  {
    return 3;
  }

  else
  {
    return dword_18EE5FDB0[code - 1];
  }
}

+ (int64_t)_codeFromType:(int)type errorCode:(int)code appLaunchRequested:(BOOL)requested
{
  v5 = 2;
  if (type != 2)
  {
    v5 = type == 5;
  }

  v6 = 3;
  v7 = 4;
  if (requested)
  {
    v7 = 5;
  }

  if (type != 1)
  {
    v7 = 0;
  }

  if (type)
  {
    v6 = v7;
  }

  if (type <= 1)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

@end