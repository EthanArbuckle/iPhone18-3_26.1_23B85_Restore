@interface _INUIServiceViewController
- (CGSize)_constrainedSizeForDesiredSize:(CGSize)size;
- (_INUIServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)addChildViewController:(id)controller;
- (void)beginRequestWithExtensionContext:(id)context;
- (void)configureForParameters:(id)parameters ofInteraction:(id)interaction interactiveBehavior:(unint64_t)behavior context:(unint64_t)context completion:(id)completion;
- (void)desiresInteractivity:(id)interactivity;
- (void)queryRepresentedPropertiesWithCompletion:(id)completion;
- (void)viewWasCancelled;
- (void)viewWillLayoutSubviews;
@end

@implementation _INUIServiceViewController

- (CGSize)_constrainedSizeForDesiredSize:(CGSize)size
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  if (size.width != *MEMORY[0x277CBF3A8] || size.height != v4)
  {
    height = size.height;
    width = size.width;
    extensionContext = [(_INUIServiceViewController *)self extensionContext];
    [extensionContext hostedViewMinimumAllowedSize];
    v3 = v9;
    v4 = v10;
    [extensionContext hostedViewMaximumAllowedSize];
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

- (void)queryRepresentedPropertiesWithCompletion:(id)completion
{
  if (completion)
  {
    v4 = MEMORY[0x277CBEB18];
    completionCopy = completion;
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
    completionCopy[2](completionCopy, v7);
  }
}

- (void)desiresInteractivity:(id)interactivity
{
  interactivityCopy = interactivity;
  if ([(INUIHostedViewControlling *)self->_hostedViewController conformsToProtocol:&unk_283FF5B30]&& (hostedViewController = self->_hostedViewController, (objc_opt_respondsToSelector() & 1) != 0))
  {
    [(INUIHostedViewControlling *)self->_hostedViewController desiresInteractivity:interactivityCopy];
  }

  else
  {
    interactivityCopy[2](interactivityCopy, 0);
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

- (void)configureForParameters:(id)parameters ofInteraction:(id)interaction interactiveBehavior:(unint64_t)behavior context:(unint64_t)context completion:(id)completion
{
  parametersCopy = parameters;
  completionCopy = completion;
  v13 = INTypedInteractionWithInteraction();
  objc_storeStrong(&self->_currentInteraction, v13);
  self->_currentContext = context;
  hostedViewController = self->_hostedViewController;
  v15 = objc_opt_respondsToSelector();
  v16 = self->_hostedViewController;
  if (v15)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __106___INUIServiceViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke;
    v26[3] = &unk_27872BB08;
    v27 = completionCopy;
    [(INUIHostedViewControlling *)v16 configureViewForParameters:parametersCopy ofInteraction:v13 interactiveBehavior:behavior context:context completion:v26];
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
    v25 = completionCopy;
    [(INUIHostedViewControlling *)v19 configureViewForParameters:parametersCopy ofInteraction:v13 context:context completion:v24];
    v17 = v25;
    goto LABEL_8;
  }

  if (![parametersCopy count])
  {
    v20 = self->_hostedViewController;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __106___INUIServiceViewController_configureForParameters_ofInteraction_interactiveBehavior_context_completion___block_invoke_3;
    v21[3] = &unk_27872BB58;
    v23 = completionCopy;
    v21[4] = self;
    v22 = v13;
    [(INUIHostedViewControlling *)v20 configureWithInteraction:v22 context:context completion:v21];

    v17 = v23;
    goto LABEL_8;
  }

  (*(completionCopy + 2))(completionCopy, 0, 0, 0, *MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8));
LABEL_9:
}

- (void)beginRequestWithExtensionContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = _INUIServiceViewController;
  [(_INUIServiceViewController *)&v8 beginRequestWithExtensionContext:contextCopy];
  v5 = contextCopy;
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
  view = [(INUIHostedViewControlling *)self->_hostedViewController view];
  view2 = [(_INUIServiceViewController *)self view];
  [view2 bounds];
  [view setFrame:?];
}

- (void)addChildViewController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = _INUIServiceViewController;
  [(_INUIServiceViewController *)&v10 addChildViewController:controllerCopy];
  if ([controllerCopy conformsToProtocol:&unk_283FF3EE0])
  {
    objc_storeStrong(&self->_hostedViewController, controller);
    view = [(INUIHostedViewControlling *)self->_hostedViewController view];
    view2 = [(_INUIServiceViewController *)self view];
    [view2 bounds];
    [view setFrame:?];

    view3 = [(_INUIServiceViewController *)self view];
    view4 = [(INUIHostedViewControlling *)self->_hostedViewController view];
    [view3 addSubview:view4];
  }
}

- (_INUIServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v17 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = _INUIServiceViewController;
  v4 = [(_INUIServiceViewController *)&v12 initWithNibName:name bundle:bundle];
  if (v4)
  {
    mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
    v6 = *MEMORY[0x277CB8020];
    v11 = 0;
    [mEMORY[0x277CB83F8] setCategory:v6 withOptions:1 error:&v11];
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