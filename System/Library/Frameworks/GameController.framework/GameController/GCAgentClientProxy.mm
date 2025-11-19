@interface GCAgentClientProxy
@end

@implementation GCAgentClientProxy

void __84___GCAgentClientProxy__initWithConnection_server_userDefaultsProxy_gameIntentProxy___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 _invalidate];
}

uint64_t __37___GCAgentClientProxy_pingWithReply___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __76___GCAgentClientProxy_connectToUserDefaultsXPCProxyServiceWithClient_reply___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v2)
  {
    v4 = a1[5];
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(v3, v4, 0);
}

uint64_t __82___GCAgentClientProxy_connectToGameIntentLauncherXPCProxyServiceWithClient_reply___block_invoke(void *a1)
{
  if (a1[4])
  {
    WeakRetained = objc_loadWeakRetained((a1[5] + 56));
    [WeakRetained agentCheckIn:a1[4] effectiveUserIdentifier:{objc_msgSend(*(a1[5] + 24), "peerEffectiveUserIdentifier")}];

    v3 = a1[5];
  }

  else
  {
    v5 = a1[6];
  }

  v4 = *(a1[6] + 16);

  return v4();
}

uint64_t __79___GCAgentClientProxy_connectToVideoRelocationXPCProxyServiceWithClient_reply___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v2)
  {
    v4 = a1[5];
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(v3, v4, 0);
}

@end