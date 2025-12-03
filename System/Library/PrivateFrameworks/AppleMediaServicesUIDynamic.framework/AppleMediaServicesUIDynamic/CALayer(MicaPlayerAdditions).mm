@interface CALayer(MicaPlayerAdditions)
- (id)mp_allAnimationsInTree;
- (id)mp_allLayersInTree;
- (id)mp_allLayersWhoseNamesContainString:()MicaPlayerAdditions;
- (id)mp_allLayersWithKindOfClass:()MicaPlayerAdditions;
- (id)mp_propertiesToCopy;
- (void)mp_addLayerAndSublayersToArray:()MicaPlayerAdditions allowHiddenLayers:;
- (void)mp_deepCopyLayer;
- (void)mp_moveAndResizeWithinParentLayer:()MicaPlayerAdditions usingGravity:geometryFlipped:retinaScale:animate:;
@end

@implementation CALayer(MicaPlayerAdditions)

- (void)mp_deepCopyLayer
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(objc_opt_class()) initWithLayer:self];
  if (v2)
  {
    sublayers = [self sublayers];
    v4 = sublayers;
    if (sublayers)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v5 = [sublayers countByEnumeratingWithState:&v41 objects:v47 count:16];
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

            mp_deepCopyLayer = [v7 mp_deepCopyLayer];
            if (mp_deepCopyLayer)
            {
              [v2 addSublayer:mp_deepCopyLayer];
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

    mask = [self mask];
    v13 = mask;
    if (mask)
    {
      mp_deepCopyLayer2 = [mask mp_deepCopyLayer];
      if (mp_deepCopyLayer2)
      {
        [v2 setMask:mp_deepCopyLayer2];
      }
    }

    v32 = v4;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    mp_propertiesToCopy = [self mp_propertiesToCopy];
    v16 = [mp_propertiesToCopy countByEnumeratingWithState:&v37 objects:v46 count:16];
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
            objc_enumerationMutation(mp_propertiesToCopy);
          }

          v20 = *(*(&v37 + 1) + 8 * i);
          if (([v20 isEqualToString:@"sublayers"] & 1) == 0 && (objc_msgSend(v20, "isEqualToString:", @"mask") & 1) == 0 && objc_msgSend(self, "shouldArchiveValueForKey:", v20))
          {
            v21 = [self valueForKey:v20];
            [v2 setValue:v21 forKey:v20];
          }
        }

        v17 = [mp_propertiesToCopy countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v17);
    }

    if ([self needsDisplay])
    {
      [v2 setNeedsDisplay];
    }

    if ([self needsLayout])
    {
      [v2 setNeedsLayout];
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    animationKeys = [self animationKeys];
    v23 = [animationKeys countByEnumeratingWithState:&v33 objects:v45 count:16];
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
            objc_enumerationMutation(animationKeys);
          }

          v27 = *(*(&v33 + 1) + 8 * j);
          v28 = [self animationForKey:v27];
          if (([v28 isRemovedOnCompletion] & 1) == 0)
          {
            [v2 addAnimation:v28 forKey:v27];
          }
        }

        v24 = [animationKeys countByEnumeratingWithState:&v33 objects:v45 count:16];
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

  mp_basicPropertiesToCopy = [self mp_basicPropertiesToCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = &unk_1F49D9D58;
LABEL_7:
    [mp_basicPropertiesToCopy addObjectsFromArray:v3];
    goto LABEL_8;
  }

  if (objc_opt_isKindOfClass())
  {
    v3 = &unk_1F49D9D70;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [mp_basicPropertiesToCopy addObject:@"scrollMode"];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = &unk_1F49D9D88;
      goto LABEL_7;
    }
  }

LABEL_8:

  return mp_basicPropertiesToCopy;
}

- (id)mp_allLayersInTree
{
  array = [MEMORY[0x1E695DF70] array];
  [self mp_addLayerAndSublayersToArray:array allowHiddenLayers:1];

  return array;
}

- (void)mp_addLayerAndSublayersToArray:()MicaPlayerAdditions allowHiddenLayers:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ((a4 & 1) != 0 || ([self isHidden] & 1) == 0)
  {
    [v6 addObject:self];
    mask = [self mask];

    if (mask)
    {
      mask2 = [self mask];
      [mask2 mp_addLayerAndSublayersToArray:v6 allowHiddenLayers:a4];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    sublayers = [self sublayers];
    v10 = [sublayers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(sublayers);
          }

          [*(*(&v14 + 1) + 8 * v13++) mp_addLayerAndSublayersToArray:v6 allowHiddenLayers:a4];
        }

        while (v11 != v13);
        v11 = [sublayers countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (id)mp_allLayersWhoseNamesContainString:()MicaPlayerAdditions
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  mp_allLayersInTree = [self mp_allLayersInTree];
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = mp_allLayersInTree;
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
        name = [v12 name];
        if (name)
        {
          v14 = name;
          name2 = [v12 name];
          v16 = [name2 containsString:v4];

          if (v16)
          {
            [array addObject:v12];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  return array;
}

- (id)mp_allLayersWithKindOfClass:()MicaPlayerAdditions
{
  v15 = *MEMORY[0x1E69E9840];
  mp_allLayersInTree = [self mp_allLayersInTree];
  array = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = mp_allLayersInTree;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          [array addObject:{v8, v10}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return array;
}

- (id)mp_allAnimationsInTree
{
  v26 = *MEMORY[0x1E69E9840];
  mp_allLayersInTree = [self mp_allLayersInTree];
  array = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = mp_allLayersInTree;
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
        animationKeys = [v7 animationKeys];
        v9 = [animationKeys countByEnumeratingWithState:&v16 objects:v24 count:16];
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
                objc_enumerationMutation(animationKeys);
              }

              v13 = [v7 animationForKey:*(*(&v16 + 1) + 8 * j)];
              [array addObject:v13];
            }

            v10 = [animationKeys countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v10);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v4);
  }

  return array;
}

- (void)mp_moveAndResizeWithinParentLayer:()MicaPlayerAdditions usingGravity:geometryFlipped:retinaScale:animate:
{
  v12 = a5;
  [a4 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [self bounds];
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
  [self setTransform:&v43];
  [self frame];
  v38 = v37;
  [self frame];
  [self setFrame:{v14, v16, v38}];
  if ((a7 & 1) == 0)
  {
    [MEMORY[0x1E6979518] commit];
  }
}

@end