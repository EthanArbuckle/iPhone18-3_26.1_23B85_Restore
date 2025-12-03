@interface DTOPolicyEvaluationIdentifierFactory
- (id)_callerIDForClient:(id)client;
- (id)evaluationIdentifierForClient:(id)client ratchetIdentifier:(id)identifier;
@end

@implementation DTOPolicyEvaluationIdentifierFactory

- (id)evaluationIdentifierForClient:(id)client ratchetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [(DTOPolicyEvaluationIdentifierFactory *)self _callerIDForClient:client];
  v8 = v7;
  v9 = @"<UNKNOWN>";
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  if (identifierCopy)
  {
    uUIDString = identifierCopy;
  }

  else
  {
    v12 = +[NSUUID UUID];
    uUIDString = [v12 UUIDString];
  }

  v13 = [NSString stringWithFormat:@"%@:%@", v10, uUIDString];

  return v13;
}

- (id)_callerIDForClient:(id)client
{
  clientCopy = client;
  processId = [clientCopy processId];
  if (clientCopy)
  {
    [clientCopy auditToken];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  v5 = [DaemonUtils callerIdWithPid:processId auditToken:v7];

  return v5;
}

@end