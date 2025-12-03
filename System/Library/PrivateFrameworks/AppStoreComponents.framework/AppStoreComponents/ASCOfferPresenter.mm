@interface ASCOfferPresenter
- (ASCOfferPresenter)initWithView:(id)view;
- (ASCOfferPresenter)initWithView:(id)view context:(id)context;
- (ASCOfferPresenterObserver)observer;
- (ASCOfferPresenterView)view;
- (BOOL)clearConfirmForNewStateIfNeeded;
- (BOOL)confirmOfferActionIfNeeded;
- (BOOL)viewAppForAppDistributionOffer;
- (NSString)description;
- (void)confirmOfferActionIfNeeded;
- (void)offerStateDidChange:(id)change withMetadata:(id)metadata isActionable:(BOOL)actionable;
- (void)offerStatusTextDidChange:(id)change;
- (void)performOfferAction;
- (void)setOffer:(id)offer;
- (void)setOfferStateMachine:(id)machine;
@end

@implementation ASCOfferPresenter

- (ASCOfferPresenter)initWithView:(id)view context:(id)context
{
  viewCopy = view;
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = ASCOfferPresenter;
  v8 = [(ASCOfferPresenter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_view, viewCopy);
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v9->_mostRecentAppState, @"unknown");
  }

  return v9;
}

- (ASCOfferPresenter)initWithView:(id)view
{
  viewCopy = view;
  v5 = +[ASCPresenterContext sharedContext];
  v6 = [(ASCOfferPresenter *)self initWithView:viewCopy context:v5];

  return v6;
}

- (void)setOfferStateMachine:(id)machine
{
  machineCopy = machine;
  p_offerStateMachine = &self->_offerStateMachine;
  v6 = self->_offerStateMachine;
  if (machineCopy && v6)
  {
    v7 = [(ASCAppOfferStateMachine *)v6 isEqual:machineCopy];

    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {

    if (v6 == machineCopy)
    {
      goto LABEL_10;
    }
  }

  if (*p_offerStateMachine)
  {
    [(ASCAppOfferStateMachine *)*p_offerStateMachine removeDelegate:self];
  }

  objc_storeStrong(&self->_offerStateMachine, machine);
  if (*p_offerStateMachine)
  {
    [(ASCAppOfferStateMachine *)*p_offerStateMachine addDelegate:self];
  }

LABEL_10:
}

- (void)setOffer:(id)offer
{
  offerCopy = offer;
  offer = self->_offer;
  v25 = offerCopy;
  if (!offerCopy || !offer)
  {
    if (offer == offerCopy)
    {
      goto LABEL_14;
    }

LABEL_6:
    [(ASCOfferPresenter *)self setMostRecentAppState:@"unknown"];
    v6 = [(ASCOffer *)v25 copyWithZone:0];
    v7 = self->_offer;
    self->_offer = v6;

    [(ASCOfferPresenter *)self clearConfirmForNewStateIfNeeded];
    view = [(ASCOfferPresenter *)self view];
    [view setOfferEnabled:1];

    flags = [(ASCOffer *)v25 flags];
    view2 = [(ASCOfferPresenter *)self view];
    v11 = view2;
    if ((flags & 8) != 0)
    {
      v12 = @" ";
    }

    else
    {
      v12 = 0;
    }

    [view2 setOfferStatus:v12];

    if (v25)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v25;
        [(ASCOfferPresenter *)self setOfferStateMachine:0];
        view3 = [(ASCOfferPresenter *)self view];
        action = [(ASCOffer *)v13 action];
        [view3 setOfferInteractive:action != 0];

        view4 = [(ASCOfferPresenter *)self view];
        metadata = [(ASCOffer *)v13 metadata];

        [view4 setOfferMetadata:metadata];
      }

      else
      {
        view5 = [(ASCOfferPresenter *)self view];
        [view5 setOfferInteractive:1];

        context = [(ASCOfferPresenter *)self context];
        appOfferStateCenter = [context appOfferStateCenter];
        v24 = [appOfferStateCenter stateMachineForOffer:v25];
        [(ASCOfferPresenter *)self setOfferStateMachine:v24];
      }
    }

    else
    {
      view6 = [(ASCOfferPresenter *)self view];
      [view6 setOfferInteractive:1];

      view7 = [(ASCOfferPresenter *)self view];
      v20 = +[ASCOfferMetadata emptyMetadata];
      [view7 setOfferMetadata:v20];

      [(ASCOfferPresenter *)self setOfferStateMachine:0];
    }

    goto LABEL_14;
  }

  if (([(ASCOffer *)offer isEqual:offerCopy]& 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_14:
}

- (BOOL)clearConfirmForNewStateIfNeeded
{
  savedStateForConfirm = [(ASCOfferPresenter *)self savedStateForConfirm];

  if (savedStateForConfirm)
  {
    savedStateForConfirm2 = [(ASCOfferPresenter *)self savedStateForConfirm];
    metadata = [savedStateForConfirm2 metadata];

    view = [(ASCOfferPresenter *)self view];
    [view setOfferMetadata:metadata];

    savedStateForConfirm3 = [(ASCOfferPresenter *)self savedStateForConfirm];
    theme = [savedStateForConfirm3 theme];

    view2 = [(ASCOfferPresenter *)self view];
    [view2 setOfferTheme:theme];

    view3 = [(ASCOfferPresenter *)self view];
    [view3 endOfferModalState];

    [(ASCOfferPresenter *)self setSavedStateForConfirm:0];
  }

  return savedStateForConfirm != 0;
}

- (BOOL)confirmOfferActionIfNeeded
{
  if ([(ASCOfferPresenter *)self clearConfirmForNewStateIfNeeded])
  {
    return 0;
  }

  offer = [(ASCOfferPresenter *)self offer];
  titles = [offer titles];
  v6 = [titles objectForKeyedSubscript:@"confirmation"];

  if (!v6 || (-[ASCOfferPresenter offer](self, "offer"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 flags], v7, (v8 & 4) != 0))
  {
    v3 = 0;
  }

  else
  {
    mostRecentAppState = [(ASCOfferPresenter *)self mostRecentAppState];
    if (([mostRecentAppState isEqualToString:@"buyable"] & 1) != 0 || objc_msgSend(mostRecentAppState, "isEqualToString:", @"unknown"))
    {
      view = [(ASCOfferPresenter *)self view];
      saveOfferState = [view saveOfferState];

      v3 = saveOfferState != 0;
      if (saveOfferState)
      {
        metadata = [saveOfferState metadata];
        if ([metadata isText])
        {
          v13 = metadata;
          view2 = [(ASCOfferPresenter *)self view];
          subtitle = [v13 subtitle];

          v16 = [ASCOfferMetadata textMetadataWithTitle:v6 subtitle:subtitle];
          [view2 setOfferMetadata:v16];
        }

        else
        {
          view2 = [(ASCOfferPresenter *)self view];
          subtitle = [ASCOfferMetadata textMetadataWithTitle:v6 subtitle:0];
          [view2 setOfferMetadata:subtitle];
        }

        view3 = [(ASCOfferPresenter *)self view];
        theme = [saveOfferState theme];
        v19 = [ASCOfferTheme confirmationForTheme:theme];
        [view3 setOfferTheme:v19];

        objc_initWeak(&location, self);
        view4 = [(ASCOfferPresenter *)self view];
        v22 = MEMORY[0x277D85DD0];
        v23 = 3221225472;
        v24 = __47__ASCOfferPresenter_confirmOfferActionIfNeeded__block_invoke;
        v25 = &unk_2781CBD28;
        objc_copyWeak(&v26, &location);
        [view4 beginOfferModalStateWithCancelBlock:&v22];

        [(ASCOfferPresenter *)self setSavedStateForConfirm:saveOfferState, v22, v23, v24, v25];
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
  offerStateMachine = [(ASCOfferPresenter *)self offerStateMachine];
  if (offerStateMachine)
  {
    if (![(ASCOfferPresenter *)self confirmOfferActionIfNeeded])
    {
      view = [(ASCOfferPresenter *)self view];
      [view setOfferInteractive:0];

      objc_initWeak(&location, self);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __39__ASCOfferPresenter_performOfferAction__block_invoke;
      v28[3] = &unk_2781CC458;
      objc_copyWeak(&v30, &location);
      v29 = offerStateMachine;
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
      observer = [(ASCOfferPresenter *)self observer];

      if (observer)
      {
        mostRecentAppState = [(ASCOfferPresenter *)self mostRecentAppState];
        observer2 = [(ASCOfferPresenter *)self observer];
        offer = [(ASCOfferPresenter *)self offer];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __39__ASCOfferPresenter_performOfferAction__block_invoke_10;
        v21[3] = &unk_2781CBC98;
        v22 = v9;
        [observer2 offerPresenterPreprocessOffer:offer inState:mostRecentAppState completionBlock:v21];
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
    offer2 = [(ASCOfferPresenter *)self offer];
    if (offer2)
    {
      v15 = offer2;
      offer3 = [(ASCOfferPresenter *)self offer];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        offer4 = [(ASCOfferPresenter *)self offer];
        action = [offer4 action];

        if (action)
        {
          action2 = [offer4 action];
          action2[2]();
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
  offer = [(ASCOfferPresenter *)self offer];
  if (offer)
  {
    v4 = offer;
    offer2 = [(ASCOfferPresenter *)self offer];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      offer3 = [(ASCOfferPresenter *)self offer];
      offerStateMachine = [(ASCOfferPresenter *)self offerStateMachine];
      [offerStateMachine viewAppForAppDistributionOffer:offer3];

      LOBYTE(offer) = 1;
    }

    else
    {
      LOBYTE(offer) = 0;
    }
  }

  return offer;
}

- (void)offerStateDidChange:(id)change withMetadata:(id)metadata isActionable:(BOOL)actionable
{
  actionableCopy = actionable;
  changeCopy = change;
  metadataCopy = metadata;
  [(ASCOfferPresenter *)self clearConfirmForNewStateIfNeeded];
  view = [(ASCOfferPresenter *)self view];
  [view setOfferEnabled:actionableCopy];

  view2 = [(ASCOfferPresenter *)self view];
  [view2 setOfferMetadata:metadataCopy];

  mostRecentAppState = [(ASCOfferPresenter *)self mostRecentAppState];
  if (!changeCopy || !mostRecentAppState)
  {

    if (mostRecentAppState == changeCopy)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v12 = [changeCopy isEqual:mostRecentAppState];

  if ((v12 & 1) == 0)
  {
LABEL_6:
    observer = [(ASCOfferPresenter *)self observer];
    [observer offerPresenterDidObserveChangeToState:changeCopy];

    [(ASCOfferPresenter *)self setMostRecentAppState:changeCopy];
  }

LABEL_7:
}

- (void)offerStatusTextDidChange:(id)change
{
  changeCopy = change;
  view = [(ASCOfferPresenter *)self view];
  [view setOfferStatus:changeCopy];
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  offer = [(ASCOfferPresenter *)self offer];
  [(ASCDescriber *)v3 addSensitiveObject:offer withName:@"offer"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
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
  view = [self view];
  v2 = 138412290;
  v3 = view;
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