@interface AXPIFingerController
- (AXAssertionCoordinator)suppressVisualsAssertionCoodinator;
- (AXPIFingerAppearanceDelegate)appearanceDelegate;
- (AXPIFingerController)initWithDisplayUUID:(id)a3;
- (BOOL)moveFingersTo3DPoints:(id)a3;
- (BOOL)moveFingersToPoints:(id)a3;
- (CGPoint)_fingerLocationFromSceneReferencePoint:(CGPoint)a3;
- (CGPoint)_sceneReferencePointFromFingerLocation:(CGPoint)a3;
- (CGPoint)midpointForFingers;
- (CGPoint)midpointOfStartingFingersForGesture:(id)a3;
- (CGRect)fixedReferenceBounds;
- (CGRect)rectForFingersAtPoints:(id)a3;
- (id)_eventTouchInfoForFinger:(id)a3;
- (id)_eventTouchInfoForFingerLocation:(CGPoint)a3 force:(double)a4;
- (id)_handleStartingFingersForGesture:(id)a3 animated:(BOOL)a4 startPointForAnimation:(CGPoint)a5 midpoint:(CGPoint *)a6 showFingers:(BOOL)a7;
- (id)_pointStringsFromFingers;
- (id)_touchInfosByIdentifierForPressedFingers;
- (id)acquireAssertionToSuppressVisualsWithReason:(id)a3;
- (id)fingerModelAtPoint:(CGPoint)a3;
- (id)legacyLiftFingersUp;
- (id)legacyPressFingersDown;
- (unint64_t)eventSenderServiceID;
- (void)_endGestureWithSuccess:(BOOL)a3;
- (void)_interruptGestureIfNeeded;
- (void)_performGesture:(id)a3 shouldShowFingers:(BOOL)a4 completion:(id)a5;
- (void)_replayEventAtIndex:(unint64_t)a3 inGesture:(id)a4 allFingerIdentifiers:(id)a5;
- (void)_sendMoveEventIfNeededForFingerModel:(id)a3 atIndex:(unint64_t)a4;
- (void)_showFingerModels:(id)a3 animated:(BOOL)a4 startPointForAnimation:(CGPoint)a5 shouldShowPinchChain:(BOOL)a6 shouldReuseFingers:(BOOL)a7;
- (void)cancelGestureWithCompletion:(id)a3;
- (void)clearAllFingersAnimated:(BOOL)a3 endPointForAnimation:(CGPoint)a4;
- (void)dealloc;
- (void)didUpdateForceForFingerModel:(id)a3;
- (void)didUpdateLocationForFingerModel:(id)a3;
- (void)didUpdatePressStateForFingerModel:(id)a3;
- (void)didUpdateSelectedStateForFingerModel:(id)a3;
- (void)didUpdateShapeForFingerModel:(id)a3;
- (void)endGestureWithCompletion:(id)a3;
- (void)endUpdates;
- (void)enumerateFingersUsingBlock:(id)a3;
- (void)liftFingersUpAnimated:(BOOL)a3 sendTouchEvents:(BOOL)a4;
- (void)performCircularProgressAnimationOnFingersWithDuration:(double)a3 completion:(id)a4;
- (void)performDownAtPoint:(CGPoint)a3;
- (void)performGesture:(id)a3;
- (void)performGesture:(id)a3 completion:(id)a4;
- (void)performMoveToPoint:(CGPoint)a3;
- (void)performUpAtPoint:(CGPoint)a3;
- (void)performWithoutPreparingGesture:(id)a3 completion:(id)a4;
- (void)pressFingersDownAnimated:(BOOL)a3 sendTouchEvents:(BOOL)a4;
- (void)resetPinchFingers;
- (void)setAppearanceDelegate:(id)a3;
- (void)showPinchFingersAnimated:(BOOL)a3 midpoint:(CGPoint)a4;
@end

@implementation AXPIFingerController

- (AXPIFingerController)initWithDisplayUUID:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AXPIFingerController;
  v5 = [(AXPIFingerController *)&v15 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    fingerModels = v5->_fingerModels;
    v5->_fingerModels = v6;

    v8 = [[AXPIFingerEventSender alloc] initWithDisplayUUID:v4];
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
  v2 = [(AXPIFingerEventSender *)self->_eventSender eventService];
  v3 = [v2 serviceID];

  return v3;
}

- (void)clearAllFingersAnimated:(BOOL)a3 endPointForAnimation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3;
  [(AXPIFingerController *)self liftFingersUpAnimated:?];
  [(AXPIFingerController *)self _interruptGestureIfNeeded];
  [(AXPIFingerController *)self enumerateFingersUsingBlock:&__block_literal_global_3];
  [(AXPIFingerContainerView *)self->_fingerContainerView clearAllFingersAnimated:v6 endPointForAnimation:x, y];
  fingerModels = self->_fingerModels;

  [(NSMutableArray *)fingerModels removeAllObjects];
}

- (void)_showFingerModels:(id)a3 animated:(BOOL)a4 startPointForAnimation:(CGPoint)a5 shouldShowPinchChain:(BOOL)a6 shouldReuseFingers:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  y = a5.y;
  x = a5.x;
  v11 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v13 = a3;
  if (v7)
  {
    [(AXPIFingerController *)self _interruptGestureIfNeeded];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __114__AXPIFingerController__showFingerModels_animated_startPointForAnimation_shouldShowPinchChain_shouldReuseFingers___block_invoke;
    aBlock[3] = &unk_278BE6330;
    aBlock[4] = self;
    v26 = v13;
    v14 = _Block_copy(aBlock);
    v15 = v14;
    if (v11)
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
      [(AXPIFingerController *)self clearAllFingersAnimated:v11 endPointForAnimation:x, y];
    }

    [(NSMutableArray *)self->_fingerModels addObjectsFromArray:v13];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v16 = v13;
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

    [(AXPIFingerContainerView *)self->_fingerContainerView showFingerModels:v16 animated:v11 startPointForAnimation:v8 shouldShowPinchChain:x, y];
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

- (void)showPinchFingersAnimated:(BOOL)a3 midpoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3;
  if ([(NSMutableArray *)self->_fingerModels count])
  {
    [(AXPIFingerController *)self clearAllFingersAnimated:v6 endPointForAnimation:x, y];
  }

  [(AXPIFingerContainerView *)self->_fingerContainerView bounds];
  v13 = [AXPIFingerUtilities defaultPinchLocationsAroundPoint:x withinBounds:y, v8, v9, v10, v11];
  v12 = [AXPIFingerUtilities fingerModelsForPointStrings:v13];
  [(AXPIFingerController *)self _showFingerModels:v12 animated:v6 startPointForAnimation:1 shouldShowPinchChain:0 shouldReuseFingers:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
}

- (void)resetPinchFingers
{
  [(AXPIFingerController *)self midpointForFingers];
  v4 = v3;
  v6 = v5;
  [(AXPIFingerContainerView *)self->_fingerContainerView bounds];
  v17 = [AXPIFingerUtilities defaultPinchLocationsAroundPoint:v4 withinBounds:v6, v7, v8, v9, v10];
  v11 = [v17 firstObject];
  v12 = CGPointFromString(v11);
  v13 = [(NSMutableArray *)self->_fingerModels objectAtIndexedSubscript:0];
  [v13 setLocation:{v12.x, v12.y}];

  v14 = [v17 lastObject];
  v15 = CGPointFromString(v14);
  v16 = [(NSMutableArray *)self->_fingerModels objectAtIndexedSubscript:1];
  [v16 setLocation:{v15.x, v15.y}];
}

- (CGPoint)_sceneReferencePointFromFingerLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AXPIFingerController *)self fixedReferenceWindow];

  fingerContainerView = self->_fingerContainerView;
  if (v6)
  {
    v8 = [(AXPIFingerContainerView *)fingerContainerView window];
    [(AXPIFingerContainerView *)self->_fingerContainerView convertPoint:0 toView:x, y];
    v10 = v9;
    v12 = v11;
    v13 = [(AXPIFingerController *)self fixedReferenceWindow];
    [v8 convertPoint:v13 toWindow:{v10, v12}];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    [(AXPIFingerContainerView *)fingerContainerView convertPoint:0 toView:x, y];
    v19 = v18;
    v21 = v20;
    v8 = [MEMORY[0x277CE7D28] server];
    v13 = [(AXPIFingerContainerView *)self->_fingerContainerView window];
    v22 = [v13 _contextId];
    v23 = [(AXPIFingerContainerView *)self->_fingerContainerView window];
    v24 = [v23 screen];
    v25 = [v24 displayIdentity];
    [v8 convertPoint:v22 fromContextId:objc_msgSend(v25 displayId:{"displayID"), v19, v21}];
    v15 = v26;
    v17 = v27;
  }

  v28 = v15;
  v29 = v17;
  result.y = v29;
  result.x = v28;
  return result;
}

- (CGPoint)_fingerLocationFromSceneReferencePoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(AXPIFingerController *)self fixedReferenceWindow];

  fingerContainerView = self->_fingerContainerView;
  v8 = [(AXPIFingerContainerView *)fingerContainerView window];
  v9 = v8;
  if (v6)
  {
    v10 = [(AXPIFingerController *)self fixedReferenceWindow];
    [v9 convertPoint:v10 fromWindow:{x, y}];
    [(AXPIFingerContainerView *)fingerContainerView convertPoint:0 fromView:?];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v10 = [v8 screen];
    v15 = [v10 fixedCoordinateSpace];
    [(AXPIFingerContainerView *)fingerContainerView convertPoint:v15 fromCoordinateSpace:x, y];
    v12 = v16;
    v14 = v17;
  }

  v18 = v12;
  v19 = v14;
  result.y = v19;
  result.x = v18;
  return result;
}

- (id)_eventTouchInfoForFingerLocation:(CGPoint)a3 force:(double)a4
{
  y = a3.y;
  x = a3.x;
  v8 = objc_alloc_init(AXPIFingerEventTouchInfo);
  [(AXPIFingerController *)self _sceneReferencePointFromFingerLocation:x, y];
  v10 = v9;
  v12 = v11;
  [(AXPIFingerController *)self fixedReferenceBounds];
  if (CGRectIsNull(v26))
  {
    v13 = [(AXPIFingerContainerView *)self->_fingerContainerView window];

    if (v13)
    {
      v14 = [(AXPIFingerContainerView *)self->_fingerContainerView window];
      v15 = [v14 screen];
      [v15 _referenceBounds];
      v17 = v16;
      v19 = v18;
    }

    else
    {
      v14 = [MEMORY[0x277D759A0] mainScreen];
      [v14 _referenceBounds];
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
  [(AXPIFingerEventTouchInfo *)v8 setForce:a4];

  return v8;
}

- (id)_eventTouchInfoForFinger:(id)a3
{
  v4 = a3;
  [v4 location];
  v6 = v5;
  v8 = v7;
  [v4 force];
  v10 = [(AXPIFingerController *)self _eventTouchInfoForFingerLocation:v6 force:v8, v9];
  v11 = [v4 location3D];

  [v10 setLocation3D:v11];

  return v10;
}

- (id)_touchInfosByIdentifierForPressedFingers
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
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
          [v3 setObject:v11 forKeyedSubscript:v12];
        }

        ++v8;
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)pressFingersDownAnimated:(BOOL)a3 sendTouchEvents:(BOOL)a4
{
  [(AXPIFingerContainerView *)self->_fingerContainerView setShouldAnimatePress:a3];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__AXPIFingerController_pressFingersDownAnimated_sendTouchEvents___block_invoke;
  v6[3] = &unk_278BE6640;
  v7 = a4;
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

- (void)liftFingersUpAnimated:(BOOL)a3 sendTouchEvents:(BOOL)a4
{
  [(AXPIFingerContainerView *)self->_fingerContainerView setShouldAnimatePress:a3];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__AXPIFingerController_liftFingersUpAnimated_sendTouchEvents___block_invoke;
  v6[3] = &unk_278BE6640;
  v7 = a4;
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

- (void)performCircularProgressAnimationOnFingersWithDuration:(double)a3 completion:(id)a4
{
  v6 = a4;
  [(AXPIFingerController *)self cancelCircularProgressAnimation];
  [(AXPIFingerContainerView *)self->_fingerContainerView performCircularProgressAnimationOnFingersWithDuration:v6 completion:a3];
}

- (void)enumerateFingersUsingBlock:(id)a3
{
  v4 = a3;
  [(AXPIFingerController *)self beginUpdates];
  fingerModels = self->_fingerModels;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__AXPIFingerController_enumerateFingersUsingBlock___block_invoke;
  v7[3] = &unk_278BE6668;
  v8 = v4;
  v6 = v4;
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

- (CGPoint)midpointOfStartingFingersForGesture:(id)a3
{
  v6 = *MEMORY[0x277CBF348];
  v3 = [(AXPIFingerController *)self _handleStartingFingersForGesture:a3 animated:0 startPointForAnimation:&v6 midpoint:0 showFingers:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  v5 = *(&v6 + 1);
  v4 = *&v6;
  result.y = v5;
  result.x = v4;
  return result;
}

- (id)_handleStartingFingersForGesture:(id)a3 animated:(BOOL)a4 startPointForAnimation:(CGPoint)a5 midpoint:(CGPoint *)a6 showFingers:(BOOL)a7
{
  v7 = a7;
  y = a5.y;
  x = a5.x;
  v33 = a4;
  v42 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v12 = *MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
  v13 = [MEMORY[0x277CE7E58] server];
  v14 = [v13 activeInterfaceOrientation];

  [v10 updateForLandscape:(v14 - 3) < 2];
  v15 = [MEMORY[0x277CBEB18] array];
  v16 = [MEMORY[0x277CBEB18] array];
  v35 = [v10 numberOfEvents];
  if (v35)
  {
    for (i = 0; i != v35; ++i)
    {
      v18 = [v10 fingerIdentifiersAtEventIndex:i];
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
            if (([v15 containsObject:v23] & 1) == 0)
            {
              [v15 addObject:v23];
              [v10 pointForFingerIdentifier:v23 atEventIndex:i];
              v25 = v24;
              v27 = v26;
              if ([v10 arePointsDeviceRelative])
              {
                [(AXPIFingerController *)self _fingerLocationFromSceneReferencePoint:v25, v27];
                v25 = v28;
                v27 = v29;
              }

              v12 = v12 + v25;
              v11 = v11 + v27;
              if (v7)
              {
                v30 = [AXPIFingerModel fingerModelForLocation:v25, v27];
                [v16 addObject:v30];
              }
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v20);
      }
    }
  }

  v31 = [v15 count];
  if (v31)
  {
    v12 = v12 / v31;
    v11 = v11 / v31;
  }

  if (a6)
  {
    a6->x = v12;
    a6->y = v11;
  }

  if (v7)
  {
    -[AXPIFingerController _showFingerModels:animated:startPointForAnimation:shouldShowPinchChain:shouldReuseFingers:](self, "_showFingerModels:animated:startPointForAnimation:shouldShowPinchChain:shouldReuseFingers:", v16, v33, 0, [v16 count] == -[NSMutableArray count](self->_fingerModels, "count"), x, y);
  }

  return v15;
}

- (void)_replayEventAtIndex:(unint64_t)a3 inGesture:(id)a4 allFingerIdentifiers:(id)a5
{
  v8 = a4;
  v9 = a5;
  [(AXPIFingerController *)self beginUpdates];
  v10 = [v8 numberOfEvents];
  v11 = [v8 fingerIdentifiersAtEventIndex:a3];
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __75__AXPIFingerController__replayEventAtIndex_inGesture_allFingerIdentifiers___block_invoke;
  v23 = &unk_278BE6690;
  v24 = self;
  v12 = v11;
  v25 = v12;
  v13 = v8;
  v26 = v13;
  v27 = a3;
  [v9 enumerateObjectsUsingBlock:&v20];

  [(AXPIFingerController *)self endUpdates:v20];
  [v13 timeAtEventIndex:a3];
  if (v10 - 1 > a3)
  {
    v15 = v14;
    [v13 timeAtEventIndex:a3 + 1];
    v17 = v16 - v15;
    v18 = [MEMORY[0x277CBEB88] currentRunLoop];
    v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v17];
    [v18 runUntilDate:v19];
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

- (void)performGesture:(id)a3
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__AXPIFingerController_performGesture___block_invoke;
  v4[3] = &unk_278BE66B8;
  v4[4] = self;
  [(AXPIFingerController *)self performGesture:a3 completion:v4];
  [(AXPIFingerController *)self _endGestureWithSuccess:self->_isGestureSuccessful];
}

- (void)performGesture:(id)a3 completion:(id)a4
{
  [(AXPIFingerController *)self _performGesture:a3 shouldShowFingers:1 completion:a4];
  isGestureSuccessful = self->_isGestureSuccessful;

  [(AXPIFingerController *)self _endGestureWithSuccess:isGestureSuccessful];
}

- (void)performWithoutPreparingGesture:(id)a3 completion:(id)a4
{
  [(AXPIFingerController *)self _performGesture:a3 shouldShowFingers:0 completion:a4];
  isGestureSuccessful = self->_isGestureSuccessful;

  [(AXPIFingerController *)self _endGestureWithSuccess:isGestureSuccessful];
}

- (void)endGestureWithCompletion:(id)a3
{
  self->_isPerformingMultiStepGesture = 0;
  v4 = _Block_copy(a3);
  gestureCompletion = self->_gestureCompletion;
  self->_gestureCompletion = v4;

  isGestureSuccessful = self->_isGestureSuccessful;

  [(AXPIFingerController *)self _endGestureWithSuccess:isGestureSuccessful];
}

- (void)cancelGestureWithCompletion:(id)a3
{
  v7 = a3;
  self->_isPerformingGesture = 0;
  eventSender = self->_eventSender;
  v5 = [(AXPIFingerController *)self _touchInfosByIdentifierForPressedFingers];
  [(AXPIFingerEventSender *)eventSender performCancelWithTouchesByFingerIdentifier:v5];

  [(AXPIFingerController *)self liftFingersUpAnimated:0 sendTouchEvents:0];
  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, 0);
    v6 = v7;
  }
}

- (void)_performGesture:(id)a3 shouldShowFingers:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v14 = a3;
  v8 = a5;
  [(AXPIFingerEventSender *)self->_eventSender startNewGeneration];
  v9 = [(AXPIFingerController *)self _handleStartingFingersForGesture:v14 animated:0 startPointForAnimation:0 midpoint:v6 showFingers:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  v10 = [v14 numberOfEvents];
  self->_isPerformingGesture = 1;
  v11 = _Block_copy(v8);
  gestureCompletion = self->_gestureCompletion;
  self->_gestureCompletion = v11;

  self->_isGestureSuccessful = 1;
  if (v10)
  {
    v13 = 0;
    while (1)
    {
      [(AXPIFingerController *)self _replayEventAtIndex:v13 inGesture:v14 allFingerIdentifiers:v9];
      if (!self->_isPerformingGesture)
      {
        break;
      }

      if (v10 == ++v13)
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

- (void)_endGestureWithSuccess:(BOOL)a3
{
  v3 = a3;
  [(AXPIFingerController *)self liftFingersUpAnimated:1];
  self->_isPerformingGesture = 0;
  gestureCompletion = self->_gestureCompletion;
  if (gestureCompletion)
  {
    v7 = _Block_copy(gestureCompletion);
    v6 = self->_gestureCompletion;
    self->_gestureCompletion = 0;

    v7[2](v7, v3);
  }
}

- (id)fingerModelAtPoint:(CGPoint)a3
{
  v4 = [(AXPIFingerContainerView *)self->_fingerContainerView indexOfFingerAtPoint:a3.x, a3.y];
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

- (id)acquireAssertionToSuppressVisualsWithReason:(id)a3
{
  v4 = a3;
  v5 = [(AXPIFingerController *)self suppressVisualsAssertionCoodinator];
  v6 = [v5 acquireAssertionWithReason:v4];

  return v6;
}

- (id)_pointStringsFromFingers
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
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
        [v3 addObject:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
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

- (BOOL)moveFingersToPoints:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(AXPIFingerContainerView *)self->_fingerContainerView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v4;
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

- (BOOL)moveFingersTo3DPoints:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_fingerModels count];
  if (v5 == [v4 count])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__AXPIFingerController_moveFingersTo3DPoints___block_invoke;
    v7[3] = &unk_278BE6618;
    v8 = v4;
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

- (CGRect)rectForFingersAtPoints:(id)a3
{
  [(AXPIFingerContainerView *)self->_fingerContainerView rectForFingersAtPoints:a3];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)performDownAtPoint:(CGPoint)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  eventSender = self->_eventSender;
  v4 = [(AXPIFingerController *)self _eventTouchInfoForFingerLocation:a3.x force:a3.y, 0.0];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(AXPIFingerEventSender *)eventSender performDownWithTouches:v5];
}

- (void)performMoveToPoint:(CGPoint)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  eventSender = self->_eventSender;
  v4 = [(AXPIFingerController *)self _eventTouchInfoForFingerLocation:a3.x force:a3.y, 0.0];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(AXPIFingerEventSender *)eventSender performMoveWithTouches:v5];
}

- (void)performUpAtPoint:(CGPoint)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  eventSender = self->_eventSender;
  v4 = [(AXPIFingerController *)self _eventTouchInfoForFingerLocation:a3.x force:a3.y, 0.0];
  v6[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(AXPIFingerEventSender *)eventSender performUpWithTouches:v5];
}

- (void)_sendMoveEventIfNeededForFingerModel:(id)a3 atIndex:(unint64_t)a4
{
  if ([a3 isPressed])
  {
    if ([(AXPIFingerController *)self _isInUpdateBlock])
    {
      self->_didMoveFingersDuringUpdate = 1;
    }

    else
    {
      eventSender = self->_eventSender;
      v6 = [(AXPIFingerController *)self _touchInfosByIdentifierForPressedFingers];
      [(AXPIFingerEventSender *)eventSender performMoveWithTouchesByFingerIdentifier:v6];
    }
  }
}

- (void)didUpdateForceForFingerModel:(id)a3
{
  v6 = a3;
  v4 = [(NSMutableArray *)self->_fingerModels indexOfObject:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    [(AXPIFingerController *)self updateWithFingerModel:v6 forFingerAtIndex:v4];
    [(AXPIFingerController *)self _sendMoveEventIfNeededForFingerModel:v6 atIndex:v5];
  }
}

- (void)didUpdateLocationForFingerModel:(id)a3
{
  v6 = a3;
  v4 = [(NSMutableArray *)self->_fingerModels indexOfObject:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    [(AXPIFingerController *)self updateWithFingerModel:v6 forFingerAtIndex:v4];
    [(AXPIFingerController *)self _sendMoveEventIfNeededForFingerModel:v6 atIndex:v5];
  }
}

- (void)didUpdatePressStateForFingerModel:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMutableArray *)self->_fingerModels indexOfObject:v4];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v5;
    [(AXPIFingerController *)self updateWithFingerModel:v4 forFingerAtIndex:v5];
    v7 = [(AXPIFingerController *)self _fingerIdentifierForIndex:v6];
    v8 = [(AXPIFingerController *)self _eventTouchInfoForFinger:v4];
    if ([(AXPIFingerController *)self _isInUpdateBlock])
    {
      if ([v4 isPressed])
      {
        downInfosByIdentifier = self->_downInfosByIdentifier;
        if (!downInfosByIdentifier)
        {
          v10 = [MEMORY[0x277CBEB38] dictionary];
          v11 = self->_downInfosByIdentifier;
          self->_downInfosByIdentifier = v10;

          downInfosByIdentifier = self->_downInfosByIdentifier;
        }
      }

      else
      {
        downInfosByIdentifier = self->_upInfosByIdentifier;
        if (!downInfosByIdentifier)
        {
          v16 = [MEMORY[0x277CBEB38] dictionary];
          upInfosByIdentifier = self->_upInfosByIdentifier;
          self->_upInfosByIdentifier = v16;

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

      v14 = [v4 isPressed];
      eventSender = self->_eventSender;
      if (v14)
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

- (void)didUpdateSelectedStateForFingerModel:(id)a3
{
  v5 = a3;
  v4 = [(NSMutableArray *)self->_fingerModels indexOfObject:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(AXPIFingerController *)self updateWithFingerModel:v5 forFingerAtIndex:v4];
  }
}

- (void)didUpdateShapeForFingerModel:(id)a3
{
  v5 = a3;
  v4 = [(NSMutableArray *)self->_fingerModels indexOfObject:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(AXPIFingerController *)self updateWithFingerModel:v5 forFingerAtIndex:v4];
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
        v6 = [(AXPIFingerController *)self _touchInfosByIdentifierForPressedFingers];
        [(AXPIFingerEventSender *)eventSender performMoveWithTouchesByFingerIdentifier:v6];
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

- (void)setAppearanceDelegate:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = AXPIDefaultAppearanceForDevice();
  }

  v5 = v4;
  objc_storeWeak(&self->_appearanceDelegate, v4);
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