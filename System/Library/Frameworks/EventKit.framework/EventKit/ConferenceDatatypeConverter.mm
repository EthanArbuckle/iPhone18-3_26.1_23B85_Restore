@interface ConferenceDatatypeConverter
+ (id)_calJoinMethodFromEKJoinMethod:(id)method;
+ (id)_calJoinMethodsFromEKJoinMethods:(id)methods;
+ (id)_ekJoinMethodFromCalJoinMethod:(id)method;
+ (id)_ekJoinMethodsFromCalJoinMethods:(id)methods;
+ (id)_ekVirtualConferenceFromCalVirtualConference:(id)conference;
+ (id)calVirtualConferenceFromEKVirtualConference:(id)conference;
+ (id)ekDeserializationResultFromCalDeserializationResult:(id)result;
@end

@implementation ConferenceDatatypeConverter

+ (id)ekDeserializationResultFromCalDeserializationResult:(id)result
{
  if (result)
  {
    resultCopy = result;
    conference = [resultCopy conference];
    v6 = [self _ekVirtualConferenceFromCalVirtualConference:conference];

    blockTitle = [resultCopy blockTitle];
    [v6 setSerializationBlockTitle:blockTitle];

    v8 = [EKConferenceDeserializationResult alloc];
    range = [resultCopy range];
    v11 = v10;

    v12 = [(EKConferenceDeserializationResult *)v8 initWithConference:v6 range:range, v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)calVirtualConferenceFromEKVirtualConference:(id)conference
{
  conferenceCopy = conference;
  joinMethods = [conferenceCopy joinMethods];
  v6 = [self _calJoinMethodsFromEKJoinMethods:joinMethods];

  v7 = [self _calSourceFromEKSource:{objc_msgSend(conferenceCopy, "source")}];
  v8 = objc_alloc(MEMORY[0x1E6993098]);
  title = [conferenceCopy title];
  conferenceDetails = [conferenceCopy conferenceDetails];
  isWritable = [conferenceCopy isWritable];

  v12 = [v8 initWithTitle:title joinMethods:v6 conferenceDetails:conferenceDetails source:v7 isWritable:isWritable];

  return v12;
}

+ (id)_ekVirtualConferenceFromCalVirtualConference:(id)conference
{
  conferenceCopy = conference;
  joinMethods = [conferenceCopy joinMethods];
  v6 = [self _ekJoinMethodsFromCalJoinMethods:joinMethods];

  v7 = [self _ekSourceFromCalSource:{objc_msgSend(conferenceCopy, "source")}];
  v8 = [EKVirtualConference alloc];
  title = [conferenceCopy title];
  conferenceDetails = [conferenceCopy conferenceDetails];

  v11 = [(EKVirtualConference *)v8 initWithTitle:title joinMethods:v6 conferenceDetails:conferenceDetails];
  [(EKVirtualConference *)v11 setSource:v7];

  return v11;
}

+ (id)_calJoinMethodFromEKJoinMethod:(id)method
{
  v3 = MEMORY[0x1E69930A0];
  methodCopy = method;
  v5 = [v3 alloc];
  title = [methodCopy title];
  v7 = [methodCopy URL];
  isBroadcast = [methodCopy isBroadcast];

  v9 = [v5 initWithTitle:title URL:v7 isBroadcast:isBroadcast];

  return v9;
}

+ (id)_calJoinMethodsFromEKJoinMethods:(id)methods
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__ConferenceDatatypeConverter__calJoinMethodsFromEKJoinMethods___block_invoke;
  v5[3] = &__block_descriptor_40_e71___CalVirtualConferenceJoinMethod_16__0__EKVirtualConferenceJoinMethod_8l;
  v5[4] = self;
  v3 = [methods CalMap:v5];

  return v3;
}

+ (id)_ekJoinMethodFromCalJoinMethod:(id)method
{
  methodCopy = method;
  v4 = [EKVirtualConferenceJoinMethod alloc];
  title = [methodCopy title];
  v6 = [methodCopy URL];
  v7 = [(EKVirtualConferenceJoinMethod *)v4 initWithTitle:title url:v6];

  isBroadcast = [methodCopy isBroadcast];
  [(EKVirtualConferenceJoinMethod *)v7 setIsBroadcast:isBroadcast];

  return v7;
}

+ (id)_ekJoinMethodsFromCalJoinMethods:(id)methods
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__ConferenceDatatypeConverter__ekJoinMethodsFromCalJoinMethods___block_invoke;
  v5[3] = &__block_descriptor_40_e71___EKVirtualConferenceJoinMethod_16__0__CalVirtualConferenceJoinMethod_8l;
  v5[4] = self;
  v3 = [methods CalMap:v5];

  return v3;
}

@end