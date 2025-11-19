@interface SCNSpriteKitEventHandler
- (BOOL)touchesBegan:(id)a3 withEvent:(id)a4;
- (BOOL)touchesCancelled:(id)a3 withEvent:(id)a4;
- (BOOL)touchesEnded:(id)a3 withEvent:(id)a4;
- (BOOL)touchesMoved:(id)a3 withEvent:(id)a4;
- (SCNSpriteKitEventHandler)init;
- (void)dealloc;
@end

@implementation SCNSpriteKitEventHandler

- (SCNSpriteKitEventHandler)init
{
  v4.receiver = self;
  v4.super_class = SCNSpriteKitEventHandler;
  v2 = [(SCNSpriteKitEventHandler *)&v4 init];
  if (v2)
  {
    v2->_touchMap = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNSpriteKitEventHandler;
  [(SCNSpriteKitEventHandler *)&v3 dealloc];
}

- (BOOL)touchesBegan:(id)a3 withEvent:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  if (!self->_scene)
  {
    return 0;
  }

  v32[0] = 0;
  v32[1] = 0;
  v31 = v32;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v26 objects:v33 count:16];
  v24 = a4;
  v8 = 0;
  if (v7)
  {
    v9 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v30 = 0;
        v30 = *(*(&v26 + 1) + 8 * i);
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v30, "hash")}];
        scene = self->_scene;
        [v30 locationInNode:scene];
        for (j = -[SKScene nodeAtPoint:recursive:](scene, "nodeAtPoint:recursive:", 1); ; j = [v25 parent])
        {
          v25 = j;
          if (!j)
          {
            break;
          }

          if ([j isUserInteractionEnabled])
          {
            if (v25)
            {
              [(NSMutableDictionary *)self->_touchMap setObject:v25 forKey:v11];
              v32[3] = &v25;
              v14 = std::__tree<std::__value_type<SKNode *,std::vector<UITouch *>>,std::__map_value_compare<SKNode *,std::__value_type<SKNode *,std::vector<UITouch *>>,std::less<SKNode *>,true>,std::allocator<std::__value_type<SKNode *,std::vector<UITouch *>>>>::__emplace_unique_key_args<SKNode *,std::piecewise_construct_t const&,std::tuple<SKNode * const&>,std::tuple<>>(&v31, &v25);
              std::vector<UITouch *>::push_back[abi:nn200100]((v14 + 5), &v30);
              v8 = 1;
            }

            break;
          }
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v7);
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = v31;
  if (v31 != v32)
  {
    do
    {
      v17 = v16[4];
      v18 = v16[5];
      v19 = v16[6];
      while (v18 != v19)
      {
        [v15 addObject:*v18++];
      }

      [v17 touchesBegan:v15 withEvent:v24];
      [v15 removeAllObjects];
      v20 = v16[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v16[2];
          v22 = *v21 == v16;
          v16 = v21;
        }

        while (!v22);
      }

      v16 = v21;
    }

    while (v21 != v32);
  }

  std::__tree<std::__value_type<SKNode *,std::vector<UITouch *>>,std::__map_value_compare<SKNode *,std::__value_type<SKNode *,std::vector<UITouch *>>,std::less<SKNode *>,true>,std::allocator<std::__value_type<SKNode *,std::vector<UITouch *>>>>::destroy(&v31, v32[0]);
  return v8;
}

- (BOOL)touchesMoved:(id)a3 withEvent:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  if (!self->_scene)
  {
    return 0;
  }

  v29[0] = 0;
  v29[1] = 0;
  v28 = v29;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v23 objects:v30 count:16];
  v21 = a4;
  v8 = 0;
  if (v7)
  {
    v9 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(a3);
        }

        v27 = 0;
        v27 = *(*(&v23 + 1) + 8 * i);
        v22 = -[NSMutableDictionary objectForKey:](self->_touchMap, "objectForKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v27, "hash")}]);
        if (v22)
        {
          v29[3] = &v22;
          v11 = std::__tree<std::__value_type<SKNode *,std::vector<UITouch *>>,std::__map_value_compare<SKNode *,std::__value_type<SKNode *,std::vector<UITouch *>>,std::less<SKNode *>,true>,std::allocator<std::__value_type<SKNode *,std::vector<UITouch *>>>>::__emplace_unique_key_args<SKNode *,std::piecewise_construct_t const&,std::tuple<SKNode * const&>,std::tuple<>>(&v28, &v22);
          std::vector<UITouch *>::push_back[abi:nn200100]((v11 + 5), &v27);
          v8 = 1;
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v7);
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13 = v28;
  if (v28 != v29)
  {
    do
    {
      v14 = v13[4];
      v15 = v13[5];
      v16 = v13[6];
      while (v15 != v16)
      {
        [v12 addObject:*v15++];
      }

      [v14 touchesMoved:v12 withEvent:v21];
      [v12 removeAllObjects];
      v17 = v13[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v13[2];
          v19 = *v18 == v13;
          v13 = v18;
        }

        while (!v19);
      }

      v13 = v18;
    }

    while (v18 != v29);
  }

  std::__tree<std::__value_type<SKNode *,std::vector<UITouch *>>,std::__map_value_compare<SKNode *,std::__value_type<SKNode *,std::vector<UITouch *>>,std::less<SKNode *>,true>,std::allocator<std::__value_type<SKNode *,std::vector<UITouch *>>>>::destroy(&v28, v29[0]);
  return v8;
}

- (BOOL)touchesEnded:(id)a3 withEvent:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  if (!self->_scene)
  {
    return 0;
  }

  v37[0] = 0;
  v37[1] = 0;
  v36 = v37;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = 0;
  v7 = [a3 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v7)
  {
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v35 = 0;
        v35 = *(*(&v31 + 1) + 8 * i);
        v30 = -[NSMutableDictionary objectForKey:](self->_touchMap, "objectForKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v35, "hash")}]);
        if (v30)
        {
          v37[3] = &v30;
          v10 = std::__tree<std::__value_type<SKNode *,std::vector<UITouch *>>,std::__map_value_compare<SKNode *,std::__value_type<SKNode *,std::vector<UITouch *>>,std::less<SKNode *>,true>,std::allocator<std::__value_type<SKNode *,std::vector<UITouch *>>>>::__emplace_unique_key_args<SKNode *,std::piecewise_construct_t const&,std::tuple<SKNode * const&>,std::tuple<>>(&v36, &v30);
          std::vector<UITouch *>::push_back[abi:nn200100]((v10 + 5), &v35);
          v6 = 1;
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v7);
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13 = v36;
  if (v36 != v37)
  {
    do
    {
      v14 = v13[5];
      v25 = v13[4];
      v15 = v13[6];
      while (v14 != v15)
      {
        v16 = *v14;
        [v12 addObject:*v14];
        [v11 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", objc_msgSend(v16, "hash"))}];
        ++v14;
      }

      [v25 touchesEnded:v12 withEvent:a4];
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v17 = [v11 countByEnumeratingWithState:&v26 objects:v38 count:16];
      if (v17)
      {
        v18 = *v27;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v27 != v18)
            {
              objc_enumerationMutation(v11);
            }

            [(NSMutableDictionary *)self->_touchMap removeObjectForKey:*(*(&v26 + 1) + 8 * j)];
          }

          v17 = [v11 countByEnumeratingWithState:&v26 objects:v38 count:16];
        }

        while (v17);
      }

      [v11 removeAllObjects];
      [v12 removeAllObjects];
      v20 = v13[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v13[2];
          v22 = *v21 == v13;
          v13 = v21;
        }

        while (!v22);
      }

      v13 = v21;
    }

    while (v21 != v37);
  }

  std::__tree<std::__value_type<SKNode *,std::vector<UITouch *>>,std::__map_value_compare<SKNode *,std::__value_type<SKNode *,std::vector<UITouch *>>,std::less<SKNode *>,true>,std::allocator<std::__value_type<SKNode *,std::vector<UITouch *>>>>::destroy(&v36, v37[0]);
  return v6;
}

- (BOOL)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  if (!self->_scene)
  {
    return 0;
  }

  v37[0] = 0;
  v37[1] = 0;
  v36 = v37;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = 0;
  v7 = [a3 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v7)
  {
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v35 = 0;
        v35 = *(*(&v31 + 1) + 8 * i);
        v30 = -[NSMutableDictionary objectForKey:](self->_touchMap, "objectForKey:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v35, "hash")}]);
        if (v30)
        {
          v37[3] = &v30;
          v10 = std::__tree<std::__value_type<SKNode *,std::vector<UITouch *>>,std::__map_value_compare<SKNode *,std::__value_type<SKNode *,std::vector<UITouch *>>,std::less<SKNode *>,true>,std::allocator<std::__value_type<SKNode *,std::vector<UITouch *>>>>::__emplace_unique_key_args<SKNode *,std::piecewise_construct_t const&,std::tuple<SKNode * const&>,std::tuple<>>(&v36, &v30);
          std::vector<UITouch *>::push_back[abi:nn200100]((v10 + 5), &v35);
          v6 = 1;
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v7);
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13 = v36;
  if (v36 != v37)
  {
    do
    {
      v14 = v13[5];
      v25 = v13[4];
      v15 = v13[6];
      while (v14 != v15)
      {
        v16 = *v14;
        [v12 addObject:*v14];
        [v11 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", objc_msgSend(v16, "hash"))}];
        ++v14;
      }

      [v25 touchesCancelled:v12 withEvent:a4];
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v17 = [v11 countByEnumeratingWithState:&v26 objects:v38 count:16];
      if (v17)
      {
        v18 = *v27;
        do
        {
          for (j = 0; j != v17; ++j)
          {
            if (*v27 != v18)
            {
              objc_enumerationMutation(v11);
            }

            [(NSMutableDictionary *)self->_touchMap removeObjectForKey:*(*(&v26 + 1) + 8 * j)];
          }

          v17 = [v11 countByEnumeratingWithState:&v26 objects:v38 count:16];
        }

        while (v17);
      }

      [v11 removeAllObjects];
      [v12 removeAllObjects];
      v20 = v13[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v13[2];
          v22 = *v21 == v13;
          v13 = v21;
        }

        while (!v22);
      }

      v13 = v21;
    }

    while (v21 != v37);
  }

  std::__tree<std::__value_type<SKNode *,std::vector<UITouch *>>,std::__map_value_compare<SKNode *,std::__value_type<SKNode *,std::vector<UITouch *>>,std::less<SKNode *>,true>,std::allocator<std::__value_type<SKNode *,std::vector<UITouch *>>>>::destroy(&v36, v37[0]);
  return v6;
}

@end