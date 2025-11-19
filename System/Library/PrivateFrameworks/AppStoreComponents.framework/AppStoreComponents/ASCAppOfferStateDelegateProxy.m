@interface ASCAppOfferStateDelegateProxy
- (ASCAppOfferStateDelegate)target;
- (ASCAppOfferStateDelegateProxy)initWithTarget:(id)a3;
- (void)offer:(id)a3 didChangeState:(id)a4 withMetadata:(id)a5 flags:(int64_t)a6;
- (void)offer:(id)a3 didChangeStatusText:(id)a4;
@end

@implementation ASCAppOfferStateDelegateProxy

- (ASCAppOfferStateDelegateProxy)initWithTarget:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ASCAppOfferStateDelegateProxy;
  v5 = [(ASCAppOfferStateDelegateProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_target, v4);
  }

  return v6;
}

- (void)offer:(id)a3 didChangeState:(id)a4 withMetadata:(id)a5 flags:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(ASCAppOfferStateDelegateProxy *)self target];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__ASCAppOfferStateDelegateProxy_offer_didChangeState_withMetadata_flags___block_invoke;
  block[3] = &unk_2781CC1D0;
  v19 = v13;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  v17 = v13;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)offer:(id)a3 didChangeStatusText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASCAppOfferStateDelegateProxy *)self target];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ASCAppOfferStateDelegateProxy_offer_didChangeStatusText___block_invoke;
  block[3] = &unk_2781CB9D8;
  v13 = v8;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = v8;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (ASCAppOfferStateDelegate)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end