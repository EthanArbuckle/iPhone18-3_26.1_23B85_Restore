@interface CNVisualIdentityAvatarLayoutManager
- (BOOL)hasMediaContextBadge;
- (CGRect)adHocAvatarFrameInBounds:(CGRect)a3 forItemCount:(int64_t)a4;
- (CGRect)adHocAvatarFrameInView:(id)a3 forItemCount:(int64_t)a4;
- (CGRect)avatarFrameForFocusedAvatarInView:(id)a3;
- (CGRect)avatarFrameInBounds:(CGRect)a3 forItemCount:(int64_t)a4;
- (CGRect)avatarFrameInBounds:(CGRect)a3 forItemCount:(int64_t)a4 withConfiguration:(id)a5;
- (CNVisualIdentityAvatarLayoutManager)initWithLayoutType:(unint64_t)a3;
- (id)layoutConfigurationForIndex:(int64_t)a3 inItemCount:(int64_t)a4 withLayoutType:(unint64_t)a5;
- (id)rearrangedLayersItemsFor:(id)a3 shouldAnimateRemoval:(BOOL)a4;
- (void)updateAvatarLayersForItemCount:(int64_t)a3 inView:(id)a4 identifiers:(id)a5 shouldAnimateRemoval:(BOOL)a6;
- (void)updateAvatarLayersForItemCount:(int64_t)a3 inView:(id)a4 withLayoutType:(unint64_t)a5;
- (void)updateLayer:(id)a3 forItemCount:(int64_t)a4 atIndex:(int64_t)a5 inView:(id)a6 withLayoutType:(unint64_t)a7;
@end

@implementation CNVisualIdentityAvatarLayoutManager

- (id)layoutConfigurationForIndex:(int64_t)a3 inItemCount:(int64_t)a4 withLayoutType:(unint64_t)a5
{
  if ((a5 | 2) == 2)
  {
    [(CNVisualIdentityAvatarLayoutManager *)self avatarViewLayoutConfiguration];
  }

  else
  {
    [(CNVisualIdentityAvatarLayoutManager *)self avatarViewAdHocLayoutConfiguration];
  }
  v7 = ;
  v8 = [v7 objectAtIndexedSubscript:a4 - 1];

  v9 = [v8 objectAtIndexedSubscript:a3];

  return v9;
}

- (CGRect)avatarFrameInBounds:(CGRect)a3 forItemCount:(int64_t)a4 withConfiguration:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v45 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = v10;
  if (a4 <= 0)
  {
    v28 = *MEMORY[0x1E695F058];
    v29 = *(MEMORY[0x1E695F058] + 8);
    v30 = *(MEMORY[0x1E695F058] + 16);
    v31 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v12 = [v10 objectAtIndexedSubscript:a4 - 1];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = 0;
      v17 = *v41;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v40 + 1) + 8 * i);
          if (!v15 || ([*(*(&v40 + 1) + 8 * i) x], v21 = v20, objc_msgSend(v15, "x"), v21 < v22))
          {
            v23 = v19;

            v15 = v23;
          }

          if (v16)
          {
            [v19 x];
            v25 = v24;
            [v16 x];
            if (v25 <= v26)
            {
              continue;
            }
          }

          v27 = v19;

          v16 = v27;
        }

        v14 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    [v16 itemFrameInContainingBounds:0 isRTL:{x, y, width, height}];
    v33 = v32;
    v35 = v34;
    [v15 itemFrameInContainingBounds:0 isRTL:{x, y, width, height}];
    v46.size.width = v33 + v35 - v46.origin.x;
    v46.origin.y = y;
    v46.size.height = height;
    v47 = CGRectIntegral(v46);
    v28 = v47.origin.x;
    v29 = v47.origin.y;
    v30 = v47.size.width;
    v31 = v47.size.height;
  }

  v36 = v28;
  v37 = v29;
  v38 = v30;
  v39 = v31;
  result.size.height = v39;
  result.size.width = v38;
  result.origin.y = v37;
  result.origin.x = v36;
  return result;
}

- (CGRect)avatarFrameInBounds:(CGRect)a3 forItemCount:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(CNVisualIdentityAvatarLayoutManager *)self avatarViewLayoutConfiguration];
  [(CNVisualIdentityAvatarLayoutManager *)self avatarFrameInBounds:a4 forItemCount:v10 withConfiguration:x, y, width, height];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)adHocAvatarFrameInBounds:(CGRect)a3 forItemCount:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(CNVisualIdentityAvatarLayoutManager *)self avatarViewAdHocLayoutConfiguration];
  [(CNVisualIdentityAvatarLayoutManager *)self avatarFrameInBounds:a4 forItemCount:v10 withConfiguration:x, y, width, height];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)adHocAvatarFrameInView:(id)a3 forItemCount:(int64_t)a4
{
  [a3 bounds];

  [(CNVisualIdentityAvatarLayoutManager *)self adHocAvatarFrameInBounds:a4 forItemCount:?];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)avatarFrameForFocusedAvatarInView:(id)a3
{
  v4 = a3;
  v5 = [(CNVisualIdentityAvatarLayoutManager *)self layoutConfigurationForIndex:0 inItemCount:1 withLayoutType:0];
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v5 itemFrameInContainingBounds:0 isRTL:{v7, v9, v11, v13}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (BOOL)hasMediaContextBadge
{
  v2 = [(CNVisualIdentityAvatarLayoutManager *)self mediaContextBadge];
  v3 = v2 != 0;

  return v3;
}

- (void)updateLayer:(id)a3 forItemCount:(int64_t)a4 atIndex:(int64_t)a5 inView:(id)a6 withLayoutType:(unint64_t)a7
{
  v19 = a3;
  v12 = a6;
  v13 = [(CNVisualIdentityAvatarLayoutManager *)self layoutConfigurationForIndex:a5 inItemCount:a4 withLayoutType:a7];
  v14 = [v12 effectiveUserInterfaceLayoutDirection];
  [v12 bounds];
  [v13 updateLayer:v19 inBounds:a5 atIndex:v14 == 1 isRTL:a7 layoutType:?];
  if (!a7)
  {
    if ([(CNVisualIdentityAvatarLayoutManager *)self hasMediaContextBadge])
    {
      [v13 x];
      if (v15 > 0.0)
      {
        [(CNVisualIdentityAvatarLayoutManager *)self avatarFrameForFocusedAvatarInView:v12];
        [MEMORY[0x1E6996AB0] avatarBadgeRectForAvatarInRect:2 badgeType:v14 == 1 isRTL:?];
        if (v14 == 1)
        {
          v17 = -(v16 * 0.75);
        }

        else
        {
          v17 = v16 * 0.75;
        }

        [v19 frame];
        [v19 setFrame:v18 + v17];
      }
    }
  }
}

- (void)updateAvatarLayersForItemCount:(int64_t)a3 inView:(id)a4 withLayoutType:(unint64_t)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [(CNVisualIdentityAvatarLayoutManager *)self avatarLayerItems];
  v10 = [v9 count];

  v11 = v10 - a3;
  if (v10 == a3)
  {
    v12 = [(CNVisualIdentityAvatarLayoutManager *)self avatarLayerItems];
    [v12 _cn_each:&__block_literal_global_34299];
  }

  if (v11 >= 1)
  {
    v13 = [(CNVisualIdentityAvatarLayoutManager *)self avatarLayerItems];
    v14 = [v13 _cn_takeLast:v11];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v32 + 1) + 8 * i);
          v21 = [v20 layer];
          [v21 removeFromSuperlayer];

          [v20 resetToken];
        }

        v17 = [v15 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v17);
    }

    v22 = [(CNVisualIdentityAvatarLayoutManager *)self avatarLayerItems];
    v23 = [v22 _cn_take:a3];
    [(CNVisualIdentityAvatarLayoutManager *)self setAvatarLayerItems:v23];
  }

  if (a3 >= 1)
  {
    v24 = 0;
    do
    {
      v25 = [(CNVisualIdentityAvatarLayoutManager *)self avatarLayerItems];
      v26 = [v25 count];

      if (v24 >= v26)
      {
        v29 = [MEMORY[0x1E6979398] layer];
        v28 = [objc_alloc(MEMORY[0x1E6996AA8]) initWithLayer:v29];
        v30 = [(CNVisualIdentityAvatarLayoutManager *)self avatarLayerItems];
        v31 = [v30 arrayByAddingObject:v28];
        [(CNVisualIdentityAvatarLayoutManager *)self setAvatarLayerItems:v31];
      }

      else
      {
        v27 = [(CNVisualIdentityAvatarLayoutManager *)self avatarLayerItems];
        v28 = [v27 objectAtIndexedSubscript:v24];

        v29 = [v28 layer];
      }

      [v28 resetToken];
      [(CNVisualIdentityAvatarLayoutManager *)self updateLayer:v29 forItemCount:a3 atIndex:v24 inView:v8 withLayoutType:a5];

      ++v24;
    }

    while (a3 != v24);
  }
}

- (void)updateAvatarLayersForItemCount:(int64_t)a3 inView:(id)a4 identifiers:(id)a5 shouldAnimateRemoval:(BOOL)a6
{
  v6 = a6;
  v13 = a4;
  v10 = a5;
  if ([(CNVisualIdentityAvatarLayoutManager *)self layoutType]== 3)
  {
    v11 = [(CNVisualIdentityAvatarLayoutManager *)self rearrangedLayersItemsFor:v10 shouldAnimateRemoval:v6];
    [(CNVisualIdentityAvatarLayoutManager *)self setAvatarLayerItems:v11];

    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  [(CNVisualIdentityAvatarLayoutManager *)self updateAvatarLayersForItemCount:a3 inView:v13 withLayoutType:v12];
}

- (id)rearrangedLayersItemsFor:(id)a3 shouldAnimateRemoval:(BOOL)a4
{
  v41 = a4;
  v57 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(CNVisualIdentityAvatarLayoutManager *)self avatarLayerItems];
  v7 = [v6 mutableCopy];

  v42 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v52;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v52 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v51 + 1) + 8 * i);
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __85__CNVisualIdentityAvatarLayoutManager_rearrangedLayersItemsFor_shouldAnimateRemoval___block_invoke;
        v50[3] = &unk_1E74E4838;
        v50[4] = v12;
        v13 = [v7 indexOfObjectPassingTest:v50];
        if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = objc_alloc(MEMORY[0x1E6996AA8]);
          v15 = [MEMORY[0x1E6979398] layer];
          v16 = [v14 initWithLayer:v15];

          [v16 setIdentifier:v12];
          [v42 addObject:v16];
        }

        else
        {
          v17 = v13;
          v18 = [v7 objectAtIndexedSubscript:v13];
          [v42 addObject:v18];

          [v7 removeObjectAtIndex:v17];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v9);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v39 = v7;
  v19 = [v39 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v47;
    v22 = *MEMORY[0x1E695F058];
    v23 = *(MEMORY[0x1E695F058] + 8);
    v24 = *(MEMORY[0x1E695F058] + 16);
    v25 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v47 != v21)
        {
          objc_enumerationMutation(v39);
        }

        v27 = *(*(&v46 + 1) + 8 * j);
        if ([(CNVisualIdentityAvatarLayoutManager *)self layoutType]== 3 && v41)
        {
          [MEMORY[0x1E6979518] begin];
          [MEMORY[0x1E6979518] setDisableActions:1];
          v28 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"bounds.size"];
          [v28 setDuration:0.5];
          [v28 setMass:2.0];
          [v28 setStiffness:350.0];
          [v28 setDamping:40.0];
          [v28 setInitialVelocity:0.0];
          v29 = MEMORY[0x1E696B098];
          v30 = [v27 layer];
          [v30 bounds];
          v45[0] = v31;
          v45[1] = v32;
          v33 = [v29 valueWithBytes:v45 objCType:"{CGSize=dd}"];
          [v28 setFromValue:v33];

          v44 = *MEMORY[0x1E695F060];
          v34 = [MEMORY[0x1E696B098] valueWithBytes:&v44 objCType:"{CGSize=dd}"];
          [v28 setToValue:v34];

          [v28 setDuration:0.300000012];
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __85__CNVisualIdentityAvatarLayoutManager_rearrangedLayersItemsFor_shouldAnimateRemoval___block_invoke_2;
          v43[3] = &unk_1E74E6A88;
          v43[4] = v27;
          [MEMORY[0x1E6979518] setCompletionBlock:v43];
          v35 = [v27 layer];
          [v35 addAnimation:v28 forKey:@"bounds.size"];

          v36 = [v27 layer];
          [v36 setBounds:{v22, v23, v24, v25}];

          v37 = [v27 layer];
          [v37 setZPosition:-INFINITY];

          [MEMORY[0x1E6979518] commit];
        }

        else
        {
          v28 = [v27 layer];
          [v28 removeFromSuperlayer];
        }
      }

      v20 = [v39 countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v20);
  }

  return v42;
}

uint64_t __85__CNVisualIdentityAvatarLayoutManager_rearrangedLayersItemsFor_shouldAnimateRemoval___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __85__CNVisualIdentityAvatarLayoutManager_rearrangedLayersItemsFor_shouldAnimateRemoval___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  [v1 removeFromSuperlayer];
}

- (CNVisualIdentityAvatarLayoutManager)initWithLayoutType:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = CNVisualIdentityAvatarLayoutManager;
  v4 = [(CNVisualIdentityAvatarLayoutManager *)&v12 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E6996AB0] avatarViewLayoutConfigurationsForType:a3];
    avatarViewLayoutConfiguration = v4->_avatarViewLayoutConfiguration;
    v4->_avatarViewLayoutConfiguration = v5;

    avatarLayerItems = v4->_avatarLayerItems;
    v4->_avatarLayerItems = MEMORY[0x1E695E0F0];

    v4->_maxAvatarCount = [MEMORY[0x1E6996AB0] maxAvatarCountForType:a3];
    v4->_layoutType = a3;
    if (a3 <= 3)
    {
      v8 = [MEMORY[0x1E6996AB0] avatarViewLayoutConfigurationsForType:qword_199E43EA0[a3]];
      avatarViewAdHocLayoutConfiguration = v4->_avatarViewAdHocLayoutConfiguration;
      v4->_avatarViewAdHocLayoutConfiguration = v8;
    }

    v10 = v4;
  }

  return v4;
}

@end