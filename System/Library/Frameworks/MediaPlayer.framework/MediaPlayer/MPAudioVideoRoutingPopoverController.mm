@interface MPAudioVideoRoutingPopoverController
- (MPAudioVideoRoutingPopoverController)initWithContentViewController:(id)controller;
- (MPAudioVideoRoutingPopoverController)initWithType:(int64_t)type includeMirroring:(BOOL)mirroring;
- (void)dealloc;
- (void)routingViewController:(id)controller didPickRoute:(id)route;
- (void)routingViewControllerDidUpdateContents:(id)contents;
- (void)setMirroringOnly:(BOOL)only;
@end

@implementation MPAudioVideoRoutingPopoverController

- (void)routingViewControllerDidUpdateContents:(id)contents
{
  contentViewController = [(MPAudioVideoRoutingPopoverController *)self contentViewController];
  [contentViewController preferredContentSize];
  [(MPAudioVideoRoutingPopoverController *)self setPopoverContentSize:1 animated:?];
}

- (void)routingViewController:(id)controller didPickRoute:(id)route
{
  if (!self->_mirroringIncluded)
  {
    [(MPAudioVideoRoutingPopoverController *)self dismissPopoverAnimated:1, route];
    delegate = [(MPAudioVideoRoutingPopoverController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate popoverControllerDidDismissPopover:self];
    }
  }
}

- (void)setMirroringOnly:(BOOL)only
{
  if (only)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPAudioVideoRoutingPopoverController.m" lineNumber:101 description:@"Mirroring is no longer supported by MPAudioVideoRoutingPopoverController"];
  }

  self->_mirroringOnly = only;
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

- (MPAudioVideoRoutingPopoverController)initWithContentViewController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = MPAudioVideoRoutingPopoverController;
  v5 = [(MPAudioVideoRoutingPopoverController *)&v12 initWithContentViewController:controllerCopy];
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

- (MPAudioVideoRoutingPopoverController)initWithType:(int64_t)type includeMirroring:(BOOL)mirroring
{
  if (mirroring)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPAudioVideoRoutingPopoverController.m" lineNumber:46 description:@"Mirroring is no longer supported by MPAudioVideoRoutingPopoverController"];
  }

  v7 = [[MPAVRoutingViewController alloc] initWithStyle:1];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(MPAVRoutingViewController *)v7 _setTableCellsBackgroundColor:whiteColor];

  [(MPAVRoutingViewController *)v7 setAVItemType:type];
  [(MPAVRoutingViewController *)v7 setMirroringStyle:0];
  [(MPAVRoutingViewController *)v7 setDelegate:self];
  v9 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v7];
  v15.receiver = self;
  v15.super_class = MPAudioVideoRoutingPopoverController;
  v10 = [(MPAudioVideoRoutingPopoverController *)&v15 initWithContentViewController:v9];
  v11 = v10;
  if (v10)
  {
    v10->_mirroringIncluded = mirroring;
    objc_storeStrong(&v10->_routingViewController, v7);
  }

  return v11;
}

@end