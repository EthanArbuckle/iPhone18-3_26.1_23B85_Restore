@interface CRLInteractiveCanvasRepLayerPile
- (BOOL)isContentEqualToContentOfRepContentPile:(id)a3;
- (CRLInteractiveCanvasRepLayerPile)init;
- (NSArray)contentLayers;
- (NSString)description;
- (id)newRepLayerPileByTransferringAndCloningParentLayers:(id *)a3 reusingPreviouslyClonedLayers:(id)a4;
- (void)addLayer:(id)a3;
- (void)mutateLayersUsingBlock:(id)a3;
- (void)popParentLayer;
- (void)pushParentLayer:(id)a3;
@end

@implementation CRLInteractiveCanvasRepLayerPile

- (CRLInteractiveCanvasRepLayerPile)init
{
  v6.receiver = self;
  v6.super_class = CRLInteractiveCanvasRepLayerPile;
  v2 = [(CRLInteractiveCanvasRepLayerPile *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableOrderedSet);
    topLevelLayers = v2->_topLevelLayers;
    v2->_topLevelLayers = v3;
  }

  return v2;
}

- (NSString)description
{
  v3 = objc_alloc_init(NSMutableString);
  objc_msgSend(v3, "appendString:", @"(\n");
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_parentLayerAndChildLayersStack;
  v20 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v20)
  {
    v19 = *v27;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v26 + 1) + 8 * i);
        v6 = objc_alloc_init(NSMutableArray);
        v21 = v5;
        v7 = [v5 first];
        if (v7)
        {
          do
          {
            [v6 insertObject:v7 atIndex:0];
            if (([(NSMutableOrderedSet *)self->_topLevelLayers containsObject:v7]& 1) != 0)
            {
              break;
            }

            v8 = [v7 superlayer];

            v7 = v8;
          }

          while (v8);
        }

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = v6;
        v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v23;
          do
          {
            v13 = 0;
            v14 = v7;
            do
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v7 = *(*(&v22 + 1) + 8 * v13);

              [v3 appendFormat:@"%@/", v7];
              v13 = v13 + 1;
              v14 = v7;
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v11);
        }

        v15 = [v21 second];
        [v3 appendFormat:@" -> %@\n", v15];
      }

      v20 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v20);
  }

  [v3 appendString:@""]);
  v16 = [NSString stringWithFormat:@"<%@ %p\n_topLevelLayers=%@\n_parentLayerAndChildLayersStack=%@>", objc_opt_class(), self, self->_topLevelLayers, v3];

  return v16;
}

- (void)addLayer:(id)a3
{
  v7 = a3;
  v4 = [(NSMutableArray *)self->_parentLayerAndChildLayersStack lastObject];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 second];
    [v6 addObject:v7];
  }

  else
  {
    [(NSMutableOrderedSet *)self->_topLevelLayers addObject:v7];
  }
}

- (void)mutateLayersUsingBlock:(id)a3
{
  parentLayerAndChildLayersStack = self->_parentLayerAndChildLayersStack;
  v5 = a3;
  v6 = [(NSMutableArray *)parentLayerAndChildLayersStack lastObject];
  v9 = v6;
  if (v6)
  {
    v7 = [v6 second];
    v5[2](v5, v7);
  }

  else
  {
    v8 = [(NSMutableOrderedSet *)self->_topLevelLayers array];
    v7 = [v8 mutableCopy];

    v5[2](v5, v7);
    [(NSMutableOrderedSet *)self->_topLevelLayers removeAllObjects];
    [(NSMutableOrderedSet *)self->_topLevelLayers addObjectsFromArray:v7];
  }
}

- (void)pushParentLayer:(id)a3
{
  v10 = a3;
  parentLayerAndChildLayersStack = self->_parentLayerAndChildLayersStack;
  if (!parentLayerAndChildLayersStack)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = self->_parentLayerAndChildLayersStack;
    self->_parentLayerAndChildLayersStack = v5;

    parentLayerAndChildLayersStack = self->_parentLayerAndChildLayersStack;
  }

  v7 = [CRLPair alloc];
  v8 = objc_alloc_init(NSMutableArray);
  v9 = [(CRLPair *)v7 initWithFirst:v10 second:v8];
  [(NSMutableArray *)parentLayerAndChildLayersStack addObject:v9];
}

- (void)popParentLayer
{
  v3 = [(NSMutableArray *)self->_parentLayerAndChildLayersStack lastObject];
  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101382FBC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101382FD0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101383060();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepLayerPile popParentLayer]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentPile.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:102 isFatal:0 description:"popParentLayer called without matching pushParentLayer:"];
  }

  v7 = [v3 first];
  if (!v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101383088();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013830B0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10138315C();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepLayerPile popParentLayer]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentPile.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:105 isFatal:0 description:"invalid nil value for '%{public}s'", "parentLayer"];
  }

  v11 = [v3 second];
  if (!v11)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101383184();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013831AC();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101383258();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepLayerPile popParentLayer]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentPile.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:107 isFatal:0 description:"invalid nil value for '%{public}s'", "childLayers"];
  }

  [v7 crl_tilingSafeSetSublayers:v11];
  [(NSMutableArray *)self->_parentLayerAndChildLayersStack removeLastObject];
}

- (id)newRepLayerPileByTransferringAndCloningParentLayers:(id *)a3 reusingPreviouslyClonedLayers:(id)a4
{
  v6 = a4;
  v70 = objc_alloc_init(CRLInteractiveCanvasRepLayerPile);
  v7 = [[NSMutableArray alloc] initWithCapacity:0];
  if ([(NSMutableArray *)self->_parentLayerAndChildLayersStack count])
  {
    v66 = a3;
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_1004C128C;
    v77[3] = &unk_1018686C0;
    v63 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:512 capacity:0];
    v77[4] = v63;
    v65 = v6;
    v78 = v6;
    v79 = v7;
    v64 = v7;
    v8 = objc_retainBlock(v77);
    v9 = [(NSMutableOrderedSet *)self->_topLevelLayers lastObject];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = self->_parentLayerAndChildLayersStack;
    v69 = [(NSMutableArray *)obj countByEnumeratingWithState:&v73 objects:v91 count:16];
    if (v69)
    {
      v68 = *v74;
      v10 = &_s10Foundation9IndexPathVSHAAMc_ptr;
      do
      {
        v11 = 0;
        v12 = v9;
        do
        {
          if (*v74 != v68)
          {
            objc_enumerationMutation(obj);
          }

          v72 = v11;
          v13 = *(*(&v73 + 1) + 8 * v11);
          if (v12)
          {
            v14 = (v8[2])(v8, v12);
            [(CRLInteractiveCanvasRepLayerPile *)v70 addLayer:v14];
          }

          else
          {
            v15 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_101383280();
            }

            v16 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67110146;
              v82 = v15;
              v83 = 2082;
              v84 = "[CRLInteractiveCanvasRepLayerPile newRepLayerPileByTransferringAndCloningParentLayers:reusingPreviouslyClonedLayers:]";
              v85 = 2082;
              v86 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentPile.m";
              v87 = 1024;
              v88 = 173;
              v89 = 2082;
              v90 = "pushedParentLayer";
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_1013832A8();
            }

            v17 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v50 = v17;
              v51 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v82 = v15;
              v83 = 2114;
              v84 = v51;
              _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v14 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepLayerPile newRepLayerPileByTransferringAndCloningParentLayers:reusingPreviouslyClonedLayers:]"];
            v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentPile.m"];
            [CRLAssertionHandler handleFailureInFunction:v14 file:v18 lineNumber:173 isFatal:0 description:"invalid nil value for '%{public}s'", "pushedParentLayer"];
          }

          v19 = [v13 first];
          if (!v19)
          {
            v20 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_1013832D0();
            }

            v21 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67110146;
              v82 = v20;
              v83 = 2082;
              v84 = "[CRLInteractiveCanvasRepLayerPile newRepLayerPileByTransferringAndCloningParentLayers:reusingPreviouslyClonedLayers:]";
              v85 = 2082;
              v86 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentPile.m";
              v87 = 1024;
              v88 = 179;
              v89 = 2082;
              v90 = "parentLayer";
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_1013832F8();
            }

            v22 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v52 = v22;
              v53 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v82 = v20;
              v83 = 2114;
              v84 = v53;
              _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v23 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepLayerPile newRepLayerPileByTransferringAndCloningParentLayers:reusingPreviouslyClonedLayers:]"];
            v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentPile.m"];
            [CRLAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:179 isFatal:0 description:"invalid nil value for '%{public}s'", "parentLayer"];
          }

          v71 = [v13 second];
          if (!v71)
          {
            v25 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_101383320();
            }

            v26 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67110146;
              v82 = v25;
              v83 = 2082;
              v84 = "[CRLInteractiveCanvasRepLayerPile newRepLayerPileByTransferringAndCloningParentLayers:reusingPreviouslyClonedLayers:]";
              v85 = 2082;
              v86 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentPile.m";
              v87 = 1024;
              v88 = 181;
              v89 = 2082;
              v90 = "childLayers";
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d invalid nil value for '%{public}s'", buf, 0x2Cu);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_101383348();
            }

            v27 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v54 = v27;
              v55 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v82 = v25;
              v83 = 2114;
              v84 = v55;
              _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v28 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepLayerPile newRepLayerPileByTransferringAndCloningParentLayers:reusingPreviouslyClonedLayers:]"];
            v29 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentPile.m"];
            [CRLAssertionHandler handleFailureInFunction:v28 file:v29 lineNumber:181 isFatal:0 description:"invalid nil value for '%{public}s'", "childLayers"];
          }

          v30 = v19;
          v31 = v30;
          v32 = v30;
          if (v30 != v12)
          {
            v33 = v30;
            do
            {
              v34 = (v8[2])(v8, v33);
              v32 = [v33 superlayer];
              if (!v32)
              {
                v35 = +[CRLAssertionHandler _atomicIncrementAssertCount];
                if (qword_101AD5A10 != -1)
                {
                  sub_101383370();
                }

                v36 = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109890;
                  v82 = v35;
                  v83 = 2082;
                  v84 = "[CRLInteractiveCanvasRepLayerPile newRepLayerPileByTransferringAndCloningParentLayers:reusingPreviouslyClonedLayers:]";
                  v85 = 2082;
                  v86 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentPile.m";
                  v87 = 1024;
                  v88 = 201;
                  _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Each pushed parent layer should be a descendant of the last pushed parent layer (or top level layer if no other parent layers are pushed).", buf, 0x22u);
                }

                if (qword_101AD5A10 != -1)
                {
                  sub_101383398();
                }

                v37 = off_1019EDA68;
                if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
                {
                  v42 = v37;
                  v43 = +[CRLAssertionHandler packedBacktraceString];
                  *buf = 67109378;
                  v82 = v35;
                  v83 = 2114;
                  v84 = v43;
                  _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
                }

                v38 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepLayerPile newRepLayerPileByTransferringAndCloningParentLayers:reusingPreviouslyClonedLayers:]"];
                v39 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentPile.m"];
                [CRLAssertionHandler handleFailureInFunction:v38 file:v39 lineNumber:201 isFatal:0 description:"Each pushed parent layer should be a descendant of the last pushed parent layer (or top level layer if no other parent layers are pushed)."];

                v10 = &_s10Foundation9IndexPathVSHAAMc_ptr;
              }

              v40 = (v8[2])(v8, v32);
              v80 = v34;
              v41 = [v10[412] arrayWithObjects:&v80 count:1];
              [v40 setSublayers:v41];

              v33 = v32;
            }

            while (v32 != v12);
          }

          if (!v32)
          {
            v44 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_1013833C0();
            }

            v45 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109890;
              v82 = v44;
              v83 = 2082;
              v84 = "[CRLInteractiveCanvasRepLayerPile newRepLayerPileByTransferringAndCloningParentLayers:reusingPreviouslyClonedLayers:]";
              v85 = 2082;
              v86 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentPile.m";
              v87 = 1024;
              v88 = 208;
              _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Cloned rep layer pile contained a pushed parent layer that was not descendent of a top level layer.", buf, 0x22u);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_1013833E8();
            }

            v46 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              v56 = v46;
              v57 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v82 = v44;
              v83 = 2114;
              v84 = v57;
              _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v47 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepLayerPile newRepLayerPileByTransferringAndCloningParentLayers:reusingPreviouslyClonedLayers:]"];
            v48 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentPile.m"];
            [CRLAssertionHandler handleFailureInFunction:v47 file:v48 lineNumber:208 isFatal:0 description:"Cloned rep layer pile contained a pushed parent layer that was not descendent of a top level layer."];
          }

          v49 = (v8[2])(v8, v31);
          [(CRLInteractiveCanvasRepLayerPile *)v70 pushParentLayer:v49];

          v9 = [v71 lastObject];

          v11 = v72 + 1;
          v12 = v9;
        }

        while ((v72 + 1) != v69);
        v69 = [(NSMutableArray *)obj countByEnumeratingWithState:&v73 objects:v91 count:16];
      }

      while (v69);
    }

    while ([(NSMutableArray *)self->_parentLayerAndChildLayersStack count])
    {
      [(CRLInteractiveCanvasRepLayerPile *)self popParentLayer];
    }

    a3 = v66;
    if ([(NSMutableOrderedSet *)v70->_topLevelLayers count]!= 1)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101383410();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101383438();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013834C8();
      }

      v58 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v58);
      }

      v59 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepLayerPile newRepLayerPileByTransferringAndCloningParentLayers:reusingPreviouslyClonedLayers:]"];
      v60 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentPile.m"];
      [CRLAssertionHandler handleFailureInFunction:v59 file:v60 lineNumber:219 isFatal:0 description:"A cloned parent layer hierarchy should contain only one top level layer."];
    }

    v7 = v64;
    v6 = v65;
  }

  if (a3)
  {
    v61 = v7;
    *a3 = v7;
  }

  return v70;
}

- (BOOL)isContentEqualToContentOfRepContentPile:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
  v5 = objc_opt_class();
  v6 = sub_100014370(v5, v4);

  if (v6)
  {
    v7 = [(NSMutableOrderedSet *)self->_topLevelLayers isEqualToOrderedSet:v6[1]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)contentLayers
{
  if ([(NSMutableArray *)self->_parentLayerAndChildLayersStack count])
  {
    v3 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013834F0();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      parentLayerAndChildLayersStack = self->_parentLayerAndChildLayersStack;
      v11 = v4;
      *buf = 67110402;
      v13 = v3;
      v14 = 2082;
      v15 = "[CRLInteractiveCanvasRepLayerPile contentLayers]";
      v16 = 2082;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentPile.m";
      v18 = 1024;
      v19 = 243;
      v20 = 2048;
      v21 = self;
      v22 = 2048;
      v23 = [(NSMutableArray *)parentLayerAndChildLayersStack count];
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Should not attempt to access content layers in %p when some (%lu) parent layers are still pushed, since the returned layers may not represent a complete layer hierarchy.", buf, 0x36u);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101383504();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v5);
    }

    v6 = [NSString stringWithUTF8String:"[CRLInteractiveCanvasRepLayerPile contentLayers]"];
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLInteractiveCanvasRepContentPile.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:243 isFatal:0 description:"Should not attempt to access content layers in %p when some (%lu) parent layers are still pushed, since the returned layers may not represent a complete layer hierarchy.", self, [(NSMutableArray *)self->_parentLayerAndChildLayersStack count]];
  }

  v8 = [(NSMutableOrderedSet *)self->_topLevelLayers array];

  return v8;
}

@end