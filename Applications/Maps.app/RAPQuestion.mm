@interface RAPQuestion
+ (id)RAPTitle;
- (BOOL)_isParentQuestionKindOfClass:(Class)a3;
- (BOOL)isAnonymous;
- (NSString)localizedTitle;
- (RAPAppStateProtocol)_context;
- (RAPAuxiliaryControlsRecording)_alternateAuxiliaryControlsRecording;
- (RAPMapStateProtocol)_alternateMapViewContext;
- (RAPMapStateProtocol)_alternatePlaceContext;
- (RAPPlace)_reportedPlace;
- (RAPQuestion)initWithReport:(id)a3 parentQuestion:(id)a4;
- (RAPQuestion)parentQuestion;
- (RAPReport)report;
- (id)_parentQuestionOfClass:(Class)a3;
- (void)_addChildQuestion:(id)a3;
- (void)_didChange;
- (void)_prepareForSubmission;
- (void)_removeFromParentQuestion;
- (void)_setComplete:(BOOL)a3 allowInvokingDidChange:(BOOL)a4;
- (void)addObserver:(id)a3 changeHandler:(id)a4;
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

- (id)_parentQuestionOfClass:(Class)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_parentQuestion);
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = objc_loadWeakRetained(&self->_parentQuestion);
  v8 = v7;
  if ((isKindOfClass & 1) == 0)
  {
    v9 = [v7 _parentQuestionOfClass:a3];

    v8 = v9;
  }

  return v8;
}

- (BOOL)_isParentQuestionKindOfClass:(Class)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_parentQuestion);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 1;
  }

  v8 = objc_loadWeakRetained(&self->_parentQuestion);
  v9 = [v8 _isParentQuestionKindOfClass:a3];

  return v9;
}

- (RAPPlace)_reportedPlace
{
  v2 = self;
  v3 = v2;
  do
  {
    v4 = v3;
    v5 = [v3 _alternatePlaceContext];
    v3 = [v3 parentQuestion];
  }

  while (!v5 && v3);
  if (!v5)
  {
    v5 = [(RAPQuestion *)v2 _context];
  }

  v6 = [v5 reportedPlace];

  return v6;
}

- (RAPAuxiliaryControlsRecording)_alternateAuxiliaryControlsRecording
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(NSHashTable *)self->_children allObjects];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) _alternateAuxiliaryControlsRecording];
        if (v7)
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v2 = [(NSHashTable *)self->_children allObjects];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) _alternatePlaceContext];
        if (v7)
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v2 = [(NSHashTable *)self->_children allObjects];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) _alternateMapViewContext];
        if (v7)
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v2 = [(RAPQuestion *)self report];
  v3 = [v2 _context];

  return v3;
}

- (void)_prepareForSubmission
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(NSHashTable *)self->_children allObjects];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) _prepareForSubmission];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_setComplete:(BOOL)a3 allowInvokingDidChange:(BOOL)a4
{
  if (self->_complete != a3)
  {
    self->_complete = a3;
    if (a4)
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
  v4 = [v3 keyEnumerator];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_observers objectForKey:v9];
        (v10)[2](v10, self, v9);
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = [(RAPQuestion *)self report];
  [v11 _questionDidChange:self];
}

- (void)addObserver:(id)a3 changeHandler:(id)a4
{
  v11 = a3;
  v6 = a4;
  observers = self->_observers;
  if (!observers)
  {
    v8 = +[NSMapTable weakToStrongObjectsMapTable];
    v9 = self->_observers;
    self->_observers = v8;

    observers = self->_observers;
  }

  v10 = [v6 copy];
  [(NSMapTable *)observers setObject:v10 forKey:v11];
}

- (void)_removeFromParentQuestion
{
  WeakRetained = objc_loadWeakRetained(&self->_parentQuestion);
  [WeakRetained _removeChildQuestion:self];

  objc_storeWeak(&self->_parentQuestion, 0);
}

- (void)_addChildQuestion:(id)a3
{
  v4 = a3;
  children = self->_children;
  v8 = v4;
  if (!children)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    v7 = self->_children;
    self->_children = v6;

    v4 = v8;
    children = self->_children;
  }

  [(NSHashTable *)children addObject:v4];
}

- (RAPQuestion)initWithReport:(id)a3 parentQuestion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = RAPQuestion;
  v8 = [(RAPQuestion *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_report, v6);
    v10 = objc_storeWeak(&v9->_parentQuestion, v7);
    [v7 _addChildQuestion:v9];
  }

  return v9;
}

- (BOOL)isAnonymous
{
  v2 = +[UserProfileReportHistoryManager sharedInstance];
  v3 = [v2 inChina];

  if (v3)
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