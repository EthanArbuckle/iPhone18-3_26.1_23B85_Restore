@interface CRLPasteboardUIPasteboard
- (BOOL)canLoadItemsOfClass:(Class)a3;
- (CRLPasteboardUIPasteboard)initWithNativePasteboard:(id)a3;
- (CRLPasteboardUIPasteboard)initWithPasteboardName:(id)a3 create:(BOOL)a4;
- (CRLPasteboardUIPasteboard)initWithUniquePasteboardName;
- (id)dataForPasteboardType:(id)a3;
- (id)pasteboardTypes;
- (id)propertyListForValue:(id)a3;
- (id)richTextStrings;
- (id)string;
- (id)stringForPasteboardType:(id)a3;
- (id)strings;
- (id)stringsForPasteboardType:(id)a3 inItemSet:(id)a4;
- (id)valueForPasteboardType:(id)a3;
- (int64_t)clearContents;
- (unint64_t)pasteboardItemMaxSize;
- (void)addItems:(id)a3 isSmartCopy:(BOOL)a4;
- (void)addPasteboardItem:(id)a3 atIndex:(unint64_t)a4;
- (void)addPasteboardItemForObject:(id)a3 type:(id)a4;
- (void)addPasteboardItemIndex:(unint64_t)a3 forType:(id)a4;
- (void)invalidate;
- (void)invalidatePasteboardCache;
- (void)invalidatePasteboardCacheIfNeeded;
- (void)reloadPasteboardItemIndexCacheIfNeeded;
- (void)setString:(id)a3;
@end

@implementation CRLPasteboardUIPasteboard

- (CRLPasteboardUIPasteboard)initWithPasteboardName:(id)a3 create:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v12.receiver = self;
  v12.super_class = CRLPasteboardUIPasteboard;
  v7 = [(CRLPasteboard *)&v12 initWithPasteboardName:v6 create:v4];
  if (v7)
  {
    v8 = [UIPasteboard pasteboardWithName:v6 create:v4];
    pasteboard = v7->super._pasteboard;
    v7->super._pasteboard = v8;

    if (!v7->super._pasteboard)
    {
      if (v4)
      {
        if (qword_101AD5A08 != -1)
        {
          sub_101311444();
        }

        v10 = off_1019EDA60;
        if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_ERROR))
        {
          sub_10131146C(v6, v10);
        }
      }

      v7 = 0;
    }
  }

  return v7;
}

- (CRLPasteboardUIPasteboard)initWithUniquePasteboardName
{
  v6.receiver = self;
  v6.super_class = CRLPasteboardUIPasteboard;
  v2 = [(CRLPasteboard *)&v6 initWithUniquePasteboardName];
  if (v2)
  {
    v3 = +[UIPasteboard pasteboardWithUniqueName];
    pasteboard = v2->super._pasteboard;
    v2->super._pasteboard = v3;
  }

  return v2;
}

- (CRLPasteboardUIPasteboard)initWithNativePasteboard:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);
  if (v6)
  {
    v10.receiver = self;
    v10.super_class = CRLPasteboardUIPasteboard;
    v7 = [(CRLPasteboard *)&v10 initWithNativePasteboard:v4];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->super._pasteboard, v6);
    }
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (void)addPasteboardItemForObject:(id)a3 type:(id)a4
{
  v9 = a4;
  v10 = a3;
  v6 = a4;
  v7 = a3;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  [(CRLPasteboardUIPasteboard *)self addPasteboardItem:v8];
}

- (void)addPasteboardItem:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = objc_opt_class();
        v14 = [v6 objectForKeyedSubscript:v12];
        v15 = sub_100014370(v13, v14);

        if (v15 && ![v15 length])
        {
          v16 = 0;
        }

        else
        {
          [(CRLPasteboardUIPasteboard *)self addPasteboardItemIndex:a4 forType:v12];
          v16 = 1;
        }

        v9 |= v16;
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v8);
    if (v9)
    {
      pasteboard = self->super._pasteboard;
      v23 = v6;
      v18 = [NSArray arrayWithObjects:&v23 count:1];
      [(UIPasteboard *)pasteboard addItems:v18];

      ++self->_pasteboardItemCount;
    }
  }
}

- (void)addPasteboardItemIndex:(unint64_t)a3 forType:(id)a4
{
  v6 = a4;
  pasteboardItemIndexCache = self->_pasteboardItemIndexCache;
  v14 = v6;
  if (pasteboardItemIndexCache)
  {
    v8 = [(NSMutableDictionary *)pasteboardItemIndexCache objectForKeyedSubscript:v6];
    v9 = v8;
    if (v8)
    {
      [v8 addIndex:a3];
    }

    else
    {
      v13 = [NSMutableIndexSet indexSetWithIndex:a3];
      [(NSMutableDictionary *)self->_pasteboardItemIndexCache setObject:v13 forKeyedSubscript:v14];
    }
  }

  else
  {
    v10 = [NSMutableDictionary alloc];
    v9 = [NSMutableIndexSet indexSetWithIndex:a3];
    v11 = [v10 initWithObjectsAndKeys:{v9, v14, 0}];
    v12 = self->_pasteboardItemIndexCache;
    self->_pasteboardItemIndexCache = v11;
  }
}

- (void)invalidatePasteboardCacheIfNeeded
{
  v3 = [(CRLPasteboard *)self changeCount];
  if (self->_cachedChangeCount != v3)
  {
    v4 = v3;
    [(CRLPasteboardUIPasteboard *)self invalidatePasteboardCache];
    self->_cachedChangeCount = v4;
  }
}

- (void)invalidatePasteboardCache
{
  self->_pasteboardItemCount = 0;
  pasteboardItemIndexCache = self->_pasteboardItemIndexCache;
  self->_pasteboardItemIndexCache = 0;

  cachedPasteboardTypes = self->_cachedPasteboardTypes;
  self->_cachedPasteboardTypes = 0;
}

- (void)reloadPasteboardItemIndexCacheIfNeeded
{
  [(CRLPasteboardUIPasteboard *)self invalidatePasteboardCacheIfNeeded];
  if (!self->_pasteboardItemIndexCache)
  {
    if (self->_pasteboardItemCount)
    {
      v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013114E4();
      }

      v4 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013114F8(&self->_pasteboardItemCount, v3, v4);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013115A8();
      }

      v5 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v5);
      }

      v6 = [NSString stringWithUTF8String:"[CRLPasteboardUIPasteboard reloadPasteboardItemIndexCacheIfNeeded]"];
      v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboard.m"];
      [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:884 isFatal:0 description:"Expected pasteboard item count should be zero, was %tu.", self->_pasteboardItemCount];
    }

    v8 = [(UIPasteboard *)self->super._pasteboard pasteboardTypesForItemSet:0];
    v9 = [v8 count];
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v11 = [v8 objectAtIndexedSubscript:i];
        v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v17;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v17 != v14)
              {
                objc_enumerationMutation(v11);
              }

              [(CRLPasteboardUIPasteboard *)self addPasteboardItemIndex:i forType:*(*(&v16 + 1) + 8 * j)];
            }

            v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
          }

          while (v13);
        }
      }
    }

    self->_pasteboardItemCount = v9;
    [(CRLPasteboardUIPasteboard *)self updateCachedChangeCount];
  }
}

- (id)propertyListForValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = v3;
LABEL_4:
    v5 = v4;
    goto LABEL_5;
  }

  v5 = [NSPropertyListSerialization propertyListWithData:v3 options:0 format:0 error:0];
  if (!v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v3 bytes]);
      goto LABEL_4;
    }

    v5 = 0;
  }

LABEL_5:

  return v5;
}

- (id)string
{
  v3 = objc_opt_class();
  v4 = [UTTypeUTF8PlainText identifier];
  v5 = [(CRLPasteboardUIPasteboard *)self valueForPasteboardType:v4];
  v6 = sub_100014370(v3, v5);

  return v6;
}

- (void)setString:(id)a3
{
  v4 = a3;
  [(CRLPasteboardUIPasteboard *)self clearContents];
  v5 = [UTTypeUTF8PlainText identifier];
  [(CRLPasteboardUIPasteboard *)self addPasteboardItemForObject:v4 type:v5];
}

- (id)strings
{
  v3 = [UTTypeText identifier];
  v4 = [(CRLPasteboardUIPasteboard *)self valuesForPasteboardType:v3 inItemSet:0];
  v5 = [NSMutableArray arrayWithArray:v4];

  if (![v5 count])
  {
    v6 = [UTTypeURL identifier];
    v7 = [(CRLPasteboardUIPasteboard *)self valuesForPasteboardType:v6 inItemSet:0];
    [v5 addObjectsFromArray:v7];
  }

  v8 = [v5 count];
  if (v8)
  {
    v38 = [NSMutableArray arrayWithCapacity:v8];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v35 = v5;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v39 objects:v53 count:16];
    if (!v9)
    {
      goto LABEL_27;
    }

    v10 = v9;
    v11 = &_s10Foundation9IndexPathVSHAAMc_ptr;
    v12 = *v40;
    v36 = self;
    while (1)
    {
      v13 = 0;
      do
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [(CRLPasteboardUIPasteboard *)self propertyListForValue:*(*(&v39 + 1) + 8 * v13)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 absoluteString];
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          v17 = objc_opt_class();
          v18 = v17;
          if (isKindOfClass)
          {
            v19 = [v14 firstObject];
            v20 = sub_100014370(v18, v19);

            if (v20)
            {
              goto LABEL_24;
            }

            goto LABEL_13;
          }

          v15 = sub_100014370(v17, v14);
        }

        v20 = v15;
        if (v15)
        {
LABEL_24:
          [v38 addObject:v20];
          goto LABEL_25;
        }

LABEL_13:
        v21 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013115D0();
        }

        v22 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          v29 = v22;
          v30 = objc_opt_class();
          v31 = NSStringFromClass(v30);
          *buf = 67110146;
          v44 = v21;
          v45 = 2082;
          v46 = "[CRLPasteboardUIPasteboard strings]";
          v47 = 2082;
          v48 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboard.m";
          v49 = 1024;
          v50 = 973;
          v51 = 2114;
          v52 = v31;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to convert value from %{public}@ to NSString", buf, 0x2Cu);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013115F8();
        }

        v23 = v11;
        v24 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          v32 = v24;
          v33 = +[CRLAssertionHandler packedBacktraceString];
          *buf = 67109378;
          v44 = v21;
          v45 = 2114;
          v46 = v33;
          _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
        }

        v25 = [NSString stringWithUTF8String:"[CRLPasteboardUIPasteboard strings]"];
        v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboard.m"];
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:973 isFatal:0 description:"Failed to convert value from %{public}@ to NSString", v28];

        v11 = v23;
        self = v36;
LABEL_25:

        v13 = v13 + 1;
      }

      while (v10 != v13);
      v10 = [obj countByEnumeratingWithState:&v39 objects:v53 count:16];
      if (!v10)
      {
LABEL_27:

        v5 = v35;
        goto LABEL_29;
      }
    }
  }

  v38 = 0;
LABEL_29:

  return v38;
}

- (id)richTextStrings
{
  pasteboard = self->super._pasteboard;
  v4 = [UTTypeFlatRTFD identifier];
  v52 = v4;
  v5 = [NSArray arrayWithObjects:&v52 count:1];
  v6 = [(UIPasteboard *)pasteboard itemSetWithPasteboardTypes:v5];

  v7 = [v6 count];
  v8 = self->super._pasteboard;
  if (v7)
  {
    v9 = [UTTypeFlatRTFD identifier];
    v10 = [(UIPasteboard *)v8 valuesForPasteboardType:v9 inItemSet:v6];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v42;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v42 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v41 + 1) + 8 * i);
          v18 = [NSAttributedString alloc];
          v49 = NSDocumentTypeDocumentAttribute;
          v50 = NSRTFDTextDocumentType;
          v19 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          v20 = [v18 initWithData:v17 options:v19 documentAttributes:0 error:0];

          if ([v20 length])
          {
            if (v14)
            {
              [v14 addObject:v20];
            }

            else
            {
              v14 = [NSMutableArray arrayWithObject:v20];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v41 objects:v51 count:16];
      }

      while (v13);
      v21 = v11;
    }

    else
    {
      v14 = 0;
      v21 = v11;
    }
  }

  else
  {
    v22 = [UTTypeRTF identifier];
    v48 = v22;
    v23 = [NSArray arrayWithObjects:&v48 count:1];
    v21 = [(UIPasteboard *)v8 itemSetWithPasteboardTypes:v23];

    if (![v21 count])
    {
      v14 = 0;
      goto LABEL_32;
    }

    v24 = self->super._pasteboard;
    v25 = [UTTypeRTF identifier];
    v26 = [(UIPasteboard *)v24 valuesForPasteboardType:v25 inItemSet:v21];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v26;
    v27 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (v27)
    {
      v28 = v27;
      v14 = 0;
      v29 = *v38;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v38 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v37 + 1) + 8 * j);
          v32 = [NSAttributedString alloc];
          v45 = NSDocumentTypeDocumentAttribute;
          v46 = NSRTFTextDocumentType;
          v33 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          v34 = [v32 initWithData:v31 options:v33 documentAttributes:0 error:0];

          if ([v34 length])
          {
            if (v14)
            {
              [v14 addObject:v34];
            }

            else
            {
              v14 = [NSMutableArray arrayWithObject:v34];
            }
          }
        }

        v28 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
      }

      while (v28);
    }

    else
    {
      v14 = 0;
    }

    v11 = obj;
  }

LABEL_32:

  return v14;
}

- (id)pasteboardTypes
{
  [(CRLPasteboardUIPasteboard *)self invalidatePasteboardCacheIfNeeded];
  cachedPasteboardTypes = self->_cachedPasteboardTypes;
  if (!cachedPasteboardTypes)
  {
    v4 = +[NSMutableOrderedSet orderedSet];
    v5 = [(UIPasteboard *)self->super._pasteboard pasteboardTypesForItemSet:0];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v20;
            do
            {
              for (j = 0; j != v13; j = j + 1)
              {
                if (*v20 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                [v4 addObject:*(*(&v19 + 1) + 8 * j)];
              }

              v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v13);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v7);
    }

    v16 = [v4 array];
    v17 = self->_cachedPasteboardTypes;
    self->_cachedPasteboardTypes = v16;

    cachedPasteboardTypes = self->_cachedPasteboardTypes;
  }

  return cachedPasteboardTypes;
}

- (id)dataForPasteboardType:(id)a3
{
  v4 = a3;
  [(CRLPasteboardUIPasteboard *)self reloadPasteboardItemIndexCacheIfNeeded];
  v5 = [(NSMutableDictionary *)self->_pasteboardItemIndexCache objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    if ([v5 count] >= 2)
    {
      v7 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [v6 firstIndex]);

      v6 = v7;
    }

    v8 = [(CRLPasteboardUIPasteboard *)self dataForPasteboardType:v4 inItemSet:v6];
    v9 = [v8 firstObject];

    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = [NSPropertyListSerialization dataWithPropertyList:v9 format:200 options:0 error:0];

        v9 = v10;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)stringForPasteboardType:(id)a3
{
  v4 = a3;
  [(CRLPasteboardUIPasteboard *)self reloadPasteboardItemIndexCacheIfNeeded];
  v5 = [(NSMutableDictionary *)self->_pasteboardItemIndexCache objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    if ([v5 count] >= 2)
    {
      v7 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [v6 firstIndex]);

      v6 = v7;
    }

    v8 = [(CRLPasteboardUIPasteboard *)self stringsForPasteboardType:v4 inItemSet:v6];
    v9 = [v8 firstObject];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)valueForPasteboardType:(id)a3
{
  v4 = a3;
  [(CRLPasteboardUIPasteboard *)self reloadPasteboardItemIndexCacheIfNeeded];
  v5 = [(NSMutableDictionary *)self->_pasteboardItemIndexCache objectForKeyedSubscript:v4];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_6;
  }

  if ([v5 count] >= 2)
  {
    v7 = +[NSIndexSet indexSetWithIndex:](NSIndexSet, "indexSetWithIndex:", [v6 firstIndex]);

    v6 = v7;
  }

  v8 = [(CRLPasteboardUIPasteboard *)self valuesForPasteboardType:v4 inItemSet:v6];
  v9 = [v8 firstObject];

  if (v9)
  {
    v10 = [(CRLPasteboardUIPasteboard *)self propertyListForValue:v9];
  }

  else
  {
LABEL_6:
    v10 = 0;
  }

  return v10;
}

- (BOOL)canLoadItemsOfClass:(Class)a3
{
  if (![(objc_class *)a3 conformsToProtocol:&OBJC_PROTOCOL___NSItemProviderReading])
  {
    return 0;
  }

  v5 = self->super._pasteboard;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(UIPasteboard *)v5 itemProviders];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v13 + 1) + 8 * i) canLoadObjectOfClass:a3])
        {
          v11 = 1;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (void)addItems:(id)a3 isSmartCopy:(BOOL)a4
{
  v64 = a4;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = a3;
  v70 = [obj countByEnumeratingWithState:&v94 objects:v100 count:16];
  if (v70)
  {
    v69 = *v95;
    do
    {
      v10 = 0;
      do
      {
        if (*v95 != v69)
        {
          v11 = v10;
          objc_enumerationMutation(obj);
          v10 = v11;
        }

        v71 = v10;
        v12 = *(*(&v94 + 1) + 8 * v10);
        v13 = sub_1003035DC(v12, 1, v4, v5, v6, v7, v8, v9, &OBJC_PROTOCOL___CRLPasteboardWriting);
        v72 = v13;
        if (v13)
        {
          v77 = [v13 writableTypesForPasteboard:self->super._pasteboard];
          v14 = [v77 count];
          if (!v14)
          {
            goto LABEL_96;
          }

          v90 = 0;
          v91 = &v90;
          v92 = 0x2020000000;
          v15 = 32;
          pasteboardItemCount = self->_pasteboardItemCount;
          v16 = +[NSMutableIndexSet indexSet];
          v17 = objc_autoreleasePoolPush();
          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            v21 = [v77 objectAtIndexedSubscript:v20];
            if (([v21 hasPrefix:@"com.apple.freeform.CRLNativeData"] & 1) == 0 && (objc_msgSend(v21, "hasPrefix:", @"com.apple.freeform.CRLNativeMetadata") & 1) == 0 && (objc_msgSend(v21, "hasPrefix:", @"com.apple.freeform.CRLAsset.") & 1) == 0 && (objc_msgSend(v21, "hasPrefix:", @"com.apple.apps.content-language.resource-") & 1) == 0 && !objc_msgSend(v21, "isEqualToString:", @"com.apple.freeform.CRLDescription"))
            {
              break;
            }

            [v16 addIndex:v20];
LABEL_15:

            if (++v20 == v14)
            {
              if ([v18 count])
              {
                v30 = *(&self->super.super.isa + v15);
                v31 = v91;
                v91[3] = v30;
                if (v30)
                {
                  v32 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                  if (qword_101AD5A10 != -1)
                  {
                    sub_101311648();
                  }

                  v33 = off_1019EDA68;
                  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109890;
                    *v102 = v32;
                    *&v102[4] = 2082;
                    *&v102[6] = "[CRLPasteboardUIPasteboard addItems:isSmartCopy:]";
                    *&v102[14] = 2082;
                    *&v102[16] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboard.m";
                    v103 = 1024;
                    v104 = 1200;
                    _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Public data types need to belong to the first pasteboard item. Otherwise, it is not guaranteed to be retrievable by other pasteboard clients.", buf, 0x22u);
                  }

                  if (qword_101AD5A10 != -1)
                  {
                    sub_101311670();
                  }

                  v34 = off_1019EDA68;
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                  {
                    v60 = +[CRLAssertionHandler packedBacktraceString];
                    *buf = 67109378;
                    *v102 = v32;
                    *&v102[4] = 2114;
                    *&v102[6] = v60;
                    _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
                  }

                  v35 = [NSString stringWithUTF8String:"[CRLPasteboardUIPasteboard addItems:isSmartCopy:]"];
                  v36 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboard.m"];
                  [CRLAssertionHandler handleFailureInFunction:v35 file:v36 lineNumber:1200 isFatal:0 description:"Public data types need to belong to the first pasteboard item. Otherwise, it is not guaranteed to be retrievable by other pasteboard clients."];

                  v31 = v91;
                  v37 = v91[3];
                }

                else
                {
                  v37 = 0;
                }

                v31[3] = v37 + 1;
                [(CRLPasteboardUIPasteboard *)self addPasteboardItem:v18 atIndex:?];
              }

              objc_autoreleasePoolPop(v17);
              if ([v16 count])
              {
                v82[0] = _NSConcreteStackBlock;
                v82[1] = 3221225472;
                v82[2] = sub_1000EBAC4;
                v82[3] = &unk_10183B870;
                v59 = v72;
                v85 = &v90;
                v83 = v59;
                v84 = self;
                [v77 enumerateObjectsAtIndexes:v16 options:0 usingBlock:v82];
              }

              _Block_object_dispose(&v90, 8);
              goto LABEL_96;
            }
          }

          v22 = [v72 pasteboardPropertyListForType:v21];
          if (v22)
          {
LABEL_18:
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              v19 += [v22 length];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v73 = v22;
                v74 = v18;
                v88 = 0u;
                v89 = 0u;
                v86 = 0u;
                v87 = 0u;
                v24 = v22;
                v25 = [v24 countByEnumeratingWithState:&v86 objects:v99 count:16];
                v65 = v15;
                context = v17;
                if (v25)
                {
                  v26 = *v87;
                  do
                  {
                    for (i = 0; i != v25; i = i + 1)
                    {
                      if (*v87 != v26)
                      {
                        objc_enumerationMutation(v24);
                      }

                      v28 = *(*(&v86 + 1) + 8 * i);
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          continue;
                        }
                      }

                      v19 += [v28 length];
                    }

                    v25 = [v24 countByEnumeratingWithState:&v86 objects:v99 count:16];
                  }

                  while (v25);
                }

                v17 = context;
                v22 = v73;
                v18 = v74;
                v15 = v65;
              }
            }

            if (v19 <= [(CRLPasteboardUIPasteboard *)self pasteboardItemMaxSize])
            {
              if (v18)
              {
                [v18 setObject:v22 forKey:v21];
              }

              else
              {
                v18 = [NSMutableDictionary dictionaryWithObject:v22 forKey:v21];
              }
            }

            else
            {
              if (qword_101AD5A08 != -1)
              {
                sub_101311620();
              }

              v23 = off_1019EDA60;
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                v29 = [(CRLPasteboardUIPasteboard *)self pasteboardItemMaxSize];
                *buf = 134218242;
                *v102 = v29;
                *&v102[8] = 2114;
                *&v102[10] = v21;
                _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "The total size for public data on the pasteboard has reached the allowed limit of %zu bytes per pasteboard item. %{public}@ will not be added to the pasteboard.", buf, 0x16u);
              }
            }
          }

          else if ([v21 crl_isPasteboardStateType])
          {
            v22 = +[NSData data];
            if (v22)
            {
              goto LABEL_18;
            }
          }

          else
          {
            v22 = 0;
          }

          goto LABEL_15;
        }

        v38 = objc_opt_class();
        v77 = sub_100014370(v38, v12);
        if (v77)
        {
          contexta = objc_autoreleasePoolPush();
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v77 = v77;
          v39 = [v77 countByEnumeratingWithState:&v78 objects:v98 count:16];
          if (v39)
          {
            v75 = *v79;
            do
            {
              for (j = 0; j != v39; j = j + 1)
              {
                if (*v79 != v75)
                {
                  objc_enumerationMutation(v77);
                }

                v41 = *(*(&v78 + 1) + 8 * j);
                v42 = [v77 objectForKeyedSubscript:v41];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v43 = self;
                  v44 = v42;
                  v45 = v41;
                  if (self)
                  {
                    v46 = [(CRLPasteboardUIPasteboard *)v43 pasteboardItemMaxSize];
                  }

                  else
                  {
                    v46 = 18874368;
                  }

                  if ([v44 length] > v46)
                  {
                    v47 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                    if (qword_101AD5A10 != -1)
                    {
                      sub_101311698();
                    }

                    v48 = off_1019EDA68;
                    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 67110146;
                      *v102 = v47;
                      *&v102[4] = 2082;
                      *&v102[6] = "void CRLPasteboardAssertNSData(CRLPasteboard *__strong, NSData *__strong, NSString *__strong)";
                      *&v102[14] = 2082;
                      *&v102[16] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboard_Internal.h";
                      v103 = 1024;
                      v104 = 13;
                      v105 = 2114;
                      v106 = v45;
                      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Data for %{public}@ is too large for the pasteboard. It may be silently dropped.", buf, 0x2Cu);
                    }

                    if (qword_101AD5A10 != -1)
                    {
                      sub_1013116C0();
                    }

                    v49 = off_1019EDA68;
                    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                    {
                      v52 = v49;
                      v53 = +[CRLAssertionHandler packedBacktraceString];
                      *buf = 67109378;
                      *v102 = v47;
                      *&v102[4] = 2114;
                      *&v102[6] = v53;
                      _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
                    }

                    v50 = [NSString stringWithUTF8String:"void CRLPasteboardAssertNSData(CRLPasteboard *__strong, NSData *__strong, NSString *__strong)"];
                    v51 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboard_Internal.h"];
                    [CRLAssertionHandler handleFailureInFunction:v50 file:v51 lineNumber:13 isFatal:0 description:"Data for %{public}@ is too large for the pasteboard. It may be silently dropped.", v45];
                  }
                }

                [(CRLPasteboardUIPasteboard *)self addPasteboardItemForObject:v42 type:v41];
              }

              v39 = [v77 countByEnumeratingWithState:&v78 objects:v98 count:16];
            }

            while (v39);
          }

          objc_autoreleasePoolPop(contexta);
        }

        else
        {
          v54 = +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_1013116E8();
          }

          v55 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            *v102 = v54;
            *&v102[4] = 2082;
            *&v102[6] = "[CRLPasteboardUIPasteboard addItems:isSmartCopy:]";
            *&v102[14] = 2082;
            *&v102[16] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboard.m";
            v103 = 1024;
            v104 = 1237;
            _os_log_error_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Expected item to conform to CRLPasteboardWriting protocol, or be an instance of NSDictionary", buf, 0x22u);
          }

          if (qword_101AD5A10 != -1)
          {
            sub_101311710();
          }

          v56 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            v61 = v56;
            v62 = +[CRLAssertionHandler packedBacktraceString];
            *buf = 67109378;
            *v102 = v54;
            *&v102[4] = 2114;
            *&v102[6] = v62;
            _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
          }

          v57 = [NSString stringWithUTF8String:"[CRLPasteboardUIPasteboard addItems:isSmartCopy:]"];
          v58 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboard.m"];
          [CRLAssertionHandler handleFailureInFunction:v57 file:v58 lineNumber:1237 isFatal:0 description:"Expected item to conform to CRLPasteboardWriting protocol, or be an instance of NSDictionary"];
        }

LABEL_96:

        v10 = v71 + 1;
      }

      while ((v71 + 1) != v70);
      v70 = [obj countByEnumeratingWithState:&v94 objects:v100 count:16];
    }

    while (v70);
  }

  if (v64)
  {
    v63 = [@"NeXT smart paste pasteboard type" dataUsingEncoding:4];
    [(CRLPasteboardUIPasteboard *)self addPasteboardItemForObject:v63 type:@"NeXT smart paste pasteboard type"];
  }
}

- (id)stringsForPasteboardType:(id)a3 inItemSet:(id)a4
{
  v5 = [(CRLPasteboardUIPasteboard *)self valuesForPasteboardType:a3 inItemSet:a4];
  v6 = [v5 count];
  if (v6)
  {
    v33 = [NSMutableArray arrayWithCapacity:v6];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v31 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v48 count:16];
    if (!v8)
    {
      goto LABEL_29;
    }

    v9 = v8;
    v10 = &_s10Foundation9IndexPathVSHAAMc_ptr;
    v11 = *v35;
    v32 = v7;
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [(CRLPasteboardUIPasteboard *)self propertyListForValue:*(*(&v34 + 1) + 8 * v12)];
        if (v13)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v13 path];
            if (!v14)
            {
              goto LABEL_17;
            }

LABEL_16:
            [v33 addObject:v14];
          }

          else
          {
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            v16 = objc_opt_class();
            if ((isKindOfClass & 1) == 0)
            {
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_17;
              }

              v14 = v13;
              goto LABEL_16;
            }

            v17 = [v13 firstObject];
            v14 = sub_100014370(v16, v17);

            if (v14)
            {
              goto LABEL_16;
            }

LABEL_17:
            v18 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_101311738();
            }

            v19 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v25 = v19;
              v26 = objc_opt_class();
              v27 = NSStringFromClass(v26);
              *buf = 67110146;
              v39 = v18;
              v40 = 2082;
              v41 = "[CRLPasteboardUIPasteboard stringsForPasteboardType:inItemSet:]";
              v42 = 2082;
              v43 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboard.m";
              v44 = 1024;
              v45 = 1287;
              v46 = 2114;
              v47 = v27;
              _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Failed to convert value from %{public}@ to NSString", buf, 0x2Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_101311760();
            }

            v20 = v10;
            v21 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v28 = v21;
              v29 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v39 = v18;
              v40 = 2114;
              v41 = v29;
              _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v14 = [NSString stringWithUTF8String:"[CRLPasteboardUIPasteboard stringsForPasteboardType:inItemSet:]"];
            v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboard.m"];
            v23 = objc_opt_class();
            v24 = NSStringFromClass(v23);
            [CRLAssertionHandler handleFailureInFunction:v14 file:v22 lineNumber:1287 isFatal:0 description:"Failed to convert value from %{public}@ to NSString", v24];

            v10 = v20;
            v7 = v32;
          }
        }

        v12 = v12 + 1;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v34 objects:v48 count:16];
      if (!v9)
      {
LABEL_29:

        v5 = v31;
        goto LABEL_31;
      }
    }
  }

  v33 = 0;
LABEL_31:

  return v33;
}

- (int64_t)clearContents
{
  [(CRLPasteboardUIPasteboard *)self invalidatePasteboardCache];
  v3 = [(CRLPasteboard *)self changeCount];
  [(UIPasteboard *)self->super._pasteboard setItems:&__NSArray0__struct];
  [(CRLPasteboardUIPasteboard *)self updateCachedChangeCount];
  return v3;
}

- (unint64_t)pasteboardItemMaxSize
{
  v3 = [(CRLPasteboard *)self name];
  v4 = [v3 isEqualToString:UIPasteboardNameGeneral];

  if (!v4)
  {
    return 0x1000000;
  }

  v6.receiver = self;
  v6.super_class = CRLPasteboardUIPasteboard;
  return [(CRLPasteboard *)&v6 pasteboardItemMaxSize];
}

- (void)invalidate
{
  v2 = [(CRLPasteboard *)self name];
  [UIPasteboard removePasteboardWithName:v2];
}

@end