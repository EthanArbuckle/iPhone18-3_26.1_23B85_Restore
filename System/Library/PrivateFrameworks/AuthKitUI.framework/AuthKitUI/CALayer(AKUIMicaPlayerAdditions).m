@interface CALayer(AKUIMicaPlayerAdditions)
- (id)mp_allAnimationsInTree;
- (id)mp_allLayersInTree;
- (id)mp_allLayersWhoseNamesContainString:()AKUIMicaPlayerAdditions;
- (id)mp_basicPropertiesToCopy;
- (id)mp_propertiesToCopy;
- (uint64_t)mp_deepCopyLayer;
- (void)mp_addLayerAndSublayersToArray:()AKUIMicaPlayerAdditions allowHiddenLayers:;
- (void)mp_moveAndResizeWithinParentLayer:()AKUIMicaPlayerAdditions usingGravity:geometryFlipped:retinaScale:animate:;
@end

@implementation CALayer(AKUIMicaPlayerAdditions)

- (uint64_t)mp_deepCopyLayer
{
  v42 = *MEMORY[0x277D85DE8];
  v37 = a1;
  location[1] = a2;
  location[0] = 0;
  v35 = [objc_alloc(objc_opt_class()) initWithLayer:a1];
  if (v35)
  {
    v33 = [v37 sublayers];
    if (v33)
    {
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x277D82BE0](v33);
      v23 = [obj countByEnumeratingWithState:__b objects:v41 count:16];
      if (v23)
      {
        v19 = *__b[2];
        v20 = 0;
        v21 = v23;
        while (1)
        {
          v18 = v20;
          if (*__b[2] != v19)
          {
            objc_enumerationMutation(obj);
          }

          objc_storeStrong(location, *(__b[1] + 8 * v20));
          v31 = [location[0] mp_deepCopyLayer];
          if (v31)
          {
            [v35 addSublayer:v31];
          }

          objc_storeStrong(&v31, 0);
          ++v20;
          if (v18 + 1 >= v21)
          {
            v20 = 0;
            v21 = [obj countByEnumeratingWithState:__b objects:v41 count:16];
            if (!v21)
            {
              break;
            }
          }
        }
      }

      objc_storeStrong(location, 0);
      MEMORY[0x277D82BD8](obj);
    }

    v30 = [v37 mask];
    if (v30)
    {
      v29 = [v30 mp_deepCopyLayer];
      if (v29)
      {
        [v35 setMask:v29];
      }

      objc_storeStrong(&v29, 0);
    }

    memset(v27, 0, sizeof(v27));
    v16 = [v37 mp_propertiesToCopy];
    v17 = [v16 countByEnumeratingWithState:v27 objects:v40 count:16];
    if (v17)
    {
      v13 = *v27[2];
      v14 = 0;
      v15 = v17;
      while (1)
      {
        v12 = v14;
        if (*v27[2] != v13)
        {
          objc_enumerationMutation(v16);
        }

        v28 = *(v27[1] + 8 * v14);
        if ([v28 isEqualToString:@"sublayers"] & 1) == 0 && (objc_msgSend(v28, "isEqualToString:", @"mask") & 1) == 0 && (objc_msgSend(v37, "shouldArchiveValueForKey:", v28))
        {
          v10 = v35;
          v11 = [v37 valueForKey:v28];
          [v10 setValue:? forKey:?];
          MEMORY[0x277D82BD8](v11);
        }

        ++v14;
        if (v12 + 1 >= v15)
        {
          v14 = 0;
          v15 = [v16 countByEnumeratingWithState:v27 objects:v40 count:16];
          if (!v15)
          {
            break;
          }
        }
      }
    }

    *&v2 = MEMORY[0x277D82BD8](v16).n128_u64[0];
    if ([v37 needsDisplay])
    {
      [v35 setNeedsDisplay];
    }

    if ([v37 needsLayout])
    {
      [v35 setNeedsLayout];
    }

    memset(v25, 0, sizeof(v25));
    v8 = [v37 animationKeys];
    v9 = [v8 countByEnumeratingWithState:v25 objects:v39 count:16];
    if (v9)
    {
      v5 = *v25[2];
      v6 = 0;
      v7 = v9;
      while (1)
      {
        v4 = v6;
        if (*v25[2] != v5)
        {
          objc_enumerationMutation(v8);
        }

        v26 = *(v25[1] + 8 * v6);
        v24 = [v37 animationForKey:v26];
        if (([v24 isRemovedOnCompletion] & 1) == 0)
        {
          [v35 addAnimation:v24 forKey:v26];
        }

        objc_storeStrong(&v24, 0);
        ++v6;
        if (v4 + 1 >= v7)
        {
          v6 = 0;
          v7 = [v8 countByEnumeratingWithState:v25 objects:v39 count:16];
          if (!v7)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v8);
    v38 = MEMORY[0x277D82BE0](v35);
    v34 = 1;
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v33, 0);
  }

  else
  {
    v38 = 0;
    v34 = 1;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v38;
}

- (id)mp_basicPropertiesToCopy
{
  v8[2] = a1;
  v8[1] = a2;
  v5 = 0;
  v2 = [MEMORY[0x277CBEB58] setWithObjects:{@"bounds", @"position", @"zPosition", @"anchorPoint", @"anchorPointZ", @"transform", @"hidden", @"doubleSided", @"geometryFlipped", @"sublayerTransform", @"masksToBounds", @"contents", @"contentsRect", @"contentsGravity", @"contentsScale", @"contentsCenter", @"minificationFilter", @"magnificationFilter", @"minificationFilterBias", @"opaque", @"needsDisplayOnBoundsChange", @"edgeAntialiasingMask", @"backgroundColor", @"cornerRadius", @"borderWidth", @"borderColor", @"opacity", @"compositingFilter", @"filters", @"backgroundFilters", @"shouldRasterize", @"rasterizationScale", @"shadowColor", @"shadowOpacity", @"shadowOffset", @"shadowRadius", @"shadowPath", @"shadowPathIsBounds", @"invertsShadow", @"actions", @"name", @"style", @"beginTime", @"duration", @"speed", @"timeOffset", @"repeatCount", @"repeatDuration", @"autoreverses", @"fillMode", 0}];
  v6 = v8;
  v8[0] = v2;
  v7 = MEMORY[0x277D82BE0](v2);
  objc_storeStrong(v6, v5);
  v3 = v7;

  return v3;
}

- (id)mp_propertiesToCopy
{
  v8 = a1;
  v7[1] = a2;
  if (!mp_propertiesToCopy_sCAShapeLayerClass)
  {
    mp_propertiesToCopy_sCAShapeLayerClass = NSClassFromString(&cfstr_Cashapelayer.isa);
  }

  v7[0] = [v8 mp_basicPropertiesToCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = MEMORY[0x277D82BE0](&unk_2835AB018);
    [v7[0] addObjectsFromArray:v6];
    objc_storeStrong(&v6, 0);
  }

  else if (objc_opt_isKindOfClass())
  {
    v5 = MEMORY[0x277D82BE0](&unk_2835AB030);
    [v7[0] addObjectsFromArray:v5];
    objc_storeStrong(&v5, 0);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7[0] addObject:@"scrollMode"];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = MEMORY[0x277D82BE0](&unk_2835AB048);
        [v7[0] addObjectsFromArray:v4];
        objc_storeStrong(&v4, 0);
      }
    }
  }

  v3 = MEMORY[0x277D82BE0](v7[0]);
  objc_storeStrong(v7, 0);

  return v3;
}

- (id)mp_allLayersInTree
{
  v5 = a1;
  v4[1] = a2;
  v4[0] = [MEMORY[0x277CBEB18] array];
  [v5 mp_addLayerAndSublayersToArray:v4[0] allowHiddenLayers:1];
  v3 = MEMORY[0x277D82BE0](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (void)mp_addLayerAndSublayersToArray:()AKUIMicaPlayerAdditions allowHiddenLayers:
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v17 = a4;
  if ((a4 & 1) != 0 || ([v19 isHidden] & 1) == 0)
  {
    [location[0] addObject:v19];
    v13 = [v19 mask];
    *&v4 = MEMORY[0x277D82BD8](v13).n128_u64[0];
    if (v13)
    {
      v12 = [v19 mask];
      [v12 mp_addLayerAndSublayersToArray:location[0] allowHiddenLayers:v17 & 1];
      MEMORY[0x277D82BD8](v12);
    }

    memset(__b, 0, sizeof(__b));
    obja = [v19 sublayers];
    v11 = [obja countByEnumeratingWithState:__b objects:v20 count:16];
    if (v11)
    {
      v7 = *__b[2];
      v8 = 0;
      v9 = v11;
      while (1)
      {
        v6 = v8;
        if (*__b[2] != v7)
        {
          objc_enumerationMutation(obja);
        }

        v16 = *(__b[1] + 8 * v8);
        [v16 mp_addLayerAndSublayersToArray:location[0] allowHiddenLayers:{v17 & 1, v9}];
        ++v8;
        v9 = v5;
        if (v6 + 1 >= v5)
        {
          v8 = 0;
          v9 = [obja countByEnumeratingWithState:__b objects:v20 count:16];
          if (!v9)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obja);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)mp_allLayersWhoseNamesContainString:()AKUIMicaPlayerAdditions
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v19 = [v21 mp_allLayersInTree];
  v18 = [MEMORY[0x277CBEB18] array];
  memset(__b, 0, sizeof(__b));
  obja = MEMORY[0x277D82BE0](v19);
  v13 = [obja countByEnumeratingWithState:__b objects:v22 count:16];
  if (v13)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v13;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obja);
      }

      v17 = *(__b[1] + 8 * v10);
      v6 = [v17 name];
      v14 = 0;
      v7 = 0;
      if (v6)
      {
        v15 = [v17 name];
        v14 = 1;
        v7 = [v15 containsString:location[0]];
      }

      if (v14)
      {
        MEMORY[0x277D82BD8](v15);
      }

      *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
      if (v7)
      {
        [v18 addObject:{v17, v3}];
      }

      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obja countByEnumeratingWithState:__b objects:v22 count:{16, v3}];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obja);
  v5 = MEMORY[0x277D82BE0](v18);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];

  return v5;
}

- (id)mp_allAnimationsInTree
{
  v26 = *MEMORY[0x277D85DE8];
  v23[2] = a1;
  v23[1] = a2;
  v23[0] = [a1 mp_allLayersInTree];
  v22 = [MEMORY[0x277CBEB18] array];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v23[0]);
  v16 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
  if (v16)
  {
    v12 = *__b[2];
    v13 = 0;
    v14 = v16;
    while (1)
    {
      v11 = v13;
      if (*__b[2] != v12)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(__b[1] + 8 * v13);
      memset(v18, 0, sizeof(v18));
      v9 = [v21 animationKeys];
      v10 = [v9 countByEnumeratingWithState:v18 objects:v24 count:16];
      if (v10)
      {
        v6 = *v18[2];
        v7 = 0;
        v8 = v10;
        while (1)
        {
          v5 = v7;
          if (*v18[2] != v6)
          {
            objc_enumerationMutation(v9);
          }

          v19 = *(v18[1] + 8 * v7);
          v17 = [v21 animationForKey:v19];
          [v22 addObject:v17];
          objc_storeStrong(&v17, 0);
          ++v7;
          if (v5 + 1 >= v8)
          {
            v7 = 0;
            v8 = [v9 countByEnumeratingWithState:v18 objects:v24 count:16];
            if (!v8)
            {
              break;
            }
          }
        }
      }

      *&v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
      ++v13;
      if (v11 + 1 >= v14)
      {
        v13 = 0;
        v14 = [obj countByEnumeratingWithState:__b objects:v25 count:{16, v2}];
        if (!v14)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v4 = MEMORY[0x277D82BE0](v22);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(v23, 0);
  *MEMORY[0x277D85DE8];

  return v4;
}

- (void)mp_moveAndResizeWithinParentLayer:()AKUIMicaPlayerAdditions usingGravity:geometryFlipped:retinaScale:animate:
{
  v49 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v47 = 0;
  objc_storeStrong(&v47, a4);
  v46 = a5;
  v45 = a7;
  v44 = a6;
  [location[0] bounds];
  *&v41 = v7;
  *(&v41 + 1) = v8;
  v42 = v9;
  v43 = v10;
  v40 = 1.0;
  v39 = 1.0;
  v38 = 0uLL;
  v38 = *MEMORY[0x277CBF348];
  v37 = 0x3EE4F8B588E368F1;
  [v49 bounds];
  v33 = v11;
  v34 = v12;
  *&v35 = v13;
  *(&v35 + 1) = v14;
  *v36 = v35;
  if (a7 != 1.0)
  {
    v36[0] = v36[0] / v45;
    v36[1] = v36[1] / v45;
  }

  if (v42 < 0.00001)
  {
    v42 = 0.00001;
  }

  if (v43 < 0.00001)
  {
    v43 = 0.00001;
  }

  if (v36[0] < 0.00001)
  {
    v36[0] = 0.00001;
  }

  if (v36[1] < 0.00001)
  {
    v36[1] = 0.00001;
  }

  if (v46)
  {
    if ([v47 isEqualToString:*MEMORY[0x277CDA748]])
    {
      objc_storeStrong(&v47, *MEMORY[0x277CDA6B8]);
    }

    else if ([v47 isEqualToString:*MEMORY[0x277CDA740]])
    {
      objc_storeStrong(&v47, *MEMORY[0x277CDA6B0]);
    }

    else if ([v47 isEqualToString:*MEMORY[0x277CDA760]])
    {
      objc_storeStrong(&v47, *MEMORY[0x277CDA6D0]);
    }

    else if ([v47 isEqualToString:*MEMORY[0x277CDA6B8]])
    {
      objc_storeStrong(&v47, *MEMORY[0x277CDA748]);
    }

    else if ([v47 isEqualToString:*MEMORY[0x277CDA6B0]])
    {
      objc_storeStrong(&v47, *MEMORY[0x277CDA740]);
    }

    else if ([v47 isEqualToString:*MEMORY[0x277CDA6D0]])
    {
      objc_storeStrong(&v47, *MEMORY[0x277CDA760]);
    }
  }

  if ([v47 isEqualToString:*MEMORY[0x277CDA748]])
  {
    *&v38 = v41;
    *(&v38 + 1) = *(&v41 + 1) + v43 - v36[1];
  }

  else if ([v47 isEqualToString:*MEMORY[0x277CDA740]])
  {
    *&v38 = *&v41 + v42 / 2.0 - v36[0] / 2.0;
    *(&v38 + 1) = *(&v41 + 1) + v43 - v36[1];
  }

  else if ([v47 isEqualToString:*MEMORY[0x277CDA760]])
  {
    *&v38 = *&v41 + v42 - v36[0];
    *(&v38 + 1) = *(&v41 + 1) + v43 - v36[1];
  }

  else if ([v47 isEqualToString:*MEMORY[0x277CDA6E8]])
  {
    *&v38 = v41;
    *(&v38 + 1) = *(&v41 + 1) + v43 / 2.0 - v36[1] / 2.0;
  }

  else if ([v47 isEqualToString:*MEMORY[0x277CDA6E0]])
  {
    *&v38 = *&v41 + v42 / 2.0 - v36[0] / 2.0;
    *(&v38 + 1) = *(&v41 + 1) + v43 / 2.0 - v36[1] / 2.0;
  }

  else if ([v47 isEqualToString:*MEMORY[0x277CDA730]])
  {
    *&v38 = *&v41 + v42 - v36[0];
    *(&v38 + 1) = *(&v41 + 1) + v43 / 2.0 - v36[1] / 2.0;
  }

  else if ([v47 isEqualToString:*MEMORY[0x277CDA6B8]])
  {
    v38 = v41;
  }

  else if ([v47 isEqualToString:*MEMORY[0x277CDA6B0]])
  {
    *&v38 = *&v41 + v42 / 2.0 - v36[0] / 2.0;
    *(&v38 + 1) = *(&v41 + 1);
  }

  else if ([v47 isEqualToString:*MEMORY[0x277CDA6D0]])
  {
    *&v38 = *&v41 + v42 - v36[0];
    *(&v38 + 1) = *(&v41 + 1);
  }

  else if ([v47 isEqualToString:*MEMORY[0x277CDA700]])
  {
    v40 = v42 / v36[0];
    v39 = v43 / v36[1];
    v38 = v41;
  }

  else if ([v47 isEqualToString:*MEMORY[0x277CDA710]])
  {
    v32 = v42 / v36[0];
    v31 = v43 / v36[1];
    if (v42 / v36[0] >= v43 / v36[1])
    {
      v20 = v31;
    }

    else
    {
      v20 = v32;
    }

    v30 = v20;
    v40 = v20;
    v39 = v20;
    *&v38 = *&v41 + (v42 - v36[0] * v20) / 2.0;
    *(&v38 + 1) = *(&v41 + 1) + (v43 - v36[1] * v20) / 2.0;
  }

  else if ([v47 isEqualToString:*MEMORY[0x277CDA720]])
  {
    v29 = v42 / v36[0];
    v28 = v43 / v36[1];
    if (v42 / v36[0] >= v43 / v36[1])
    {
      v19 = v29;
    }

    else
    {
      v19 = v28;
    }

    v27 = v19;
    v40 = v19;
    v39 = v19;
    *&v38 = *&v41 + (v42 - v36[0] * v19) / 2.0;
    *(&v38 + 1) = *(&v41 + 1) + (v43 - v36[1] * v19) / 2.0;
  }

  else
  {
    NSLog(&cfstr_UnknownGravity.isa, v47);
  }

  if (v45 != 1.0)
  {
    v40 = v40 / v45;
    v39 = v39 / v45;
  }

  if ((v44 & 1) == 0)
  {
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
  }

  CATransform3DMakeScale(&v26, v40, v39, 1.0);
  memcpy(__dst, &v26, sizeof(__dst));
  [v49 setTransform:__dst];
  [v49 frame];
  [v49 frame];
  CGRectMake_3();
  [v49 setFrame:{v15, v16, v17, v18}];
  if ((v44 & 1) == 0)
  {
    [MEMORY[0x277CD9FF0] commit];
  }

  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
}

@end