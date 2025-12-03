@interface CKIntervalMap
- (BOOL)containsIndex:(unint64_t)index;
- (BOOL)containsIndexes:(id)indexes;
- (CKIntervalMap)init;
- (id)allIndexes;
- (id)description;
- (void)enumerateObjectsForIndexes:(id)indexes usingBlock:(id)block;
- (void)maintainInvariants;
@end

@implementation CKIntervalMap

- (CKIntervalMap)init
{
  v6.receiver = self;
  v6.super_class = CKIntervalMap;
  v2 = [(CKIntervalMap *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    rangeMap = v2->_rangeMap;
    v2->_rangeMap = v3;
  }

  return v2;
}

- (void)maintainInvariants
{
  if (objc_msgSend_dirty(self, a2, v2))
  {
    v6 = objc_msgSend_rangeMap(self, v4, v5);
    v7 = v6[1];
    v8 = v6[2];
    v9 = v8 - v7;
    if ((v8 - v7) >= 0x21)
    {
      v10 = v9 >> 5;
      if (v9 >> 5 < 1)
      {
        v16 = 0;
        v12 = 0;
      }

      else
      {
        v11 = MEMORY[0x1E69E5398];
        v12 = v9 >> 5;
        while (1)
        {
          v13 = operator new(32 * v12, v11);
          if (v13)
          {
            break;
          }

          v14 = v12 >> 1;
          v15 = v12 > 1;
          v12 >>= 1;
          if (!v15)
          {
            v16 = 0;
            v12 = v14;
            goto LABEL_11;
          }
        }

        v16 = v13;
      }

LABEL_11:
      sub_1886B5EEC(v7, v8, v10, v16, v12);
      if (v16)
      {
        operator delete(v16);
      }

      v7 = v6[1];
      v8 = v6[2];
    }

    if (v7 != v8)
    {
      sub_1886B5E58(v6 + 1, 0, (v8 - v7) >> 5);
    }

    v19 = objc_msgSend_rangeMap(self, v17, v18);
    v20 = v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    if (v21 != v22)
    {
      v23 = *(v19 + 16);
      v24 = *(v19 + 8);
      while (1)
      {
        if (v23 != v22)
        {
          v25 = *v23 <= v24[1] + *v24 && v23[1] + *v23 >= *v24;
          if (v25 && v23[2] == v24[2])
          {
            break;
          }
        }

        v23 = v24;
        v24 += 4;
        if (v24 == v22)
        {
          goto LABEL_52;
        }
      }

      v26 = 0;
      v43 = 0uLL;
      v27 = v22;
      v44 = 0;
      do
      {
        if (v27 != v22 && ((v28 = *(v21 + 8) + *v21, *v27 <= v28) ? (v29 = v27[1] + *v27 >= *v21) : (v29 = 0), v29 && v27[2] == *(v21 + 16)))
        {
          v37 = *(v26 - 32);
          v25 = v28 >= v37;
          v38 = v28 - v37;
          if (!v25)
          {
            v38 = 0;
          }

          *(v26 - 24) = v38;
        }

        else
        {
          if (v26 >= v44)
          {
            v30 = (v26 - v43) >> 5;
            if ((v30 + 1) >> 59)
            {
              sub_1886B6DA4();
            }

            v31 = (v44 - v43) >> 4;
            if (v31 <= v30 + 1)
            {
              v31 = v30 + 1;
            }

            if ((v44 - v43) >= 0x7FFFFFFFFFFFFFE0)
            {
              v32 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v32 = v31;
            }

            v45[4] = &v43;
            if (v32)
            {
              sub_1886B6E44(v32);
            }

            v33 = 32 * v30;
            *v33 = *v21;
            *(v33 + 16) = *(v21 + 16);
            *(v33 + 24) = *(v21 + 24);
            v26 = v33 + 32;
            v34 = v33 + v43 - *(&v43 + 1);
            sub_1886B6EC0(v43, *(&v43 + 1), v34);
            v35 = v43;
            v36 = v44;
            *&v43 = v34;
            *(&v43 + 1) = v26;
            v44 = 0;
            v45[2] = v35;
            v45[3] = v36;
            v45[0] = v35;
            v45[1] = v35;
            sub_1886B6F2C(v45);
          }

          else
          {
            *v26 = *v21;
            *(v26 + 16) = *(v21 + 16);
            *(v26 + 24) = *(v21 + 24);
            v26 += 32;
          }

          *(&v43 + 1) = v26;
        }

        v27 = v21;
        v21 += 32;
      }

      while (v21 != v22);
      v39 = v44;
      v40 = *(v20 + 8);
      *(v20 + 8) = v43;
      *(v20 + 16) = v26;
      v43 = v40;
      v41 = *(v20 + 24);
      *(v20 + 24) = v39;
      v44 = v41;
      v45[0] = &v43;
      sub_1886B5DD0(v45);
    }

LABEL_52:

    objc_msgSend_setDirty_(self, v42, 0);
  }
}

- (BOOL)containsIndex:(unint64_t)index
{
  objc_msgSend_maintainInvariants(self, a2, index);
  v7 = objc_msgSend_rangeMap(self, v5, v6);
  v8 = v7[1];
  v9 = v7[2];
  if (v8 == v9)
  {
    goto LABEL_28;
  }

  v10 = (v9 - v8) >> 5;
  v11 = v7[1];
  do
  {
    v12 = v10 >> 1;
    v13 = &v11[4 * (v10 >> 1)];
    v15 = *v13;
    v14 = v13 + 4;
    v10 += ~(v10 >> 1);
    if (v15 < index)
    {
      v11 = v14;
    }

    else
    {
      v10 = v12;
    }
  }

  while (v10);
  v16 = index + 1;
  while (v11 != v8)
  {
    v17 = v11;
    v19 = *(v11 - 4);
    v11 -= 4;
    v18 = v19;
    if (v19 <= index)
    {
      v20 = *(v17 - 3) + v18;
      v21 = v20 <= index || v18 > v16;
      if (!v21 && v20 >= v16)
      {
        continue;
      }
    }

    goto LABEL_19;
  }

  v17 = v7[1];
LABEL_19:
  if (v17 == v9 || (v23 = *v17, *v17 > index) || ((v24 = v17[1] + v23, v24 > index) ? (v25 = v23 > v16) : (v25 = 1), !v25 ? (v26 = v24 >= v16) : (v26 = 0), !v26))
  {
LABEL_28:
    v17 = v7[2];
  }

  v28 = v17 != v9 && v17 != 0;

  return v28;
}

- (BOOL)containsIndexes:(id)indexes
{
  indexesCopy = indexes;
  objc_msgSend_maintainInvariants(self, v5, v6);
  v7 = objc_opt_new();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1886B55E8;
  v12[3] = &unk_1E70C1D80;
  v8 = v7;
  v13 = v8;
  objc_msgSend_enumerateObjectsForIndexes_usingBlock_(self, v9, indexesCopy, v12);
  LOBYTE(self) = objc_msgSend_containsIndexes_(v8, v10, indexesCopy);

  return self;
}

- (id)allIndexes
{
  objc_msgSend_maintainInvariants(self, a2, v2);
  v6 = objc_opt_new();
  v7 = 0;
  for (i = 0; ; ++i)
  {
    v9 = objc_msgSend_rangeMap(self, v4, v5);
    v10 = v9[2] - v9[1];

    if (i >= v10 >> 5)
    {
      break;
    }

    v13 = objc_msgSend_rangeMap(self, v11, v12);
    v14 = v13[1] + v7;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);

    objc_msgSend_addIndexesInRange_(v6, v18, v15, v16);
    v7 += 32;
  }

  return v6;
}

- (void)enumerateObjectsForIndexes:(id)indexes usingBlock:(id)block
{
  indexesCopy = indexes;
  blockCopy = block;
  objc_msgSend_maintainInvariants(self, v8, v9);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1886B57CC;
  v12[3] = &unk_1E70C1DA8;
  v12[4] = self;
  v10 = blockCopy;
  v13 = v10;
  objc_msgSend_enumerateRangesUsingBlock_(indexesCopy, v11, v12);
}

- (id)description
{
  objc_msgSend_maintainInvariants(self, a2, v2);
  v4 = objc_opt_new();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_msgSend_appendFormat_(v4, v7, @"<%@", v6);

  v10 = 0;
  for (i = 0; ; ++i)
  {
    v12 = objc_msgSend_rangeMap(self, v8, v9);
    v13 = v12[2] - v12[1];

    if (i >= v13 >> 5)
    {
      break;
    }

    v16 = objc_msgSend_rangeMap(self, v14, v15);
    v17 = (v16[1] + v10);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];

    if (i)
    {
      objc_msgSend_appendFormat_(v4, v21, @", ");
    }

    else
    {
      objc_msgSend_appendFormat_(v4, v21, @" ");
    }

    if (v19 == 1)
    {
      objc_msgSend_appendFormat_(v4, v22, @"%lu:%@", v18, v20);
    }

    else if (v19)
    {
      objc_msgSend_appendFormat_(v4, v22, @"%lu-%lu:%@", v18, v18 + v19 - 1, v20);
    }

    else
    {
      objc_msgSend_appendFormat_(v4, v22, @"%lu(0)", v18);
    }

    v10 += 32;
  }

  objc_msgSend_appendFormat_(v4, v14, @">");

  return v4;
}

@end