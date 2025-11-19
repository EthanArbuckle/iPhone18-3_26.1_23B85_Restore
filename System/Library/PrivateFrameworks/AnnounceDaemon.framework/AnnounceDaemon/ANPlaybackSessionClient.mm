@interface ANPlaybackSessionClient
+ (id)clientWithXPCConnection:(id)a3;
- (id)copy;
- (id)description;
@end

@implementation ANPlaybackSessionClient

+ (id)clientWithXPCConnection:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v5 UUIDString];
  [v4 setSessionID:v6];

  [v4 setConnection:v3];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ANPlaybackSessionClient *)self connection];
  v5 = [(ANPlaybackSessionClient *)self sessionID];
  v6 = [(ANPlaybackSessionClient *)self groupID];
  v7 = [v3 stringWithFormat:@"Connection = %@, Session ID: = %@, Group ID = %@", v4, v5, v6];

  return v7;
}

- (id)copy
{
  v3 = objc_opt_new();
  v4 = [(ANPlaybackSessionClient *)self connection];
  [v3 setConnection:v4];

  v5 = [(ANPlaybackSessionClient *)self sessionID];
  [v3 setSessionID:v5];

  v6 = [(ANPlaybackSessionClient *)self groupID];
  [v3 setGroupID:v6];

  v7 = [(ANPlaybackSessionClient *)self endpointID];
  [v3 setEndpointID:v7];

  return v3;
}

@end