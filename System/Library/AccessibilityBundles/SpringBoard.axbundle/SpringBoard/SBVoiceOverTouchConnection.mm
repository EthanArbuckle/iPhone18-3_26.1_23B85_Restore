@interface SBVoiceOverTouchConnection
+ (id)defaultConnection;
- (BOOL)voiceOverTouchLabelElementAlertItem:(id)a3 textFieldShouldReturn:(id)a4;
- (void)_dismissLabelAlert;
- (void)_programmaticAppSwitch:(BOOL)a3;
- (void)_registerForMachConnection;
- (void)_registerVOTConnectionWithPort:(unsigned int)a3;
- (void)dealloc;
- (void)setLabelElementPanelVisible:(BOOL)a3 initialValue:(id)a4;
- (void)setScreenCurtainEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)tearDownVoiceOverTouchConnection;
- (void)voiceOverTouchLabelElementAlertItemDidAccept:(id)a3 withTextField:(id)a4;
@end

@implementation SBVoiceOverTouchConnection

+ (id)defaultConnection
{
  v2 = _SBVOTConnection;
  if (!_SBVOTConnection)
  {
    v3 = [objc_allocWithZone(SBVoiceOverTouchConnection) init];
    v4 = _SBVOTConnection;
    _SBVOTConnection = v3;

    [_SBVOTConnection _registerForMachConnection];
    v2 = _SBVOTConnection;
  }

  return v2;
}

- (void)_registerVOTConnectionWithPort:(unsigned int)a3
{
  if (a3 && ([*MEMORY[0x29EDC8008] _accessibilityIsAppReadyToBeProbed] & 1) != 0)
  {
    votMachPort = self->_votMachPort;
    if (votMachPort)
    {
      CFMachPortSetInvalidationCallBack(votMachPort, 0);
      v6 = self->_votMachPort;
      if (v6)
      {
        CFRelease(v6);
        self->_votMachPort = 0;
      }
    }

    _SBVOTPort = a3;
    context.version = 0;
    memset(&context.retain, 0, 24);
    context.info = self;
    v7 = CFMachPortCreateWithPort(0, a3, 0, &context, 0);
    self->_votMachPort = v7;
    if (v7)
    {
      CFMachPortSetInvalidationCallBack(v7, _voiceOverTouchDied);
    }

    _AXLogWithFacility();
  }

  else
  {

    [(SBVoiceOverTouchConnection *)self tearDownVoiceOverTouchConnection];
  }
}

- (void)_registerForMachConnection
{
  sp = 0;
  if (bootstrap_check_in(*MEMORY[0x29EDCA6A0], "com.apple.SpringBoard.VOT", &sp))
  {
    _AXLogWithFacility();
    v2 = MEMORY[0x29EDCA6B0];
    if (!mach_port_allocate(*MEMORY[0x29EDCA6B0], 1u, &sp) && !mach_port_insert_right(*v2, sp, sp, 0x14u) && bootstrap_register2())
    {
      _AXLogWithFacility();
    }
  }

  server_source = MSHCreateMIGServerSource();
  if (server_source)
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, server_source, *MEMORY[0x29EDB8FB8]);
  }
}

- (void)tearDownVoiceOverTouchConnection
{
  votMachPort = self->_votMachPort;
  if (votMachPort)
  {
    Port = CFMachPortGetPort(votMachPort);
    CFMachPortSetInvalidationCallBack(self->_votMachPort, 0);
    mach_port_deallocate(*MEMORY[0x29EDCA6B0], Port);
    CFRelease(self->_votMachPort);
    self->_votMachPort = 0;
  }

  [(SBVoiceOverTouchConnection *)self setLabelElementPanelVisible:0 initialValue:0];
  [(SBVoiceOverTouchConnection *)self setScreenCurtainEnabled:0];
  _SBVOTPort = 0;
}

- (void)dealloc
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x29EDC7ED0] object:0];

  [(SBVoiceOverTouchConnection *)self tearDownVoiceOverTouchConnection];
  if (server_source)
  {
    v4 = MSHGetMachPortFromSource();
    CFRunLoopSourceInvalidate(server_source);
    mach_port_mod_refs(*MEMORY[0x29EDCA6B0], v4, 1u, -1);
    CFRelease(server_source);
    server_source = 0;
  }

  v5.receiver = self;
  v5.super_class = SBVoiceOverTouchConnection;
  [(SBVoiceOverTouchConnection *)&v5 dealloc];
}

- (void)setLabelElementPanelVisible:(BOOL)a3 initialValue:(id)a4
{
  v11 = a4;
  v6 = [*MEMORY[0x29EDC8008] _iosAccessibilityAttributeValue:1500];
  v7 = [v6 BOOLValue];

  if ((v7 & 1) == 0)
  {
    if (a3)
    {
      v8 = objc_alloc_init(SBVoiceOverTouchLabelElementAlertItem);
      labelAlert = self->_labelAlert;
      self->_labelAlert = v8;

      [(SBVoiceOverTouchLabelElementAlertItem *)self->_labelAlert setInitialValue:v11];
      [(SBVoiceOverTouchLabelElementAlertItem *)self->_labelAlert setVoiceOverAlertItemDelegate:self];
      [MEMORY[0x29EDC6D00] activateAlertItem:self->_labelAlert];
    }

    else
    {
      [(SBAlertItem *)self->_labelAlert dismiss];
      v10 = self->_labelAlert;
      self->_labelAlert = 0;
    }
  }
}

- (void)_programmaticAppSwitch:(BOOL)a3
{
  v3 = a3;
  SBSSpringBoardServerPort();
  if (v3)
  {

    JUMPOUT(0x29ED37940);
  }

  JUMPOUT(0x29ED37930);
}

- (void)setScreenCurtainEnabled:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  self->_screenCurtainEnabled = a3;
  if (!a3 || (+[AXSpringBoardGlue sharedInstance](AXSpringBoardGlue, "sharedInstance", a3, a4), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isDimmed], v5, (v6 & 1) == 0))
  {

    AXSpringBoardSetScreenCurtainEnabled(v4);
  }
}

- (void)_dismissLabelAlert
{
  [(SBAlertItem *)self->_labelAlert dismiss];
  labelAlert = self->_labelAlert;
  self->_labelAlert = 0;
}

- (void)voiceOverTouchLabelElementAlertItemDidAccept:(id)a3 withTextField:(id)a4
{
  v5 = [a4 text];
  UIAccessibilityPostNotification(0x7E9u, v5);

  [(SBVoiceOverTouchConnection *)self _dismissLabelAlert];
}

- (BOOL)voiceOverTouchLabelElementAlertItem:(id)a3 textFieldShouldReturn:(id)a4
{
  if (a4)
  {
    v6 = [a4 text];
    UIAccessibilityPostNotification(0x7E9u, v6);

    [(SBVoiceOverTouchConnection *)self setLabelElementPanelVisible:0 initialValue:0];
  }

  return a4 == 0;
}

@end