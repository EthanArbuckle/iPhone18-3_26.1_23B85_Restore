@interface AUGenericViewController
- (AUGenericViewController)init;
- (void)addGestureObservers;
- (void)genericViewBeginGestureMessageReceived:(id)received;
- (void)genericViewEndGestureMessageReceived:(id)received;
- (void)genericViewNotificationMessageReceived:(id)received;
- (void)setAuAudioUnit:(AUAudioUnit *)auAudioUnit;
- (void)setAudioUnit:(OpaqueAudioComponentInstance *)unit;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AUGenericViewController

- (AUGenericViewController)init
{
  v6.receiver = self;
  v6.super_class = AUGenericViewController;
  v2 = [(AUGenericViewController *)&v6 init];
  v3 = [[_TtC12CoreAudioKit21AUGenericViewInternal alloc] initWithFrame:0.0, 0.0, 100.0, 100.0];
  genericView = v2->_genericView;
  v2->_genericView = v3;

  [(AUGenericViewInternal *)v2->_genericView setAutoresizingMask:18];
  [(AUGenericViewInternal *)v2->_genericView setOwningController:v2];
  return v2;
}

- (void)genericViewNotificationMessageReceived:(id)received
{
  userInfo = [received userInfo];
  if (userInfo)
  {
    v14 = userInfo;
    v5 = [userInfo objectForKeyedSubscript:@"param.address"];
    unsignedLongLongValue = [v5 unsignedLongLongValue];

    v7 = [v14 objectForKeyedSubscript:@"param.value"];
    [v7 floatValue];
    v9 = v8;

    parameterTree = [(AUAudioUnit *)self->_auAudioUnit parameterTree];
    v11 = [parameterTree parameterWithAddress:unsignedLongLongValue];

    paramObserverToken = [(AUGenericViewInternal *)self->_genericView paramObserverToken];
    LODWORD(v13) = v9;
    [v11 setValue:paramObserverToken originator:0 atHostTime:0 eventType:v13];

    userInfo = v14;
  }
}

- (void)genericViewBeginGestureMessageReceived:(id)received
{
  userInfo = [received userInfo];
  if (userInfo)
  {
    v14 = userInfo;
    v5 = [userInfo objectForKeyedSubscript:@"param.address"];
    unsignedLongLongValue = [v5 unsignedLongLongValue];

    v7 = [v14 objectForKeyedSubscript:@"param.value"];
    [v7 floatValue];
    v9 = v8;

    parameterTree = [(AUAudioUnit *)self->_auAudioUnit parameterTree];
    v11 = [parameterTree parameterWithAddress:unsignedLongLongValue];

    paramObserverToken = [(AUGenericViewInternal *)self->_genericView paramObserverToken];
    LODWORD(v13) = v9;
    [v11 setValue:paramObserverToken originator:0 atHostTime:1 eventType:v13];

    userInfo = v14;
  }
}

- (void)genericViewEndGestureMessageReceived:(id)received
{
  userInfo = [received userInfo];
  if (userInfo)
  {
    v14 = userInfo;
    v5 = [userInfo objectForKeyedSubscript:@"param.address"];
    unsignedLongLongValue = [v5 unsignedLongLongValue];

    v7 = [v14 objectForKeyedSubscript:@"param.value"];
    [v7 floatValue];
    v9 = v8;

    parameterTree = [(AUAudioUnit *)self->_auAudioUnit parameterTree];
    v11 = [parameterTree parameterWithAddress:unsignedLongLongValue];

    paramObserverToken = [(AUGenericViewInternal *)self->_genericView paramObserverToken];
    LODWORD(v13) = v9;
    [v11 setValue:paramObserverToken originator:0 atHostTime:2 eventType:v13];

    userInfo = v14;
  }
}

- (void)setAuAudioUnit:(AUAudioUnit *)auAudioUnit
{
  v4 = auAudioUnit;
  [(AUGenericViewInternal *)self->_genericView setAuAudioUnit:v4];
  v5 = self->_auAudioUnit;
  self->_auAudioUnit = v4;
}

- (void)setAudioUnit:(OpaqueAudioComponentInstance *)unit
{
  v4 = [MEMORY[0x277CEFD18] auAudioUnitForAudioUnit:unit];
  [(AUGenericViewController *)self setAuAudioUnit:v4];
}

- (void)addGestureObservers
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_genericViewNotificationMessageReceived_ name:genericViewNotificationMessageName object:self->_genericView];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_genericViewBeginGestureMessageReceived_ name:genericViewNotificationBeginGestureName object:self->_genericView];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel_genericViewEndGestureMessageReceived_ name:genericViewNotificationEndGestureName object:self->_genericView];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = AUGenericViewController;
  [(AUGenericViewController *)&v16 viewDidLoad];
  view = [(AUGenericViewController *)self view];
  [view frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  genericView = [(AUGenericViewController *)self genericView];
  [genericView setFrame:{v5, v7, v9, v11}];

  view2 = [(AUGenericViewController *)self view];
  genericView2 = [(AUGenericViewController *)self genericView];
  [view2 addSubview:genericView2];

  view3 = [(AUGenericViewController *)self view];
  [view3 setAutoresizingMask:18];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = AUGenericViewController;
  [(AUGenericViewController *)&v5 viewWillDisappear:disappear];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AUGenericViewController;
  [(AUGenericViewController *)&v4 viewWillAppear:appear];
  [(AUGenericViewController *)self addGestureObservers];
}

@end