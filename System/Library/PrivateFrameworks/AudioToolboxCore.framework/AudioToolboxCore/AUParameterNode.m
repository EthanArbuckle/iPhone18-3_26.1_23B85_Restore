@interface AUParameterNode
- (AUParameterGroup)parentNode;
- (AUParameterNode)initWithID:(id)a3 name:(id)a4;
- (AUParameterObserverToken)tokenByAddingParameterObserver:(AUParameterObserver)observer;
- (NSString)displayNameWithLength:(NSInteger)maximumLength;
- (NSString)keyPath;
- (id)_rootParent;
- (id)description;
- (void)_addRecObserver:(id)a3 autoObserver:(id)a4;
- (void)dealloc;
- (void)removeParameterObserver:(AUParameterObserverToken)token;
@end

@implementation AUParameterNode

- (AUParameterGroup)parentNode
{
  WeakRetained = objc_loadWeakRetained(&self->_parentNode);

  return WeakRetained;
}

- (NSString)displayNameWithLength:(NSInteger)maximumLength
{
  v4 = self;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    while (1)
    {
      v7 = [v6 implementorDisplayNameWithLengthCallback];
      v8 = v7;
      if (v7)
      {
        break;
      }

      v9 = [v6 parentNode];

      v6 = v9;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v10 = (*(v7 + 16))(v7, v5, maximumLength);
  }

  else
  {
LABEL_5:
    v10 = [(AUParameterNode *)v5 displayName];
  }

  return v10;
}

- (void)removeParameterObserver:(AUParameterObserverToken)token
{
  if (token)
  {
    v5 = [(AUParameterNode *)self _rootParent];
    v6 = v5;
    if (v5)
    {
      v7 = *(token + 8);
      v8 = [v5 observationQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __43__AUParameterNode_removeParameterObserver___block_invoke;
      block[3] = &unk_1E72C1318;
      block[4] = self;
      block[5] = token;
      v10 = v7;
      dispatch_sync(v8, block);
    }
  }
}

uint64_t __43__AUParameterNode_removeParameterObserver___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 40);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 40);
    v5 = *v1;
    v4 = *(v1 + 8);
    if (*v1 != v4)
    {
      while (*v5 != v3)
      {
        if (++v5 == v4)
        {
          goto LABEL_15;
        }
      }

      if (v5 != v4)
      {
        v6 = v5 + 1;
        if (v5 + 1 != v4)
        {
          do
          {
            if (*v6 != v3)
            {
              *v5++ = *v6;
            }

            ++v6;
          }

          while (v6 != v4);
          v4 = *(v1 + 8);
        }
      }
    }

    if (v5 != v4)
    {
      *(v1 + 8) = v5;
    }

LABEL_15:
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v7 = *(v2 + 32);
    v8 = *(v2 + 48);

    return [v7 _observersChanged:v8 deltaCount:0xFFFFFFFFLL];
  }

  return result;
}

- (void)_addRecObserver:(id)a3 autoObserver:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = [(AUParameterNode *)self _rootParent];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 observationQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__AUParameterNode__addRecObserver_autoObserver___block_invoke;
    block[3] = &unk_1E72C12F0;
    block[4] = self;
    v14 = v9;
    v15 = v6;
    v17 = &v18;
    v16 = v7;
    dispatch_sync(v10, block);
  }

  v11 = v19[3];

  _Block_object_dispose(&v18, 8);
  return v11;
}

void __48__AUParameterNode__addRecObserver_autoObserver___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[5])
  {
    operator new();
  }

  [v2 _observersChanged:1 deltaCount:1];
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 32) + 40);
  if (v3)
  {
    v5 = v3;
    operator new();
  }

  v6 = *(a1 + 56);
  operator new();
}

- (AUParameterObserverToken)tokenByAddingParameterObserver:(AUParameterObserver)observer
{
  v4 = observer;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = [(AUParameterNode *)self _rootParent];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 observationQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__AUParameterNode_tokenByAddingParameterObserver___block_invoke;
    v10[3] = &unk_1E72C12C8;
    v10[4] = self;
    v11 = v6;
    v13 = &v14;
    v12 = v4;
    dispatch_sync(v7, v10);
  }

  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __50__AUParameterNode_tokenByAddingParameterObserver___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[5])
  {
    operator new();
  }

  [v2 _observersChanged:0 deltaCount:1];
  v3 = *(*(a1 + 32) + 40);
  v4 = *(a1 + 48);
  operator new();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(AUParameterNode *)self identifier];
  v6 = [(AUParameterNode *)self displayName];
  v7 = [v3 stringWithFormat:@"<%@: %p, %@, %@>", v4, self, v5, v6];

  return v7;
}

- (id)_rootParent
{
  v3 = [(AUParameterNode *)self parentNode];
  if (v3)
  {
    v4 = v3;
    for (i = 0; ; v4 = i)
    {
      v6 = [(AUParameterNode *)v4 parentNode];

      if (!v6)
      {
        break;
      }

      i = v6;
    }
  }

  else
  {
    v4 = self;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = 0;
  }

  return v4;
}

- (NSString)keyPath
{
  v3 = [(AUParameterNode *)self identifier];
  v4 = [(AUParameterNode *)self parentNode];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 keyPath];
    if ([v6 length])
    {
      v7 = [(AUParameterNode *)self parentNode];
      v8 = [v7 keyPath];
      v9 = [v8 stringByAppendingFormat:@".%@", v3];

      v6 = v3;
      v3 = v9;
    }
  }

  return v3;
}

- (void)dealloc
{
  observerList = self->_observerList;
  if (observerList)
  {
    v4 = *observerList;
    v5 = observerList[1];
    if (*observerList != v5)
    {
      do
      {
        if (*v4)
        {
          (*(**v4 + 8))(*v4, a2);
        }

        ++v4;
      }

      while (v4 != v5);
      v4 = *observerList;
    }

    if (v4)
    {
      observerList[1] = v4;
      operator delete(v4);
    }

    MEMORY[0x193ADF220](observerList, 0x80C40D6874129);
  }

  v6.receiver = self;
  v6.super_class = AUParameterNode;
  [(AUParameterNode *)&v6 dealloc];
}

- (AUParameterNode)initWithID:(id)a3 name:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v7 containsString:@"."])
  {
    v12 = MEMORY[0x1E695DF30];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Identifier '%@' contains '.', which is reserved as a delimiter", v7];
    v14 = [v12 exceptionWithName:@"AUInvalidNodeInfoException" reason:v13 userInfo:0];
    v15 = v14;

    objc_exception_throw(v14);
  }

  v16.receiver = self;
  v16.super_class = AUParameterNode;
  v9 = [(AUParameterNode *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_displayName, a4);
  }

  return v10;
}

@end