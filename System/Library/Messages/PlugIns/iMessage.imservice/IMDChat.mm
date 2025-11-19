@interface IMDChat
- (NSNumber)transcriptBackgroundVersion;
- (id)backgroundPropertiesForNewGroupParticipant;
- (id)makeGroupContextDictionaryWithCallerID:(id)a3 skipVersions:(BOOL)a4;
@end

@implementation IMDChat

- (id)makeGroupContextDictionaryWithCallerID:(id)a3 skipVersions:(BOOL)a4
{
  v6 = a3;
  v7 = +[NSMutableDictionary dictionary];
  v8 = [(IMDChat *)self groupID];
  [v7 setObject:v8 forKeyedSubscript:@"gid"];

  v9 = [(IMDChat *)self participants];
  v10 = [v9 arrayByApplyingSelector:"ID"];
  v11 = [v10 mutableCopy];

  if ([v6 length])
  {
    v12 = [v6 _stripFZIDPrefix];
    [v11 addObject:v12];
  }

  v13 = [v11 _URIsFromIDs];
  [v7 setObject:v13 forKeyedSubscript:@"p"];
  v14 = [(IMDChat *)self displayName];

  if (v14)
  {
    v15 = [(IMDChat *)self displayName];
    [v7 setObject:v15 forKeyedSubscript:@"n"];
  }

  if (!a4)
  {
    v16 = [(IMDChat *)self properties];
    v17 = [v16 objectForKeyedSubscript:@"gv"];

    if (v17)
    {
      v18 = [v16 objectForKeyedSubscript:@"gv"];
      [v7 setObject:v18 forKeyedSubscript:@"gv"];
    }

    v19 = IMDChatGroupParticipantVersionKey;
    v20 = [v16 objectForKeyedSubscript:IMDChatGroupParticipantVersionKey];

    if (v20)
    {
      v21 = [v16 objectForKeyedSubscript:v19];
      [v7 setObject:v21 forKeyedSubscript:v19];
    }
  }

  v22 = [v7 copy];

  return v22;
}

- (NSNumber)transcriptBackgroundVersion
{
  v2 = self;
  v3 = IMDChat.backgroundVersion.getter();

  return v3;
}

- (id)backgroundPropertiesForNewGroupParticipant
{
  v2 = self;
  v3 = IMDChat.backgroundPropertiesForNewGroupParticipant()();

  if (v3)
  {
    v4.super.isa = sub_BD834().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

@end