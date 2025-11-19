@interface ASCAppOfferStateMachine
- (ASCAppOfferStateCenter)stateCenter;
- (ASCAppOfferStateMachine)initWithOffer:(id)a3 stateCenter:(id)a4;
- (id)performActionWithActivity:(id)a3 inContext:(id)a4;
- (void)addDelegate:(id)a3;
- (void)dealloc;
- (void)enumerateDelegatesUsingBlock:(id)a3;
- (void)installTemporaryWaitingState;
- (void)invalidateTemporaryStateForcingUpdate:(BOOL)a3;
- (void)offerStateDidChange:(id)a3 withMetadata:(id)a4 flags:(int64_t)a5;
- (void)offerStatusTextDidChange:(id)a3;
- (void)removeDelegate:(id)a3;
- (void)viewAppForAppDistributionOffer:(id)a3;
@end

@implementation ASCAppOfferStateMachine

- (ASCAppOfferStateMachine)initWithOffer:(id)a3 stateCenter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ASCAppOfferStateMachine;
  v8 = [(ASCAppOfferStateMachine *)&v14 init];
  if (v8)
  {
    v9 = [v6 copyWithZone:0];
    offer = v8->_offer;
    v8->_offer = v9;

    objc_storeWeak(&v8->_stateCenter, v7);
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
    v3 = [(ASCAppOfferStateMachine *)self stateCenter];
    v4 = [(ASCAppOfferStateMachine *)self offer];
    [v3 stopObservingStateForOffer:v4];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = self;
      _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%@ is being destroyed on background thread", buf, 0xCu);
    }

    v5 = [(ASCAppOfferStateMachine *)self stateCenter];
    v6 = [(ASCAppOfferStateMachine *)self offer];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__ASCAppOfferStateMachine_dealloc__block_invoke;
    block[3] = &unk_2781CC1F8;
    v9 = v5;
    v10 = v6;
    v4 = v6;
    v3 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v7.receiver = self;
  v7.super_class = ASCAppOfferStateMachine;
  [(ASCAppOfferStateMachine *)&v7 dealloc];
}

- (void)addDelegate:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [MEMORY[0x277CCAE60] valueWithWeakObject:v4];
  v6 = [(ASCAppOfferStateMachine *)self delegates];
  v7 = [v6 containsObject:v5];

  if ((v7 & 1) == 0)
  {
    v8 = [(ASCAppOfferStateMachine *)self delegates];
    [v8 addObject:v5];

    v9 = [(ASCAppOfferStateMachine *)self mostRecentState];

    if (v9)
    {
      v10 = [(ASCAppOfferStateMachine *)self mostRecentState];
      v11 = [v10 state];
      v12 = [(ASCAppOfferStateMachine *)self mostRecentState];
      v13 = [v12 metadata];
      v14 = [(ASCAppOfferStateMachine *)self mostRecentState];
      [v4 offerStateDidChange:v11 withMetadata:v13 isActionable:{objc_msgSend(v14, "isActionable")}];
    }

    v15 = [(ASCAppOfferStateMachine *)self mostRecentStatusText];

    if (v15)
    {
      v16 = [(ASCAppOfferStateMachine *)self mostRecentStatusText];
      [v4 offerStatusTextDidChange:v16];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [ASCAppOfferStateMachine addDelegate:];
    }
  }
}

- (void)removeDelegate:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [MEMORY[0x277CCAE60] valueWithWeakObject:v4];
  v6 = [(ASCAppOfferStateMachine *)self delegates];
  v7 = [v6 indexOfObject:v5];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(ASCAppOfferStateMachine *)self delegates];
    [v8 removeObjectAtIndex:v7];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [ASCAppOfferStateMachine removeDelegate:];
    }
  }
}

- (void)enumerateDelegatesUsingBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v6 = [(ASCAppOfferStateMachine *)self delegates];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __56__ASCAppOfferStateMachine_enumerateDelegatesUsingBlock___block_invoke;
  v13 = &unk_2781CC220;
  v14 = v5;
  v15 = v4;
  v7 = v4;
  v8 = v5;
  [v6 enumerateObjectsUsingBlock:&v10];

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

- (void)offerStateDidChange:(id)a3 withMetadata:(id)a4 flags:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v10 = [(ASCAppOfferStateMachine *)self mostRecentState];
  v11 = [(ASCAppOfferStateMachine *)self overrideState];
  if (v11)
  {
    v12 = v11;
    v13 = [(ASCAppOfferStateMachine *)self overrideState];
    v14 = [v13 state];
    if ([v8 isEqualToString:v14])
    {
      v25 = v10;
      v15 = [(ASCAppOfferStateMachine *)self overrideState];
      v16 = [v15 metadata];
      if ([v9 isEqual:v16])
      {
        v17 = [(ASCAppOfferStateMachine *)self overrideState];
        v24 = [v17 flags];

        v10 = v25;
        if (v24 == a5)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      v10 = v25;
    }
  }

LABEL_8:
  v18 = [[ASCAppOfferSavedState alloc] initWithState:v8 metadata:v9 flags:a5];
  [(ASCAppOfferStateMachine *)self setMostRecentState:v18];

LABEL_9:
  v19 = [(ASCAppOfferStateMachine *)self mostRecentState];
  v20 = [v19 isLoadingFullState];

  if (!v20 || !v10)
  {
    v21 = [(ASCAppOfferStateMachine *)self overrideState];
    if (v21)
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

- (void)offerStatusTextDidChange:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(ASCAppOfferStateMachine *)self setMostRecentStatusText:v4];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__ASCAppOfferStateMachine_offerStatusTextDidChange___block_invoke;
  v6[3] = &unk_2781CC248;
  v7 = v4;
  v5 = v4;
  [(ASCAppOfferStateMachine *)self enumerateDelegatesUsingBlock:v6];
}

- (id)performActionWithActivity:(id)a3 inContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ASCAppOfferStateMachine *)self stateCenter];
  v9 = [(ASCAppOfferStateMachine *)self offer];
  v10 = [v8 performActionOfOffer:v9 withActivity:v7 inContext:v6];

  return v10;
}

- (void)viewAppForAppDistributionOffer:(id)a3
{
  v4 = a3;
  v5 = [(ASCAppOfferStateMachine *)self stateCenter];
  [v5 viewAppForAppDistributionOffer:v4];
}

- (void)installTemporaryWaitingState
{
  v12 = [(ASCAppOfferStateMachine *)self mostRecentState];
  v3 = [v12 state];
  if ([v3 isEqualToString:@"openable"])
  {
    goto LABEL_6;
  }

  v4 = [(ASCAppOfferStateMachine *)self mostRecentState];
  v5 = [v4 state];
  if ([v5 isEqualToString:@"waiting"])
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  v6 = [(ASCAppOfferStateMachine *)self mostRecentState];
  v7 = [v6 state];
  if ([v7 isEqualToString:@"installing"])
  {

    goto LABEL_5;
  }

  v8 = [(ASCAppOfferStateMachine *)self mostRecentState];
  v9 = [v8 state];
  v10 = [v9 isEqualToString:@"installed"];

  if (v10)
  {
    return;
  }

  v12 = +[ASCOfferMetadata indeterminateProgressMetadata];
  v11 = [[ASCAppOfferSavedState alloc] initWithState:@"waiting" metadata:v12 flags:0];
  [(ASCAppOfferStateMachine *)self setOverrideState:v11];

  [(ASCAppOfferStateMachine *)self offerStateDidChange:@"waiting" withMetadata:v12 flags:0];
LABEL_7:
}

- (void)invalidateTemporaryStateForcingUpdate:(BOOL)a3
{
  v3 = a3;
  [(ASCAppOfferStateMachine *)self setOverrideState:0];
  if (v3)
  {
    v5 = [(ASCAppOfferStateMachine *)self mostRecentState];

    if (v5)
    {
      v10 = [(ASCAppOfferStateMachine *)self mostRecentState];
      v6 = [v10 state];
      v7 = [(ASCAppOfferStateMachine *)self mostRecentState];
      v8 = [v7 metadata];
      v9 = [(ASCAppOfferStateMachine *)self mostRecentState];
      -[ASCAppOfferStateMachine offerStateDidChange:withMetadata:flags:](self, "offerStateDidChange:withMetadata:flags:", v6, v8, [v9 flags]);
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