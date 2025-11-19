@interface _INUIServiceViewController
- (CGSize)_constrainedSizeForDesiredSize:(CGSize)a3;
- (_INUIServiceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)addChildViewController:(id)a3;
- (void)beginRequestWithExtensionContext:(id)a3;
- (void)configureForParameters:(id)a3 ofInteraction:(id)a4 interactiveBehavior:(unint64_t)a5 context:(unint64_t)a6 completion:(id)a7;
- (void)desiresInteractivity:(id)a3;
- (void)queryRepresentedPropertiesWithCompletion:(id)a3;
- (void)viewWasCancelled;
- (void)viewWillLayoutSubviews;
@end

@implementation _INUIServiceViewController

- (CGSize)_constrainedSizeForDesiredSize:(CGSize)a3
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  if (a3.width != *MEMORY[0x277CBF3A8] || a3.height != v4)
  {
    height = a3.height;
    width = a3.width;
    v8 = [(_INUIServiceViewController *)self extensionContext];
    [v8 hostedViewMinimumAllowedSize];
    v3 = v9;
    v4 = v10;
    [v8 hostedViewMaximumAllowedSize];
    if (v11 >= width)
    {
      v11 = width;
    }

    if (v3 < v11)
    {
      v3 = v11;
    }

    if (v12 >= height)
    {
      v13 = height;
    }

    else
    {
      v13 = v12;
    }

    if (v4 < v13)
    {
      v4 = v13;
    }
  }

  v14 = v3;
  v15 = v4;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)queryRepresentedPropertiesWithCompletion:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x277CBEB18];
    v5 = a3;
    v8 = objc_alloc_init(v4);
    if ([(INUIHostedViewControlling *)self->_hostedViewController conformsToProtocol:&unk_283FF5B90])
    {
      v6 = self->_hostedViewController;
      if ((objc_opt_respondsToSelector() & 1) != 0 && [(INUIHostedViewControlling *)v6 displaysMessage])
      {
        [v8 addObject:@"SendMessageIntent.recipient"];
        [v8 addObject:@"SendMessageIntent.recipients"];
        [v8 addObject:@"SendMessageIntent.content"];
      }

      if ((objc_opt_respondsToSelector() & 1) != 0 && [(INUIHostedViewControlling *)v6 displaysMap])
      {
        [v8 addObject:@"RequestRideIntent.pickupLocation.map"];
        [v8 addObject:@"GetRideStatusIntentResponse.rideStatus.vehicle.location.map"];
      }

      if ((objc_opt_respondsToSelector() & 1) != 0 && [(INUIHostedViewControlling *)v6 displaysPaymentTransaction])
      {
        [v8 addObject:@"SendPaymentIntent.payee"];
        [v8 addObject:@"SendPaymentIntent.currencyAmount"];
        [v8 addObject:@"SendPaymentIntent.note"];
        [v8 addObject:@"RequestPaymentIntent.payer"];
        [v8 addObject:@"RequestPaymentIntent.currencyAmount"];
        [v8 addObject:@"RequestPaymentIntent.note"];
        [v8 addObject:@"BillDetails.billType"];
        [v8 addObject:@"BillDetails.amountDue"];
        [v8 addObject:@"BillDetails.paymentDate"];
        [v8 addObject:@"BillDetails.billPayee"];
        [v8 addObject:@"PayBillIntent.billPayee"];
        [v8 addObject:@"PayBillIntent.fromAccount"];
        [v8 addObject:@"PayBillIntent.transactionAmount"];
        [v8 addObject:@"PayBillIntent.transactionScheduledDate"];
        [v8 addObject:@"PayBillIntent.transactionNote"];
        [v8 addObject:@"PayBillIntent.billType"];
        [v8 addObject:@"PayBillIntent.dueDate"];
        [v8 addObject:@"PayBillIntentResponse.fromAccount"];
        [v8 addObject:@"PayBillIntentResponse.billDetails"];
        [v8 addObject:@"PayBillIntentResponse.transactionAmount"];
        [v8 addObject:@"PayBillIntentResponse.transactionScheduledDate"];
        [v8 addObject:@"PayBillIntentResponse.transactionNote"];
      }
    }

    v7 = [v8 copy];
    v5[2](v5, v7);
  }
}

- (void)desiresInteractivity:(id)a3
{
  v5 = a3;
  if ([(INUIHostedViewControlling *)self->_hostedViewController conformsToProtocol:&unk_283FF5B30]&& (hostedViewController = self->_hostedViewController, (objc_opt_respondsToSelector() & 1) != 0))
  {
    [(INUIHostedViewControlling *)self->_hostedViewController desiresInteractivity:v5];
  }

  else
  {
    v5[2](v5, 0);
  }
}

- (void)viewWasCancelled
{
  v11 = *MEMORY[0x277D85DE8];
  if ([(INUIHostedViewControlling *)self->_hostedViewController conformsToProtocol:&unk_283FF5B30])
  {
    hostedViewController = self->_hostedViewController;
    if (objc_opt_respondsToSelector())
    {
      v4 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
      {
        v5 = self->_hostedViewController;
        v7 = 136315394;
        v8 = "[_INUIServiceViewController viewWasCancelled]";
        v9 = 2112;
        v10 = v5;
        _os_log_impl(&dword_22CA36000, v4, OS_LOG_TYPE_INFO, "%s Alerting remote view controller %@ of cancellation", &v7, 0x16u);
      }

      [(INUIHostedViewControlling *)self->_hostedViewController viewWasCancelled];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)configureForParameters:(id)a3 ofInteraction:(id)a4 interactiveBehavior:(unint64_t)a5 context:(unint64_t)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a7;
  v13 = INTypedInteractionWithInteraction();
  objc_storeStrong(&self->_currentInteraction, v13);
  self->_currentContext = a6;
  hostedViewController = self->_hostedViewController;
  v15 = objc_opt_respondsToSelector();
  v16 = self->_hostedViewController;
  if (v15)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __106___INUIServiceViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke;
    v26[3] = &unk_27872BB08;
    v27 = v12;
    [(INUIHostedViewControlling *)v16 configureViewForParameters:v11 ofInteraction:v13 interactiveBehavior:a5 context:a6 completion:v26];
    v17 = v27;
LABEL_8:

    goto LABEL_9;
  }

  v18 = self->_hostedViewController;
  if (objc_opt_respondsToSelector())
  {
    v19 = self->_hostedViewController;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __106___INUIServiceViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke_2;
    v24[3] = &unk_27872BB08;
    v25 = v12;
    [(INUIHostedViewControlling *)v19 configureViewForParameters:v11 ofInteraction:v13 context:a6 completion:v24];
    v17 = v25;
    goto LABEL_8;
  }

  if (![v11 count])
  {
    v20 = self->_hostedViewController;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __106___INUIServiceViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke_3;
    v21[3] = &unk_27872BB58;
    v23 = v12;
    v21[4] = self;
    v22 = v13;
    [(INUIHostedViewControlling *)v20 configureWithInteraction:v22 context:a6 completion:v21];

    v17 = v23;
    goto LABEL_8;
  }

  (*(v12 + 2))(v12, 0, 0, 0, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
LABEL_9:
}

- (void)beginRequestWithExtensionContext:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _INUIServiceViewController;
  [(_INUIServiceViewController *)&v8 beginRequestWithExtensionContext:v4];
  v5 = v4;
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [v7 setViewController:self];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = _INUIServiceViewController;
  [(_INUIServiceViewController *)&v5 viewWillLayoutSubviews];
  v3 = [(INUIHostedViewControlling *)self->_hostedViewController view];
  v4 = [(_INUIServiceViewController *)self view];
  [v4 bounds];
  [v3 setFrame:?];
}

- (void)addChildViewController:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _INUIServiceViewController;
  [(_INUIServiceViewController *)&v10 addChildViewController:v5];
  if ([v5 conformsToProtocol:&unk_283FF3EE0])
  {
    objc_storeStrong(&self->_hostedViewController, a3);
    v6 = [(INUIHostedViewControlling *)self->_hostedViewController view];
    v7 = [(_INUIServiceViewController *)self view];
    [v7 bounds];
    [v6 setFrame:?];

    v8 = [(_INUIServiceViewController *)self view];
    v9 = [(INUIHostedViewControlling *)self->_hostedViewController view];
    [v8 addSubview:v9];
  }
}

- (_INUIServiceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = _INUIServiceViewController;
  v4 = [(_INUIServiceViewController *)&v12 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CB83F8] sharedInstance];
    v6 = *MEMORY[0x277CB8020];
    v11 = 0;
    [v5 setCategory:v6 withOptions:1 error:&v11];
    v7 = v11;

    if (v7)
    {
      v8 = *MEMORY[0x277CD38C8];
      if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "[_INUIServiceViewController initWithNibName:bundle:]";
        v15 = 2114;
        v16 = v7;
        _os_log_error_impl(&dword_22CA36000, v8, OS_LOG_TYPE_ERROR, "%s Unable to set AVAudioSession category: %{public}@", buf, 0x16u);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

@end