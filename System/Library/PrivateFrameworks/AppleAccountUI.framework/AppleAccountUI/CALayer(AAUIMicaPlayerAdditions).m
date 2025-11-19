@interface CALayer(AAUIMicaPlayerAdditions)
- (id)mp_allAnimationsInTree;
- (id)mp_allLayersInTree;
- (id)mp_allLayersWhoseNamesContainString:()AAUIMicaPlayerAdditions;
- (id)mp_propertiesToCopy;
- (void)mp_addLayerAndSublayersToArray:()AAUIMicaPlayerAdditions allowHiddenLayers:;
- (void)mp_deepCopyLayer;
- (void)mp_moveAndResizeWithinParentLayer:()AAUIMicaPlayerAdditions usingGravity:geometryFlipped:retinaScale:animate:;
@end

@implementation CALayer(AAUIMicaPlayerAdditions)

- (void)mp_deepCopyLayer
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(objc_opt_class()) initWithLayer:a1];
  if (v2)
  {
    v3 = [a1 sublayers];
    v4 = v3;
    if (v3)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v5 = [v3 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = 0;
        v8 = *v42;
        do
        {
          v9 = 0;
          v10 = v7;
          do
          {
            if (*v42 != v8)
            {
              objc_enumerationMutation(v4);
            }

            v7 = *(*(&v41 + 1) + 8 * v9);

            v11 = [v7 mp_deepCopyLayer];
            if (v11)
            {
              [v2 addSublayer:v11];
            }

            ++v9;
            v10 = v7;
          }

          while (v6 != v9);
          v6 = [v4 countByEnumeratingWithState:&v41 objects:v47 count:16];
        }

        while (v6);
      }
    }

    v12 = [a1 mask];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 mp_deepCopyLayer];
      if (v14)
      {
        [v2 setMask:v14];
      }
    }

    v32 = v4;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = [a1 mp_propertiesToCopy];
    v16 = [v15 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v38;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v37 + 1) + 8 * i);
          if (([v20 isEqualToString:@"sublayers"] & 1) == 0 && (objc_msgSend(v20, "isEqualToString:", @"mask") & 1) == 0 && objc_msgSend(a1, "shouldArchiveValueForKey:", v20))
          {
            v21 = [a1 valueForKey:v20];
            [v2 setValue:v21 forKey:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v17);
    }

    if ([a1 needsDisplay])
    {
      [v2 setNeedsDisplay];
    }

    if ([a1 needsLayout])
    {
      [v2 setNeedsLayout];
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v22 = [a1 animationKeys];
    v23 = [v22 countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v34;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v34 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v33 + 1) + 8 * j);
          v28 = [a1 animationForKey:v27];
          if (([v28 isRemovedOnCompletion] & 1) == 0)
          {
            [v2 addAnimation:v28 forKey:v27];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v24);
    }

    v29 = v2;
  }

  return v2;
}

- (id)mp_propertiesToCopy
{
  if (!mp_propertiesToCopy_sCAShapeLayerClass)
  {
    mp_propertiesToCopy_sCAShapeLayerClass = NSClassFromString(&cfstr_Cashapelayer.isa);
  }

  v2 = [a1 mp_basicPropertiesToCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = &unk_1F44C0660;
LABEL_7:
    [v2 addObjectsFromArray:v3];
    goto LABEL_8;
  }

  if (objc_opt_isKindOfClass())
  {
    v3 = &unk_1F44C0678;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 addObject:@"scrollMode"];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = &unk_1F44C0690;
      goto LABEL_7;
    }
  }

LABEL_8:

  return v2;
}

- (id)mp_allLayersInTree
{
  v2 = [MEMORY[0x1E695DF70] array];
  [a1 mp_addLayerAndSublayersToArray:v2 allowHiddenLayers:1];

  return v2;
}

- (void)mp_addLayerAndSublayersToArray:()AAUIMicaPlayerAdditions allowHiddenLayers:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ((a4 & 1) != 0 || ([a1 isHidden] & 1) == 0)
  {
    [v6 addObject:a1];
    v7 = [a1 mask];

    if (v7)
    {
      v8 = [a1 mask];
      [v8 mp_addLayerAndSublayersToArray:v6 allowHiddenLayers:a4];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = [a1 sublayers];
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * v13++) mp_addLayerAndSublayersToArray:v6 allowHiddenLayers:a4];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (id)mp_allLayersWhoseNamesContainString:()AAUIMicaPlayerAdditions
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 mp_allLayersInTree];
  v6 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 name];
        if (v13)
        {
          v14 = v13;
          v15 = [v12 name];
          v16 = [v15 containsString:v4];

          if (v16)
          {
            [v6 addObject:v12];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)mp_allAnimationsInTree
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = [a1 mp_allLayersInTree];
  v2 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v8 = [v7 animationKeys];
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v17;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [v7 animationForKey:*(*(&v16 + 1) + 8 * j)];
              [v2 addObject:v13];
            }

            v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v10);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v4);
  }

  return v2;
}

- (void)mp_moveAndResizeWithinParentLayer:()AAUIMicaPlayerAdditions usingGravity:geometryFlipped:retinaScale:animate:
{
  v12 = a5;
  [a4 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [a1 bounds];
  v23 = v21 / a2;
  v24 = v22 / a2;
  if (a2 == 1.0)
  {
    v24 = v22;
    v23 = v21;
  }

  if (v18 >= 0.00001)
  {
    v25 = v18;
  }

  else
  {
    v25 = 0.00001;
  }

  if (v20 >= 0.00001)
  {
    v26 = v20;
  }

  else
  {
    v26 = 0.00001;
  }

  if (v23 >= 0.00001)
  {
    v27 = v23;
  }

  else
  {
    v27 = 0.00001;
  }

  if (v24 >= 0.00001)
  {
    v28 = v24;
  }

  else
  {
    v28 = 0.00001;
  }

  v29 = *MEMORY[0x1E6979E08];
  if (a6)
  {
    if ([v12 isEqualToString:*MEMORY[0x1E6979E08]])
    {
      v30 = MEMORY[0x1E6979DC0];
LABEL_22:
      v33 = *v30;
LABEL_23:
      v34 = v33;

      v12 = v34;
      goto LABEL_24;
    }

    v31 = *MEMORY[0x1E6979E00];
    if ([v12 isEqualToString:*MEMORY[0x1E6979E00]])
    {
      v30 = MEMORY[0x1E6979DB8];
      goto LABEL_22;
    }

    v32 = *MEMORY[0x1E6979E10];
    if ([v12 isEqualToString:*MEMORY[0x1E6979E10]])
    {
      v30 = MEMORY[0x1E6979DC8];
      goto LABEL_22;
    }

    v40 = [v12 isEqualToString:*MEMORY[0x1E6979DC0]];
    v33 = v29;
    if (v40)
    {
      goto LABEL_23;
    }

    v41 = [v12 isEqualToString:*MEMORY[0x1E6979DB8]];
    v33 = v31;
    if (v41)
    {
      goto LABEL_23;
    }

    v42 = [v12 isEqualToString:*MEMORY[0x1E6979DC8]];
    v33 = v32;
    if (v42)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  if ([v12 isEqualToString:v29])
  {
LABEL_29:
    v16 = v16 + v26 - v28;
LABEL_30:
    v35 = 1.0;
LABEL_31:
    v36 = 1.0;
    goto LABEL_32;
  }

  if ([v12 isEqualToString:*MEMORY[0x1E6979E00]])
  {
    v14 = v14 + v25 * 0.5 - v27 * 0.5;
    goto LABEL_29;
  }

  if ([v12 isEqualToString:*MEMORY[0x1E6979E10]])
  {
    v14 = v14 + v25 - v27;
    goto LABEL_29;
  }

  if ([v12 isEqualToString:*MEMORY[0x1E6979DD8]])
  {
    goto LABEL_40;
  }

  if ([v12 isEqualToString:*MEMORY[0x1E6979DD0]])
  {
    v39 = 0.5;
    v14 = v14 + v25 * 0.5 - v27 * 0.5;
    goto LABEL_47;
  }

  if ([v12 isEqualToString:*MEMORY[0x1E6979DF8]])
  {
    v14 = v14 + v25 - v27;
LABEL_40:
    v39 = 0.5;
LABEL_47:
    v16 = v16 + v26 * v39 - v28 * v39;
    goto LABEL_30;
  }

  v35 = 1.0;
  if ([v12 isEqualToString:*MEMORY[0x1E6979DC0]])
  {
    goto LABEL_31;
  }

  if ([v12 isEqualToString:*MEMORY[0x1E6979DB8]])
  {
    v14 = v14 + v25 * 0.5 - v27 * 0.5;
    goto LABEL_31;
  }

  if ([v12 isEqualToString:*MEMORY[0x1E6979DC8]])
  {
    v14 = v14 + v25 - v27;
    goto LABEL_31;
  }

  if ([v12 isEqualToString:*MEMORY[0x1E6979DE0]])
  {
    v36 = v25 / v27;
    v35 = v26 / v28;
  }

  else
  {
    if ([v12 isEqualToString:*MEMORY[0x1E6979DE8]])
    {
      if (v25 / v27 >= v26 / v28)
      {
        v35 = v26 / v28;
      }

      else
      {
        v35 = v25 / v27;
      }
    }

    else
    {
      if (![v12 isEqualToString:*MEMORY[0x1E6979DF0]])
      {
        v14 = *MEMORY[0x1E695EFF8];
        v16 = *(MEMORY[0x1E695EFF8] + 8);
        NSLog(&cfstr_UnknownGravity.isa, v12);
        goto LABEL_31;
      }

      if (v25 / v27 >= v26 / v28)
      {
        v35 = v25 / v27;
      }

      else
      {
        v35 = v26 / v28;
      }
    }

    v14 = v14 + (v25 - v27 * v35) * 0.5;
    v16 = v16 + (v26 - v28 * v35) * 0.5;
    v36 = v35;
  }

LABEL_32:
  if (a2 != 1.0)
  {
    v36 = v36 / a2;
    v35 = v35 / a2;
  }

  if ((a7 & 1) == 0)
  {
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
  }

  CATransform3DMakeScale(&v44, v36, v35, 1.0);
  v43 = v44;
  [a1 setTransform:&v43];
  [a1 frame];
  v38 = v37;
  [a1 frame];
  [a1 setFrame:{v14, v16, v38}];
  if ((a7 & 1) == 0)
  {
    [MEMORY[0x1E6979518] commit];
  }
}

@end