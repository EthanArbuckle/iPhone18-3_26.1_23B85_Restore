@interface EKConferencePersistence
+ (id)deserializeConference:(id)conference;
+ (id)serializeConference:(id)conference;
@end

@implementation EKConferencePersistence

+ (id)serializeConference:(id)conference
{
  conferenceCopy = conference;
  v4 = [ConferenceDatatypeConverter calVirtualConferenceFromEKVirtualConference:conferenceCopy];
  joinMethods = [conferenceCopy joinMethods];
  firstObject = [joinMethods firstObject];
  v7 = [firstObject URL];
  v8 = [EKConferenceUtils synchronousAppTitleOnlyForURL:v7 incomplete:0];

  v9 = EKBundle();
  v10 = [v9 localizedStringForKey:@"Video Call" value:&stru_1F1B49D68 table:0];

  serializationBlockTitle = [conferenceCopy serializationBlockTitle];

  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (serializationBlockTitle)
  {
    v12 = serializationBlockTitle;
  }

  v13 = v12;

  v14 = [MEMORY[0x1E6992F38] serializeConference:v4 serializationBlockTitle:v13];

  return v14;
}

+ (id)deserializeConference:(id)conference
{
  v3 = [MEMORY[0x1E6992F38] deserializeConference:conference];
  v4 = [ConferenceDatatypeConverter ekDeserializationResultFromCalDeserializationResult:v3];

  return v4;
}

@end