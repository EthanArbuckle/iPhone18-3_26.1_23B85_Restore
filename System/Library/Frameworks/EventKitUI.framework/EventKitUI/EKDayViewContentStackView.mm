@interface EKDayViewContentStackView
- (EKDayViewContentStackView)init;
- (void)updateWithRows:(id)rows;
@end

@implementation EKDayViewContentStackView

- (EKDayViewContentStackView)init
{
  v8.receiver = self;
  v8.super_class = EKDayViewContentStackView;
  v2 = [(EKDayViewContentStackView *)&v8 init];
  if (v2)
  {
    v3 = *(MEMORY[0x1E695E9D8] + 16);
    *&v7.version = *MEMORY[0x1E695E9D8];
    *&v7.release = v3;
    v7.equal = equalCallbackForPointerEquality;
    v7.hash = hashCallbackForPointerHash;
    v4 = CFDictionaryCreateMutable(0, 0, &v7, MEMORY[0x1E695E9E8]);
    currentItems = v2->_currentItems;
    v2->_currentItems = v4;
  }

  return v2;
}

- (void)updateWithRows:(id)rows
{
  v66 = *MEMORY[0x1E69E9840];
  rowsCopy = rows;
  allKeys = [(NSMutableDictionary *)self->_currentItems allKeys];
  v5 = pointerEqualitySetWithObjects(allKeys);

  v6 = pointerEqualitySetWithObjects(rowsCopy);
  [v5 minusSet:v6];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (v7)
  {
    v8 = *v61;
    v9 = MEMORY[0x1E69E9820];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v61 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v60 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_currentItems objectForKey:v11];
        if (v12)
        {
          CFDictionaryRemoveValue(self->_currentItems, v11);
          [v11 setBackgroundChangedCallback:0];
          v13 = MEMORY[0x1E69DD250];
          v58[0] = v9;
          v58[1] = 3221225472;
          v58[2] = __44__EKDayViewContentStackView_updateWithRows___block_invoke;
          v58[3] = &unk_1E843EC60;
          v59 = v12;
          v56[0] = v9;
          v56[1] = 3221225472;
          v56[2] = __44__EKDayViewContentStackView_updateWithRows___block_invoke_2;
          v56[3] = &unk_1E843EC10;
          v57 = v59;
          [v13 animateWithDuration:v58 animations:v56 completion:0.1];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
    }

    while (v7);
  }

  v55 = 0u;
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  v43 = rowsCopy;
  v14 = [v43 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v14)
  {
    v46 = *v53;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v53 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v16 = *(*(&v52 + 1) + 8 * j);
        v17 = [(NSMutableDictionary *)self->_currentItems objectForKey:v16];
        view = [v16 view];
        v19 = view;
        if (v17)
        {
          [view frame];
          v21 = v20;
          [(EKDayViewContentStackView *)self frame];
          v23 = v22;
          [(EKDayViewContentStackView *)self bounds];
          v25 = v24;
          view2 = [v16 view];
          [view2 frame];
          v28 = v27;
          [(EKDayViewContentStackView *)self bounds];
          [v17 setFrame:{v21 - v23, v25, v28}];

          image = v19;
        }

        else
        {
          backgroundViewForEventIndicator = [view backgroundViewForEventIndicator];
          image = [backgroundViewForEventIndicator image];

          v31 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:image];
          objc_initWeak(&location, v31);
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __44__EKDayViewContentStackView_updateWithRows___block_invoke_3;
          v49[3] = &unk_1E843EE60;
          objc_copyWeak(&v50, &location);
          [v16 setBackgroundChangedCallback:v49];
          [v31 setAlpha:0.0];
          [v31 setClipsToBounds:1];
          view3 = [v16 view];
          [view3 frame];
          v34 = v33;
          [(EKDayViewContentStackView *)self frame];
          v36 = v35;
          [(EKDayViewContentStackView *)self bounds];
          v38 = v37;
          view4 = [v16 view];
          [view4 frame];
          v41 = v40;
          [(EKDayViewContentStackView *)self bounds];
          [v31 setFrame:{v34 - v36, v38, v41}];

          [(EKDayViewContentStackView *)self addSubview:v31];
          CFDictionarySetValue(self->_currentItems, v16, v31);
          v42 = MEMORY[0x1E69DD250];
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __44__EKDayViewContentStackView_updateWithRows___block_invoke_4;
          v47[3] = &unk_1E843EC60;
          v17 = v31;
          v48 = v17;
          [v42 animateWithDuration:v47 animations:0.2];

          objc_destroyWeak(&v50);
          objc_destroyWeak(&location);
        }
      }

      v14 = [v43 countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v14);
  }
}

void __44__EKDayViewContentStackView_updateWithRows___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = [a2 view];
  v3 = [v6 backgroundViewForEventIndicator];
  v4 = [v3 image];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setImage:v4];
}

@end