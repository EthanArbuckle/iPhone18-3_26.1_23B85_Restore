@interface EAAccessoryInternal
- (EAAccessoryInternal)init;
- (void)addSession:(id)session;
- (void)dealloc;
- (void)removeSession:(id)session;
@end

@implementation EAAccessoryInternal

- (EAAccessoryInternal)init
{
  if ([EAAccessoryInternal init]::onceToken != -1)
  {
    [EAAccessoryInternal init];
  }

  v6.receiver = self;
  v6.super_class = EAAccessoryInternal;
  v3 = [(EAAccessoryInternal *)&v6 init];
  v4 = v3;
  if (v3)
  {
    v3->_connected = 0;
    v3->_connectionID = 0;
    v3->_notPresentInIAPAccessoriesArray = 0;
    v3->_pointOfInterestHandoffEnabled = 0;
    v3->_destinationSharingOptions = 0;
    v3->_enqueuedNMEASentences = [MEMORY[0x277CBEB18] array];
    v4->_enqueuedNMEATimestamps = [MEMORY[0x277CBEB18] array];
    v4->_highestXPCDelay = &unk_284B14C70;
    v4->_highestFrameworkDelay = &unk_284B14C70;
    v4->_averageXPCDelay = &unk_284B14C70;
    v4->_averageFrameworkDelay = &unk_284B14C70;
  }

  return v4;
}

id __27__EAAccessoryInternal_init__block_invoke()
{
  result = objc_alloc_init(MEMORY[0x277CCAAF8]);
  __gLocationLock = result;
  return result;
}

- (void)dealloc
{
  self->_connected = 0;
  self->_connectionID = 0;

  self->_notPresentInIAPAccessoriesArray = 0;
  v3.receiver = self;
  v3.super_class = EAAccessoryInternal;
  [(EAAccessoryInternal *)&v3 dealloc];
}

- (void)addSession:(id)session
{
  sessionsList = self->_sessionsList;
  if (!sessionsList)
  {
    sessionsList = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->_sessionsList = sessionsList;
  }

  [(NSMutableArray *)sessionsList addObject:session];
}

- (void)removeSession:(id)session
{
  [(NSMutableArray *)self->_sessionsList removeObject:session];
  if (![(NSMutableArray *)self->_sessionsList count])
  {

    self->_sessionsList = 0;
  }
}

@end