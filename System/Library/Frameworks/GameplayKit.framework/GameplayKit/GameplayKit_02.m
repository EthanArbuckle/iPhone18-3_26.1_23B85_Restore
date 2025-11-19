void sub_2389BD8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, void *a18, uint64_t a19, char a20, void *a21, uint64_t a22, char a23, void *a24, uint64_t a25, char a26, void *a27)
{
  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&a20, a21);

  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&a23, a24);
  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&a26, a27);

  _Unwind_Resume(a1);
}

void GKCDecisionTree::splitOnValueOfAttribute(GKCDecisionTree *this@<X0>, NSArray *a2@<X1>, NSNumber *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v49[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  a5[1] = 0;
  v9 = a5 + 1;
  a5[2] = 0;
  v45 = v8;
  *a5 = a5 + 1;
  v48[0] = @"predicate";
  v41 = v7;
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF <= %@", v8];
  v48[1] = @"value";
  v49[0] = v10;
  v49[1] = v8;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];

  v46[0] = @"predicate";
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF > %@", v8];
  v46[1] = @"value";
  v47[0] = v11;
  v47[1] = v8;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];

  v12 = 0;
  v13 = 0;
  while ([(NSArray *)v7 count]> v12)
  {
    v14 = [(NSArray *)v7 objectAtIndexedSubscript:v12];
    v15 = [v14 objectAtIndexedSubscript:a4];

    [v15 floatValue];
    v17 = v16;
    [(NSNumber *)v45 floatValue];
    v18 = v43;
    if (v17 > v19)
    {
      v18 = v44;
    }

    v20 = v18;

    v21 = v20;
    v13 = v21;
    v22 = *v9;
    if (!*v9)
    {
LABEL_11:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v23 = v22;
        v24 = v22[4];
        if (v21 >= v24)
        {
          break;
        }

        v22 = *v23;
        if (!*v23)
        {
          goto LABEL_11;
        }
      }

      if (v24 >= v21)
      {
        break;
      }

      v22 = v23[1];
      if (!v22)
      {
        goto LABEL_11;
      }
    }

    v25 = v23[5] == 0;

    if (v25)
    {
      v30 = objc_alloc(MEMORY[0x277CBEB18]);
      v31 = [(NSArray *)v7 objectAtIndexedSubscript:v12];
      v32 = [v30 initWithObjects:{v31, 0}];
      v33 = v13;
      v34 = v33;
      v35 = *v9;
      if (!*v9)
      {
LABEL_26:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v36 = v35;
          v37 = v35[4];
          if (v33 >= v37)
          {
            break;
          }

          v35 = *v36;
          if (!*v36)
          {
            goto LABEL_26;
          }
        }

        if (v37 >= v33)
        {
          break;
        }

        v35 = v36[1];
        if (!v35)
        {
          goto LABEL_26;
        }
      }

      v7 = v41;
      v39 = v36[5];
      v36[5] = v32;
    }

    else
    {
      v26 = v13;
      v27 = *v9;
      if (!*v9)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v28 = v27;
          v29 = v27[4];
          if (v26 >= v29)
          {
            break;
          }

          v27 = *v28;
          if (!*v28)
          {
            goto LABEL_19;
          }
        }

        if (v29 >= v26)
        {
          break;
        }

        v27 = v28[1];
        if (!v27)
        {
          goto LABEL_19;
        }
      }

      v31 = v26;
      v38 = v28[5];
      v34 = [(NSArray *)v7 objectAtIndexedSubscript:v12];
      [v38 addObject:v34];
    }

    ++v12;
  }

  v40 = *MEMORY[0x277D85DE8];
}

void sub_2389BE05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15)
{
  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(a15, *(a15 + 8));

  _Unwind_Resume(a1);
}

void GKCDecisionTree::binarySplitByAttributeValue(GKCDecisionTree *this@<X0>, NSArray *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v12[6] = *MEMORY[0x277D85DE8];
  v7 = a2;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v10 = v7;
  GKCDecisionTree::multiwaySplitByAttributeValue(this, v7, a3, &v11);
  if (v11 != v12)
  {
    v8 = *(v11 + 40);
    operator new();
  }

  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(&v11, v12[0]);

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2389BE7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  std::vector<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>::~vector[abi:ne200100](v10);

  _Unwind_Resume(a1);
}

void **std::vector<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 24;
        std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy((v3 - 24), *(v3 - 2));
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void GKCDecisionTree::splitByAttribute(GKCDecisionTree *this@<X0>, NSArray *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v25 = a2;
  v5 = 0;
  a4[1] = 0;
  v6 = a4 + 1;
  a4[2] = 0;
  *a4 = a4 + 1;
  for (i = [(NSArray *)v25 count]; i > v5; i = [(NSArray *)v25 count])
  {
    v9 = [(NSArray *)v25 objectAtIndexedSubscript:v5];
    v10 = [v9 objectAtIndexedSubscript:a3];

    v11 = *v6;
    if (!*v6)
    {
LABEL_10:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v12 = v11;
        v13 = v11[4];
        if (v10 >= v13)
        {
          break;
        }

        v11 = *v12;
        if (!*v12)
        {
          goto LABEL_10;
        }
      }

      if (v13 >= v10)
      {
        break;
      }

      v11 = v12[1];
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    if (v12[5])
    {
      v14 = *v6;
      if (!*v6)
      {
LABEL_17:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v15 = v14;
          v16 = v14[4];
          if (v10 >= v16)
          {
            break;
          }

          v14 = *v15;
          if (!*v15)
          {
            goto LABEL_17;
          }
        }

        if (v16 >= v10)
        {
          break;
        }

        v14 = v15[1];
        if (!v14)
        {
          goto LABEL_17;
        }
      }

      v23 = v15[5];
      v18 = [(NSArray *)v25 objectAtIndexedSubscript:v5];
      [v23 addObject:v18];
    }

    else
    {
      v17 = objc_alloc(MEMORY[0x277CBEB18]);
      v18 = [(NSArray *)v25 objectAtIndexedSubscript:v5];
      v19 = [v17 initWithObjects:{v18, 0}];
      v20 = *v6;
      if (!*v6)
      {
LABEL_25:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v10 >= v22)
          {
            break;
          }

          v20 = *v21;
          if (!*v21)
          {
            goto LABEL_25;
          }
        }

        if (v22 >= v10)
        {
          break;
        }

        v20 = v21[1];
        if (!v20)
        {
          goto LABEL_25;
        }
      }

      v8 = v21[5];
      v21[5] = v19;
    }

    ++v5;
  }
}

void sub_2389BEBF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12)
{
  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(v12, *(v12 + 8));

  _Unwind_Resume(a1);
}

void GKCDecisionTree::splitOnIndex(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  if (*a4 != a4 + 8)
  {
    v6 = *(*a4 + 32);
    operator new();
  }
}

id GKCDecisionTree::sortByAttributeWithAction(uint64_t a1, void *a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = *a2;
  v4 = a2 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      for (i = 0; [v5[5] count] > i; ++i)
      {
        v8 = v5[5];
        v18[0] = v5[4];
        v9 = [v8 objectAtIndexedSubscript:i];
        v10 = [v9 lastObject];
        v18[1] = v10;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];

        [v3 addObject:v11];
      }

      v12 = v5[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v5[2];
          v14 = *v13 == v5;
          v5 = v13;
        }

        while (!v14);
      }

      v5 = v13;
    }

    while (v13 != v4);
  }

  v15 = [v3 sortedArrayUsingComparator:&__block_literal_global_1];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t ___ZN15GKCDecisionTree25sortByAttributeWithActionENSt3__13mapIU8__strongP11objc_objectU8__strongP14NSMutableArrayNS0_4lessIS4_EENS0_9allocatorINS0_4pairIU8__strongKS3_S7_EEEEEE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 firstObject];
  [v6 floatValue];
  v8 = v7;
  v9 = [v5 firstObject];
  [v9 floatValue];
  v11 = v10;

  if (v8 <= v11)
  {
    v13 = [v4 firstObject];
    [v13 floatValue];
    v15 = v14;
    v16 = [v5 firstObject];
    [v16 floatValue];
    v18 = v17;

    if (v15 >= v18)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

void sub_2389BF0EC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__emplace_hint_unique_key_args<objc_object * {__strong},std::pair<objc_object * const {__strong},NSMutableArray * {__strong}> const&>(void *a1, void *a2, unint64_t *a3)
{
  v3 = std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__find_equal<objc_object * {__strong}>(a1, a2, &v6, &v5, a3);
  if (!*v3)
  {
    operator new();
  }

  return *v3;
}

void *std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__find_equal<objc_object * {__strong}>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = v18[4];
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < v13[4])
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = v22[4];
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
  }
}

void std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__tree_node<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,void *> *,long>>(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a1;
  if (!a1[2])
  {
    goto LABEL_19;
  }

  v6 = *a1;
  v8 = a1 + 1;
  v7 = a1[1];
  *a1 = a1 + 1;
  *(v7 + 16) = 0;
  a1[2] = 0;
  a1[1] = 0;
  if (v6[1])
  {
    v9 = v6[1];
  }

  else
  {
    v9 = v6;
  }

  if (!v9)
  {
    v14 = 0;
LABEL_18:
    std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(a1, v14);
    goto LABEL_19;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v24 = v10[1];
        if (!v24)
        {
          break;
        }

        do
        {
          v10 = v24;
          v24 = *v24;
        }

        while (v24);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (a2 != a3)
  {
    v15 = a2;
    while (1)
    {
      v12 = v10;
      objc_storeStrong(v9 + 4, v15[4]);
      objc_storeStrong(v9 + 5, v15[5]);
      v16 = *v8;
      v17 = (v5 + 8);
      v18 = (v5 + 8);
      if (*v8)
      {
        break;
      }

LABEL_27:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v17;
      *v18 = v9;
      v19 = **v5;
      if (v19)
      {
        goto LABEL_28;
      }

LABEL_29:
      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v5 + 8), v9);
      ++*(v5 + 16);
      if (v10)
      {
        v10 = v10[2];
        if (v10)
        {
          v22 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v23 = v10[1];
              if (!v23)
              {
                break;
              }

              do
              {
                v10 = v23;
                v23 = *v23;
              }

              while (v23);
            }
          }

          else
          {
            for (v10[1] = 0; v22; v22 = v10[1])
            {
              do
              {
                v10 = v22;
                v22 = *v22;
              }

              while (v22);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v20 = v15[1];
      if (v20)
      {
        do
        {
          v4 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v4 = v15[2];
          v21 = *v4 == v15;
          v15 = v4;
        }

        while (!v21);
      }

      if (v12)
      {
        v15 = v4;
        v9 = v12;
        if (v4 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    do
    {
      while (1)
      {
        v17 = v16;
        if (v9[4] >= v16[4])
        {
          break;
        }

        v16 = *v16;
        v18 = v17;
        if (!*v17)
        {
          goto LABEL_27;
        }
      }

      v16 = v16[1];
    }

    while (v16);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v17;
    v17[1] = v9;
    v19 = **v5;
    if (!v19)
    {
      goto LABEL_29;
    }

LABEL_28:
    *v5 = v19;
    goto LABEL_29;
  }

  v12 = v9;
LABEL_13:
  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(v5, v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    a1 = v5;
    v14 = v10;
    goto LABEL_18;
  }

LABEL_19:
  if (v4 != a3)
  {
    std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__emplace_multi<std::pair<objc_object * const {__strong},NSMutableArray * {__strong}> const&>();
  }
}

uint64_t **std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    v16 = *(v7 + 24);
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v17 = v14[1];
      v18 = *v17;
      v14[1] = *v17;
      if (v18)
      {
        *(v18 + 16) = v14;
      }

      v19 = v14[2];
      v17[2] = v19;
      v19[*v19 != v14] = v17;
      *v17 = v14;
      v14[2] = v17;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v20 = *v7;
    if (*v7 && *(v20 + 24) != 1)
    {
      v21 = v7[1];
      if (!v21)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v21 + 24) == 1)
      {
LABEL_62:
        *(v20 + 24) = 1;
        *(v7 + 24) = 0;
        v29 = v20[1];
        *v7 = v29;
        if (v29)
        {
          *(v29 + 16) = v7;
        }

        v30 = v7[2];
        v30[*v30 != v7] = v20;
        v20[1] = v7;
        v20[2] = v30;
        v7[2] = v20;
        v21 = v7;
      }

      else
      {
        v20 = v7;
      }

      v31 = v20[2];
      *(v20 + 24) = *(v31 + 24);
      *(v31 + 24) = 1;
      *(v21 + 24) = 1;
      v32 = *(v31 + 8);
      v33 = *v32;
      *(v31 + 8) = *v32;
      if (v33)
      {
        *(v33 + 16) = v31;
      }

      v34 = *(v31 + 16);
      v32[2] = v34;
      v34[*v34 != v31] = v32;
      *v32 = v31;
      *(v31 + 16) = v32;
      return result;
    }

    v21 = v7[1];
    if (v21 && *(v21 + 24) != 1)
    {
      goto LABEL_61;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v22 = v15[1];
    *v14 = v22;
    if (v22)
    {
      v22[2] = v14;
    }

    v23 = v14[2];
    v23[*v23 != v14] = v15;
    v15[1] = v14;
    v15[2] = v23;
    v14[2] = v15;
    v24 = v7[1];
    if (result == v24)
    {
      result = v7;
    }

    v7 = *v24;
  }

  v25 = *v7;
  if (*v7 && *(v25 + 24) != 1)
  {
    goto LABEL_69;
  }

  v26 = v7[1];
  if (!v26 || *(v26 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v25 && (v25[3] & 1) == 0)
  {
LABEL_69:
    v26 = v7;
  }

  else
  {
    *(v26 + 24) = 1;
    *(v7 + 24) = 0;
    v27 = *v26;
    v7[1] = *v26;
    if (v27)
    {
      *(v27 + 16) = v7;
    }

    v28 = v7[2];
    v26[2] = v28;
    v28[*v28 != v7] = v26;
    *v26 = v7;
    v7[2] = v26;
    v25 = v7;
  }

  v35 = v26[2];
  *(v26 + 24) = *(v35 + 24);
  *(v35 + 24) = 1;
  *(v25 + 24) = 1;
  v36 = *v35;
  v37 = *(*v35 + 8);
  *v35 = v37;
  if (v37)
  {
    *(v37 + 16) = v35;
  }

  v38 = v35[2];
  v38[*v38 != v35] = v36;
  *(v36 + 8) = v35;
  *(v36 + 16) = v38;
  v35[2] = v36;
  return result;
}

void *std::vector<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>::__emplace_back_slow_path<std::allocator<std::pair<objc_object * const {__strong},NSMutableArray * {__strong}>> const&>(void *a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v5 = (8 * ((a1[1] - *a1) >> 3));
  v5[1] = 0;
  v5[2] = 0;
  *v5 = v5 + 1;
  v6 = a2 + 1;
  v7 = *a2;
  if (*a2 == a2 + 1)
  {
    v8 = v5 + 3;
    v9 = *a1;
    v10 = a1[1];
    v11 = v5 + *a1 - v10;
    if (v10 == *a1)
    {
      goto LABEL_27;
    }
  }

  else
  {
    do
    {
      std::__tree<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<objc_object * {__strong},std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>,std::less<objc_object * {__strong}>,true>,std::allocator<std::__value_type<objc_object * {__strong},NSMutableArray * {__strong}>>>::__emplace_hint_unique_key_args<objc_object * {__strong},std::pair<objc_object * const {__strong},NSMutableArray * {__strong}> const&>(v5, v5 + 1, v7 + 4);
      v12 = v7[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v7[2];
          v14 = *v13 == v7;
          v7 = v13;
        }

        while (!v14);
      }

      v7 = v13;
    }

    while (v13 != v6);
    v8 = v5 + 3;
    v9 = *a1;
    v10 = a1[1];
    v11 = v5 + *a1 - v10;
    if (v10 == *a1)
    {
      goto LABEL_27;
    }
  }

  v15 = 0;
  do
  {
    while (1)
    {
      v16 = &v11[v15 * 8];
      v17 = &v9[v15 + 1];
      v18 = *v17;
      *v16 = v9[v15];
      *&v11[v15 * 8 + 8] = v18;
      v19 = &v11[v15 * 8 + 8];
      v20 = v9[v15 + 2];
      v16[2] = v20;
      if (!v20)
      {
        break;
      }

      *(v18 + 16) = v19;
      v9[v15] = v17;
      *v17 = 0;
      v9[v15 + 2] = 0;
      v15 += 3;
      if (&v9[v15] == v10)
      {
        goto LABEL_25;
      }
    }

    *v16 = v19;
    v15 += 3;
  }

  while (&v9[v15] != v10);
  do
  {
LABEL_25:
    std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(v9, v9[1]);
    v9 += 3;
  }

  while (v9 != v10);
  v9 = *a1;
LABEL_27:
  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_2389BFDD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(v2, *(v2 + 8));
  std::__split_buffer<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::map<objc_object * {__strong},NSMutableArray * {__strong}>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    std::__tree<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::__map_value_compare<NSString * {__strong},std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>,std::less<NSString * {__strong}>,true>,std::allocator<std::__value_type<NSString * {__strong},NSMutableArray * {__strong}>>>::destroy(i - 24, *(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_OWORD *std::vector<std::pair<objc_object * {__strong},GKCDecisionNode *>>::__emplace_back_slow_path<std::pair<objc_object * {__strong},GKCDecisionNode *>>(uint64_t a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 4;
  v5 = v4 + 1;
  if ((v4 + 1) >> 60)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v7 = *(a1 + 16) - v2;
  if (v7 >> 3 > v5)
  {
    v5 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (!(v8 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v9 = (v3 - *a1) >> 4;
  v10 = (16 * v4);
  v11 = *a2;
  *a2 = 0;
  v12 = &v10[-v9];
  *v10 = v11;
  v13 = v10 + 1;
  if (v2 != v3)
  {
    v14 = v2;
    v15 = v12;
    do
    {
      v16 = *v14;
      *v14 = 0;
      v14 += 2;
      *v15++ = v16;
    }

    while (v14 != v3);
    do
    {
      v17 = *v2;
      v2 += 2;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v12;
  *(a1 + 8) = v13;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v13;
}

void sub_2389C0DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void OpenSteer::SteerLibraryMixin<OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>>::steerToAvoidObstacles(uint64_t a1, const void ***a2, float a3)
{
  v48 = 0;
  v49 = 0;
  v50 = 0;
  (*(*a1 + 200))(a1);
  v46 = 0;
  v8 = *a2;
  if (*a2 != a2[1])
  {
    v9 = 0;
    v44 = v7 * a3;
    v45 = a3;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    do
    {
      v13 = *v8;
      if (*v8)
      {
        v14 = *v13;
        v15 = **v13;
        {
          v46 = 0;
          v51 = v13;
          v16 = (*(*a1 + 88))(a1, v13 + 12);
          v18 = v17 * -2.0;
          v20 = ((v19 * v19) + (v16 * v16)) + (v17 * v17);
          v21 = *(v13 + 2);
          v22 = (*(*a1 + 176))(a1);
          v23 = (-(v20 - ((v22 + v21) * (v22 + v21))) * 4.0) + (v18 * v18);
          if (v23 >= 0.0)
          {
            v24 = sqrtf(v23);
            v25 = (v24 - v18) * 0.5;
            v26 = (v24 + v18) * -0.5;
            if (v25 >= 0.0 || v26 >= 0.0)
            {
              v46 = 1;
              v27 = *(v13 + 12);
              LODWORD(v49) = *(v13 + 5);
              v48 = v27;
              v28 = fminf(v25, v26);
              if (v26 <= 0.0)
              {
                v28 = v25;
              }

              if (v25 <= 0.0)
              {
                v29 = v26;
              }

              else
              {
                v29 = v28;
              }

              v47 = v29;
            }
          }
        }

        else
        {
          v30 = *v14;
          {
            v14[3](v13, a1, &v46, v45);
          }
        }
      }

      if (!v9 || (v46 ? (v31 = v47 < v3) : (v31 = 0), v31))
      {
        v11 = *(&v48 + 1);
        v10 = *&v48;
        v9 = v46;
        v3 = v47;
        v12 = *&v49;
      }

      ++v8;
    }

    while (v8 != a2[1]);
    if (v9 && v3 < v44)
    {
      (*(*a1 + 256))(a1, v44, 0.0, 0.0);
      v32 = (*(*a1 + 48))(a1) - v10;
      v34 = v33 - v11;
      v36 = v35 - v12;
      v37 = (*(*a1 + 32))(a1);
      v40 = ((v37 * v32) + (v38 * v34)) + (v39 * v36);
      v41 = v32 - (v40 * v37);
      v42 = sqrtf(((v41 * v41) + ((v34 - (v40 * v38)) * (v34 - (v40 * v38)))) + ((v36 - (v40 * v39)) * (v36 - (v40 * v39))));
      if (v42 > 0.0)
      {
        v41 = v41 * (1.0 / v42);
      }

      v43 = (*(*a1 + 224))(a1) * v41;
    }
  }
}

void sub_2389C1480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void OpenSteer::SteerLibraryMixin<OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>>::steerToAvoidNeighbors(float *a1, uint64_t **a2, float a3)
{
  OpenSteer::SteerLibraryMixin<OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>>::steerToAvoidCloseNeighbors(a1, a2, 0.0);
  if (v7 == *&_static_vec3_zero && v5 == *(&_static_vec3_zero + 1) && v6 == *&dword_27DF48758)
  {
    v8 = *a2;
    if (*a2 == a2[1])
    {
      v9 = 0;
      v83 = 0.0;
      v84 = 0.0;
      v82 = 0.0;
      v86 = 0.0;
      v87 = 0.0;
      v85 = 0.0;
    }

    else
    {
      v9 = 0;
      v85 = 0.0;
      v86 = 0.0;
      v87 = 0.0;
      v82 = 0.0;
      v83 = 0.0;
      v84 = 0.0;
      do
      {
        v10 = *v8;
        if (*v8 != a1)
        {
          v89 = (*(*a1 + 176))(a1);
          v11 = (*(*a1 + 192))(a1);
          v13 = v12;
          v15 = v14;
          v16 = (*(*v10 + 192))(v10) - v11;
          v18 = v17 - v13;
          v20 = v19 - v15;
          v21 = ((v16 * v16) + (v18 * v18)) + (v20 * v20);
          v22 = 0.0;
          if (sqrtf(v21) != 0.0)
          {
            v23 = (*(*a1 + 48))(a1);
            v25 = v24;
            v27 = v26;
            v28 = (*(*v10 + 48))(v10);
            v22 = ((((v23 - v28) * v16) + ((v25 - v29) * v18)) + ((v27 - v30) * v20)) / v21;
          }

          if (v22 >= 0.0 && v22 < a3)
          {
            v31 = (*(*a1 + 32))(a1);
            v33 = v32;
            v35 = v34;
            v36 = (*(*a1 + 200))(a1) * v22;
            v88 = (*(*v10 + 32))(v10);
            v38 = v37;
            v40 = v39;
            v41 = (*(*v10 + 200))(v10) * v22;
            v42 = (*(*a1 + 48))(a1) + (v36 * v31);
            v44 = v43 + (v36 * v33);
            v46 = v45 + (v36 * v35);
            v47 = (*(*v10 + 48))(v10) + (v41 * v88);
            v49 = v48 + (v41 * v38);
            v51 = v50 + (v41 * v40);
            a1[20] = v44;
            a1[21] = v46;
            a1[16] = v47;
            a1[17] = v49;
            a1[18] = v51;
            a1[19] = v42;
            if (sqrtf((((v42 - v47) * (v42 - v47)) + ((v44 - v49) * (v44 - v49))) + ((v46 - v51) * (v46 - v51))) < (v89 + v89))
            {
              v83 = v44;
              v84 = v46;
              v82 = v42;
              v86 = v49;
              v87 = v51;
              v85 = v47;
              a3 = v22;
              v9 = v10;
            }
          }
        }

        ++v8;
      }

      while (v8 != a2[1]);
    }

    *v92 = v85;
    *&v92[1] = v86;
    *&v92[2] = v87;
    *v91 = v82;
    *&v91[1] = v83;
    *&v91[2] = v84;
    if (!v9)
    {
      v69 = 0.0;
LABEL_27:
      v81 = (**a1)(a1) * v69;
      return;
    }

    v52 = (*(*a1 + 32))(a1);
    v54 = v53;
    v56 = v55;
    v57 = (*(*v9 + 32))(v9);
    v60 = ((v57 * v52) + (v58 * v54)) + (v59 * v56);
    if (v60 >= -0.707)
    {
      v70 = *v9;
      if (v60 <= 0.707)
      {
        v78 = (*(v70 + 200))(v9);
        v69 = 0.0;
        if (v78 > (*(*a1 + 200))(a1))
        {
LABEL_26:
          (*(*a1 + 280))(a1, v9, v91, v92, v69);
          goto LABEL_27;
        }

        v61 = (**a1)(a1);
        v63 = v79;
        v65 = v80;
        v66 = (*(*v9 + 192))(v9);
      }

      else
      {
        v71 = (*(v70 + 48))(v9);
        v73 = v72;
        v75 = v74;
        v61 = v71 - (*(*a1 + 48))(a1);
        v63 = v73 - v76;
        v65 = v75 - v77;
        (**a1)(a1);
      }
    }

    else
    {
      v61 = v85 - (*(*a1 + 48))(a1);
      v63 = v86 - v62;
      v65 = v87 - v64;
      (**a1)(a1);
    }

    if ((((v66 * v61) + (v67 * v63)) + (v68 * v65)) <= 0.0)
    {
      v69 = 1.0;
    }

    else
    {
      v69 = -1.0;
    }

    goto LABEL_26;
  }
}

void sub_2389C1E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

float OpenSteer::SteerLibraryMixin<OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>>::steerForSeparation(uint64_t a1, uint64_t **a2, float a3, float a4)
{
  v4 = *a2;
  if (*a2 == a2[1])
  {
    return 0.0;
  }

  v7 = 0;
  v8 = a3 * a3;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  do
  {
    v23 = *v4;
    (*(*a1 + 176))(a1);
    if (v23 != a1)
    {
      v25 = v24 * 3.0;
      v26 = (*(*v23 + 48))(v23);
      v28 = v27;
      v30 = v29;
      v31 = v26 - (*(*a1 + 48))(a1);
      v33 = v28 - v32;
      v35 = v30 - v34;
      v36 = ((v31 * v31) + (v33 * v33)) + (v35 * v35);
      if (v36 < (v25 * v25) || v36 <= v8 && (v37 = sqrtf(v36), v38 = (*(*a1 + 32))(a1), ((((v38 * v31) + (v39 * v33)) + (v40 * v35)) / v37) > a4))
      {
        v12 = (*(**v4 + 48))();
        v14 = v13;
        v16 = v15;
        v17 = v12 - (*(*a1 + 48))(a1);
        v19 = v14 - v18;
        v21 = v16 - v20;
        v22 = 1.0 / (((v17 * v17) + (v19 * v19)) + (v21 * v21));
        v11 = v11 - (v17 * v22);
        v10 = v10 - (v19 * v22);
        v9 = v9 - (v21 * v22);
        ++v7;
      }
    }

    ++v4;
  }

  while (v4 != a2[1]);
  if (v7 > 0)
  {
    v41 = 1.0 / v7;
    v11 = v11 * v41;
    v42 = sqrtf(((v11 * v11) + ((v10 * v41) * (v10 * v41))) + ((v9 * v41) * (v9 * v41)));
    if (v42 > 0.0)
    {
      return v11 * (1.0 / v42);
    }
  }

  return v11;
}

void sub_2389C23D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

float OpenSteer::SteerLibraryMixin<OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>>::steerForAlignment(uint64_t a1, uint64_t **a2, float a3, float a4)
{
  v4 = *a2;
  if (*a2 == a2[1])
  {
    return 0.0;
  }

  v7 = 0;
  v8 = a3 * a3;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  do
  {
    v14 = *v4;
    (*(*a1 + 176))(a1);
    if (v14 != a1)
    {
      v16 = v15 * 3.0;
      v17 = (*(*v14 + 48))(v14);
      v19 = v18;
      v21 = v20;
      v22 = v17 - (*(*a1 + 48))(a1);
      v24 = v19 - v23;
      v26 = v21 - v25;
      v27 = ((v22 * v22) + (v24 * v24)) + (v26 * v26);
      if (v27 < (v16 * v16) || v27 <= v8 && (v28 = sqrtf(v27), v29 = (*(*a1 + 32))(a1), ((((v29 * v22) + (v30 * v24)) + (v31 * v26)) / v28) > a4))
      {
        v11 = (*(**v4 + 32))() + v11;
        v10 = v12 + v10;
        v9 = v13 + v9;
        ++v7;
      }
    }

    ++v4;
  }

  while (v4 != a2[1]);
  if (v7 > 0)
  {
    v32 = 1.0 / v7;
    v11 = -((*(*a1 + 32))(a1) - (v11 * v32));
    v35 = sqrtf(((v11 * v11) + (-(v33 - (v10 * v32)) * -(v33 - (v10 * v32)))) + (-(v34 - (v9 * v32)) * -(v34 - (v9 * v32))));
    if (v35 > 0.0)
    {
      return v11 * (1.0 / v35);
    }
  }

  return v11;
}

void sub_2389C2938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

float OpenSteer::SteerLibraryMixin<OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>>::steerForCohesion(uint64_t a1, uint64_t **a2, float a3, float a4)
{
  v4 = *a2;
  if (*a2 == a2[1])
  {
    return 0.0;
  }

  v7 = 0;
  v8 = a3 * a3;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  do
  {
    v14 = *v4;
    (*(*a1 + 176))(a1);
    if (v14 != a1)
    {
      v16 = v15 * 3.0;
      v17 = (*(*v14 + 48))(v14);
      v19 = v18;
      v21 = v20;
      v22 = v17 - (*(*a1 + 48))(a1);
      v24 = v19 - v23;
      v26 = v21 - v25;
      v27 = ((v22 * v22) + (v24 * v24)) + (v26 * v26);
      if (v27 < (v16 * v16) || v27 <= v8 && (v28 = sqrtf(v27), v29 = (*(*a1 + 32))(a1), ((((v29 * v22) + (v30 * v24)) + (v31 * v26)) / v28) > a4))
      {
        v11 = (*(**v4 + 48))() + v11;
        v10 = v12 + v10;
        v9 = v13 + v9;
        ++v7;
      }
    }

    ++v4;
  }

  while (v4 != a2[1]);
  if (v7 > 0)
  {
    v32 = 1.0 / v7;
    v11 = -((*(*a1 + 48))(a1) - (v11 * v32));
    v35 = sqrtf(((v11 * v11) + (-(v33 - (v10 * v32)) * -(v33 - (v10 * v32)))) + (-(v34 - (v9 * v32)) * -(v34 - (v9 * v32))));
    if (v35 > 0.0)
    {
      return v11 * (1.0 / v35);
    }
  }

  return v11;
}

float OpenSteer::SteerLibraryMixin<OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>>::steerForPursuit(uint64_t a1, uint64_t a2, float a3)
{
  v6 = (*(*a2 + 48))(a2);
  v8 = v7;
  v10 = v9;
  v11 = v6 - (*(*a1 + 48))(a1);
  v13 = v8 - v12;
  v15 = v10 - v14;
  v16 = sqrtf(((v11 * v11) + (v13 * v13)) + (v15 * v15));
  v17 = (*(*a1 + 32))(a1);
  v19 = v18;
  v21 = v20;
  v22 = (*(*a2 + 32))(a2);
  v25 = ((v22 * v17) + (v23 * v19)) + (v24 * v21);
  v26 = (*(*a1 + 32))(a1);
  v29 = (((v26 * v11) + (v27 * v13)) + (v28 * v15)) / v16;
  (*(*a1 + 200))(a1);
  v31 = 2;
  if (v29 <= 0.707)
  {
    v32 = 1;
  }

  else
  {
    v32 = 2;
  }

  if (v29 < -0.707)
  {
    v32 = 0;
  }

  v33 = *(&off_278A5C090 + v32);
  if (v25 <= 0.707)
  {
    v31 = 1;
  }

  if (v25 < -0.707)
  {
    v31 = 0;
  }

  v34 = (*(*a2 + 216))(a2, fminf((*(v33 + 4 * v31) * v16) / v30, a3));
  v35 = v34 - (*(*a1 + 48))(a1);
  if (v35 == 0.0)
  {
    v36 = 0.00000011921;
  }

  else
  {
    v36 = v35;
  }

  return v36 - (*(*a1 + 192))(a1);
}

void OpenSteer::SteerLibraryMixin<OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>>::steerToFollowPath(uint64_t a1, int a2, uint64_t a3, float a4)
{
  v7 = a2 * (a4 * (*(*a1 + 200))(a1));
  v29[0] = (*(*a1 + 216))(a1, a4);
  v29[1] = v8;
  v29[2] = v9;
  LODWORD(v27) = (*(*a1 + 48))(a1);
  HIDWORD(v27) = v10;
  v28 = v11;
  v12 = (*(*a3 + 16))(a3, &v27);
  v13 = (*(*a3 + 16))(a3, v29);
  if (v7 <= 0.0)
  {
    v14 = v12 <= v13;
  }

  else
  {
    v14 = v12 >= v13;
  }

  v28 = 0;
  v27 = 0;
  v26 = 0.0;
  v25[0] = (**a3)(a3, v29, &v27, &v26);
  v25[1] = v15;
  v25[2] = v16;
  if (v26 >= 0.0 || v14)
  {
    v24[0] = (*(*a3 + 8))(a3, v12 + v7);
    v24[1] = v17;
    v24[2] = v18;
    v19.n128_f32[0] = v26;
    (*(*a1 + 264))(a1, v29, v25, v24, v19);
    v20 = (*(*a1 + 48))(a1);
    v21 = v24[0] - v20;
    if (v21 == 0.0)
    {
      v22 = 0.00000011921;
    }

    else
    {
      v22 = v21;
    }

    v23 = v22 - (*(*a1 + 192))(a1);
  }
}

float OpenSteer::SteerLibraryMixin<OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>>::steerToStayOnPath(uint64_t a1, float (***a2)(void, _DWORD *, uint64_t *, float *))
{
  v16[0] = (*(*a1 + 216))(a1);
  v16[1] = v4;
  v16[2] = v5;
  v15 = 0;
  v14 = 0;
  v13 = 0.0;
  v12[0] = (**a2)(a2, v16, &v14, &v13);
  v12[1] = v6;
  v12[2] = v7;
  if (v13 < 0.0)
  {
    return *&_static_vec3_zero;
  }

  (*(*a1 + 264))(a1, v16, v12, v12, v13);
  v9 = (*(*a1 + 48))(a1);
  v10 = v12[0] - v9;
  if (v10 == 0.0)
  {
    v11 = 0.00000011921;
  }

  else
  {
    v11 = v10;
  }

  return v11 - (*(*a1 + 192))(a1);
}

void OpenSteer::SteerLibraryMixin<OpenSteer::LocalSpaceMixin<OpenSteer::AbstractVehicle>>::steerToAvoidCloseNeighbors(uint64_t a1, uint64_t **a2, float a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v8 = *v4;
      if (*v4 != a1)
      {
        v9 = (*(*a1 + 176))(a1);
        v10 = (v9 + a3) + (*(*v8 + 176))(v8);
        v11 = (*(*v8 + 48))(v8);
        v13 = v12;
        v15 = v14;
        v16 = v11 - (*(*a1 + 48))(a1);
        if (sqrtf(((v16 * v16) + ((v13 - v17) * (v13 - v17))) + ((v15 - v18) * (v15 - v18))) < v10)
        {
          (*(*a1 + 272))(a1, v8, a3);
          (*(*a1 + 32))(a1);
          return;
        }

        v3 = a2[1];
      }

      ++v4;
    }

    while (v4 != v3);
  }
}

void sub_2389C5468(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x23EE6C500](v3, 0x10A0C40841CC34ELL);

  _Unwind_Resume(a1);
}

void GKCHybridStrategist::bestMoveForActivePlayer(GKCHybridStrategist *this)
{
  v2 = *(this + 7);
  *(this + 104) = objc_opt_respondsToSelector() & 1;
  v3 = *(this + 7);
  *(this + 105) = objc_opt_respondsToSelector() & 1;
  v4 = [*(this + 7) players];
  *(this + 12) = [v4 count];

  GKCHybridStrategist::setupMinmax(this);
  [*(this + 7) copyWithZone:0];
  operator new();
}

void GKCHybridStrategist::GKCHybridStrategist(GKCHybridStrategist *this)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = objc_alloc_init(GKARC4RandomSource);
  *(this + 72) = xmmword_2389FBB20;
  *(this + 88) = xmmword_2389FBB70;
  *(this + 52) = 0;
  v2 = objc_opt_new();
  v3 = *(this + 6);
  *(this + 6) = v2;
}

void sub_2389C5B2C(_Unwind_Exception *a1)
{
  std::vector<std::vector<ClipperLib::IntPoint>>::~vector[abi:ne200100](v1 + 3);
  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void GKCHybridStrategist::~GKCHybridStrategist(id *this)
{
  v2 = this[3];
  if (v2)
  {
    v3 = this[4];
    v4 = this[3];
    if (v3 != v2)
    {
      v5 = this[4];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = this[3];
    }

    this[4] = v2;
    operator delete(v4);
  }

  v8 = *this;
  if (*this)
  {
    v9 = this[1];
    v10 = *this;
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 8;
      }

      while (v9 != v8);
      v10 = *this;
    }

    this[1] = v8;
    operator delete(v10);
  }
}

uint64_t GKCHybridStrategist::setupMinmax(GKCHybridStrategist *this)
{
  v2 = *this;
  v3 = *(this + 1);
  v4 = *this;
  if (v3 != *this)
  {
    do
    {
      v5 = *(v3 - 8);
      v3 -= 8;
    }

    while (v3 != v2);
    v4 = *this;
  }

  *(this + 1) = v2;
  v6 = *(this + 11);
  v7 = (v2 - v4) >> 3;
  if (v6 <= v7)
  {
    if (v6 < v7)
    {
      v8 = v4 + 8 * v6;
      while (v2 != v8)
      {
        v9 = *(v2 - 8);
        v2 -= 8;
      }

      *(this + 1) = v8;
    }
  }

  else
  {
    std::vector<objc_object  {objcproto11GKGameModel}* {__strong}>::__append(this, v6 - v7);
  }

  if (*(this + 11))
  {
    v10 = 0;
    do
    {
      v11 = [*(this + 7) copyWithZone:0];
      v12 = *(*this + 8 * v10);
      *(*this + 8 * v10) = v11;

      ++v10;
      v13 = *(this + 11);
    }

    while (v10 < v13);
    v14 = v13 + 1;
  }

  else
  {
    v14 = 1;
  }

  v16 = *(this + 3);
  v15 = *(this + 4);
  v17 = (this + 24);
  v18 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
  if (v14 <= v18)
  {
    if (v14 < v18)
    {
      v19 = v16 + 24 * v14;
      if (v15 != v19)
      {
        v20 = *(this + 4);
        do
        {
          v22 = *(v20 - 24);
          v20 -= 24;
          v21 = v22;
          if (v22)
          {
            *(v15 - 16) = v21;
            operator delete(v21);
          }

          v15 = v20;
        }

        while (v20 != v19);
      }

      *(this + 4) = v19;
    }
  }

  else
  {
    std::vector<std::vector<long>>::__append(this + 24, v14 - v18);
  }

  v23 = 0;
  v24 = *(this + 12);
  do
  {
    v26 = (*v17 + 24 * v23);
    v27 = (v26[1] - *v26) >> 3;
    if (v24 <= v27)
    {
      if (v24 < v27)
      {
        v26[1] = *v26 + 8 * v24;
      }
    }

    else
    {
      std::vector<long>::__append(v26, v24 - v27);
      v24 = *(this + 12);
    }

    if (v24)
    {
      v28 = 0;
      v29 = *(*v17 + 24 * v23);
      do
      {
        *(v29 + 8 * v28++) = 0;
        v24 = *(this + 12);
      }

      while (v28 < v24);
    }
  }

  while (v23++ < *(this + 11));
  v30 = *(this + 6);

  return [v30 setMaxLookAheadDepth:?];
}

uint64_t GKCHybridStrategist::treePolicy(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  for (i = a4; [i count]; i = v25)
  {
    v10 = *(a2 + 16);
    v9 = *(a2 + 24);
    if ([i count] > ((v9 - v10) >> 3))
    {
      GKCHybridStrategist::expand(a1, a2, i);
    }

    v11 = *(a2 + 16);
    v12 = *(a2 + 24) - v11;
    if (v12)
    {
      v13 = v12 >> 3;
      v14 = *(a2 + 56);
      v15 = *(a1 + 80);
      if (v13 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v13;
      }

      v17 = 0.0;
      do
      {
        v19 = *v11++;
        v18 = v19;
        v20 = *(v19 + 56);
        v21 = *(v19 + 64) / v20;
        v22 = log((v14 / v20));
        v23 = v21 + sqrt(v22 + v22) * v15;
        if (v23 >= v17)
        {
          a2 = v18;
        }

        v17 = fmax(v23, v17);
        --v16;
      }

      while (v16);
    }

    v24 = [*a2 activePlayer];

    v25 = [*a2 gameModelUpdatesForPlayer:v24];

    v7 = v24;
  }

  return a2;
}

uint64_t GKCHybridStrategist::defaultPolicy(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 activePlayer];
  v5 = [v3 gameModelUpdatesForPlayer:v4];

  v6 = 1;
  while ([v5 count])
  {
    if ((v6 & 1) != 0 && ([v3 activePlayer], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 56), "activePlayer"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v7 == v8))
    {
      v12 = [v3 activePlayer];
      v9 = GKCHybridStrategist::findBestMoveNPlayer(a1, v3, v12, *(a1 + 88), &v17, &v16);

      v6 = 0;
    }

    else
    {
      v9 = [v5 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 64), "nextIntWithUpperBound:", objc_msgSend(v5, "count"))}];
    }

    [v3 applyGameModelUpdate:v9];
    v10 = [v3 activePlayer];
    v11 = [v3 gameModelUpdatesForPlayer:v10];

    v5 = v11;
  }

  v13 = [*(a1 + 56) activePlayer];
  v14 = [v3 isWinForPlayer:v13];

  return v14;
}

void GKCHybridStrategist::expand(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 objectAtIndexedSubscript:*(a2 + 48)];
  objc_claimAutoreleasedReturnValue();
  ++*(a2 + 48);
  operator new();
}

void sub_2389C62C4(_Unwind_Exception *a1)
{
  MEMORY[0x23EE6C500](v3, 0x10A0C40AF943C6FLL);

  _Unwind_Resume(a1);
}

id GKCHybridStrategist::findBestMoveNPlayer(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v10 = a2;
  v42 = a3;
  v37 = v10;
  if ([v10 isWinForPlayer:?])
  {
    v11 = 1;
  }

  else if (*(a1 + 105) == 1 && ([v10 isLossForPlayer:v42] & 1) != 0)
  {
    v11 = -1;
  }

  else
  {
    v11 = 0;
  }

  *a5 = v11;
  *a6 = *(a1 + 88) - a4;
  v40 = a4 - 1;
  if (a4 < 1 || *a5)
  {
    GKCHybridStrategist::getScores(a1, v10, a4);
    v22 = 0;
  }

  else
  {
    v12 = [v10 activePlayer];
    v13 = [v10 gameModelUpdatesForPlayer:v12];
    v14 = [v13 count];
    if (v14)
    {
      v35 = v12;
      v43 = 0;
      v44 = 0;
      v15 = *(*a1 + 8 * a4 - 8);
      v16 = *(a1 + 24);
      v17 = [*(a1 + 56) players];
      v18 = [v17 indexOfObject:v12];
      v39 = (v16 + 24 * a4);

      if (*(a1 + 96))
      {
        v19 = 0;
        v20 = *v39;
        do
        {
          *(v20 + 8 * v19++) = 0x8000000000000000;
        }

        while (v19 < *(a1 + 96));
      }

      v10 = v37;
      if (v14 < 1)
      {
        v22 = 0;
      }

      else
      {
        v38 = v14;
        v36 = a5;
        v21 = 0;
        v22 = 0;
        v23 = 24 * a4;
        do
        {
          [v15 setGameModel:{v10, v35}];
          v24 = v13;
          v25 = [v13 objectAtIndexedSubscript:v21];
          [v15 applyGameModelUpdate:v25];
          v26 = GKCHybridStrategist::findBestMoveNPlayer(a1, v15, v42, v40, &v44, &v43);
          v27 = *(*(a1 + 24) + v23 - 24);
          v28 = *(v27 + 8 * v18);
          v29 = *v39;
          v30 = *(*v39 + 8 * v18);
          if (v28 > v30 || v28 == v30 && v43 < *a6)
          {
            if (*(a1 + 96))
            {
              v31 = 0;
              do
              {
                *(v29 + 8 * v31) = *(v27 + 8 * v31);
                ++v31;
              }

              while (v31 < *(a1 + 96));
            }

            v32 = v43;
            *v36 = v44;
            *a6 = v32;
            v33 = v25;

            v22 = v33;
            v10 = v37;
          }

          [v25 setValue:v28];

          ++v21;
          v13 = v24;
        }

        while (v21 != v38);
      }

      v12 = v35;
    }

    else
    {
      GKCHybridStrategist::getScores(a1, v10, a4);
      v22 = 0;
    }
  }

  return v22;
}

void GKCHybridStrategist::getScores(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  v5 = *(a1 + 24);
  v6 = [*(a1 + 56) players];
  v7 = 0;
  v8 = (v5 + 24 * a3);
  while (v7 < [v6 count])
  {
    v9 = [v6 objectAtIndexedSubscript:v7];
    *(*v8 + 8 * v7) = [v10 scoreForPlayer:v9];

    ++v7;
  }
}

void sub_2389C89F0(_Unwind_Exception *a1)
{
  v4 = v3;
  MEMORY[0x23EE6C500](v4, 0x10A1C4057B0C30BLL);
  MEMORY[0x23EE6C500](v2, 0xA1C40BD48D6D6);

  _Unwind_Resume(a1);
}

void sub_2389C8A3C(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_2389C8C90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2389C8CA8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2389C8CBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2389C8DC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2389C8DDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2389C8DF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::vector<NSObject * {__strong}>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *GKCQuadTree<NSObject>::~GKCQuadTree(void *result)
{
  *result = &unk_284B50308;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void GKCQuadTree<NSObject>::~GKCQuadTree(void *a1)
{
  *a1 = &unk_284B50308;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x23EE6C500);
}

uint64_t GKCQuadTreeNode<NSObject>::GKCQuadTreeNode(uint64_t a1, uint64_t a2, float32x2_t a3, float32x2_t a4, float a5)
{
  *a1 = &unk_284B50338;
  *(a1 + 8) = *&a3;
  *(a1 + 16) = *&a4;
  v6 = vsub_f32(a4, a3);
  *(a1 + 24) = v6;
  *(a1 + 32) = vmla_f32(a3, v6, 0x3F0000003F000000);
  *(a1 + 40) = a5;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  v7 = objc_alloc_init(GKQuadtreeNode);
  v8 = *(a1 + 112);
  *(a1 + 112) = v7;

  [*(a1 + 112) setCQuadTreeNode:a1];
  return a1;
}

void GKCQuadTreeNode<NSObject>::~GKCQuadTreeNode(uint64_t a1)
{
  GKCQuadTreeNode<NSObject>::~GKCQuadTreeNode(a1);

  JUMPOUT(0x23EE6C500);
}

uint64_t GKCQuadTreeNode<NSObject>::~GKCQuadTreeNode(uint64_t a1)
{
  *a1 = &unk_284B50338;
  v3 = (a1 + 56);
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *v3 = 0u;
  v3[1] = 0u;
  v7 = *(a1 + 88);
  for (i = *(a1 + 96); i != v7; i -= 8)
  {
    v9 = *(i - 8);
  }

  *(a1 + 96) = v7;

  v10 = *(a1 + 88);
  if (v10)
  {
    v11 = *(a1 + 96);
    v12 = *(a1 + 88);
    if (v11 != v10)
    {
      do
      {
        v13 = *(v11 - 8);
        v11 -= 8;
      }

      while (v11 != v10);
      v12 = *(a1 + 88);
    }

    *(a1 + 96) = v10;
    operator delete(v12);
  }

  return a1;
}

uint64_t GKCQuadTreeNode<NSObject>::addPoint(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = v5;
  v20 = v5;
  v7 = vmul_f32(*(a1 + 24), 0x3F0000003F000000);
  v8 = *(a1 + 40);
  if (v7.f32[0] < v8 || v7.f32[1] < v8)
  {
    v10 = *(a1 + 96);
    if (v10 >= *(a1 + 104))
    {
      v13 = std::vector<NSObject * {__strong}>::__emplace_back_slow_path<NSObject * const {__strong}&>((a1 + 88), &v20);
      v6 = v20;
      *(a1 + 96) = v13;
    }

    else
    {
      v6 = v5;
      *v10 = v6;
      *(a1 + 96) = v10 + 1;
    }
  }

  else
  {
    v11 = vcgt_f32(*(a1 + 32), *&a3);
    if (v11.i8[0])
    {
      if (v11.i8[4])
      {
        if (!*(a1 + 72))
        {
          v12 = *(a1 + 8);
          operator new();
        }
      }

      else if (!*(a1 + 56))
      {
        v16 = *(a1 + 8);
        v17 = *(a1 + 16);
        operator new();
      }
    }

    else if (v11.i8[4])
    {
      if (!*(a1 + 80))
      {
        v14 = *(a1 + 8);
        v15 = *(a1 + 16);
        operator new();
      }
    }

    else if (!*(a1 + 64))
    {
      v19 = *(a1 + 16);
      operator new();
    }

    a1 = GKCQuadTreeNode<NSObject>::addPoint(a3);
  }

  return a1;
}

void sub_2389C947C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  MEMORY[0x23EE6C500](a11, 0x10A1C4057B0C30BLL);

  _Unwind_Resume(a1);
}

uint64_t GKCQuadTreeNode<NSObject>::addQuad(uint64_t a1, void *a2, __n128 a3, double a4)
{
  v6 = a2;
  v30 = v6;
  v9.n128_u64[0] = vmul_f32(*(a1 + 24), 0x3F0000003F000000);
  v10 = *(a1 + 40);
  v11 = v9.n128_f32[1];
  if (v9.n128_f32[0] > v10 && v9.n128_f32[1] > v10)
  {
    v7.n128_u64[0] = *(a1 + 32);
    v14 = vcgt_f32(v7.n128_u64[0], a3.n128_u64[0]).u8[0];
    v15 = vadd_f32(*&a4, a3.n128_u64[0]);
    v28 = v7;
    v7.n128_u64[0] = vcgt_f32(v15, vadd_f32(v7.n128_u64[0], v9.n128_u64[0]));
    v16 = v14 | v7.n128_u8[0];
    if ((v16 & 1) == 0 && ((v8.n128_u64[1] = v28.n128_u64[1], v7.n128_u32[0] = v15.u32[1], a3.n128_f32[1] >= v28.n128_f32[1]) ? (v17 = v15.f32[1] <= (v28.n128_f32[1] + v9.n128_f32[1])) : (v17 = 0), v17))
    {
      if (!*(a1 + 64))
      {
        v24 = *(a1 + 16);
        operator new();
      }
    }

    else
    {
      v8.n128_u64[0] = *(a1 + 8);
      v18 = vcgt_f32(v8.n128_u64[0], a3.n128_u64[0]).u8[0] | vcgt_f32(v15, vadd_f32(v8.n128_u64[0], v9.n128_u64[0])).u8[0];
      if ((v18 & 1) == 0 && ((v7 = v28, v9 = a3, v9.n128_u32[0] = v15.u32[1], v7.n128_f32[0] = v28.n128_f32[1] + v11, a3.n128_f32[1] >= v28.n128_f32[1]) ? (v19 = v15.f32[1] <= v7.n128_f32[0]) : (v19 = 0), v19))
      {
        if (!*(a1 + 56))
        {
          v25 = *(a1 + 16);
          operator new();
        }
      }

      else if ((v16 & 1) == 0 && ((v9 = a3, v7 = v8, v9.n128_u32[0] = v15.u32[1], v7.n128_f32[0] = v8.n128_f32[1] + v11, a3.n128_f32[1] >= v8.n128_f32[1]) ? (v20 = v15.f32[1] <= v7.n128_f32[0]) : (v20 = 0), v20))
      {
        if (!*(a1 + 80))
        {
          v26 = *(a1 + 16);
          operator new();
        }
      }

      else
      {
        if ((v18 & 1) != 0 || ((v9 = a3, v9.n128_u32[0] = a3.n128_u32[1], v7 = v8, v7.n128_u32[0] = HIDWORD(*(a1 + 8)), v21 = v8.n128_f32[1] + v11, a3.n128_f32[1] >= v8.n128_f32[1]) ? (v22 = v15.f32[1] <= v21) : (v22 = 0), !v22))
        {
          v13 = *(a1 + 96);
          if (v13 < *(a1 + 104))
          {
            goto LABEL_29;
          }

LABEL_30:
          v23 = std::vector<NSObject * {__strong}>::__emplace_back_slow_path<NSObject * const {__strong}&>((a1 + 88), &v30);
          goto LABEL_31;
        }

        if (!*(a1 + 72))
        {
          operator new();
        }
      }
    }

    a1 = GKCQuadTreeNode<NSObject>::addQuad(a3, a4, v9, v7);
    goto LABEL_40;
  }

  v13 = *(a1 + 96);
  if (v13 >= *(a1 + 104))
  {
    goto LABEL_30;
  }

LABEL_29:
  *v13 = v6;
  v23 = (v13 + 1);
LABEL_31:
  *(a1 + 96) = v23;
LABEL_40:

  return a1;
}

void sub_2389C97A8(_Unwind_Exception *a1)
{
  MEMORY[0x23EE6C500](v1, 0x10A1C4057B0C30BLL);

  _Unwind_Resume(a1);
}

id *std::vector<NSObject * {__strong}>::__insert_with_size[abi:ne200100]<std::__wrap_iter<NSObject * const {__strong}*>,NSObject * const {__strong}*>(void ***a1, id *location, void **a3, void **a4, uint64_t a5)
{
  v5 = location;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
    }

    v13 = v9 - v11;
    if (v13 >> 2 > v12)
    {
      v12 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v25 = (location - v11);
    v109 = location - v11;
    v26 = 8 * v109;
    v27 = 8 * a5;
    v28 = 8 * v109 + 8 * a5;
    v29 = (8 * v109);
    do
    {
      v30 = *v7++;
      *v29++ = v30;
      v27 -= 8;
    }

    while (v27);
    v31 = a1[1];
    v32 = v5;
    v33 = v31 - v5;
    if (v31 == v5)
    {
      goto LABEL_37;
    }

    v34 = v33 - 8;
    if ((v33 - 8) >= 0xA8)
    {
      v37 = v5 >= &v25[8 * a5 + 8 + (v34 & 0xFFFFFFFFFFFFFFF8)] || v28 >= v5 + (v34 & 0xFFFFFFFFFFFFFFF8) + 8;
      v35 = v5;
      v36 = (v26 + 8 * a5);
      if (v37)
      {
        v38 = (v34 >> 3) + 1;
        v39 = v38 & 0x3FFFFFFFFFFFFFFCLL;
        v35 = &v5[v39];
        v36 = (v28 + v39 * 8);
        v40 = (8 * v109 + 8 * a5 + 16);
        v41 = (v5 + 2);
        v42 = v38 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v43 = *(v41 - 1);
          v44 = *v41;
          *(v41 - 1) = 0uLL;
          *v41 = 0uLL;
          *(v40 - 1) = v43;
          *v40 = v44;
          v40 += 2;
          v41 += 2;
          v42 -= 4;
        }

        while (v42);
        if (v38 == (v38 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      v35 = v5;
      v36 = (v26 + 8 * a5);
    }

    do
    {
      v45 = *v35;
      *v35++ = 0;
      *v36++ = v45;
    }

    while (v35 != v31);
LABEL_34:
    v46 = v5;
    do
    {
      v47 = *v46++;
    }

    while (v46 != v31);
    v32 = a1[1];
LABEL_37:
    v48 = v28 + v32 - v5;
    a1[1] = v5;
    v49 = *a1;
    v50 = v5 - *a1;
    v51 = v26 - v50;
    if (*a1 != v5)
    {
      v52 = v50 - 8;
      v53 = *a1;
      v54 = (v26 - v50);
      if ((v50 - 8) < 0x98)
      {
        goto LABEL_98;
      }

      v55 = v49 >= &v25[(v52 & 0xFFFFFFFFFFFFFFF8) - v50 + 8] || v51 >= v49 + (v52 & 0xFFFFFFFFFFFFFFF8) + 8;
      v53 = *a1;
      v54 = (v26 - v50);
      if (!v55)
      {
        goto LABEL_98;
      }

      v56 = v50 >> 3;
      v57 = (v52 >> 3) + 1;
      v58 = v57 & 0x3FFFFFFFFFFFFFFCLL;
      v53 = &v49[v58];
      v54 = (v51 + v58 * 8);
      v59 = (-8 * v56 + 8 * v109 + 16);
      v60 = (v49 + 2);
      v61 = v57 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v62 = *(v60 - 1);
        v63 = *v60;
        *(v60 - 1) = 0uLL;
        *v60 = 0uLL;
        *(v59 - 1) = v62;
        *v59 = v63;
        v59 += 2;
        v60 += 2;
        v61 -= 4;
      }

      while (v61);
      if (v57 != (v57 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_98:
        do
        {
          v64 = *v53;
          *v53++ = 0;
          *v54++ = v64;
        }

        while (v53 != v5);
      }

      do
      {
        v65 = *v49++;
      }

      while (v49 != v5);
      v49 = *a1;
    }

    *a1 = v51;
    a1[1] = v48;
    a1[2] = 0;
    if (v49)
    {
      operator delete(v49);
    }

    return (8 * v109);
  }

  v15 = v10 - location;
  v16 = (v10 - location) >> 3;
  if (v16 < a5)
  {
    v18 = (a3 + v15);
    if ((a3 + v15) == a4)
    {
      v19 = a1[1];
    }

    else
    {
      v66 = (a3 + v15);
      v19 = a1[1];
      do
      {
        v67 = *v66++;
        *v19 = v67;
        v19 += 8;
      }

      while (v66 != a4);
    }

    a1[1] = v19;
    if (v16 < 1)
    {
      return v5;
    }

    v68 = 8 * a5;
    v69 = (v19 - 8 * a5);
    if (v69 >= v10)
    {
      v72 = v19;
    }

    else
    {
      v70 = v69 + 1;
      if (v10 > (v69 + 1))
      {
        v70 = v10;
      }

      v71 = &v70[v68 / 8] + ~v19;
      if (v71 > 0xC7)
      {
        v91 = v19 + (v71 & 0xFFFFFFFFFFFFFFF8);
        v92 = v69 >= v91 + 8 || v19 >= v91 - v68 + 8;
        v72 = v19;
        if (v92)
        {
          v93 = (v71 >> 3) + 1;
          v94 = 8 * (v93 & 0x3FFFFFFFFFFFFFFCLL);
          v69 = (v69 + v94);
          v72 = (v19 + v94);
          v95 = (v19 + 16);
          v96 = (v19 + 16 - v68);
          v97 = v93 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v98 = *(v96 - 1);
            v99 = *v96;
            *(v96 - 1) = 0uLL;
            *v96 = 0uLL;
            *(v95 - 1) = v98;
            *v95 = v99;
            v95 += 2;
            v96 += 2;
            v97 -= 4;
          }

          while (v97);
          if (v93 == (v93 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_87;
          }
        }
      }

      else
      {
        v72 = v19;
      }

      do
      {
        v100 = *v69;
        *v69++ = 0;
        *v72++ = v100;
      }

      while (v69 < v10);
    }

LABEL_87:
    a1[1] = v72;
    if (v19 != &v5[a5])
    {
      v101 = (v19 - 8);
      v102 = &v5[v68 / 8] - v19;
      v103 = (v19 - 8 - v68);
      do
      {
        v104 = *v103;
        *v103-- = 0;
        v105 = *v101;
        *v101-- = v104;

        v102 += 8;
      }

      while (v102);
    }

    if (v10 != v5)
    {
      v106 = v5;
      do
      {
        v107 = *v7++;
        objc_storeStrong(v106++, v107);
      }

      while (v7 != v18);
    }

    return v5;
  }

  v20 = 8 * a5;
  v21 = (v10 - 8 * a5);
  if (v21 >= v10)
  {
    v24 = a1[1];
  }

  else
  {
    v22 = v21 + 1;
    if (v10 > (v21 + 1))
    {
      v22 = a1[1];
    }

    v23 = &v22[v20 / 8] + ~v10;
    if (v23 > 0xC7)
    {
      v73 = (v23 & 0xFFFFFFFFFFFFFFF8) + v10;
      v74 = v21 >= v73 + 8 || v10 >= v73 - v20 + 8;
      v24 = a1[1];
      if (v74)
      {
        v75 = (v23 >> 3) + 1;
        v76 = 8 * (v75 & 0x3FFFFFFFFFFFFFFCLL);
        v21 = (v21 + v76);
        v24 = (v10 + v76);
        v77 = (v10 + 16);
        v78 = (v10 + 16 - v20);
        v79 = v75 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v80 = *(v78 - 1);
          v81 = *v78;
          *(v78 - 1) = 0uLL;
          *v78 = 0uLL;
          *(v77 - 1) = v80;
          *v77 = v81;
          v77 += 2;
          v78 += 2;
          v79 -= 4;
        }

        while (v79);
        if (v75 == (v75 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_72;
        }
      }
    }

    else
    {
      v24 = a1[1];
    }

    do
    {
      v82 = *v21;
      *v21++ = 0;
      *v24++ = v82;
    }

    while (v21 < v10);
  }

LABEL_72:
  a1[1] = v24;
  if (v10 != &location[a5])
  {
    v83 = (v10 - 8);
    v84 = &location[v20 / 8] - v10;
    v85 = (v10 - 8 - v20);
    do
    {
      v86 = *v85;
      *v85-- = 0;
      v87 = *v83;
      *v83-- = v86;

      v84 += 8;
    }

    while (v84);
  }

  v88 = &v7[a5];
  v89 = v5;
  do
  {
    v90 = *v7++;
    objc_storeStrong(v89++, v90);
  }

  while (v7 != v88);
  return v5;
}

id *GKCQuadTreeNode<NSObject>::queryQuad(id *result, float32x2_t *a2, float32x2_t *a3, void ***a4)
{
  v7 = result;
  while (1)
  {
    while (1)
    {
      v8 = *(v7 + 11);
      v9 = v7[12];
      v10 = v7[11];
      if (v9 != v10)
      {
        result = std::vector<NSObject * {__strong}>::__insert_with_size[abi:ne200100]<std::__wrap_iter<NSObject * const {__strong}*>,NSObject * const {__strong}*>(a4, a4[1], v10, v9, v9 - v10);
      }

      v11 = v7[4];
      v12 = vmul_f32(v7[3], 0x3F0000003F000000);
      v13 = *a2;
      v14 = *a3;
      v15 = vadd_f32(*a3, *a2);
      if ((vcgt_f32(*a2, v11).u32[0] & 1) == 0)
      {
        break;
      }

      v16 = vadd_f32(v11, v12);
      if (vcgt_f32(v15, v11).u32[0] & 1) != 0 && (vcgt_f32(v16, v13).u8[0])
      {
        v17 = vcgt_f32(vadd_f32(vzip2_s32(v14, v11), vzip2_s32(v13, v12)), vzip2_s32(v11, v13));
        if (v17.i32[1] & v17.i32[0])
        {
          result = v7[8];
          if (result)
          {
            result = GKCQuadTreeNode<NSObject>::queryQuad(result, a2, a3, a4);
            v11 = v7[4];
            v13 = *a2;
            v14 = *a3;
            v15.i32[0] = vadd_f32(*a3, *a2).u32[0];
            v16.i32[0] = vadd_f32(v11, v12).u32[0];
          }
        }
      }

      if (v11.f32[0] >= v15.f32[0] || v16.f32[0] <= v13.f32[0])
      {
        return result;
      }

LABEL_50:
      v33.i32[0] = vdup_lane_s32(v14, 1).u32[0];
      v33.i32[1] = *(v7 + 3);
      v34 = vzip2_s32(v13, v12);
      v13.i32[0] = v33.i32[1];
      v35 = vcgt_f32(vadd_f32(v33, v34), v13);
      if (v35.i32[1] & v35.i32[0])
      {
        v7 = v7[10];
        if (v7)
        {
          continue;
        }
      }

      return result;
    }

    v19 = v7[1];
    v20 = vadd_f32(v19, v12);
    v21 = vcgt_f32(v15, v19).u8[0] & vcgt_f32(v20, v13).u8[0];
    if ((vcgt_f32(v11, v15).u32[0] & 1) == 0)
    {
      break;
    }

    if (v21)
    {
      v22 = vcgt_f32(vadd_f32(vzip2_s32(v14, v11), vzip2_s32(v13, v12)), vzip2_s32(v11, v13));
      if (v22.i32[1] & v22.i32[0])
      {
        result = v7[7];
        if (result)
        {
          result = GKCQuadTreeNode<NSObject>::queryQuad(result, a2, a3, a4);
          v19 = v7[1];
          v13 = *a2;
          v14 = *a3;
          v15.i32[0] = vadd_f32(*a3, *a2).u32[0];
          v20.i32[0] = vadd_f32(v19, v12).u32[0];
        }
      }
    }

    if (v19.f32[0] < v15.f32[0] && v20.f32[0] > v13.f32[0])
    {
      v24 = vcgt_f32(vadd_f32(vzip2_s32(v14, v19), vzip2_s32(v13, v12)), vzip2_s32(v19, v13));
      if (v24.i32[1] & v24.i32[0])
      {
        v7 = v7[9];
        if (v7)
        {
          continue;
        }
      }
    }

    return result;
  }

  if (v21)
  {
    v25 = vcgt_f32(vadd_f32(vzip2_s32(v14, v11), vzip2_s32(v13, v12)), vzip2_s32(v11, v13));
    if (v25.i32[1] & v25.i32[0])
    {
      result = v7[7];
      if (result)
      {
        result = GKCQuadTreeNode<NSObject>::queryQuad(result, a2, a3, a4);
        v19 = v7[1];
        v13 = *a2;
        v14 = *a3;
        v15.i32[0] = vadd_f32(*a3, *a2).u32[0];
        v20.i32[0] = vadd_f32(v19, v12).u32[0];
      }
    }
  }

  if (v19.f32[0] < v15.f32[0] && v20.f32[0] > v13.f32[0])
  {
    v27 = vcgt_f32(vadd_f32(vzip2_s32(v14, v19), vzip2_s32(v13, v12)), vzip2_s32(v19, v13));
    if (v27.i32[1] & v27.i32[0])
    {
      result = v7[9];
      if (result)
      {
        result = GKCQuadTreeNode<NSObject>::queryQuad(result, a2, a3, a4);
        v13 = *a2;
        v14 = *a3;
        v15.i32[0] = vadd_f32(*a3, *a2).u32[0];
      }
    }
  }

  v28 = v7[4];
  LODWORD(v29) = vadd_f32(v28, v12).u32[0];
  if (v28.f32[0] < v15.f32[0] && v29 > v13.f32[0])
  {
    v31 = vcgt_f32(vadd_f32(vzip2_s32(v14, v28), vzip2_s32(v13, v12)), vzip2_s32(v28, v13));
    if (v31.i32[1] & v31.i32[0])
    {
      result = v7[8];
      if (result)
      {
        result = GKCQuadTreeNode<NSObject>::queryQuad(result, a2, a3, a4);
        v28 = v7[4];
        v13 = *a2;
        v14 = *a3;
        v15.i32[0] = vadd_f32(*a3, *a2).u32[0];
        LODWORD(v29) = vadd_f32(v28, v12).u32[0];
      }
    }
  }

  if (v28.f32[0] < v15.f32[0] && v29 > v13.f32[0])
  {
    goto LABEL_50;
  }

  return result;
}

uint64_t GKCQuadTreeNode<NSObject>::removeDataRecursive(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v6 = a1[11];
  v5 = a1[12];
  if (v6 == v5)
  {
LABEL_4:

    v7 = a1[7];
    if (!v7 || (GKCQuadTreeNode<NSObject>::removeDataRecursive(v7, v4) & 1) == 0)
    {
      v8 = a1[8];
      if (!v8 || (GKCQuadTreeNode<NSObject>::removeDataRecursive(v8, v4) & 1) == 0)
      {
        v9 = a1[9];
        if (!v9 || (GKCQuadTreeNode<NSObject>::removeDataRecursive(v9, v4) & 1) == 0)
        {
          v10 = a1[10];
          if (!v10 || (GKCQuadTreeNode<NSObject>::removeDataRecursive(v10, v4) & 1) == 0)
          {

            return 0;
          }
        }
      }
    }
  }

  else
  {
    while (*v6 != v3)
    {
      if (++v6 == v5)
      {
        goto LABEL_4;
      }
    }

    v12 = v6 + 1;
    if (v6 + 1 != v5)
    {
      do
      {
        v6 = v12;
        v13 = *(v12 - 1);
        *(v12 - 1) = *v12;
        *v12 = 0;

        v12 = v6 + 1;
      }

      while (v6 + 1 != v5);
      v5 = a1[12];
    }

    while (v5 != v6)
    {
      v14 = *--v5;
    }

    a1[12] = v6;
  }

  return 1;
}

void GKCGraphNode::GKCGraphNode(GKCGraphNode *this)
{
  *this = &unk_284B50368;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  *(this + 12) = -1;
  *(this + 7) = 0;
}

void GKCGraphNode::~GKCGraphNode(id *this)
{
  *this = &unk_284B50368;
  objc_destroyWeak(this + 7);
  v2 = this[1];
  if (v2)
  {
    this[2] = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_284B50368;
  objc_destroyWeak(this + 7);
  v2 = this[1];
  if (v2)
  {
    this[2] = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_284B50368;
  objc_destroyWeak(this + 7);
  v2 = this[1];
  if (v2)
  {
    this[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x23EE6C500);
}

void GKCGraphNode::addConnectionToNode(id *this, GKCGraphNode *a2, int a3)
{
  v8 = a2;
  std::vector<GKCPolygonObstacle *>::push_back[abi:ne200100]((this + 1), &v8);
  WeakRetained = objc_loadWeakRetained(this + 7);
  v6 = [WeakRetained mutConnectedNodes];
  v7 = objc_loadWeakRetained(v8 + 7);
  [v6 addObject:v7];

  if (a3)
  {
    GKCGraphNode::addConnectionToNode(v8, this, 0);
  }
}

id *GKCGraphNode::removeConnectionToNode(id *this, id *a2, char a3)
{
  do
  {
    v4 = a3;
    v5 = this;
    v6 = this[2];
    v7 = v6 - this[1];
    if ((v7 >> 3) >= 1)
    {
      v8 = (v7 >> 3) & 0x7FFFFFFF;
      v9 = 8 * v8;
      v10 = v8 + 1;
      v11 = -8 * v8;
      do
      {
        v12 = *(v5 + 8);
        v13 = (v12 + v9);
        if (*(v12 + v9 - 8) == a2)
        {
          v14 = v13 - 8;
          v15 = &v6[v11 - v12];
          if (v13 != v6)
          {
            memmove(v13 - 8, v13, &v6[v11 - v12]);
          }

          v6 = &v14[v15];
          *(v5 + 16) = &v14[v15];
        }

        v9 -= 8;
        --v10;
        v11 += 8;
      }

      while (v10 > 1);
    }

    WeakRetained = objc_loadWeakRetained((v5 + 56));
    v17 = [WeakRetained mutConnectedNodes];
    v18 = objc_loadWeakRetained(a2 + 7);
    [v17 removeObject:v18];

    a3 = 0;
    this = a2;
    a2 = v5;
  }

  while ((v4 & 1) != 0);
  return this;
}

void GKCGraphNode::estimatedCostToNode(id *this, id *a2)
{
  v4 = objc_opt_class();
  if (methodOverridden(a2, v4, sel_estimatedCostToNode_))
  {
    WeakRetained = objc_loadWeakRetained(this + 7);
    v6 = objc_loadWeakRetained(a2 + 7);
    [WeakRetained estimatedCostToNode:v6];
  }
}

BOOL methodOverridden(id *a1, objc_class *a2, objc_selector *a3)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (!WeakRetained)
  {
    return 0;
  }

  v7 = WeakRetained;
  v8 = objc_loadWeakRetained(a1 + 7);
  v9 = objc_opt_class();

  if (v9 == a2)
  {
    return 0;
  }

  v10 = objc_loadWeakRetained(a1 + 7);
  v11 = [v10 methodForSelector:a3];
  v12 = v11 != [(objc_class *)a2 instanceMethodForSelector:a3];

  return v12;
}

void GKCGraphNode::costToNode(id *this, id *a2)
{
  v4 = objc_opt_class();
  if (methodOverridden(a2, v4, sel_costToNode_))
  {
    WeakRetained = objc_loadWeakRetained(this + 7);
    v6 = objc_loadWeakRetained(a2 + 7);
    [WeakRetained costToNode:v6];
  }
}

void GKCGridGraphNode::GKCGridGraphNode(GKCGridGraphNode *this)
{
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  *(this + 12) = -1;
  *(this + 7) = 0;
  *this = &unk_284B50398;
  *(this + 4) = 0u;
}

uint64_t GKCGridGraphNode::GKCGridGraphNode(uint64_t result, double a2)
{
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0;
  *(result + 48) = -1;
  *(result + 56) = 0;
  *result = &unk_284B50398;
  *(result + 64) = a2;
  *(result + 72) = 0;
  return result;
}

void GKCGridGraphNode::~GKCGridGraphNode(id *this)
{
  objc_destroyWeak(this + 9);
  *this = &unk_284B50368;
  objc_destroyWeak(this + 7);
  v2 = this[1];
  if (v2)
  {
    this[2] = v2;
    operator delete(v2);
  }
}

{
  objc_destroyWeak(this + 9);
  *this = &unk_284B50368;
  objc_destroyWeak(this + 7);
  v2 = this[1];
  if (v2)
  {
    this[2] = v2;
    operator delete(v2);
  }
}

{
  objc_destroyWeak(this + 9);
  *this = &unk_284B50368;
  objc_destroyWeak(this + 7);
  v2 = this[1];
  if (v2)
  {
    this[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x23EE6C500);
}

void GKCGridGraphNode::estimatedCostToNode(id *this, id *a2)
{
  v4 = objc_opt_class();
  if (methodOverridden(a2, v4, sel_estimatedCostToNode_))
  {
    WeakRetained = objc_loadWeakRetained(this + 7);
    v6 = objc_loadWeakRetained(a2 + 7);
    [WeakRetained estimatedCostToNode:v6];
  }

  else
  {
    v7 = *(*this + 3);

    v7(this, a2);
  }
}

void GKCGridGraphNode::costToNode(int32x2_t *this, id *a2)
{
  v4 = objc_opt_class();
  if (methodOverridden(a2, v4, sel_costToNode_))
  {
    WeakRetained = objc_loadWeakRetained(&this[7]);
    v6 = objc_loadWeakRetained(a2 + 7);
    [WeakRetained costToNode:v6];
  }

  {
    v9 = vsub_f32(vcvt_f32_s32(v8[8]), vcvt_f32_s32(this[8]));
  }

  else
  {

    GKCGraphNode::estimatedCostToNode(this, a2);
  }
}

void GKCGraphNode2D::GKCGraphNode2D(GKCGraphNode2D *this)
{
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  *(this + 12) = -1;
  *(this + 7) = 0;
  *this = &unk_284B503F0;
  *(this + 4) = 0u;
}

uint64_t GKCGraphNode2D::GKCGraphNode2D(uint64_t result, double a2)
{
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0;
  *(result + 48) = -1;
  *(result + 56) = 0;
  *result = &unk_284B503F0;
  *(result + 64) = a2;
  *(result + 72) = 0;
  return result;
}

void GKCGraphNode2D::estimatedCostToNode(id *this, id *a2)
{
  v4 = objc_opt_class();
  if (methodOverridden(a2, v4, sel_estimatedCostToNode_))
  {
    WeakRetained = objc_loadWeakRetained(this + 7);
    v6 = objc_loadWeakRetained(a2 + 7);
    [WeakRetained estimatedCostToNode:v6];
  }

  else
  {
    v7 = *(*this + 3);

    v7(this, a2);
  }
}

void GKCGraphNode2D::costToNode(float32x2_t *this, id *a2)
{
  v4 = objc_opt_class();
  if (methodOverridden(a2, v4, sel_costToNode_))
  {
    WeakRetained = objc_loadWeakRetained(&this[7]);
    v6 = objc_loadWeakRetained(a2 + 7);
    [WeakRetained costToNode:v6];
  }

  {
    v9 = vsub_f32(v8[8], this[8]);
  }

  else
  {

    GKCGraphNode::estimatedCostToNode(this, a2);
  }
}

void GKCGraphNode3D::GKCGraphNode3D(GKCGraphNode3D *this)
{
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  *(this + 12) = -1;
  *(this + 7) = 0;
  *this = &unk_284B50438;
  *(this + 4) = 0u;
  *(this + 10) = 0;
}

uint64_t GKCGraphNode3D::GKCGraphNode3D(uint64_t result, __n128 a2)
{
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0;
  *(result + 48) = -1;
  *(result + 56) = 0;
  *result = &unk_284B50438;
  *(result + 64) = a2;
  *(result + 80) = 0;
  return result;
}

void GKCGraphNode3D::estimatedCostToNode(id *this, id *a2)
{
  v4 = objc_opt_class();
  if (methodOverridden(a2, v4, sel_estimatedCostToNode_))
  {
    WeakRetained = objc_loadWeakRetained(this + 7);
    v6 = objc_loadWeakRetained(a2 + 7);
    [WeakRetained estimatedCostToNode:v6];
  }

  else
  {
    v7 = *(*this + 3);

    v7(this, a2);
  }
}

void GKCGraphNode3D::costToNode(GKCGraphNode3D *this, id *a2)
{
  v4 = objc_opt_class();
  if (methodOverridden(a2, v4, sel_costToNode_))
  {
    WeakRetained = objc_loadWeakRetained(this + 7);
    v6 = objc_loadWeakRetained(a2 + 7);
    [WeakRetained costToNode:v6];
  }

  {
    v9 = vsubq_f32(v8[4], *(this + 4));
  }

  else
  {

    GKCGraphNode::estimatedCostToNode(this, a2);
  }
}

void GKCGraphNode2D::~GKCGraphNode2D(id *this)
{
  objc_destroyWeak(this + 9);
  *this = &unk_284B50368;
  objc_destroyWeak(this + 7);
  v2 = this[1];
  if (v2)
  {
    this[2] = v2;
    operator delete(v2);
  }
}

{
  objc_destroyWeak(this + 9);
  *this = &unk_284B50368;
  objc_destroyWeak(this + 7);
  v2 = this[1];
  if (v2)
  {
    this[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x23EE6C500);
}

void GKCGraphNode3D::~GKCGraphNode3D(id *this)
{
  objc_destroyWeak(this + 10);
  *this = &unk_284B50368;
  objc_destroyWeak(this + 7);
  v2 = this[1];
  if (v2)
  {
    this[2] = v2;
    operator delete(v2);
  }
}

{
  objc_destroyWeak(this + 10);
  *this = &unk_284B50368;
  objc_destroyWeak(this + 7);
  v2 = this[1];
  if (v2)
  {
    this[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x23EE6C500);
}

float __voronoiNoise(char a1, int a2, float32x4_t a3, float32x4_t a4, float a5, double a6, double a7, double a8, double a9, float32x4_t a10)
{
  v12 = vmulq_n_f32(a3, a4.f32[0]);
  v13 = vcvtms_s32_f32(v12.f32[2]);
  *a4.f32 = vrndm_f32(*v12.f32);
  v14 = vcvt_s32_f32(*a4.f32);
  a4.i32[2] = floorf(v12.f32[2]);
  v15 = 0uLL;
  v16 = -1;
  a10.i32[0] = 2139095039;
  do
  {
    v17 = v16;
    for (i = -1; i != 2; ++i)
    {
      v19 = 16777619 * ((16777619 * ((v16 + v14.i32[0]) ^ 0x811C9DC5)) ^ (v14.i32[1] + i));
      v20 = 1103515245 * (a2 + 16777619 * (v19 ^ (v13 - 1))) + 12345;
      v21 = v20;
      v22 = 1103515245 * (v20 + a2) + 12345;
      v10.f32[0] = vcvts_n_f32_u64(v21, 0x20uLL) + v17;
      v10.f32[1] = vcvts_n_f32_u64(v22, 0x20uLL) + i;
      v10.f32[2] = vcvts_n_f32_u64(1103515245 * (v22 + a2) + 12345, 0x20uLL) + -1.0;
      v23 = vaddq_f32(v10, a4);
      v24 = 1103515245 * (a2 + 16777619 * (v19 ^ v13)) + 12345;
      v25 = v24;
      v26 = vsubq_f32(v12, v23);
      v27 = 1103515245 * (v24 + a2) + 12345;
      v28 = vmulq_f32(v26, v26);
      v11.f32[0] = vcvts_n_f32_u64(v25, 0x20uLL) + v17;
      v11.f32[1] = vcvts_n_f32_u64(v27, 0x20uLL) + i;
      v28.f32[0] = vaddv_f32(*v28.f32) + v28.f32[2];
      v11.i32[2] = vcvts_n_f32_u64(1103515245 * (v27 + a2) + 12345, 0x20uLL);
      v11 = vaddq_f32(v11, a4);
      v29 = vsubq_f32(v12, v11);
      v30 = vcgtq_f32(a10, v28).u64[0];
      v31 = vmulq_f32(v29, v29);
      v31.f32[0] = vaddv_f32(*v31.f32) + v31.f32[2];
      a10.f32[0] = fminf(v28.f32[0], a10.f32[0]);
      v32 = 1103515245 * (a2 + 16777619 * (v19 ^ (v13 + 1))) + 12345;
      v33 = v32;
      v34 = 1103515245 * (v32 + a2) + 12345;
      v28.i64[0] = vcgtq_f32(a10, v31).u64[0];
      a10.f32[0] = fminf(v31.f32[0], a10.f32[0]);
      v31.f32[0] = vcvts_n_f32_u64(v33, 0x20uLL) + v17;
      v31.f32[1] = vcvts_n_f32_u64(v34, 0x20uLL) + i;
      v31.f32[2] = vcvts_n_f32_u64(1103515245 * (v34 + a2) + 12345, 0x20uLL) + 1.0;
      v35 = vaddq_f32(v31, a4);
      v36 = vsubq_f32(v12, v35);
      v37 = vbslq_s8(vdupq_lane_s32(v30, 0), v23, v15);
      v10 = vmulq_f32(v36, v36);
      v10.f32[0] = vaddv_f32(*v10.f32) + v10.f32[2];
      v15 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a10, v10), 0), v35, vbslq_s8(vdupq_lane_s32(*v28.f32, 0), v11, v37));
      a10.f32[0] = fminf(v10.f32[0], a10.f32[0]);
    }

    ++v16;
  }

  while (v16 != 2);
  if (a1)
  {
    v38 = -(a5 + sqrtf(a10.f32[0]) * -1.73205081 * a5);
    v39 = fminf(v38, 1.0);
  }

  else
  {
    v39 = fminf((a5 * 2.3283e-10) * (-131238505 * ((16777619 * ((16777619 * (v15.i32[0] ^ 0x811C9DC5)) ^ v15.i32[1])) ^ v15.i32[2]) + 12345), 1.0);
  }

  return fmaxf(v39, 0.0);
}

void *ClipperLib::PolyTree::Clear(void *this)
{
  v1 = this;
  v2 = this[10];
  v3 = this[11];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = (*(*this + 8))(this);
        v2 = v1[10];
        v3 = v1[11];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  if (v3 != v2)
  {
    v1[11] = v2;
  }

  v5 = v1[4];
  if (v1[5] != v5)
  {
    v1[5] = v5;
  }

  return this;
}

uint64_t ClipperLib::PolyTree::GetFirst(ClipperLib::PolyTree *this)
{
  v1 = *(this + 4);
  if (v1 == *(this + 5))
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t ClipperLib::PolyTree::Total(ClipperLib::PolyTree *this)
{
  v2 = *(this + 10);
  result = (*(this + 11) - v2) >> 3;
  if (result >= 1)
  {
    return result - (**(this + 4) != *v2);
  }

  return result;
}

double ClipperLib::PolyNode::PolyNode(ClipperLib::PolyNode *this)
{
  *this = &unk_284B50480;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 53) = 0u;
  return result;
}

void ClipperLib::PolyNode::AddChild(ClipperLib::PolyNode *this, ClipperLib::PolyNode *a2)
{
  v4 = (*(this + 5) - *(this + 4)) >> 3;
  v5 = a2;
  std::vector<GKCPolygonObstacle *>::push_back[abi:ne200100](this + 32, &v5);
  *(a2 + 7) = this;
  *(a2 + 16) = v4;
}

uint64_t ClipperLib::PolyNode::GetNext(ClipperLib::PolyNode *this)
{
  v1 = *(this + 4);
  if (v1 != *(this + 5))
  {
    return *v1;
  }

  do
  {
    v5 = *(this + 7);
    if (!v5)
    {
      return 0;
    }

    v3 = *(this + 16);
    v4 = *(v5 + 32);
    this = *(this + 7);
  }

  while (((*(v5 + 40) - v4) >> 3) - 1 == v3);
  return *(v4 + 8 * (v3 + 1));
}

uint64_t ClipperLib::PolyNode::GetNextSiblingUp(ClipperLib::PolyNode *this)
{
  while (1)
  {
    v1 = *(this + 7);
    if (!v1)
    {
      break;
    }

    v2 = *(this + 16);
    v3 = *(v1 + 32);
    this = *(this + 7);
    if (((*(v1 + 40) - v3) >> 3) - 1 != v2)
    {
      return *(v3 + 8 * (v2 + 1));
    }
  }

  return 0;
}

uint64_t ClipperLib::PolyNode::IsHole(ClipperLib::PolyNode *this)
{
  v1 = 1;
  do
  {
    v2 = v1;
    this = *(this + 7);
    v1 ^= 1u;
  }

  while (this);
  return v2 & 1;
}

uint64_t ClipperLib::Int128Mul@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = a2 ^ this;
  if (this >= 0)
  {
    v4 = this;
  }

  else
  {
    v4 = -this;
  }

  if (a2 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = -a2;
  }

  v6 = HIDWORD(v5);
  v7 = v5;
  v8 = v5 * v4;
  v9 = v6 * v4 + v7 * HIDWORD(v4);
  v10 = HIDWORD(v9) + v6 * HIDWORD(v4);
  v11 = v8 + (v9 << 32);
  *a3 = v11;
  a3[1] = v10;
  if (__CFADD__(v8, v9 << 32))
  {
    a3[1] = ++v10;
    if ((v3 & 0x8000000000000000) == 0)
    {
      return this;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0)
  {
    return this;
  }

  v12 = -v10;
  if (v11)
  {
    v12 = ~v10;
  }

  *a3 = -v11;
  a3[1] = v12;
  return this;
}

uint64_t *ClipperLib::Swap(uint64_t *this, uint64_t *a2, uint64_t *a3)
{
  v3 = *this;
  *this = *a2;
  *a2 = v3;
  return this;
}

BOOL ClipperLib::Orientation(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1] - *a1;
  if ((v2 >> 4) < 3)
  {
    return 1;
  }

  v4 = 0;
  v5 = (v2 >> 4) - 1;
  v6 = (v2 >> 4) & 0x7FFFFFFF;
  v7 = 0.0;
  do
  {
    v8 = vcvtq_f64_s64(*(v1 + 16 * v5));
    v9 = vcvtq_f64_s64(*(v1 + 16 * v4));
    v7 = vmulq_laneq_f64(vaddq_f64(v8, v9), vsubq_f64(v8, v9), 1).f64[0] + v7;
    LODWORD(v5) = v4++;
  }

  while (v6 != v4);
  return v7 * -0.5 >= 0.0;
}

float64_t ClipperLib::Area(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1] - *a1;
  result = 0.0;
  if ((v2 >> 4) >= 3)
  {
    v4 = 0;
    v5 = (v2 >> 4) - 1;
    v6 = (v2 >> 4) & 0x7FFFFFFF;
    do
    {
      v7 = vcvtq_f64_s64(*(v1 + 16 * v5));
      v8 = vcvtq_f64_s64(*(v1 + 16 * v4));
      result = vmulq_laneq_f64(vaddq_f64(v7, v8), vsubq_f64(v7, v8), 1).f64[0] + result;
      LODWORD(v5) = v4++;
    }

    while (v6 != v4);
    return result * -0.5;
  }

  return result;
}

double ClipperLib::Area(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0.0;
  }

  v2 = 0.0;
  v3 = *(a1 + 24);
  do
  {
    v2 = v2 + (*(v3[4] + 16) - v3[2]) * (v3[1] + *(v3[4] + 8));
    v3 = v3[3];
  }

  while (v3 != v1);
  return v2 * 0.5;
}

uint64_t ClipperLib::PointIsVertex(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2;
  do
  {
    v5 = v4[1] == v2 && v4[2] == v3;
    result = v5;
    if (v5)
    {
      break;
    }

    v4 = v4[3];
  }

  while (v4 != a2);
  return result;
}

uint64_t ClipperLib::PointInPolygon(void *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = (*(a2 + 8) - *a2) >> 4;
  if (v3 >= 3)
  {
    result = 0;
    v7 = *v2;
    v6 = v2[1];
    v8 = 1;
    v11 = a1;
    v9 = *a1;
    v10 = v11[1];
    while (1)
    {
      if (v3 == v8)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8;
      }

      v13 = &v2[2 * v12];
      v14 = *v13;
      v15 = v13[1];
      if (v15 == v10 && (v14 == v9 || v6 == v10 && v14 > v9 != v7 >= v9))
      {
        return 0xFFFFFFFFLL;
      }

      if (v6 < v10 == v15 >= v10)
      {
        v17 = __OFSUB__(v7, v9);
        v16 = v7 - v9 < 0;
        v18 = v7 - v9;
        if (v16 != v17)
        {
          v19 = v14 - v9;
          if (v14 <= v9)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v19 = v14 - v9;
          if (v14 > v9)
          {
            result = (1 - result);
            goto LABEL_6;
          }
        }

        v20 = -(v19 * (v6 - v10) - v18 * (v15 - v10));
        if (v20 == 0.0)
        {
          return 0xFFFFFFFFLL;
        }

        if (v15 <= v6 != v20 > 0.0)
        {
          result = (1 - result);
        }

        else
        {
          result = result;
        }
      }

LABEL_6:
      ++v8;
      v6 = v15;
      v7 = v14;
      if (v8 > v3)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t ClipperLib::PointInPolygon(void *a1, void *a2)
{
  result = 0;
  v6 = a1;
  v4 = *a1;
  v5 = v6[1];
  v7 = a2;
  while (1)
  {
    v8 = v7;
    v7 = v7[3];
    v9 = v7[2];
    if (v9 != v5)
    {
      v11 = v8[2];
LABEL_10:
      if (v9 >= v5 != v11 < v5)
      {
        goto LABEL_2;
      }

      goto LABEL_11;
    }

    v10 = v7[1];
    if (v10 == v4)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = v8[2];
    if (v11 != v5)
    {
      goto LABEL_10;
    }

    if (v10 > v4 != v8[1] >= v4)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = v5;
    if (v9 >= v5)
    {
      goto LABEL_2;
    }

LABEL_11:
    v12 = v8[1];
    v13 = v7[1];
    v15 = __OFSUB__(v12, v4);
    v14 = v12 - v4 < 0;
    v16 = v12 - v4;
    if (v14 == v15)
    {
      break;
    }

    v15 = __OFSUB__(v13, v4);
    v17 = v13 == v4;
    v14 = v13 - v4 < 0;
    v18 = v13 - v4;
    if (!(v14 ^ v15 | v17))
    {
      goto LABEL_17;
    }

LABEL_2:
    if (v7 == a2)
    {
      return result;
    }
  }

  v15 = __OFSUB__(v13, v4);
  v17 = v13 == v4;
  v14 = v13 - v4 < 0;
  v18 = v13 - v4;
  if (!(v14 ^ v15 | v17))
  {
    result = (1 - result);
    goto LABEL_2;
  }

LABEL_17:
  v19 = -(v18 * (v11 - v5) - v16 * (v9 - v5));
  if (v19 != 0.0)
  {
    if (v9 <= v11 != v19 > 0.0)
    {
      result = (1 - result);
    }

    else
    {
      result = result;
    }

    goto LABEL_2;
  }

  return 0xFFFFFFFFLL;
}

BOOL ClipperLib::Poly2ContainsPoly1(uint64_t a1, void *a2)
{
  v4 = a1;
  while (1)
  {
    v5 = ClipperLib::PointInPolygon((v4 + 8), a2);
    if ((v5 & 0x80000000) == 0)
    {
      break;
    }

    v4 = *(v4 + 24);
    if (v4 == a1)
    {
      return 1;
    }
  }

  return v5 != 0;
}

BOOL ClipperLib::SlopesEqual(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 56);
  v4 = *(a2 + 48);
  if (a3)
  {
    v5 = v4 ^ v3;
    if (v3 < 0)
    {
      v3 = -v3;
    }

    if (v4 < 0)
    {
      v4 = -v4;
    }

    v6 = HIDWORD(v4);
    v7 = v4;
    v8 = HIDWORD(v4) * HIDWORD(v3);
    v9 = v4 * v3;
    v10 = v6 * v3 + v7 * HIDWORD(v3);
    v13 = v9 + (v10 << 32);
    v12 = (__PAIR128__(v8, v9) + __PAIR128__(HIDWORD(v10), v10 << 32)) >> 64;
    v11 = v13;
    v14 = -v12;
    if (v13)
    {
      v14 = ~v12;
    }

    v15 = v5 >= 0;
    if (v5 < 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = v12;
    }

    if (!v15)
    {
      v11 = -v13;
    }

    v17 = *(a1 + 48);
    v18 = *(a2 + 56);
    v19 = v18 ^ v17;
    if (v17 < 0)
    {
      v17 = -v17;
    }

    v20 = HIDWORD(v17);
    v21 = v17;
    if (v18 < 0)
    {
      v18 = -v18;
    }

    v22 = HIDWORD(v18) * HIDWORD(v17);
    v23 = v18 * v17;
    v24 = HIDWORD(v18) * v21 + v18 * v20;
    v27 = v23 + (v24 << 32);
    v26 = (__PAIR128__(v22, v23) + __PAIR128__(HIDWORD(v24), v24 << 32)) >> 64;
    v25 = v27;
    v28 = -v26;
    if (v27)
    {
      v28 = ~v26;
    }

    if (v19 < 0)
    {
      v26 = v28;
      v25 = -v27;
    }

    if (v16 != v26)
    {
      return 0;
    }
  }

  else
  {
    v11 = v4 * v3;
    v25 = *(a2 + 56) * *(a1 + 48);
  }

  return v11 == v25;
}

BOOL ClipperLib::SlopesEqual(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v7 = a2 - a4;
  v8 = a3 - a5;
  if (a7)
  {
    v9 = v8 ^ v7;
    if (v7 < 0)
    {
      v7 = a4 - a2;
    }

    if (v8 < 0)
    {
      v8 = a5 - a3;
    }

    v10 = HIDWORD(v8);
    v11 = v8;
    v12 = HIDWORD(v8) * HIDWORD(v7);
    v13 = v8 * v7;
    v14 = v10 * v7 + v11 * HIDWORD(v7);
    v17 = v13 + (v14 << 32);
    v16 = (__PAIR128__(v12, v13) + __PAIR128__(HIDWORD(v14), v14 << 32)) >> 64;
    v15 = v17;
    v18 = -v16;
    if (v17)
    {
      v18 = ~v16;
    }

    v19 = v9 >= 0;
    if (v9 < 0)
    {
      v20 = v18;
    }

    else
    {
      v20 = v16;
    }

    if (!v19)
    {
      v15 = -v17;
    }

    v21 = a1 - a3;
    v22 = a4 - a6;
    if (a1 - a3 < 0)
    {
      v21 = a3 - a1;
    }

    v23 = HIDWORD(v21);
    v24 = v21;
    if (v22 < 0)
    {
      v22 = a6 - a4;
    }

    v25 = HIDWORD(v22) * HIDWORD(v21);
    v26 = v22 * v21;
    v27 = HIDWORD(v22) * v24 + v22 * v23;
    v30 = v26 + (v27 << 32);
    v29 = (__PAIR128__(v25, v26) + __PAIR128__(HIDWORD(v27), v27 << 32)) >> 64;
    v28 = v30;
    v31 = -v29;
    if (v30)
    {
      v31 = ~v29;
    }

    if (((a4 - a6) ^ (a1 - a3)) < 0)
    {
      v29 = v31;
      v28 = -v30;
    }

    if (v20 != v29)
    {
      return 0;
    }
  }

  else
  {
    v15 = v8 * v7;
    v28 = (a4 - a6) * (a1 - a3);
  }

  return v15 == v28;
}

BOOL ClipperLib::SlopesEqual(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = a2 - a4;
  v10 = a5 - a7;
  if (a9)
  {
    v11 = v10 ^ v9;
    if (v9 < 0)
    {
      v9 = a4 - a2;
    }

    if (v10 < 0)
    {
      v10 = a7 - a5;
    }

    v12 = HIDWORD(v10);
    v13 = v10;
    v14 = HIDWORD(v10) * HIDWORD(v9);
    v15 = v10 * v9;
    v16 = v12 * v9 + v13 * HIDWORD(v9);
    v19 = v15 + (v16 << 32);
    v18 = (__PAIR128__(v14, v15) + __PAIR128__(HIDWORD(v16), v16 << 32)) >> 64;
    v17 = v19;
    v20 = -v18;
    if (v19)
    {
      v20 = ~v18;
    }

    v21 = v11 >= 0;
    if (v11 < 0)
    {
      v22 = v20;
    }

    else
    {
      v22 = v18;
    }

    if (!v21)
    {
      v17 = -v19;
    }

    v23 = a1 - a3;
    v24 = a6 - a8;
    if (a1 - a3 < 0)
    {
      v23 = a3 - a1;
    }

    v25 = HIDWORD(v23);
    v26 = v23;
    if (v24 < 0)
    {
      v24 = a8 - a6;
    }

    v27 = HIDWORD(v24) * HIDWORD(v23);
    v28 = v24 * v23;
    v29 = HIDWORD(v24) * v26 + v24 * v25;
    v32 = v28 + (v29 << 32);
    v31 = (__PAIR128__(v27, v28) + __PAIR128__(HIDWORD(v29), v29 << 32)) >> 64;
    v30 = v32;
    v33 = -v31;
    if (v32)
    {
      v33 = ~v31;
    }

    if (((a6 - a8) ^ (a1 - a3)) < 0)
    {
      v31 = v33;
      v30 = -v32;
    }

    if (v22 != v31)
    {
      return 0;
    }
  }

  else
  {
    v17 = v10 * v9;
    v30 = (a6 - a8) * (a1 - a3);
  }

  return v17 == v30;
}

double ClipperLib::IntersectPoint(uint64_t a1, uint64_t a2, int64x2_t *a3)
{
  result = *(a1 + 64);
  v4 = *(a2 + 64);
  if (result == v4)
  {
    v5 = *(a1 + 24);
    a3->i64[1] = v5;
    if (*(a1 + 40) == v5)
    {
      a3->i64[0] = *(a1 + 32);
    }

    else
    {
      v24 = result * (v5 - *(a1 + 8));
      v25 = 0.5;
      if (v24 < 0.0)
      {
        v25 = -0.5;
      }

      result = v25 + v24;
      a3->i64[0] = *a1 + result;
    }

    return result;
  }

  if (!*(a1 + 48))
  {
    v26 = *a1;
    a3->i64[0] = *a1;
    v19 = *(a2 + 8);
    if (!*(a2 + 56))
    {
      goto LABEL_27;
    }

    v27 = v19 - *a2 / v4;
    v28 = v26 / v4;
    goto LABEL_24;
  }

  if (!*(a2 + 48))
  {
    v29 = *a2;
    a3->i64[0] = *a2;
    v19 = *(a1 + 8);
    if (!*(a1 + 56))
    {
      goto LABEL_27;
    }

    v27 = v19 - *a1 / result;
    v28 = v29 / result;
LABEL_24:
    v30 = v27 + v28;
    v31 = 0.5;
    if (v30 < 0.0)
    {
      v31 = -0.5;
    }

    v19 = (v31 + v30);
LABEL_27:
    a3->i64[1] = v19;
    v20 = *(a1 + 40);
    v21 = *(a2 + 40);
    if (v19 >= v20 && v19 >= v21)
    {
      goto LABEL_15;
    }

LABEL_32:
    if (v20 <= v21)
    {
      v33 = v21;
    }

    else
    {
      v33 = v20;
    }

    a3->i64[1] = v33;
    if (fabs(result) >= fabs(v4))
    {
      if (*(a2 + 40) == v33)
      {
        v34 = *(a2 + 32);
        goto LABEL_45;
      }

      v35 = *a2;
      v36 = v4 * (v33 - *(a2 + 8));
    }

    else
    {
      if (*(a1 + 40) == v33)
      {
        v34 = *(a1 + 32);
        goto LABEL_45;
      }

      v35 = *a1;
      v36 = result * (v33 - *(a1 + 8));
    }

    v37 = 0.5;
    if (v36 < 0.0)
    {
      v37 = -0.5;
    }

    v34 = v35 + (v37 + v36);
LABEL_45:
    a3->i64[0] = v34;
    v23 = *(a1 + 24);
    if (v33 <= v23)
    {
      return result;
    }

    goto LABEL_46;
  }

  v6 = *a1 - result * *(a1 + 8);
  v7 = (*a2 - v4 * *(a2 + 8) - v6) / (result - v4);
  v8 = fabs(result);
  v9 = fabs(v4);
  _NF = v8 < v9;
  if (v8 >= v9)
  {
    v11 = *(a2 + 64);
  }

  else
  {
    v11 = *(a1 + 64);
  }

  if (!_NF)
  {
    v6 = *a2 - v4 * *(a2 + 8);
  }

  v12.f64[0] = v6 + v7 * v11;
  v12.f64[1] = v7;
  __asm
  {
    FMOV            V4.2D, #0.5
    FMOV            V5.2D, #-0.5
  }

  v18 = vcvtq_s64_f64(vaddq_f64(vbslq_s8(vcltzq_f64(v12), _Q5, _Q4), v12));
  *a3 = v18;
  v19 = v18.i64[1];
  v20 = *(a1 + 40);
  v21 = *(a2 + 40);
  if (v18.i64[1] < v20 || v18.i64[1] < v21)
  {
    goto LABEL_32;
  }

LABEL_15:
  v23 = *(a1 + 24);
  if (v19 <= v23)
  {
    return result;
  }

LABEL_46:
  a3->i64[1] = v23;
  if (fabs(result) <= fabs(v4))
  {
    if (*(a1 + 40) == v23)
    {
      a3->i64[0] = *(a1 + 32);
      return result;
    }

    v38 = *a1;
    v39 = result * (v23 - *(a1 + 8));
  }

  else
  {
    if (*(a2 + 40) == v23)
    {
      a3->i64[0] = *(a2 + 32);
      return result;
    }

    v38 = *a2;
    v39 = v4 * (v23 - *(a2 + 8));
  }

  v40 = 0.5;
  if (v39 < 0.0)
  {
    v40 = -0.5;
  }

  result = v40 + v39;
  a3->i64[0] = v38 + result;
  return result;
}

int8x16_t ClipperLib::ReversePolyPtLinks(unint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      result = *(v1 + 24);
      *(v1 + 24) = vextq_s8(result, result, 8uLL);
      v1 = result.i64[0];
    }

    while (result.i64[0] != a1);
  }

  return result;
}

void *ClipperLib::DisposeOutPts(void *result)
{
  if (*result)
  {
    v1 = result;
    *(*(*result + 32) + 24) = 0;
    result = *result;
    if (result)
    {
      do
      {
        *v1 = result[3];
        MEMORY[0x23EE6C500]();
        result = *v1;
      }

      while (*v1);
    }
  }

  return result;
}

double ClipperLib::InitEdge2(uint64_t a1, int a2)
{
  v2 = *(a1 + 96);
  if (*(a1 + 24) >= *(v2 + 24))
  {
    *a1 = *(a1 + 16);
    *(a1 + 32) = *(v2 + 16);
    v3 = *(a1 + 32) - *a1;
    v4 = *(a1 + 40) - *(a1 + 8);
    *(a1 + 48) = v3;
    *(a1 + 56) = v4;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a1 + 32) = *(a1 + 16);
    *a1 = *(v2 + 16);
    v3 = *(a1 + 32) - *a1;
    v4 = *(a1 + 40) - *(a1 + 8);
    *(a1 + 48) = v3;
    *(a1 + 56) = v4;
    if (v4)
    {
LABEL_3:
      result = v3 / v4;
      *(a1 + 64) = result;
      *(a1 + 72) = a2;
      return result;
    }
  }

  result = -1.0e40;
  *(a1 + 64) = 0xC83D6329F1C35CA5;
  *(a1 + 72) = a2;
  return result;
}

uint64_t ClipperLib::RemoveEdge(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = *(a1 + 104);
  *(v2 + 96) = v1;
  *(v1 + 104) = v2;
  *(a1 + 104) = 0;
  return v1;
}

__n128 ClipperLib::SwapPoints(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a1 = *a2;
  *a2 = result;
  return result;
}

BOOL ClipperLib::GetOverlapSegment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v10 = a1 - a3;
  if (a1 - a3 < 0)
  {
    v10 = a3 - a1;
  }

  v11 = a2 - a4;
  if (a2 - a4 < 0)
  {
    v11 = a4 - a2;
  }

  if (v10 <= v11)
  {
    if (a2 < a4)
    {
      v23 = a4;
    }

    else
    {
      v23 = a2;
    }

    if (a2 < a4)
    {
      v24 = a3;
    }

    else
    {
      v24 = a1;
    }

    if (a2 < a4)
    {
      v25 = a2;
    }

    else
    {
      v25 = a4;
    }

    if (a2 < a4)
    {
      v26 = a1;
    }

    else
    {
      v26 = a3;
    }

    if (a6 < a8)
    {
      v27 = a8;
    }

    else
    {
      v27 = a6;
    }

    if (a6 < a8)
    {
      v28 = a7;
    }

    else
    {
      v28 = a5;
    }

    if (a6 < a8)
    {
      v29 = a6;
    }

    else
    {
      v29 = a8;
    }

    if (a6 < a8)
    {
      v30 = a5;
    }

    else
    {
      v30 = a7;
    }

    if (v23 >= v27)
    {
      v24 = v28;
      v23 = v27;
    }

    *a9 = v24;
    a9[1] = v23;
    if (v25 <= v29)
    {
      v31 = v30;
    }

    else
    {
      v31 = v26;
    }

    if (v25 <= v29)
    {
      v32 = v29;
    }

    else
    {
      v32 = v25;
    }

    *a10 = v31;
    a10[1] = v32;
    return a9[1] > v32;
  }

  else
  {
    if (a1 > a3)
    {
      v12 = a4;
    }

    else
    {
      v12 = a2;
    }

    if (a1 > a3)
    {
      v13 = a3;
    }

    else
    {
      v13 = a1;
    }

    if (a1 > a3)
    {
      v14 = a2;
    }

    else
    {
      v14 = a4;
    }

    if (a1 > a3)
    {
      v15 = a1;
    }

    else
    {
      v15 = a3;
    }

    if (a5 > a7)
    {
      v16 = a8;
    }

    else
    {
      v16 = a6;
    }

    if (a5 > a7)
    {
      v17 = a7;
    }

    else
    {
      v17 = a5;
    }

    if (a5 > a7)
    {
      v18 = a6;
    }

    else
    {
      v18 = a8;
    }

    if (a5 > a7)
    {
      v19 = a5;
    }

    else
    {
      v19 = a7;
    }

    if (v13 <= v17)
    {
      v13 = v17;
      v12 = v16;
    }

    *a9 = v13;
    a9[1] = v12;
    if (v15 >= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v15;
    }

    if (v15 >= v19)
    {
      v21 = v18;
    }

    else
    {
      v21 = v14;
    }

    *a10 = v20;
    a10[1] = v21;
    return *a9 < v20;
  }
}

uint64_t ClipperLib::FirstIsBottomPt(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1;
  do
  {
    v4 = v4[4];
    v5 = v4[1];
    v6 = v4[2];
  }

  while (v4 != a1 && v5 == v2 && v6 == v3);
  v9 = v6 - v3;
  if (v9)
  {
    v10 = (v5 - v2) / v9;
  }

  else
  {
    v10 = -1.0e40;
  }

  v11 = a1;
  do
  {
    v11 = v11[3];
    v12 = v11[1];
    v13 = v11[2];
  }

  while (v11 != a1 && v12 == v2 && v13 == v3);
  v16 = v13 - v3;
  if (v16)
  {
    v17 = (v12 - v2) / v16;
  }

  else
  {
    v17 = -1.0e40;
  }

  v18 = fabs(v10);
  v19 = a2[1];
  v20 = a2[2];
  v21 = a2;
  do
  {
    v21 = v21[4];
    v22 = v21[1];
    v23 = v21[2];
  }

  while (v21 != a2 && v22 == v19 && v23 == v20);
  if (v23 == v20)
  {
    v26 = -1.0e40;
  }

  else
  {
    v26 = (v22 - v19) / (v23 - v20);
  }

  v27 = fabs(v17);
  v28 = a2;
  do
  {
    v28 = v28[3];
    v29 = v28[1];
    v30 = v28[2];
  }

  while (v28 != a2 && v29 == v19 && v30 == v20);
  v33 = fabs(v26);
  v34 = v30 - v20;
  if (v34)
  {
    v35 = fabs((v29 - v19) / v34);
    if (v18 >= v33 && v18 >= v35)
    {
      return 1;
    }
  }

  else
  {
    v35 = fabs(-1.0e40);
    if (v18 >= v33 && v18 >= v35)
    {
      return 1;
    }
  }

  return (v27 >= v33) & (v27 >= v35);
}

void *ClipperLib::GetBottomPt(void *a1)
{
  v1 = a1;
  v2 = a1[3];
  if (v2 == a1)
  {
    return v1;
  }

  v3 = 0;
  do
  {
    v4 = v2[2];
    v5 = v1[2];
    if (v4 > v5)
    {
LABEL_3:
      v3 = 0;
      v1 = v2;
      goto LABEL_4;
    }

    if (v4 == v5)
    {
      v6 = v2[1];
      v7 = v1[1];
      if (v6 <= v7)
      {
        if (v6 < v7)
        {
          goto LABEL_3;
        }

        if (v2[3] != v1 && v2[4] != v1)
        {
          v3 = v2;
        }
      }
    }

LABEL_4:
    v2 = v2[3];
  }

  while (v2 != v1);
  if (v3)
  {
    while (v3 != v2)
    {
      if (!ClipperLib::FirstIsBottomPt(v2, v3))
      {
        v1 = v3;
      }

      do
      {
        v3 = v3[3];
      }

      while (v3[1] != v1[1] || v3[2] != v1[2]);
    }
  }

  return v1;
}

uint64_t ClipperLib::Pt2IsBetweenPt1AndPt3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a5 && a2 == a6)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 0;
  }

  if (a5 == a3 && a6 == a4)
  {
    return 0;
  }

  if (a1 == a5)
  {
    return (a4 > a2) ^ (a4 >= a6);
  }

  return (a3 > a1) ^ (a3 >= a5);
}

BOOL ClipperLib::HorzSegmentsOverlap(ClipperLib *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (this >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = this;
  }

  if (this <= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = this;
  }

  if (a3 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  if (a3 <= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = a3;
  }

  return v4 < v7 && v6 < v5;
}

double ClipperLib::ClipperBase::ClipperBase(ClipperLib::ClipperBase *this)
{
  *this = &unk_284B504A0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  return result;
}

void ClipperLib::ClipperBase::~ClipperBase(ClipperLib::ClipperBase *this)
{
  v2 = *(this + 2);
  *(this + 3) = v2;
  *this = &unk_284B504A0;
  *(this + 1) = v2;
  v5 = this + 48;
  v3 = *(this + 6);
  v4 = *(v5 + 1);
  if (v4 != v3)
  {
    v6 = 0;
    do
    {
      if (v3[v6])
      {
        MEMORY[0x23EE6C4E0](v3[v6], 0x1020C80AAFD436DLL);
        v3 = *(this + 6);
        v4 = *(this + 7);
      }

      ++v6;
    }

    while (v6 < (v4 - v3) >> 3);
  }

  *(this + 7) = v3;
  *(this + 40) = 0;
  *(this + 73) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v7 = *(this + 2);
  if (v7)
  {
    *(this + 3) = v7;
    operator delete(v7);
  }
}

{
  v2 = *(this + 2);
  *(this + 3) = v2;
  *this = &unk_284B504A0;
  *(this + 1) = v2;
  v5 = this + 48;
  v3 = *(this + 6);
  v4 = *(v5 + 1);
  if (v4 != v3)
  {
    v6 = 0;
    do
    {
      if (v3[v6])
      {
        MEMORY[0x23EE6C4E0](v3[v6], 0x1020C80AAFD436DLL);
        v3 = *(this + 6);
        v4 = *(this + 7);
      }

      ++v6;
    }

    while (v6 < (v4 - v3) >> 3);
  }

  *(this + 7) = v3;
  *(this + 40) = 0;
  *(this + 73) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v7 = *(this + 2);
  if (v7)
  {
    *(this + 3) = v7;
    operator delete(v7);
  }
}

{
  v2 = *(this + 2);
  *(this + 3) = v2;
  *this = &unk_284B504A0;
  *(this + 1) = v2;
  v5 = this + 48;
  v3 = *(this + 6);
  v4 = *(v5 + 1);
  if (v4 != v3)
  {
    v6 = 0;
    do
    {
      if (v3[v6])
      {
        MEMORY[0x23EE6C4E0](v3[v6], 0x1020C80AAFD436DLL);
        v3 = *(this + 6);
        v4 = *(this + 7);
      }

      ++v6;
    }

    while (v6 < (v4 - v3) >> 3);
  }

  *(this + 7) = v3;
  *(this + 40) = 0;
  *(this + 73) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v7 = *(this + 2);
  if (v7)
  {
    *(this + 3) = v7;
    operator delete(v7);
  }

  JUMPOUT(0x23EE6C500);
}

uint64_t *ClipperLib::RangeTest(uint64_t *result, _BYTE *a2)
{
  v2 = *result;
  if (*a2)
  {
LABEL_4:
    if (v2 > 0x3FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_16;
    }

    goto LABEL_5;
  }

  if (v2 >= 0x40000000)
  {
    *a2 = 1;
    goto LABEL_4;
  }

  if (v2 >= -1073741823 && (result[1] - 0x40000000) > 0xFFFFFFFF80000000)
  {
    return result;
  }

  *a2 = 1;
LABEL_5:
  if (v2 < 0xC000000000000001 || (result[1] - 0x4000000000000000) <= 0x8000000000000000)
  {
LABEL_16:
    exception = __cxa_allocate_exception(8uLL);
    *exception = "Coordinate outside allowed range";
    __cxa_throw(exception, MEMORY[0x277D82740], 0);
  }

  return result;
}

void *ClipperLib::FindNextLocMin(void *result)
{
  while (1)
  {
    while (1)
    {
      v1 = result[13];
      if (*result == *v1 && result[1] == v1[1] && (result[2] != result[4] || result[3] != result[5]))
      {
        break;
      }

      result = result[12];
    }

    if (result[7] && v1[7])
    {
      return result;
    }

    v4 = result;
    do
    {
      v5 = v4;
      v4 = v4[13];
    }

    while (!v4[7]);
    result = v5;
    if (v5[7])
    {
      if (v5[5] != v4[1])
      {
        goto LABEL_22;
      }
    }

    else
    {
      result = v5;
      do
      {
        result = result[12];
      }

      while (!result[7]);
      if (result[5] != *(result[13] + 8))
      {
LABEL_22:
        if (*v4 < *result)
        {
          return v5;
        }

        return result;
      }
    }
  }
}

uint64_t ClipperLib::ClipperBase::ProcessBound(uint64_t a1, uint64_t *a2, int a3)
{
  if (*(a2 + 23) == -2)
  {
    v3 = a2;
    if (a3)
    {
      do
      {
        v4 = v3;
        v5 = v3[5];
        v3 = v3[12];
      }

      while (v5 == v3[1]);
      while (v4 != a2 && !v4[7])
      {
        v4 = v4[13];
      }
    }

    else
    {
      do
      {
        v4 = v3;
        v6 = v3[5];
        v3 = v3[13];
      }

      while (v6 == v3[1]);
      while (v4 != a2 && !v4[7])
      {
        v4 = v4[12];
      }
    }

    if (v4 == a2)
    {
      if (a3)
      {
        return v4[12];
      }

      else
      {
        return v4[13];
      }
    }

    else
    {
      v7 = 13;
      if (a3)
      {
        v7 = 12;
      }

      v8 = a2[v7];
      v38 = *(v8 + 8);
      v39 = v8;
      *(v8 + 80) = 0;
      v10 = ClipperLib::ClipperBase::ProcessBound();
      std::vector<ClipperLib::LocalMinimum>::push_back[abi:ne200100](a1 + 16, &v38);
      return v10;
    }
  }

  if (!a2[7])
  {
    v12 = 12;
    if (a3)
    {
      v12 = 13;
    }

    v13 = a2[v12];
    if (*(v13 + 92) != -2)
    {
      v14 = *a2;
      v15 = *v13 == *a2;
      if (*(v13 + 56))
      {
        goto LABEL_25;
      }

      if (*v13 != *a2)
      {
        v15 = *(v13 + 32) == v14;
LABEL_25:
        if (!v15)
        {
          v16 = a2[4];
          a2[4] = v14;
          *a2 = v16;
        }
      }
    }
  }

  v17 = a2;
  if (a3)
  {
    do
    {
      v18 = v17;
      v19 = v17[5];
      v17 = v17[12];
    }

    while (v19 == v17[1] && *(v17 + 23) != -2);
    if (!v18[7] && *(v17 + 23) != -2)
    {
      v20 = v18;
      do
      {
        v20 = v20[13];
      }

      while (!v20[7]);
      v21 = v20[4];
      v22 = v17[4];
      if (v21 != v22 && v21 > v22)
      {
        v18 = v20;
      }
    }

    if (v18 != a2)
    {
      v23 = a2;
      do
      {
        v24 = v23;
        v23 = v23[12];
        v24[14] = v23;
        if (v24 != a2 && !v24[7] && *v24 != *(v24[13] + 32))
        {
          v25 = v24[4];
          v24[4] = *v24;
          *v24 = v25;
        }
      }

      while (v23 != v18);
      v34 = v23 != a2 && v23[7] == 0;
      if (v34 && *v23 != *(v23[13] + 32))
      {
        v35 = v23[4];
        v23[4] = *v23;
        *v23 = v35;
      }
    }

    return v18[12];
  }

  else
  {
    do
    {
      v26 = v17;
      v27 = v17[5];
      v17 = v17[13];
    }

    while (v27 == v17[1] && *(v17 + 23) != -2);
    if (!v26[7] && *(v17 + 23) != -2)
    {
      v28 = v26;
      do
      {
        v28 = v28[12];
      }

      while (!v28[7]);
      v29 = v28[4];
      v30 = v17[4];
      if (v29 > v30)
      {
        v26 = v28;
      }

      if (v29 == v30)
      {
        v26 = v28;
      }
    }

    if (v26 != a2)
    {
      v31 = a2;
      do
      {
        v32 = v31;
        v31 = v31[13];
        v32[14] = v31;
        if (v32 != a2 && !v32[7] && *v32 != *(v32[12] + 32))
        {
          v33 = v32[4];
          v32[4] = *v32;
          *v32 = v33;
        }
      }

      while (v31 != v26);
      v36 = v31 != a2 && v31[7] == 0;
      if (v36 && *v31 != *(v31[12] + 32))
      {
        v37 = v31[4];
        v31[4] = *v31;
        *v31 = v37;
      }
    }

    return v26[13];
  }
}

void std::vector<ClipperLib::LocalMinimum>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    v6 = v3 + 24;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = 8 * ((v3 - *a1) >> 3);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  v6 = 24 * v8 + 24;
  v13 = 24 * v8 - (v3 - v7);
  memcpy((v12 - (v3 - v7)), v7, v3 - v7);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

uint64_t ClipperLib::ClipperBase::AddPath(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    ClipperLib::clipperException::clipperException(exception, "AddPath: Open paths have been disabled.");
  }

  v4 = *a2;
  v5 = (*(a2 + 8) - *a2) >> 4;
  v6 = v5 - 1;
  if (v5 >= 2)
  {
    v7 = &v4[v6];
    while (1)
    {
      v8 = vmovn_s64(vceqq_s64(*v7, *v4));
      if ((v8.i32[0] & v8.i32[1] & 1) == 0)
      {
        break;
      }

      LODWORD(v5) = v5 - 1;
      --v7;
      if (v5 <= 1)
      {
        v6 = 0;
        goto LABEL_8;
      }
    }

    v6 = v5 - 1;
  }

LABEL_8:
  v9 = 0;
  v10 = 152 * v6 + 304;
  v11 = v6 + 1;
  v12 = &v4[v6];
  while ((v6 + v9) >= 1)
  {
    v13 = *v12--;
    v14 = vmovn_s64(vceqq_s64(v13, v4[v6 - 1 + v9]));
    v10 -= 152;
    --v9;
    --v11;
    if ((v14.i32[0] & v14.i32[1] & 1) == 0)
    {
      if (v6 + v9)
      {
        operator new[]();
      }

      return 0;
    }
  }

  return 0;
}

void sub_2389CDDD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  __cxa_begin_catch(a1);
  if (a16)
  {
    MEMORY[0x23EE6C4E0](a16, 0x1020C80AAFD436DLL);
  }

  __cxa_rethrow();
}

void ClipperLib::clipperException::~clipperException(std::exception *this)
{
  this->__vftable = &unk_284B505C0;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    v2 = this;
    operator delete(this[1].__vftable);
    this = v2;
  }

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_284B505C0;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x23EE6C500);
}

uint64_t ClipperLib::ClipperBase::AddPaths(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v4 = *a2;
  if (a2[1] == *a2)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v11 |= ClipperLib::ClipperBase::AddPath(a1, v4 + v9, a3, a4);
      ++v10;
      v4 = *a2;
      v9 += 24;
    }

    while (v10 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  return v11 & 1;
}

void *ClipperLib::ClipperBase::Clear(void *this)
{
  v1 = this;
  v2 = this[2];
  this[3] = v2;
  this[1] = v2;
  v3 = this[6];
  v4 = this[7];
  if (v4 != v3)
  {
    v5 = 0;
    do
    {
      this = *(v3 + 8 * v5);
      if (this)
      {
        this = MEMORY[0x23EE6C4E0](this, 0x1020C80AAFD436DLL);
        v3 = v1[6];
        v4 = v1[7];
      }

      ++v5;
    }

    while (v5 < (v4 - v3) >> 3);
  }

  v1[7] = v3;
  *(v1 + 40) = 0;
  *(v1 + 73) = 0;
  return this;
}

void *ClipperLib::ClipperBase::DisposeLocalMinimaList(void *this)
{
  v1 = this[2];
  this[3] = v1;
  this[1] = v1;
  return this;
}

void ClipperLib::ClipperBase::Reset(ClipperLib::ClipperBase *this, __n128 a2)
{
  v3 = *(this + 2);
  v4 = *(this + 3);
  *(this + 1) = v3;
  if (v3 != v4)
  {
    std::__introsort<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,false>(v3, v4, &v8, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (&v4[-v3] >> 3)), 1, a2);
    for (i = *(this + 2); i != *(this + 3); i += 24)
    {
      v6 = *(i + 8);
      if (v6)
      {
        *(v6 + 16) = *v6;
        *(v6 + 76) = 1;
        *(v6 + 92) = -1;
      }

      v7 = *(i + 16);
      if (v7)
      {
        *(v7 + 16) = *v7;
        *(v7 + 76) = 2;
        *(v7 + 92) = -1;
      }
    }
  }
}

uint64_t ClipperLib::ClipperBase::PopLocalMinima(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 != *(this + 24))
  {
    *(this + 8) = v1 + 24;
  }

  return this;
}

double ClipperLib::ClipperBase::GetBounds@<D0>(ClipperLib::ClipperBase *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 == v3)
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v4 = *(v2 + 8);
    v6 = *v4;
    v5 = v4[1];
    *(a2 + 8) = v5;
    v7 = v6;
    v8 = v5;
    do
    {
      v9 = *(v2 + 8);
      v10 = *(v2 + 16);
      if (v5 <= v9[1])
      {
        v5 = v9[1];
      }

      *(a2 + 24) = v5;
      v11 = v9;
      do
      {
        v15 = v11[14];
        if (v15)
        {
          v16 = v11;
          do
          {
            v12 = v15;
            if (*v16 < v6)
            {
              v6 = *v16;
            }

            if (*v16 > v7)
            {
              v7 = *v16;
            }

            v15 = v15[14];
            v16 = v12;
          }

          while (v15);
        }

        else
        {
          v12 = v11;
        }

        *a2 = v6;
        *(a2 + 16) = v7;
        if (*v12 < v6)
        {
          v6 = *v12;
        }

        *a2 = v6;
        if (v7 <= *v12)
        {
          v7 = *v12;
        }

        *(a2 + 16) = v7;
        if (v12[4] < v6)
        {
          v6 = v12[4];
        }

        *a2 = v6;
        if (v7 <= v12[4])
        {
          v7 = v12[4];
        }

        *(a2 + 16) = v7;
        v13 = v12[5];
        if (v13 < v8)
        {
          v8 = v13;
        }

        *(a2 + 8) = v8;
        v14 = v11 == v9;
        v11 = v10;
      }

      while (v14);
      v2 += 24;
    }

    while (v2 != v3);
  }

  return result;
}

ClipperLib *ClipperLib::Clipper::Clipper(ClipperLib *this, uint64_t *a2, char a3)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = a2[1];
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 160) = 0;
  v4 = *this;
  *(this + *(*this - 24) + 40) = 0;
  *(this + 172) = a3 & 1;
  *(this + 174) = (a3 & 2) != 0;
  *(this + *(v4 - 24) + 72) = (a3 & 4) != 0;
  *(this + *(v4 - 24) + 73) = 0;
  return this;
}

double ClipperLib::Clipper::Clipper(ClipperLib::Clipper *this, char a2)
{
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  result = 0.0;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *this = &unk_284B504F0;
  *(this + 22) = &unk_284B50538;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = 0;
  *(this + 216) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 160) = 0;
  *(this + 172) = a2 & 1;
  *(this + 174) = (a2 & 2) != 0;
  *(this + 248) = (a2 & 4) != 0;
  *(this + 249) = 0;
  return result;
}

void ClipperLib::Clipper::~Clipper(ClipperLib::Clipper *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = a2[1];
  (*(*(this + *(*this - 24)) + 16))(this + *(*this - 24));
  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    *(this + 11) = v5;
    operator delete(v5);
  }

  v6 = *(this + 7);
  if (v6)
  {
    *(this + 8) = v6;
    operator delete(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    *(this + 5) = v7;
    operator delete(v7);
  }

  v8 = *(this + 1);
  if (v8)
  {
    *(this + 2) = v8;
    operator delete(v8);
  }
}

void ClipperLib::Clipper::~Clipper(ClipperLib::Clipper *this)
{
  v3 = v2[24];
  v2[25] = v3;
  v2[22] = &unk_284B504A0;
  v2[23] = v3;
  v6 = v2 + 28;
  v4 = v2[28];
  v5 = v6[1];
  if (v5 != v4)
  {
    v7 = 0;
    do
    {
      if (v4[v7])
      {
        MEMORY[0x23EE6C4E0](v4[v7], 0x1020C80AAFD436DLL);
        v4 = *(this + 28);
        v5 = *(this + 29);
      }

      ++v7;
    }

    while (v7 < (v5 - v4) >> 3);
  }

  *(this + 29) = v4;
  *(this + 216) = 0;
  *(this + 249) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v8 = *(this + 24);
  if (v8)
  {
    *(this + 25) = v8;
    operator delete(v8);
  }
}

{
  ClipperLib::Clipper::~Clipper(this);

  JUMPOUT(0x23EE6C500);
}

void virtual thunk toClipperLib::Clipper::~Clipper(ClipperLib::Clipper *this)
{
  ClipperLib::Clipper::~Clipper((this + *(*this - 24)));
}

{
  ClipperLib::Clipper::~Clipper((this + *(*this - 24)));

  JUMPOUT(0x23EE6C500);
}

void ClipperLib::Clipper::Reset(ClipperLib::Clipper *this, __n128 a2)
{
  v3 = (this + *(*this - 24));
  v4 = v3[2];
  v5 = v3[3];
  v3[1] = v4;
  if (v4 != v5)
  {
    std::__introsort<std::_ClassicAlgPolicy,ClipperLib::LocMinSorter &,ClipperLib::LocalMinimum *,false>(v4, v5, &v23, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (&v5[-v4] >> 3)), 1, a2);
    for (i = v3[2]; i != v3[3]; i += 24)
    {
      v7 = *(i + 8);
      if (v7)
      {
        *(v7 + 16) = *v7;
        *(v7 + 76) = 1;
        *(v7 + 92) = -1;
      }

      v8 = *(i + 16);
      if (v8)
      {
        *(v8 + 16) = *v8;
        *(v8 + 76) = 2;
        *(v8 + 92) = -1;
      }
    }
  }

  v9 = *(this + 14);
  if (v9)
  {
    *(this + 15) = v9;
    operator delete(v9);
  }

  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  v10 = this + *(*this - 24);
  v11 = *(v10 + 2);
  if (v11 != *(v10 + 3))
  {
    do
    {
      v24 = *v11;
      std::vector<long long>::push_back[abi:ne200100](this + 112, &v24);
      v12 = *(this + 14);
      v13 = *(this + 15);
      v14 = (v13 - v12) >> 3;
      v15 = v14 < 2;
      v16 = v14 - 2;
      if (!v15)
      {
        v17 = v16 >> 1;
        v18 = (v12 + 8 * v17);
        v21 = *(v13 - 8);
        v19 = (v13 - 8);
        v20 = v21;
        v22 = *v18;
        if (*v18 < v21)
        {
          do
          {
            *v19 = v22;
            v19 = v18;
            if (!v17)
            {
              break;
            }

            v17 = (v17 - 1) >> 1;
            v18 = (v12 + 8 * v17);
            v22 = *v18;
          }

          while (*v18 < v20);
          *v19 = v20;
        }
      }

      v11 += 3;
    }

    while (v11 != *(this + *(*this - 24) + 24));
  }
}

void ClipperLib::Clipper::InsertScanbeam(ClipperLib::Clipper *this, uint64_t a2)
{
  v14 = a2;
  std::vector<long long>::push_back[abi:ne200100](this + 112, &v14);
  v3 = *(this + 14);
  v4 = *(this + 15);
  v5 = (v4 - v3) >> 3;
  v6 = v5 < 2;
  v7 = v5 - 2;
  if (!v6)
  {
    v8 = v7 >> 1;
    v9 = (v3 + 8 * v8);
    v12 = *(v4 - 8);
    v10 = (v4 - 8);
    v11 = v12;
    v13 = *v9;
    if (*v9 < v12)
    {
      do
      {
        *v10 = v13;
        v10 = v9;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (v3 + 8 * v8);
        v13 = *v9;
      }

      while (*v9 < v11);
      *v10 = v11;
    }
  }
}

uint64_t ClipperLib::Clipper::Execute(uint64_t a1, int a2, uint64_t *a3, int a4, int a5)
{
  if (*(a1 + 160))
  {
    return 0;
  }

  v7 = *a1;
  if (*(a1 + *(*a1 - 24) + 73) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    ClipperLib::clipperException::clipperException(exception, "Error: PolyTree struct is need for open path clipping.");
  }

  *(a1 + 160) = 1;
  v13 = *a3;
  v12 = a3[1];
  if (v12 != *a3)
  {
    v14 = a3[1];
    do
    {
      v16 = *(v14 - 24);
      v14 -= 24;
      v15 = v16;
      if (v16)
      {
        *(v12 - 16) = v15;
        operator delete(v15);
      }

      v12 = v14;
    }

    while (v14 != v13);
    a3[1] = v13;
    v7 = *a1;
  }

  *(a1 + 164) = a5;
  *(a1 + 168) = a4;
  *(a1 + 104) = a2;
  *(a1 + 173) = 0;
  v17 = (*(v7 + 24))(a1);
  if (v17)
  {
    ClipperLib::Clipper::BuildResult(a1, a3);
  }

  v18 = *(a1 + 8);
  if (*(a1 + 16) != v18)
  {
    v19 = 0;
    do
    {
      v21 = *(v18 + 8 * v19);
      v22 = *(v21 + 24);
      if (v22)
      {
        *(*(v22 + 32) + 24) = 0;
        for (i = *(v21 + 24); i; i = *(v21 + 24))
        {
          *(v21 + 24) = *(i + 24);
          MEMORY[0x23EE6C500]();
        }
      }

      MEMORY[0x23EE6C500](v21, 0x1020C401FC46325);
      v18 = *(a1 + 8);
      v20 = *(a1 + 16);
      *(v18 + 8 * v19++) = 0;
    }

    while (v19 < (v20 - v18) >> 3);
  }

  *(a1 + 16) = v18;
  *(a1 + 160) = 0;
  return v17;
}

uint64_t ClipperLib::Clipper::BuildResult(uint64_t result, void *a2)
{
  v2 = (*(result + 16) - *(result + 8)) >> 3;
  if (0xAAAAAAAAAAAAAAABLL * ((a2[2] - *a2) >> 3) < v2)
  {
    if (v2 < 0xAAAAAAAAAAAAAABLL)
    {
      v3 = a2[1] - *a2;
      operator new();
    }

    _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
  }

  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v5 != v4)
  {
    v6 = 0;
    do
    {
      if (*(*(v4 + 8 * v6) + 24))
      {
        v7 = *(*(*(v4 + 8 * v6) + 24) + 32);
        if (v7)
        {
          v8 = 0;
          v9 = 1;
          v10 = v7;
          do
          {
            v11 = v8++;
            v10 = *(v10 + 24);
            ++v9;
          }

          while (v10 != v7);
          if (v11)
          {
            operator new();
          }
        }

        v4 = *(result + 8);
        v5 = *(result + 16);
      }

      ++v6;
    }

    while (v6 < (v5 - v4) >> 3);
  }

  return result;
}

void sub_2389CEDE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  v15 = *v13;
  if (*v13)
  {
    *(v13 + 8) = v15;
    operator delete(v15);
  }

  *(a11 + 8) = v13;
  v16 = a1;
  if (__p)
  {
    operator delete(__p);
    v16 = a1;
  }

  _Unwind_Resume(v16);
}

uint64_t ClipperLib::Clipper::DisposeAllOutRecs(uint64_t this)
{
  v1 = this;
  v2 = *(this + 8);
  if (*(this + 16) != v2)
  {
    v3 = 0;
    do
    {
      v5 = *(v2 + 8 * v3);
      v6 = *(v5 + 24);
      if (v6)
      {
        *(*(v6 + 32) + 24) = 0;
        for (i = *(v5 + 24); i; i = *(v5 + 24))
        {
          *(v5 + 24) = *(i + 24);
          MEMORY[0x23EE6C500]();
        }
      }

      this = MEMORY[0x23EE6C500](v5, 0x1020C401FC46325);
      v2 = *(v1 + 8);
      v4 = *(v1 + 16);
      *(v2 + 8 * v3++) = 0;
    }

    while (v3 < (v4 - v2) >> 3);
  }

  *(v1 + 16) = v2;
  return this;
}

uint64_t ClipperLib::Clipper::Execute(uint64_t a1, int a2, ClipperLib::PolyTree *a3, int a4, int a5)
{
  if (*(a1 + 160))
  {
    return 0;
  }

  *(a1 + 160) = 1;
  *(a1 + 164) = a5;
  *(a1 + 168) = a4;
  *(a1 + 104) = a2;
  *(a1 + 173) = 1;
  v8 = (*(*a1 + 24))(a1);
  if (v8)
  {
    ClipperLib::Clipper::BuildResult2(a1, a3);
  }

  v9 = *(a1 + 8);
  if (*(a1 + 16) != v9)
  {
    v10 = 0;
    do
    {
      v12 = *(v9 + 8 * v10);
      v13 = *(v12 + 24);
      if (v13)
      {
        *(*(v13 + 32) + 24) = 0;
        for (i = *(v12 + 24); i; i = *(v12 + 24))
        {
          *(v12 + 24) = *(i + 24);
          MEMORY[0x23EE6C500]();
        }
      }

      MEMORY[0x23EE6C500](v12, 0x1020C401FC46325);
      v9 = *(a1 + 8);
      v11 = *(a1 + 16);
      *(v9 + 8 * v10++) = 0;
    }

    while (v10 < (v11 - v9) >> 3);
  }

  *(a1 + 16) = v9;
  *(a1 + 160) = 0;
  return v8;
}

void ClipperLib::Clipper::BuildResult2(ClipperLib::Clipper *this, ClipperLib::PolyTree *a2)
{
  v4 = *(a2 + 10);
  v5 = *(a2 + 11);
  if (v5 != v4)
  {
    v6 = 0;
    do
    {
      v7 = *(v4 + 8 * v6);
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v4 = *(a2 + 10);
        v5 = *(a2 + 11);
      }

      ++v6;
    }

    while (v6 < (v5 - v4) >> 3);
  }

  if (v5 != v4)
  {
    *(a2 + 11) = v4;
  }

  v8 = *(a2 + 4);
  v9 = a2 + 32;
  if (*(a2 + 5) != v8)
  {
    *(a2 + 5) = v8;
  }

  v10 = *(this + 2) - *(this + 1);
  if (*(a2 + 12) - v4 < v10)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      v11 = *(this + 2) - *(this + 1);
      operator new();
    }

    goto LABEL_47;
  }

  v13 = *(this + 1);
  v12 = *(this + 2);
  if (v12 != v13)
  {
    v14 = 0;
    do
    {
      v17 = *(v13 + 8 * v14);
      v18 = *(v17 + 24);
      if (v18)
      {
        v19 = -1;
        v20 = 1;
        v21 = *(v17 + 24);
        do
        {
          v21 = *(v21 + 24);
          ++v19;
          ++v20;
        }

        while (v21 != v18);
        v22 = *(v17 + 5) ? 1 : 2;
        if (v19 >= v22)
        {
          v23 = *(v17 + 8);
          if (v23)
          {
            v24 = *(v17 + 4);
            if (v24 == *(v23 + 4) || !*(v23 + 24))
            {
              do
              {
                if (*(v23 + 4) != v24 && *(v23 + 24))
                {
                  break;
                }

                v23 = *(v23 + 8);
              }

              while (v23);
              *(v17 + 8) = v23;
            }
          }

          operator new();
        }
      }

      ++v14;
      v15 = v12 - v13;
      v16 = (v12 - v13) >> 3;
    }

    while (v14 < v16);
    v9 = a2 + 32;
    v25 = *(a2 + 4);
    if (*(a2 + 6) - v25 < v15)
    {
      if (!(v16 >> 61))
      {
        v26 = *(a2 + 5) - v25;
        operator new();
      }

LABEL_47:
      _ZNSt3__16vectorI12GKCRTreeNodeI8NSObjectDv2_fENS_9allocatorIS4_EEE20__throw_length_errorB8ne200100Ev();
    }
  }

  v27 = *(this + 1);
  if (*(this + 2) != v27)
  {
    for (i = 0; i < (*(this + 2) - v27) >> 3; ++i)
    {
      v31 = *(v27 + 8 * i);
      v32 = *(v31 + 16);
      if (!v32)
      {
        goto LABEL_40;
      }

      if (*(v31 + 5) == 1)
      {
        *(v32 + 68) = 1;
      }

      else
      {
        v33 = *(v31 + 8);
        if (v33)
        {
          v30 = *(v33 + 16);
          if (v30)
          {
            v29 = *(v30 + 5) - *(v30 + 4);
            v34 = v32;
            std::vector<GKCPolygonObstacle *>::push_back[abi:ne200100](v30 + 32, &v34);
            goto LABEL_39;
          }
        }
      }

      v29 = *(a2 + 5) - *(a2 + 4);
      v34 = v32;
      std::vector<GKCPolygonObstacle *>::push_back[abi:ne200100](v9, &v34);
      v30 = a2;
LABEL_39:
      *(v32 + 56) = v30;
      *(v32 + 64) = v29 >> 3;
LABEL_40:
      v27 = *(this + 1);
    }
  }
}

void ClipperLib::Clipper::FixHoleLinkage(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = *(a2 + 4);
    if (v3 == *(v2 + 4) || !*(v2 + 24))
    {
      do
      {
        if (*(v2 + 4) != v3 && *(v2 + 24))
        {
          break;
        }

        v2 = *(v2 + 8);
      }

      while (v2);
      *(a2 + 8) = v2;
    }
  }
}

uint64_t ClipperLib::Clipper::ExecuteInternal(ClipperLib::Clipper *this)
{
  (*(*this + 16))(this);
  if (*(this + *(*this - 24) + 8) == *(this + *(*this - 24) + 24))
  {
    return 1;
  }

  v2 = ClipperLib::Clipper::PopScanbeam(this);
  v3 = (this + 152);
  do
  {
    ClipperLib::Clipper::InsertLocalMinimaIntoAEL(this, v2);
    v4 = *(this + 7);
    v5 = *(this + 8);
    if (v5 != v4)
    {
      v6 = 0;
      do
      {
        v7 = *(v4 + 8 * v6);
        if (v7)
        {
          MEMORY[0x23EE6C500](v7, 0x1020C406C4767B9);
          v4 = *(this + 7);
          v5 = *(this + 8);
        }

        ++v6;
      }

      while (v6 < (v5 - v4) >> 3);
    }

    if (v5 != v4)
    {
      *(this + 8) = v4;
    }

    while (1)
    {
      v8 = *v3;
      if (!*v3)
      {
        break;
      }

      v9 = v8[17];
      v10 = v8[18];
      if (*(v8 + 17) == 0)
      {
        *v3 = 0;
      }

      else
      {
        v11 = (v10 + 136);
        if (!v10)
        {
          v11 = (this + 152);
        }

        *v11 = v9;
        if (v9)
        {
          *(v9 + 144) = v10;
        }
      }

      v8[17] = 0;
      v8[18] = 0;
      ClipperLib::Clipper::ProcessHorizontal(this, v8, 0);
    }

    if (*(this + 14) == *(this + 15))
    {
      break;
    }

    v2 = ClipperLib::Clipper::PopScanbeam(this);
    if (!ClipperLib::Clipper::ProcessIntersections(this, v2))
    {
      v23 = 0;
      v27 = *(this + 4);
      v28 = *(this + 5);
      if (v28 == v27)
      {
        goto LABEL_54;
      }

      goto LABEL_50;
    }

    ClipperLib::Clipper::ProcessEdgesAtTopOfScanbeam(this, v2);
  }

  while (*(this + 14) != *(this + 15) || *(this + *(*this - 24) + 8) != *(this + *(*this - 24) + 24));
  v13 = *(this + 1);
  v12 = *(this + 2);
  if (v12 != v13)
  {
    v14 = 0;
    v15 = (v12 - v13) >> 3;
    if (v15 <= 1)
    {
      v15 = 1;
    }

    do
    {
      v16 = *(v13 + 8 * v14);
      v17 = *(v16 + 24);
      if (v17)
      {
        if ((*(v16 + 5) & 1) == 0)
        {
          v18 = *(v16 + 4);
          v19 = 0.0;
          v20 = v17;
          do
          {
            v19 = v19 + (*(v20[4] + 16) - v20[2]) * (v20[1] + *(v20[4] + 8));
            v20 = v20[3];
          }

          while (v20 != v17);
          if ((*(this + 172) ^ v18) == v19 * 0.5 > 0.0)
          {
            v21 = v17;
            do
            {
              v22 = *(v21 + 24);
              *(v21 + 24) = vextq_s8(v22, v22, 8uLL);
              v21 = v22.i64[0];
            }

            while (v22.i64[0] != v17);
          }
        }
      }

      ++v14;
    }

    while (v14 != v15);
  }

  if (*(this + 4) != *(this + 5))
  {
    ClipperLib::Clipper::JoinCommonEdges(this);
    v13 = *(this + 1);
    v12 = *(this + 2);
  }

  if (v12 != v13)
  {
    v25 = 0;
    do
    {
      v26 = *(v13 + 8 * v25);
      if (*(v26 + 24) && (*(v26 + 5) & 1) == 0)
      {
        ClipperLib::Clipper::FixupOutPolygon(this, v26);
        v13 = *(this + 1);
        v12 = *(this + 2);
      }

      ++v25;
    }

    while (v25 < (v12 - v13) >> 3);
  }

  if (*(this + 174))
  {
    ClipperLib::Clipper::DoSimplePolygons(this);
  }

  v23 = 1;
  v27 = *(this + 4);
  v28 = *(this + 5);
  if (v28 != v27)
  {
LABEL_50:
    v29 = 0;
    do
    {
      v30 = *(v27 + 8 * v29);
      if (v30)
      {
        MEMORY[0x23EE6C500](v30, 0x1020C406C4767B9);
        v27 = *(this + 4);
        v28 = *(this + 5);
      }

      ++v29;
    }

    while (v29 < (v28 - v27) >> 3);
  }

LABEL_54:
  if (v28 != v27)
  {
    *(this + 5) = v27;
  }

  v32 = *(this + 7);
  v31 = *(this + 8);
  if (v31 != v32)
  {
    v33 = 0;
    do
    {
      v34 = *(v32 + 8 * v33);
      if (v34)
      {
        MEMORY[0x23EE6C500](v34, 0x1020C406C4767B9);
        v32 = *(this + 7);
        v31 = *(this + 8);
      }

      ++v33;
    }

    while (v33 < (v31 - v32) >> 3);
  }

  if (v31 == v32)
  {
    return v23;
  }

  *(this + 8) = v32;
  return v23;
}

uint64_t ClipperLib::Clipper::PopScanbeam(ClipperLib::Clipper *this)
{
  v1 = *(this + 14);
  v2 = *(this + 15);
  v3 = *v1;
  v4 = (v2 - v1) >> 3;
  if (v4 < 2)
  {
    goto LABEL_17;
  }

  v5 = 0;
  v6 = (v4 - 2) >> 1;
  v7 = *(this + 14);
  do
  {
    while (1)
    {
      v11 = &v7[8 * v5];
      v12 = (2 * v5) | 1;
      v5 = 2 * v5 + 2;
      if (v5 < v4)
      {
        break;
      }

      v5 = v12;
      v13 = *(v11 + 1);
      v10 = v11 + 8;
      *v7 = v13;
      v7 = v10;
      if (v12 > v6)
      {
        goto LABEL_8;
      }
    }

    v9 = *(v11 + 1);
    v8 = *(v11 + 2);
    v10 = &v11[8 * (v9 < v8) + 8];
    if (v9 >= v8)
    {
      v5 = v12;
    }

    *v7 = *v10;
    v7 = v10;
  }

  while (v5 <= v6);
LABEL_8:
  v14 = (v2 - 8);
  if (v10 == (v2 - 8))
  {
    *v10 = v3;
    goto LABEL_17;
  }

  *v10 = *v14;
  *v14 = v3;
  v15 = (v10 - v1 + 8) >> 3;
  v16 = v15 < 2;
  v17 = v15 - 2;
  if (!v16)
  {
    v18 = v17 >> 1;
    v19 = &v1[8 * v18];
    v20 = *v19;
    v21 = *v10;
    if (*v19 < *v10)
    {
      do
      {
        *v10 = v20;
        v10 = v19;
        if (!v18)
        {
          break;
        }

        v18 = (v18 - 1) >> 1;
        v19 = &v1[8 * v18];
        v20 = *v19;
      }

      while (*v19 < v21);
      goto LABEL_15;
    }
  }

  while (1)
  {
LABEL_17:
    v22 = v2 - 8;
    if (v1 == (v2 - 8))
    {
      goto LABEL_33;
    }

    v23 = v2;
    v2 -= 8;
    if (v3 != *v1)
    {
      break;
    }

    v24 = (v2 - v1) >> 3;
    if (v24 >= 2)
    {
      v25 = 0;
      v26 = (v24 - 2) >> 1;
      v27 = v1;
      do
      {
        while (1)
        {
          v30 = &v27[8 * v25];
          v31 = (2 * v25) | 1;
          v25 = 2 * v25 + 2;
          if (v25 < v24)
          {
            break;
          }

          v25 = v31;
          v32 = *(v30 + 1);
          v10 = v30 + 8;
          *v27 = v32;
          v27 = v10;
          if (v31 > v26)
          {
            goto LABEL_26;
          }
        }

        v28 = *(v30 + 1);
        v29 = *(v30 + 2);
        v10 = &v30[8 * (v28 < v29) + 8];
        if (v28 >= v29)
        {
          v25 = v31;
        }

        *v27 = *v10;
        v27 = v10;
      }

      while (v25 <= v26);
LABEL_26:
      v33 = (v23 - 16);
      if (v10 == v33)
      {
        *v10 = v3;
      }

      else
      {
        *v10 = *v33;
        *v33 = v3;
        v34 = (v10 - v1 + 8) >> 3;
        v16 = v34 < 2;
        v35 = v34 - 2;
        if (!v16)
        {
          v36 = v35 >> 1;
          v37 = &v1[8 * v36];
          v38 = *v37;
          v21 = *v10;
          if (*v37 < *v10)
          {
            do
            {
              *v10 = v38;
              v10 = v37;
              if (!v36)
              {
                break;
              }

              v36 = (v36 - 1) >> 1;
              v37 = &v1[8 * v36];
              v38 = *v37;
            }

            while (*v37 < v21);
LABEL_15:
            *v10 = v21;
            continue;
          }
        }
      }
    }
  }

  v22 = v2;
LABEL_33:
  *(this + 15) = v22;
  return v3;
}

void ClipperLib::Clipper::InsertLocalMinimaIntoAEL(ClipperLib::Clipper *this, uint64_t a2)
{
  v2 = this + *(*this - 24);
  v5 = *(v2 + 1);
  v3 = v2 + 8;
  v4 = v5;
  v6 = v3[2];
  if (v5 != v6)
  {
    v62 = this + 40;
    do
    {
      if (*v4 != a2)
      {
        return;
      }

      v11 = v4[1];
      v12 = v4[2];
      if (v4 != v6)
      {
        *v3 = v4 + 3;
      }

      if (!v11)
      {
        ClipperLib::Clipper::InsertEdgeIntoAEL(this, v12, 0);
        ClipperLib::Clipper::SetWindingCount(this, v12);
        v13 = 0;
        if (ClipperLib::Clipper::IsContributing(this, v12))
        {
          v13 = ClipperLib::Clipper::AddOutPt(this, v12, v12);
        }

        goto LABEL_27;
      }

      ClipperLib::Clipper::InsertEdgeIntoAEL(this, v11, 0);
      if (v12)
      {
        ClipperLib::Clipper::InsertEdgeIntoAEL(this, v12, v11);
        ClipperLib::Clipper::SetWindingCount(this, v11);
        *(v12 + 84) = *(v11 + 84);
        if (ClipperLib::Clipper::IsContributing(this, v11))
        {
          v13 = ClipperLib::Clipper::AddLocalMinPoly(this, v11, v12, v11);
        }

        else
        {
          v13 = 0;
        }

        v63 = *(v11 + 40);
        std::vector<long long>::push_back[abi:ne200100](this + 112, &v63);
        v14 = *(this + 14);
        v15 = *(this + 15);
        v16 = (v15 - v14) >> 3;
        v60 = v16 < 2;
        v17 = v16 - 2;
        if (v60)
        {
          goto LABEL_27;
        }

        v18 = v17 >> 1;
        v19 = (v14 + 8 * v18);
        v22 = *(v15 - 8);
        v20 = (v15 - 8);
        v21 = v22;
        v23 = *v19;
        if (*v19 >= v22)
        {
          goto LABEL_27;
        }

        do
        {
          *v20 = v23;
          v20 = v19;
          if (!v18)
          {
            break;
          }

          v18 = (v18 - 1) >> 1;
          v19 = (v14 + 8 * v18);
          v23 = *v19;
        }

        while (*v19 < v21);
      }

      else
      {
        ClipperLib::Clipper::SetWindingCount(this, v11);
        if (ClipperLib::Clipper::IsContributing(this, v11))
        {
          v13 = ClipperLib::Clipper::AddOutPt(this, v11, v11);
        }

        else
        {
          v13 = 0;
        }

        v63 = *(v11 + 40);
        std::vector<long long>::push_back[abi:ne200100](this + 112, &v63);
        v24 = *(this + 14);
        v25 = *(this + 15);
        v26 = (v25 - v24) >> 3;
        v60 = v26 < 2;
        v27 = v26 - 2;
        if (v60)
        {
          goto LABEL_27;
        }

        v28 = v27 >> 1;
        v29 = (v24 + 8 * v28);
        v30 = *(v25 - 8);
        v20 = (v25 - 8);
        v21 = v30;
        v31 = *v29;
        if (*v29 >= v30)
        {
          goto LABEL_27;
        }

        do
        {
          *v20 = v31;
          v20 = v29;
          if (!v28)
          {
            break;
          }

          v28 = (v28 - 1) >> 1;
          v29 = (v24 + 8 * v28);
          v31 = *v29;
        }

        while (*v29 < v21);
      }

      *v20 = v21;
LABEL_27:
      if (v12)
      {
        if (*(v12 + 56))
        {
          v63 = *(v12 + 40);
          std::vector<long long>::push_back[abi:ne200100](this + 112, &v63);
          v32 = *(this + 14);
          v33 = *(this + 15);
          v34 = (v33 - v32) >> 3;
          v60 = v34 < 2;
          v35 = v34 - 2;
          if (!v60)
          {
            v36 = v35 >> 1;
            v37 = (v32 + 8 * v36);
            v40 = *(v33 - 8);
            v38 = (v33 - 8);
            v39 = v40;
            v41 = *v37;
            if (*v37 < v40)
            {
              do
              {
                *v38 = v41;
                v38 = v37;
                if (!v36)
                {
                  break;
                }

                v36 = (v36 - 1) >> 1;
                v37 = (v32 + 8 * v36);
                v41 = *v37;
              }

              while (*v37 < v39);
              *v38 = v39;
            }
          }
        }

        else
        {
          v42 = *(this + 19);
          *(v12 + 144) = 0;
          if (v42)
          {
            *(v42 + 144) = v12;
          }

          *(this + 19) = v12;
          *(v12 + 136) = v42;
        }

        if (v11)
        {
          if (v13)
          {
            if (!*(v12 + 56))
            {
              v51 = *(this + 7);
              v50 = *(this + 8);
              if (v50 != v51)
              {
                if (*(v12 + 80))
                {
                  v52 = 0;
                  do
                  {
                    v53 = *(v51 + 8 * v52);
                    v54 = *(*v53 + 8);
                    v55 = v53[2];
                    v56 = *v12;
                    v57 = *(v12 + 32);
                    if (v54 >= v55)
                    {
                      v58 = v53[2];
                    }

                    else
                    {
                      v58 = *(*v53 + 8);
                    }

                    if (v54 <= v55)
                    {
                      v54 = v53[2];
                    }

                    if (v56 >= v57)
                    {
                      v59 = *(v12 + 32);
                    }

                    else
                    {
                      v59 = *v12;
                    }

                    if (v56 <= v57)
                    {
                      v56 = *(v12 + 32);
                    }

                    v60 = v58 < v56 && v59 < v54;
                    if (v60)
                    {
                      v61 = v53[3];
                      operator new();
                    }

                    ++v52;
                  }

                  while (v52 < (v50 - v51) >> 3);
                }
              }
            }
          }

          if ((*(v11 + 92) & 0x80000000) == 0)
          {
            v43 = *(v11 + 128);
            if (v43)
            {
              if (*(v43 + 16) == *v11 && (*(v43 + 92) & 0x80000000) == 0 && ClipperLib::SlopesEqual(*(v11 + 128), v11, v62[*(*this - 24)]) && *(v11 + 80) && *(v43 + 80))
              {
                ClipperLib::Clipper::AddOutPt(this, v43, v11);
                v44 = *(v11 + 32);
                v45 = *(v11 + 40);
                operator new();
              }
            }
          }

          v46 = *(v11 + 120);
          if (v46 != v12)
          {
            if ((*(v12 + 92) & 0x80000000) == 0)
            {
              v47 = *(v12 + 128);
              if ((*(v47 + 92) & 0x80000000) == 0 && ClipperLib::SlopesEqual(*(v12 + 128), v12, v62[*(*this - 24)]) && *(v12 + 80) && *(v47 + 80))
              {
                ClipperLib::Clipper::AddOutPt(this, v47, v12);
                v48 = *(v12 + 32);
                v49 = *(v12 + 40);
                operator new();
              }
            }

            if (v46 && v46 != v12)
            {
              do
              {
                ClipperLib::Clipper::IntersectEdges(this, v12, v46, (v11 + 16));
                v46 = *(v46 + 120);
              }

              while (v46 != v12);
            }
          }
        }
      }

      v9 = this + *(*this - 24);
      v10 = *(v9 + 1);
      v3 = v9 + 8;
      v4 = v10;
      v6 = v3[2];
    }

    while (v10 != v6);
  }
}

uint64_t ClipperLib::Clipper::ClearGhostJoins(uint64_t this)
{
  v1 = this;
  v2 = *(this + 56);
  v3 = *(this + 64);
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = MEMORY[0x23EE6C500](this, 0x1020C406C4767B9);
        v2 = *(v1 + 56);
        v3 = *(v1 + 64);
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  if (v3 != v2)
  {
    *(v1 + 64) = v2;
  }

  return this;
}

void ClipperLib::Clipper::ProcessHorizontals(ClipperLib::Clipper *this, int a2)
{
  v4 = (this + 152);
  for (i = *(this + 19); i; i = *(this + 19))
  {
    v6 = i[17];
    v7 = i[18];
    if (*(i + 17) == 0)
    {
      *v4 = 0;
    }

    else
    {
      v8 = (v7 + 136);
      if (!v7)
      {
        v8 = v4;
      }

      *v8 = v6;
      if (v6)
      {
        *(v6 + 144) = v7;
      }
    }

    i[17] = 0;
    i[18] = 0;
    ClipperLib::Clipper::ProcessHorizontal(this, i, a2);
  }
}

BOOL ClipperLib::Clipper::ProcessIntersections(ClipperLib::Clipper *this, uint64_t a2)
{
  if (!*(this + 18))
  {
    return 1;
  }

  ClipperLib::Clipper::BuildIntersectList(this, a2);
  v3 = (*(this + 11) - *(this + 10)) >> 3;
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1 || (result = ClipperLib::Clipper::FixupIntersectionOrder(this)))
  {
    ClipperLib::Clipper::ProcessIntersectList(this);
    *(this + 19) = 0;
    return 1;
  }

  return result;
}

void sub_2389D01A0(void *a1)
{
  __cxa_begin_catch(a1);
  *(v1 + 152) = 0;
  ClipperLib::Clipper::DisposeIntersectNodes(v1);
  exception = __cxa_allocate_exception(0x20uLL);
  ClipperLib::clipperException::clipperException(exception, "ProcessIntersections error");
}

void ClipperLib::Clipper::ProcessEdgesAtTopOfScanbeam(ClipperLib::Clipper *this, uint64_t a2)
{
  v5 = (this + 144);
  v4 = *(this + 18);
  v38 = v4;
  if (v4)
  {
    while (v4[5] == a2)
    {
      if (!v4[14] && (((v10 = v4[12], v11 = v4[4], *(v10 + 32) == v11) ? (v12 = *(v10 + 40) == a2) : (v12 = 0), (!v12 || *(v10 + 112)) && ((v10 = v4[13], *(v10 + 32) == v11) ? (v13 = *(v10 + 40) == a2) : (v13 = 0), !v13 || *(v10 + 112))) || *(v10 + 92) == -2 || *(v10 + 56)))
      {
        v14 = v4[16];
        ClipperLib::Clipper::DoMaxima(this, v4);
        v15 = (v14 + 120);
        if (!v14)
        {
          v15 = v5;
        }

        v4 = *v15;
        v38 = v4;
        if (!v4)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v6 = v4[14];
        if (v6 && !*(v6 + 56))
        {
          ClipperLib::Clipper::UpdateEdgeIntoAEL(this, &v38);
          v4 = v38;
          if ((*(v38 + 23) & 0x80000000) == 0)
          {
            ClipperLib::Clipper::AddOutPt(this, v38, v38);
          }

          v16 = *(this + 19);
          v4[18] = 0;
          if (v16)
          {
            *(v16 + 144) = v4;
          }

          *(this + 19) = v4;
          v4[17] = v16;
          if (*(this + 174) != 1)
          {
            goto LABEL_3;
          }

LABEL_14:
          if ((*(v4 + 23) & 0x80000000) == 0)
          {
            if (*(v4 + 20))
            {
              v9 = v4[16];
              if (v9)
              {
                if ((*(v9 + 92) & 0x80000000) == 0 && *(v9 + 16) == v4[2] && *(v9 + 80))
                {
                  v37 = *(v4 + 1);
                  ClipperLib::Clipper::AddOutPt(this, v9, &v37);
                  ClipperLib::Clipper::AddOutPt(this, v4, &v37);
                  operator new();
                }
              }
            }
          }

          goto LABEL_3;
        }

        v4[2] = v4[4];
        v4[3] = a2;
        if (*(this + 174) == 1)
        {
          goto LABEL_14;
        }

LABEL_3:
        v4 = v4[15];
        v38 = v4;
        if (!v4)
        {
          goto LABEL_45;
        }
      }
    }

    v7 = *(v4 + 8) * (a2 - v4[1]);
    if (v7 >= 0.0)
    {
      v8 = 0.5;
    }

    else
    {
      v8 = -0.5;
    }

    v4[2] = *v4 + (v8 + v7);
    v4[3] = a2;
    if (*(this + 174) == 1)
    {
      goto LABEL_14;
    }

    goto LABEL_3;
  }

LABEL_45:
  for (i = *(this + 19); i; i = *(this + 19))
  {
    v20 = i[17];
    v21 = i[18];
    if (*(i + 17) == 0)
    {
      *(this + 19) = 0;
    }

    else
    {
      v22 = (v21 + 136);
      if (!v21)
      {
        v22 = (this + 152);
      }

      *v22 = v20;
      if (v20)
      {
        *(v20 + 144) = v21;
      }
    }

    i[17] = 0;
    i[18] = 0;
    ClipperLib::Clipper::ProcessHorizontal(this, i, 1);
  }

  v18 = *v5;
  v38 = v18;
  if (v18)
  {
    v19 = this + 40;
    while (v18[5] != a2 || !v18[14])
    {
LABEL_56:
      v18 = v18[15];
      v38 = v18;
      if (!v18)
      {
        return;
      }
    }

    if ((*(v18 + 23) & 0x80000000) != 0)
    {
      v23 = 0;
      ClipperLib::Clipper::UpdateEdgeIntoAEL(this, &v38);
      v18 = v38;
      v24 = v38[15];
      v25 = v38[16];
      if (!v25)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v23 = ClipperLib::Clipper::AddOutPt(this, v18, v18 + 4);
      ClipperLib::Clipper::UpdateEdgeIntoAEL(this, &v38);
      v18 = v38;
      v24 = v38[15];
      v25 = v38[16];
      if (!v25)
      {
LABEL_74:
        if (v24 && *(v24 + 16) == *v18)
        {
          v32 = *(v24 + 24);
          v33 = v32 != v18[1] || v23 == 0;
          if (!v33 && (*(v24 + 92) & 0x80000000) == 0 && v32 > *(v24 + 40))
          {
            v34 = v18;
            if (ClipperLib::SlopesEqual(v18, v24, v19[*(*this - 24)]))
            {
              v18 = v34;
              if (*(v34 + 20))
              {
                if (*(v24 + 80))
                {
                  ClipperLib::Clipper::AddOutPt(this, v24, v34);
                  v35 = v34[4];
                  v36 = v34[5];
                  operator new();
                }
              }
            }

            else
            {
              v18 = v34;
            }
          }
        }

        goto LABEL_56;
      }
    }

    if (*(v25 + 16) == *v18)
    {
      v26 = *(v25 + 24);
      if (v26 == v18[1] && v23 != 0 && (*(v25 + 92) & 0x80000000) == 0 && v26 > *(v25 + 40))
      {
        v28 = v18;
        v29 = ClipperLib::SlopesEqual(v18, v25, v19[*(*this - 24)]);
        v18 = v28;
        if (v29 && *(v28 + 20) && *(v25 + 80))
        {
          ClipperLib::Clipper::AddOutPt(this, v25, v28);
          v30 = v28[4];
          v31 = v28[5];
          operator new();
        }
      }
    }

    goto LABEL_74;
  }
}

uint64_t ClipperLib::Clipper::JoinCommonEdges(uint64_t this)
{
  v1 = *(this + 32);
  if (*(this + 40) != v1)
  {
    v2 = this;
    for (i = 0; i < (*(v2 + 40) - v1) >> 3; ++i)
    {
      v4 = *(v1 + 8 * i);
      v5 = *(v2 + 8);
      v6 = *(v5 + 8 * **v4);
      do
      {
        v7 = v6;
        v6 = *(v5 + 8 * *v6);
      }

      while (v7 != v6);
      v8 = *(v5 + 8 * *v4[1]);
      do
      {
        v9 = v8;
        v8 = *(v5 + 8 * *v8);
      }

      while (v9 != v8);
      if (*(v7 + 24) && *(v9 + 24))
      {
        if (v7 == v9)
        {
          this = ClipperLib::Clipper::JoinPoints(v2, v4, v7, v9);
          if (this)
          {
            *(v7 + 24) = *v4;
            *(v7 + 32) = 0;
            operator new();
          }

          goto LABEL_3;
        }

        v10 = v7;
        do
        {
          v10 = *(v10 + 8);
        }

        while (v10 != v9 && v10 != 0);
        LowermostRec = v9;
        if (v10 != v9)
        {
          v13 = v9;
          do
          {
            v13 = *(v13 + 8);
          }

          while (v13 != v7 && v13 != 0);
          LowermostRec = v7;
          if (v13 != v7)
          {
            LowermostRec = ClipperLib::GetLowermostRec(v7, v9);
          }
        }

        this = ClipperLib::Clipper::JoinPoints(v2, v4, v7, v9);
        if (this)
        {
          *(v9 + 24) = 0;
          *(v9 + 32) = 0;
          *v9 = *v7;
          *(v7 + 4) = *(LowermostRec + 4);
          if (LowermostRec == v9)
          {
            *(v7 + 8) = *(v9 + 8);
            *(v9 + 8) = v7;
            if (*(v2 + 173) == 1)
            {
LABEL_33:
              v15 = *(v2 + 8);
              v16 = *(v2 + 16) - v15;
              if (v16)
              {
                v17 = v16 >> 3;
                if (v17 <= 1)
                {
                  v17 = 1;
                }

                do
                {
                  if (*(*v15 + 8) == v9)
                  {
                    *(*v15 + 8) = v7;
                  }

                  v15 += 8;
                  --v17;
                }

                while (v17);
              }
            }
          }

          else
          {
            *(v9 + 8) = v7;
            if (*(v2 + 173) == 1)
            {
              goto LABEL_33;
            }
          }
        }
      }

LABEL_3:
      v1 = *(v2 + 32);
    }
  }

  return this;
}

void *ClipperLib::Clipper::FixupOutPolygon(void *a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  v2 = *(a2 + 24);
  v3 = v2 + 4;
  v4 = v2[4];
  if (v4 != v2)
  {
    v5 = 0;
    while (1)
    {
      while (1)
      {
        result = v2[3];
        if (v4 == result)
        {
          goto LABEL_28;
        }

        v9 = v2[1];
        v10 = v2[2];
        v11 = result[1];
        v12 = result[2];
        if (v9 == v11 && v10 == v12)
        {
          goto LABEL_3;
        }

        v14 = v4[1];
        v15 = v4[2];
        if (v9 == v14 && v10 == v15)
        {
          goto LABEL_3;
        }

        v17 = a1 + *(*a1 - 24);
        v25 = v2;
        v26 = v2[3];
        v18 = v5;
        v19 = ClipperLib::SlopesEqual(v14, v15, v9, v10, v11, v12, v17[40]);
        v5 = v18;
        v20 = v19;
        v2 = v25;
        result = v26;
        if (v20)
        {
          break;
        }

LABEL_23:
        if (v25 == v18)
        {
          goto LABEL_32;
        }

        if (!v18)
        {
          v5 = v25;
        }

        v3 = v26 + 4;
        v4 = v26[4];
        v2 = v26;
        if (v4 == v26)
        {
          goto LABEL_29;
        }
      }

      if (v17[72] != 1)
      {
        goto LABEL_3;
      }

      if (v14 == v11 && v15 == v12)
      {
        goto LABEL_3;
      }

      if (v14 != v11)
      {
        if (v9 >= v11 == v9 > v14)
        {
          goto LABEL_3;
        }

        goto LABEL_23;
      }

      if (v10 > v15 != v10 >= v12)
      {
        goto LABEL_23;
      }

LABEL_3:
      v4[3] = result;
      *(v2[3] + 32) = v4;
      v6 = *v3;
      MEMORY[0x23EE6C500](v2, 0x1020C409AE45206);
      result = v6;
      v5 = 0;
      v8 = v6[4];
      v3 = v6 + 4;
      v4 = v8;
      v2 = result;
      if (v8 == result)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_28:
  result = v2;
LABEL_29:
  v4[3] = 0;
  do
  {
    v22 = result[3];
    MEMORY[0x23EE6C500]();
    result = v22;
  }

  while (v22);
  v2 = 0;
LABEL_32:
  *(a2 + 24) = v2;
  return result;
}

uint64_t ClipperLib::Clipper::DoSimplePolygons(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(this + 16);
  if (v2 != v1)
  {
    v3 = 0;
    do
    {
      v4 = *(v1 + 8 * v3);
      v5 = *(v4 + 24);
      v11 = v3;
      if (v5 && (*(v4 + 5) & 1) == 0)
      {
        v6 = *(v4 + 24);
        do
        {
          v7 = v6[3];
          if (v7 != v5)
          {
            do
            {
              v8 = v6[1] == v7[1] && v6[2] == v7[2];
              if (v8 && v7[3] != v6)
              {
                v9 = v7[4];
                if (v9 != v6)
                {
                  v10 = v6[4];
                  v6[4] = v9;
                  v9[3] = v6;
                  v7[4] = v10;
                  *(v10 + 24) = v7;
                  *(v4 + 24) = v6;
                  operator new();
                }
              }

              v7 = v7[3];
            }

            while (v7 != v5);
            v7 = v6[3];
          }

          v6 = v7;
        }

        while (v7 != v5);
      }

      v3 = v11 + 1;
    }

    while (v11 + 1 < ((v2 - v1) >> 3));
  }

  return this;
}

uint64_t ClipperLib::Clipper::ClearJoins(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  v3 = *(this + 40);
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      this = *(v2 + 8 * v4);
      if (this)
      {
        this = MEMORY[0x23EE6C500](this, 0x1020C406C4767B9);
        v2 = *(v1 + 32);
        v3 = *(v1 + 40);
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  if (v3 != v2)
  {
    *(v1 + 40) = v2;
  }

  return this;
}

uint64_t ClipperLib::Clipper::DisposeOutRec(ClipperLib::Clipper *this, uint64_t a2)
{
  v4 = *(*(this + 1) + 8 * a2);
  v5 = *(v4 + 24);
  if (v5)
  {
    *(*(v5 + 32) + 24) = 0;
    for (i = *(v4 + 24); i; i = *(v4 + 24))
    {
      *(v4 + 24) = *(i + 24);
      MEMORY[0x23EE6C500]();
    }
  }

  result = MEMORY[0x23EE6C500](v4, 0x1020C401FC46325);
  *(*(this + 1) + 8 * a2) = 0;
  return result;
}

uint64_t ClipperLib::Clipper::SetWindingCount(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 128);
  v3 = *(a2 + 72);
  if (v2)
  {
    while (1)
    {
      if (*(v2 + 72) == v3)
      {
        v7 = *(v2 + 80);
        if (v7)
        {
          break;
        }
      }

      v2 = *(v2 + 128);
      if (!v2)
      {
        goto LABEL_2;
      }
    }

    v8 = *(a2 + 80);
    if (v8)
    {
      v9 = 164;
      if (!v3)
      {
        v9 = 168;
      }

      if (!*(result + v9))
      {
        goto LABEL_36;
      }

      v10 = *(v2 + 84);
      if (((v10 * v7) & 0x80000000) == 0)
      {
        if (((v8 * v7) & 0x80000000) == 0)
        {
          v11 = *(a2 + 80);
        }

        else
        {
          v11 = 0;
        }

        v8 = v10 + v11;
        goto LABEL_36;
      }

LABEL_23:
      if (v10 >= 0)
      {
        v13 = v10;
      }

      else
      {
        v13 = -v10;
      }

      if (v8 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = *(a2 + 80);
      }

      if (((v8 * v7) & 0x80000000) == 0)
      {
        v15 = *(a2 + 80);
      }

      else
      {
        v15 = 0;
      }

      v16 = v10 + v15;
      if (v13 >= 2)
      {
        v8 = v16;
      }

      else
      {
        v8 = v14;
      }

      goto LABEL_36;
    }

    if (*(result + 104) == 1)
    {
      v12 = 164;
      if (!v3)
      {
        v12 = 168;
      }

      if (!*(result + v12))
      {
        v20 = *(v2 + 128);
        if (v20)
        {
          v21 = 1;
          do
          {
            if (*(v20 + 72) == v3)
            {
              v21 ^= *(v20 + 80) != 0;
            }

            v20 = *(v20 + 128);
          }

          while (v20);
          v8 = (v21 & 1) == 0;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_36;
      }

      v10 = *(v2 + 84);
      if (v10 * v7 < 0)
      {
        goto LABEL_23;
      }

      v8 = ((v10 >> 31) | 1) + v10;
    }

    else
    {
      v8 = 1;
    }

LABEL_36:
    v4 = *(v2 + 88);
    *(a2 + 84) = v8;
    *(a2 + 88) = v4;
    v6 = (v2 + 120);
    goto LABEL_37;
  }

LABEL_2:
  v4 = 0;
  v5 = *(a2 + 80);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  *(a2 + 84) = v5;
  *(a2 + 88) = 0;
  v6 = (result + 144);
LABEL_37:
  v17 = *v6;
  v18 = v3 == 0;
  v19 = 168;
  if (v18)
  {
    v19 = 164;
  }

  if (*(result + v19))
  {
    if (v17 != a2)
    {
      do
      {
        v4 += *(v17 + 80);
        v17 = *(v17 + 120);
      }

      while (v17 != a2);
      *(a2 + 88) = v4;
    }
  }

  else
  {
    while (v17 != a2)
    {
      if (*(v17 + 80))
      {
        v4 = v4 == 0;
        *(a2 + 88) = v4;
      }

      v17 = *(v17 + 120);
    }
  }

  return result;
}

BOOL ClipperLib::Clipper::IsEvenOddFillType(uint64_t a1, uint64_t a2)
{
  v2 = 164;
  if (!*(a2 + 72))
  {
    v2 = 168;
  }

  return *(a1 + v2) == 0;
}

BOOL ClipperLib::Clipper::IsEvenOddAltFillType(uint64_t a1, uint64_t a2)
{
  v2 = 168;
  if (!*(a2 + 72))
  {
    v2 = 164;
  }

  return *(a1 + v2) == 0;
}

uint64_t ClipperLib::Clipper::IsContributing(uint64_t a1, _DWORD *a2)
{
  v2 = a2[18];
  v3 = 164;
  if (v2)
  {
    v4 = 164;
  }

  else
  {
    v4 = 168;
  }

  if (v2)
  {
    v3 = 168;
  }

  v5 = *(a1 + v3);
  v6 = *(a1 + v4);
  if (v6 != 2)
  {
    if (v6 == 1)
    {
      v8 = a2[21];
      if (v8 < 0)
      {
        v8 = -v8;
      }

      if (v8 != 1)
      {
        return 0;
      }

      goto LABEL_15;
    }

    if (v6)
    {
      if (a2[21] != -1)
      {
        return 0;
      }

      goto LABEL_15;
    }

    if (a2[20])
    {
      goto LABEL_15;
    }
  }

  if (a2[21] != 1)
  {
    return 0;
  }

LABEL_15:
  v9 = *(a1 + 104);
  result = 1;
  if (v9 <= 1)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        return result;
      }

LABEL_25:
      v10 = v5 == 2;
      if (v5 < 2)
      {
        return a2[22] == 0;
      }

      goto LABEL_35;
    }

    v10 = v5 == 2;
    if (v5 < 2)
    {
      return a2[22] != 0;
    }

    goto LABEL_31;
  }

  if (v9 == 2)
  {
    v10 = v5 == 2;
    if (!v2)
    {
      if (v5 < 2)
      {
        return a2[22] == 0;
      }

LABEL_35:
      if (v10)
      {
        return a2[22] < 1;
      }

      else
      {
        return a2[22] >= 0;
      }
    }

    if (v5 < 2)
    {
      return a2[22] != 0;
    }

LABEL_31:
    if (v10)
    {
      return a2[22] > 0;
    }

    else
    {
      return a2[22] >> 31;
    }
  }

  if (v9 == 3 && !a2[20])
  {
    goto LABEL_25;
  }

  return result;
}

uint64_t ClipperLib::Clipper::AddLocalMinPoly(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  if (*(a3 + 56) && *(a2 + 64) <= *(a3 + 64))
  {
    result = ClipperLib::Clipper::AddOutPt(a1, a3, a4);
    *(v6 + 92) = *(a3 + 92);
    *(v6 + 76) = 2;
    *(a3 + 76) = 1;
    v9 = *(a3 + 128);
    v10 = v6;
    v15 = v9 == v6;
    v6 = a3;
    if (!v15)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  result = ClipperLib::Clipper::AddOutPt(a1, a2, a4);
  *(a3 + 92) = *(v6 + 92);
  *(v6 + 76) = 1;
  *(a3 + 76) = 2;
  v9 = *(v6 + 128);
  v10 = a3;
  if (v9 == a3)
  {
LABEL_4:
    v9 = *(v10 + 128);
  }

LABEL_5:
  if (!v9 || (*(v9 + 92) & 0x80000000) != 0)
  {
    return result;
  }

  v11 = a4[1];
  if (*(v9 + 40) == v11)
  {
    v12 = *(v9 + 32);
    if (*(v6 + 40) != v11)
    {
      goto LABEL_9;
    }

LABEL_19:
    if (v12 != *(v6 + 32))
    {
      return result;
    }

    goto LABEL_20;
  }

  v16 = *(v9 + 64) * (v11 - *(v9 + 8));
  v17 = 0.5;
  if (v16 < 0.0)
  {
    v17 = -0.5;
  }

  v12 = *v9 + (v17 + v16);
  if (*(v6 + 40) == v11)
  {
    goto LABEL_19;
  }

LABEL_9:
  v13 = *(v6 + 64) * (v11 - *(v6 + 8));
  v14 = 0.5;
  if (v13 < 0.0)
  {
    v14 = -0.5;
  }

  if (v12 == *v6 + (v14 + v13))
  {
LABEL_20:
    v18 = result;
    v19 = ClipperLib::SlopesEqual(v6, v9, *(a1 + *(*a1 - 24) + 40));
    result = v18;
    if (v19 && *(v6 + 80))
    {
      if (*(v9 + 80))
      {
        ClipperLib::Clipper::AddOutPt(a1, v9, a4);
        v21 = *(v6 + 32);
        v20 = *(v6 + 40);
        operator new();
      }
    }
  }

  return result;
}

uint64_t ClipperLib::Clipper::AddOutPt(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 92);
  if ((v3 & 0x80000000) != 0)
  {
    operator new();
  }

  v4 = *(*(a1 + 8) + 8 * v3);
  v5 = *(v4 + 24);
  if (*(a2 + 76) == 1)
  {
    if (*a3 != v5[1] || a3[1] != v5[2])
    {
      goto LABEL_15;
    }

    return *(v4 + 24);
  }

  else
  {
    result = v5[4];
    if (*a3 != *(result + 8) || a3[1] != *(result + 16))
    {
LABEL_15:
      operator new();
    }
  }

  return result;
}

uint64_t ClipperLib::Clipper::AddLocalMaxPoly(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = ClipperLib::Clipper::AddOutPt(a1, a2, a4);
  if (*(a3 + 80))
  {
    v9 = *(a2 + 92);
    v10 = *(a3 + 92);
    v11 = v9 < v10;
    if (v9 == v10)
    {
LABEL_3:
      *(a2 + 92) = -1;
      *(a3 + 92) = -1;
      return result;
    }
  }

  else
  {
    result = ClipperLib::Clipper::AddOutPt(a1, a3, a4);
    v12 = *(a2 + 92);
    v13 = *(a3 + 92);
    v11 = v12 < v13;
    if (v12 == v13)
    {
      goto LABEL_3;
    }
  }

  if (v11)
  {
    v14 = a2;
    v15 = a3;
  }

  else
  {
    v14 = a3;
    v15 = a2;
  }

  return ClipperLib::Clipper::AppendPolygon(a1, v14, v15);
}

uint64_t ClipperLib::Clipper::AppendPolygon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = *(v6 + 8 * *(a2 + 92));
  v8 = *(v6 + 8 * *(a3 + 92));
  v9 = v7;
  do
  {
    v9 = *(v9 + 8);
  }

  while (v9 != v8 && v9 != 0);
  result = *(v6 + 8 * *(a3 + 92));
  if (v9 != v8)
  {
    v12 = *(v6 + 8 * *(a3 + 92));
    do
    {
      v12 = *(v12 + 8);
    }

    while (v12 != v7 && v12 != 0);
    result = *(v6 + 8 * *(a2 + 92));
    if (v12 != v7)
    {
      result = ClipperLib::GetLowermostRec(*(v6 + 8 * *(a2 + 92)), *(v6 + 8 * *(a3 + 92)));
    }
  }

  v14 = *(v7 + 24);
  v15 = *(v14 + 32);
  v16 = *(v8 + 24);
  v17 = *(v16 + 32);
  v18 = *(a3 + 76);
  if (*(a2 + 76) == 1)
  {
    if (v18 == 1)
    {
      v19 = *(v8 + 24);
      do
      {
        v20 = *(v19 + 24);
        *(v19 + 24) = vextq_s8(v20, v20, 8uLL);
        v19 = v20.i64[0];
      }

      while (v20.i64[0] != v16);
      *(v16 + 24) = v14;
      *(v14 + 32) = v16;
      *(v15 + 24) = v17;
      *(v17 + 32) = v15;
      *(v7 + 24) = v17;
      *(v7 + 32) = 0;
      v21 = 1;
      if (result != v8)
      {
        goto LABEL_33;
      }
    }

    else
    {
      *(v17 + 24) = v14;
      *(v14 + 32) = v17;
      *(v16 + 32) = v15;
      *(v15 + 24) = v16;
      *(v7 + 24) = v16;
      *(v7 + 32) = 0;
      v21 = 1;
      if (result != v8)
      {
        goto LABEL_33;
      }
    }
  }

  else if (v18 == 2)
  {
    v22 = *(v8 + 24);
    do
    {
      v23 = *(v22 + 24);
      *(v22 + 24) = vextq_s8(v23, v23, 8uLL);
      v22 = v23.i64[0];
    }

    while (v23.i64[0] != v16);
    *(v15 + 24) = v17;
    *(v17 + 32) = v15;
    *(v16 + 24) = v14;
    v21 = 2;
    *(v14 + 32) = v16;
    *(v7 + 32) = 0;
    if (result != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    *(v15 + 24) = v16;
    *(v16 + 32) = v15;
    *(v14 + 32) = v17;
    v21 = 2;
    *(v17 + 24) = v14;
    *(v7 + 32) = 0;
    if (result != v8)
    {
      goto LABEL_33;
    }
  }

  v24 = *(v8 + 8);
  if (v24 != v7)
  {
    *(v7 + 8) = v24;
  }

  *(v7 + 4) = *(v8 + 4);
LABEL_33:
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 8) = v7;
  v25 = *(a2 + 92);
  v26 = *(a3 + 92);
  *(a2 + 92) = -1;
  *(a3 + 92) = -1;
  v27 = *(a1 + 144);
  if (v27)
  {
    while (*(v27 + 92) != v26)
    {
      v27 = *(v27 + 120);
      if (!v27)
      {
        goto LABEL_38;
      }
    }

    *(v27 + 92) = v25;
    *(v27 + 76) = v21;
  }

LABEL_38:
  *v8 = *v7;
  return result;
}

uint64_t ClipperLib::Clipper::AddEdgeToSEL(uint64_t result, uint64_t a2)
{
  v2 = *(result + 152);
  *(a2 + 144) = 0;
  if (v2)
  {
    *(v2 + 144) = a2;
  }

  *(result + 152) = a2;
  *(a2 + 136) = v2;
  return result;
}

__n128 ClipperLib::Clipper::CopyAELToSEL(ClipperLib::Clipper *this)
{
  v1 = *(this + 18);
  *(this + 19) = v1;
  if (v1)
  {
    do
    {
      result = *(v1 + 120);
      *(v1 + 136) = result;
      v1 = result.n128_u64[0];
    }

    while (result.n128_u64[0]);
  }

  return result;
}

void *ClipperLib::Clipper::InsertEdgeIntoAEL(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 144);
  result = (a1 + 144);
  v4 = v5;
  if (!v5)
  {
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *result = a2;
    return result;
  }

  if (a3)
  {
    v6 = *(a3 + 120);
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_31;
  }

  v16 = *(a2 + 16);
  v17 = *(v4 + 16);
  if (v16 != v17)
  {
    if (v16 >= v17)
    {
      goto LABEL_28;
    }

    goto LABEL_36;
  }

  v18 = *(a2 + 40);
  v19 = *(v4 + 40);
  v20 = v18 == v19;
  if (v18 > v19)
  {
    v21 = *(v4 + 64) * (v18 - *(v4 + 8));
    v22 = 0.5;
    if (v21 < 0.0)
    {
      v22 = -0.5;
    }

    if (*(a2 + 32) >= *v4 + (v22 + v21))
    {
      goto LABEL_28;
    }

LABEL_36:
    *(a2 + 120) = v4;
    *(a2 + 128) = 0;
    *(v4 + 128) = a2;
    *result = a2;
    return result;
  }

  v24 = *(v4 + 32);
  if (v20)
  {
    if (v24 <= *(a2 + 32))
    {
      goto LABEL_28;
    }

    goto LABEL_36;
  }

  v25 = *(a2 + 64) * (v19 - *(a2 + 8));
  v26 = 0.5;
  if (v25 < 0.0)
  {
    v26 = -0.5;
  }

  if (v24 > *a2 + (v26 + v25))
  {
    goto LABEL_36;
  }

LABEL_28:
  a3 = v4;
  v6 = *(v4 + 120);
  if (v6)
  {
LABEL_4:
    v7 = *(a2 + 16);
    v8 = a3;
    do
    {
      a3 = v8;
      v8 = v6;
      v9 = *(v6 + 16);
      if (v7 == v9)
      {
        v10 = *(a2 + 40);
        v11 = *(v8 + 40);
        if (v10 <= v11)
        {
          if (v10 == v11)
          {
            if (*(v8 + 32) > *(a2 + 32))
            {
              goto LABEL_32;
            }
          }

          else
          {
            v14 = *(a2 + 64) * (v11 - *(a2 + 8));
            if (v14 >= 0.0)
            {
              v15 = 0.5;
            }

            else
            {
              v15 = -0.5;
            }

            if (*(v8 + 32) > *a2 + (v15 + v14))
            {
              goto LABEL_32;
            }
          }
        }

        else
        {
          v12 = *(v8 + 64) * (v10 - *(v8 + 8));
          if (v12 >= 0.0)
          {
            v13 = 0.5;
          }

          else
          {
            v13 = -0.5;
          }

          if (*(a2 + 32) < *v8 + (v13 + v12))
          {
            goto LABEL_32;
          }
        }
      }

      else if (v7 < v9)
      {
        goto LABEL_32;
      }

      v6 = *(v8 + 120);
    }

    while (v6);
    a3 = v8;
  }

LABEL_31:
  v8 = 0;
LABEL_32:
  *(a2 + 120) = v8;
  result = (a3 + 120);
  v23 = *(a3 + 120);
  if (v23)
  {
    *(v23 + 128) = a2;
  }

  *(a2 + 128) = a3;
  *result = a2;
  return result;
}