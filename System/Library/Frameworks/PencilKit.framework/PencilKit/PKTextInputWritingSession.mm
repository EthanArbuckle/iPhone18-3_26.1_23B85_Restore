@interface PKTextInputWritingSession
- (PKTextInputWritingSession)init;
- (id)description;
- (void)_evaluatePendingWritingEndedElements;
- (void)_flushPendingWritingEndedElements:(uint64_t)elements;
- (void)dealloc;
- (void)didEndWritingInElement:(uint64_t)element;
- (void)didInsertTextInElement:(uint64_t)element;
- (void)invalidate;
- (void)setCurrentTargetElement:(id *)element;
- (void)willBeginWritingInElement:(uint64_t)element;
@end

@implementation PKTextInputWritingSession

- (PKTextInputWritingSession)init
{
  v9.receiver = self;
  v9.super_class = PKTextInputWritingSession;
  v2 = [(PKTextInputWritingSession *)&v9 init];
  if (v2)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v2->_beginTimestamp = v3;
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:_nextWritingSessionIdentifier];
    sessionIdentifier = v2->_sessionIdentifier;
    v2->_sessionIdentifier = v4;

    ++_nextWritingSessionIdentifier;
    v6 = [MEMORY[0x1E695DFA8] setWithCapacity:2];
    pendingWritingEndedElements = v2->_pendingWritingEndedElements;
    v2->_pendingWritingEndedElements = v6;
  }

  return v2;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = PKTextInputWritingSession;
  v3 = [(PKTextInputWritingSession *)&v8 description];
  v4 = v3;
  if (self)
  {
    sessionIdentifier = self->_sessionIdentifier;
  }

  else
  {
    sessionIdentifier = 0;
  }

  sessionIdentifier = [v3 stringByAppendingFormat:@" identifier: %@", sessionIdentifier];

  return sessionIdentifier;
}

- (void)setCurrentTargetElement:(id *)element
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (element)
  {
    v6 = element[5];
    if (v6 != v4)
    {
      v7 = v6;
      objc_storeStrong(element + 5, a2);
      if (v5 && v7 && ([(PKTextInputElement *)v7 isEquivalentToElement:v5]& 1) != 0)
      {
        [v7 swapWritingStateWithElement:v5];
      }

      else
      {
        v8 = os_log_create("com.apple.pencilkit", "PencilTextInput");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218498;
          elementCopy = element;
          v29 = 2112;
          v30 = v7;
          v31 = 2112;
          v32 = v5;
          _os_log_debug_impl(&dword_1C7CCA000, v8, OS_LOG_TYPE_DEBUG, "Target element changed for writing session %p. (%@) -> (%@)", buf, 0x20u);
        }

        [v7 didMoveToWritingSession:0];
        [v5 didMoveToWritingSession:element];
        v9 = v7;
        if (v9 && ([element[2] containsObject:v9] & 1) == 0)
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v10 = element[2];
          v11 = [v10 countByEnumeratingWithState:&v23 objects:buf count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v24;
            while (2)
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v24 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v23 + 1) + 8 * i);
                if (([(PKTextInputElement *)v15 isEquivalentToElement:v9]& 1) != 0)
                {
                  v16 = v15;

                  if (v16)
                  {
                    [element[2] removeObject:{v16, v23}];
                  }

                  goto LABEL_22;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v23 objects:buf count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

          v16 = 0;
LABEL_22:
          [element[2] addObject:{v9, v23}];
        }

        [(PKTextInputWritingSession *)element _evaluatePendingWritingEndedElements];
        v17 = v5;
        if (v17)
        {
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v18 = element[2];
          v19 = [v18 countByEnumeratingWithState:&v23 objects:buf count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v24;
            while (2)
            {
              for (j = 0; j != v20; ++j)
              {
                if (*v24 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                if (([(PKTextInputElement *)*(*(&v23 + 1) + 8 * j) isEquivalentToElement:v17]& 1) != 0)
                {

                  goto LABEL_34;
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v23 objects:buf count:16];
              if (v20)
              {
                continue;
              }

              break;
            }
          }

          [v17 willBeginWriting];
        }

LABEL_34:
      }
    }
  }
}

- (void)_evaluatePendingWritingEndedElements
{
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v2 = self[2];
    v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (!v3)
    {
      v5 = v2;
      goto LABEL_18;
    }

    v4 = v3;
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = self[5];
        if ([(PKTextInputElement *)v9 isEquivalentToElement:v8])
        {
        }

        else
        {
          WeakRetained = objc_loadWeakRetained(self + 6);
          v11 = [WeakRetained writingSession:self elementHasPendingOperations:{v8, v12}];

          if ((v11 & 1) == 0)
          {
            if (!v5)
            {
              v5 = [MEMORY[0x1E695DFA8] set];
            }

            [v5 addObject:v8];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);

    if (v5)
    {
      [(PKTextInputWritingSession *)self _flushPendingWritingEndedElements:v5];
LABEL_18:
    }
  }
}

- (void)invalidate
{
  if (self)
  {
    [(PKTextInputWritingSession *)self setCurrentTargetElement:?];
    if ([*(self + 16) count])
    {
      [(PKTextInputWritingSession *)self _flushPendingWritingEndedElements:?];
    }

    *(self + 8) = 1;
  }
}

- (void)_flushPendingWritingEndedElements:(uint64_t)elements
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (elements)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) didEndWriting];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [*(elements + 16) minusSet:v4];
  }
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  if (!self->_isInvalidated)
  {
    v3 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_error_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_ERROR, "Deallocating session that hasn't been invalidated %@.", buf, 0xCu);
    }
  }

  if (self->_currentTargetElement)
  {
    v4 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_error_impl(&dword_1C7CCA000, v4, OS_LOG_TYPE_ERROR, "Deallocating session that still has a current target element %@.", buf, 0xCu);
    }
  }

  if ([(NSMutableSet *)self->_pendingWritingEndedElements count])
  {
    v5 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy3 = self;
      _os_log_error_impl(&dword_1C7CCA000, v5, OS_LOG_TYPE_ERROR, "Deallocating session that still has pending writing eneded elements %@.", buf, 0xCu);
    }
  }

  v6.receiver = self;
  v6.super_class = PKTextInputWritingSession;
  [(PKTextInputWritingSession *)&v6 dealloc];
}

- (void)willBeginWritingInElement:(uint64_t)element
{
  if (element)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((element + 48));
    [WeakRetained writingSession:element willBeginWritingInElement:v3];
  }
}

- (void)didEndWritingInElement:(uint64_t)element
{
  if (element)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((element + 48));
    [WeakRetained writingSession:element didEndWritingInElement:v3];
  }
}

- (void)didInsertTextInElement:(uint64_t)element
{
  if (element)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained((element + 48));
    [WeakRetained writingSession:element didInsertTextInElement:v3];
  }
}

@end