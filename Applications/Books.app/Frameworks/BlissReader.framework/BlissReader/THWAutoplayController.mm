@interface THWAutoplayController
- (CGPoint)currentContentOffset;
- (THWAutoplayController)init;
- (id)p_documentNavigatorFromNotification:(id)notification;
- (void)dealloc;
- (void)handleNotificationVantageDidChange:(id)change;
- (void)handleNotificationVantageWillChange:(id)change;
- (void)p_autoplayStart;
- (void)p_autoplayStop:(id)stop;
- (void)p_recursivelyAddAutoplayableRepsForRep:(id)rep;
- (void)p_startAutoplayableDescendantsOfReps:(id)reps;
- (void)p_unpackNotification:(id)notification outCurrentRelativePageIndex:(unint64_t *)index outTopLevelReps:(id *)reps;
- (void)stop;
- (void)teardown;
@end

@implementation THWAutoplayController

- (THWAutoplayController)init
{
  v4.receiver = self;
  v4.super_class = THWAutoplayController;
  v2 = [(THWAutoplayController *)&v4 init];
  if (v2)
  {
    v2->_autoplayableReps = objc_alloc_init(NSMutableSet);
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v2 name:"handleNotificationVantageDidChange:" object:@"THVantageDidChangeNotification", 0];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v2 name:"handleNotificationVantageWillChange:" object:@"THVantageWillChangeNotification", 0];
  }

  return v2;
}

- (void)dealloc
{
  if (!self->_tornDown)
  {
    [(THWAutoplayController *)self teardown];
  }

  v3.receiver = self;
  v3.super_class = THWAutoplayController;
  [(THWAutoplayController *)&v3 dealloc];
}

- (void)teardown
{
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"THVantageDidChangeNotification", 0];
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"THVantageWillChangeNotification", 0];
  [(THWAutoplayController *)self p_autoplayStop:self->_autoplayableReps];
  self->_tornDown = 1;
}

- (id)p_documentNavigatorFromNotification:(id)notification
{
  objc_opt_class();
  [notification object];
  result = TSUDynamicCast();
  if (!result)
  {
    [notification object];
    v5 = TSUProtocolCast();

    return [v5 documentNavigator];
  }

  return result;
}

- (void)stop
{
  autoplayableReps = self->_autoplayableReps;
  ++self->_generationCount;
  [(THWAutoplayController *)self p_autoplayStop:autoplayableReps];
}

- (void)handleNotificationVantageWillChange:(id)change
{
  interactiveCanvasController = self->_interactiveCanvasController;
  if (interactiveCanvasController)
  {
    if (interactiveCanvasController == [-[THWAutoplayController p_documentNavigatorFromNotification:](self "p_documentNavigatorFromNotification:"interactiveCanvasController"")])
    {
      v6 = [objc_msgSend(change "userInfo")];
      if (([v6 isEqualToString:@"THVantageChangeReasonTransitionToDVC"] & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"THVantageChangeReasonScrolling") & 1) == 0 && (objc_msgSend(v6, "isEqualToString:", @"THVantageChangeReasonWindowResize") & 1) == 0)
      {
        autoplayableReps = self->_autoplayableReps;
        ++self->_generationCount;

        [(THWAutoplayController *)self p_autoplayStop:autoplayableReps];
      }
    }
  }
}

- (void)handleNotificationVantageDidChange:(id)change
{
  v5 = [objc_msgSend(change "userInfo")];
  if ([v5 isEqualToString:@"THVantageChangeReasonBookOpen"])
  {
    [(THWAutoplayController *)self setBookOpened:1];
  }

  v6 = [(THWAutoplayController *)self p_documentNavigatorFromNotification:change];
  interactiveCanvasController = self->_interactiveCanvasController;
  if (interactiveCanvasController)
  {
    v8 = v6;
    if (interactiveCanvasController == [v6 interactiveCanvasController])
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      v16 = 0;
      [(THWAutoplayController *)self p_unpackNotification:change outCurrentRelativePageIndex:&v15 outTopLevelReps:&v16];
      [objc_msgSend(-[TSDInteractiveCanvasController canvasView](self->_interactiveCanvasController "canvasView")];
      v10 = v9;
      v12 = v11;
      v13 = [objc_msgSend(v8 "currentPageLocation")];
      if (![v5 isEqualToString:@"THVantageChangeReasonScrolling"])
      {
        goto LABEL_17;
      }

      v14 = v15;
      if (self->_currentPageIndex != v15)
      {
LABEL_19:
        if (v14 != 0x7FFFFFFFFFFFFFFFLL && [objc_msgSend(v8 "delegate")])
        {
          if ([(THWAutoplayController *)self bookOpened])
          {
            [(THWAutoplayController *)self p_startAutoplayableDescendantsOfReps:v16];
          }
        }

        goto LABEL_23;
      }

      if (v10 == self->_currentContentOffset.x && v12 == self->_currentContentOffset.y && [(NSString *)self->_currentContentNodeGUID isEqualToString:v13])
      {
LABEL_17:
        if (([v5 isEqualToString:@"THVantageChangeReasonTransitionFromTOC"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"THVantageChangeReasonRotation") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"THVantageChangeReasonNavigation") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"THVantageChangeReasonTransitionFromNotesVC") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"THVantageChangeReasonTransitionFromStudyVC") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"THVantageChangeReasonTransitionToDVC") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"THVantageChangeReasonTransitionFromGlossary") & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", @"THVantageChangeReasonBookOpen"))
        {
LABEL_23:
          self->_currentPageIndex = v15;
          [(THWAutoplayController *)self setCurrentContentNodeGUID:v13];
          self->_currentContentOffset.x = v10;
          self->_currentContentOffset.y = v12;
          return;
        }
      }

      v14 = v15;
      goto LABEL_19;
    }
  }
}

- (void)p_unpackNotification:(id)notification outCurrentRelativePageIndex:(unint64_t *)index outTopLevelReps:(id *)reps
{
  v8 = [(THWAutoplayController *)self p_documentNavigatorFromNotification:notification];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_msgSend(objc_msgSend(v8 "interactiveCanvasController")];
    v11 = [(THWAutoplayController *)self p_isInTwoPageMode:v9];
    self->_inTwoPageMode = v11;
    v12 = [objc_msgSend(v9 currentPageInfoForBookmarksUsingViewCenter:{!v11), "relativePageIndexInParent"}];
    if (reps)
    {
      *reps = v10;
    }

    if (index)
    {
      *index = v12;
    }
  }
}

- (void)p_startAutoplayableDescendantsOfReps:(id)reps
{
  if (!self->_tornDown)
  {
    autoplayableReps = self->_autoplayableReps;
    ++self->_generationCount;
    v6 = [NSMutableSet setWithSet:autoplayableReps];
    [(NSMutableSet *)self->_autoplayableReps removeAllObjects];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [reps countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(reps);
          }

          [(THWAutoplayController *)self p_recursivelyAddAutoplayableRepsForRep:*(*(&v16 + 1) + 8 * v10)];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [reps countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v11 = [NSMutableSet setWithSet:self->_autoplayableReps];
    [(NSMutableSet *)v11 intersectSet:v6];
    [(NSMutableSet *)v6 minusSet:v11];
    if ([(NSMutableSet *)v6 count])
    {
      [(THWAutoplayController *)self p_autoplayStop:v6];
    }

    if ([(NSMutableSet *)self->_autoplayableReps count])
    {
      generationCount = self->_generationCount;
      [(THWAutoplayController *)self stopScrollingDelay];
      v14 = dispatch_time(0, (v13 * 1000000000.0));
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_186D38;
      v15[3] = &unk_45B298;
      v15[4] = self;
      v15[5] = generationCount;
      dispatch_after(v14, &_dispatch_main_q, v15);
    }
  }
}

- (void)p_recursivelyAddAutoplayableRepsForRep:(id)rep
{
  if ([rep conformsToProtocol:&OBJC_PROTOCOL___THWAutoplayable] && (objc_msgSend(rep, "hasBeenRemoved") & 1) == 0 && objc_msgSend(rep, "isVisibleOnCanvas") && objc_msgSend(objc_msgSend(rep, "autoplayConfig"), "enabled") && objc_msgSend(rep, "autoplayAllowed"))
  {
    [(NSMutableSet *)self->_autoplayableReps addObject:rep];
  }

  v5 = TSUProtocolCast();
  if (v5)
  {
    v6 = v5;
    if (![v5 masksToBounds] || objc_msgSend(v6, "isVisibleOnCanvas"))
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      childReps = [v6 childReps];
      v8 = [childReps countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v13;
        do
        {
          v11 = 0;
          do
          {
            if (*v13 != v10)
            {
              objc_enumerationMutation(childReps);
            }

            [(THWAutoplayController *)self p_recursivelyAddAutoplayableRepsForRep:*(*(&v12 + 1) + 8 * v11)];
            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [childReps countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v9);
      }
    }
  }
}

- (void)p_autoplayStart
{
  if (([(TSDInteractiveCanvasController *)self->_interactiveCanvasController currentlyScrolling]& 1) == 0)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    autoplayableReps = self->_autoplayableReps;
    v4 = [(NSMutableSet *)autoplayableReps countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(autoplayableReps);
          }

          v8 = *(*(&v9 + 1) + 8 * i);
          if (([v8 hasBeenRemoved] & 1) == 0 && objc_msgSend(objc_msgSend(v8, "autoplayConfig"), "enabled"))
          {
            if ([v8 autoplayAllowed])
            {
              [v8 autoplayStart];
            }
          }
        }

        v5 = [(NSMutableSet *)autoplayableReps countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

- (void)p_autoplayStop:(id)stop
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [stop countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(stop);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([objc_msgSend(v8 "autoplayConfig")])
        {
          [v8 autoplayStop];
        }
      }

      v5 = [stop countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [stop removeAllObjects];
}

- (CGPoint)currentContentOffset
{
  x = self->_currentContentOffset.x;
  y = self->_currentContentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end