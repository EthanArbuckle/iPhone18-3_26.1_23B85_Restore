@interface AVInputPickerInteraction
- (AVInputPickerInteraction)init;
- (AVInputPickerInteraction)initWithAudioSession:(id)a3;
- (AVInputPickerInteractionDelegate)delegate;
- (void)_beginDismissingProcess;
- (void)dismiss;
- (void)present;
@end

@implementation AVInputPickerInteraction

- (AVInputPickerInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_beginDismissingProcess
{
  v3 = [(AVInputPickerInteraction *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 inputPickerInteractionWillBeginDismissing:self];
  }

  objc_initWeak(&location, self);
  modalViewController = self->_modalViewController;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__AVInputPickerInteraction__beginDismissingProcess__block_invoke;
  v5[3] = &unk_1E7209EA8;
  objc_copyWeak(&v6, &location);
  [(AVInputPickerPresenterViewController *)modalViewController dismissViewControllerAnimated:1 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __51__AVInputPickerInteraction__beginDismissingProcess__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[8] = 0;
    v2 = *(WeakRetained + 4);
    *(WeakRetained + 4) = 0;
    v4 = WeakRetained;

    v3 = [v4 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v3 inputPickerInteractionDidEndDismissing:v4];
    }

    WeakRetained = v4;
  }
}

- (void)dismiss
{
  if (self->_presented)
  {
    [(AVInputPickerInteraction *)self _beginDismissingProcess];
  }
}

- (void)present
{
  if (!self->_presented)
  {
    v3 = [(AVInputPickerInteraction *)self delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [(AVInputPickerInteraction *)self delegate];
      [v5 inputPickerInteractionWillBeginPresenting:self];
    }

    v6 = [(UIView *)self->_view window];
    v7 = [v6 rootViewController];

    v8 = [v7 presentedViewController];

    if (v8)
    {
      do
      {
        v9 = [v7 presentedViewController];

        v10 = [v9 presentedViewController];

        v7 = v9;
      }

      while (v10);
    }

    else
    {
      v9 = v7;
    }

    objc_initWeak(&location, self);
    v11 = objc_alloc_init(AVInputPickerPresenterViewController);
    modalViewController = self->_modalViewController;
    self->_modalViewController = v11;

    [(AVInputPickerPresenterViewController *)self->_modalViewController setModalPresentationStyle:5];
    objc_initWeak(&from, self->_modalViewController);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __35__AVInputPickerInteraction_present__block_invoke;
    v17[3] = &unk_1E7209EA8;
    objc_copyWeak(&v18, &location);
    [(AVInputPickerPresenterViewController *)self->_modalViewController setDismissalBlock:v17];
    [(AVInputPickerPresenterViewController *)self->_modalViewController setSourceView:self->_view];
    v13 = self->_modalViewController;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __35__AVInputPickerInteraction_present__block_invoke_2;
    v14[3] = &unk_1E7209C40;
    objc_copyWeak(&v15, &from);
    objc_copyWeak(&v16, &location);
    [v9 presentViewController:v13 animated:0 completion:v14];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __35__AVInputPickerInteraction_present__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _beginDismissingProcess];
}

void __35__AVInputPickerInteraction_present__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__AVInputPickerInteraction_present__block_invoke_3;
  v3[3] = &unk_1E7209EA8;
  objc_copyWeak(&v4, (a1 + 40));
  [WeakRetained transitionToVisible:1 animated:1 completion:v3];

  objc_destroyWeak(&v4);
}

void __35__AVInputPickerInteraction_present__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[8] = 1;
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v2 inputPickerInteractionDidEndPresenting:v3];
    }

    WeakRetained = v3;
  }
}

- (AVInputPickerInteraction)initWithAudioSession:(id)a3
{
  v5 = a3;
  v6 = [(AVInputPickerInteraction *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioSession, a3);
  }

  return v7;
}

- (AVInputPickerInteraction)init
{
  v6.receiver = self;
  v6.super_class = AVInputPickerInteraction;
  v2 = [(AVInputPickerInteraction *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E6958460] sharedInstance];
    audioSession = v2->_audioSession;
    v2->_audioSession = v3;

    v2->_presented = 0;
  }

  return v2;
}

@end