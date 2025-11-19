@interface CRLPasteboardWriteAssistant
- (CRLPasteboardWriteAssistant)initWithContext:(id)a3;
- (CRLPasteboardWriteAssistantDelegate)delegate;
- (_TtC8Freeform19CRLPasteboardObject)pasteboardObject;
- (id)crlPasteboardWithPasteboard:(id)a3;
- (id)pasteboardPropertyListForType:(id)a3;
- (id)writableTypesForPasteboard:(id)a3;
- (void)loadData;
- (void)serializeNativeDataForPasteboard:(id)a3;
- (void)setContentDescription:(id)a3;
- (void)setDataProvider:(id)a3 forTypes:(id)a4;
@end

@implementation CRLPasteboardWriteAssistant

- (CRLPasteboardWriteAssistant)initWithContext:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = CRLPasteboardWriteAssistant;
  v6 = [(CRLPasteboardWriteAssistant *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceContext, a3);
    v8 = [_TtC8Freeform19CRLPasteboardObject alloc];
    v9 = [v5 sourceContext];
    v10 = [(CRLPasteboardObject *)v8 initWithContext:v9];
    pasteboardObject = v7->_pasteboardObject;
    v7->_pasteboardObject = v10;

    v12 = objc_opt_new();
    pasteboardStateTypes = v7->_pasteboardStateTypes;
    v7->_pasteboardStateTypes = v12;
  }

  return v7;
}

- (void)setDataProvider:(id)a3 forTypes:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_shouldRefuseAdditionalDataProviders)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101343CFC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101343D10();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101343D98();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v9 = [NSString stringWithUTF8String:"[CRLPasteboardWriteAssistant setDataProvider:forTypes:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardWriteAssistant.mm"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:64 isFatal:0 description:"Mapping data providers to types is not allowed after pasteboard writing has started"];
  }

  if (!self->_dataProviderMap)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    dataProviderMap = self->_dataProviderMap;
    self->_dataProviderMap = v11;
  }

  if (!self->_dataProviderTypes)
  {
    v13 = objc_alloc_init(NSMutableOrderedSet);
    dataProviderTypes = self->_dataProviderTypes;
    self->_dataProviderTypes = v13;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v16)
  {
    v17 = *v21;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v20 + 1) + 8 * i);
        [(NSMutableDictionary *)self->_dataProviderMap setObject:v6 forKeyedSubscript:v19, v20];
        [(NSMutableOrderedSet *)self->_dataProviderTypes addObject:v19];
      }

      v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
  }
}

- (_TtC8Freeform19CRLPasteboardObject)pasteboardObject
{
  if (self->_didAttemptToSerializeNativeData && self->_serializeNativeDataSuccess)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101343DC0();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector("promisedPasteboardObject");
      objc_claimAutoreleasedReturnValue();
      sub_101343DD4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101343E50();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v5 = [NSString stringWithUTF8String:"[CRLPasteboardWriteAssistant pasteboardObject]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardWriteAssistant.mm"];
    v7 = NSStringFromSelector("promisedPasteboardObject");
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:81 isFatal:0 description:"Pasteboard object has already been serialized. Call %{public}@ instead.", v7];
  }

  pasteboardObject = self->_pasteboardObject;

  return pasteboardObject;
}

- (void)setContentDescription:(id)a3
{
  v5 = a3;
  if (self->_contentDescription != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_contentDescription, a3);
    v6 = [(CRLPasteboardWriteAssistant *)self delegate];
    [v6 distillPasteboardContentDescription:v7 intoPasteboardStateTypes:self->_pasteboardStateTypes];

    v5 = v7;
  }
}

- (id)crlPasteboardWithPasteboard:(id)a3
{
  v3 = [CRLPasteboard pasteboardWithPasteboard:a3];

  return v3;
}

- (void)serializeNativeDataForPasteboard:(id)a3
{
  v5 = a3;
  if (!+[NSThread isMainThread])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101343E78();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      sub_101343E8C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101343F08();
    }

    v7 = off_1019EDA68;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v8 = [NSString stringWithUTF8String:"[CRLPasteboardWriteAssistant serializeNativeDataForPasteboard:]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardWriteAssistant.mm"];
    v10 = NSStringFromSelector(a2);
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:101 isFatal:0 description:"%{public}@ needs to be invoked on the main thread for its implicit read lock", v10];
  }

  if (!self->_didWriteNativeDataToPasteboard)
  {
    v11 = [(CRLPasteboardWriteAssistant *)self crlPasteboardWithPasteboard:v5];
    v12 = [_TtC8Freeform33CRLPasteboardObjectWriteAssistant alloc];
    v13 = [(CRLPasteboardSourceContext *)self->_sourceContext sourceStore];
    v14 = [(CRLPasteboardSourceContext *)self->_sourceContext sourceContext];
    v15 = [(CRLPasteboardObjectWriteAssistant *)v12 initWithPasteboard:v11 store:v13 context:v14];

    v16 = dispatch_semaphore_create(0);
    pasteboardObject = self->_pasteboardObject;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10029051C;
    v19[3] = &unk_10184FD60;
    v19[4] = self;
    v19[5] = v11;
    v18 = v16;
    v20 = v18;
    [(CRLPasteboardObjectWriteAssistant *)v15 writePasteboardObject:pasteboardObject completionHandler:v19];
    dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
    self->_didWriteNativeDataToPasteboard = 1;
  }
}

- (void)loadData
{
  if (!self->_didAttemptToSerializeNativeData && ![(CRLPasteboardWriteAssistant *)self excludeNativeData])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101343F44();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101343F58();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101343FE0();
    }

    v3 = off_1019EDA68;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      +[CRLAssertionHandler packedBacktraceString];
      objc_claimAutoreleasedReturnValue();
      sub_10130E89C();
    }

    v4 = [NSString stringWithUTF8String:"[CRLPasteboardWriteAssistant loadData]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardWriteAssistant.mm"];
    [CRLAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:138 isFatal:0 description:"No attempt was made to serialize native data"];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_dataProviderTypes;
  v7 = [(NSMutableOrderedSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [(CRLPasteboard *)self->_nativeDataPasteboard dataForPasteboardType:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [(NSMutableOrderedSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)writableTypesForPasteboard:(id)a3
{
  self->_shouldRefuseAdditionalDataProviders = 1;
  self->_shouldRefuseAdditionalPasteboardStateTypes = 1;
  [(CRLPasteboardWriteAssistant *)self serializeNativeDataForPasteboard:a3];
  v4 = [NSMutableOrderedSet orderedSetWithCapacity:[(NSMutableOrderedSet *)self->_dataProviderTypes count]+ 3];
  if (![(CRLPasteboardWriteAssistant *)self excludeNativeData])
  {
    v5 = [(CRLPasteboardNativeDataProvider *)self->_nativeDataProvider promisedDataTypes];
    if (v5)
    {
      [v4 addObjectsFromArray:v5];
    }

    if (self->_contentDescription)
    {
      [v4 addObject:@"com.apple.freeform.CRLDescription"];
    }

    v6 = [(NSMutableSet *)self->_pasteboardStateTypes allObjects];
    [v4 addObjectsFromArray:v6];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_dataProviderTypes;
  v8 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [v4 addObject:{*(*(&v13 + 1) + 8 * i), v13}];
      }

      v8 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = [v4 array];

  return v11;
}

- (id)pasteboardPropertyListForType:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_dataProviderMap objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 pasteboardPromise:self propertyListForType:v4];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_18:

      goto LABEL_19;
    }

    v8 = v7;
    v9 = v4;
    if ([v8 length] > 0x1200000)
    {
      v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101344008();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10134401C(v9, v10, v11);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013440D8();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v13 = [NSString stringWithUTF8String:"void CRLPasteboardAssertNSData(CRLPasteboard *__strong, NSData *__strong, NSString *__strong)"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboard_Internal.h"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:13 isFatal:0 description:"Data for %{public}@ is too large for the pasteboard. It may be silently dropped.", v9];
    }

    v7 = v8;
    goto LABEL_14;
  }

  if ([v4 isEqualToString:@"com.apple.freeform.CRLDescription"])
  {
    contentDescription = self->_contentDescription;
    v24 = 0;
    v7 = [NSPropertyListSerialization dataWithPropertyList:contentDescription format:200 options:0 error:&v24];
    v8 = v24;
    if (v7)
    {
      goto LABEL_17;
    }

    if (qword_101AD5A08 != -1)
    {
      sub_1013441C4();
    }

    v9 = off_1019EDA60;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = [v8 domain];
      v23 = [v8 code];
      *buf = 138544130;
      v26 = v21;
      v27 = 2114;
      v28 = v22;
      v29 = 2048;
      v30 = v23;
      v31 = 2112;
      v32 = v8;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to serialize content description - Error: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x2Au);
    }

LABEL_14:

LABEL_17:
    goto LABEL_18;
  }

  if (([(NSMutableSet *)self->_pasteboardStateTypes containsObject:v4]& 1) != 0)
  {
    v7 = 0;
  }

  else
  {
    if (!self->_didAttemptToSerializeNativeData && ![(CRLPasteboardWriteAssistant *)self excludeNativeData])
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101344100();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101344114();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10134419C();
      }

      v17 = off_1019EDA68;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[CRLAssertionHandler packedBacktraceString];
        objc_claimAutoreleasedReturnValue();
        sub_10130E89C();
      }

      v18 = [NSString stringWithUTF8String:"[CRLPasteboardWriteAssistant pasteboardPropertyListForType:]"];
      v19 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardWriteAssistant.mm"];
      [CRLAssertionHandler handleFailureInFunction:v18 file:v19 lineNumber:233 isFatal:0 description:"No attempt was made to serialize native data"];
    }

    v7 = [(CRLPasteboardNativeDataProvider *)self->_nativeDataProvider fulfillPromisesForPasteboardType:v4];
  }

LABEL_19:

  return v7;
}

- (CRLPasteboardWriteAssistantDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end