@interface RAPQuestion
+ (id)RAPTitle;
- (BOOL)_isParentQuestionKindOfClass:(Class)class;
- (BOOL)isAnonymous;
- (NSString)localizedTitle;
- (RAPAppStateProtocol)_context;
- (RAPAuxiliaryControlsRecording)_alternateAuxiliaryControlsRecording;
- (RAPMapStateProtocol)_alternateMapViewContext;
- (RAPMapStateProtocol)_alternatePlaceContext;
- (RAPPlace)_reportedPlace;
- (RAPQuestion)initWithReport:(id)report parentQuestion:(id)question;
- (RAPQuestion)parentQuestion;
- (RAPReport)report;
- (id)_parentQuestionOfClass:(Class)class;
- (void)_addChildQuestion:(id)question;
- (void)_didChange;
- (void)_prepareForSubmission;
- (void)_removeFromParentQuestion;
- (void)_setComplete:(BOOL)complete allowInvokingDidChange:(BOOL)change;
- (void)addObserver:(id)observer changeHandler:(id)handler;
@end

@implementation RAPQuestion

- (RAPReport)report
{
  WeakRetained = objc_loadWeakRetained(&self->_report);

  return WeakRetained;
}

- (RAPQuestion)parentQuestion
{
  WeakRetained = objc_loadWeakRetained(&self->_parentQuestion);

  return WeakRetained;
}

- (id)_parentQuestionOfClass:(Class)class
{
  WeakRetained = objc_loadWeakRetained(&self->_parentQuestion);
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = objc_loadWeakRetained(&self->_parentQuestion);
  v8 = v7;
  if ((isKindOfClass & 1) == 0)
  {
    v9 = [v7 _parentQuestionOfClass:class];

    v8 = v9;
  }

  return v8;
}

- (BOOL)_isParentQuestionKindOfClass:(Class)class
{
  WeakRetained = objc_loadWeakRetained(&self->_parentQuestion);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 1;
  }

  v8 = objc_loadWeakRetained(&self->_parentQuestion);
  v9 = [v8 _isParentQuestionKindOfClass:class];

  return v9;
}

- (RAPPlace)_reportedPlace
{
  selfCopy = self;
  parentQuestion = selfCopy;
  do
  {
    v4 = parentQuestion;
    _alternatePlaceContext = [parentQuestion _alternatePlaceContext];
    parentQuestion = [parentQuestion parentQuestion];
  }

  while (!_alternatePlaceContext && parentQuestion);
  if (!_alternatePlaceContext)
  {
    _alternatePlaceContext = [(RAPQuestion *)selfCopy _context];
  }

  reportedPlace = [_alternatePlaceContext reportedPlace];

  return reportedPlace;
}

- (RAPAuxiliaryControlsRecording)_alternateAuxiliaryControlsRecording
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allObjects = [(NSHashTable *)self->_children allObjects];
  v3 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(allObjects);
        }

        _alternateAuxiliaryControlsRecording = [*(*(&v10 + 1) + 8 * i) _alternateAuxiliaryControlsRecording];
        if (_alternateAuxiliaryControlsRecording)
        {
          v8 = _alternateAuxiliaryControlsRecording;
          goto LABEL_11;
        }
      }

      v4 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (RAPMapStateProtocol)_alternatePlaceContext
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allObjects = [(NSHashTable *)self->_children allObjects];
  v3 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(allObjects);
        }

        _alternatePlaceContext = [*(*(&v10 + 1) + 8 * i) _alternatePlaceContext];
        if (_alternatePlaceContext)
        {
          v8 = _alternatePlaceContext;
          goto LABEL_11;
        }
      }

      v4 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (RAPMapStateProtocol)_alternateMapViewContext
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allObjects = [(NSHashTable *)self->_children allObjects];
  v3 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(allObjects);
        }

        _alternateMapViewContext = [*(*(&v10 + 1) + 8 * i) _alternateMapViewContext];
        if (_alternateMapViewContext)
        {
          v8 = _alternateMapViewContext;
          goto LABEL_11;
        }
      }

      v4 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (RAPAppStateProtocol)_context
{
  report = [(RAPQuestion *)self report];
  _context = [report _context];

  return _context;
}

- (void)_prepareForSubmission
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allObjects = [(NSHashTable *)self->_children allObjects];
  v3 = [allObjects countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v7 + 1) + 8 * v6) _prepareForSubmission];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [allObjects countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_setComplete:(BOOL)complete allowInvokingDidChange:(BOOL)change
{
  if (self->_complete != complete)
  {
    self->_complete = complete;
    if (change)
    {
      [(RAPQuestion *)self _didChange];
    }
  }
}

- (void)_didChange
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(NSMapTable *)self->_observers copy];
  keyEnumerator = [v3 keyEnumerator];

  v5 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_observers objectForKey:v9];
        (v10)[2](v10, self, v9);
      }

      v6 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  report = [(RAPQuestion *)self report];
  [report _questionDidChange:self];
}

- (void)addObserver:(id)observer changeHandler:(id)handler
{
  observerCopy = observer;
  handlerCopy = handler;
  observers = self->_observers;
  if (!observers)
  {
    v8 = +[NSMapTable weakToStrongObjectsMapTable];
    v9 = self->_observers;
    self->_observers = v8;

    observers = self->_observers;
  }

  v10 = [handlerCopy copy];
  [(NSMapTable *)observers setObject:v10 forKey:observerCopy];
}

- (void)_removeFromParentQuestion
{
  WeakRetained = objc_loadWeakRetained(&self->_parentQuestion);
  [WeakRetained _removeChildQuestion:self];

  objc_storeWeak(&self->_parentQuestion, 0);
}

- (void)_addChildQuestion:(id)question
{
  questionCopy = question;
  children = self->_children;
  v8 = questionCopy;
  if (!children)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    v7 = self->_children;
    self->_children = v6;

    questionCopy = v8;
    children = self->_children;
  }

  [(NSHashTable *)children addObject:questionCopy];
}

- (RAPQuestion)initWithReport:(id)report parentQuestion:(id)question
{
  reportCopy = report;
  questionCopy = question;
  v12.receiver = self;
  v12.super_class = RAPQuestion;
  v8 = [(RAPQuestion *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_report, reportCopy);
    v10 = objc_storeWeak(&v9->_parentQuestion, questionCopy);
    [questionCopy _addChildQuestion:v9];
  }

  return v9;
}

- (BOOL)isAnonymous
{
  v2 = +[UserProfileReportHistoryManager sharedInstance];
  inChina = [v2 inChina];

  if (inChina)
  {
    return 0;
  }

  return MapsFeature_IsEnabled_RAPCommunityID();
}

- (NSString)localizedTitle
{
  v2 = objc_opt_class();

  return [v2 RAPTitle];
}

+ (id)RAPTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Report an Issue" value:@"localized string not found" table:0];

  return v3;
}

@end