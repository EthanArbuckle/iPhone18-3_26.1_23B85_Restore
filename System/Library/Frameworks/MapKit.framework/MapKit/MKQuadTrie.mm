@interface MKQuadTrie
- (BOOL)contains:(id)a3;
- (BOOL)remove:(id)a3;
- (MKQuadTrie)initWithInitialRegion:(id)a3 minimumSize:(id)a4 maximumItems:(unsigned int)a5;
- (id)_itemsInMapRect:(id)a3;
- (id)allItems;
- (id)breadthFirstDescription;
- (id)depthFirstDescription;
- (id)description;
- (id)itemDescriptions;
- (id)itemsInMapRect:(id)a3;
- (id)itemsPassingRectTest:(id)a3 coordinateTest:(id)a4;
- (unint64_t)count;
- (void)clearAllItemsPerforming:(id)a3;
- (void)dealloc;
- (void)foreach:(id)a3;
- (void)insert:(id)a3;
@end

@implementation MKQuadTrie

- (id)allItems
{
  v2 = [(MKQuadTrie *)self itemsInMapRect:self->_initialRegion.origin.x, self->_initialRegion.origin.y, self->_initialRegion.size.width, self->_initialRegion.size.height];
  v3 = [v2 allObjects];

  return v3;
}

- (id)itemDescriptions
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  root = self->__root;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__MKQuadTrie_itemDescriptions__block_invoke;
  v7[3] = &unk_1E76C8B68;
  v5 = v3;
  v8 = v5;
  _breadthFirstApply(root, v7);

  return v5;
}

uint64_t __30__MKQuadTrie_itemDescriptions__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v3 = *(*(a2 + 32) + 8) - *v2;
    if (v3)
    {
      v6 = 0;
      v7 = v3 >> 3;
      if (v7 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      do
      {
        v9 = *(**(a2 + 32) + 8 * v6);
        v10 = *(a1 + 32);
        v11 = [v9 description];
        [v10 appendFormat:@"%@\n", v11];

        ++v6;
      }

      while (v8 != v6);
    }
  }

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MKQuadTrie *)self breadthFirstDescription];
  v5 = [(MKQuadTrie *)self depthFirstDescription];
  v6 = [v3 stringWithFormat:@"Breadth first description:\n%@\n\nDepth first description:\n%@", v4, v5];

  return v6;
}

- (id)breadthFirstDescription
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  root = self->__root;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__MKQuadTrie_breadthFirstDescription__block_invoke;
  v9[3] = &unk_1E76C8B40;
  v9[4] = &v14;
  v9[5] = &v10;
  _breadthFirstApply(root, v9);
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"<%@ %p> %lu items, %lu nodes", v6, self, v15[3], v11[3]];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v7;
}

uint64_t __37__MKQuadTrie_breadthFirstDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    *(*(*(a1 + 32) + 8) + 24) += (v2[1] - *v2) >> 3;
  }

  ++*(*(*(a1 + 40) + 8) + 24);
  return 0;
}

- (id)depthFirstDescription
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  root = self->__root;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__MKQuadTrie_depthFirstDescription__block_invoke;
  v9[3] = &unk_1E76C8B40;
  v9[4] = &v14;
  v9[5] = &v10;
  __depthFirstApply(root, v9);
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"<%@ %p> %lu items, %lu nodes", v6, self, v15[3], v11[3]];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v7;
}

uint64_t __35__MKQuadTrie_depthFirstDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    *(*(*(a1 + 32) + 8) + 24) += (v2[1] - *v2) >> 3;
  }

  ++*(*(*(a1 + 40) + 8) + 24);
  return 0;
}

- (void)clearAllItemsPerforming:(id)a3
{
  v4 = a3;
  root = self->__root;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__MKQuadTrie_clearAllItemsPerforming___block_invoke;
  v8[3] = &unk_1E76C8AF0;
  v8[4] = v4;
  _breadthFirstApply(root, v8);
  initialRegion = self->_initialRegion;
  v6 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A00405CA67C4CuLL);
  *v6 = initialRegion;
  self->__root = v6;
  operator new();
}

uint64_t __38__MKQuadTrie_clearAllItemsPerforming___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v3 = a2[4];
    if (v3)
    {
      v4 = *(a2[4] + 8) - *v3;
      if (v4)
      {
        v6 = 0;
        v7 = v4 >> 3;
        if (v7 <= 1)
        {
          v8 = 1;
        }

        else
        {
          v8 = v7;
        }

        do
        {
          v9 = *(*a2[4] + 8 * v6);
          (*(*(a1 + 32) + 16))();

          ++v6;
        }

        while (v8 != v6);
      }
    }
  }

  MKQuadTrieNodeFree(a2);
  return 0;
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  root = self->__root;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __19__MKQuadTrie_count__block_invoke;
  v5[3] = &unk_1E76C8B18;
  v5[4] = &v6;
  _breadthFirstApply(root, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __19__MKQuadTrie_count__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    *(*(*(a1 + 32) + 8) + 24) += (v2[1] - *v2) >> 3;
  }

  return 0;
}

- (void)foreach:(id)a3
{
  v4 = a3;
  root = self->__root;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __22__MKQuadTrie_foreach___block_invoke;
  v7[3] = &unk_1E76C8AF0;
  v8 = v4;
  v6 = v4;
  _breadthFirstApply(root, v7);
}

uint64_t __22__MKQuadTrie_foreach___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = *v2;
  if (*(*(a2 + 32) + 8) == v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = 1; ; ++i)
  {
    v8 = *(v3 + 8 * v6);
    v9 = (*(*(a1 + 32) + 16))();

    if ((v9 & 1) == 0)
    {
      break;
    }

    v6 = i;
    v3 = **(a2 + 32);
    if (v6 >= (*(*(a2 + 32) + 8) - v3) >> 3)
    {
      return 0;
    }
  }

  return 2;
}

- (id)itemsPassingRectTest:(id)a3 coordinateTest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:512 capacity:10];
    root = self->__root;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__MKQuadTrie_itemsPassingRectTest_coordinateTest___block_invoke;
    v15[3] = &unk_1E76C8AC8;
    v17 = v6;
    v12 = v10;
    v16 = v12;
    v18 = v8;
    __depthFirstApply(root, v15);
    v13 = v18;
    v9 = v12;
  }

  return v9;
}

uint64_t __50__MKQuadTrie_itemsPassingRectTest_coordinateTest___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = (*(*(a1 + 40) + 16))(*a2, *(a2 + 8), *(a2 + 16), *(a2 + 24));
  if (!v4)
  {
    return 1;
  }

  if (!*(a2 + 40))
  {
    v7 = **(a2 + 32);
    v6 = *(*(a2 + 32) + 8);
    v8 = (v6 - v7) >> 3;
    if (v4 == 1)
    {
      if (v6 != v7)
      {
        v9 = 0;
        v10 = 1;
        do
        {
          [*(a1 + 32) addObject:*(**(a2 + 32) + 8 * v9)];
          v9 = v10;
          v11 = v8 > v10++;
        }

        while (v11);
      }
    }

    else if (v6 != v7)
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = *(**(a2 + 32) + 8 * v12);
        v15 = *(a1 + 48);
        [v14 coordinate];
        if ((*(v15 + 16))(v15))
        {
          [*(a1 + 32) addObject:v14];
        }

        v12 = v13;
        v11 = v8 > v13++;
      }

      while (v11);
    }
  }

  return 0;
}

- (id)itemsInMapRect:(id)a3
{
  var1 = a3.var1.var1;
  v4 = a3.var0.var1;
  var0 = a3.var0.var0;
  v7 = a3.var0.var0 + a3.var1.var0;
  if (a3.var0.var0 < 0.0 && v7 > 0.0 || (v7 > 268435456.0 ? (v8 = a3.var0.var0 < 268435456.0) : (v8 = 0), v8))
  {
    v22.size.width = 268435456.0;
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.height = 268435456.0;
    v21 = MKMapRectIntersection(a3, v22);
    v10 = INFINITY;
    v11 = v7 + -268435456.0;
    if (v7 > 268435456.0)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = INFINITY;
    }

    if (v7 <= 268435456.0)
    {
      v11 = 0.0;
    }

    else
    {
      v10 = v4;
    }

    if (v7 > 268435456.0)
    {
      v13 = var1;
    }

    else
    {
      v13 = 0.0;
    }

    v14 = fabs(var0);
    v15 = var0 < 0.0;
    if (var0 < 0.0)
    {
      v16 = var0 + 268435456.0;
    }

    else
    {
      v16 = v12;
    }

    if (v15)
    {
      v17 = v14;
    }

    else
    {
      v4 = v10;
      v17 = v11;
    }

    if (!v15)
    {
      var1 = v13;
    }

    v9 = [(MKQuadTrie *)self _itemsInMapRect:v21.origin.x, v21.origin.y, v21.size.width, v21.size.height];
    if (!v9)
    {
      v9 = [MEMORY[0x1E695DFA8] set];
    }

    v18 = [(MKQuadTrie *)self _itemsInMapRect:v16, v4, v17, var1];
    if (v18)
    {
      [v9 unionSet:v18];
    }
  }

  else
  {
    v9 = [(MKQuadTrie *)self _itemsInMapRect:a3.var0.var0, a3.var0.var1];
  }

  return v9;
}

- (id)_itemsInMapRect:(id)a3
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v5 = a3.var0.var1;
  v6 = a3.var0.var0;
  v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v17.origin.x = v6;
  v17.origin.y = v5;
  v17.size.width = var0;
  v17.size.height = var1;
  v16 = MKMapRectIntersection(self->_initialRegion, v17);
  if (v16.origin.x != INFINITY || v16.origin.y != INFINITY)
  {
    root = self->__root;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __30__MKQuadTrie__itemsInMapRect___block_invoke;
    v12[3] = &unk_1E76C8AA0;
    v14 = v16;
    v13 = v8;
    __depthFirstApply(root, v12);
  }

  return v8;
}

uint64_t __30__MKQuadTrie__itemsInMapRect___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v34.origin.x = *a2;
  v34.origin.y = v5;
  v34.size.width = v6;
  v34.size.height = v7;
  v37.origin.x = v8;
  v37.origin.y = v9;
  v37.size.width = v10;
  v37.size.height = v11;
  if (!MKMapRectIntersectsRect(v34, v37))
  {
    return 1;
  }

  if (!*(a2 + 40))
  {
    v13 = *(a2 + 32);
    v15 = *v13;
    v14 = v13[1];
    v16 = (v14 - *v13) >> 3;
    v35.origin.x = v8;
    v35.origin.y = v9;
    v35.size.width = v10;
    v35.size.height = v11;
    v38.origin.x = v4;
    v38.origin.y = v5;
    v38.size.width = v6;
    v38.size.height = v7;
    if (MKMapRectContainsRect(v35, v38))
    {
      if (v14 != v15)
      {
        v17 = 0;
        v18 = 1;
        do
        {
          [*(a1 + 32) addObject:*(**(a2 + 32) + 8 * v17)];
          v17 = v18;
          v19 = v16 > v18++;
        }

        while (v19);
      }
    }

    else if (v14 != v15)
    {
      v20 = 0;
      v21 = 1;
      do
      {
        v22 = *(**(a2 + 32) + 8 * v20);
        v23 = *(a1 + 40);
        v24 = *(a1 + 48);
        v25 = *(a1 + 56);
        v26 = *(a1 + 64);
        v27 = v22;
        [v27 coordinate];
        v29 = v28;
        v31 = v30;

        v33.x = MKTilePointForCoordinate(v29, v31, 21.0);
        v33.y = v32;
        v36.origin.x = v23;
        v36.origin.y = v24;
        v36.size.width = v25;
        v36.size.height = v26;
        if (MKMapRectContainsPoint(v36, v33))
        {
          [*(a1 + 32) addObject:v27];
        }

        v20 = v21;
        v19 = v16 > v21++;
      }

      while (v19);
    }
  }

  return 0;
}

- (BOOL)contains:(id)a3
{
  v4 = a3;
  root = self->__root;
  v6 = *root;
  v7 = root[1];
  v8 = root[2];
  v9 = root[3];
  v10 = v4;
  [v10 coordinate];
  v12 = v11;
  v14 = v13;

  v28.x = MKTilePointForCoordinate(v12, v14, 21.0);
  v28.y = v15;
  v29.origin.x = v6;
  v29.origin.y = v7;
  v29.size.width = v8;
  v29.size.height = v9;
  if (MKMapRectContainsPoint(v29, v28))
  {
    v16 = self->__root;
    v17 = v10;
    v18 = *(_insertionNodeForItem(v17, v16) + 32);
    v19 = *v18;
    v20 = *(v18 + 8) - *v18;
    if (v20)
    {
      v21 = v20 >> 3;
      if (v21 <= 1)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21;
      }

      if (*v19 == v17)
      {
        v26 = 1;
      }

      else
      {
        v23 = 0;
        v24 = v19 + 1;
        while (v22 - 1 != v23)
        {
          v25 = v24[v23++];
          if (v25 == v17)
          {
            goto LABEL_15;
          }
        }

        v23 = v22;
LABEL_15:
        v26 = v23 < v21;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (BOOL)remove:(id)a3
{
  v4 = a3;
  root = self->__root;
  v6 = *root;
  v7 = root[1];
  v8 = root[2];
  v9 = root[3];
  v10 = v4;
  [v10 coordinate];
  v12 = v11;
  v14 = v13;

  v42.x = MKTilePointForCoordinate(v12, v14, 21.0);
  v42.y = v15;
  v43.origin.x = v6;
  v43.origin.y = v7;
  v43.size.width = v8;
  v43.size.height = v9;
  if (MKMapRectContainsPoint(v43, v42))
  {
    v16 = self->__root;
    v17 = v10;
    v18 = *(_insertionNodeForItem(v17, v16) + 32);
    v19 = *v18;
    v20 = v18[1];
    if (v20 == *v18)
    {
LABEL_12:

LABEL_21:
      v38 = 0;
      v39 = &v38;
      v40 = 0x2020000000;
      v41 = 0;
      v33 = self->__root;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __21__MKQuadTrie_remove___block_invoke;
      v35[3] = &unk_1E76C8A78;
      v36 = v17;
      v37 = &v38;
      _breadthFirstApply(v33, v35);
      v28 = *(v39 + 24);

      _Block_object_dispose(&v38, 8);
      goto LABEL_22;
    }

    v21 = v20 - *v18;
    if (v21 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v20 - *v18;
    }

    if (*v19 != v17)
    {
      v23 = 0;
      v24 = v22 - 1;
      while (v24 != v23)
      {
        v25 = v19[++v23];
        if (v25 == v17)
        {
          v26 = v23 < v21;
          v27 = v23;
          goto LABEL_14;
        }
      }

      goto LABEL_12;
    }

    v27 = 0;
    v26 = 1;
LABEL_14:
    v29 = &v19[v27];
    v30 = &v19[v27 + 1];
    if (v30 != v20)
    {
      do
      {
        v29 = v30;
        v31 = *(v30 - 1);
        *(v30 - 1) = *v30;
        *v30 = 0;

        v30 = v29 + 1;
      }

      while (v29 + 1 != v20);
      v20 = v18[1];
    }

    while (v20 != v29)
    {
      v32 = *--v20;
    }

    v18[1] = v29;

    if (!v26)
    {
      goto LABEL_21;
    }

    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

LABEL_22:

  return v28 & 1;
}

uint64_t __21__MKQuadTrie_remove___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*(a2 + 32) + 8) - *v2;
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  v7 = v3 >> 3;
  if (v7 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  while (1)
  {
    v9 = *(**(a2 + 32) + 8 * v6);
    v10 = v9;
    if (v9 == *(a1 + 32))
    {
      break;
    }

    if (v8 == ++v6)
    {
      return 0;
    }
  }

  v12 = *(a2 + 32);
  v13 = v6 << 32;
  v14 = v12[1];
  v15 = *v12 + (v13 >> 29);
  v16 = (v15 + 8);
  if (v15 + 8 != v14)
  {
    do
    {
      v15 = v16;
      v17 = *(v16 - 1);
      *(v16 - 1) = *v16;
      *v16 = 0;

      v16 = (v15 + 8);
    }

    while (v15 + 8 != v14);
    v14 = v12[1];
  }

  while (v14 != v15)
  {
    v18 = *(v14 - 8);
    v14 -= 8;
  }

  v12[1] = v15;
  *(*(*(a1 + 40) + 8) + 24) = 1;

  return 2;
}

- (void)insert:(id)a3
{
  v14 = a3;
  [v14 coordinate];
  v5 = v4;
  v7 = v6;

  root = self->__root;
  v9 = *root;
  v10 = root[1];
  v11 = root[2];
  v12 = root[3];
  v16.x = MKTilePointForCoordinate(v5, v7, 21.0);
  v16.y = v13;
  v17.origin.x = v9;
  v17.origin.y = v10;
  v17.size.width = v11;
  v17.size.height = v12;
  if (MKMapRectContainsPoint(v17, v16))
  {
    _insert(v14, root, self);
  }
}

- (void)dealloc
{
  [(MKQuadTrie *)self clearAllItemsPerforming:0];
  MKQuadTrieNodeFree(self->__root);
  v3.receiver = self;
  v3.super_class = MKQuadTrie;
  [(MKQuadTrie *)&v3 dealloc];
}

- (MKQuadTrie)initWithInitialRegion:(id)a3 minimumSize:(id)a4 maximumItems:(unsigned int)a5
{
  var1 = a4.var1;
  var0 = a4.var0;
  v8 = a3.var1.var1;
  v9 = a3.var1.var0;
  v10 = a3.var0.var1;
  v11 = a3.var0.var0;
  v16.receiver = self;
  v16.super_class = MKQuadTrie;
  v12 = [(MKQuadTrie *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_minSize.width = var0;
    v12->_minSize.height = var1;
    v12->_maxItems = a5;
    v12->_initialRegion.origin.x = v11;
    v12->_initialRegion.origin.y = v10;
    v12->_initialRegion.size.width = v9;
    v12->_initialRegion.size.height = v8;
    v14 = malloc_type_calloc(1uLL, 0x30uLL, 0x10A00405CA67C4CuLL);
    *v14 = v11;
    v14[1] = v10;
    v14[2] = v9;
    v14[3] = v8;
    v13->__root = v14;
    operator new();
  }

  return 0;
}

@end