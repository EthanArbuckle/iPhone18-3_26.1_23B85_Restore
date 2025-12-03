@interface ANPlaybackSessionClient
+ (id)clientWithXPCConnection:(id)connection;
- (id)copy;
- (id)description;
@end

@implementation ANPlaybackSessionClient

+ (id)clientWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v4 = objc_opt_new();
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v4 setSessionID:uUIDString];

  [v4 setConnection:connectionCopy];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  connection = [(ANPlaybackSessionClient *)self connection];
  sessionID = [(ANPlaybackSessionClient *)self sessionID];
  groupID = [(ANPlaybackSessionClient *)self groupID];
  v7 = [v3 stringWithFormat:@"Connection = %@, Session ID: = %@, Group ID = %@", connection, sessionID, groupID];

  return v7;
}

- (id)copy
{
  v3 = objc_opt_new();
  connection = [(ANPlaybackSessionClient *)self connection];
  [v3 setConnection:connection];

  sessionID = [(ANPlaybackSessionClient *)self sessionID];
  [v3 setSessionID:sessionID];

  groupID = [(ANPlaybackSessionClient *)self groupID];
  [v3 setGroupID:groupID];

  endpointID = [(ANPlaybackSessionClient *)self endpointID];
  [v3 setEndpointID:endpointID];

  return v3;
}

@end