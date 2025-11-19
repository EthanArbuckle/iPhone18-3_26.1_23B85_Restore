@interface ConferenceDatatypeConverter
+ (id)_calJoinMethodFromEKJoinMethod:(id)a3;
+ (id)_calJoinMethodsFromEKJoinMethods:(id)a3;
+ (id)_ekJoinMethodFromCalJoinMethod:(id)a3;
+ (id)_ekJoinMethodsFromCalJoinMethods:(id)a3;
+ (id)_ekVirtualConferenceFromCalVirtualConference:(id)a3;
+ (id)calVirtualConferenceFromEKVirtualConference:(id)a3;
+ (id)ekDeserializationResultFromCalDeserializationResult:(id)a3;
@end

@implementation ConferenceDatatypeConverter

+ (id)ekDeserializationResultFromCalDeserializationResult:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 conference];
    v6 = [a1 _ekVirtualConferenceFromCalVirtualConference:v5];

    v7 = [v4 blockTitle];
    [v6 setSerializationBlockTitle:v7];

    v8 = [EKConferenceDeserializationResult alloc];
    v9 = [v4 range];
    v11 = v10;

    v12 = [(EKConferenceDeserializationResult *)v8 initWithConference:v6 range:v9, v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)calVirtualConferenceFromEKVirtualConference:(id)a3
{
  v4 = a3;
  v5 = [v4 joinMethods];
  v6 = [a1 _calJoinMethodsFromEKJoinMethods:v5];

  v7 = [a1 _calSourceFromEKSource:{objc_msgSend(v4, "source")}];
  v8 = objc_alloc(MEMORY[0x1E6993098]);
  v9 = [v4 title];
  v10 = [v4 conferenceDetails];
  v11 = [v4 isWritable];

  v12 = [v8 initWithTitle:v9 joinMethods:v6 conferenceDetails:v10 source:v7 isWritable:v11];

  return v12;
}

+ (id)_ekVirtualConferenceFromCalVirtualConference:(id)a3
{
  v4 = a3;
  v5 = [v4 joinMethods];
  v6 = [a1 _ekJoinMethodsFromCalJoinMethods:v5];

  v7 = [a1 _ekSourceFromCalSource:{objc_msgSend(v4, "source")}];
  v8 = [EKVirtualConference alloc];
  v9 = [v4 title];
  v10 = [v4 conferenceDetails];

  v11 = [(EKVirtualConference *)v8 initWithTitle:v9 joinMethods:v6 conferenceDetails:v10];
  [(EKVirtualConference *)v11 setSource:v7];

  return v11;
}

+ (id)_calJoinMethodFromEKJoinMethod:(id)a3
{
  v3 = MEMORY[0x1E69930A0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 title];
  v7 = [v4 URL];
  v8 = [v4 isBroadcast];

  v9 = [v5 initWithTitle:v6 URL:v7 isBroadcast:v8];

  return v9;
}

+ (id)_calJoinMethodsFromEKJoinMethods:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__ConferenceDatatypeConverter__calJoinMethodsFromEKJoinMethods___block_invoke;
  v5[3] = &__block_descriptor_40_e71___CalVirtualConferenceJoinMethod_16__0__EKVirtualConferenceJoinMethod_8l;
  v5[4] = a1;
  v3 = [a3 CalMap:v5];

  return v3;
}

+ (id)_ekJoinMethodFromCalJoinMethod:(id)a3
{
  v3 = a3;
  v4 = [EKVirtualConferenceJoinMethod alloc];
  v5 = [v3 title];
  v6 = [v3 URL];
  v7 = [(EKVirtualConferenceJoinMethod *)v4 initWithTitle:v5 url:v6];

  v8 = [v3 isBroadcast];
  [(EKVirtualConferenceJoinMethod *)v7 setIsBroadcast:v8];

  return v7;
}

+ (id)_ekJoinMethodsFromCalJoinMethods:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__ConferenceDatatypeConverter__ekJoinMethodsFromCalJoinMethods___block_invoke;
  v5[3] = &__block_descriptor_40_e71___EKVirtualConferenceJoinMethod_16__0__CalVirtualConferenceJoinMethod_8l;
  v5[4] = a1;
  v3 = [a3 CalMap:v5];

  return v3;
}

@end