@interface ZWEventProcessor
+ (id)defaultEventProcessor;
- (CGPoint)currentTouchOffset;
- (CGPoint)offsetForAutopanner:(id)autopanner;
- (ZWEventProcessor)initWithHIDTapIdentifier:(id)identifier HIDEventTapPriority:(int)priority systemEventTapIdentifier:(id)tapIdentifier systemEventTapPriority:(int)tapPriority;
- (ZWEventProcessorDelegate)mainDisplayDelegate;
- (void)_sendCancelEventToAppDirectlyWithSenderID:(id)d;
- (void)dealloc;
- (void)sendCancelEventToAppDirectlyWithSenderID:(unint64_t)d;
@end

@implementation ZWEventProcessor

+ (id)defaultEventProcessor
{
  if (defaultEventProcessor_onceToken != -1)
  {
    +[ZWEventProcessor defaultEventProcessor];
  }

  v3 = defaultEventProcessor__eventProcessor;

  return v3;
}

void __41__ZWEventProcessor_defaultEventProcessor__block_invoke(id a1)
{
  defaultEventProcessor__eventProcessor = objc_alloc_init(objc_opt_class());

  _objc_release_x1();
}

- (ZWEventProcessor)initWithHIDTapIdentifier:(id)identifier HIDEventTapPriority:(int)priority systemEventTapIdentifier:(id)tapIdentifier systemEventTapPriority:(int)tapPriority
{
  v6 = *&tapPriority;
  v8 = *&priority;
  identifierCopy = identifier;
  tapIdentifierCopy = tapIdentifier;
  v25.receiver = self;
  v25.super_class = ZWEventProcessor;
  v12 = [(ZWEventProcessor *)&v25 initWithHIDTapIdentifier:identifierCopy HIDEventTapPriority:v8 systemEventTapIdentifier:tapIdentifierCopy systemEventTapPriority:v6];
  v13 = v12;
  if (v12)
  {
    [(ZWEventProcessor *)v12 setHIDEventFilterMask:19];
    v14 = objc_alloc_init(SCRCThread);
    hidPostThread = v13->_hidPostThread;
    v13->_hidPostThread = v14;

    [(SCRCThread *)v13->_hidPostThread performSelector:"_adjustThreadPriority" onTarget:v13 count:0 objects:0];
    [(ZWEventProcessor *)v13 setShouldNotifyUserEventOccurred:1];
    objc_initWeak(&location, v13);
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = __113__ZWEventProcessor_initWithHIDTapIdentifier_HIDEventTapPriority_systemEventTapIdentifier_systemEventTapPriority___block_invoke;
    v22 = &unk_78FF0;
    objc_copyWeak(&v23, &location);
    [(ZWEventProcessor *)v13 setHIDEventHandler:&v19];
    v16 = [AXUIEventManager sharedEventManager:v19];
    [v16 registerEventHandler:v13];

    v17 = +[NSPointerArray weakObjectsPointerArray];
    [(ZWEventProcessor *)v13 setExternalDisplayDelegates:v17];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v13;
}

id __113__ZWEventProcessor_initWithHIDTapIdentifier_HIDEventTapPriority_systemEventTapIdentifier_systemEventTapPriority___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (AXInPreboardScenario() & 1) != 0 || (AXInCheckerBoardScenario())
  {
    v4 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v4 = [WeakRetained _handleEvent:v3];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[AXUIEventManager sharedEventManager];
  [v3 unregisterEventHandler:self];

  v4.receiver = self;
  v4.super_class = ZWEventProcessor;
  [(ZWEventProcessor *)&v4 dealloc];
}

- (CGPoint)offsetForAutopanner:(id)autopanner
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_sendCancelEventToAppDirectlyWithSenderID:(id)d
{
  y = CGPointZero.y;
  dCopy = d;
  v14 = [AXEventRepresentation touchRepresentationWithHandType:8 location:CGPointZero.x, y];
  v5 = +[UIScreen mainScreen];
  [v5 bounds];
  v7 = v6;
  v9 = v8;

  v10 = +[AXBackBoardServer server];
  v11 = [v10 contextIdForPosition:{v7 * 0.5, v9 * 0.5}];

  [v14 setContextId:v11];
  unsignedLongLongValue = [dCopy unsignedLongLongValue];

  [v14 setSenderID:unsignedLongLongValue];
  v13 = +[AXBackBoardServer server];
  [v13 postEvent:v14 afterNamedTap:@"__NOTHING__" includeTaps:&off_7B680];
}

- (void)sendCancelEventToAppDirectlyWithSenderID:(unint64_t)d
{
  hidPostThread = self->_hidPostThread;
  v5 = [NSNumber numberWithUnsignedLongLong:d];
  [(SCRCThread *)hidPostThread performSelector:"_sendCancelEventToAppDirectlyWithSenderID:" onTarget:self count:1 objects:v5];
}

- (ZWEventProcessorDelegate)mainDisplayDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mainDisplayDelegate);

  return WeakRetained;
}

- (CGPoint)currentTouchOffset
{
  x = self->_currentTouchOffset.x;
  y = self->_currentTouchOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end