@interface CABTMIDILocalPeripheralViewController
- (BOOL)advertiseServiceWithName:(id)a3 completionBlock:(id)a4 error:(id *)a5;
- (BOOL)changeServiceNameTo:(id)a3 completionBlock:(id)a4 error:(id *)a5;
- (BOOL)disconnectLocalPeripheral;
- (BOOL)stopAdvertisingServiceWithCompletionBlock:(id)a3 error:(id *)a4;
- (CABTMIDILocalPeripheralViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)advertisedServiceName;
- (id)statusString;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)activateController:(id)a3;
- (void)advertiseServiceSwitchToggled:(id)a3;
- (void)advertiseTimerFired:(id)a3;
- (void)cleanup;
- (void)deactivateController:(id)a3;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)messageTimerFired:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setStatusString:(id)a3 animateIndicator:(BOOL)a4 isError:(BOOL)a5;
- (void)stopTimers;
- (void)textFieldDone:(id)a3;
- (void)updateAdvertiseUI;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation CABTMIDILocalPeripheralViewController

- (CABTMIDILocalPeripheralViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = CABTMIDILocalPeripheralViewController;
  v4 = [(CABTMIDILocalPeripheralViewController *)&v7 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = gPeripheralNotificationClient == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    MIDIClientCreate(&stru_284A3B338, AdvertisingNotifyProc, v4, &gPeripheralNotificationClient);
  }

  return v4;
}

- (void)dealloc
{
  [(CABTMIDILocalPeripheralViewController *)self cleanup];
  v3.receiver = self;
  v3.super_class = CABTMIDILocalPeripheralViewController;
  [(CABTMIDILocalPeripheralViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = CABTMIDILocalPeripheralViewController;
  [(CABTMIDILocalPeripheralViewController *)&v7 viewDidLoad];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277D76810];
  v5 = [MEMORY[0x277CCABD8] mainQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__CABTMIDILocalPeripheralViewController_viewDidLoad__block_invoke;
  v6[3] = &unk_278A25570;
  v6[4] = self;
  [v3 addObserverForName:v4 object:self queue:v5 usingBlock:v6];
}

uint64_t __52__CABTMIDILocalPeripheralViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];

  return [v1 reloadData];
}

- (void)loadView
{
  self->advertisingManager = objc_alloc_init(AMSBTLEAdvertisementManager);
  self->theServiceName = [(CABTMIDILocalPeripheralViewController *)self advertisedServiceName];
  v3 = objc_alloc(MEMORY[0x277D75B40]);
  [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
  v4 = [v3 initWithFrame:1 style:?];
  [v4 setAutoresizingMask:18];
  [v4 setDelegate:self];
  [v4 setDataSource:self];
  [v4 setAllowsSelection:0];
  [v4 setRowHeight:*MEMORY[0x277D76F30]];
  [v4 setEstimatedRowHeight:44.0];
  [(CABTMIDILocalPeripheralViewController *)self setView:v4];
  self->advertiseTimeout = -1;
  self->fullRefreshCounter = 0;
  v5 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:+[CATimerManager getWeakReferenceOfObject:](CATimerManager target:"getWeakReferenceOfObject:" selector:self) userInfo:sel_advertiseTimerFired_ repeats:{0, 1, 1.0}];
  self->advertiseTimer = v5;
  [(NSTimer *)v5 setTolerance:0.150000006];
  v6 = [MEMORY[0x277CBEB88] currentRunLoop];
  [v6 addTimer:self->advertiseTimer forMode:*MEMORY[0x277CBE738]];
  [(CABTMIDILocalPeripheralViewController *)self addObserver:self forKeyPath:@"parentViewController" options:0 context:0];
  self->advertising = [(AMSBTLEAdvertisementManager *)self->advertisingManager isAdvertising];
  [(CABTMIDILocalPeripheralViewController *)self updateAdvertiseUI];
  [v4 reloadData];
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 addObserver:self selector:sel_activateController_ name:*MEMORY[0x277D76648] object:0];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 addObserver:self selector:sel_deactivateController_ name:*MEMORY[0x277D76768] object:0];
  self->didCleanup = 0;
}

- (void)stopTimers
{
  advertiseTimer = self->advertiseTimer;
  if (advertiseTimer)
  {
    [(NSTimer *)advertiseTimer invalidate];

    self->advertiseTimer = 0;
  }

  messageTimer = self->messageTimer;
  if (messageTimer)
  {
    [(NSTimer *)messageTimer invalidate];

    self->messageTimer = 0;
  }
}

- (void)cleanup
{
  if (!self->didCleanup)
  {
    [(CABTMIDILocalPeripheralViewController *)self removeObserver:self forKeyPath:@"parentViewController"];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [(CABTMIDILocalPeripheralViewController *)self stopTimers];

    if (gPeripheralNotificationClient)
    {
      MIDIClientDispose(gPeripheralNotificationClient);
      gPeripheralNotificationClient = 0;
    }

    self->didCleanup = 1;
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = [@"parentViewController" isEqualToString:{a3, a4, a5, a6}];
  if (a4 == self && v8 && ![(CABTMIDILocalPeripheralViewController *)self parentViewController])
  {

    [(CABTMIDILocalPeripheralViewController *)self cleanup];
  }
}

- (void)activateController:(id)a3
{
  self->advertiseTimeout = 10;
  v4 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:+[CATimerManager getWeakReferenceOfObject:](CATimerManager target:"getWeakReferenceOfObject:" selector:self) userInfo:sel_advertiseTimerFired_ repeats:{0, 1, 1.0}];
  self->advertiseTimer = v4;
  [(NSTimer *)v4 setTolerance:0.150000006];
  v5 = [MEMORY[0x277CBEB88] currentRunLoop];
  [v5 addTimer:self->advertiseTimer forMode:*MEMORY[0x277CBE738]];
  if (self->advertising)
  {
    v6 = [(CABTMIDILocalPeripheralViewController *)self advertisedServiceName];

    [(CABTMIDILocalPeripheralViewController *)self advertiseServiceWithName:v6 completionBlock:&__block_literal_global error:0];
  }
}

- (void)deactivateController:(id)a3
{
  [(CABTMIDILocalPeripheralViewController *)self stopTimers];

  [(CABTMIDILocalPeripheralViewController *)self stopAdvertisingServiceWithCompletionBlock:&__block_literal_global_38 error:0];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(CABTMIDILocalPeripheralViewController *)self cleanup];
  v5.receiver = self;
  v5.super_class = CABTMIDILocalPeripheralViewController;
  [(CABTMIDILocalPeripheralViewController *)&v5 viewDidDisappear:v3];
}

- (void)updateAdvertiseUI
{
  v3 = [MEMORY[0x277CBFD00] localPeripheral];
  v4 = [(AMSBTLEAdvertisementManager *)self->advertisingManager isAdvertising];
  self->advertising = v4;
  if (v3)
  {
    if (v4)
    {
      [(CABTMIDILocalPeripheralViewController *)self stopAdvertisingServiceWithCompletionBlock:&__block_literal_global_56 error:0];
    }

    v5 = MEMORY[0x277CCACA8];
    BTLELocalizedString = priv_getBTLELocalizedString(@"Connected to %@", @"Connected to %@. Advertising disabled.");
    v7 = [MEMORY[0x277CBFD00] localPeripheralName];
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    if (v4)
    {
      v8 = @"Serv Reg as %@";
      v9 = @"Now discoverable as %@";
    }

    else
    {
      v8 = @"Advertise as %@";
      v9 = @"Select Advertise to be discoverable as %@";
    }

    BTLELocalizedString = priv_getBTLELocalizedString(v8, v9);
    v7 = [(CABTMIDILocalPeripheralViewController *)self advertisedServiceName];
  }

  v10 = [v5 stringWithFormat:BTLELocalizedString, v7];

  [(CABTMIDILocalPeripheralViewController *)self setStatusString:v10 animateIndicator:0 isError:0];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4)
  {
    return a4 == 1;
  }

  else
  {
    return 2;
  }
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 == 1)
  {
    return priv_getBTLELocalizedString(@"stat", @"Status");
  }

  if (a4)
  {
    return 0;
  }

  return priv_getBTLELocalizedString(@"Settings", @"Peripheral Settings");
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v34[2] = *MEMORY[0x277D85DE8];
  v6 = [a3 dequeueReusableCellWithIdentifier:@"Cell"];
  if (v6)
  {
    v7 = v6;
    if (![a4 section])
    {
      if ([a4 row])
      {
        if (self->advertiseTimeout == -1)
        {
          [objc_msgSend(v7 "accessoryView")];
        }

        [objc_msgSend(v7 "accessoryView")];
      }

      else
      {
        [(UITextField *)self->serviceNameField setText:[(CABTMIDILocalPeripheralViewController *)self advertisedServiceName]];
      }
    }

    if ([a4 section] == 1)
    {
      [objc_msgSend(objc_msgSend(v7 "contentView")];
    }
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"Cell"];
    if ([a4 section])
    {
      v8 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:2];
      self->indicator = v8;
      [(UIActivityIndicatorView *)v8 setTag:1];
      [(UIActivityIndicatorView *)self->indicator setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIActivityIndicatorView *)self->indicator setFrame:0.0, 0.0, 24.0, 24.0];
      [(UIActivityIndicatorView *)self->indicator setHidesWhenStopped:0];
      [(UIActivityIndicatorView *)self->indicator setHidden:1];
      LODWORD(v9) = 1148846080;
      [(UIActivityIndicatorView *)self->indicator setContentHuggingPriority:0 forAxis:v9];
      LODWORD(v10) = 1148846080;
      [(UIActivityIndicatorView *)self->indicator setContentCompressionResistancePriority:0 forAxis:v10];
      v11 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, 100.0, 15.0}];
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v11 setNumberOfLines:0];
      [v11 setText:{-[CABTMIDILocalPeripheralViewController statusString](self, "statusString")}];
      [v11 setFont:{objc_msgSend(MEMORY[0x277D74300], "preferredFontForTextStyle:", *MEMORY[0x277D769D0])}];
      [v11 setEnabled:0];
      LODWORD(v12) = 1148829696;
      [v11 setContentCompressionResistancePriority:0 forAxis:v12];
      LODWORD(v13) = 1148846080;
      [v11 setContentCompressionResistancePriority:1 forAxis:v13];
      [v11 setTag:5];
      v14 = objc_alloc(MEMORY[0x277D75A68]);
      indicator = self->indicator;
      v33[0] = v11;
      v33[1] = indicator;
      v16 = [v14 initWithArrangedSubviews:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v33, 2)}];
      [v16 setAxis:0];
      v17 = v16;
      v18 = 0;
    }

    else
    {
      if ([a4 row])
      {
        [objc_msgSend(v7 "textLabel")];
        v22 = objc_alloc(MEMORY[0x277D75AE8]);
        v23 = [v22 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        [v23 setOn:{-[AMSBTLEAdvertisementManager isAdvertising](self->advertisingManager, "isAdvertising")}];
        [v23 addTarget:self action:sel_advertiseServiceSwitchToggled_ forControlEvents:4096];
        [v23 setEnabled:{objc_msgSend(MEMORY[0x277CBFD00], "localPeripheral") == 0}];
        [v7 setAccessoryView:v23];
        return v7;
      }

      v25 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, 100.0, 15.0}];
      [v25 setText:{priv_getBTLELocalizedString(@"name", @"Name"}];
      [v25 setEnabled:0];
      [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v26) = 1132134400;
      [v25 setContentHuggingPriority:0 forAxis:v26];
      LODWORD(v27) = 1132134400;
      [v25 setContentHuggingPriority:1 forAxis:v27];
      LODWORD(v28) = 1144766464;
      [v25 setContentCompressionResistancePriority:0 forAxis:v28];
      self->serviceNameField = objc_alloc_init(MEMORY[0x277D75BB8]);
      [(UITextField *)self->serviceNameField setText:[(CABTMIDILocalPeripheralViewController *)self advertisedServiceName]];
      [(UITextField *)self->serviceNameField setClearButtonMode:3];
      [(UITextField *)self->serviceNameField setPlaceholder:priv_getBTLELocalizedString(@"Serv Name", @"Service Name")];
      [(UITextField *)self->serviceNameField setDelegate:self];
      -[UITextField setFont:](self->serviceNameField, "setFont:", [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]]);
      [(UITextField *)self->serviceNameField addTarget:self action:sel_textFieldDone_ forControlEvents:0x80000];
      [(UITextField *)self->serviceNameField setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v29) = 1144750080;
      [(UITextField *)self->serviceNameField setContentCompressionResistancePriority:0 forAxis:v29];
      LODWORD(v30) = 1132068864;
      [(UITextField *)self->serviceNameField setContentHuggingPriority:0 forAxis:v30];
      v31 = objc_alloc(MEMORY[0x277D75A68]);
      serviceNameField = self->serviceNameField;
      v34[0] = v25;
      v34[1] = serviceNameField;
      v16 = [v31 initWithArrangedSubviews:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v34, 2)}];
      [v16 setAxis:0];
      v17 = v16;
      v18 = 2;
    }

    [v17 setAlignment:v18];
    [v16 setSpacing:8.0];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    [objc_msgSend(v7 "contentView")];
    v19 = _NSDictionaryOfVariableBindings(&cfstr_Stack.isa, v16, 0);
    v20 = [v7 contentView];
    [v20 addConstraints:{objc_msgSend(MEMORY[0x277CCAAD0], "constraintsWithVisualFormat:options:metrics:views:", @"H:|-[stack]-|", 0, 0, v19)}];
    v21 = [v7 contentView];
    [v21 addConstraints:{objc_msgSend(MEMORY[0x277CCAAD0], "constraintsWithVisualFormat:options:metrics:views:", @"V:|-[stack]-|", 0, 0, v19)}];
  }

  return v7;
}

- (void)textFieldDone:(id)a3
{
  [a3 resignFirstResponder];
  if ([(NSString *)[(UITextField *)self->serviceNameField text] isEqualToString:&stru_284A3B338])
  {
    v4 = [(CABTMIDILocalPeripheralViewController *)self advertisedServiceName];
    serviceNameField = self->serviceNameField;

    [(UITextField *)serviceNameField setText:v4];
  }

  else
  {
    v6 = [(UITextField *)self->serviceNameField text];
    self->theServiceName = v6;

    [(CABTMIDILocalPeripheralViewController *)self changeServiceNameTo:v6 completionBlock:&__block_literal_global_122 error:0];
  }
}

- (void)setStatusString:(id)a3 animateIndicator:(BOOL)a4 isError:(BOOL)a5
{
  v5 = a5;

  self->statusString = a3;
  self->isErrorMessage = v5;
  if (v5)
  {
    messageTimer = self->messageTimer;
    if (messageTimer)
    {
      -[NSTimer setFireDate:](messageTimer, "setFireDate:", [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:10.0]);
    }

    else
    {
      v10 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:+[CATimerManager getWeakReferenceOfObject:](CATimerManager target:"getWeakReferenceOfObject:" selector:self) userInfo:sel_messageTimerFired_ repeats:{0, 0, 10.0}];
      self->messageTimer = v10;
      [(NSTimer *)v10 setTolerance:0.5];
      v11 = self->messageTimer;
      v12 = [MEMORY[0x277CBEB88] currentRunLoop];
      [v12 addTimer:self->messageTimer forMode:*MEMORY[0x277CBE738]];
    }
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__CABTMIDILocalPeripheralViewController_setStatusString_animateIndicator_isError___block_invoke;
  v13[3] = &unk_278A255B8;
  v14 = a4;
  v13[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v13);
}

uint64_t __82__CABTMIDILocalPeripheralViewController_setStatusString_animateIndicator_isError___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 1024);
  if (v2 == 1)
  {
    [v3 setHidden:0];
    [*(*(a1 + 32) + 1024) startAnimating];
  }

  else
  {
    [v3 setHidden:1];
    [*(*(a1 + 32) + 1024) stopAnimating];
  }

  v4 = [*(a1 + 32) view];

  return [v4 reloadData];
}

- (id)statusString
{
  result = self->statusString;
  if (!result)
  {
    result = priv_getBTLELocalizedString(@"rdy", @"Ready");
    self->statusString = result;
  }

  return result;
}

- (void)advertiseServiceSwitchToggled:(id)a3
{
  v7 = 0;
  self->advertiseTimeout = 10;
  [a3 setEnabled:0];
  self->advertising = [(AMSBTLEAdvertisementManager *)self->advertisingManager isAdvertising];
  if ([MEMORY[0x277CBFD00] localPeripheral])
  {
    -[CABTMIDILocalPeripheralViewController setStatusString:animateIndicator:isError:](self, "setStatusString:animateIndicator:isError:", [MEMORY[0x277CCACA8] stringWithFormat:priv_getBTLELocalizedString(@"Disconnecting %@", @"Disconnecting from %@...", objc_msgSend(MEMORY[0x277CBFD00], "localPeripheralName")], 1, 0);
    if ([(CABTMIDILocalPeripheralViewController *)self disconnectLocalPeripheral])
    {
      return;
    }

    goto LABEL_3;
  }

  if (!self->advertising)
  {
    v4 = [(CABTMIDILocalPeripheralViewController *)self advertisedServiceName];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __71__CABTMIDILocalPeripheralViewController_advertiseServiceSwitchToggled___block_invoke;
    v6[3] = &unk_278A255E0;
    v6[4] = self;
    if ([(CABTMIDILocalPeripheralViewController *)self advertiseServiceWithName:v4 completionBlock:v6 error:&v7])
    {
      return;
    }

    goto LABEL_3;
  }

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__CABTMIDILocalPeripheralViewController_advertiseServiceSwitchToggled___block_invoke_2;
  v5[3] = &unk_278A255E0;
  v5[4] = self;
  if (![(CABTMIDILocalPeripheralViewController *)self stopAdvertisingServiceWithCompletionBlock:v5 error:&v7])
  {
LABEL_3:
    [(CABTMIDILocalPeripheralViewController *)self updateAdvertiseUI];
  }
}

uint64_t __71__CABTMIDILocalPeripheralViewController_advertiseServiceSwitchToggled___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  BTLELocalizedString = priv_getBTLELocalizedString(@"starting", @"Registering Service...");

  return [v1 setStatusString:BTLELocalizedString animateIndicator:1 isError:0];
}

uint64_t __71__CABTMIDILocalPeripheralViewController_advertiseServiceSwitchToggled___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  BTLELocalizedString = priv_getBTLELocalizedString(@"stopping", @"Stopping Service...");

  return [v1 setStatusString:BTLELocalizedString animateIndicator:1 isError:0];
}

- (id)advertisedServiceName
{
  v2 = [MEMORY[0x277CBFD00] nullDevice];
  str = 0;
  if (v2)
  {
    MIDIObjectGetStringProperty(v2, @"Bluetooth Advertising Name", &str);
    if (str)
    {
      v3 = objc_alloc(MEMORY[0x277CCACA8]);
      v4 = [v3 initWithString:str];
      CFRelease(str);
      return v4;
    }

    else
    {
      return priv_getBTLELocalizedString(@"My Service", @"Local Bluetooth");
    }
  }

  else
  {

    return priv_getBTLELocalizedString(@"My Service", @"Local Bluetooth");
  }
}

- (BOOL)advertiseServiceWithName:(id)a3 completionBlock:(id)a4 error:(id *)a5
{
  [(CABTMIDILocalPeripheralViewController *)self changeServiceNameTo:a3 completionBlock:&__block_literal_global_160 error:a5];
  [(AMSBTLEAdvertisementManager *)self->advertisingManager advertiseMIDIService];
  (*(a4 + 2))(a4);
  return 1;
}

- (BOOL)stopAdvertisingServiceWithCompletionBlock:(id)a3 error:(id *)a4
{
  [(AMSBTLEAdvertisementManager *)self->advertisingManager stopAdvertisingMIDIService:a3];
  (*(a3 + 2))(a3);
  return 1;
}

- (BOOL)changeServiceNameTo:(id)a3 completionBlock:(id)a4 error:(id *)a5
{
  v9 = [MEMORY[0x277CBFD00] nullDevice];
  if (!v9)
  {
    if (a5)
    {
      *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CoreMIDI" code:-10842 userInfo:0];
    }

    goto LABEL_7;
  }

  if (![(AMSBTLEAdvertisementManager *)self->advertisingManager isAdvertising])
  {
    MIDIObjectSetStringProperty(v9, @"Bluetooth Advertising Name", a3);
LABEL_7:
    (*(a4 + 2))(a4);
    return v9 != 0;
  }

  [(AMSBTLEAdvertisementManager *)self->advertisingManager stopAdvertisingMIDIService];
  MIDIObjectSetStringProperty(v9, @"Bluetooth Advertising Name", a3);
  (*(a4 + 2))(a4);
  [(AMSBTLEAdvertisementManager *)self->advertisingManager advertiseMIDIService];
  return v9 != 0;
}

- (BOOL)disconnectLocalPeripheral
{
  v2 = [MEMORY[0x277CBFD00] nullDevice];
  v3 = [MEMORY[0x277CBFD00] localPeripheral];
  str = 0;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    MIDIObjectGetStringProperty(v3, @"BLE MIDI Device UUID", &str);
    if (str)
    {
      MIDIObjectSetStringProperty(v2, @"disconnect device", str);
      CFRelease(str);
    }
  }

  return v2 != 0;
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = CABTMIDILocalPeripheralViewController;
  [(CABTMIDILocalPeripheralViewController *)&v2 didReceiveMemoryWarning];
}

- (void)advertiseTimerFired:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__CABTMIDILocalPeripheralViewController_advertiseTimerFired___block_invoke;
  block[3] = &unk_278A255E0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __61__CABTMIDILocalPeripheralViewController_advertiseTimerFired___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 992) isAdvertising];
  result = *(a1 + 32);
  if (*(result + 1016) == v2)
  {
    v4 = *(result + 1040);
    if (v4 >= 1)
    {
      *(result + 1040) = v4 - 1;
      goto LABEL_13;
    }

    if (!v4)
    {
      v6 = [MEMORY[0x277CBFD00] localPeripheral];
      v7 = *(a1 + 32);
      if (v6)
      {
        v8 = @"disconnectErr";
        v9 = @"There has been an error disconnecting.";
      }

      else
      {
        if ((v7[1016] & 1) == 0)
        {
          BTLELocalizedString = &stru_284A3B338;
          v11 = *(a1 + 32);
          v12 = 0;
          goto LABEL_12;
        }

        v8 = @"stopErr";
        v9 = @"There has been an error stopping the service";
      }

      BTLELocalizedString = priv_getBTLELocalizedString(v8, v9);
      v11 = v7;
      v12 = 1;
LABEL_12:
      result = [v11 setStatusString:BTLELocalizedString animateIndicator:0 isError:v12];
      *(*(a1 + 32) + 1040) = -1;
    }
  }

  else
  {
    result = [result updateAdvertiseUI];
    *(*(a1 + 32) + 1040) = -1;
    v5 = *(a1 + 32);
    if (*(v5 + 1040) >= 1)
    {
      *(v5 + 1040) = -1;
    }
  }

LABEL_13:
  v13 = *(a1 + 32);
  v14 = *(v13 + 1048);
  if (v14 < 15)
  {
    *(v13 + 1048) = v14 + 1;
  }

  else
  {
    *(v13 + 1048) = 0;
    v15 = *(a1 + 32);

    return [v15 updateAdvertiseUI];
  }

  return result;
}

- (void)messageTimerFired:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CABTMIDILocalPeripheralViewController_messageTimerFired___block_invoke;
  block[3] = &unk_278A255E0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __59__CABTMIDILocalPeripheralViewController_messageTimerFired___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1064) = 0;
  [*(*(a1 + 32) + 1024) stopAnimating];
  v2 = *(a1 + 32);

  return [v2 updateAdvertiseUI];
}

@end