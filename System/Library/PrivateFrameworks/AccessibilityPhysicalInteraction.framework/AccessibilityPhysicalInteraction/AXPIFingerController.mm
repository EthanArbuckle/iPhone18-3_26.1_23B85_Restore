@interface AXPIFingerController
- (AXAssertionCoordinator)suppressVisualsAssertionCoodinator;
- (AXPIFingerAppearanceDelegate)appearanceDelegate;
- (AXPIFingerController)initWithDisplayUUID:(id)d;
- (BOOL)moveFingersTo3DPoints:(id)points;
- (BOOL)moveFingersToPoints:(id)points;
- (CGPoint)_fingerLocationFromSceneReferencePoint:(CGPoint)point;
- (CGPoint)_sceneReferencePointFromFingerLocation:(CGPoint)location;
- (CGPoint)midpointForFingers;
- (CGPoint)midpointOfStartingFingersForGesture:(id)gesture;
- (CGRect)fixedReferenceBounds;
- (CGRect)rectForFingersAtPoints:(id)points;
- (id)_eventTouchInfoForFinger:(id)finger;
- (id)_eventTouchInfoForFingerLocation:(CGPoint)location force:(double)force;
- (id)_handleStartingFingersForGesture:(id)gesture animated:(BOOL)animated startPointForAnimation:(CGPoint)animation midpoint:(CGPoint *)midpoint showFingers:(BOOL)fingers;
- (id)_pointStringsFromFingers;
- (id)_touchInfosByIdentifierForPressedFingers;
- (id)acquireAssertionToSuppressVisualsWithReason:(id)reason;
- (id)fingerModelAtPoint:(CGPoint)point;
- (id)legacyLiftFingersUp;
- (id)legacyPressFingersDown;
- (unint64_t)eventSenderServiceID;
- (void)_endGestureWithSuccess:(BOOL)success;
- (void)_interruptGestureIfNeeded;
- (void)_performGesture:(id)gesture shouldShowFingers:(BOOL)fingers completion:(id)completion;
- (void)_replayEventAtIndex:(unint64_t)index inGesture:(id)gesture allFingerIdentifiers:(id)identifiers;
- (void)_sendMoveEventIfNeededForFingerModel:(id)model atIndex:(unint64_t)index;
- (void)_showFingerModels:(id)models animated:(BOOL)animated startPointForAnimation:(CGPoint)animation shouldShowPinchChain:(BOOL)chain shouldReuseFingers:(BOOL)fingers;
- (void)cancelGestureWithCompletion:(id)completion;
- (void)clearAllFingersAnimated:(BOOL)animated endPointForAnimation:(CGPoint)animation;
- (void)dealloc;
- (void)didUpdateForceForFingerModel:(id)model;
- (void)didUpdateLocationForFingerModel:(id)model;
- (void)didUpdatePressStateForFingerModel:(id)model;
- (void)didUpdateSelectedStateForFingerModel:(id)model;
- (void)didUpdateShapeForFingerModel:(id)model;
- (void)endGestureWithCompletion:(id)completion;
- (void)endUpdates;
- (void)enumerateFingersUsingBlock:(id)block;
- (void)liftFingersUpAnimated:(BOOL)animated sendTouchEvents:(BOOL)events;
- (void)performCircularProgressAnimationOnFingersWithDuration:(double)duration completion:(id)completion;
- (void)performDownAtPoint:(CGPoint)point;
- (void)performGesture:(id)gesture;
- (void)performGesture:(id)gesture completion:(id)completion;
- (void)performMoveToPoint:(CGPoint)point;
- (void)performUpAtPoint:(CGPoint)point;
- (void)performWithoutPreparingGesture:(id)gesture completion:(id)completion;
- (void)pressFingersDownAnimated:(BOOL)animated sendTouchEvents:(BOOL)events;
- (void)resetPinchFingers;
- (void)setAppearanceDelegate:(id)delegate;
- (void)showPinchFingersAnimated:(BOOL)animated midpoint:(CGPoint)midpoint;
@end

@implementation AXPIFingerController

- (AXPIFingerController)initWithDisplayUUID:(id)d
{
  dCopy = d;
  v15.receiver = self;
  v15.super_class = AXPIFingerController;
  v5 = [(AXPIFingerController *)&v15 init];
  if (v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    fingerModels = v5->_fingerModels;
    v5->_fingerModels = array;

    v8 = [[AXPIFingerEventSender alloc] initWithDisplayUUID:dCopy];
    eventSender = v5->_eventSender;
    v5->_eventSender = v8;

    [(AXPIFingerEventSender *)v5->_eventSender setSenderID:0x8000000817319372];
    v10 = objc_alloc_init(AXPIFingerContainerView);
    fingerContainerView = v5->_fingerContainerView;
    v5->_fingerContainerView = v10;

    [(AXPIFingerContainerView *)v5->_fingerContainerView setUserInteractionEnabled:0];
    v12 = *(MEMORY[0x277CBF398] + 16);
    v5->_fixedReferenceBounds.origin = *MEMORY[0x277CBF398];
    v5->_fixedReferenceBounds.size = v12;
    v13 = AXPIDefaultAppearanceForDevice();
    [(AXPIFingerController *)v5 setAppearanceDelegate:v13];
  }

  return v5;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_fingerModels;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) setDelegate:0];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = AXPIFingerController;
  [(AXPIFingerController *)&v8 dealloc];
}

- (unint64_t)eventSenderServiceID
{
  eventService = [(AXPIFingerEventSender *)self->_eventSender eventService];
  serviceID = [eventService serviceID];

  return serviceID;
}

- (void)clearAllFingersAnimated:(BOOL)animated endPointForAnimation:(CGPoint)animation
{
  y = animation.y;
  x = animation.x;
  animatedCopy = animated;
  [(AXPIFingerController *)self liftFingersUpAnimated:?];
  [(AXPIFingerController *)self _interruptGestureIfNeeded];
  [(AXPIFingerController *)self enumerateFingersUsingBlock:&__block_literal_global_3];
  [(AXPIFingerContainerView *)self->_fingerContainerView clearAllFingersAnimated:animatedCopy endPointForAnimation:x, y];
  fingerModels = self->_fingerModels;

  [(NSMutableArray *)fingerModels removeAllObjects];
}

- (void)_showFingerModels:(id)models animated:(BOOL)animated startPointForAnimation:(CGPoint)animation shouldShowPinchChain:(BOOL)chain shouldReuseFingers:(BOOL)fingers
{
  fingersCopy = fingers;
  chainCopy = chain;
  y = animation.y;
  x = animation.x;
  animatedCopy = animated;
  v28 = *MEMORY[0x277D85DE8];
  modelsCopy = models;
  if (fingersCopy)
  {
    [(AXPIFingerController *)self _interruptGestureIfNeeded];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __114__AXPIFingerController__showFingerModels_animated_startPointForAnimation_shouldShowPinchChain_shouldReuseFingers___block_invoke;
    aBlock[3] = &unk_278BE6330;
    aBlock[4] = self;
    v26 = modelsCopy;
    v14 = _Block_copy(aBlock);
    v15 = v14;
    if (animatedCopy)
    {
      [MEMORY[0x277D75D18] animateWithDuration:v14 animations:0.25];
    }

    else
    {
      (*(v14 + 2))(v14);
    }
  }

  else
  {
    if ([(NSMutableArray *)self->_fingerModels count])
    {
      [(AXPIFingerController *)self clearAllFingersAnimated:animatedCopy endPointForAnimation:x, y];
    }

    [(NSMutableArray *)self->_fingerModels addObjectsFromArray:modelsCopy];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v16 = modelsCopy;
    v17 = [v16 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v22;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v21 + 1) + 8 * i) setDelegate:{self, v21}];
        }

        v18 = [v16 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v18);
    }

    [(AXPIFingerContainerView *)self->_fingerContainerView showFingerModels:v16 animated:animatedCopy startPointForAnimation:chainCopy shouldShowPinchChain:x, y];
  }
}

void __114__AXPIFingerController__showFingerModels_animated_startPointForAnimation_shouldShowPinchChain_shouldReuseFingers___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __114__AXPIFingerController__showFingerModels_animated_startPointForAnimation_shouldShowPinchChain_shouldReuseFingers___block_invoke_2;
  v2[3] = &unk_278BE6618;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 enumerateFingersUsingBlock:v2];
}

void __114__AXPIFingerController__showFingerModels_animated_startPointForAnimation_shouldShowPinchChain_shouldReuseFingers___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectAtIndexedSubscript:a3];
  [v5 updateWithPropertiesFromFingerModel:v6];
}

- (void)showPinchFingersAnimated:(BOOL)animated midpoint:(CGPoint)midpoint
{
  y = midpoint.y;
  x = midpoint.x;
  animatedCopy = animated;
  if ([(NSMutableArray *)self->_fingerModels count])
  {
    [(AXPIFingerController *)self clearAllFingersAnimated:animatedCopy endPointForAnimation:x, y];
  }

  [(AXPIFingerContainerView *)self->_fingerContainerView bounds];
  v13 = [AXPIFingerUtilities defaultPinchLocationsAroundPoint:x withinBounds:y, v8, v9, v10, v11];
  v12 = [AXPIFingerUtilities fingerModelsForPointStrings:v13];
  [(AXPIFingerController *)self _showFingerModels:v12 animated:animatedCopy startPointForAnimation:1 shouldShowPinchChain:0 shouldReuseFingers:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
}

- (void)resetPinchFingers
{
  [(AXPIFingerController *)self midpointForFingers];
  v4 = v3;
  v6 = v5;
  [(AXPIFingerContainerView *)self->_fingerContainerView bounds];
  v17 = [AXPIFingerUtilities defaultPinchLocationsAroundPoint:v4 withinBounds:v6, v7, v8, v9, v10];
  firstObject = [v17 firstObject];
  v12 = CGPointFromString(firstObject);
  v13 = [(NSMutableArray *)self->_fingerModels objectAtIndexedSubscript:0];
  [v13 setLocation:{v12.x, v12.y}];

  lastObject = [v17 lastObject];
  v15 = CGPointFromString(lastObject);
  v16 = [(NSMutableArray *)self->_fingerModels objectAtIndexedSubscript:1];
  [v16 setLocation:{v15.x, v15.y}];
}

- (CGPoint)_sceneReferencePointFromFingerLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  fixedReferenceWindow = [(AXPIFingerController *)self fixedReferenceWindow];

  fingerContainerView = self->_fingerContainerView;
  if (fixedReferenceWindow)
  {
    window = [(AXPIFingerContainerView *)fingerContainerView window];
    [(AXPIFingerContainerView *)self->_fingerContainerView convertPoint:0 toView:x, y];
    v10 = v9;
    v12 = v11;
    fixedReferenceWindow2 = [(AXPIFingerController *)self fixedReferenceWindow];
    [window convertPoint:fixedReferenceWindow2 toWindow:{v10, v12}];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    [(AXPIFingerContainerView *)fingerContainerView convertPoint:0 toView:x, y];
    v19 = v18;
    v21 = v20;
    window = [MEMORY[0x277CE7D28] server];
    fixedReferenceWindow2 = [(AXPIFingerContainerView *)self->_fingerContainerView window];
    _contextId = [fixedReferenceWindow2 _contextId];
    window2 = [(AXPIFingerContainerView *)self->_fingerContainerView window];
    screen = [window2 screen];
    displayIdentity = [screen displayIdentity];
    [window convertPoint:_contextId fromContextId:objc_msgSend(displayIdentity displayId:{"displayID"), v19, v21}];
    v15 = v26;
    v17 = v27;
  }

  v28 = v15;
  v29 = v17;
  result.y = v29;
  result.x = v28;
  return result;
}

- (CGPoint)_fingerLocationFromSceneReferencePoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  fixedReferenceWindow = [(AXPIFingerController *)self fixedReferenceWindow];

  fingerContainerView = self->_fingerContainerView;
  window = [(AXPIFingerContainerView *)fingerContainerView window];
  v9 = window;
  if (fixedReferenceWindow)
  {
    fixedReferenceWindow2 = [(AXPIFingerController *)self fixedReferenceWindow];
    [v9 convertPoint:fixedReferenceWindow2 fromWindow:{x, y}];
    [(AXPIFingerContainerView *)fingerContainerView convertPoint:0 fromView:?];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    fixedReferenceWindow2 = [window screen];
    fixedCoordinateSpace = [fixedReferenceWindow2 fixedCoordinateSpace];
    [(AXPIFingerContainerView *)fingerContainerView convertPoint:fixedCoordinateSpace fromCoordinateSpace:x, y];
    v12 = v16;
    v14 = v17;
  }

  v18 = v12;
  v19 = v14;
  result.y = v19;
  result.x = v18;
  return result;
}

- (id)_eventTouchInfoForFingerLocation:(CGPoint)location force:(double)force
{
  y = location.y;
  x = location.x;
  v8 = objc_alloc_init(AXPIFingerEventTouchInfo);
  [(AXPIFingerController *)self _sceneReferencePointFromFingerLocation:x, y];
  v10 = v9;
  v12 = v11;
  [(AXPIFingerController *)self fixedReferenceBounds];
  if (CGRectIsNull(v26))
  {
    window = [(AXPIFingerContainerView *)self->_fingerContainerView window];

    if (window)
    {
      window2 = [(AXPIFingerContainerView *)self->_fingerContainerView window];
      screen = [window2 screen];
      [screen _referenceBounds];
      v17 = v16;
      v19 = v18;
    }

    else
    {
      window2 = [MEMORY[0x277D759A0] mainScreen];
      [window2 _referenceBounds];
      v17 = v22;
      v19 = v23;
    }
  }

  else
  {
    [(AXPIFingerController *)self fixedReferenceBounds];
    v17 = v20;
    v19 = v21;
  }

  [(AXPIFingerEventTouchInfo *)v8 setNormalizedLocation:v10 / v17, v12 / v19];
  [(AXPIFingerEventTouchInfo *)v8 setForce:force];

  return v8;
}

- (id)_eventTouchInfoForFinger:(id)finger
{
  fingerCopy = finger;
  [fingerCopy location];
  v6 = v5;
  v8 = v7;
  [fingerCopy force];
  v10 = [(AXPIFingerController *)self _eventTouchInfoForFingerLocation:v6 force:v8, v9];
  location3D = [fingerCopy location3D];

  [v10 setLocation3D:location3D];

  return v10;
}

- (id)_touchInfosByIdentifierForPressedFingers
{
  v19 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_fingerModels;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 isPressed])
        {
          v11 = [(AXPIFingerController *)self _eventTouchInfoForFinger:v10];
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
          [dictionary setObject:v11 forKeyedSubscript:v12];
        }

        ++v8;
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return dictionary;
}

- (void)pressFingersDownAnimated:(BOOL)animated sendTouchEvents:(BOOL)events
{
  [(AXPIFingerContainerView *)self->_fingerContainerView setShouldAnimatePress:animated];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__AXPIFingerController_pressFingersDownAnimated_sendTouchEvents___block_invoke;
  v6[3] = &unk_278BE6640;
  eventsCopy = events;
  v6[4] = self;
  [(AXPIFingerController *)self enumerateFingersUsingBlock:v6];
  [(AXPIFingerContainerView *)self->_fingerContainerView setShouldAnimatePress:0];
}

void __65__AXPIFingerController_pressFingersDownAnimated_sendTouchEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 40) == 1)
  {
    [v3 setPressed:1 sendDelegateCallback:1];
  }

  else
  {
    [v3 setPressed:1 sendDelegateCallback:0];
    v4 = [*(*(a1 + 32) + 16) indexOfObject:v5];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 32) updateWithFingerModel:v5 forFingerAtIndex:v4];
    }
  }
}

- (void)liftFingersUpAnimated:(BOOL)animated sendTouchEvents:(BOOL)events
{
  [(AXPIFingerContainerView *)self->_fingerContainerView setShouldAnimatePress:animated];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__AXPIFingerController_liftFingersUpAnimated_sendTouchEvents___block_invoke;
  v6[3] = &unk_278BE6640;
  eventsCopy = events;
  v6[4] = self;
  [(AXPIFingerController *)self enumerateFingersUsingBlock:v6];
  [(AXPIFingerContainerView *)self->_fingerContainerView setShouldAnimatePress:0];
}

void __62__AXPIFingerController_liftFingersUpAnimated_sendTouchEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 40) == 1)
  {
    [v3 setPressed:0 sendDelegateCallback:1];
  }

  else
  {
    [v3 setPressed:0 sendDelegateCallback:0];
    v4 = [*(*(a1 + 32) + 16) indexOfObject:v5];
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [*(a1 + 32) updateWithFingerModel:v5 forFingerAtIndex:v4];
    }
  }
}

- (void)performCircularProgressAnimationOnFingersWithDuration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  [(AXPIFingerController *)self cancelCircularProgressAnimation];
  [(AXPIFingerContainerView *)self->_fingerContainerView performCircularProgressAnimationOnFingersWithDuration:completionCopy completion:duration];
}

- (void)enumerateFingersUsingBlock:(id)block
{
  blockCopy = block;
  [(AXPIFingerController *)self beginUpdates];
  fingerModels = self->_fingerModels;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__AXPIFingerController_enumerateFingersUsingBlock___block_invoke;
  v7[3] = &unk_278BE6668;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSMutableArray *)fingerModels enumerateObjectsUsingBlock:v7];
  [(AXPIFingerController *)self endUpdates];
}

- (CGPoint)midpointForFingers
{
  v2 = [AXPIFingerUtilities pointStringsForFingerModels:self->_fingerModels];
  AX_CGPointGetMidpointOfAllPoints();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CGPoint)midpointOfStartingFingersForGesture:(id)gesture
{
  v6 = *MEMORY[0x277CBF348];
  v3 = [(AXPIFingerController *)self _handleStartingFingersForGesture:gesture animated:0 startPointForAnimation:&v6 midpoint:0 showFingers:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  v5 = *(&v6 + 1);
  v4 = *&v6;
  result.y = v5;
  result.x = v4;
  return result;
}

- (id)_handleStartingFingersForGesture:(id)gesture animated:(BOOL)animated startPointForAnimation:(CGPoint)animation midpoint:(CGPoint *)midpoint showFingers:(BOOL)fingers
{
  fingersCopy = fingers;
  y = animation.y;
  x = animation.x;
  animatedCopy = animated;
  v42 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
  v12 = *MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
  server = [MEMORY[0x277CE7E58] server];
  activeInterfaceOrientation = [server activeInterfaceOrientation];

  [gestureCopy updateForLandscape:(activeInterfaceOrientation - 3) < 2];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  numberOfEvents = [gestureCopy numberOfEvents];
  if (numberOfEvents)
  {
    for (i = 0; i != numberOfEvents; ++i)
    {
      v18 = [gestureCopy fingerIdentifiersAtEventIndex:i];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v19 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v38;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v38 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v37 + 1) + 8 * j);
            if (([array containsObject:v23] & 1) == 0)
            {
              [array addObject:v23];
              [gestureCopy pointForFingerIdentifier:v23 atEventIndex:i];
              v25 = v24;
              v27 = v26;
              if ([gestureCopy arePointsDeviceRelative])
              {
                [(AXPIFingerController *)self _fingerLocationFromSceneReferencePoint:v25, v27];
                v25 = v28;
                v27 = v29;
              }

              v12 = v12 + v25;
              v11 = v11 + v27;
              if (fingersCopy)
              {
                v30 = [AXPIFingerModel fingerModelForLocation:v25, v27];
                [array2 addObject:v30];
              }
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v20);
      }
    }
  }

  v31 = [array count];
  if (v31)
  {
    v12 = v12 / v31;
    v11 = v11 / v31;
  }

  if (midpoint)
  {
    midpoint->x = v12;
    midpoint->y = v11;
  }

  if (fingersCopy)
  {
    -[AXPIFingerController _showFingerModels:animated:startPointForAnimation:shouldShowPinchChain:shouldReuseFingers:](self, "_showFingerModels:animated:startPointForAnimation:shouldShowPinchChain:shouldReuseFingers:", array2, animatedCopy, 0, [array2 count] == -[NSMutableArray count](self->_fingerModels, "count"), x, y);
  }

  return array;
}

- (void)_replayEventAtIndex:(unint64_t)index inGesture:(id)gesture allFingerIdentifiers:(id)identifiers
{
  gestureCopy = gesture;
  identifiersCopy = identifiers;
  [(AXPIFingerController *)self beginUpdates];
  numberOfEvents = [gestureCopy numberOfEvents];
  v11 = [gestureCopy fingerIdentifiersAtEventIndex:index];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __75__AXPIFingerController__replayEventAtIndex_inGesture_allFingerIdentifiers___block_invoke;
  v23 = &unk_278BE6690;
  selfCopy = self;
  v12 = v11;
  v25 = v12;
  v13 = gestureCopy;
  v26 = v13;
  indexCopy = index;
  [identifiersCopy enumerateObjectsUsingBlock:&v20];

  [(AXPIFingerController *)self endUpdates:v20];
  [v13 timeAtEventIndex:index];
  if (numberOfEvents - 1 > index)
  {
    v15 = v14;
    [v13 timeAtEventIndex:index + 1];
    v17 = v16 - v15;
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v17];
    [currentRunLoop runUntilDate:v19];
  }
}

void __75__AXPIFingerController__replayEventAtIndex_inGesture_allFingerIdentifiers___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:a3];
  if ([*(a1 + 40) containsObject:v12])
  {
    [*(a1 + 48) pointForFingerIdentifier:v12 atEventIndex:*(a1 + 56)];
    v7 = v6;
    v9 = v8;
    if ([*(a1 + 48) arePointsDeviceRelative])
    {
      [*(a1 + 32) _fingerLocationFromSceneReferencePoint:{v7, v9}];
      v7 = v10;
      v9 = v11;
    }

    [v5 setLocation:{v7, v9}];
    [v5 setPressed:1];
    [*(a1 + 48) forceForFingerIdentifier:v12 atEventIndex:*(a1 + 56)];
    [v5 setForce:?];
  }

  else
  {
    [v5 setPressed:0];
  }
}

- (void)performGesture:(id)gesture
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__AXPIFingerController_performGesture___block_invoke;
  v4[3] = &unk_278BE66B8;
  v4[4] = self;
  [(AXPIFingerController *)self performGesture:gesture completion:v4];
  [(AXPIFingerController *)self _endGestureWithSuccess:self->_isGestureSuccessful];
}

- (void)performGesture:(id)gesture completion:(id)completion
{
  [(AXPIFingerController *)self _performGesture:gesture shouldShowFingers:1 completion:completion];
  isGestureSuccessful = self->_isGestureSuccessful;

  [(AXPIFingerController *)self _endGestureWithSuccess:isGestureSuccessful];
}

- (void)performWithoutPreparingGesture:(id)gesture completion:(id)completion
{
  [(AXPIFingerController *)self _performGesture:gesture shouldShowFingers:0 completion:completion];
  isGestureSuccessful = self->_isGestureSuccessful;

  [(AXPIFingerController *)self _endGestureWithSuccess:isGestureSuccessful];
}

- (void)endGestureWithCompletion:(id)completion
{
  self->_isPerformingMultiStepGesture = 0;
  v4 = _Block_copy(completion);
  gestureCompletion = self->_gestureCompletion;
  self->_gestureCompletion = v4;

  isGestureSuccessful = self->_isGestureSuccessful;

  [(AXPIFingerController *)self _endGestureWithSuccess:isGestureSuccessful];
}

- (void)cancelGestureWithCompletion:(id)completion
{
  completionCopy = completion;
  self->_isPerformingGesture = 0;
  eventSender = self->_eventSender;
  _touchInfosByIdentifierForPressedFingers = [(AXPIFingerController *)self _touchInfosByIdentifierForPressedFingers];
  [(AXPIFingerEventSender *)eventSender performCancelWithTouchesByFingerIdentifier:_touchInfosByIdentifierForPressedFingers];

  [(AXPIFingerController *)self liftFingersUpAnimated:0 sendTouchEvents:0];
  v6 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
    v6 = completionCopy;
  }
}

- (void)_performGesture:(id)gesture shouldShowFingers:(BOOL)fingers completion:(id)completion
{
  fingersCopy = fingers;
  gestureCopy = gesture;
  completionCopy = completion;
  [(AXPIFingerEventSender *)self->_eventSender startNewGeneration];
  v9 = [(AXPIFingerController *)self _handleStartingFingersForGesture:gestureCopy animated:0 startPointForAnimation:0 midpoint:fingersCopy showFingers:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  numberOfEvents = [gestureCopy numberOfEvents];
  self->_isPerformingGesture = 1;
  v11 = _Block_copy(completionCopy);
  gestureCompletion = self->_gestureCompletion;
  self->_gestureCompletion = v11;

  self->_isGestureSuccessful = 1;
  if (numberOfEvents)
  {
    v13 = 0;
    while (1)
    {
      [(AXPIFingerController *)self _replayEventAtIndex:v13 inGesture:gestureCopy allFingerIdentifiers:v9];
      if (!self->_isPerformingGesture)
      {
        break;
      }

      if (numberOfEvents == ++v13)
      {
        goto LABEL_7;
      }
    }

    self->_isGestureSuccessful = 0;
  }

LABEL_7:
}

- (void)_interruptGestureIfNeeded
{
  if (self->_isPerformingGesture)
  {
    [(AXPIFingerController *)self _endGestureWithSuccess:0];
  }
}

- (void)_endGestureWithSuccess:(BOOL)success
{
  successCopy = success;
  [(AXPIFingerController *)self liftFingersUpAnimated:1];
  self->_isPerformingGesture = 0;
  gestureCompletion = self->_gestureCompletion;
  if (gestureCompletion)
  {
    v7 = _Block_copy(gestureCompletion);
    v6 = self->_gestureCompletion;
    self->_gestureCompletion = 0;

    v7[2](v7, successCopy);
  }
}

- (id)fingerModelAtPoint:(CGPoint)point
{
  v4 = [(AXPIFingerContainerView *)self->_fingerContainerView indexOfFingerAtPoint:point.x, point.y];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_fingerModels objectAtIndexedSubscript:v4];
  }

  return v5;
}

- (AXAssertionCoordinator)suppressVisualsAssertionCoodinator
{
  suppressVisualsAssertionCoodinator = self->_suppressVisualsAssertionCoodinator;
  if (!suppressVisualsAssertionCoodinator)
  {
    v4 = [objc_alloc(MEMORY[0x277CE7D20]) initWithIdentifier:@"SuppressVisualsAssertion" delegate:self];
    v5 = self->_suppressVisualsAssertionCoodinator;
    self->_suppressVisualsAssertionCoodinator = v4;

    suppressVisualsAssertionCoodinator = self->_suppressVisualsAssertionCoodinator;
  }

  return suppressVisualsAssertionCoodinator;
}

- (id)acquireAssertionToSuppressVisualsWithReason:(id)reason
{
  reasonCopy = reason;
  suppressVisualsAssertionCoodinator = [(AXPIFingerController *)self suppressVisualsAssertionCoodinator];
  v6 = [suppressVisualsAssertionCoodinator acquireAssertionWithReason:reasonCopy];

  return v6;
}

- (id)_pointStringsFromFingers
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_fingerModels;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * i) location];
        v9 = NSStringFromCGPoint(v18);
        [array addObject:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)legacyPressFingersDown
{
  [(AXPIFingerController *)self pressFingersDownAnimated:1];

  return [(AXPIFingerController *)self _pointStringsFromFingers];
}

- (id)legacyLiftFingersUp
{
  [(AXPIFingerController *)self liftFingersUpAnimated:1];

  return [(AXPIFingerController *)self _pointStringsFromFingers];
}

- (BOOL)moveFingersToPoints:(id)points
{
  v29 = *MEMORY[0x277D85DE8];
  pointsCopy = points;
  [(AXPIFingerContainerView *)self->_fingerContainerView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = pointsCopy;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v30 = CGPointFromString(*(*(&v24 + 1) + 8 * i));
        v31.origin.x = v6;
        v31.origin.y = v8;
        v31.size.width = v10;
        v31.size.height = v12;
        if (!CGRectContainsPoint(v31, v30))
        {
          v19 = 0;
          v20 = v13;
          goto LABEL_12;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v18 = [(NSMutableArray *)self->_fingerModels count];
  if (v18 == [v13 count])
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __44__AXPIFingerController_moveFingersToPoints___block_invoke;
    v22[3] = &unk_278BE6618;
    v23 = v13;
    [(AXPIFingerController *)self enumerateFingersUsingBlock:v22];
    v19 = 1;
    v20 = v23;
LABEL_12:
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

void __44__AXPIFingerController_moveFingersToPoints___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v7 = a2;
  v5 = [v4 objectAtIndexedSubscript:a3];
  v6 = CGPointFromString(v5);

  [v7 setLocation:{v6.x, v6.y}];
}

- (BOOL)moveFingersTo3DPoints:(id)points
{
  pointsCopy = points;
  v5 = [(NSMutableArray *)self->_fingerModels count];
  if (v5 == [pointsCopy count])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__AXPIFingerController_moveFingersTo3DPoints___block_invoke;
    v7[3] = &unk_278BE6618;
    v8 = pointsCopy;
    [(AXPIFingerController *)self enumerateFingersUsingBlock:v7];
  }

  return 1;
}

void __46__AXPIFingerController_moveFingersTo3DPoints___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectAtIndexedSubscript:a3];
  [v5 setLocation3D:v6];
}

- (CGRect)rectForFingersAtPoints:(id)points
{
  [(AXPIFingerContainerView *)self->_fingerContainerView rectForFingersAtPoints:points];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)performDownAtPoint:(CGPoint)point
{
  v6[1] = *MEMORY[0x277D85DE8];
  eventSender = self->_eventSender;
  v4 = [(AXPIFingerController *)self _eventTouchInfoForFingerLocation:point.x force:point.y, 0.0];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(AXPIFingerEventSender *)eventSender performDownWithTouches:v5];
}

- (void)performMoveToPoint:(CGPoint)point
{
  v6[1] = *MEMORY[0x277D85DE8];
  eventSender = self->_eventSender;
  v4 = [(AXPIFingerController *)self _eventTouchInfoForFingerLocation:point.x force:point.y, 0.0];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(AXPIFingerEventSender *)eventSender performMoveWithTouches:v5];
}

- (void)performUpAtPoint:(CGPoint)point
{
  v6[1] = *MEMORY[0x277D85DE8];
  eventSender = self->_eventSender;
  v4 = [(AXPIFingerController *)self _eventTouchInfoForFingerLocation:point.x force:point.y, 0.0];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(AXPIFingerEventSender *)eventSender performUpWithTouches:v5];
}

- (void)_sendMoveEventIfNeededForFingerModel:(id)model atIndex:(unint64_t)index
{
  if ([model isPressed])
  {
    if ([(AXPIFingerController *)self _isInUpdateBlock])
    {
      self->_didMoveFingersDuringUpdate = 1;
    }

    else
    {
      eventSender = self->_eventSender;
      _touchInfosByIdentifierForPressedFingers = [(AXPIFingerController *)self _touchInfosByIdentifierForPressedFingers];
      [(AXPIFingerEventSender *)eventSender performMoveWithTouchesByFingerIdentifier:_touchInfosByIdentifierForPressedFingers];
    }
  }
}

- (void)didUpdateForceForFingerModel:(id)model
{
  modelCopy = model;
  v4 = [(NSMutableArray *)self->_fingerModels indexOfObject:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    [(AXPIFingerController *)self updateWithFingerModel:modelCopy forFingerAtIndex:v4];
    [(AXPIFingerController *)self _sendMoveEventIfNeededForFingerModel:modelCopy atIndex:v5];
  }
}

- (void)didUpdateLocationForFingerModel:(id)model
{
  modelCopy = model;
  v4 = [(NSMutableArray *)self->_fingerModels indexOfObject:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    [(AXPIFingerController *)self updateWithFingerModel:modelCopy forFingerAtIndex:v4];
    [(AXPIFingerController *)self _sendMoveEventIfNeededForFingerModel:modelCopy atIndex:v5];
  }
}

- (void)didUpdatePressStateForFingerModel:(id)model
{
  v20[1] = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v5 = [(NSMutableArray *)self->_fingerModels indexOfObject:modelCopy];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    [(AXPIFingerController *)self updateWithFingerModel:modelCopy forFingerAtIndex:v5];
    v7 = [(AXPIFingerController *)self _fingerIdentifierForIndex:v6];
    v8 = [(AXPIFingerController *)self _eventTouchInfoForFinger:modelCopy];
    if ([(AXPIFingerController *)self _isInUpdateBlock])
    {
      if ([modelCopy isPressed])
      {
        downInfosByIdentifier = self->_downInfosByIdentifier;
        if (!downInfosByIdentifier)
        {
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          v11 = self->_downInfosByIdentifier;
          self->_downInfosByIdentifier = dictionary;

          downInfosByIdentifier = self->_downInfosByIdentifier;
        }
      }

      else
      {
        downInfosByIdentifier = self->_upInfosByIdentifier;
        if (!downInfosByIdentifier)
        {
          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          upInfosByIdentifier = self->_upInfosByIdentifier;
          self->_upInfosByIdentifier = dictionary2;

          downInfosByIdentifier = self->_upInfosByIdentifier;
        }
      }

      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
      [(NSMutableDictionary *)downInfosByIdentifier setObject:v8 forKeyedSubscript:v18];
    }

    else
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
      v19 = v12;
      v20[0] = v8;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

      isPressed = [modelCopy isPressed];
      eventSender = self->_eventSender;
      if (isPressed)
      {
        [(AXPIFingerEventSender *)eventSender performDownWithTouchesByFingerIdentifier:v13];
      }

      else
      {
        [(AXPIFingerEventSender *)eventSender performUpWithTouchesByFingerIdentifier:v13];
      }
    }
  }
}

- (void)didUpdateSelectedStateForFingerModel:(id)model
{
  modelCopy = model;
  v4 = [(NSMutableArray *)self->_fingerModels indexOfObject:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(AXPIFingerController *)self updateWithFingerModel:modelCopy forFingerAtIndex:v4];
  }
}

- (void)didUpdateShapeForFingerModel:(id)model
{
  modelCopy = model;
  v4 = [(NSMutableArray *)self->_fingerModels indexOfObject:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(AXPIFingerController *)self updateWithFingerModel:modelCopy forFingerAtIndex:v4];
  }
}

- (void)endUpdates
{
  updateCount = self->_updateCount;
  if (updateCount)
  {
    v4 = updateCount - 1;
    self->_updateCount = v4;
    if (!v4)
    {
      [(AXPIFingerEventSender *)self->_eventSender performDownWithTouchesByFingerIdentifier:self->_downInfosByIdentifier];
      if (self->_didMoveFingersDuringUpdate)
      {
        eventSender = self->_eventSender;
        _touchInfosByIdentifierForPressedFingers = [(AXPIFingerController *)self _touchInfosByIdentifierForPressedFingers];
        [(AXPIFingerEventSender *)eventSender performMoveWithTouchesByFingerIdentifier:_touchInfosByIdentifierForPressedFingers];
      }

      [(AXPIFingerEventSender *)self->_eventSender performUpWithTouchesByFingerIdentifier:self->_upInfosByIdentifier];
      downInfosByIdentifier = self->_downInfosByIdentifier;
      self->_downInfosByIdentifier = 0;

      upInfosByIdentifier = self->_upInfosByIdentifier;
      self->_upInfosByIdentifier = 0;

      self->_didMoveFingersDuringUpdate = 0;
    }
  }
}

- (void)setAppearanceDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (!delegateCopy)
  {
    delegateCopy = AXPIDefaultAppearanceForDevice();
  }

  v5 = delegateCopy;
  objc_storeWeak(&self->_appearanceDelegate, delegateCopy);
  [(AXPIFingerContainerView *)self->_fingerContainerView setAppearanceDelegate:v5];
}

- (AXPIFingerAppearanceDelegate)appearanceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);

  return WeakRetained;
}

- (CGRect)fixedReferenceBounds
{
  x = self->_fixedReferenceBounds.origin.x;
  y = self->_fixedReferenceBounds.origin.y;
  width = self->_fixedReferenceBounds.size.width;
  height = self->_fixedReferenceBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end