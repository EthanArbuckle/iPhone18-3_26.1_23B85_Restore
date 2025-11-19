@interface CRLCanvasLayoutController
+ (Class)effectiveLayoutClassForInfo:(id)a3;
+ (void)temporaryLayoutControllerForInfos:(id)a3 useInBlock:(id)a4;
- (CGRect)rectOfTopLevelLayouts;
- (CRLBoardItemOwning)boardItemOwner;
- (CRLCanvas)canvas;
- (CRLCanvasLayoutController)initWithCanvas:(id)a3;
- (id)layoutForInfo:(id)a3;
- (id)layoutForInfo:(id)a3 childOfLayout:(id)a4;
- (id)layoutsForInfo:(id)a3;
- (id)layoutsForInfos:(id)a3;
- (id)sortLayoutsForDependencies:(id)a3;
- (id)validatedLayoutForInfo:(id)a3;
- (id)validatedLayoutForInfo:(id)a3 childOfLayout:(id)a4;
- (id)validatedLayoutsForInfo:(id)a3;
- (void)dealloc;
- (void)i_enumerateLayoutsUsingBlock:(id)a3;
- (void)i_registerLayout:(id)a3;
- (void)i_removeAllLayouts;
- (void)i_unregisterLayout:(id)a3;
- (void)invalidateChildrenOfLayout:(id)a3;
- (void)invalidateLayout:(id)a3;
- (void)invalidateLayoutForRecreation:(id)a3;
- (void)notifyThatLayoutsChangedOutsideOfLayout;
- (void)p_recreateLayoutsIfNeededToValidateLayouts:(id)a3;
- (void)p_validateLayouts:(id)a3 shouldMarkValidLayoutsThatDoNotWantValidation:(BOOL)a4;
- (void)setInfos:(id)a3;
- (void)validateLayoutWithDependencies:(id)a3;
- (void)validateLayouts;
- (void)validateLayoutsWithDependencies:(id)a3;
@end

@implementation CRLCanvasLayoutController

- (CRLCanvasLayoutController)initWithCanvas:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CRLCanvasLayoutController;
  v5 = [(CRLCanvasLayoutController *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_canvas, v4);
    v7 = [v4 rootLayoutClass];
    if (!v7)
    {
      v7 = objc_opt_class();
    }

    v8 = [[v7 alloc] initWithLayoutController:v6];
    rootLayout = v6->_rootLayout;
    v6->_rootLayout = v8;

    v10 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:512 capacity:0];
    layoutsByInfo = v6->_layoutsByInfo;
    v6->_layoutsByInfo = v10;

    v12 = objc_alloc_init(NSMutableSet);
    invalidLayouts = v6->_invalidLayouts;
    v6->_invalidLayouts = v12;

    v14 = objc_alloc_init(NSMutableSet);
    invalidChildrenLayouts = v6->_invalidChildrenLayouts;
    v6->_invalidChildrenLayouts = v14;

    v16 = objc_alloc_init(NSMutableSet);
    layoutsNeedingRecreating = v6->_layoutsNeedingRecreating;
    v6->_layoutsNeedingRecreating = v16;
  }

  return v6;
}

- (void)dealloc
{
  [(CRLCanvasAbstractLayout *)self->_rootLayout setChildren:&__NSArray0__struct];
  v3.receiver = self;
  v3.super_class = CRLCanvasLayoutController;
  [(CRLCanvasLayoutController *)&v3 dealloc];
}

- (CRLBoardItemOwning)boardItemOwner
{
  WeakRetained = objc_loadWeakRetained(&self->_canvas);
  v3 = [WeakRetained boardItemOwner];

  return v3;
}

+ (void)temporaryLayoutControllerForInfos:(id)a3 useInBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v11 = [[CRLCanvas alloc] initForTemporaryLayout];
  v7 = [[CRLCanvasLayoutControllerTemporaryCanvasDelegate alloc] initWithInfos:v6];
  [v11 setDelegate:v7];
  v8 = [v11 layoutController];
  [v8 setInfos:v6];

  v9 = [v11 layoutController];
  [v9 validateLayouts];

  v10 = [v11 layoutController];
  v5[2](v5, v10);

  [v11 teardown];
}

- (void)setInfos:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [(CRLCanvasLayoutController *)self layoutsForInfo:v11, v18];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 allObjects];
          [v5 addObjectsFromArray:v14];
        }

        else
        {
          v14 = [objc_alloc(objc_msgSend(objc_opt_class() effectiveLayoutClassForInfo:{v11)), "initWithInfo:", v11}];
          [v5 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [(CRLCanvasAbstractLayout *)self->_rootLayout children];
  v16 = [v15 isEqual:v5];

  if ((v16 & 1) == 0)
  {
    [(CRLCanvasAbstractLayout *)self->_rootLayout setChildren:v5];
    WeakRetained = objc_loadWeakRetained(&self->_canvas);
    [WeakRetained layoutInvalidated];
  }

  [v5 makeObjectsPerformSelector:{"updateChildrenFromInfo", v18}];
}

- (void)invalidateLayout:(id)a3
{
  if (self->_validatingLayout != a3)
  {
    invalidLayouts = self->_invalidLayouts;
    v6 = a3;
    [(NSMutableSet *)invalidLayouts addObject:v6];
    sub_1002637FC(v6);
    WeakRetained = objc_loadWeakRetained(&self->_canvas);
    [WeakRetained canvasInvalidatedForLayout:v6];
  }
}

- (void)invalidateChildrenOfLayout:(id)a3
{
  [(NSMutableSet *)self->_invalidChildrenLayouts addObject:a3];
  WeakRetained = objc_loadWeakRetained(&self->_canvas);
  [WeakRetained layoutInvalidated];
}

- (void)invalidateLayoutForRecreation:(id)a3
{
  [(NSMutableSet *)self->_layoutsNeedingRecreating addObject:a3];
  WeakRetained = objc_loadWeakRetained(&self->_canvas);
  [WeakRetained layoutInvalidated];
}

+ (Class)effectiveLayoutClassForInfo:(id)a3
{
  v3 = a3;
  if ([v3 isSupported])
  {
    v4 = [v3 layoutClass];
  }

  else
  {
    if (qword_101AD5A08 != -1)
    {
      sub_10135B8A0();
    }

    v5 = off_1019EDA60;
    if (os_log_type_enabled(off_1019EDA60, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Element is not supported: %@", &v8, 0xCu);
    }

    v4 = objc_opt_class();
  }

  v6 = v4;

  return v6;
}

- (id)layoutForInfo:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasLayoutController *)self layoutsForInfo:v4];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (!v8 || [*(*(&v14 + 1) + 8 * i) orderedBefore:v8])
        {
          v12 = v11;

          v8 = v12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)layoutsForInfo:(id)a3
{
  v3 = [(NSMapTable *)self->_layoutsByInfo objectForKey:a3];
  v4 = [v3 copy];

  return v4;
}

- (id)layoutsForInfos:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v4 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(CRLCanvasLayoutController *)self layoutForInfo:*(*(&v13 + 1) + 8 * i), v13];
        [v5 crl_addNonNilObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)layoutForInfo:(id)a3 childOfLayout:(id)a4
{
  v6 = a4;
  [(CRLCanvasLayoutController *)self layoutsForInfo:a3];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 parent];

        if (v12 == v6)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (CGRect)rectOfTopLevelLayouts
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [(CRLCanvasAbstractLayout *)self->_rootLayout children];
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        if ([v11 shouldBeIncludedInParentFrameForCulling])
        {
          [v11 frameForCulling];
          v13 = v12;
          v15 = v14;
          v17 = v16;
          v19 = v18;
          if ((sub_100122890() & 1) == 0)
          {
            x = sub_10011FC04(x, y, width, height, v13, v15, v17, v19);
            y = v20;
            width = v21;
            height = v22;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v8);
  }

  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (void)validateLayouts
{
  v2 = self;
  [(CRLCanvasLayoutController *)self p_recreateLayoutsIfNeededToValidateLayouts:0];
  v60 = v2;
  if ([(NSMutableSet *)v2->_invalidChildrenLayouts count])
  {
    v3 = [(NSMutableSet *)v2->_invalidChildrenLayouts copy];
    [(NSMutableSet *)v2->_invalidChildrenLayouts removeAllObjects];
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v69 objects:v89 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v70;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v70 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v69 + 1) + 8 * i) updateChildrenFromInfo];
        }

        v6 = [v4 countByEnumeratingWithState:&v69 objects:v89 count:16];
      }

      while (v6);
    }

    if ([(NSMutableSet *)v2->_invalidChildrenLayouts intersectsSet:v4])
    {
      v9 = [(NSMutableSet *)v2->_invalidChildrenLayouts mutableCopy];
      [v9 intersectSet:v4];
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v65 objects:v88 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v66;
        v14 = &stru_1018BCA28;
        do
        {
          v15 = 0;
          v16 = v14;
          do
          {
            if (*v66 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            v14 = [NSString stringWithFormat:@"%@, %@", v16, v18];

            ++v15;
            v16 = v14;
          }

          while (v12 != v15);
          v12 = [v10 countByEnumeratingWithState:&v65 objects:v88 count:16];
        }

        while (v12);
      }

      else
      {
        v14 = &stru_1018BCA28;
      }

      v19 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10135B8B4();
      }

      v20 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        *buf = 67110402;
        v74 = v19;
        v75 = 2082;
        v76 = "[CRLCanvasLayoutController validateLayouts]";
        v77 = 2082;
        v78 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayoutController.m";
        v79 = 1024;
        v80 = 290;
        v81 = 2114;
        v82 = v14;
        v83 = 2112;
        v84 = v10;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d one of these layouts had invalidateChildren while updating: %{public}@ %@", buf, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135B8DC();
      }

      v21 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v21);
      }

      v22 = [NSString stringWithUTF8String:"[CRLCanvasLayoutController validateLayouts]"];
      v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayoutController.m"];
      [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:290 isFatal:0 description:"one of these layouts had invalidateChildren while updating: %{public}@ %@", v14, v10];

      v2 = v60;
    }
  }

  if ([(NSMutableSet *)v2->_invalidLayouts count])
  {
    p_info = CRLiOSMultiSelectGestureRecognizer.info;
    do
    {
      v25 = p_info;
      v26 = [(NSMutableSet *)v2->_invalidLayouts copy];
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v27 = v26;
      v28 = [v27 countByEnumeratingWithState:&v61 objects:v87 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v62;
        do
        {
          for (j = 0; j != v29; j = j + 1)
          {
            if (*v62 != v30)
            {
              objc_enumerationMutation(v27);
            }

            [*(*(&v61 + 1) + 8 * j) i_willValidateLayout];
          }

          v29 = [v27 countByEnumeratingWithState:&v61 objects:v87 count:16];
        }

        while (v29);
      }

      p_info = v25;
      if (([(NSMutableSet *)v2->_invalidLayouts isSubsetOfSet:v27]& 1) == 0)
      {
        v32 = [(NSMutableSet *)v2->_invalidLayouts copy];
        [v32 minusSet:v27];
        v33 = [v32 crl_setByMappingObjectsUsingBlock:&stru_101859208];
        v34 = [v33 allObjects];
        v35 = [v34 componentsJoinedByString:{@", "}];

        v36 = [v25 + 206 _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10135B904();
        }

        v37 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          v52 = v37;
          v53 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v32 count]);
          *buf = 67110658;
          v74 = v36;
          v75 = 2082;
          v76 = "[CRLCanvasLayoutController validateLayouts]";
          v77 = 2082;
          v78 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayoutController.m";
          v79 = 1024;
          v80 = 310;
          v81 = 2114;
          v82 = v35;
          v83 = 2114;
          v84 = v53;
          v85 = 2112;
          v86 = v32;
          _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d a layout that was not about to be validated was invalidated as part of preparation for validation %{public}@ %{public}@, %@", buf, 0x40u);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10135B92C();
        }

        v38 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          v54 = v38;
          v55 = [v25 + 206 packedBacktraceString];
          *buf = 67109378;
          v74 = v36;
          v75 = 2114;
          v76 = v55;
          _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
        }

        v39 = [NSString stringWithUTF8String:"[CRLCanvasLayoutController validateLayouts]"];
        v40 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayoutController.m"];
        v41 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v32 count]);
        [p_info + 206 handleFailureInFunction:v39 file:v40 lineNumber:310 isFatal:0 description:{"a layout that was not about to be validated was invalidated as part of preparation for validation %{public}@ %{public}@, %@", v35, v41, v32}];

        v2 = v60;
      }

      [(CRLCanvasLayoutController *)v2 p_validateLayouts:v27 shouldMarkValidLayoutsThatDoNotWantValidation:1];
      if ([(NSMutableSet *)v2->_invalidLayouts intersectsSet:v27])
      {
        v42 = [(NSMutableSet *)v2->_invalidLayouts mutableCopy];
        [v42 intersectSet:v27];
        v43 = [v42 crl_setByMappingObjectsUsingBlock:&stru_101859268];
        v44 = [v43 allObjects];
        v45 = [v44 componentsJoinedByString:{@", "}];

        v46 = [p_info + 206 _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10135B954();
        }

        v47 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          v56 = v47;
          v57 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v42 count]);
          *buf = 67110658;
          v74 = v46;
          v75 = 2082;
          v76 = "[CRLCanvasLayoutController validateLayouts]";
          v77 = 2082;
          v78 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayoutController.m";
          v79 = 1024;
          v80 = 326;
          v81 = 2114;
          v82 = v45;
          v83 = 2114;
          v84 = v57;
          v85 = 2112;
          v86 = v42;
          _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d one of these layouts was invalidated while validating: %{public}@ %{public}@ %@", buf, 0x40u);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10135B97C();
        }

        v48 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          v58 = v48;
          v59 = [p_info + 206 packedBacktraceString];
          *buf = 67109378;
          v74 = v46;
          v75 = 2114;
          v76 = v59;
          _os_log_error_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
        }

        v49 = [NSString stringWithUTF8String:"[CRLCanvasLayoutController validateLayouts]"];
        v50 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayoutController.m"];
        v51 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v42 count]);
        [p_info + 206 handleFailureInFunction:v49 file:v50 lineNumber:326 isFatal:0 description:{"one of these layouts was invalidated while validating: %{public}@ %{public}@ %@", v45, v51, v42}];

        v2 = v60;
      }
    }

    while ([(NSMutableSet *)v2->_invalidLayouts count]);
  }
}

- (id)sortLayoutsForDependencies:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    if ([v3 count] == 1)
    {
      v4 = [v3 anyObject];
      v124 = v4;
      v68 = [NSArray arrayWithObjects:&v124 count:1];
    }

    else
    {
      v5 = [v3 mutableCopy];
      v68 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
      v6 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:512 capacity:{objc_msgSend(v3, "count")}];
      v71 = v3;
      v7 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:512 capacity:{objc_msgSend(v3, "count")}];
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v101 objects:v123 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v102;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v102 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v101 + 1) + 8 * i);
            v14 = +[NSMutableSet set];
            [v6 setObject:v14 forKey:v13];

            v15 = +[NSMutableSet set];
            [v7 setObject:v15 forKey:v13];
          }

          v10 = [v8 countByEnumeratingWithState:&v101 objects:v123 count:16];
        }

        while (v10);
      }

      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      obj = v8;
      v72 = [obj countByEnumeratingWithState:&v97 objects:v122 count:16];
      if (v72)
      {
        v70 = *v98;
        do
        {
          for (j = 0; j != v72; j = j + 1)
          {
            if (*v98 != v70)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v97 + 1) + 8 * j);
            v18 = [v17 dependentLayouts];
            v19 = [NSMutableSet setWithArray:v18];

            v20 = [v17 reliedOnLayouts];
            v21 = [NSMutableSet setWithSet:v20];

            [v21 intersectSet:v71];
            [v19 intersectSet:v71];
            v75 = [v7 objectForKey:v17];
            [v75 unionSet:v19];
            v95 = 0u;
            v96 = 0u;
            v93 = 0u;
            v94 = 0u;
            v22 = v21;
            v23 = [v22 countByEnumeratingWithState:&v93 objects:v121 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v94;
              do
              {
                for (k = 0; k != v24; k = k + 1)
                {
                  if (*v94 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = [v7 objectForKey:*(*(&v93 + 1) + 8 * k)];
                  [v27 addObject:v17];
                }

                v24 = [v22 countByEnumeratingWithState:&v93 objects:v121 count:16];
              }

              while (v24);
            }

            v73 = [v6 objectForKey:v17];
            [v73 unionSet:v22];
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            v28 = v19;
            v29 = [v28 countByEnumeratingWithState:&v89 objects:v120 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v90;
              do
              {
                for (m = 0; m != v30; m = m + 1)
                {
                  if (*v90 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v33 = [v6 objectForKey:*(*(&v89 + 1) + 8 * m)];
                  [v33 addObject:v17];
                }

                v30 = [v28 countByEnumeratingWithState:&v89 objects:v120 count:16];
              }

              while (v30);
            }
          }

          v72 = [obj countByEnumeratingWithState:&v97 objects:v122 count:16];
        }

        while (v72);
      }

      v34 = +[NSMutableSet set];
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v4 = obj;
      v35 = [v4 countByEnumeratingWithState:&v85 objects:v119 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v86;
        do
        {
          for (n = 0; n != v36; n = n + 1)
          {
            if (*v86 != v37)
            {
              objc_enumerationMutation(v4);
            }

            v39 = *(*(&v85 + 1) + 8 * n);
            v40 = [v6 objectForKey:v39];
            if (![v40 count])
            {
              [v34 addObject:v39];
            }
          }

          v36 = [v4 countByEnumeratingWithState:&v85 objects:v119 count:16];
        }

        while (v36);
      }

      if ([v4 count])
      {
        v74 = v4;
        while ([v34 count])
        {
          v41 = [v34 anyObject];
          [v34 removeObject:v41];
          [v4 removeObject:v41];
          [v68 addObject:v41];
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v42 = [v7 objectForKey:v41];
          v43 = [v42 countByEnumeratingWithState:&v77 objects:v105 count:16];
          if (v43)
          {
            v44 = v43;
            v45 = *v78;
            do
            {
              for (ii = 0; ii != v44; ii = ii + 1)
              {
                if (*v78 != v45)
                {
                  objc_enumerationMutation(v42);
                }

                v47 = *(*(&v77 + 1) + 8 * ii);
                v48 = [v6 objectForKey:v47];
                if ([v48 count] == 1)
                {
                  [v34 addObject:v47];
                }

                else
                {
                  [v48 removeObject:v41];
                }
              }

              v44 = [v42 countByEnumeratingWithState:&v77 objects:v105 count:16];
            }

            while (v44);
          }

          v4 = v74;
          if (![v74 count])
          {
            goto LABEL_75;
          }
        }

        v49 = +[NSMutableString string];
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v50 = v4;
        v51 = [v50 countByEnumeratingWithState:&v81 objects:v118 count:16];
        if (v51)
        {
          v52 = v51;
          v53 = 0;
          v54 = *v82;
          do
          {
            v55 = 0;
            v76 = v53;
            v56 = (v53 + 1);
            do
            {
              if (*v82 != v54)
              {
                objc_enumerationMutation(v50);
              }

              v57 = objc_opt_class();
              v58 = NSStringFromClass(v57);
              [v49 appendString:v58];

              if (v56 < [v50 count])
              {
                [v49 appendString:{@", "}];
              }

              ++v55;
              ++v56;
            }

            while (v52 != v55);
            v53 = &v52[v76];
            v52 = [v50 countByEnumeratingWithState:&v81 objects:v118 count:16];
          }

          while (v52);
        }

        v59 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_10135B9A4();
        }

        v60 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          v66 = v60;
          v67 = [v50 count];
          *buf = 67110402;
          v107 = v59;
          v108 = 2082;
          v109 = "[CRLCanvasLayoutController sortLayoutsForDependencies:]";
          v110 = 2082;
          v111 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayoutController.m";
          v112 = 1024;
          v113 = 400;
          v114 = 2048;
          v115 = v67;
          v116 = 2114;
          v117 = v49;
          _os_log_error_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Layout dependency loop. %lu total. %{public}@", buf, 0x36u);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_10135B9CC();
        }

        v61 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130EFC0(v61);
        }

        v62 = [NSString stringWithUTF8String:"[CRLCanvasLayoutController sortLayoutsForDependencies:]"];
        v63 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayoutController.m"];
        +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v62, v63, 400, 0, "Layout dependency loop. %lu total. %{public}@", [v50 count], v49);

        v64 = [v50 allObjects];
        [v68 addObjectsFromArray:v64];

        v4 = v74;
      }

LABEL_75:

      v3 = v71;
    }
  }

  else
  {
    v68 = &__NSArray0__struct;
  }

  return v68;
}

- (void)p_validateLayouts:(id)a3 shouldMarkValidLayoutsThatDoNotWantValidation:(BOOL)a4
{
  v6 = [(CRLCanvasLayoutController *)self sortLayoutsForDependencies:a3];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 shouldValidate])
        {
          objc_storeStrong(&self->_validatingLayout, v11);
          [v11 validate];
          validatingLayout = self->_validatingLayout;
          self->_validatingLayout = 0;

          [v11 i_didValidateLayout];
        }

        else if (!a4)
        {
          continue;
        }

        [(NSMutableSet *)self->_invalidLayouts removeObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)validateLayoutsWithDependencies:(id)a3
{
  v4 = a3;
  [(CRLCanvasLayoutController *)self p_recreateLayoutsIfNeededToValidateLayouts:v4];
  v27 = objc_alloc_init(NSMutableSet);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v4;
  v28 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v28)
  {
    v26 = *v34;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v33 + 1) + 8 * i);
        v7 = objc_alloc_init(NSMutableSet);
        do
        {
          [v7 removeAllObjects];
          [v6 recursivelyAddLayoutAndDependentLayoutsToValidateSet:v7];
          if (![(NSMutableSet *)self->_invalidChildrenLayouts count])
          {
            break;
          }

          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v8 = v7;
          v9 = [v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (!v9)
          {

            break;
          }

          v10 = v9;
          v11 = 0;
          v12 = *v30;
          do
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v30 != v12)
              {
                objc_enumerationMutation(v8);
              }

              v14 = *(*(&v29 + 1) + 8 * j);
              if ([(NSMutableSet *)self->_invalidChildrenLayouts containsObject:v14])
              {
                [v14 updateChildrenFromInfo];
                [(NSMutableSet *)self->_invalidChildrenLayouts removeObject:v14];
                [(NSMutableSet *)self->_invalidLayouts addObject:v14];
                v11 = 1;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v10);
        }

        while ((v11 & 1) != 0);
        v15 = [v6 rootLayout];
        v16 = [(CRLCanvasLayoutController *)self rootLayout];

        if (v15 == v16)
        {
          [v7 intersectSet:self->_invalidLayouts];
        }

        [v27 unionSet:v7];
      }

      v28 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v28);
  }

  [(CRLCanvasLayoutController *)self p_validateLayouts:v27 shouldMarkValidLayoutsThatDoNotWantValidation:0];
  WeakRetained = objc_loadWeakRetained(&self->_canvas);
  v18 = [WeakRetained delegate];
  if (!v18)
  {
    goto LABEL_27;
  }

  v19 = v18;
  v20 = objc_loadWeakRetained(&self->_canvas);
  v21 = [v20 delegate];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    WeakRetained = objc_loadWeakRetained(&self->_canvas);
    v23 = [WeakRetained delegate];
    v24 = objc_loadWeakRetained(&self->_canvas);
    [v23 canvasDidValidateLayoutsWithDependencies:v24];

LABEL_27:
  }
}

- (void)validateLayoutWithDependencies:(id)a3
{
  v4 = [NSSet setWithObject:a3];
  [(CRLCanvasLayoutController *)self validateLayoutsWithDependencies:v4];
}

- (id)validatedLayoutForInfo:(id)a3
{
  v3 = [(CRLCanvasLayoutController *)self validatedLayoutsForInfo:a3];
  v4 = [v3 anyObject];

  return v4;
}

- (id)validatedLayoutsForInfo:(id)a3
{
  v4 = a3;
  v5 = [(CRLCanvasLayoutController *)self layoutsForInfo:v4];
  if (!v5)
  {
    v6 = [objc_alloc(objc_msgSend(objc_opt_class() effectiveLayoutClassForInfo:{v4)), "initWithInfo:", v4}];
    if (v6)
    {
      v5 = [NSSet setWithObject:v6];
      [(CRLCanvasAbstractLayout *)self->_rootLayout addChild:v6];
      [(NSMutableSet *)self->_invalidChildrenLayouts addObject:v6];
      [(NSMutableSet *)self->_invalidLayouts addObject:v6];
    }

    else
    {
      v5 = 0;
    }
  }

  if ([v5 count] && -[NSMutableSet intersectsSet:](self->_invalidChildrenLayouts, "intersectsSet:", v5))
  {
    [v5 makeObjectsPerformSelector:"updateChildrenFromInfo"];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(NSMutableSet *)self->_invalidChildrenLayouts removeObject:*(*(&v22 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v9);
    }
  }

  if ([v5 count] && -[NSMutableSet intersectsSet:](self->_invalidLayouts, "intersectsSet:", v5))
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(CRLCanvasLayoutController *)self validateLayoutWithDependencies:*(*(&v18 + 1) + 8 * j), v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v14);
    }
  }

  return v5;
}

- (id)validatedLayoutForInfo:(id)a3 childOfLayout:(id)a4
{
  v6 = a4;
  [(CRLCanvasLayoutController *)self validatedLayoutsForInfo:a3];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 parent];

        if (v12 == v6)
        {
          v8 = v11;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

- (void)notifyThatLayoutsChangedOutsideOfLayout
{
  if (+[NSThread isMainThread])
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 postNotificationName:@"CRLCanvasLayoutsChangedForCanvasNotification" object:self];
  }

  else
  {
    Main = CFRunLoopGetMain();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10036813C;
    block[3] = &unk_10183AB38;
    block[4] = self;
    CFRunLoopPerformBlock(Main, kCFRunLoopCommonModes, block);
    CFRunLoopWakeUp(Main);
  }
}

- (void)i_registerLayout:(id)a3
{
  v7 = a3;
  [v7 willBeAddedToLayoutController:self];
  if (v7 && self->_layoutsByInfo)
  {
    v4 = [v7 info];
    if (v4)
    {
      v5 = [(NSMapTable *)self->_layoutsByInfo objectForKey:v4];
      if (!v5)
      {
        v5 = +[NSMutableSet set];
        [(NSMapTable *)self->_layoutsByInfo setObject:v5 forKey:v4];
      }

      [v5 addObject:v7];
      [(CRLCanvasLayoutChangeObserver *)self->_layoutRegistrationObserver i_layoutRegistered:v7];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_canvas);
  [WeakRetained layoutInvalidated];
}

- (void)i_unregisterLayout:(id)a3
{
  v8 = a3;
  [v8 willBeRemovedFromLayoutController:self];
  if (v8 && self->_layoutsByInfo)
  {
    v4 = [v8 info];
    if (v4)
    {
      v5 = [(NSMapTable *)self->_layoutsByInfo objectForKey:v4];
      v6 = v5;
      if (v5)
      {
        [v5 removeObject:v8];
        if (![v6 count])
        {
          [(NSMapTable *)self->_layoutsByInfo removeObjectForKey:v4];
        }
      }

      [(CRLCanvasLayoutChangeObserver *)self->_layoutRegistrationObserver i_layoutUnregistered:v8];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_canvas);
  [WeakRetained layoutInvalidated];

  [(NSMutableSet *)self->_invalidLayouts removeObject:v8];
  [(NSMutableSet *)self->_invalidChildrenLayouts removeObject:v8];
}

- (void)i_removeAllLayouts
{
  [(CRLCanvasAbstractLayout *)self->_rootLayout setChildren:&__NSArray0__struct];
  [(NSMapTable *)self->_layoutsByInfo removeAllObjects];
  [(NSMutableSet *)self->_invalidLayouts removeAllObjects];
  invalidChildrenLayouts = self->_invalidChildrenLayouts;

  [(NSMutableSet *)invalidChildrenLayouts removeAllObjects];
}

- (void)i_enumerateLayoutsUsingBlock:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMapTable *)self->_layoutsByInfo objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_100368540;
        v11[3] = &unk_101859310;
        v12 = v4;
        [v10 enumerateObjectsUsingBlock:v11];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)p_recreateLayoutsIfNeededToValidateLayouts:(id)a3
{
  v4 = a3;
  if ([(NSMutableSet *)self->_layoutsNeedingRecreating count])
  {
    if ([v4 intersectsSet:self->_layoutsNeedingRecreating])
    {
      v5 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10135B9F4();
      }

      v6 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10135BA08(v5, v6);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_10135BAB4();
      }

      v7 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EFC0(v7);
      }

      v8 = [NSString stringWithUTF8String:"[CRLCanvasLayoutController p_recreateLayoutsIfNeededToValidateLayouts:]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasLayoutController.m"];
      [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:637 isFatal:0 description:"Shouldn't be validating layouts that need recreating"];
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = self->_layoutsNeedingRecreating;
    v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = objc_opt_class();
          v17 = [v15 info];
          v18 = objc_alloc([v16 effectiveLayoutClassForInfo:v17]);
          v19 = [v15 info];
          v20 = [v18 initWithInfo:v19];

          [(NSMutableSet *)self->_invalidLayouts removeObject:v15];
          [(NSMutableSet *)self->_invalidLayouts addObject:v20];
          v21 = [v15 parent];
          [v21 replaceChild:v15 with:v20];

          [(CRLCanvasLayoutController *)self invalidateChildrenOfLayout:v20];
        }

        v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    [(NSMutableSet *)self->_layoutsNeedingRecreating removeAllObjects];
  }
}

- (CRLCanvas)canvas
{
  WeakRetained = objc_loadWeakRetained(&self->_canvas);

  return WeakRetained;
}

@end