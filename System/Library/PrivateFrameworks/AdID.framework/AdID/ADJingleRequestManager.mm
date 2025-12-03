@interface ADJingleRequestManager
+ (id)sharedInstance;
- (ADJingleRequestManager)init;
- (BOOL)canMakeJingleRequest;
- (void)authenticateUser:(id)user;
- (void)jingleRequestCompleted:(id)completed;
- (void)startJingleRequest:(id)request;
@end

@implementation ADJingleRequestManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__ADJingleRequestManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__onceToken_5 != -1)
  {
    dispatch_once(&sharedInstance__onceToken_5, block);
  }

  v2 = sharedInstance__instance_5;

  return v2;
}

uint64_t __40__ADJingleRequestManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance__instance_5 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (ADJingleRequestManager)init
{
  v6.receiver = self;
  v6.super_class = ADJingleRequestManager;
  v2 = [(ADJingleRequestManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingJingleRequests = v2->_pendingJingleRequests;
    v2->_pendingJingleRequests = v3;
  }

  return v2;
}

- (void)startJingleRequest:(id)request
{
  requestCopy = request;
  pendingJingleRequests = self->_pendingJingleRequests;
  token = [requestCopy token];
  [(NSMutableDictionary *)pendingJingleRequests setObject:requestCopy forKeyedSubscript:token];

  workQueue = [MEMORY[0x277CE96B8] workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__ADJingleRequestManager_startJingleRequest___block_invoke;
  v9[3] = &unk_278C57E10;
  v10 = requestCopy;
  v8 = requestCopy;
  [workQueue addOperationWithBlock:v9];
}

void __74__ADJingleRequestManager_makeSegmentRequest_forceSegments_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CE96B8] workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__ADJingleRequestManager_makeSegmentRequest_forceSegments_withCompletion___block_invoke_2;
  v7[3] = &unk_278C57EB0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 addOperationWithBlock:v7];
}

uint64_t __74__ADJingleRequestManager_makeSegmentRequest_forceSegments_withCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) jingleRequestCompleted:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (BOOL)canMakeJingleRequest
{
  mEMORY[0x277CE9658] = [MEMORY[0x277CE9658] sharedInstance];
  activeDSIDRecord = [mEMORY[0x277CE9658] activeDSIDRecord];

  if (!activeDSIDRecord)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] There is no active DSID Record.", objc_opt_class()];
    _ADLog();
  }

  mEMORY[0x277CE9658]2 = [MEMORY[0x277CE9658] sharedInstance];
  activeDSIDRecord2 = [mEMORY[0x277CE9658]2 activeDSIDRecord];
  v7 = activeDSIDRecord2 != 0;

  return v7;
}

- (void)jingleRequestCompleted:(id)completed
{
  pendingJingleRequests = self->_pendingJingleRequests;
  completedCopy = completed;
  token = [completedCopy token];
  v7 = [(NSMutableDictionary *)pendingJingleRequests objectForKey:token];

  if (v7)
  {
    v8 = self->_pendingJingleRequests;
    token2 = [completedCopy token];

    [(NSMutableDictionary *)v8 removeObjectForKey:token2];
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    token2 = [completedCopy token];

    v10 = [v9 stringWithFormat:@"Received a response to Jingle request %@, but the request has already timed out this response will be ignored.", token2];;
    _ADLog();
  }
}

- (void)authenticateUser:(id)user
{
  userCopy = user;
  workQueue = [MEMORY[0x277CE96B8] workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__ADJingleRequestManager_authenticateUser___block_invoke;
  v7[3] = &unk_278C57E88;
  v7[4] = self;
  v8 = userCopy;
  v6 = userCopy;
  [workQueue addOperationWithBlock:v7];
}

void __43__ADJingleRequestManager_authenticateUser___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CE9638] sharedInstance];
  if ([v2 educationModeEnabled])
  {
    goto LABEL_6;
  }

  v3 = [MEMORY[0x277CE9638] sharedInstance];
  if ([v3 isManagedAppleID])
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  v4 = [MEMORY[0x277CE9638] sharedInstance];
  if ([v4 isProtoU13state])
  {

    goto LABEL_5;
  }

  v7 = [MEMORY[0x277CE9638] sharedInstance];
  v8 = [v7 isProtoTeenState];

  if (v8)
  {
LABEL_7:
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(v5 + 16);

      v6();
    }

    return;
  }

  v9 = [MEMORY[0x277CE9638] sharedInstance];
  v27 = [v9 iTunesStoreAccount];

  v10 = MEMORY[0x277CCACA8];
  v11 = *(a1 + 32);
  v12 = objc_opt_class();
  if (v27)
  {
    v13 = [v10 stringWithFormat:@"[%@]: Initiating Jingle authentication request.", v12];
    _ADLog();

    v14 = +[ADAMSBagManager sharedInstance];
    v15 = [v14 authenticateAccountThroughAMSOperation:v27];

    v16 = MEMORY[0x277CCACA8];
    v17 = *(a1 + 32);
    v18 = objc_opt_class();
    v19 = v18;
    if (v15)
    {
      v20 = [v27 ams_DSID];
      v21 = [v20 stringValue];
      v22 = [v16 stringWithFormat:@"[%@]: Successfully authenticated account. The account is: %@", v19, v21];
      _ADLog();

      v23 = *(a1 + 40);
      if (v23)
      {
        v24 = *(v23 + 16);
LABEL_21:
        v24();
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    [v16 stringWithFormat:@"[%@]: FILE A RADAR IMMEDIATELY: We have an active account but could not authenticate it.", v18];
  }

  else
  {
    [v10 stringWithFormat:@"[%@]: Jingle authentication request failed, ACAccount is (null).", v12];
  }
  v25 = ;
  _ADLog();

  v26 = *(a1 + 40);
  if (v26)
  {
    v24 = *(v26 + 16);
    goto LABEL_21;
  }

LABEL_22:
}

@end