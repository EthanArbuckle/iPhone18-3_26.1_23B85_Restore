@interface ASCAppOfferStateDelegateProxy
- (ASCAppOfferStateDelegate)target;
- (ASCAppOfferStateDelegateProxy)initWithTarget:(id)target;
- (void)offer:(id)offer didChangeState:(id)state withMetadata:(id)metadata flags:(int64_t)flags;
- (void)offer:(id)offer didChangeStatusText:(id)text;
@end

@implementation ASCAppOfferStateDelegateProxy

- (ASCAppOfferStateDelegateProxy)initWithTarget:(id)target
{
  targetCopy = target;
  v8.receiver = self;
  v8.super_class = ASCAppOfferStateDelegateProxy;
  v5 = [(ASCAppOfferStateDelegateProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_target, targetCopy);
  }

  return v6;
}

- (void)offer:(id)offer didChangeState:(id)state withMetadata:(id)metadata flags:(int64_t)flags
{
  offerCopy = offer;
  stateCopy = state;
  metadataCopy = metadata;
  target = [(ASCAppOfferStateDelegateProxy *)self target];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__ASCAppOfferStateDelegateProxy_offer_didChangeState_withMetadata_flags___block_invoke;
  block[3] = &unk_2781CC1D0;
  v19 = target;
  v20 = offerCopy;
  v21 = stateCopy;
  v22 = metadataCopy;
  flagsCopy = flags;
  v14 = metadataCopy;
  v15 = stateCopy;
  v16 = offerCopy;
  v17 = target;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)offer:(id)offer didChangeStatusText:(id)text
{
  offerCopy = offer;
  textCopy = text;
  target = [(ASCAppOfferStateDelegateProxy *)self target];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ASCAppOfferStateDelegateProxy_offer_didChangeStatusText___block_invoke;
  block[3] = &unk_2781CB9D8;
  v13 = target;
  v14 = offerCopy;
  v15 = textCopy;
  v9 = textCopy;
  v10 = offerCopy;
  v11 = target;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (ASCAppOfferStateDelegate)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end