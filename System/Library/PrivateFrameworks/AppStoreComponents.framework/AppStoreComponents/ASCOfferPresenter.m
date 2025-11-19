@interface ASCOfferPresenter
- (ASCOfferPresenter)initWithView:(id)a3;
- (ASCOfferPresenter)initWithView:(id)a3 context:(id)a4;
- (ASCOfferPresenterObserver)observer;
- (ASCOfferPresenterView)view;
- (BOOL)clearConfirmForNewStateIfNeeded;
- (BOOL)confirmOfferActionIfNeeded;
- (BOOL)viewAppForAppDistributionOffer;
- (NSString)description;
- (void)confirmOfferActionIfNeeded;
- (void)offerStateDidChange:(id)a3 withMetadata:(id)a4 isActionable:(BOOL)a5;
- (void)offerStatusTextDidChange:(id)a3;
- (void)performOfferAction;
- (void)setOffer:(id)a3;
- (void)setOfferStateMachine:(id)a3;
@end

@implementation ASCOfferPresenter

- (ASCOfferPresenter)initWithView:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ASCOfferPresenter;
  v8 = [(ASCOfferPresenter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_view, v6);
    objc_storeStrong(&v9->_context, a4);
    objc_storeStrong(&v9->_mostRecentAppState, @"unknown");
  }

  return v9;
}

- (ASCOfferPresenter)initWithView:(id)a3
{
  v4 = a3;
  v5 = +[ASCPresenterContext sharedContext];
  v6 = [(ASCOfferPresenter *)self initWithView:v4 context:v5];

  return v6;
}

- (void)setOfferStateMachine:(id)a3
{
  v8 = a3;
  p_offerStateMachine = &self->_offerStateMachine;
  v6 = self->_offerStateMachine;
  if (v8 && v6)
  {
    v7 = [(ASCAppOfferStateMachine *)v6 isEqual:v8];

    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (v6 == v8)
    {
      goto LABEL_10;
    }
  }

  if (*p_offerStateMachine)
  {
    [(ASCAppOfferStateMachine *)*p_offerStateMachine removeDelegate:self];
  }

  objc_storeStrong(&self->_offerStateMachine, a3);
  if (*p_offerStateMachine)
  {
    [(ASCAppOfferStateMachine *)*p_offerStateMachine addDelegate:self];
  }

LABEL_10:
}

- (void)setOffer:(id)a3
{
  v4 = a3;
  offer = self->_offer;
  v25 = v4;
  if (!v4 || !offer)
  {
    if (offer == v4)
    {
      goto LABEL_14;
    }

LABEL_6:
    [(ASCOfferPresenter *)self setMostRecentAppState:@"unknown"];
    v6 = [(ASCOffer *)v25 copyWithZone:0];
    v7 = self->_offer;
    self->_offer = v6;

    [(ASCOfferPresenter *)self clearConfirmForNewStateIfNeeded];
    v8 = [(ASCOfferPresenter *)self view];
    [v8 setOfferEnabled:1];

    v9 = [(ASCOffer *)v25 flags];
    v10 = [(ASCOfferPresenter *)self view];
    v11 = v10;
    if ((v9 & 8) != 0)
    {
      v12 = @" ";
    }

    else
    {
      v12 = 0;
    }

    [v10 setOfferStatus:v12];

    if (v25)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v25;
        [(ASCOfferPresenter *)self setOfferStateMachine:0];
        v14 = [(ASCOfferPresenter *)self view];
        v15 = [(ASCOffer *)v13 action];
        [v14 setOfferInteractive:v15 != 0];

        v16 = [(ASCOfferPresenter *)self view];
        v17 = [(ASCOffer *)v13 metadata];

        [v16 setOfferMetadata:v17];
      }

      else
      {
        v21 = [(ASCOfferPresenter *)self view];
        [v21 setOfferInteractive:1];

        v22 = [(ASCOfferPresenter *)self context];
        v23 = [v22 appOfferStateCenter];
        v24 = [v23 stateMachineForOffer:v25];
        [(ASCOfferPresenter *)self setOfferStateMachine:v24];
      }
    }

    else
    {
      v18 = [(ASCOfferPresenter *)self view];
      [v18 setOfferInteractive:1];

      v19 = [(ASCOfferPresenter *)self view];
      v20 = +[ASCOfferMetadata emptyMetadata];
      [v19 setOfferMetadata:v20];

      [(ASCOfferPresenter *)self setOfferStateMachine:0];
    }

    goto LABEL_14;
  }

  if (([(ASCOffer *)offer isEqual:v4]& 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_14:
}

- (BOOL)clearConfirmForNewStateIfNeeded
{
  v3 = [(ASCOfferPresenter *)self savedStateForConfirm];

  if (v3)
  {
    v4 = [(ASCOfferPresenter *)self savedStateForConfirm];
    v5 = [v4 metadata];

    v6 = [(ASCOfferPresenter *)self view];
    [v6 setOfferMetadata:v5];

    v7 = [(ASCOfferPresenter *)self savedStateForConfirm];
    v8 = [v7 theme];

    v9 = [(ASCOfferPresenter *)self view];
    [v9 setOfferTheme:v8];

    v10 = [(ASCOfferPresenter *)self view];
    [v10 endOfferModalState];

    [(ASCOfferPresenter *)self setSavedStateForConfirm:0];
  }

  return v3 != 0;
}

- (BOOL)confirmOfferActionIfNeeded
{
  if ([(ASCOfferPresenter *)self clearConfirmForNewStateIfNeeded])
  {
    return 0;
  }

  v4 = [(ASCOfferPresenter *)self offer];
  v5 = [v4 titles];
  v6 = [v5 objectForKeyedSubscript:@"confirmation"];

  if (!v6 || (-[ASCOfferPresenter offer](self, "offer"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 flags], v7, (v8 & 4) != 0))
  {
    v3 = 0;
  }

  else
  {
    v9 = [(ASCOfferPresenter *)self mostRecentAppState];
    if (([v9 isEqualToString:@"buyable"] & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"unknown"))
    {
      v10 = [(ASCOfferPresenter *)self view];
      v11 = [v10 saveOfferState];

      v3 = v11 != 0;
      if (v11)
      {
        v12 = [v11 metadata];
        if ([v12 isText])
        {
          v13 = v12;
          v14 = [(ASCOfferPresenter *)self view];
          v15 = [v13 subtitle];

          v16 = [ASCOfferMetadata textMetadataWithTitle:v6 subtitle:v15];
          [v14 setOfferMetadata:v16];
        }

        else
        {
          v14 = [(ASCOfferPresenter *)self view];
          v15 = [ASCOfferMetadata textMetadataWithTitle:v6 subtitle:0];
          [v14 setOfferMetadata:v15];
        }

        v17 = [(ASCOfferPresenter *)self view];
        v18 = [v11 theme];
        v19 = [ASCOfferTheme confirmationForTheme:v18];
        [v17 setOfferTheme:v19];

        objc_initWeak(&location, self);
        v20 = [(ASCOfferPresenter *)self view];
        v22 = MEMORY[0x277D85DD0];
        v23 = 3221225472;
        v24 = __47__ASCOfferPresenter_confirmOfferActionIfNeeded__block_invoke;
        v25 = &unk_2781CBD28;
        objc_copyWeak(&v26, &location);
        [v20 beginOfferModalStateWithCancelBlock:&v22];

        [(ASCOfferPresenter *)self setSavedStateForConfirm:v11, v22, v23, v24, v25];
        objc_destroyWeak(&v26);
        objc_destroyWeak(&location);
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [(ASCOfferPresenter *)self confirmOfferActionIfNeeded];
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void __47__ASCOfferPresenter_confirmOfferActionIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained clearConfirmForNewStateIfNeeded];
}

- (void)performOfferAction
{
  v3 = [(ASCOfferPresenter *)self offerStateMachine];
  if (v3)
  {
    if (![(ASCOfferPresenter *)self confirmOfferActionIfNeeded])
    {
      v4 = [(ASCOfferPresenter *)self view];
      [v4 setOfferInteractive:0];

      objc_initWeak(&location, self);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __39__ASCOfferPresenter_performOfferAction__block_invoke;
      v28[3] = &unk_2781CC458;
      objc_copyWeak(&v30, &location);
      v29 = v3;
      v5 = MEMORY[0x216070C30](v28);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __39__ASCOfferPresenter_performOfferAction__block_invoke_4;
      v26[3] = &unk_2781CC480;
      v6 = v5;
      v27 = v6;
      v7 = MEMORY[0x216070C30](v26);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __39__ASCOfferPresenter_performOfferAction__block_invoke_5;
      v23[3] = &unk_2781CC4A8;
      objc_copyWeak(&v25, &location);
      v8 = v7;
      v24 = v8;
      v9 = MEMORY[0x216070C30](v23);
      v10 = [(ASCOfferPresenter *)self observer];

      if (v10)
      {
        v11 = [(ASCOfferPresenter *)self mostRecentAppState];
        v12 = [(ASCOfferPresenter *)self observer];
        v13 = [(ASCOfferPresenter *)self offer];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __39__ASCOfferPresenter_performOfferAction__block_invoke_10;
        v21[3] = &unk_2781CBC98;
        v22 = v9;
        [v12 offerPresenterPreprocessOffer:v13 inState:v11 completionBlock:v21];
      }

      else if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v8[2](v8);
      }

      else
      {
        dispatch_async(MEMORY[0x277D85CD0], v8);
      }

      objc_destroyWeak(&v25);
      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v14 = [(ASCOfferPresenter *)self offer];
    if (v14)
    {
      v15 = v14;
      v16 = [(ASCOfferPresenter *)self offer];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v18 = [(ASCOfferPresenter *)self offer];
        v19 = [v18 action];

        if (v19)
        {
          v20 = [v18 action];
          v20[2]();
        }
      }
    }
  }
}

void __39__ASCOfferPresenter_performOfferAction__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) invalidateTemporaryStateForcingUpdate:0];
    v5 = objc_alloc_init(ASCMetricsActivity);
    v6 = objc_alloc_init(ASCOfferContext);
    v7 = [WeakRetained observer];
    v8 = [WeakRetained offer];
    v9 = [WeakRetained mostRecentAppState];
    v16 = v6;
    v17 = v5;
    [v7 offerPresenterWillPerformActionOfOffer:v8 inState:v9 withActivity:&v17 inContext:&v16 withPaymentSheetView:0];
    v10 = v17;

    v11 = v16;
    v12 = [*(a1 + 32) performActionWithActivity:v10 inContext:v11];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __39__ASCOfferPresenter_performOfferAction__block_invoke_2;
    v13[3] = &unk_2781CC430;
    objc_copyWeak(&v15, (a1 + 40));
    v14 = *(a1 + 32);
    [v12 addFinishBlock:v13];

    objc_destroyWeak(&v15);
  }
}

void __39__ASCOfferPresenter_performOfferAction__block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __39__ASCOfferPresenter_performOfferAction__block_invoke_3;
  v2[3] = &unk_2781CC408;
  objc_copyWeak(&v4, (a1 + 40));
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);

  objc_destroyWeak(&v4);
}

void __39__ASCOfferPresenter_performOfferAction__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained offerStateMachine];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v5 = [v6 view];
    [v5 setOfferInteractive:1];
  }
}

void __39__ASCOfferPresenter_performOfferAction__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __39__ASCOfferPresenter_performOfferAction__block_invoke_5_cold_1(v3);
      }

      v5 = [WeakRetained view];
      [v5 setOfferInteractive:1];
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

void __39__ASCOfferPresenter_performOfferAction__block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __39__ASCOfferPresenter_performOfferAction__block_invoke_2_12;
    v4[3] = &unk_2781CBC48;
    v6 = *(a1 + 32);
    v5 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v4);
  }
}

- (BOOL)viewAppForAppDistributionOffer
{
  v3 = [(ASCOfferPresenter *)self offer];
  if (v3)
  {
    v4 = v3;
    v5 = [(ASCOfferPresenter *)self offer];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [(ASCOfferPresenter *)self offer];
      v8 = [(ASCOfferPresenter *)self offerStateMachine];
      [v8 viewAppForAppDistributionOffer:v7];

      LOBYTE(v3) = 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)offerStateDidChange:(id)a3 withMetadata:(id)a4 isActionable:(BOOL)a5
{
  v5 = a5;
  v14 = a3;
  v8 = a4;
  [(ASCOfferPresenter *)self clearConfirmForNewStateIfNeeded];
  v9 = [(ASCOfferPresenter *)self view];
  [v9 setOfferEnabled:v5];

  v10 = [(ASCOfferPresenter *)self view];
  [v10 setOfferMetadata:v8];

  v11 = [(ASCOfferPresenter *)self mostRecentAppState];
  if (!v14 || !v11)
  {

    if (v11 == v14)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v12 = [v14 isEqual:v11];

  if ((v12 & 1) == 0)
  {
LABEL_6:
    v13 = [(ASCOfferPresenter *)self observer];
    [v13 offerPresenterDidObserveChangeToState:v14];

    [(ASCOfferPresenter *)self setMostRecentAppState:v14];
  }

LABEL_7:
}

- (void)offerStatusTextDidChange:(id)a3
{
  v4 = a3;
  v5 = [(ASCOfferPresenter *)self view];
  [v5 setOfferStatus:v4];
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCOfferPresenter *)self offer];
  [(ASCDescriber *)v3 addSensitiveObject:v4 withName:@"offer"];

  v5 = [(ASCDescriber *)v3 finalizeDescription];

  return v5;
}

- (ASCOfferPresenterObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (ASCOfferPresenterView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)confirmOfferActionIfNeeded
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = [a1 view];
  v2 = 138412290;
  v3 = v1;
  _os_log_error_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Offer presenter view %@ did not provide offer state for two phase buy", &v2, 0xCu);
}

void __39__ASCOfferPresenter_performOfferAction__block_invoke_5_cold_1(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  v2 = 138412290;
  v3 = v1;
  _os_log_error_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Offer preprocessing failed with error: %@", &v2, 0xCu);
}

@end