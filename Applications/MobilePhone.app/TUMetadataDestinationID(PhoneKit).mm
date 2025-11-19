@interface TUMetadataDestinationID(PhoneKit)
+ (id)metadataDestinationIDWithVoicemailMessage:()PhoneKit;
+ (id)metadataDestinationIDsForVMVoicemails:()PhoneKit;
@end

@implementation TUMetadataDestinationID(PhoneKit)

+ (id)metadataDestinationIDWithVoicemailMessage:()PhoneKit
{
  v4 = a3;
  v5 = [v4 senderDestinationID];
  if ([v5 length])
  {
    v6 = [v4 senderISOCountryCode];
    v7 = [TUHandle normalizedPhoneNumberHandleForValue:v5 isoCountryCode:v6];

    if (v7)
    {
      v8 = [[a1 alloc] initWithHandle:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)metadataDestinationIDsForVMVoicemails:()PhoneKit
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableOrderedSet);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [v9 receiverDestinationID];
        if ([v10 length])
        {
          v11 = [v9 receiverISOCountryCode];
          v12 = [TUHandle normalizedPhoneNumberHandleForValue:v10 isoCountryCode:v11];

          if (v12)
          {
            v13 = [[TUMetadataDestinationID alloc] initWithHandle:v12];
          }

          else
          {
            v13 = 0;
          }

          [v4 addObject:v13];
        }

        else
        {
          v13 = 0;
        }

        v14 = [v9 senderDestinationID];

        if ([v14 length])
        {
          v15 = [v9 senderISOCountryCode];
          v16 = [TUHandle normalizedPhoneNumberHandleForValue:v14 isoCountryCode:v15];

          if (v16)
          {
            v17 = [[TUMetadataDestinationID alloc] initWithHandle:v16];

            v13 = v17;
          }

          [v4 addObject:v13];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = [v4 array];

  return v18;
}

@end