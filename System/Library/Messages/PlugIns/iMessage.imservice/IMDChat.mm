@interface IMDChat
- (NSNumber)transcriptBackgroundVersion;
- (id)backgroundPropertiesForNewGroupParticipant;
- (id)makeGroupContextDictionaryWithCallerID:(id)d skipVersions:(BOOL)versions;
@end

@implementation IMDChat

- (id)makeGroupContextDictionaryWithCallerID:(id)d skipVersions:(BOOL)versions
{
  dCopy = d;
  v7 = +[NSMutableDictionary dictionary];
  groupID = [(IMDChat *)self groupID];
  [v7 setObject:groupID forKeyedSubscript:@"gid"];

  participants = [(IMDChat *)self participants];
  v10 = [participants arrayByApplyingSelector:"ID"];
  v11 = [v10 mutableCopy];

  if ([dCopy length])
  {
    _stripFZIDPrefix = [dCopy _stripFZIDPrefix];
    [v11 addObject:_stripFZIDPrefix];
  }

  _URIsFromIDs = [v11 _URIsFromIDs];
  [v7 setObject:_URIsFromIDs forKeyedSubscript:@"p"];
  displayName = [(IMDChat *)self displayName];

  if (displayName)
  {
    displayName2 = [(IMDChat *)self displayName];
    [v7 setObject:displayName2 forKeyedSubscript:@"n"];
  }

  if (!versions)
  {
    properties = [(IMDChat *)self properties];
    v17 = [properties objectForKeyedSubscript:@"gv"];

    if (v17)
    {
      v18 = [properties objectForKeyedSubscript:@"gv"];
      [v7 setObject:v18 forKeyedSubscript:@"gv"];
    }

    v19 = IMDChatGroupParticipantVersionKey;
    v20 = [properties objectForKeyedSubscript:IMDChatGroupParticipantVersionKey];

    if (v20)
    {
      v21 = [properties objectForKeyedSubscript:v19];
      [v7 setObject:v21 forKeyedSubscript:v19];
    }
  }

  v22 = [v7 copy];

  return v22;
}

- (NSNumber)transcriptBackgroundVersion
{
  selfCopy = self;
  v3 = IMDChat.backgroundVersion.getter();

  return v3;
}

- (id)backgroundPropertiesForNewGroupParticipant
{
  selfCopy = self;
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