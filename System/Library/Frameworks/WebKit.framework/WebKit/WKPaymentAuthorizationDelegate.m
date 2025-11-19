@interface WKPaymentAuthorizationDelegate
- (id).cxx_construct;
- (id)_initWithRequest:(id)a3 presenter:(void *)a4;
- (void)_didAuthorizePayment:(id)a3 completion:(id)a4;
- (void)_didChangeCouponCode:(id)a3 completion:(id)a4;
- (void)_didFinish;
- (void)_didRequestMerchantSession:(id)a3;
- (void)_didSelectPaymentMethod:(id)a3 completion:(id)a4;
- (void)_didSelectShippingContact:(id)a3 completion:(id)a4;
- (void)_didSelectShippingMethod:(id)a3 completion:(id)a4;
- (void)_willFinishWithError:(id)a3;
- (void)completeCouponCodeChange:(id)a3;
- (void)completeMerchantValidation:(id)a3 error:(id)a4;
- (void)completePaymentMethodSelection:(id)a3;
- (void)completePaymentSession:(int64_t)a3 errors:(id)a4;
- (void)completePaymentSession:(int64_t)a3 errors:(id)a4 orderDetails:(id)a5;
- (void)completeShippingContactSelection:(id)a3;
- (void)completeShippingMethodSelection:(id)a3;
- (void)invalidate;
@end

@implementation WKPaymentAuthorizationDelegate

- (void)completeMerchantValidation:(id)a3 error:(id)a4
{
  m_block = self->_didRequestMerchantSessionCompletion.m_block;
  self->_didRequestMerchantSessionCompletion.m_block = 0;
  v8 = _Block_copy(0);
  _Block_release(self->_didRequestMerchantSessionCompletion.m_block);
  self->_didRequestMerchantSessionCompletion.m_block = v8;
  _Block_release(0);
  m_block[2](m_block, a3, a4);

  _Block_release(m_block);
}

- (void)completePaymentMethodSelection:(id)a3
{
  if (a3)
  {
    v11 = a3;
    v4 = a3;
    v5 = [objc_msgSend(v11 "paymentSummaryItems")];
    m_ptr = self->_summaryItems.m_ptr;
    self->_summaryItems.m_ptr = v5;
    if (m_ptr)
    {
    }

    v7 = [objc_msgSend(v11 "availableShippingMethods")];
    v8 = self->_availableShippingMethods.m_ptr;
    self->_availableShippingMethods.m_ptr = v7;
    if (v8)
    {
    }
  }

  else
  {
    v11 = [objc_alloc((*MEMORY[0x1E69E2430])(self a2))];
    [v11 setAvailableShippingMethods:self->_availableShippingMethods.m_ptr];
  }

  m_block = self->_didSelectPaymentMethodCompletion.m_block;
  self->_didSelectPaymentMethodCompletion.m_block = 0;
  v10 = _Block_copy(0);
  _Block_release(self->_didSelectPaymentMethodCompletion.m_block);
  self->_didSelectPaymentMethodCompletion.m_block = v10;
  _Block_release(0);
  m_block[2](m_block, v11);
  _Block_release(m_block);
  if (v11)
  {
  }
}

- (void)completePaymentSession:(int64_t)a3 errors:(id)a4
{
  v7 = [objc_alloc((*MEMORY[0x1E69E23F0])(self a2))];
  m_block = self->_didAuthorizePaymentCompletion.m_block;
  self->_didAuthorizePaymentCompletion.m_block = 0;
  v6 = _Block_copy(0);
  _Block_release(self->_didAuthorizePaymentCompletion.m_block);
  self->_didAuthorizePaymentCompletion.m_block = v6;
  _Block_release(0);
  m_block[2](m_block, v7);
  _Block_release(m_block);
  if (v7)
  {
  }
}

- (void)completePaymentSession:(int64_t)a3 errors:(id)a4 orderDetails:(id)a5
{
  v9 = [objc_alloc((*MEMORY[0x1E69E23F0])(self a2))];
  [v9 setOrderDetails:a5];
  m_block = self->_didAuthorizePaymentCompletion.m_block;
  self->_didAuthorizePaymentCompletion.m_block = 0;
  v8 = _Block_copy(0);
  _Block_release(self->_didAuthorizePaymentCompletion.m_block);
  self->_didAuthorizePaymentCompletion.m_block = v8;
  _Block_release(0);
  m_block[2](m_block, v9);
  _Block_release(m_block);
  if (v9)
  {
  }
}

- (void)completeShippingContactSelection:(id)a3
{
  if (a3)
  {
    v11 = a3;
    v4 = a3;
    v5 = [objc_msgSend(v11 "paymentSummaryItems")];
    m_ptr = self->_summaryItems.m_ptr;
    self->_summaryItems.m_ptr = v5;
    if (m_ptr)
    {
    }

    v7 = [objc_msgSend(v11 "availableShippingMethods")];
    v8 = self->_availableShippingMethods.m_ptr;
    self->_availableShippingMethods.m_ptr = v7;
    if (v8)
    {
    }
  }

  else
  {
    v11 = [objc_alloc((*MEMORY[0x1E69E2450])(self a2))];
    [v11 setAvailableShippingMethods:self->_availableShippingMethods.m_ptr];
  }

  m_block = self->_didSelectShippingContactCompletion.m_block;
  self->_didSelectShippingContactCompletion.m_block = 0;
  v10 = _Block_copy(0);
  _Block_release(self->_didSelectShippingContactCompletion.m_block);
  self->_didSelectShippingContactCompletion.m_block = v10;
  _Block_release(0);
  m_block[2](m_block, v11);
  _Block_release(m_block);
  if (v11)
  {
  }
}

- (void)completeShippingMethodSelection:(id)a3
{
  if (a3)
  {
    v11 = a3;
    v4 = a3;
    v5 = [objc_msgSend(v11 "paymentSummaryItems")];
    m_ptr = self->_summaryItems.m_ptr;
    self->_summaryItems.m_ptr = v5;
    if (m_ptr)
    {
    }

    v7 = [objc_msgSend(v11 "availableShippingMethods")];
    v8 = self->_availableShippingMethods.m_ptr;
    self->_availableShippingMethods.m_ptr = v7;
    if (v8)
    {
    }
  }

  else
  {
    v11 = [objc_alloc((*MEMORY[0x1E69E2448])(self a2))];
    [v11 setAvailableShippingMethods:self->_availableShippingMethods.m_ptr];
  }

  m_block = self->_didSelectShippingMethodCompletion.m_block;
  self->_didSelectShippingMethodCompletion.m_block = 0;
  v10 = _Block_copy(0);
  _Block_release(self->_didSelectShippingMethodCompletion.m_block);
  self->_didSelectShippingMethodCompletion.m_block = v10;
  _Block_release(0);
  m_block[2](m_block, v11);
  _Block_release(m_block);
  if (v11)
  {
  }
}

- (void)completeCouponCodeChange:(id)a3
{
  if (a3)
  {
    v11 = a3;
    v4 = a3;
    v5 = [objc_msgSend(v11 "paymentSummaryItems")];
    m_ptr = self->_summaryItems.m_ptr;
    self->_summaryItems.m_ptr = v5;
    if (m_ptr)
    {
    }

    v7 = [objc_msgSend(v11 "availableShippingMethods")];
    v8 = self->_availableShippingMethods.m_ptr;
    self->_availableShippingMethods.m_ptr = v7;
    if (v8)
    {
    }
  }

  else
  {
    v11 = [objc_alloc((*MEMORY[0x1E69E2418])(self a2))];
    [v11 setAvailableShippingMethods:self->_availableShippingMethods.m_ptr];
  }

  m_block = self->_didChangeCouponCodeCompletion.m_block;
  self->_didChangeCouponCodeCompletion.m_block = 0;
  v10 = _Block_copy(0);
  _Block_release(self->_didChangeCouponCodeCompletion.m_block);
  self->_didChangeCouponCodeCompletion.m_block = v10;
  _Block_release(0);
  m_block[2](m_block, v11);
  _Block_release(m_block);
  if (v11)
  {
  }
}

- (void)invalidate
{
  if (self->_didAuthorizePaymentCompletion.m_block)
  {
    [(WKPaymentAuthorizationDelegate *)self completePaymentSession:1 errors:MEMORY[0x1E695E0F0]];
  }
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (id)_initWithRequest:(id)a3 presenter:(void *)a4
{
  v23.receiver = self;
  v23.super_class = WKPaymentAuthorizationDelegate;
  v7 = [(WKPaymentAuthorizationDelegate *)&v23 init];
  if (!v7)
  {
    return v7;
  }

  if (!*(a4 + 1))
  {
    v8 = WTF::fastCompactMalloc(0x10);
    *v8 = 1;
    *(v8 + 8) = a4;
    v9 = *(a4 + 1);
    *(a4 + 1) = v8;
    if (v9)
    {
      if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v9);
        WTF::fastFree(v9, v6);
      }
    }
  }

  v10 = *(a4 + 1);
  atomic_fetch_add(v10, 1u);
  m_ptr = v7->_presenter.m_impl.m_ptr;
  v7->_presenter.m_impl.m_ptr = v10;
  if (m_ptr && atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, m_ptr);
    WTF::fastFree(m_ptr, v6);
    if (!a3)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (a3)
  {
LABEL_9:
    v12 = a3;
  }

LABEL_10:
  v13 = v7->_request.m_ptr;
  v7->_request.m_ptr = a3;
  if (v13)
  {
  }

  v14 = [a3 availableShippingMethods];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  v17 = v7->_availableShippingMethods.m_ptr;
  v7->_availableShippingMethods.m_ptr = v15;
  if (v17)
  {
  }

  v18 = [a3 paymentSummaryItems];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  v21 = v7->_summaryItems.m_ptr;
  v7->_summaryItems.m_ptr = v19;
  if (v21)
  {
  }

  return v7;
}

- (void)_didAuthorizePayment:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_release(self->_didAuthorizePaymentCompletion.m_block);
  self->_didAuthorizePaymentCompletion.m_block = v6;
  _Block_release(0);
  m_ptr = self->_presenter.m_impl.m_ptr;
  if (m_ptr && (v8 = *(m_ptr + 1)) != 0)
  {
    ++*(v8 + 16);
    v9 = *(v8 + 24);
    if (v9 && (v10 = *(v9 + 8)) != 0)
    {
      (**v10)(v10);
      if (a3)
      {
        v11 = a3;
      }

      WebCore::Payment::Payment();
      (*(*v10 + 32))(v10, v8, v13);
      WebCore::Payment::~Payment(v13);
      if (a3)
      {
      }

      (*(*v10 + 8))(v10);
    }

    else
    {
      [(WKPaymentAuthorizationDelegate *)self completePaymentSession:1 errors:MEMORY[0x1E695E0F0]];
    }

    if (*(v8 + 16) == 1)
    {
      (*(*v8 + 8))(v8);
    }

    else
    {
      --*(v8 + 16);
    }
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];

    [(WKPaymentAuthorizationDelegate *)self completePaymentSession:1 errors:v12];
  }
}

- (void)_didFinish
{
  m_ptr = self->_presenter.m_impl.m_ptr;
  if (m_ptr)
  {
    v3 = *(m_ptr + 1);
    if (v3)
    {
      v4 = *(v3 + 16);
      *(v3 + 16) = v4 + 1;
      v5 = *(v3 + 24);
      if (v5)
      {
        v6 = *(v5 + 8);
        if (v6)
        {
          (**v6)(v6, a2);
          v9 = self->_sessionError.m_ptr;
          self->_sessionError.m_ptr = 0;
          WebCore::PaymentSessionError::PaymentSessionError();
          (*(*v6 + 40))(v6, v3, &v10);
          v8 = v10;
          v10 = 0;
          if (v8)
          {
          }

          if (v9)
          {
          }

          (*(*v6 + 8))(v6);
          v4 = *(v3 + 16) - 1;
        }
      }

      if (v4)
      {
        *(v3 + 16) = v4;
      }

      else
      {
        (*(*v3 + 8))(v3, a2);
      }
    }
  }
}

- (void)_didRequestMerchantSession:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_release(self->_didRequestMerchantSessionCompletion.m_block);
  self->_didRequestMerchantSessionCompletion.m_block = v4;
  _Block_release(0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__WKPaymentAuthorizationDelegate_Protected___didRequestMerchantSession___block_invoke;
  v5[3] = &unk_1E7630C88;
  v5[4] = self;
  [(WKPaymentAuthorizationDelegate *)self _getPaymentServicesMerchantURL:v5];
}

uint64_t __72__WKPaymentAuthorizationDelegate_Protected___didRequestMerchantSession___block_invoke(WTF::RunLoop *a1, void *a2)
{
  WTF::RunLoop::mainSingleton(a1);
  v4 = *(a1 + 4);
  if (v4)
  {
    v5 = v4;
  }

  if (a2)
  {
    v6 = a2;
  }

  v7 = WTF::fastMalloc(0x20);
  *v7 = &unk_1F10EE790;
  v7[1] = v4;
  v7[2] = v4;
  v7[3] = a2;
  v9 = v7;
  WTF::RunLoop::dispatch();
  result = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

- (void)_didSelectPaymentMethod:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_release(self->_didSelectPaymentMethodCompletion.m_block);
  self->_didSelectPaymentMethodCompletion.m_block = v6;
  _Block_release(0);
  m_ptr = self->_presenter.m_impl.m_ptr;
  if (m_ptr && (v8 = *(m_ptr + 1)) != 0)
  {
    ++*(v8 + 16);
    v9 = *(v8 + 24);
    if (v9 && (v10 = *(v9 + 8)) != 0)
    {
      (**v10)(v10);
      if (a3)
      {
        v11 = a3;
      }

      WebCore::PaymentMethod::PaymentMethod();
      (*(*v10 + 48))(v10, v8, v12);
      WebCore::PaymentMethod::~PaymentMethod(v12);
      if (a3)
      {
      }

      (*(*v10 + 8))(v10);
    }

    else
    {
      [(WKPaymentAuthorizationDelegate *)self completePaymentMethodSelection:0];
    }

    if (*(v8 + 16) == 1)
    {
      (*(*v8 + 8))(v8);
    }

    else
    {
      --*(v8 + 16);
    }
  }

  else
  {

    [(WKPaymentAuthorizationDelegate *)self completePaymentMethodSelection:0];
  }
}

- (void)_didSelectShippingContact:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_release(self->_didSelectShippingContactCompletion.m_block);
  self->_didSelectShippingContactCompletion.m_block = v6;
  _Block_release(0);
  m_ptr = self->_presenter.m_impl.m_ptr;
  if (m_ptr && (v8 = *(m_ptr + 1)) != 0)
  {
    ++*(v8 + 16);
    v9 = *(v8 + 24);
    if (v9 && (v10 = *(v9 + 8)) != 0)
    {
      (**v10)(v10);
      if (a3)
      {
        v11 = a3;
      }

      WebCore::PaymentContact::PaymentContact();
      (*(*v10 + 56))(v10, v8, v12);
      WebCore::PaymentContact::~PaymentContact(v12);
      if (a3)
      {
      }

      (*(*v10 + 8))(v10);
    }

    else
    {
      [(WKPaymentAuthorizationDelegate *)self completeShippingContactSelection:0];
    }

    if (*(v8 + 16) == 1)
    {
      (*(*v8 + 8))(v8);
    }

    else
    {
      --*(v8 + 16);
    }
  }

  else
  {

    [(WKPaymentAuthorizationDelegate *)self completeShippingContactSelection:0];
  }
}

- (void)_didSelectShippingMethod:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_release(self->_didSelectShippingMethodCompletion.m_block);
  self->_didSelectShippingMethodCompletion.m_block = v6;
  _Block_release(0);
  m_ptr = self->_presenter.m_impl.m_ptr;
  if (m_ptr && (v8 = *(m_ptr + 1)) != 0)
  {
    ++*(v8 + 16);
    v9 = *(v8 + 24);
    if (v9 && (v10 = *(v9 + 8)) != 0)
    {
      (**v10)(v10);
      v41 = 0;
      v42 = 0;
      LOBYTE(v25) = 0;
      MEMORY[0x19EB02040](&v43, [objc_msgSend(a3 "amount")]);
      v24[0] = v43;
      MEMORY[0x19EB02040](&v43, [a3 detail]);
      v23[1] = v43;
      MEMORY[0x19EB02040](&v43, [a3 identifier]);
      v24[1] = v43;
      MEMORY[0x19EB02040](&v43, [a3 label]);
      v23[0] = v43;
      if ([a3 dateComponentsRange])
      {
        v11 = [a3 dateComponentsRange];
        v12 = [v11 startDateComponents];
        v13 = [v12 year];
        v14 = [v12 month];
        v15 = [v12 day];
        v16 = [v12 hour];
        v17 = [v11 endDateComponents];
        v25 = v13;
        v26 = 1;
        v27 = v14;
        v28 = 1;
        v29 = v15;
        v30 = 1;
        v31 = v16;
        v32 = 1;
        v33 = [v17 year];
        v34 = 1;
        v35 = [v17 month];
        v36 = 1;
        v37 = [v17 day];
        v38 = 1;
        v39 = [v17 hour];
        v40 = 1;
        v41 = 1;
      }

      v42 = 1;
      (*(*v10 + 64))(v10, v8, v23);
      v19 = v24[1];
      v24[1] = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v18);
      }

      v20 = v24[0];
      v24[0] = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v18);
      }

      v21 = v23[1];
      v23[1] = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v18);
      }

      v22 = v23[0];
      v23[0] = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v18);
      }

      (*(*v10 + 8))(v10);
    }

    else
    {
      [(WKPaymentAuthorizationDelegate *)self completeShippingMethodSelection:0];
    }

    if (*(v8 + 16) == 1)
    {
      (*(*v8 + 8))(v8);
    }

    else
    {
      --*(v8 + 16);
    }
  }

  else
  {

    [(WKPaymentAuthorizationDelegate *)self completeShippingMethodSelection:0];
  }
}

- (void)_didChangeCouponCode:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_release(self->_didChangeCouponCodeCompletion.m_block);
  self->_didChangeCouponCodeCompletion.m_block = v6;
  _Block_release(0);
  m_ptr = self->_presenter.m_impl.m_ptr;
  if (m_ptr && (v8 = *(m_ptr + 1)) != 0)
  {
    ++*(v8 + 16);
    v9 = *(v8 + 24);
    if (v9 && (v10 = *(v9 + 8)) != 0)
    {
      (**v10)(v10);
      MEMORY[0x19EB02040](&v13, a3);
      (*(*v10 + 72))(v10, v8, &v13);
      v12 = v13;
      v13 = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v11);
      }

      (*(*v10 + 8))(v10);
    }

    else
    {
      [(WKPaymentAuthorizationDelegate *)self completeCouponCodeChange:0];
    }

    if (*(v8 + 16) == 1)
    {
      (*(*v8 + 8))(v8);
    }

    else
    {
      --*(v8 + 16);
    }
  }

  else
  {

    [(WKPaymentAuthorizationDelegate *)self completeCouponCodeChange:0];
  }
}

- (void)_willFinishWithError:(id)a3
{
  v5 = [a3 domain];
  if ([v5 isEqualToString:PAL::get_PassKitCore_PKPassKitErrorDomain(v5)])
  {

    WTF::RetainPtr<NSError>::operator=(&self->_sessionError.m_ptr, a3);
  }
}

@end