@interface PKTextInputElementsController
- (id)initWithContainerView:(id *)view;
- (void)flushDiscoveredElements;
- (void)reportDebugStateDescription:(id)description;
- (void)updateTextInputElementsWithReferenceHitPoint:(void *)point referenceSearchArea:(CGFloat)area referenceCoordSpace:(CGFloat)space completion:(CGFloat)x;
@end

@implementation PKTextInputElementsController

- (id)initWithContainerView:(id *)view
{
  v3 = a2;
  if (view)
  {
    v9.receiver = view;
    v9.super_class = PKTextInputElementsController;
    v4 = objc_msgSendSuper2(&v9, sel_init);
    view = v4;
    if (v4)
    {
      v5 = v4[5];
      v4[5] = MEMORY[0x1E695E0F8];

      distantPast = [MEMORY[0x1E695DF00] distantPast];
      [distantPast timeIntervalSinceReferenceDate];
      view[6] = v7;

      objc_storeWeak(view + 7, v3);
    }
  }

  return view;
}

- (void)updateTextInputElementsWithReferenceHitPoint:(void *)point referenceSearchArea:(CGFloat)area referenceCoordSpace:(CGFloat)space completion:(CGFloat)x
{
  v61 = *MEMORY[0x1E69E9840];
  v17 = a2;
  pointCopy = point;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 56));
    window = [WeakRetained window];
    windowScene = [window windowScene];
    _visibleWindows = [windowScene _visibleWindows];

    v23 = MEMORY[0x1E695E0F0];
    if (_visibleWindows)
    {
      v23 = _visibleWindows;
    }

    v24 = v23;

    v25 = [[PKTextInputElementsFinder alloc] initWithWindowsToSearch:v24];
    v26 = *(self + 16) + 1;
    *(self + 16) = v26;
    [*(self + 40) allValues];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v27 = v55 = 0u;
    v28 = [v27 countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v28)
    {
      v29 = v28;
      v46 = v24;
      v47 = pointCopy;
      v30 = *v53;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v53 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v52 + 1) + 8 * i);
          coordinateSpace = [(PKTextInputElement *)v32 coordinateSpace];
          if ([(PKTextInputElement *)v32 isFocused])
          {
            v34 = coordinateSpace == 0;
          }

          else
          {
            v34 = 1;
          }

          if (!v34)
          {
            frame = [(PKTextInputElement *)v32 frame];
            v64.origin.x = PK_convertRectFromCoordinateSpaceToCoordinateSpace(coordinateSpace, v17, frame, v36, v37, v38);
            v64.origin.y = v39;
            v64.size.width = v40;
            v64.size.height = v41;
            v62.origin.x = x;
            v62.origin.y = y;
            v62.size.width = width;
            v62.size.height = height;
            v63 = CGRectUnion(v62, v64);
            x = v63.origin.x;
            y = v63.origin.y;
            width = v63.size.width;
            height = v63.size.height;

            goto LABEL_16;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v29);
LABEL_16:
      v24 = v46;
      pointCopy = v47;
    }

    v42 = os_log_create("com.apple.pencilkit", "PencilTextInput");
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      selfCopy = self;
      v58 = 2048;
      v59 = v25;
      _os_log_debug_impl(&dword_1C7CCA000, v42, OS_LOG_TYPE_DEBUG, "ElementsController %p will begin elementsFinder findAvailableTextInputElements %p", buf, 0x16u);
    }

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __129__PKTextInputElementsController_updateTextInputElementsWithReferenceHitPoint_referenceSearchArea_referenceCoordSpace_completion___block_invoke;
    v48[3] = &unk_1E82D68B8;
    v51 = v26;
    v48[4] = self;
    v49 = v25;
    v43 = pointCopy;
    v50 = v43;
    v44 = v25;
    v45 = v44;
    if (v44)
    {
      [(PKTextInputElementsFinder *)v44 _findAvailableTextInputElementsWithReusableElements:v27 referenceHitPoint:v17 referenceSearchArea:0 referenceCoordSpace:v48 nearPointOnly:area completion:space, x, y, width, height];
      v43 = v50;
    }
  }
}

void __129__PKTextInputElementsController_updateTextInputElementsWithReferenceHitPoint_referenceSearchArea_referenceCoordSpace_completion___block_invoke(void *a1, void *a2, int a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  v7 = a1[4];
  if (a1[7] > *(v7 + 24))
  {
    v38 = a3;
    v39 = v5;
    v8 = v5;
    v9 = [MEMORY[0x1E695DF90] dictionary];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v40 objects:buf count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v41;
      do
      {
        v14 = 0;
        do
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v40 + 1) + 8 * v14);
          if (v15)
          {
            v16 = *(v15 + 112);
          }

          else
          {
            v16 = 0;
          }

          v17 = v16;

          if (!v17)
          {
            v18 = [MEMORY[0x1E696AD98] numberWithInteger:*(v7 + 8)];
            v19 = v18;
            if (v15)
            {
              v20 = [v18 copy];
              v21 = *(v15 + 112);
              *(v15 + 112) = v20;
            }

            ++*(v7 + 8);
          }

          if (v15)
          {
            v22 = *(v15 + 112);
          }

          else
          {
            v22 = 0;
          }

          v23 = v22;
          [v9 setObject:v15 forKeyedSubscript:v23];

          ++v14;
        }

        while (v12 != v14);
        v24 = [v10 countByEnumeratingWithState:&v40 objects:buf count:16];
        v12 = v24;
      }

      while (v24);
    }

    v25 = v9;
    v26 = v25;
    if (*(v7 + 40) != v25)
    {
      v27 = [v25 copy];
      v28 = *(v7 + 40);
      *(v7 + 40) = v27;

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      *(v7 + 48) = v29;
      WeakRetained = objc_loadWeakRetained((v7 + 32));
      [WeakRetained elementsControllerLastDiscoveredElementsDidChange:v7];

      +[PKTextInputDebugStateIntrospector debugStateDidChange];
    }

    *(a1[4] + 24) = a1[7];
    v6 = v39;
    a3 = v38;
  }

  v31 = os_log_create("com.apple.pencilkit", "PencilTextInput");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v34 = a1[4];
    v33 = a1[5];
    if (v34)
    {
      v35 = *(v34 + 40);
    }

    else
    {
      v35 = 0;
    }

    v36 = [v35 count];
    v37 = @"No";
    *buf = 134218754;
    v45 = v34;
    v46 = 2048;
    if (a3)
    {
      v37 = @"Yes";
    }

    v47 = v33;
    v48 = 2048;
    v49 = v36;
    v50 = 2112;
    v51 = v37;
    _os_log_debug_impl(&dword_1C7CCA000, v31, OS_LOG_TYPE_DEBUG, "ElementsController %p finished elementsFinder findAvailableTextInputElements %p, found %ld elements, timed out: %@", buf, 0x2Au);
  }

  v32 = a1[6];
  if (v32)
  {
    (*(v32 + 16))();
  }
}

- (void)flushDiscoveredElements
{
  if (self)
  {
    v2 = *(self + 40);
    *(self + 40) = MEMORY[0x1E695E0F8];

    distantPast = [MEMORY[0x1E695DF00] distantPast];
    [distantPast timeIntervalSinceReferenceDate];
    *(self + 48) = v3;
  }
}

- (void)reportDebugStateDescription:(id)description
{
  descriptionCopy = description;
  array = [MEMORY[0x1E695DF70] array];
  if (self)
  {
    lastDiscoveredElementsByUniqueID = self->_lastDiscoveredElementsByUniqueID;
  }

  else
  {
    lastDiscoveredElementsByUniqueID = 0;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__PKTextInputElementsController_reportDebugStateDescription___block_invoke;
  v15[3] = &unk_1E82D68E0;
  v15[4] = self;
  v7 = array;
  v16 = v7;
  [(NSDictionary *)lastDiscoveredElementsByUniqueID enumerateKeysAndObjectsUsingBlock:v15];
  [v7 sortUsingSelector:sel_compare_];
  v8 = MEMORY[0x1E696AEC0];
  v9 = [v7 componentsJoinedByString:@"\n"];
  v10 = [v8 stringWithFormat:@"\n%@", v9];

  descriptionCopy[2](descriptionCopy, @"lastDiscoveredElements", v10);
  if (self)
  {
    lastDiscoveredElementsUpdateTime = self->_lastDiscoveredElementsUpdateTime;
  }

  else
  {
    lastDiscoveredElementsUpdateTime = 0.0;
  }

  v12 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:lastDiscoveredElementsUpdateTime];
  v13 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v13 setDateFormat:@"HH:mm:ss.SSS"];
  v14 = [v13 stringFromDate:v12];
  descriptionCopy[2](descriptionCopy, @"lastDiscoveredElementsTime", v14);
}

void __61__PKTextInputElementsController_reportDebugStateDescription___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = a2;
  v5 = a3;
  v6 = [(PKTextInputElement *)v5 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(PKTextInputElement *)v5 coordinateSpace];
  v14 = *(a1 + 32);
  if (v14)
  {
    WeakRetained = objc_loadWeakRetained((v14 + 56));
  }

  else
  {
    WeakRetained = 0;
  }

  v16 = [WeakRetained window];
  v17 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v13, v16, v6, v8, v10, v12);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v32.origin.x = v17;
  v32.origin.y = v19;
  v32.size.width = v21;
  v32.size.height = v23;
  v24 = NSStringFromCGRect(v32);
  v25 = [(PKTextInputElement *)v5 referenceView];
  if (v25)
  {
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
  }

  else
  {
    v27 = &stru_1F476BD20;
  }

  v28 = *(a1 + 40);
  v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"  %@: %@ %@", v30, v27, v24];
  [v28 addObject:v29];
}

@end