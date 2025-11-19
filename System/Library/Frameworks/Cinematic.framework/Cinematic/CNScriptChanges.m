@interface CNScriptChanges
+ (id)_changesFromInternal:(id)a3;
- (CNScriptChanges)initWithDataRepresentation:(NSData *)dataRepresentation;
- (NSArray)addedDetectionTracks;
- (NSArray)userDecisions;
- (NSData)dataRepresentation;
- (float)fNumber;
- (id)_initWithInternalChanges:(id)a3;
- (void)dataRepresentation;
@end

@implementation CNScriptChanges

- (id)_initWithInternalChanges:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CNScriptChanges;
  v5 = [(CNScriptChanges *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    internalChanges = v5->_internalChanges;
    v5->_internalChanges = v6;
  }

  return v5;
}

+ (id)_changesFromInternal:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithInternalChanges:v4];

  return v5;
}

- (CNScriptChanges)initWithDataRepresentation:(NSData *)dataRepresentation
{
  v19[4] = *MEMORY[0x277D85DE8];
  v4 = dataRepresentation;
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v19[2] = objc_opt_class();
  v19[3] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
  v6 = MEMORY[0x277CCAAC8];
  v7 = [MEMORY[0x277CBEB98] setWithArray:v5];
  v18 = 0;
  v8 = [v6 unarchivedObjectOfClasses:v7 fromData:v4 error:&v18];

  v9 = v18;
  if (v9)
  {
    v10 = _CNLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CNScriptChanges initWithDataRepresentation:];
    }

    v11 = 0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = _CNLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CNScriptChanges initWithDataRepresentation:];
      }
    }

    v10 = [v8 objectForKeyedSubscript:@"version"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = _CNLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [CNScriptChanges initWithDataRepresentation:];
      }
    }

    if ([v10 integerValue]== 1)
    {
      v14 = [v8 objectForKeyedSubscript:@"scriptChanges"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = _CNLogSystem();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [CNScriptChanges initWithDataRepresentation:];
        }
      }

      self = [(CNScriptChanges *)self _initWithInternalChanges:v14];
      v11 = self;
    }

    else
    {
      v14 = _CNLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [CNScriptChanges initWithDataRepresentation:];
      }

      v11 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (NSData)dataRepresentation
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"version";
  v11[1] = @"scriptChanges";
  v12[0] = &unk_284A07070;
  v2 = [(CNScriptChanges *)self internalChanges];
  v12[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v10 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = _CNLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CNScriptChanges dataRepresentation];
    }

    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (float)fNumber
{
  v2 = [(CNScriptChanges *)self internalChanges];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D3E910]];
  [v3 floatValue];
  v5 = v4;

  return v5;
}

- (NSArray)userDecisions
{
  v2 = [(CNScriptChanges *)self internalChanges];
  v3 = [v2 objectForKeyedSubscript:@"user_decisions"];

  v4 = [MEMORY[0x277D3E838] _mutableDecisionsWithCinematographyDictionaries:v3];
  v5 = [CNDecision _takeDecisionsFromInternal:v4];

  return v5;
}

- (NSArray)addedDetectionTracks
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(CNScriptChanges *)self internalChanges];
  v5 = [v4 objectForKeyedSubscript:@"user_tracks"];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = objc_alloc(MEMORY[0x277D3E860]);
        v13 = [v12 _initWithCinematographyDictionary:{v11, v18}];
        v14 = [CNDetectionTrack _trackFromInternal:v13];
        [v3 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v3 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)initWithDataRepresentation:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1(&dword_236F52000, v0, v1, "Error decoding script changes: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithDataRepresentation:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDataRepresentation:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDataRepresentation:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1(&dword_236F52000, v0, v1, "Unsupported script changes version: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithDataRepresentation:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dataRepresentation
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_2_1(&dword_236F52000, v0, v1, "Error encoding script changes: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end