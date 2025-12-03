@interface SBVoiceOverTouchConnection
+ (id)defaultConnection;
- (BOOL)voiceOverTouchLabelElementAlertItem:(id)item textFieldShouldReturn:(id)return;
- (void)_dismissLabelAlert;
- (void)_programmaticAppSwitch:(BOOL)switch;
- (void)_registerForMachConnection;
- (void)_registerVOTConnectionWithPort:(unsigned int)port;
- (void)dealloc;
- (void)setLabelElementPanelVisible:(BOOL)visible initialValue:(id)value;
- (void)setScreenCurtainEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)tearDownVoiceOverTouchConnection;
- (void)voiceOverTouchLabelElementAlertItemDidAccept:(id)accept withTextField:(id)field;
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

- (void)_registerVOTConnectionWithPort:(unsigned int)port
{
  if (port && ([*MEMORY[0x29EDC8008] _accessibilityIsAppReadyToBeProbed] & 1) != 0)
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

    _SBVOTPort = port;
    context.version = 0;
    memset(&context.retain, 0, 24);
    context.info = self;
    v7 = CFMachPortCreateWithPort(0, port, 0, &context, 0);
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
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x29EDC7ED0] object:0];

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

- (void)setLabelElementPanelVisible:(BOOL)visible initialValue:(id)value
{
  valueCopy = value;
  v6 = [*MEMORY[0x29EDC8008] _iosAccessibilityAttributeValue:1500];
  bOOLValue = [v6 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    if (visible)
    {
      v8 = objc_alloc_init(SBVoiceOverTouchLabelElementAlertItem);
      labelAlert = self->_labelAlert;
      self->_labelAlert = v8;

      [(SBVoiceOverTouchLabelElementAlertItem *)self->_labelAlert setInitialValue:valueCopy];
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

- (void)_programmaticAppSwitch:(BOOL)switch
{
  switchCopy = switch;
  SBSSpringBoardServerPort();
  if (switchCopy)
  {

    JUMPOUT(0x29ED37940);
  }

  JUMPOUT(0x29ED37930);
}

- (void)setScreenCurtainEnabled:(BOOL)enabled animated:(BOOL)animated
{
  enabledCopy = enabled;
  self->_screenCurtainEnabled = enabled;
  if (!enabled || (+[AXSpringBoardGlue sharedInstance](AXSpringBoardGlue, "sharedInstance", enabled, animated), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isDimmed], v5, (v6 & 1) == 0))
  {

    AXSpringBoardSetScreenCurtainEnabled(enabledCopy);
  }
}

- (void)_dismissLabelAlert
{
  [(SBAlertItem *)self->_labelAlert dismiss];
  labelAlert = self->_labelAlert;
  self->_labelAlert = 0;
}

- (void)voiceOverTouchLabelElementAlertItemDidAccept:(id)accept withTextField:(id)field
{
  text = [field text];
  UIAccessibilityPostNotification(0x7E9u, text);

  [(SBVoiceOverTouchConnection *)self _dismissLabelAlert];
}

- (BOOL)voiceOverTouchLabelElementAlertItem:(id)item textFieldShouldReturn:(id)return
{
  if (return)
  {
    text = [return text];
    UIAccessibilityPostNotification(0x7E9u, text);

    [(SBVoiceOverTouchConnection *)self setLabelElementPanelVisible:0 initialValue:0];
  }

  return return == 0;
}

@end