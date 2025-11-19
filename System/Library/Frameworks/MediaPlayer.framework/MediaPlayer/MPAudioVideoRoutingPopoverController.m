@interface MPAudioVideoRoutingPopoverController
- (MPAudioVideoRoutingPopoverController)initWithContentViewController:(id)a3;
- (MPAudioVideoRoutingPopoverController)initWithType:(int64_t)a3 includeMirroring:(BOOL)a4;
- (void)dealloc;
- (void)routingViewController:(id)a3 didPickRoute:(id)a4;
- (void)routingViewControllerDidUpdateContents:(id)a3;
- (void)setMirroringOnly:(BOOL)a3;
@end

@implementation MPAudioVideoRoutingPopoverController

- (void)routingViewControllerDidUpdateContents:(id)a3
{
  v4 = [(MPAudioVideoRoutingPopoverController *)self contentViewController];
  [v4 preferredContentSize];
  [(MPAudioVideoRoutingPopoverController *)self setPopoverContentSize:1 animated:?];
}

- (void)routingViewController:(id)a3 didPickRoute:(id)a4
{
  if (!self->_mirroringIncluded)
  {
    [(MPAudioVideoRoutingPopoverController *)self dismissPopoverAnimated:1, a4];
    v6 = [(MPAudioVideoRoutingPopoverController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v6 popoverControllerDidDismissPopover:self];
    }
  }
}

- (void)setMirroringOnly:(BOOL)a3
{
  if (a3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MPAudioVideoRoutingPopoverController.m" lineNumber:101 description:@"Mirroring is no longer supported by MPAudioVideoRoutingPopoverController"];
  }

  self->_mirroringOnly = a3;
}

- (void)dealloc
{
  if (self->_airPlayPasswordAlertDidAppearTokenIsValid)
  {
    notify_cancel(self->_airPlayPasswordAlertDidAppearToken);
  }

  v3.receiver = self;
  v3.super_class = MPAudioVideoRoutingPopoverController;
  [(MPAudioVideoRoutingPopoverController *)&v3 dealloc];
}

- (MPAudioVideoRoutingPopoverController)initWithContentViewController:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MPAudioVideoRoutingPopoverController;
  v5 = [(MPAudioVideoRoutingPopoverController *)&v12 initWithContentViewController:v4];
  if (v5)
  {
    objc_initWeak(&location, v5);
    v6 = MEMORY[0x1E69E96A0];
    v7 = MEMORY[0x1E69E96A0];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__MPAudioVideoRoutingPopoverController_initWithContentViewController___block_invoke;
    v9[3] = &unk_1E7676D98;
    objc_copyWeak(&v10, &location);
    LODWORD(v6) = notify_register_dispatch("com.apple.mediaplayer.airPlayPasswordAlertWillAppear", &v5->_airPlayPasswordAlertDidAppearToken, v6, v9);

    v5->_airPlayPasswordAlertDidAppearTokenIsValid = v6 == 0;
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __70__MPAudioVideoRoutingPopoverController_initWithContentViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained dismissPopoverAnimated:1];
    v2 = [v3 delegate];
    if (objc_opt_respondsToSelector())
    {
      [v2 popoverControllerDidDismissPopover:v3];
    }

    WeakRetained = v3;
  }
}

- (MPAudioVideoRoutingPopoverController)initWithType:(int64_t)a3 includeMirroring:(BOOL)a4
{
  if (a4)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"MPAudioVideoRoutingPopoverController.m" lineNumber:46 description:@"Mirroring is no longer supported by MPAudioVideoRoutingPopoverController"];
  }

  v7 = [[MPAVRoutingViewController alloc] initWithStyle:1];
  v8 = [MEMORY[0x1E69DC888] whiteColor];
  [(MPAVRoutingViewController *)v7 _setTableCellsBackgroundColor:v8];

  [(MPAVRoutingViewController *)v7 setAVItemType:a3];
  [(MPAVRoutingViewController *)v7 setMirroringStyle:0];
  [(MPAVRoutingViewController *)v7 setDelegate:self];
  v9 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v7];
  v15.receiver = self;
  v15.super_class = MPAudioVideoRoutingPopoverController;
  v10 = [(MPAudioVideoRoutingPopoverController *)&v15 initWithContentViewController:v9];
  v11 = v10;
  if (v10)
  {
    v10->_mirroringIncluded = a4;
    objc_storeStrong(&v10->_routingViewController, v7);
  }

  return v11;
}

@end