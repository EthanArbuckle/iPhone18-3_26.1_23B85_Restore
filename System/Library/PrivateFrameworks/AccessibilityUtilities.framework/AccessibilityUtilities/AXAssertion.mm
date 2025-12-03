@interface AXAssertion
+ (id)assertionWithType:(id)type identifier:(id)identifier;
+ (void)ensureAssertionsHaveBeenProcessedWithCompletion:(id)completion;
- (AXAssertion)initWithType:(id)type identifier:(id)identifier;
- (BOOL)_hasValidAssertionType;
- (id)description;
- (void)_notifyServerAssertionWasAcquired;
- (void)_notifyServerAssertionWasRelinquished;
- (void)dealloc;
@end

@implementation AXAssertion

+ (id)assertionWithType:(id)type identifier:(id)identifier
{
  identifierCopy = identifier;
  typeCopy = type;
  v7 = [objc_alloc(objc_opt_class()) initWithType:typeCopy identifier:identifierCopy];

  return v7;
}

+ (void)ensureAssertionsHaveBeenProcessedWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([self isSupported])
  {
    v5 = +[AXSpringBoardServer server];
    [v5 _ensureAssertionsHaveBeenProcessedWithCompletion:completionCopy];
  }

  else
  {
    v6 = AXLogAssertions();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(AXAssertion *)v6 ensureAssertionsHaveBeenProcessedWithCompletion:v7, v8, v9, v10, v11, v12, v13];
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (AXAssertion)initWithType:(id)type identifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = AXAssertion;
  v8 = [(AXAssertion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(AXAssertion *)v8 setAssertionType:typeCopy];
    [(AXAssertion *)v9 setIdentifier:identifierCopy];
    [(AXAssertion *)v9 _notifyServerAssertionWasAcquired];
  }

  return v9;
}

- (void)dealloc
{
  [(AXAssertion *)self _notifyServerAssertionWasRelinquished];
  v3.receiver = self;
  v3.super_class = AXAssertion;
  [(AXAssertion *)&v3 dealloc];
}

- (BOOL)_hasValidAssertionType
{
  if (_hasValidAssertionType_onceToken != -1)
  {
    [AXAssertion _hasValidAssertionType];
  }

  assertionType = [(AXAssertion *)self assertionType];
  if (assertionType)
  {
    v4 = _hasValidAssertionType__ValidAssertionTypes;
    assertionType2 = [(AXAssertion *)self assertionType];
    v6 = [v4 containsObject:assertionType2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __37__AXAssertion__hasValidAssertionType__block_invoke()
{
  v4[6] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4[0] = @"Disable System Gestures";
  v4[1] = @"Disable Speak This! Gesture";
  v4[2] = @"Disable Notification Center gesture";
  v4[3] = @"Disable Control Center gesture";
  v4[4] = @"Disable Dashboard gestures";
  v4[5] = @"Disable SecurePay AX Features";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:6];
  v2 = [v0 initWithArray:v1];
  v3 = _hasValidAssertionType__ValidAssertionTypes;
  _hasValidAssertionType__ValidAssertionTypes = v2;
}

- (void)_notifyServerAssertionWasAcquired
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = AXLogAssertions();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    assertionType = [(AXAssertion *)self assertionType];
    identifier = [(AXAssertion *)self identifier];
    *buf = 138412546;
    v17 = assertionType;
    v18 = 2112;
    v19 = identifier;
    _os_log_impl(&dword_18B15E000, v3, OS_LOG_TYPE_INFO, "Assertion acquired: %@, %@", buf, 0x16u);
  }

  if ([(AXAssertion *)self _hasValidAssertionType])
  {
    if ([objc_opt_class() isSupported])
    {
      assertionType3 = +[AXSpringBoardServer server];
      assertionType2 = [(AXAssertion *)self assertionType];
      identifier2 = [(AXAssertion *)self identifier];
      [assertionType3 acquireAssertionWithType:assertionType2 identifier:identifier2];
    }

    else
    {
      assertionType3 = AXLogAssertions();
      if (os_log_type_enabled(assertionType3, OS_LOG_TYPE_ERROR))
      {
        [(AXAssertion *)assertionType3 ensureAssertionsHaveBeenProcessedWithCompletion:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  else
  {
    assertionType3 = [(AXAssertion *)self assertionType];
    _AXAssert();
  }
}

- (void)_notifyServerAssertionWasRelinquished
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = AXLogAssertions();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    assertionType = [(AXAssertion *)self assertionType];
    identifier = [(AXAssertion *)self identifier];
    *buf = 138412546;
    v17 = assertionType;
    v18 = 2112;
    v19 = identifier;
    _os_log_impl(&dword_18B15E000, v3, OS_LOG_TYPE_INFO, "Assertion released: %@, %@", buf, 0x16u);
  }

  if ([(AXAssertion *)self _hasValidAssertionType])
  {
    if ([objc_opt_class() isSupported])
    {
      assertionType3 = +[AXSpringBoardServer server];
      assertionType2 = [(AXAssertion *)self assertionType];
      identifier2 = [(AXAssertion *)self identifier];
      [assertionType3 relinquishAssertionWithType:assertionType2 identifier:identifier2];
    }

    else
    {
      assertionType3 = AXLogAssertions();
      if (os_log_type_enabled(assertionType3, OS_LOG_TYPE_ERROR))
      {
        [(AXAssertion *)assertionType3 ensureAssertionsHaveBeenProcessedWithCompletion:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  else
  {
    assertionType3 = [(AXAssertion *)self assertionType];
    _AXAssert();
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  assertionType = [(AXAssertion *)self assertionType];
  identifier = [(AXAssertion *)self identifier];
  v6 = [v3 stringWithFormat:@"AXAssertion:<%p> Type:%@ ClientID:%@", self, assertionType, identifier];

  return v6;
}

@end