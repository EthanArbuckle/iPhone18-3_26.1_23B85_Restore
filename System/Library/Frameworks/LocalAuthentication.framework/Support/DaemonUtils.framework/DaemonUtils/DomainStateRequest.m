@interface DomainStateRequest
- (DomainStateRequest)initWithOptions:(id)a3 client:(id)a4 contextID:(id)a5;
- (LACXPCClient)client;
- (NSNumber)userID;
@end

@implementation DomainStateRequest

- (DomainStateRequest)initWithOptions:(id)a3 client:(id)a4 contextID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = +[Caller current];
  v15.receiver = self;
  v15.super_class = DomainStateRequest;
  v13 = [(Request *)&v15 initWithCaller:v12];

  if (v13)
  {
    objc_storeStrong(&v13->_contextID, a5);
    objc_storeStrong(&v13->_options, a3);
    objc_storeWeak(&v13->_client, v10);
  }

  return v13;
}

- (NSNumber)userID
{
  v3 = [(NSDictionary *)self->_options objectForKeyedSubscript:&unk_284B71DE0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = MEMORY[0x277CCABB0];
    WeakRetained = objc_loadWeakRetained(&self->_client);
    v5 = [v6 numberWithUnsignedInt:{objc_msgSend(WeakRetained, "userId")}];
  }

  return v5;
}

- (LACXPCClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

@end