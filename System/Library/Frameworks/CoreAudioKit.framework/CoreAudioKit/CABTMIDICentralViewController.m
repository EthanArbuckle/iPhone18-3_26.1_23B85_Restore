@interface CABTMIDICentralViewController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (CABTMIDICentralViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)centralTimerFired:(id)a3;
- (void)cleanup;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)forgetAction:(id)a3;
- (void)loadView;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateButtonsToMatchTableState;
- (void)updatePeripheralTable;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CABTMIDICentralViewController

- (CABTMIDICentralViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5.receiver = self;
  v5.super_class = CABTMIDICentralViewController;
  return [(CABTMIDICentralViewController *)&v5 initWithNibName:a3 bundle:a4];
}

- (void)dealloc
{
  [(CABTMIDICentralViewController *)self cleanup];
  v3.receiver = self;
  v3.super_class = CABTMIDICentralViewController;
  [(CABTMIDICentralViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = CABTMIDICentralViewController;
  [(CABTMIDICentralViewController *)&v15 viewDidLoad];
  self->previousLeftItem = [-[CABTMIDICentralViewController navigationItem](self "navigationItem")];
  self->previousRightItem = [-[CABTMIDICentralViewController navigationItem](self "navigationItem")];
  self->connectionManager = [[AMSBTLEConnectionManager alloc] initWithUIController:self];
  [(CABTMIDICentralViewController *)self addObserver:self forKeyPath:@"parentViewController" options:0 context:0];
  self->peripheralList = [(AMSBTLEConnectionManager *)self->connectionManager peripheralList];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D76648];
  v5 = [MEMORY[0x277CCABD8] mainQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__CABTMIDICentralViewController_viewDidLoad__block_invoke;
  v14[3] = &unk_278A25570;
  v14[4] = self;
  [v3 addObserverForName:v4 object:self queue:v5 usingBlock:v14];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = *MEMORY[0x277D76768];
  v8 = [MEMORY[0x277CCABD8] mainQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__CABTMIDICentralViewController_viewDidLoad__block_invoke_2;
  v13[3] = &unk_278A25570;
  v13[4] = self;
  [v6 addObserverForName:v7 object:self queue:v8 usingBlock:v13];
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = *MEMORY[0x277D76810];
  v11 = [MEMORY[0x277CCABD8] mainQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__CABTMIDICentralViewController_viewDidLoad__block_invoke_3;
  v12[3] = &unk_278A25570;
  v12[4] = self;
  [v9 addObserverForName:v10 object:self queue:v11 usingBlock:v12];
  self->didRegisterObserver = 1;
}

uint64_t __44__CABTMIDICentralViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1048) startScan];
  v2 = *(*(a1 + 32) + 1048);

  return [v2 startTimer];
}

uint64_t __44__CABTMIDICentralViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1048) stopScan];
  v2 = *(*(a1 + 32) + 1048);

  return [v2 killTimer];
}

uint64_t __44__CABTMIDICentralViewController_viewDidLoad__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) view];

  return [v1 reloadData];
}

- (void)cleanup
{
  if (!self->didCleanup)
  {
    objc_sync_enter(self);
    [(NSTimer *)self->connectionTimer invalidate];
    self->connectionTimer = 0;
    objc_sync_exit(self);
    [(AMSBTLEConnectionManager *)self->connectionManager killTimer];
    [(AMSBTLEConnectionManager *)self->connectionManager stopScan];

    self->connectionManager = 0;
    self->peripheralList = 0;
    if (self->didRegisterObserver)
    {
      [(CABTMIDICentralViewController *)self removeObserver:self forKeyPath:@"parentViewController"];
      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
      self->didRegisterObserver = 0;
    }

    self->didCleanup = 1;
  }
}

- (void)didReceiveMemoryWarning
{
  v3.receiver = self;
  v3.super_class = CABTMIDICentralViewController;
  [(CABTMIDICentralViewController *)&v3 didReceiveMemoryWarning];
  if ([(CABTMIDICentralViewController *)self isViewLoaded])
  {
    if (![-[CABTMIDICentralViewController view](self "view")])
    {
      [(CABTMIDICentralViewController *)self cleanup];
      [(CABTMIDICentralViewController *)self setView:0];
    }
  }
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
  v4 = [v3 initWithFrame:1 style:?];
  [v4 setAutoresizingMask:18];
  [v4 setDelegate:self];
  [v4 setDataSource:self];
  [v4 setAllowsSelection:1];
  [v4 setAllowsMultipleSelectionDuringEditing:1];
  [(CABTMIDICentralViewController *)self setView:v4];
  self->didCleanup = 0;
  self->didRegisterObserver = 0;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = [@"parentViewController" isEqualToString:{a3, a4, a5, a6}];
  if (a4 == self && v8 && ![(CABTMIDICentralViewController *)self parentViewController])
  {

    [(CABTMIDICentralViewController *)self cleanup];
  }
}

- (void)updatePeripheralTable
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__CABTMIDICentralViewController_updatePeripheralTable__block_invoke;
  block[3] = &unk_278A255E0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __54__CABTMIDICentralViewController_updatePeripheralTable__block_invoke(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) "view")];
  v2 = *(a1 + 32);

  return [v2 updateButtonsToMatchTableState];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  result = [(CABTMIDICentralViewController *)self peripheralCount:a3];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  if ([(CABTMIDICentralViewController *)self peripheralCount])
  {
    v7 = [a3 dequeueReusableCellWithIdentifier:@"Cell"];
    v8 = -[CABTMIDICentralViewController peripheralAtIndex:](self, "peripheralAtIndex:", [a4 row]);
    if (!v7)
    {
      v7 = [[CACentralTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"Cell"];
    }

    v9 = [v8 isOnline];
    v10 = [v8 isAvailable];
    -[UILabel setText:](-[CACentralTableViewCell deviceNameLabel](v7, "deviceNameLabel"), "setText:", [v8 name]);
    [(UILabel *)[(CACentralTableViewCell *)v7 connectionStatusLabel] setEnabled:v10];
    [(UILabel *)[(CACentralTableViewCell *)v7 deviceNameLabel] setEnabled:v10];
    if ([(UILabel *)[(CACentralTableViewCell *)v7 deviceNameLabel] isEnabled])
    {
      if (v9)
      {
        v11 = @"Connected";
      }

      else
      {
        v11 = @"Not Connected";
      }

      [(UILabel *)[(CACentralTableViewCell *)v7 connectionStatusLabel] setText:priv_getBTLELocalizedString(v11, v11)];
      -[UILabel setEnabled:](-[CACentralTableViewCell inputLabel](v7, "inputLabel"), "setEnabled:", [v8 inputAvailable]);
      v14 = [v8 outputAvailable];
    }

    else
    {
      [(UILabel *)[(CACentralTableViewCell *)v7 connectionStatusLabel] setText:priv_getBTLELocalizedString(@"Offline", @"Offline")];
      [(UILabel *)[(CACentralTableViewCell *)v7 inputLabel] setEnabled:0];
      v14 = 0;
    }

    [(UILabel *)[(CACentralTableViewCell *)v7 outputLabel] setEnabled:v14];
    [(CACentralTableViewCell *)v7 stopIndicator];
    [(CACentralTableViewCell *)v7 setNeedsUpdateConstraints];
    [(CACentralTableViewCell *)v7 updateConstraintsIfNeeded];
  }

  else
  {
    v7 = [a3 dequeueReusableCellWithIdentifier:@"NoItems"];
    if (!v7)
    {
      v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"NoItems"];
      v12 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:2];
      self->indicator = v12;
      [(UIActivityIndicatorView *)v12 setTag:1];
      [(UIActivityIndicatorView *)self->indicator setAutoresizingMask:33];
      [(UIActivityIndicatorView *)self->indicator setFrame:0.0, 0.0, 24.0, 24.0];
      [(UIActivityIndicatorView *)self->indicator setHidesWhenStopped:0];
      [(UIActivityIndicatorView *)self->indicator setHidden:0];
      [(CACentralTableViewCell *)v7 setAccessoryView:self->indicator];
    }

    v13 = [(CACentralTableViewCell *)v7 textLabel];
    [v13 setText:{priv_getBTLELocalizedString(@"Searching", @"Searching for Bluetooth LE MIDI Devices..."}];
    [v13 setEnabled:0];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__CABTMIDICentralViewController_tableView_cellForRowAtIndexPath___block_invoke;
    block[3] = &unk_278A255E0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  return v7;
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CABTMIDICentralViewController;
  [(CABTMIDICentralViewController *)&v6 viewWillAppear:a3];
  [(CABTMIDICentralViewController *)self updatePeripheralTable];
  if (!self->connectionTimer)
  {
    v4 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:self target:sel_centralTimerFired_ selector:0 userInfo:1 repeats:5.0];
    self->connectionTimer = v4;
    [(NSTimer *)v4 setTolerance:0.150000006];
    v5 = [MEMORY[0x277CBEB88] currentRunLoop];
    [v5 addTimer:self->connectionTimer forMode:*MEMORY[0x277CBE738]];
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v6 = [(CABTMIDICentralViewController *)self peripheralCount];
  if (v6)
  {
    if (self->inEditingMode)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v7 = -[CABTMIDICentralViewController peripheralAtIndex:](self, "peripheralAtIndex:", [a4 row]);

      LOBYTE(v6) = [v7 isAvailable];
    }
  }

  return v6;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  self->inEditingMode = a3;
  v5.receiver = self;
  v5.super_class = CABTMIDICentralViewController;
  [CABTMIDICentralViewController setEditing:sel_setEditing_animated_ animated:?];
  [(CABTMIDICentralViewController *)self updateButtonsToMatchTableState];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v7 = [a3 cellForRowAtIndexPath:a4];
  if (([v7 isEditing] & 1) == 0 && !self->inEditingMode)
  {
    v8 = -[CABTMIDICentralViewController peripheralAtIndex:](self, "peripheralAtIndex:", [a4 row]);
    if ([v8 isOnline])
    {
      v9 = [v8 disconnect];
      if (v7 && v9)
      {
        [objc_msgSend(v7 "connectionStatusLabel")];
        [v7 startIndicator];
      }
    }

    else
    {
      v10 = [v8 connect];
      if (v7 && v10)
      {
        [v7 startIndicator];
        [objc_msgSend(v7 "connectionStatusLabel")];
      }
    }

    [a3 selectRowAtIndexPath:0 animated:1 scrollPosition:0];

    [(CABTMIDICentralViewController *)self updateButtonsToMatchTableState];
  }
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v6 = -[CABTMIDICentralViewController peripheralAtIndex:](self, "peripheralAtIndex:", [a5 row]);
    v7 = MIDISetupRemoveDevice([MEMORY[0x277CBFD00] midiDeviceForUUID:objc_msgSend(v6 isLocalPeripheral:"uuid") isRemotePeripheral:{0, 1}]);
    if (v7)
    {
      NSLog(&cfstr_ErrorRemovingD.isa, [v6 uuid], v7);
    }

    else
    {

      [(CABTMIDICentralViewController *)self updatePeripheralTable];
    }
  }
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v6 = [(CABTMIDICentralViewController *)self peripheralCount];
  if (v6)
  {
    if (self->inEditingMode)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      LOBYTE(v6) = [-[CABTMIDICentralViewController peripheralAtIndex:](self peripheralAtIndex:{objc_msgSend(a4, "row")), "isAvailable"}] ^ 1;
    }
  }

  return v6;
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(CABTMIDICentralViewController *)self cleanup];
  v5.receiver = self;
  v5.super_class = CABTMIDICentralViewController;
  [(CABTMIDICentralViewController *)&v5 viewDidDisappear:v3];
}

- (void)centralTimerFired:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__CABTMIDICentralViewController_centralTimerFired___block_invoke;
  block[3] = &unk_278A255E0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

_BYTE *__51__CABTMIDICentralViewController_centralTimerFired___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[1064] & 1) == 0)
  {
    v4 = [result view];

    return [v4 reloadData];
  }

  return result;
}

- (void)updateButtonsToMatchTableState
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(CABTMIDICentralViewController *)self navigationItem])
  {
    if (![(CABTMIDICentralViewController *)self peripheralCount])
    {
      goto LABEL_16;
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    peripheralList = self->peripheralList;
    v4 = [(NSMutableArray *)peripheralList countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (!v4)
    {
      goto LABEL_16;
    }

    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(peripheralList);
        }

        v6 += [*(*(&v12 + 1) + 8 * i) isAvailable] ^ 1;
      }

      v5 = [(NSMutableArray *)peripheralList countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
    if (v6)
    {
      if ([-[CABTMIDICentralViewController view](self "view")])
      {
        cancelButton = self->cancelButton;
        if (!cancelButton)
        {
          cancelButton = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelAction_];
          self->cancelButton = cancelButton;
        }

        [-[CABTMIDICentralViewController navigationItem](self "navigationItem")];
        forgetButton = self->forgetButton;
        if (!forgetButton)
        {
          forgetButton = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:priv_getBTLELocalizedString(@"Forget" style:@"Forget" target:0 action:{self, sel_forgetAction_}];
          self->forgetButton = forgetButton;
        }

        goto LABEL_18;
      }

      editButton = self->editButton;
      if (!editButton)
      {
        editButton = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:2 target:self action:sel_editAction_];
        self->editButton = editButton;
      }
    }

    else
    {
LABEL_16:
      editButton = self->previousRightItem;
    }

    [-[CABTMIDICentralViewController navigationItem](self "navigationItem")];
    forgetButton = self->previousLeftItem;
LABEL_18:
    [-[CABTMIDICentralViewController navigationItem](self "navigationItem")];
  }
}

- (void)forgetAction:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [-[CABTMIDICentralViewController view](self view];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = -[CABTMIDICentralViewController peripheralAtIndex:](self, "peripheralAtIndex:", [*(*(&v11 + 1) + 8 * v8) row]);
        v10 = MIDISetupRemoveDevice([MEMORY[0x277CBFD00] midiDeviceForUUID:objc_msgSend(v9 isLocalPeripheral:"uuid") isRemotePeripheral:{0, 1}]);
        if (v10)
        {
          NSLog(&cfstr_ErrorRemovingD.isa, [v9 uuid], v10);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    [(CABTMIDICentralViewController *)self updatePeripheralTable];
  }

  [(CABTMIDICentralViewController *)self setEditing:0 animated:1];
}

@end