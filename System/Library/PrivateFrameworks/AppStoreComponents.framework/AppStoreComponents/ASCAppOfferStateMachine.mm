@interface ASCAppOfferStateMachine
- (ASCAppOfferStateCenter)stateCenter;
- (ASCAppOfferStateMachine)initWithOffer:(id)offer stateCenter:(id)center;
- (id)performActionWithActivity:(id)activity inContext:(id)context;
- (void)addDelegate:(id)delegate;
- (void)dealloc;
- (void)enumerateDelegatesUsingBlock:(id)block;
- (void)installTemporaryWaitingState;
- (void)invalidateTemporaryStateForcingUpdate:(BOOL)update;
- (void)offerStateDidChange:(id)change withMetadata:(id)metadata flags:(int64_t)flags;
- (void)offerStatusTextDidChange:(id)change;
- (void)removeDelegate:(id)delegate;
- (void)viewAppForAppDistributionOffer:(id)offer;
@end

@implementation ASCAppOfferStateMachine

- (ASCAppOfferStateMachine)initWithOffer:(id)offer stateCenter:(id)center
{
  offerCopy = offer;
  centerCopy = center;
  v14.receiver = self;
  v14.super_class = ASCAppOfferStateMachine;
  v8 = [(ASCAppOfferStateMachine *)&v14 init];
  if (v8)
  {
    v9 = [offerCopy copyWithZone:0];
    offer = v8->_offer;
    v8->_offer = v9;

    objc_storeWeak(&v8->_stateCenter, centerCopy);
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    delegates = v8->_delegates;
    v8->_delegates = v11;
  }

  return v8;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    stateCenter = [(ASCAppOfferStateMachine *)self stateCenter];
    offer = [(ASCAppOfferStateMachine *)self offer];
    [stateCenter stopObservingStateForOffer:offer];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%@ is being destroyed on background thread", buf, 0xCu);
    }

    stateCenter2 = [(ASCAppOfferStateMachine *)self stateCenter];
    offer2 = [(ASCAppOfferStateMachine *)self offer];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__ASCAppOfferStateMachine_dealloc__block_invoke;
    block[3] = &unk_2781CC1F8;
    v9 = stateCenter2;
    v10 = offer2;
    offer = offer2;
    stateCenter = stateCenter2;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v7.receiver = self;
  v7.super_class = ASCAppOfferStateMachine;
  [(ASCAppOfferStateMachine *)&v7 dealloc];
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [MEMORY[0x277CCAE60] valueWithWeakObject:delegateCopy];
  delegates = [(ASCAppOfferStateMachine *)self delegates];
  v7 = [delegates containsObject:v5];

  if ((v7 & 1) == 0)
  {
    delegates2 = [(ASCAppOfferStateMachine *)self delegates];
    [delegates2 addObject:v5];

    mostRecentState = [(ASCAppOfferStateMachine *)self mostRecentState];

    if (mostRecentState)
    {
      mostRecentState2 = [(ASCAppOfferStateMachine *)self mostRecentState];
      state = [mostRecentState2 state];
      mostRecentState3 = [(ASCAppOfferStateMachine *)self mostRecentState];
      metadata = [mostRecentState3 metadata];
      mostRecentState4 = [(ASCAppOfferStateMachine *)self mostRecentState];
      [delegateCopy offerStateDidChange:state withMetadata:metadata isActionable:{objc_msgSend(mostRecentState4, "isActionable")}];
    }

    mostRecentStatusText = [(ASCAppOfferStateMachine *)self mostRecentStatusText];

    if (mostRecentStatusText)
    {
      mostRecentStatusText2 = [(ASCAppOfferStateMachine *)self mostRecentStatusText];
      [delegateCopy offerStatusTextDidChange:mostRecentStatusText2];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [ASCAppOfferStateMachine addDelegate:];
    }
  }
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [MEMORY[0x277CCAE60] valueWithWeakObject:delegateCopy];
  delegates = [(ASCAppOfferStateMachine *)self delegates];
  v7 = [delegates indexOfObject:v5];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    delegates2 = [(ASCAppOfferStateMachine *)self delegates];
    [delegates2 removeObjectAtIndex:v7];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [ASCAppOfferStateMachine removeDelegate:];
    }
  }
}

- (void)enumerateDelegatesUsingBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  delegates = [(ASCAppOfferStateMachine *)self delegates];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __56__ASCAppOfferStateMachine_enumerateDelegatesUsingBlock___block_invoke;
  v13 = &unk_2781CC220;
  v14 = v5;
  v15 = blockCopy;
  v7 = blockCopy;
  v8 = v5;
  [delegates enumerateObjectsUsingBlock:&v10];

  v9 = [(ASCAppOfferStateMachine *)self delegates:v10];
  [v9 removeObjectsAtIndexes:v8];
}

void __56__ASCAppOfferStateMachine_enumerateDelegatesUsingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 weakObjectValue];
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [*(a1 + 32) addIndex:a3];
  }
}

- (void)offerStateDidChange:(id)change withMetadata:(id)metadata flags:(int64_t)flags
{
  changeCopy = change;
  metadataCopy = metadata;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  mostRecentState = [(ASCAppOfferStateMachine *)self mostRecentState];
  overrideState = [(ASCAppOfferStateMachine *)self overrideState];
  if (overrideState)
  {
    v12 = overrideState;
    overrideState2 = [(ASCAppOfferStateMachine *)self overrideState];
    state = [overrideState2 state];
    if ([changeCopy isEqualToString:state])
    {
      v25 = mostRecentState;
      overrideState3 = [(ASCAppOfferStateMachine *)self overrideState];
      metadata = [overrideState3 metadata];
      if ([metadataCopy isEqual:metadata])
      {
        overrideState4 = [(ASCAppOfferStateMachine *)self overrideState];
        flags = [overrideState4 flags];

        mostRecentState = v25;
        if (flags == flags)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      mostRecentState = v25;
    }
  }

LABEL_8:
  v18 = [[ASCAppOfferSavedState alloc] initWithState:changeCopy metadata:metadataCopy flags:flags];
  [(ASCAppOfferStateMachine *)self setMostRecentState:v18];

LABEL_9:
  mostRecentState2 = [(ASCAppOfferStateMachine *)self mostRecentState];
  isLoadingFullState = [mostRecentState2 isLoadingFullState];

  if (!isLoadingFullState || !mostRecentState)
  {
    overrideState5 = [(ASCAppOfferStateMachine *)self overrideState];
    if (overrideState5)
    {
      [(ASCAppOfferStateMachine *)self overrideState];
    }

    else
    {
      [(ASCAppOfferStateMachine *)self mostRecentState];
    }
    v22 = ;

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __66__ASCAppOfferStateMachine_offerStateDidChange_withMetadata_flags___block_invoke;
    v26[3] = &unk_2781CC248;
    v27 = v22;
    v23 = v22;
    [(ASCAppOfferStateMachine *)self enumerateDelegatesUsingBlock:v26];
  }
}

void __66__ASCAppOfferStateMachine_offerStateDidChange_withMetadata_flags___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 state];
  v5 = [*(a1 + 32) metadata];
  [v4 offerStateDidChange:v6 withMetadata:v5 isActionable:{objc_msgSend(*(a1 + 32), "isActionable")}];
}

- (void)offerStatusTextDidChange:(id)change
{
  changeCopy = change;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(ASCAppOfferStateMachine *)self setMostRecentStatusText:changeCopy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__ASCAppOfferStateMachine_offerStatusTextDidChange___block_invoke;
  v6[3] = &unk_2781CC248;
  v7 = changeCopy;
  v5 = changeCopy;
  [(ASCAppOfferStateMachine *)self enumerateDelegatesUsingBlock:v6];
}

- (id)performActionWithActivity:(id)activity inContext:(id)context
{
  contextCopy = context;
  activityCopy = activity;
  stateCenter = [(ASCAppOfferStateMachine *)self stateCenter];
  offer = [(ASCAppOfferStateMachine *)self offer];
  v10 = [stateCenter performActionOfOffer:offer withActivity:activityCopy inContext:contextCopy];

  return v10;
}

- (void)viewAppForAppDistributionOffer:(id)offer
{
  offerCopy = offer;
  stateCenter = [(ASCAppOfferStateMachine *)self stateCenter];
  [stateCenter viewAppForAppDistributionOffer:offerCopy];
}

- (void)installTemporaryWaitingState
{
  mostRecentState = [(ASCAppOfferStateMachine *)self mostRecentState];
  state = [mostRecentState state];
  if ([state isEqualToString:@"openable"])
  {
    goto LABEL_6;
  }

  mostRecentState2 = [(ASCAppOfferStateMachine *)self mostRecentState];
  state2 = [mostRecentState2 state];
  if ([state2 isEqualToString:@"waiting"])
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  mostRecentState3 = [(ASCAppOfferStateMachine *)self mostRecentState];
  state3 = [mostRecentState3 state];
  if ([state3 isEqualToString:@"installing"])
  {

    goto LABEL_5;
  }

  mostRecentState4 = [(ASCAppOfferStateMachine *)self mostRecentState];
  state4 = [mostRecentState4 state];
  v10 = [state4 isEqualToString:@"installed"];

  if (v10)
  {
    return;
  }

  mostRecentState = +[ASCOfferMetadata indeterminateProgressMetadata];
  v11 = [[ASCAppOfferSavedState alloc] initWithState:@"waiting" metadata:mostRecentState flags:0];
  [(ASCAppOfferStateMachine *)self setOverrideState:v11];

  [(ASCAppOfferStateMachine *)self offerStateDidChange:@"waiting" withMetadata:mostRecentState flags:0];
LABEL_7:
}

- (void)invalidateTemporaryStateForcingUpdate:(BOOL)update
{
  updateCopy = update;
  [(ASCAppOfferStateMachine *)self setOverrideState:0];
  if (updateCopy)
  {
    mostRecentState = [(ASCAppOfferStateMachine *)self mostRecentState];

    if (mostRecentState)
    {
      mostRecentState2 = [(ASCAppOfferStateMachine *)self mostRecentState];
      state = [mostRecentState2 state];
      mostRecentState3 = [(ASCAppOfferStateMachine *)self mostRecentState];
      metadata = [mostRecentState3 metadata];
      mostRecentState4 = [(ASCAppOfferStateMachine *)self mostRecentState];
      -[ASCAppOfferStateMachine offerStateDidChange:withMetadata:flags:](self, "offerStateDidChange:withMetadata:flags:", state, metadata, [mostRecentState4 flags]);
    }
  }
}

- (ASCAppOfferStateCenter)stateCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_stateCenter);

  return WeakRetained;
}

- (void)addDelegate:.cold.1()
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%@ added delegate %@", v0, 0x16u);
}

- (void)removeDelegate:.cold.1()
{
  v1 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_debug_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%@ removed delegate %@", v0, 0x16u);
}

@end