uint64_t std::__function::__func<anonymous namespace::LSDefaultApplicationQueryServerStateManager::modify(std::function<anonymous namespace::LSDefaultApplicationQueryState ()(anonymous namespace::LSDefaultApplicationQueryState)> const&)::{lambda(objc_object *,NSError *)#1},std::allocator<anonymous namespace::LSDefaultApplicationQueryServerStateManager::modify(std::function<anonymous namespace::LSDefaultApplicationQueryState ()(anonymous namespace::LSDefaultApplicationQueryState)> const&)::{lambda(objc_object *,NSError *)#1}>,objc_object * ()(objc_object *,NSError *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEF61C98;
  a2[1] = v2;
  return result;
}

id std::__function::__func<anonymous namespace::LSDefaultApplicationQueryServerStateManager::modify(std::function<anonymous namespace::LSDefaultApplicationQueryState ()(anonymous namespace::LSDefaultApplicationQueryState)> const&)::{lambda(objc_object *,NSError *)#1},std::allocator<anonymous namespace::LSDefaultApplicationQueryServerStateManager::modify(std::function<anonymous namespace::LSDefaultApplicationQueryState ()(anonymous namespace::LSDefaultApplicationQueryState)> const&)::{lambda(objc_object *,NSError *)#1}>,objc_object * ()(objc_object *,NSError *)>::operator()(uint64_t a1, id *a2, void **a3)
{
  v42[16] = *MEMORY[0x1E69E9840];
  v4 = *a3;
  v5 = *a2;
  v23 = v5;
  v24 = v4;
  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v32 = v25;
  if (v5)
  {
    v6 = v42[0];
    v32 = v42[0];

    v25 = v6;
  }

  v7 = *(a1 + 8);
  v8 = *(v7 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  (*(*v8 + 48))(&v31);

  v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v31;
  v9 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v9)
  {
    v27 = *v38;
    do
    {
      v29 = v9;
      for (i = 0; i != v29; ++i)
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v13 = [v31 objectForKey:{v11, v23, v24}];
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v15)
        {
          v16 = *v34;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v34 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v33 + 1) + 8 * j);
              v19 = [v14 objectForKey:v18];
              v20 = [v19 plistRepresentation];

              [v12 setObject:v20 forKey:v18];
            }

            v15 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v15);
        }

        [v28 setObject:v12 forKey:v11];
      }

      v9 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v9);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v28;
}

void *anonymous namespace::LSDefaultApplicationQueryState::LSDefaultApplicationQueryState(void *a1, id *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = *a2;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [*a2 objectForKey:{v9, v14}];
        v11 = [v10 mutableCopy];
        [v4 setObject:v11 forKey:v9];
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  *a1 = v4;
  v12 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t std::__function::__value_func<objc_object * ()(objc_object *,NSError *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void ___ZN12_GLOBAL__N_143LSDefaultApplicationQueryServerStateManager12scheduleSaveEv_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = LaunchServices::LSStatePlist::save(*(a1 + 40));
  v2 = _LSDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v1;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "LSDefaultApplicationQueryServerStateManager saved state with error %@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

void sub_18168AA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

uint64_t _LSAliasAdd(void *a1, void *a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (v5 && (v7 = [(_LSDatabase *)v5 store], v6) && v7)
  {
    [(_LSDatabase *)v5 store];
    v8 = *([(_LSDatabase *)v5 schema]+ 1584);
    [v6 length];
    [v6 bytes];
    v9 = CSStoreAllocUnitWithData();
    v10 = v9;
    if (a3 && !v9)
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -9493, 0, "_LSAliasAdd", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSAlias.mm", 27);
      *a3 = v10 = 0;
    }
  }

  else
  {
    if (a3)
    {
      v14 = *MEMORY[0x1E696A278];
      v15[0] = @"invalid input parameters";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v11, "_LSAliasAdd", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSAlias.mm", 31);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t _LSAliasAddNode(void *a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (v5 && (v7 = [(_LSDatabase *)v5 store], v6) && v7)
  {
    v8 = [v6 bookmarkDataRelativeToNode:0 error:a3];
    if (v8)
    {
      v9 = _LSAliasAdd(v5, v8, a3);
    }

    else
    {
      v9 = 4294956486;
    }
  }

  else
  {
    if (a3)
    {
      v13 = *MEMORY[0x1E696A278];
      v14[0] = @"invalid input parameters";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v10, "_LSAliasAddNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSAlias.mm", 54);
    }

    v9 = 4294956486;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t _LSAliasAddURL(void *a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if (v5 && (v7 = -[_LSDatabase store](v5), v6) && v7 && [v6 isFileURL])
  {
    v8 = [[FSNode alloc] initWithURL:v6 flags:0 error:a3];
    if (v8)
    {
      v9 = _LSAliasAddNode(v5, v8, a3);
    }

    else
    {
      v9 = 4294956486;
    }
  }

  else
  {
    if (a3)
    {
      v13 = *MEMORY[0x1E696A278];
      v14[0] = @"invalid input parameters";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v10, "_LSAliasAddURL", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSAlias.mm", 78);
    }

    v9 = 4294956486;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t _LSAliasRemove(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    v5 = [(_LSDatabase *)v3 store];
    v6 = 4294967246;
    if (a2 && v5)
    {
      [(_LSDatabase *)v4 store];
      v7 = *([(_LSDatabase *)v4 schema]+ 1584);
      CSStoreFreeUnit();
      v6 = 0;
    }
  }

  else
  {
    v6 = 4294967246;
  }

  return v6;
}

id _LSAliasGetName(void *a1, int a2)
{
  v2 = _LSAliasGet(a1, a2);
  if (v2)
  {
    v3 = [FSNode nameForBookmarkData:v2 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id _LSAliasGetPath(void *a1, int a2)
{
  v2 = _LSAliasGet(a1, a2);
  if (v2)
  {
    v3 = [FSNode pathForBookmarkData:v2 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void _LSAliasGetVisualizationFunctions(id (**a1)(void **this, LSContext *a2, int a3)@<X8>)
{
  *a1 = LaunchServices::Aliases::getSummary;
  a1[1] = LaunchServices::Aliases::display;
  a1[2] = LaunchServices::Aliases::copyBindingForVisualization;
}

BOOL LaunchServices::Aliases::display(void **this, LSContext *a2, int a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v7 = a4;
  v8 = _LSAliasGet(*this, a3);
  if (v8)
  {
    v9 = [FSNode pathForBookmarkData:v8 error:0];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v9 isDirectory:0];
      v11 = [v7 linkURL:v10 linkedText:v9];
      [v7 write:@"path" string:v11];

      [v7 writeSeparator];
    }

    v18 = 0;
    if ([v8 length] >= 5 && (objc_msgSend(v8, "getBytes:length:", &v18, 4), v12 = v18, v18 = bswap32(v18), v12 == 1802465122) && (v13 = MEMORY[0x1865D5C20](v8)) != 0)
    {
      v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v13];
      v15 = [v14 length];
      [v14 addAttribute:*MEMORY[0x1E69991B8] value:MEMORY[0x1E695E118] range:{0, v15}];
      [v7 writeAttributedString:v14];
    }

    else
    {
      [(_LSDatabase *)*this store];
      v16 = *([(_LSDatabase *)*this schema]+ 1584);
      v13 = _CSStoreCopyDebugDescriptionOfUnit();
      [v7 writeAttributedString:v13];
    }
  }

  return v8 != 0;
}

void sub_18168BB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18168C6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::destroy(&a11, a12);
  }

  _Unwind_Resume(a1);
}

void LaunchServices::EligibilityPredicateEvaluation::Predicate::parse_dictionary(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v67[1] = *MEMORY[0x1E69E9840];
  v37 = a1;
  if ((_NSIsNSDictionary() & 1) == 0)
  {
    if (a2)
    {
      v66 = *MEMORY[0x1E696A278];
      v67[0] = @"Predicate was not a dictionary";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:&v66 count:1];
      *a2 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v7, "parse_dictionary", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSEligibilityPredicateEvaluator.mm", 86);
    }

    goto LABEL_46;
  }

  v4 = objc_opt_class();
  v5 = [v37 objectForKey:@"Conditions"];
  v6 = v5;
  if (v4 && v5)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_44;
    }
  }

  else if (!v5)
  {
LABEL_44:
    if (a2)
    {
      v64 = *MEMORY[0x1E696A278];
      v65 = @"Predicate key Conditions was not a dictionary";
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      *a2 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 79, v29, "parse_dictionary", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSEligibilityPredicateEvaluator.mm", 92);
    }

LABEL_46:
    *a3 = 0;
    *(a3 + 24) = 0;
    goto LABEL_58;
  }

  v58 = 0;
  v59 = 0;
  v57 = &v58;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
  if (v8)
  {
    v38 = v8;
    v39 = *v54;
    v9 = 1;
    v10 = a3;
    while (2)
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v54 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v53 + 1) + 8 * i);
        if ((_NSIsNSString() & 1) == 0)
        {
          goto LABEL_51;
        }

        v52 = [v11 longLongValue];
        v12 = [obj objectForKey:v11];
        if ((_NSIsNSArray() & 1) == 0)
        {

LABEL_51:
LABEL_52:
          if (a2)
          {
            v60 = *MEMORY[0x1E696A278];
            v61 = @"Predicate conditions was not a stringifiedNumber->[number] map";
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
            *a2 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 79, v33, "parse_dictionary", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSEligibilityPredicateEvaluator.mm", 122);
          }

          *a3 = 0;
          *(a3 + 24) = 0;
          goto LABEL_57;
        }

        __src = 0;
        v50 = 0;
        v51 = 0;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v45 objects:v62 count:16];
        if (v14)
        {
          v35 = v9;
          v15 = *v46;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v46 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = *(*(&v45 + 1) + 8 * j);
              if ((_NSIsNSNumber() & 1) == 0)
              {
                v9 = 0;
                goto LABEL_38;
              }

              v18 = [v17 unsignedLongLongValue];
              v19 = v50;
              if (v50 >= v51)
              {
                v21 = __src;
                v22 = v50 - __src;
                v23 = (v50 - __src) >> 3;
                v24 = v23 + 1;
                if ((v23 + 1) >> 61)
                {
                  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
                }

                v25 = v51 - __src;
                if ((v51 - __src) >> 2 > v24)
                {
                  v24 = v25 >> 2;
                }

                v26 = v25 >= 0x7FFFFFFFFFFFFFF8;
                v27 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v26)
                {
                  v27 = v24;
                }

                if (v27)
                {
                  std::allocator<os_eligibility_answer_t>::allocate_at_least[abi:nn200100](&__src, v27);
                }

                *(8 * v23) = v18;
                v20 = 8 * v23 + 8;
                memcpy(0, v21, v22);
                v28 = __src;
                __src = 0;
                v50 = v20;
                v51 = 0;
                if (v28)
                {
                  operator delete(v28);
                }

                a3 = v10;
              }

              else
              {
                *v50 = v18;
                v20 = (v19 + 8);
              }

              v50 = v20;
            }

            v14 = [v13 countByEnumeratingWithState:&v45 objects:v62 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }

          v9 = v35;
        }

LABEL_38:

        std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::__emplace_unique_key_args<os_eligibility_domain_t,os_eligibility_domain_t&,std::vector<os_eligibility_answer_t>>(&v57, &v52);
        if (__src)
        {
          v50 = __src;
          operator delete(__src);
        }
      }

      v38 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
      if (v38)
      {
        continue;
      }

      break;
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v31 = v57;
  v30 = v58;
  v32 = v59;
  v43 = v58;
  v44 = v59;
  if (v59)
  {
    v57 = &v58;
    v58 = 0;
    v59 = 0;
    v42 = &v43;
    v43 = 0;
    v44 = 0;
    *(a3 + 8) = v30;
    v30[2] = a3 + 8;
    v50 = 0;
    v51 = 0;
    v30 = 0;
  }

  else
  {
    v42 = &v43;
    v50 = v58;
    v51 = 0;
    *(a3 + 8) = v58;
    v31 = (a3 + 8);
  }

  __src = &v50;
  *(a3 + 16) = v32;
  *a3 = v31;
  *(a3 + 24) = 1;
  std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::destroy(&__src, v30);
  std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::destroy(&v42, v43);
LABEL_57:
  std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::destroy(&v57, v58);

LABEL_58:
  v34 = *MEMORY[0x1E69E9840];
}

void sub_18168CC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, void *a42)
{
  std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::destroy(&a41, a42);

  _Unwind_Resume(a1);
}

uint64_t LaunchServices::DelayedInitable<LaunchServices::EligibilityPredicateEvaluation::Predicate>::emplace<LaunchServices::EligibilityPredicateEvaluation::Predicate>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void LaunchServices::DelayedInitable<LaunchServices::Predicate>::emplace(Args &&...) [T = LaunchServices::Predicate, Args = <LaunchServices::Predicate>]"}];
    [v5 handleFailureInFunction:v6 file:@"LSObjCPlusPlusHelpers.hpp" lineNumber:34 description:@"can't re-emplace a DelayedInitable"];
  }

  return std::optional<LaunchServices::EligibilityPredicateEvaluation::Predicate>::emplace[abi:nn200100]<LaunchServices::EligibilityPredicateEvaluation::Predicate,void>(a1, a2);
}

uint64_t LaunchServices::EligibilityPredicateEvaluation::Predicate::evaluate(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = *a1;
  v6 = a1 + 1;
  v7 = v8;
  if (v8 == v6)
  {
LABEL_14:
    v17 = 1;
    v18 = 1;
  }

  else
  {
    while (1)
    {
      v9 = [v5 eligibilityForDomain:v7[4] error:a3];
      v10 = v9;
      if (!v9)
      {
        v18 = 0;
        goto LABEL_17;
      }

      v11 = v7[5];
      v12 = v7[6];
      v13 = [v9 unsignedLongLongValue];
      if (v11 != v12)
      {
        while (*v11 != v13)
        {
          if (++v11 == v12)
          {
            v11 = v12;
            break;
          }
        }
      }

      if (v11 == v7[6])
      {
        break;
      }

      v14 = v7[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v7[2];
          v16 = *v15 == v7;
          v7 = v15;
        }

        while (!v16);
      }

      v7 = v15;
      if (v15 == v6)
      {
        goto LABEL_14;
      }
    }

    v18 = 1;
LABEL_17:

    v17 = 0;
  }

  return v17 | (v18 << 8);
}

void sub_18168D05C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LaunchServices::EligibilityPredicateEvaluation::Predicate::to_string@<X0>(LaunchServices::EligibilityPredicateEvaluation::Predicate *this@<X0>, _BYTE *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:nn200100](&v19);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v19, "EligibilityPredicate {", 22);
  v6 = *this;
  v4 = this + 8;
  v5 = v6;
  if (v6 != v4)
  {
    v7 = 1;
    do
    {
      if ((v7 & 1) == 0)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v19, ", ", 2);
      }

      MEMORY[0x1865D61A0](&v19, *(v5 + 4));
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v19, ": [", 3);
      v8 = *(v5 + 5);
      v9 = *(v5 + 6);
      if (v8 != v9)
      {
        v10 = 1;
        do
        {
          v11 = *v8;
          if ((v10 & 1) == 0)
          {
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v19, ", ", 2);
          }

          MEMORY[0x1865D61A0](&v19, v11);
          v10 = 0;
          ++v8;
        }

        while (v8 != v9);
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v19, "]", 1);
      v12 = *(v5 + 1);
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
          v13 = *(v5 + 2);
          v14 = *v13 == v5;
          v5 = v13;
        }

        while (!v14);
      }

      v7 = 0;
      v5 = v13;
    }

    while (v13 != v4);
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v19, "}", 1);
  if ((v26 & 0x10) != 0)
  {
    v16 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v16 = v22;
    }

    locale = v21[4].__locale_;
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v15 = 0;
      a2[23] = 0;
      goto LABEL_29;
    }

    locale = v21[1].__locale_;
    v16 = v21[3].__locale_;
  }

  v15 = v16 - locale;
  if ((v16 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a2[23] = v15;
  if (v15)
  {
    memmove(a2, locale, v15);
  }

LABEL_29:
  a2[v15] = 0;
  v19 = *MEMORY[0x1E69E54E8];
  *(&v19 + *(v19 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v20 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  v20 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v21);
  std::ostream::~ostream();
  return MEMORY[0x1865D6220](&v27);
}

void sub_18168D38C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  std::ostringstream::~ostringstream(va, MEMORY[0x1E69E54E8]);
  MEMORY[0x1865D6220](va1);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::__emplace_unique_key_args<os_eligibility_domain_t,os_eligibility_domain_t&,std::vector<os_eligibility_answer_t>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t std::optional<LaunchServices::EligibilityPredicateEvaluation::Predicate>::emplace[abi:nn200100]<LaunchServices::EligibilityPredicateEvaluation::Predicate,void>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    std::__tree<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,std::vector<os_eligibility_answer_t>>>>::destroy(a1, *(a1 + 8));
  }

  *a1 = *a2;
  v4 = a2 + 1;
  v5 = a2[1];
  *(a1 + 8) = v5;
  v6 = a1 + 8;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *a2 = v4;
    *v4 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v6;
  }

  *(a1 + 24) = 1;
  return a1;
}

void sub_18168DFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

void LaunchServices::Database::Context::~Context(LaunchServices::Database::Context *this)
{
  v2 = *this;
  if (v2 && *(this + 16) == 1)
  {
    _LSContextDestroy(v2);
  }

  v3 = *(this + 1);
  *this = 0;
  *(this + 1) = 0;

  *(this + 16) = 0;
  v4 = *(this + 3);
  *(this + 3) = 0;
}

void sub_18168E910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void **a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, char a53)
{
  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::~__hash_table(&a35);

  a35 = &a50;
  std::vector<std::pair<unsigned int,NSUUID * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&a35);

  LaunchServices::Database::Context::~Context(&a53);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<unsigned int,NSUUID * {__strong}>>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::pair<unsigned int,NSUUID * {__strong}>>::__emplace_back_slow_path<std::pair<unsigned int,NSUUID * {__strong}>>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 8);
    *(a2 + 8) = 0;
    *(v3 + 8) = v4;
    result = v3 + 16;
  }

  a1[1] = result;
  return result;
}

void sub_18168F52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<unsigned int,NSUUID * {__strong}>>::__emplace_back_slow_path<std::pair<unsigned int,NSUUID * {__strong}>>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  v6 = v5 + 1;
  if ((v5 + 1) >> 60)
  {
    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 3 > v6)
  {
    v6 = v8 >> 3;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v6 = 0xFFFFFFFFFFFFFFFLL;
  }

  v18 = a1;
  if (v6)
  {
    std::allocator<std::pair<unsigned int,NSUUID * {__strong}>>::allocate_at_least[abi:nn200100](a1, v6);
  }

  v9 = 16 * v5;
  v15 = 0;
  v16 = v9;
  *v9 = *a2;
  v10 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(v9 + 8) = v10;
  v17 = (16 * v5 + 16);
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::pair<unsigned int,NSUUID * {__strong}>>,std::pair<unsigned int,NSUUID * {__strong}>*>(a1, v3, v4, 0);
  v11 = *a1;
  *a1 = 0;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<std::pair<unsigned int,NSUUID * {__strong}>>::~__split_buffer(&v15);
  return v14;
}

void sub_18168FA34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<unsigned int,NSUUID * {__strong}>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<std::pair<unsigned int,NSUUID * {__strong}>>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::pair<unsigned int,NSUUID * {__strong}>>,std::pair<unsigned int,NSUUID * {__strong}>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(v6 + 8) = 0;
      *(a4 + 8) = v7;
      v6 += 16;
      a4 += 16;
    }

    while (v6 != a3);
    while (v5 != a3)
    {

      v5 += 16;
    }
  }
}

uint64_t std::__split_buffer<std::pair<unsigned int,NSUUID * {__strong}>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::pair<unsigned int,NSUUID * {__strong}>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 2;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,LSApplicationRecord * {__strong}>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_18168FE30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_181690430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  LaunchServices::Database::Context::~Context(&a17);

  _Unwind_Resume(a1);
}

void sub_181690DA8(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

Class initUMUserPersonaAttributes(void)
{
  if (!UserManagementLibrary(void)::frameworkLibrary)
  {
    UserManagementLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 2);
  }

  result = objc_getClass("UMUserPersonaAttributes");
  classUMUserPersonaAttributes = result;
  getUMUserPersonaAttributesClass = UMUserPersonaAttributesFunction;
  return result;
}

{
  if (!UserManagementLibrary(void)::frameworkLibrary)
  {
    UserManagementLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 2);
  }

  result = objc_getClass("UMUserPersonaAttributes");
  classUMUserPersonaAttributes = result;
  getUMUserPersonaAttributesClass = UMUserPersonaAttributesFunction;
  return result;
}

id UMUserPersonaAttributesFunction(void)
{
  return classUMUserPersonaAttributes;
}

{
  return classUMUserPersonaAttributes;
}

void _LSAppsAnalyticsStartListening()
{
  _LSAssertRunningInServer("void _LSAppsAnalyticsStartListening()");
  if ([__LSDefaultsGetSharedInstance() isUserServer] && (objc_msgSend(__LSDefaultsGetSharedInstance(), "isLightweightSystemServer") & 1) == 0 && (CoreAnalyticsLibrary(void)::frameworkLibrary || (CoreAnalyticsLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/CoreAnalytics.framework/CoreAnalytics", 2)) != 0))
  {
    xdict = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(xdict, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
    v1 = CFPreferencesCopyValue(@"LSDefaultAppsReportingInterval", *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    if (v1 && _NSIsNSNumber())
    {
      v2 = [v1 unsignedLongLongValue];
      v3 = *MEMORY[0x1E69E9CB0];
    }

    else
    {
      v3 = *MEMORY[0x1E69E9CB0];
      v2 = *MEMORY[0x1E69E9CF0];
    }

    xpc_dictionary_set_int64(xdict, v3, v2);
    xpc_activity_register("com.apple.launchservices.systemapps.analytics", xdict, &__block_literal_global_3);
  }

  else
  {
    v0 = _LSDefaultLog();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v0, OS_LOG_TYPE_DEFAULT, "CoreAnalytics library is not available.", buf, 2u);
    }
  }
}

void _LSNoteSystemAppInstallOrUninstall(uint64_t a1, unsigned int a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.LaunchServices.systemAppRemoval.%@", a1];
  softLinkADClientAddValueForScalarKey(v3, a2);
}

BOOL ___ZN14LaunchServices13AppsAnalyticsL14handleActivityEPU24objcproto13OS_xpc_object8NSObject_block_invoke(uint64_t a1)
{
  v83 = *MEMORY[0x1E69E9840];
  v1 = _LSDefaultLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v1, OS_LOG_TYPE_DEFAULT, "Capturing default apps analytics.", buf, 2u);
  }

  v2 = _LSDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "Fetching current apps analytics state", buf, 2u);
  }

  v79 = 0;
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v3 = +[_LSDServiceDomain defaultServiceDomain];
  v4 = LaunchServices::Database::Context::_get(&v76, v3, 0);

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = LaunchServices::AppsAnalytics::getBundleIdentifierToHandleURLScheme(v4, @"https", v6);
    if (v7)
    {
      [v5 setObject:v7 forKeyedSubscript:{@"webbrowser", v7}];
    }

    else
    {
      v13 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.mobilesafari" allowPlaceholder:0 error:0, 0];
      if (v13)
      {
        [@"com.apple.mobilesafari" stringByAppendingString:@" - restricted"];
      }

      else
      {
        [@"com.apple.mobilesafari" stringByAppendingString:@" - deleted"];
      }
      v14 = ;
      [v5 setObject:v14 forKeyedSubscript:@"webbrowser"];
    }

    v15 = LaunchServices::AppsAnalytics::getBundleIdentifierToHandleURLScheme(v4, @"mailto", v8);
    v58 = v15;
    if (v15)
    {
      [v5 setObject:v15 forKeyedSubscript:@"mailclient"];
    }

    else
    {
      v16 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.mobilemail" allowPlaceholder:0 error:0];
      if (v16)
      {
        [@"com.apple.mobilemail" stringByAppendingString:@" - restricted"];
      }

      else
      {
        [@"com.apple.mobilemail" stringByAppendingString:@" - deleted"];
      }
      v17 = ;
      [v5 setObject:v17 forKeyedSubscript:@"mailclient"];
    }

    (softLinkAnalyticsSendEvent[0])(@"com.apple.LaunchServices.DefaultApps", v5);
    v61 = objc_alloc_init(MEMORY[0x1E695DF90]);

    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = ___ZN14LaunchServices13AppsAnalyticsL16sendCurrentStateEv_block_invoke;
    v75[3] = &__block_descriptor_40_e111_v24__0r__LSDefaultAppCategoryInfo_Q____CFString_____CFString_Q____LSDefaultAppCategorySubordinateClaim_QB_8_B16l;
    v75[4] = v4;
    LSEnumerateDefaultAppCategories(v75);
    *buf = 0;
    v18 = [LSMarketplacesPreferences currentPreferencesWithError:buf];
    v19 = *buf;
    if (v18)
    {
      v20 = [v18 preferredMarketplaces];
      v21 = [v20 firstObject];

      if (v21)
      {
        if ([v21 hasPrefix:@"com.apple."])
        {
          v22 = &unk_1EEF8E918;
        }

        else
        {
          v22 = &unk_1EEF8E930;
        }
      }

      else
      {
        v22 = &unk_1EEF8E960;
      }
    }

    else
    {
      v22 = &unk_1EEF8E948;
    }

    v80[0] = @"DefaultAppCategorization";
    v81[0] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:1];
    (softLinkAnalyticsSendEvent[0])(@"com.apple.LaunchServices.DefaultAppCategory.Marketplace", v23);

    v62 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v24 = [LSApplicationRecord enumeratorWithOptions:0];
    v25 = [v24 countByEnumeratingWithState:&v71 objects:buf count:16];
    if (v25)
    {
      v26 = *v72;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v72 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = [*(*(&v71 + 1) + 8 * i) bundleIdentifier];
          [v62 addObject:v28];
        }

        v25 = [v24 countByEnumeratingWithState:&v71 objects:buf count:16];
      }

      while (v25);
    }

    v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v30 = [LSApplicationRecord enumeratorWithOptions:64];
    v31 = [v30 countByEnumeratingWithState:&v67 objects:v81 count:16];
    if (v31)
    {
      v32 = *v68;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v68 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v34 = *(*(&v67 + 1) + 8 * j);
          v35 = [v34 bundleIdentifier];
          [v29 setObject:v34 forKeyedSubscript:v35];
        }

        v31 = [v30 countByEnumeratingWithState:&v67 objects:v81 count:16];
      }

      while (v31);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = +[LSApplicationRecord systemPlaceholderEnumerator];
    v36 = [obj countByEnumeratingWithState:&v63 objects:v80 count:16];
    if (v36)
    {
      v37 = *v64;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v64 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v63 + 1) + 8 * k);
          v40 = [MEMORY[0x1E696AD98] numberWithInt:2];
          v41 = [v39 bundleIdentifier];
          if ([v62 containsObject:v41])
          {
            v42 = 1;
          }

          else
          {
            v43 = [v29 objectForKeyedSubscript:v41];
            v44 = v43 == 0;

            if (v44)
            {
              goto LABEL_54;
            }

            v45 = [v29 objectForKeyedSubscript:v41];
            v46 = [v45 applicationState];
            v47 = [v46 installType];

            if ((v47 - 7) >= 3)
            {
              goto LABEL_54;
            }

            v42 = dword_1817E8AD0[v47 - 7];
          }

          v48 = [MEMORY[0x1E696AD98] numberWithInt:v42];

          v40 = v48;
LABEL_54:
          v49 = [v41 componentsSeparatedByString:@"."];
          v50 = [v49 lastObject];
          v51 = [v50 isEqualToString:@"watchkitapp"];

          if (v51)
          {
            [v49 objectAtIndex:{objc_msgSend(v49, "count") - 2}];
          }

          else
          {
            [v49 lastObject];
          }
          v52 = ;
          [v61 setObject:v40 forKeyedSubscript:v52];
        }

        v36 = [obj countByEnumeratingWithState:&v63 objects:v80 count:16];
      }

      while (v36);
    }

    (softLinkAnalyticsSendEvent[0])(@"com.apple.LaunchServices.SystemApplicationInstallStatusV2", v61);
    v9 = v61;
  }

  else
  {
    v9 = _LSDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = +[_LSDServiceDomain defaultServiceDomain];
      v11 = LaunchServices::Database::Context::_get(&v76, v10, 0);

      if (v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = v79;
      }

      *buf = 138412290;
      *&buf[4] = v12;
      _os_log_error_impl(&dword_18162D000, v9, OS_LOG_TYPE_ERROR, "Error getting LS database during analytics: %@", buf, 0xCu);
    }
  }

  if (v76 && v78 == 1)
  {
    _LSContextDestroy(v76);
  }

  v53 = v77;
  v76 = 0;
  v77 = 0;

  v78 = 0;
  v54 = v79;
  v79 = 0;

  result = xpc_activity_set_state(*(a1 + 32), 5);
  v56 = *MEMORY[0x1E69E9840];
  return result;
}

id LaunchServices::AppsAnalytics::getBundleIdentifierToHandleURLScheme(void **this, LSContext *a2, NSString *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0u;
  v16 = 0u;
  if (_LSGetBindingForNodeOrSchemeOrUTI(this, 0, v4, 0, 0, 14, 0, 0, &v12))
  {
    v5 = 1;
  }

  else
  {
    v5 = v13 == 0;
  }

  if (v5)
  {
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_INFO, "No default app found for scheme %@, not including in analytics.", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v7 = *this;
    v8 = *(v13 + 12);
    [(_LSDatabase *)v7 store];
    v9 = _CSStringCopyCFString();
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void ___ZN14LaunchServices13AppsAnalyticsL16sendCurrentStateEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = (a2 + 8);
  LaunchServices::BindingEvaluator::CreateWithUTI(*(a2 + 8), 0, v20);
  LaunchServices::BindingEvaluator::getBestBinding(v20);
  v5 = 0;
  v6 = v5;
  if (v19 == 1)
  {
    if (v16 && (*(v16 + 164) & 1) != 0)
    {
      v7 = &unk_1EEF8E918;
    }

    else
    {
      v7 = &unk_1EEF8E930;
    }

    goto LABEL_13;
  }

  v8 = [v5 domain];
  if ([v8 isEqual:*MEMORY[0x1E696A768]])
  {
    v9 = [v6 code] == -10814;

    if (v9)
    {
      v7 = &unk_1EEF8E960;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v10 = _LSDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    ___ZN14LaunchServices13AppsAnalyticsL16sendCurrentStateEv_block_invoke_cold_1(v4, v6, v10);
  }

  v7 = &unk_1EEF8E948;
LABEL_13:
  if (v19 == 1)
  {
  }

  v11 = *(a2 + 16);
  v14 = @"DefaultAppCategorization";
  v15 = v7;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  (softLinkAnalyticsSendEvent[0])(v11, v12);

  LaunchServices::BindingEvaluator::~BindingEvaluator(v20);
  v13 = *MEMORY[0x1E69E9840];
}

void sub_181693260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, char a12, ...)
{
  va_start(va, a12);
  if (a12 == 1)
  {
  }

  LaunchServices::BindingEvaluator::~BindingEvaluator(va);
  _Unwind_Resume(a1);
}

void initAnalyticsSendEvent(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2;
  v4 = CoreAnalyticsLibrary(void)::frameworkLibrary;
  if (!CoreAnalyticsLibrary(void)::frameworkLibrary)
  {
    v4 = dlopen("/System/Library/PrivateFrameworks/CoreAnalytics.framework/CoreAnalytics", 2);
    CoreAnalyticsLibrary(void)::frameworkLibrary = v4;
  }

  v5 = dlsym(v4, "AnalyticsSendEvent");
  softLinkAnalyticsSendEvent[0] = v5;
  if (v5)
  {
    (v5)(v6, v3);
  }
}

{
  v6 = a1;
  v3 = a2;
  v4 = qword_1ED445300;
  if (!qword_1ED445300)
  {
    v4 = dlopen("/System/Library/PrivateFrameworks/CoreAnalytics.framework/CoreAnalytics", 2);
    qword_1ED445300 = v4;
  }

  v5 = dlsym(v4, "AnalyticsSendEvent");
  softLinkAnalyticsSendEvent = v5;
  if (v5)
  {
    (v5)(v6, v3);
  }
}

uint64_t initADClientAddValueForScalarKey(const __CFString *a1, uint64_t a2)
{
  v4 = AggregateDictionaryLibrary(void)::frameworkLibrary;
  if (!AggregateDictionaryLibrary(void)::frameworkLibrary)
  {
    v4 = dlopen("/System/Library/PrivateFrameworks/AggregateDictionary.framework/AggregateDictionary", 2);
    AggregateDictionaryLibrary(void)::frameworkLibrary = v4;
  }

  v5 = dlsym(v4, "ADClientAddValueForScalarKey");
  softLinkADClientAddValueForScalarKey = v5;

  return v5(a1, a2);
}

void sub_181693858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_181693EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

id init_ISPrimaryIconDataForApplicationProxy(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = IconServicesLibrary_frameworkLibrary;
  if (!IconServicesLibrary_frameworkLibrary)
  {
    v6 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
    IconServicesLibrary_frameworkLibrary = v6;
  }

  softLink_ISPrimaryIconDataForApplicationProxy[0] = dlsym(v6, "_ISPrimaryIconDataForApplicationProxy");
  v7 = (softLink_ISPrimaryIconDataForApplicationProxy[0])(v5, a2, a3);

  return v7;
}

id init_ISIconDataForResourceProxy(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = IconServicesLibrary_frameworkLibrary;
  if (!IconServicesLibrary_frameworkLibrary)
  {
    v6 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
    IconServicesLibrary_frameworkLibrary = v6;
  }

  softLink_ISIconDataForResourceProxy[0] = dlsym(v6, "_ISIconDataForResourceProxy");
  v7 = (softLink_ISIconDataForResourceProxy[0])(v5, a2, a3);

  return v7;
}

{
  v5 = a1;
  v6 = IconServicesLibrary(void)::frameworkLibrary;
  if (!IconServicesLibrary(void)::frameworkLibrary)
  {
    v6 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
    IconServicesLibrary(void)::frameworkLibrary = v6;
  }

  softLink_ISIconDataForResourceProxy[0] = dlsym(v6, "_ISIconDataForResourceProxy");
  v7 = (softLink_ISIconDataForResourceProxy[0])(v5, a2, a3);

  return v7;
}

id LaunchServices::AppRecordEnumeration::VolumeContainerResolutionAdapter::resolve(LaunchServices::AppRecordEnumeration::VolumeContainerResolutionAdapter *this, LSContext *a2)
{
  v5[0] = a2;
  v5[1] = this;
  if (*(this + 2) == -1)
  {
    v4 = std::__throw_bad_variant_access[abi:nn200100]();
    return __60___LSApplicationRecordEnumerator__prepareWithContext_error___block_invoke(v4);
  }

  else
  {
    v2 = _ZNSt3__116__variant_detail12__visitation9__variant13__visit_valueB8nn200100IZN14LaunchServices20AppRecordEnumeration32VolumeContainerResolutionAdapter7resolveEP9LSContextEUlRKT_E_JRNS_7variantIJjU8__strongP5NSURLU8__strongP7NSErrorEEEEEEDcOS9_DpOT0_(v5, this);

    return v2;
  }
}

BOOL LaunchServices::AppRecordEnumeration::evaluateBundleNoIOCommon(LaunchServices::AppRecordEnumeration *this, LSContext *a2, char a3, const LSBundleData *a4)
{
  if ((a3 & 1) == 0)
  {
    return 1;
  }

  if (a2 && (BYTE4(a2[20].db) & 1) != 0)
  {
    return 1;
  }

  v6 = _LSEnumeratorLog;
  result = os_log_type_enabled(_LSEnumeratorLog, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    LaunchServices::AppRecordEnumeration::evaluateBundleNoIOCommon(this, v6, v7, v8, v9, v10, v11, v12);
    return 0;
  }

  return result;
}

void LaunchServices::AppRecordEnumeration::findAppByIdentifierForEnumerator(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = ___ZN14LaunchServices20AppRecordEnumerationL32findAppByIdentifierForEnumeratorEP9LSContextP8NSStringj13LSBundleClassjyS4_U13block_pointerFbS2_jPK12LSBundleDataEPjPS8__block_invoke;
  v22[3] = &unk_1E6A19018;
  v23 = a3;
  v22[4] = a2;
  v22[5] = a5;
  v22[6] = a6;
  v22[7] = a1;
  v12 = MEMORY[0x1865D71B0](v22);
  v13 = v12;
  if ((a4 & 0xC0) == 0x40)
  {
    v14 = 0;
  }

  else
  {
    v14 = (*(v12 + 16))(v12, 128, a7, a8);
  }

  if ((a4 & 0x40) != 0 && (v14 & 1) == 0)
  {
    v14 = v13[2](v13, 1152, a7, a8);
  }

  if ((v14 & 1) == 0)
  {
    v15 = _LSEnumeratorLog;
    if (os_log_type_enabled(_LSEnumeratorLog, OS_LOG_TYPE_DEBUG))
    {
      LaunchServices::AppRecordEnumeration::findAppByIdentifierForEnumerator(a2, v15, v16, v17, v18, v19, v20, v21);
    }
  }
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned int,NSURL * {__strong},NSError * {__strong}>>::__assign_alt[abi:nn200100]<1ul,NSURL * {__strong},NSURL * const {__strong}&>(uint64_t a1, id *location, id *a3)
{
  if (*(a1 + 8) == 1)
  {
    objc_storeStrong(location, *a3);
  }

  else
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned int,NSURL * {__strong},NSError * {__strong}>>::__emplace[abi:nn200100]<1ul,NSURL * const {__strong}&>(a1, a3);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned int,NSURL * {__strong},NSError * {__strong}>>::__emplace[abi:nn200100]<1ul,NSURL * const {__strong}&>(uint64_t a1, id *a2)
{
  v4 = *(a1 + 8);
  if (v4 != -1)
  {
    (off_1EEF61DE0[v4])(&v6, a1);
  }

  *(a1 + 8) = -1;
  *a1 = *a2;
  *(a1 + 8) = 1;
  return a1;
}

id _ZNSt3__116__variant_detail12__visitation9__variant13__visit_valueB8nn200100IZN14LaunchServices20AppRecordEnumeration32VolumeContainerResolutionAdapter7resolveEP9LSContextEUlRKT_E_JRNS_7variantIJjU8__strongP5NSURLU8__strongP7NSErrorEEEEEEDcOS9_DpOT0_(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v2 = *(a2 + 8);
  if (v2 == -1)
  {
    v2 = -1;
  }

  v3 = (off_1EEF61DF8[v2])(&v5);

  return v3;
}

uint64_t _ZNKSt3__116__variant_detail12__visitation9__variant15__value_visitorIZN14LaunchServices20AppRecordEnumeration32VolumeContainerResolutionAdapter7resolveEP9LSContextEUlRKT_E_EclB8nn200100IJRNS0_5__altILm1EU8__strongP5NSURLEEEEEDcDpOT_(uint64_t a1)
{
  v1 = *(*a1 + 8);
  v2 = v1[2];
  if (v2 == -1)
  {
    goto LABEL_5;
  }

  if (v2)
  {
    (off_1EEF61DE0[v2])(&v4, v1);
LABEL_5:
    *v1 = 0;
    v1[2] = 0;
    return 0;
  }

  *v1 = 0;
  return 0;
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned int,NSURL * {__strong},NSError * {__strong}>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<unsigned int,NSURL * {__strong},NSError * {__strong}>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = *(a2 + 8);
  if (v3 == -1)
  {
    if (v4 == -1)
    {
      return result;
    }
  }

  else if (v4 == -1)
  {
    result = (off_1EEF61DE0[v3])(&v6, result, a2);
    *(v2 + 8) = -1;
    return result;
  }

  v5 = result;
  return (off_1EEF61E10[v4])(&v5, result, a2);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8nn200100IOZNS0_12__assignmentINS0_8__traitsIJjU8__strongP5NSURLU8__strongP7NSErrorEEEE16__generic_assignB8nn200100IRKNS0_17__copy_assignmentISE_LNS0_6_TraitE1EEEEEvOT_EUlRSM_OT0_E_JRNS0_6__baseILSI_1EJjSA_SD_EEERKSU_EEEDcSM_DpT0_(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v4 = *result;
  v5 = *(*result + 8);
  if (v5 != -1)
  {
    if (!v5)
    {
      *a2 = *a3;
      return result;
    }

    result = (off_1EEF61DE0[v5])(&v6, v4);
  }

  v4[2] = -1;
  *v4 = *a3;
  v4[2] = 0;
  return result;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned int,NSURL * {__strong},NSError * {__strong}>>::__assign_alt[abi:nn200100]<2ul,NSError * {__strong},NSError * const {__strong}&>(uint64_t a1, id *location, id *a3)
{
  if (*(a1 + 8) == 2)
  {
    objc_storeStrong(location, *a3);
  }

  else
  {
    std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned int,NSURL * {__strong},NSError * {__strong}>>::__emplace[abi:nn200100]<2ul,NSError * const {__strong}&>(a1, a3);
  }
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<unsigned int,NSURL * {__strong},NSError * {__strong}>>::__emplace[abi:nn200100]<2ul,NSError * const {__strong}&>(uint64_t a1, id *a2)
{
  v4 = *(a1 + 8);
  if (v4 != -1)
  {
    (off_1EEF61DE0[v4])(&v6, a1);
  }

  *(a1 + 8) = -1;
  *a1 = *a2;
  *(a1 + 8) = 2;
  return a1;
}

uint64_t ___ZN14LaunchServices20AppRecordEnumerationL32findAppByIdentifierForEnumeratorEP9LSContextP8NSStringj13LSBundleClassjyS4_U13block_pointerFbS2_jPK12LSBundleDataEPjPS8__block_invoke(uint64_t a1, int a2, _DWORD *a3, void *a4)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  result = _LSBundleFindWithInfoAndNo_IOFilter(*(a1 + 56), 0, *(a1 + 32), 0, v6, *(a1 + 64), a2, *(a1 + 40), *(a1 + 48), a3, a4, 0);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18169A200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__132(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18169A768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

void sub_18169AC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose((v29 - 160), 8);

  _Block_object_dispose(&a23, 8);
  LaunchServices::Database::Context::~Context(&a27);

  _Unwind_Resume(a1);
}

void sub_18169B25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_18169B654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_18169B870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_18169C138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_18169C4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_18169D1C8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 80), 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__688(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__689(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_18169F6F4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t _LSApplicationRecordPersistentIdentifierGetSequenceNumberInternal(void *a1)
{
  if ([a1 length] <= 0x23)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uint64_t _LSApplicationRecordPersistentIdentifierGetSequenceNumberInternal(const __strong LSPersistentIdentifier _Nonnull)"];
    [v3 handleFailureInFunction:v4 file:@"LSApplicationRecord.mm" lineNumber:2999 description:{@"persistent identifier of length %zu is too short to extract sequence number!", objc_msgSend(a1, "length")}];
  }

  return *([a1 bytes] + 28);
}

void sub_1816A094C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v28 - 64), 8);
  _Unwind_Resume(a1);
}

id _LSGetApplicationExtensionDiagnosticDescriptionForBundle(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"plugins for bundle %llx:", a2];
  [(_LSDatabase *)*a1 store];
  v6 = *(a3 + 480);
  v8 = v5;
  _CSArrayEnumerateAllValues();

  return v8;
}

void ___ZL11_LSIconsLogv_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "icons");
  v1 = _LSIconsLog(void)::log;
  _LSIconsLog(void)::log = v0;
}

void std::allocator<std::pair<unsigned int,LSBundleData const*>>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>(int *a1, int *a2, int *a3, void ****a4)
{
  v8 = (a2 + 2);
  v9 = (a1 + 2);
  v10 = _LSBundleCompareForActivityContinuationSuitability(***a4, *(a2 + 1), *(a1 + 1));
  result = _LSBundleCompareForActivityContinuationSuitability(***a4, *(a3 + 1), *v8);
  if (v10 == -1)
  {
    v15 = *a1;
    if (result == -1)
    {
      *a1 = *a3;
      *a3 = v15;
    }

    else
    {
      *a1 = *a2;
      *a2 = v15;
      v16 = *(a1 + 1);
      *(a1 + 1) = *(a2 + 1);
      *(a2 + 1) = v16;
      result = _LSBundleCompareForActivityContinuationSuitability(***a4, *(a3 + 1), v16);
      if (result != -1)
      {
        return result;
      }

      v17 = *a2;
      *a2 = *a3;
      *a3 = v17;
      v9 = v8;
    }

    v8 = (a3 + 2);
    goto LABEL_10;
  }

  if (result == -1)
  {
    v12 = *a2;
    *a2 = *a3;
    *a3 = v12;
    v13 = *(a2 + 1);
    *(a2 + 1) = *(a3 + 1);
    *(a3 + 1) = v13;
    result = _LSBundleCompareForActivityContinuationSuitability(***a4, *(a2 + 1), *v9);
    if (result == -1)
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
LABEL_10:
      v18 = *v9;
      *v9 = *v8;
      *v8 = v18;
    }
  }

  return result;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void ****a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>(a1, a2, a3, a5);
  result = _LSBundleCompareForActivityContinuationSuitability(***a5, *(a4 + 8), *(a3 + 8));
  if (result == -1)
  {
    v11 = *a3;
    *a3 = *a4;
    *a4 = v11;
    v12 = *(a3 + 8);
    *(a3 + 8) = *(a4 + 8);
    *(a4 + 8) = v12;
    result = _LSBundleCompareForActivityContinuationSuitability(***a5, *(a3 + 8), *(a2 + 8));
    if (result == -1)
    {
      v13 = *a2;
      *a2 = *a3;
      *a3 = v13;
      v14 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v14;
      result = _LSBundleCompareForActivityContinuationSuitability(***a5, *(a2 + 8), *(a1 + 8));
      if (result == -1)
      {
        v15 = *a1;
        *a1 = *a2;
        *a2 = v15;
        v16 = *(a1 + 8);
        *(a1 + 8) = *(a2 + 8);
        *(a2 + 8) = v16;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void ****a6)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>(a1, a2, a3, a4, a6);
  result = _LSBundleCompareForActivityContinuationSuitability(***a6, *(a5 + 8), *(a4 + 8));
  if (result == -1)
  {
    v13 = *a4;
    *a4 = *a5;
    *a5 = v13;
    v14 = *(a4 + 8);
    *(a4 + 8) = *(a5 + 8);
    *(a5 + 8) = v14;
    result = _LSBundleCompareForActivityContinuationSuitability(***a6, *(a4 + 8), *(a3 + 8));
    if (result == -1)
    {
      v15 = *a3;
      *a3 = *a4;
      *a4 = v15;
      v16 = *(a3 + 8);
      *(a3 + 8) = *(a4 + 8);
      *(a4 + 8) = v16;
      result = _LSBundleCompareForActivityContinuationSuitability(***a6, *(a3 + 8), *(a2 + 8));
      if (result == -1)
      {
        v17 = *a2;
        *a2 = *a3;
        *a3 = v17;
        v18 = *(a2 + 8);
        *(a2 + 8) = *(a3 + 8);
        *(a3 + 8) = v18;
        result = _LSBundleCompareForActivityContinuationSuitability(***a6, *(a2 + 8), *(a1 + 8));
        if (result == -1)
        {
          v19 = *a1;
          *a1 = *a2;
          *a2 = v19;
          v20 = *(a1 + 8);
          *(a1 + 8) = *(a2 + 8);
          *(a2 + 8) = v20;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *>(uint64_t a1, uint64_t a2, void ****a3)
{
  v6 = (a2 - a1) >> 4;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        if (_LSBundleCompareForActivityContinuationSuitability(***a3, *(a2 - 8), *(a1 + 8)) == -1)
        {
          v7 = *a1;
          *a1 = *(a2 - 16);
          *(a2 - 16) = v7;
          v8 = *(a1 + 8);
          *(a1 + 8) = *(a2 - 8);
          *(a2 - 8) = v8;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>(a1, (a1 + 16), (a2 - 16), a3);
      return 1;
    case 4:
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>(a1, a1 + 16, a1 + 32, a2 - 16, a3);
      return 1;
    case 5:
      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 16, a3);
      return 1;
  }

LABEL_11:
  v9 = a1 + 32;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(UserActivity) applicationRecordsForUserActivityType:limit:error:]::$_0 &,std::pair<unsigned int,LSBundleData const*> *,0>(a1, (a1 + 16), (a1 + 32), a3);
  v10 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    if (_LSBundleCompareForActivityContinuationSuitability(***a3, *(v10 + 8), *(v9 + 8)) == -1)
    {
      v13 = *v10;
      v14 = *(v10 + 8);
      v15 = v11;
      while (1)
      {
        v16 = a1 + v15;
        *(v16 + 48) = *(a1 + v15 + 32);
        *(v16 + 56) = *(a1 + v15 + 40);
        if (v15 == -32)
        {
          break;
        }

        v15 -= 16;
        if (_LSBundleCompareForActivityContinuationSuitability(***a3, v14, *(v16 + 24)) != -1)
        {
          v17 = a1 + v15 + 48;
          goto LABEL_19;
        }
      }

      v17 = a1;
LABEL_19:
      *v17 = v13;
      *(v17 + 8) = v14;
      if (++v12 == 8)
      {
        return v10 + 16 == a2;
      }
    }

    v9 = v10;
    v11 += 16;
    v10 += 16;
    if (v10 == a2)
    {
      return 1;
    }
  }
}

uint64_t initMobileInstallationCopyAppMetadata(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = MobileInstallationLibrary(void)::frameworkLibrary;
  if (!MobileInstallationLibrary(void)::frameworkLibrary)
  {
    v4 = dlopen("/System/Library/PrivateFrameworks/MobileInstallation.framework/MobileInstallation", 2);
    MobileInstallationLibrary(void)::frameworkLibrary = v4;
  }

  softLinkMobileInstallationCopyAppMetadata[0] = dlsym(v4, "MobileInstallationCopyAppMetadata");
  v5 = (softLinkMobileInstallationCopyAppMetadata[0])(v3, a2);

  return v5;
}

void ___ZL56_LSGetApplicationExtensionDiagnosticDescriptionForBundleP9LSContextjPK12LSBundleDataPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, uint64_t a2, unsigned int a3)
{
  [*(a1 + 32) appendFormat:@"\nplugin unit %llx", a3];
  v5 = _LSGetPlugin(**(a1 + 40), a3);
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + 176);
    [(_LSDatabase *)**(a1 + 40) store];
    v8 = _CSStringCopyCFString();
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v12 = *(v6 + 12);
      [(_LSDatabase *)**(a1 + 40) store];
      v10 = _CSStringCopyCFString();
    }

    v15 = v10;

    v13 = *(v6 + 180);
    [(_LSDatabase *)**(a1 + 40) store];
    v14 = _CSStringCopyCFString();
    [*(a1 + 32) appendFormat:@" with bundleID %@ is for EPID %@", v15, v14];
  }

  else
  {
    v11 = *(a1 + 32);

    [v11 appendFormat:@" was not found in the database!"];
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::__emplace_unique_key_args<unsigned int,unsigned int &,LSApplicationRecordUpdateAvailability>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void LSNoteFirstBootForRestrictions()
{
  v0 = _LSDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v0, OS_LOG_TYPE_DEFAULT, "Clearing important app restriction state for boot", buf, 2u);
  }

  v1 = *MEMORY[0x1E695E8B8];
  v2 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"LSLastSeenImportantAppRestrictionStateKey", 0, @"com.apple.lsd.restrictionhardening", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (!CFPreferencesSynchronize(@"com.apple.lsd.restrictionhardening", v1, v2))
  {
    v3 = _LSDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "error synchronizing after clearing app restriction state!", v4, 2u);
    }
  }
}

void _applicationStateChangedCallback(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 _MCRestrictionManager];
  [v2 invalidateSettings];

  v3 = [v4 _MCRestrictionManager];
  [v3 invalidateRestrictions];

  [v4 clearAllValues];
}

id computeImportantBundleRestrictionState(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = @"com.apple.news";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:{1, 0}];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [MEMORY[0x1E696AD98] numberWithInt:{computeApplicationRestrictionReasonWithMCStateProvider(v1, v8, 1) != 0}];
        [v2 setObject:v9 forKeyedSubscript:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v5);
  }

  v10 = MEMORY[0x1E696AD98];
  MCFeatureNewsTodayAllowed = getMCFeatureNewsTodayAllowed();
  v12 = [v10 numberWithInt:!isFeatureAllowed(MCFeatureNewsTodayAllowed)];
  [v2 setObject:v12 forKeyedSubscript:@"com.apple.news.widget"];

  v13 = *MEMORY[0x1E69E9840];

  return v2;
}

void saveImportantBundleRestrictionState(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = _LSDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v1;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "saving important bundle restriction state %{public}@", &v7, 0xCu);
  }

  v3 = *MEMORY[0x1E695E8B8];
  v4 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"LSLastSeenImportantAppRestrictionStateKey", v1, @"com.apple.lsd.restrictionhardening", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (!CFPreferencesSynchronize(@"com.apple.lsd.restrictionhardening", v3, v4))
  {
    v5 = _LSDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "error synchronizing after setting app restriction state!", &v7, 2u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1816A3078(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1816A373C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

void sub_1816A3750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816A40E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1816A4300(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 2);
  objc_exception_rethrow();
}

uint64_t computeApplicationRestrictionReasonWithMCStateProvider(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if (!ManagedConfigurationLibrary_frameworkLibrary)
  {
    ManagedConfigurationLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
    if (!ManagedConfigurationLibrary_frameworkLibrary)
    {
LABEL_10:
      v11 = 0;
      goto LABEL_12;
    }
  }

  if ([v5 isAllowlistEnabled])
  {
    v7 = [v5 allowlistedBundleIDs];
    v8 = [v7 containsObject:v6];

    if (!v8)
    {
      v11 = 4;
      goto LABEL_12;
    }
  }

  v9 = [v5 restrictedBundleIDs];
  v10 = [v9 containsObject:v6];

  if ((v10 & 1) == 0)
  {
    if (a3)
    {
      if (_LSIsNewsBundleIdentifier(v6))
      {
        v12 = getMCFeatureNewsAllowed[0]();
        if (!isFeatureAllowed(v12))
        {
          v11 = 2;
          goto LABEL_12;
        }
      }
    }

    goto LABEL_10;
  }

  v11 = 3;
LABEL_12:

  return v11;
}

uint64_t _LSApplicationRestrictionsManagerReasonForApplicationRestriction(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (!a1 || (a3 & 0x40000000000) != 0)
  {
    return 0;
  }

  else
  {
    return computeApplicationRestrictionReasonWithMCStateProvider(a4, a2, 1);
  }
}

Class initMCRestrictionManager()
{
  if (!ManagedConfigurationLibrary_frameworkLibrary)
  {
    ManagedConfigurationLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
  }

  result = objc_getClass("MCRestrictionManager");
  classMCRestrictionManager = result;
  getMCRestrictionManagerClass[0] = MCRestrictionManagerFunction;
  return result;
}

uint64_t initMCFeatureRemovedSystemAppBundleIDs()
{
  v0 = ManagedConfigurationLibrary_frameworkLibrary;
  if (!ManagedConfigurationLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
    ManagedConfigurationLibrary_frameworkLibrary = v0;
  }

  result = *dlsym(v0, "MCFeatureRemovedSystemAppBundleIDs");
  constantMCFeatureRemovedSystemAppBundleIDs = result;
  getMCFeatureRemovedSystemAppBundleIDs[0] = MCFeatureRemovedSystemAppBundleIDsFunction;
  return result;
}

uint64_t initMCFeatureNewsAllowed()
{
  v0 = ManagedConfigurationLibrary_frameworkLibrary;
  if (!ManagedConfigurationLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
    ManagedConfigurationLibrary_frameworkLibrary = v0;
  }

  result = *dlsym(v0, "MCFeatureNewsAllowed");
  constantMCFeatureNewsAllowed = result;
  getMCFeatureNewsAllowed[0] = MCFeatureNewsAllowedFunction;
  return result;
}

uint64_t initMCFeatureNewsTodayAllowed()
{
  v0 = ManagedConfigurationLibrary_frameworkLibrary;
  if (!ManagedConfigurationLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
    ManagedConfigurationLibrary_frameworkLibrary = v0;
  }

  result = *dlsym(v0, "MCFeatureNewsTodayAllowed");
  constantMCFeatureNewsTodayAllowed = result;
  getMCFeatureNewsTodayAllowed = MCFeatureNewsTodayAllowedFunction;
  return result;
}

uint64_t initMCFeatureIdentifierForAdvertisingAllowed()
{
  v0 = ManagedConfigurationLibrary_frameworkLibrary;
  if (!ManagedConfigurationLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
    ManagedConfigurationLibrary_frameworkLibrary = v0;
  }

  result = *dlsym(v0, "MCFeatureIdentifierForAdvertisingAllowed");
  constantMCFeatureIdentifierForAdvertisingAllowed = result;
  getMCFeatureIdentifierForAdvertisingAllowed[0] = MCFeatureIdentifierForAdvertisingAllowedFunction;
  return result;
}

uint64_t initMCFeatureLimitAdTrackingForced()
{
  v0 = ManagedConfigurationLibrary_frameworkLibrary;
  if (!ManagedConfigurationLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 2);
    ManagedConfigurationLibrary_frameworkLibrary = v0;
  }

  result = *dlsym(v0, "MCFeatureLimitAdTrackingForced");
  constantMCFeatureLimitAdTrackingForced = result;
  getMCFeatureLimitAdTrackingForced[0] = MCFeatureLimitAdTrackingForcedFunction;
  return result;
}

void sub_1816A55B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  os_unfair_lock_unlock(v25 + 5);
  os_unfair_lock_unlock(v25 + 4);

  _Unwind_Resume(a1);
}

void sub_1816A58C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  os_unfair_lock_unlock(v15 + 5);

  a14 = &a11;
  std::vector<std::shared_ptr<LaunchServices::PerThreadContext>>::__destroy_vector::operator()[abi:nn200100](&a14);
  os_unfair_lock_unlock(v15 + 4);

  _Unwind_Resume(a1);
}

void **std::vector<std::shared_ptr<LaunchServices::PerThreadContext>>::push_back[abi:nn200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::allocator<std::shared_ptr<LaunchServices::PerThreadContext>>::allocate_at_least[abi:nn200100](result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<LaunchServices::PerThreadContext>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void sub_1816A5AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 5);
  os_unfair_lock_unlock(v10 + 4);

  _Unwind_Resume(a1);
}

void sub_1816A5C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 5);

  _Unwind_Resume(a1);
}

void std::allocator<std::shared_ptr<LaunchServices::PerThreadContext>>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

void **std::__split_buffer<std::shared_ptr<LaunchServices::PerThreadContext>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<LaunchServices::PerThreadContext>>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<LaunchServices::PerThreadContext>>::clear[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void std::vector<std::shared_ptr<LaunchServices::PerThreadContext>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<LaunchServices::PerThreadContext>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<LaunchServices::PerThreadContext>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }
  }

  a1[1] = v2;
}

void std::__shared_ptr_emplace<LaunchServices::PerThreadContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EEF61FB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865D6250);
}

uint64_t std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void _LSServer_RefreshContentInFrameworkAtURL(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  _LSAssertRunningInServer("void _LSServer_RefreshContentInFrameworkAtURL(NSURL *__strong, void (^__strong)(NSError *__strong))");
  v13 = 0;
  v5 = (softLinkMobileInstallationCopyFrameworkInfoForLaunchServices[0])(v3, 0, &v13);
  v6 = v13;
  if (v5)
  {
    v7 = _LSServer_DatabaseExecutionContext();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___LSServer_RefreshContentInFrameworkAtURL_block_invoke;
    v9[3] = &unk_1E6A19860;
    v10 = v3;
    v11 = v5;
    v12 = v4;
    [(LSDBExecutionContext *)v7 syncWrite:v9];
  }

  else
  {
    v8 = _LSInstallLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _LSServer_RefreshContentInFrameworkAtURL_cold_1();
    }

    (*(v4 + 2))(v4, v6);
  }
}

id __copy_helper_block_e8_40n6_8_8_s0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void _registerMIPluginDictionary(void *a1, void *a2)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  kdebug_trace();
  v5 = [v3 objectForKey:*MEMORY[0x1E695E4F0]];
  v6 = [v3 mutableCopy];
  v7 = [v3 objectForKey:@"Entitlements"];
  v8 = [v7 objectForKey:@"com.apple.developer.replace-plugin"];
  if (v8)
  {
    [v4 addObject:v8];
  }

  if ([v4 containsObject:v5])
  {
    [v6 setObject:MEMORY[0x1E695E118] forKey:@"LSHasOverride"];
  }

  v9 = objc_alloc(MEMORY[0x1E695DFF8]);
  v10 = [v3 objectForKey:@"Path"];
  v11 = [v9 initFileURLWithPath:v10 isDirectory:1];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LaunchServices: registering extension %@"];
  if (_LSLoggingQueue_onceToken != -1)
  {
    _registerMIPluginDictionary_cold_1();
  }

  v13 = _LSLoggingQueue_logQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___LSSetCrashMessage_block_invoke;
  block[3] = &unk_1E6A195E0;
  v28 = v12;
  v14 = v12;
  dispatch_sync(v13, block);

  _LSLogStepStart(4, 0, v5, @"registering app extension", v15, v16, v17, v18, v5);
  v29 = v5;
  v30[0] = v6;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v20 = _LSRegisterPluginWithInfo(v11, v19);

  _LSLogStepFinished(4, v20 == 0, v5, @"registered app extension", v21, v22, v23, v24, v26);
  kdebug_trace();

  v25 = *MEMORY[0x1E69E9840];
}

BOOL _LSUnregisterAppByUnit(id *a1, uint64_t a2, uint64_t a3, int *a4, void *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 172) & 0x40000;
  v11 = *(a3 + 168);
  v12 = *(a3 + 12);
  [(_LSDatabase *)*a1 store];
  v13 = _CSStringCopyCFString();
  v14 = v13;
  if (v11 == 14 || v13 == 0)
  {
    v16 = 0;
  }

  else
  {
    if (v10)
    {
      v17 = 128;
    }

    else
    {
      v17 = 1152;
    }

    memset(buf, 0, 32);
    v16 = _LSBundleFindWithInfoAndNo_IOFilter(a1, 0, v13, 0, buf, 2, v17, 0, 0, 0, 0, 0);
  }

  v18 = _LSDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    *&buf[4] = a2;
    *&buf[12] = 1024;
    *&buf[14] = v10 >> 18;
    *&buf[18] = 1024;
    *&buf[20] = v11 == 14;
    *&buf[24] = 1024;
    *&buf[26] = v16;
    _os_log_impl(&dword_18162D000, v18, OS_LOG_TYPE_DEFAULT, "Will unregister app by unit (0x%llx), removingPlaceholder: %d removingSystemPlaceholder: %d foundParallelBundle: %d", buf, 0x1Eu);
  }

  if (v16)
  {
    v19 = 10;
  }

  else
  {
    v19 = 9;
  }

  if (v16)
  {
    v20 = 5;
  }

  else
  {
    v20 = 8;
  }

  if (v10)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  if ((v16 & 1) == 0)
  {
    [_LSDDeviceIdentifierService clearIdentifiersForUninstallationWithContext:a1 bundleUnit:a2 bundleData:a3];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = ___LSUnregisterAppByUnit_block_invoke;
    v27[3] = &unk_1E6A19888;
    v28 = v14;
    _LSHandlerPrefRemoveAllWithBundleID(v28, v27);
  }

  if ((IconServicesLibrary_frameworkLibrary_0 || (IconServicesLibrary_frameworkLibrary_0 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2)) != 0) && ![__LSDefaultsGetSharedInstance() isLightweightSystemServer])
  {
    if (v14)
    {
      (softLink_ISInvalidateCacheEntriesForBundleIdentifier[0])(v14);
      if ((v16 & 1) == 0)
      {
        if ([__LSDefaultsGetSharedInstance() isServer])
        {
          v22 = +[LSAltIconManager sharedInstance];
          [v22 clearAlternateNameForBundleIdentifier:v14 validationDictionary:0];
        }
      }
    }
  }

  v23 = _LSUnregisterBundle(a1, a2, 0);
  v24 = v23;
  if (!a4 || v23)
  {
    if (a5 && v23)
    {
      *a5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v23, 0, "_LSUnregisterAppByUnit", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 628);
    }
  }

  else
  {
    *a4 = v21;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v24 == 0;
}

uint64_t _LSUnregisterAppWithBundleIDUsingContext(void *a1, unsigned int a2, _LSDatabase **a3, int *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = (a2 & 1) == 0;
  v8 = (a2 & 2) == 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  memset(buf, 0, sizeof(buf));
  v9 = _LSBundleFindWithInfoAndNo_IOFilter(a3, 0, a1, 0, buf, 2, 1152, 0, 0, &v39, &v37, 0);
  v10 = _LSInstallLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v9)
    {
      v11 = @"Found";
    }

    else
    {
      v11 = @"No";
    }

    *buf = 138412546;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = a1;
    _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEFAULT, "%@ placeholder to remove for %@", buf, 0x16u);
  }

  memset(buf, 0, sizeof(buf));
  if (_LSBundleFindWithInfoAndNo_IOFilter(a3, 0, a1, 0, buf, 2, 128, 0, 0, &v39 + 1, &v38, 0))
  {
    v12 = 1;
  }

  else
  {
    memset(buf, 0, sizeof(buf));
    v12 = _LSBundleFindWithInfoAndNo_IOFilter(a3, 0, a1, 0, buf, 13, 128, 0, 0, &v39 + 1, &v38, 0);
  }

  v13 = a2 & v8;
  v14 = _LSInstallLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (v12)
    {
      v15 = @"Found";
    }

    else
    {
      v15 = @"No";
    }

    *buf = 138412546;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = a1;
    _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEFAULT, "%@ app to remove for %@", buf, 0x16u);
  }

  if ((v13 & v9 & v12) == 1)
  {
    v16 = _LSUnregisterBundle(a3, v39, 0);
    v17 = _LSInstallLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [MEMORY[0x1E696AD98] numberWithInt:v16 == 0];
      *buf = 138412546;
      *&buf[4] = a1;
      *&buf[12] = 2112;
      *&buf[14] = v18;
      _os_log_impl(&dword_18162D000, v17, OS_LOG_TYPE_DEFAULT, "_LSUnregisterBundle(%@) returned %@ for placeholder only", buf, 0x16u);
    }

    v19 = 0;
    v20 = 10;
  }

  else if ((v12 | v9))
  {
    v21 = v7 & (a2 >> 1);
    if ((v21 & v9 & 1) == 0)
    {
      [_LSDDeviceIdentifierService clearIdentifiersForUninstallationWithContext:a3 bundleUnit:HIDWORD(v39) bundleData:v38];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = ___LSUnregisterAppWithBundleIDUsingContext_block_invoke;
      v36[3] = &__block_descriptor_40_e20_v20__0B8__NSError_12l;
      v36[4] = a1;
      _LSHandlerPrefRemoveAllWithBundleID(a1, v36);
      v22 = objc_alloc_init(LSDefaultApplicationQueryServerDatastore);
      [(LSDefaultApplicationQueryServerDatastore *)v22 removeEntriesForBundleIdentifier:a1];
    }

    v19 = v21 & v9 ^ 1;
    if (((v21 | v9 ^ 1) & 1) != 0 || (a2 & 4) != 0)
    {
      v20 = 0;
    }

    else
    {
      v24 = _LSUnregisterBundle(a3, v39, 0);
      v25 = _LSInstallLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [MEMORY[0x1E696AD98] numberWithInt:v24 == 0];
        *buf = 138412546;
        *&buf[4] = a1;
        *&buf[12] = 2112;
        *&buf[14] = v26;
        _os_log_impl(&dword_18162D000, v25, OS_LOG_TYPE_DEFAULT, "_LSUnregisterBundle(%@) returned %@ for placeholder", buf, 0x16u);
      }

      v20 = 9;
    }

    if ((v13 | v12 ^ 1))
    {
      v27 = _LSInstallLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413570;
        *&buf[4] = a1;
        *&buf[12] = 1024;
        *&buf[14] = v12;
        *&buf[18] = 1024;
        *&buf[20] = v9;
        *&buf[24] = 1024;
        *&buf[26] = v21;
        *&buf[30] = 1024;
        v41 = v13;
        v42 = 1024;
        v43 = (a2 >> 2) & 1;
        _os_log_impl(&dword_18162D000, v27, OS_LOG_TYPE_DEFAULT, "no bundles to remove for %@ (found app: %d placeholder: %d app only: %d placeholder only: %d placeholder only if parallel: %d)", buf, 0x2Au);
      }

      v16 = 0;
    }

    else
    {
      v16 = _LSUnregisterBundle(a3, HIDWORD(v39), 0);
      v28 = _LSInstallLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [MEMORY[0x1E696AD98] numberWithInt:v16 == 0];
        *buf = 138412546;
        *&buf[4] = a1;
        *&buf[12] = 2112;
        *&buf[14] = v29;
        _os_log_impl(&dword_18162D000, v28, OS_LOG_TYPE_DEFAULT, "_LSUnregisterBundle(%@) returned %@ for app", buf, 0x16u);
      }

      if ((v21 & v9) != 0)
      {
        v20 = 5;
      }

      else
      {
        v20 = 8;
      }
    }
  }

  else
  {
    v23 = _LSInstallLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = a1;
      _os_log_impl(&dword_18162D000, v23, OS_LOG_TYPE_DEFAULT, "No bundles to remove for %@", buf, 0xCu);
    }

    v19 = 0;
    v16 = 0;
    v20 = 0;
  }

  v30 = objc_autoreleasePoolPush();
  v31 = _LSInstallLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = a1;
    _os_log_impl(&dword_18162D000, v31, OS_LOG_TYPE_DEFAULT, "Clearing icon cache entries for %@", buf, 0xCu);
  }

  if ((IconServicesLibrary_frameworkLibrary_0 || (IconServicesLibrary_frameworkLibrary_0 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2)) != 0) && ([__LSDefaultsGetSharedInstance() isLightweightSystemServer] & 1) == 0)
  {
    (softLink_ISInvalidateCacheEntriesForBundleIdentifier[0])(a1);
    if (v19)
    {
      if ([__LSDefaultsGetSharedInstance() isServer])
      {
        v32 = +[LSAltIconManager sharedInstance];
        [v32 clearAlternateNameForBundleIdentifier:a1 validationDictionary:0];
      }
    }
  }

  objc_autoreleasePoolPop(v30);
  if (a4)
  {
    *a4 = v20;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t _LSUnregisterAppWithBundleID(_LSDatabase **a1, void *a2, unsigned int a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = @" (placeholder only)";
  if ((a3 & 3) != 1)
  {
    v12 = &stru_1EEF65710;
  }

  v23 = 0;
  _LSLogStepStart(6, 0, a2, @"Beginning _LSUnregisterAppWithBundleID%@%@%@", a5, a6, a7, a8, v12);
  if (a1)
  {
    if (a2)
    {
LABEL_5:
      v17 = _LSUnregisterAppWithBundleIDUsingContext(a2, a3, a1, a4);
      goto LABEL_11;
    }
  }

  else
  {
    v17 = _LSContextInit(&v23);
    if (v17)
    {
      goto LABEL_14;
    }

    a1 = &v23;
    if (a2)
    {
      goto LABEL_5;
    }
  }

  v18 = _LSDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    _LSUnregisterAppWithBundleID_cold_1();
  }

  v17 = 4294967246;
LABEL_11:
  if (a1 == &v23)
  {
    _LSContextDestroy(&v23);
  }

  if (!v17)
  {
    v20 = 1;
    goto LABEL_18;
  }

LABEL_14:
  v19 = _LSDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    _LSUnregisterAppWithBundleID_cold_2();
  }

  v20 = 0;
LABEL_18:
  _LSLogStepFinished(6, v20, a2, @"Finished _LSUnregisterAppWithBundleID", v13, v14, v15, v16, v22);

  return v17;
}

void _LSLogStepStart(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a3;
  if (a4)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = a4;
    a4 = [[v12 alloc] initWithFormat:v13 arguments:&a9];
  }

  [getAITransactionLogClass[0]() logStep:a1 byParty:5 phase:1 success:1 forBundleID:v11 description:a4];
}

void _LSLogStepFinished(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a3;
  if (a4)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = a4;
    a4 = [[v13 alloc] initWithFormat:v14 arguments:&a9];
  }

  [getAITransactionLogClass[0]() logStep:a1 byParty:5 phase:2 success:a2 forBundleID:v12 description:a4];
}

void sub_1816A7B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1816A8160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void LSApplicationWorkspaceNotificationCallback(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (([a3 isEqualToString:@"com.lsinstallprogress.appcontrols.cancel"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.lsinstallprogress.appcontrols.pause") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.lsinstallprogress.appcontrols.prioritize") & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.lsinstallprogress.appcontrols.resume") & 1) != 0 || objc_msgSend(a3, "isEqualToString:", @"com.lsinstallprogress.networkusagechanged"))
  {
    v8 = a5;
    v9 = a3;
    v10 = [a2 remoteObserver];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __LSApplicationWorkspaceObserverCallback_block_invoke;
    v21 = &unk_1E6A1A3C8;
    v22 = v9;
    v23 = v8;
    v24 = v10;
    v11 = v9;
    v12 = v8;
    v13 = v10;
    v14 = "com.apple.launchservices.LSApplicationWorkspaceObserverCallback";
LABEL_7:
    dispatchAsyncToCallbackQueueWithTransaction(v14, &v18);

    return;
  }

  if (([a3 isEqualToString:@"com.apple.LaunchServices.pluginsregistered"] & 1) != 0 || (objc_msgSend(a3, "isEqualToString:", @"com.apple.LaunchServices.pluginsunregistered") & 1) != 0 || objc_msgSend(a3, "isEqualToString:", @"com.apple.LaunchServices.pluginswillberemoved"))
  {
    v15 = a5;
    v16 = a3;
    v17 = [a2 remoteObserver];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __LSApplicationWorkspacePluginsChangedCallback_block_invoke;
    v21 = &unk_1E6A1A3C8;
    v22 = v16;
    v23 = v15;
    v24 = v17;
    v11 = v16;
    v12 = v15;
    v13 = v17;
    v14 = "com.apple.launchservices.LSApplicationWorkspacePluginsChangedCallback";
    goto LABEL_7;
  }

  if ([a3 isEqualToString:@"com.apple.LaunchServices.applicationStateChanged"])
  {

    LSApplicationStateChangedCallback(a2, a3, a5);
  }
}

void unsubscribeFromLSAWDistributedNotification(const __CFString *a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __unsubscribeFromLSAWDistributedNotification_block_invoke;
  v1[3] = &__block_descriptor_40_e8_I12__0I8l;
  v1[4] = a1;
  mutateSubscriberCountForNotificationName(a1, v1);
}

void sub_1816A8F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816A91A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1816AA5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void _LSCommonOpenApplicationWithBundleIdentifier(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a5;
  if (!v10)
  {
    _LSCommonOpenApplicationWithBundleIdentifier_cold_1();
  }

  v13 = [v9 optionsFromOpenConfiguration:v11];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = ___LSCommonOpenApplicationWithBundleIdentifier_block_invoke;
  v19[3] = &unk_1E6A19A70;
  v14 = v12;
  v20 = v14;
  v15 = [(_LSDService *)_LSDOpenService XPCProxyWithErrorHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = ___LSCommonOpenApplicationWithBundleIdentifier_block_invoke_2;
  v17[3] = &unk_1E6A19E58;
  v18 = v14;
  v16 = v14;
  [v15 openApplicationWithIdentifier:v10 options:v13 useClientProcessHandle:a4 completionHandler:v17];
}

void sub_1816ABA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816ABE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 144), 8);
  _Unwind_Resume(a1);
}

id serviceDomainForRequestContext(void *a1)
{
  v1 = a1;
  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = [v1 targetUserID];

  if (v3)
  {
    v4 = [v1 targetUserID];
    v5 = [v4 intValue];

    if (v5)
    {
      v6 = [[_LSDServiceDomain alloc] initWithUID:v5];
    }

    else
    {
      v6 = +[_LSDServiceDomain systemSessionDomain];
    }

    v7 = v6;

    v2 = v7;
  }

  return v2;
}

void handleSaveObserverBehavior(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  _LSContextInvalidate();
  if (v7)
  {
    if (v10)
    {
      [v7 operationWithUUID:v9 didFailToSaveWithError:v10];
    }

    else if (v8)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __handleSaveObserverBehavior_block_invoke;
      v19[3] = &unk_1E6A1A480;
      v11 = v7;
      v20 = v11;
      v12 = v9;
      v21 = v12;
      v13 = [v8 remoteObjectProxyWithErrorHandler:v19];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __handleSaveObserverBehavior_block_invoke_2;
      v16[3] = &unk_1E6A1A4A8;
      v17 = v11;
      v18 = v12;
      [v13 waitForResult:v16];
    }

    else
    {
      v14 = _LSInstallLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        handleSaveObserverBehavior_cold_1();
      }

      v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10810, 0, "handleSaveObserverBehavior", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 2573);
      [v7 operationWithUUID:v9 didFailToSaveWithError:v15];
    }
  }
}

void sub_1816AC6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1816ACA98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1816ACE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1816AD130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1816AD810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t registerApplicationWithDictionary(void *a1, unsigned int a2)
{
  v3 = a1;
  kdebug_trace();
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v20 = 0;
  v4 = [(FSNode *)v3 objectForKey:@"IsPlaceholder"];
  v5 = [v4 BOOLValue];

  v6 = [(FSNode *)v3 objectForKey:@"IsParallelPlaceholder"];
  v7 = [v6 BOOLValue];

  v8 = [(FSNode *)v3 objectForKey:*MEMORY[0x1E695E4F0]];
  v9 = [(FSNode *)v3 objectForKey:@"Path"];
  if (v9)
  {
    v10 = &stru_1EEF65710;
    if (v7)
    {
      v10 = @"(parallel)";
    }

    v11 = @"app bundle";
    if (v5)
    {
      v11 = @"placeholder";
    }

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LaunchServices: registering %@%@ for %@", v10, v11, v8];
    if (_LSLoggingQueue_onceToken != -1)
    {
      _registerMIPluginDictionary_cold_1();
    }

    v13 = _LSLoggingQueue_logQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___LSSetCrashMessage_block_invoke;
    block[3] = &unk_1E6A195E0;
    v25 = v12;
    v14 = v12;
    dispatch_sync(v13, block);

    v15 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v9 isDirectory:1];
    v16 = FSNodeCreateWithURL(v15, 0, &v22);

    if (!v16)
    {
      v16 = _LSContextInit(&v23);
      if (!v16)
      {
        v16 = _LSFindOrRegisterBundleNode(&v23, v22, 0, (((a2 >> 30) & 1) == 0) | a2 | 0x2000000, v3, &v21, &v20);
        if (!v16)
        {
          if (([__LSDefaultsGetSharedInstance() isLightweightSystemServer] & 1) == 0)
          {
            v17 = [(FSNode *)v3 objectForKeyedSubscript:@"IsPlaceholder"];
            v18 = [v17 BOOLValue];

            if ((v18 & 1) == 0)
            {
              [_LSDDeviceIdentifierService generateIdentifiersForInstallationWithContext:&v23 bundleUnit:v21 bundleData:v20];
            }
          }

          if (_LSLoggingQueue_onceToken != -1)
          {
            registerApplicationWithDictionary_cold_2();
          }

          dispatch_sync(_LSLoggingQueue_logQueue, &__block_literal_global_1152);
        }

        _LSContextDestroy(&v23);
      }
    }
  }

  else
  {
    v16 = 4294967246;
  }

  kdebug_trace();

  return v16;
}

void sub_1816AE1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_1816AE4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816AE8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1816AED30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1816AF2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_1816AF77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1816AFAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Unwind_Resume(a1);
}

void sub_1816AFDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t _updatePlaceholderInstallType(void *a1, void *a2, uint64_t a3, void *a4)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (a3 && ((softLinkMobileInstallationUpdatePlaceholderMetadata[0])(v8, a3, 0, 0, 0), (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v12 = _LSInstallLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [LSApplicationWorkspace updatePlaceholderMetadataForApp:installType:failure:underlyingError:source:outError:];
    }

    v17 = 0;
  }

  else
  {
    v25 = @"LSInstallType";
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v26[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v20 = [MEMORY[0x1E696AFB0] UUID];
    v24 = 0;
    v17 = [v7 updateRecordForApp:v9 withSINF:0 iTunesMetadata:0 placeholderMetadata:v19 sendNotification:1 operationUUID:v20 outSaveToken:0 error:&v24];
    v11 = v24;

    _LSContextInvalidate();
  }

  _LSLogStepFinished(11, v17, v9, @"Updated Placeholder install type with error %@", v13, v14, v15, v16, v11);
  if (a4)
  {
    v21 = v11;
    *a4 = v11;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t _LSUnregisterPluginsAtURL(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v23 = 0;
    v24 = 0;
    inited = _LSContextInitReturningError(&v24, &v23);
    v5 = v23;
    if (!inited)
    {
      v13 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v6 = _LSCopyPluginsWithURL(&v24, v3);
    v7 = v6;
    if (v6)
    {
      if (![v6 count])
      {
        v13 = 1;
LABEL_21:
        _LSContextDestroy(&v24);

        goto LABEL_22;
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = [MEMORY[0x1E695DFD8] setWithArray:{v7, 0}];
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v9)
      {
        v10 = *v20;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = _LSUnregisterPlugin(&v24, [*(*(&v19 + 1) + 8 * i) unsignedLongLongValue]);
            if (v12)
            {
              v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v12, 0, "_LSUnregisterPluginsAtURL", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 506);

              v13 = 0;
              v5 = v15;
              goto LABEL_20;
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
          v13 = 1;
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "_LSUnregisterPluginsAtURL", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 513);
      v13 = 0;
      v5 = v8 = v5;
    }

LABEL_20:

    goto LABEL_21;
  }

  v25 = *MEMORY[0x1E696A278];
  v26 = @"invalid plugin URL";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v14, "_LSUnregisterPluginsAtURL", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 520);

  v13 = 0;
LABEL_23:
  if (a2 && (v13 & 1) == 0)
  {
    v16 = v5;
    *a2 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t _LSRegisterPluginWithInfo(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v17 = 0;
  v18.db = 0;
  if (v3)
  {
    v6 = _LSContextInit(&v18.db);
    if (v6)
    {
      v11 = 0;
    }

    else
    {
      v7 = _LSCopyPluginsWithURL(&v18, v3);
      v8 = v7;
      if (v7)
      {
        v9 = [v7 objectAtIndex:0];
        v10 = [v9 unsignedLongLongValue];
        CFRelease(v8);
      }

      else
      {
        v10 = 0;
      }

      v6 = FSNodeCreateWithURL(v3, 0, &v17);
      v11 = v17;
      if (!v6)
      {
        v16 = 0;
        v12 = _LSRegisterPluginNode(&v18, v17, v4, 0, v10, &v16);
        v13 = v16;
        v14 = v13;
        if (v12)
        {
          v6 = 0;
        }

        else
        {
          v6 = _LSGetOSStatusFromNSError(v13);
        }

        _LSContextDestroy(&v18.db);
        v11 = v17;
      }
    }
  }

  else
  {
    v11 = 0;
    v6 = 4294967246;
  }

  objc_autoreleasePoolPop(v5);
  return v6;
}

void sub_1816B0FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1816B12A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816B1430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816B16CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816B1854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816B1A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816B1C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816B2D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSServer_UpdateDatabaseWithInfo(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v46 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v13 = @"sinfData";
  }

  else if (a3)
  {
    v13 = @"iTunesData";
  }

  else
  {
    v13 = @"placeholderMetadata";
    if (!a4)
    {
      v13 = @"bumping sequence number";
    }
  }

  _LSLogStepStart(11, 0, a1, @"Updating bundle record for app (%@)", a5, a6, a7, a8, v13);
  v14 = objc_autoreleasePoolPush();
  v15 = [[LSBundleRecordUpdater alloc] initWithBundleIdentifier:a1 preferPlaceholder:a4 != 0];
  if (v15)
  {
    v16 = v15;
    if (!v8 && ![(LSBundleRecordUpdater *)v15 checkNeedsUpdateForiTunesMetadata:a3 SINFo:a2 placeholderMetadata:a4])
    {
      v30 = _LSDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v39 = a2;
        v40 = 2112;
        v41 = a3;
        v42 = 2112;
        v43 = a4;
        v44 = 2112;
        v45 = a1;
        _os_log_impl(&dword_18162D000, v30, OS_LOG_TYPE_DEFAULT, "Updating database with %@ %@ %@ for %@: did not actually need an update, and it was not forced, so skipping", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v14);
      _LSLogStepFinished(11, 1, a1, @"Updated bundle record%@", v31, v32, v33, v34, @" (skipped)");
      goto LABEL_21;
    }

    [(LSBundleRecordUpdater *)v16 parseSINFDictionary:a2];
    [(LSBundleRecordUpdater *)v16 parseiTunesMetadata:a3];
    [(LSBundleRecordUpdater *)v16 parsePlaceholderMetadata:a4];
    v37 = 0;
    v17 = [(LSBundleRecordUpdater *)v16 updateBundleRecord:&v37];
    v18 = v37;

    objc_autoreleasePoolPop(v14);
    if (v17)
    {
      _LSArmSaveTimer(1);
      _LSLogStepFinished(11, 1, a1, @"Updated bundle record%@", v19, v20, v21, v22, &stru_1EEF65710);

LABEL_21:
      v29 = 0;
      goto LABEL_22;
    }
  }

  else
  {
    v23 = _LSDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      _LSServer_UpdateDatabaseWithInfo_cold_1();
    }

    v18 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "_LSServer_UpdateDatabaseWithInfo", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 6783);
    objc_autoreleasePoolPop(v14);
  }

  v24 = _LSDefaultLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    _LSServer_UpdateDatabaseWithInfo_cold_2();
  }

  _LSLogStepFinished(11, 0, a1, @"Updated bundle record%@", v25, v26, v27, v28, &stru_1EEF65710);
  v29 = _LSGetOSStatusFromNSError(v18);

LABEL_22:
  v35 = *MEMORY[0x1E69E9840];
  return v29;
}

void _LSServer_SendStateChangedNotificationsForBundlesWithIdentifiers(uint64_t a1, void *a2, void *a3)
{
  v87 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  _LSAssertRunningInServer("void _LSServer_SendStateChangedNotificationsForBundlesWithIdentifiers(LSContext *, NSSet<NSString *> *__strong, __strong id<LSMCStateProvider>)");
  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v59 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v9 = v5;
  v61 = [v9 countByEnumeratingWithState:&v73 objects:v86 count:16];
  if (v61)
  {
    v60 = *v74;
    v56 = v7;
    v57 = v6;
    v54 = v9;
    v55 = v8;
    v58 = a1;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v74 != v60)
        {
          objc_enumerationMutation(v9);
        }

        v11 = *(*(&v73 + 1) + 8 * i);
        v12 = [LSApplicationRecord alloc];
        v72 = 0;
        v13 = [(LSApplicationRecord *)v12 _initWithNode:0 bundleIdentifier:v11 placeholderBehavior:1 systemPlaceholder:0 itemID:0 forceInBundleContainer:0 context:a1 error:&v72];
        v14 = v72;
        v15 = v14;
        if (v13)
        {
          v63 = v14;
          v64 = i;
          v62 = [v13 applicationState];
          v16 = [v62 isRestrictedWithStateProvider:v6];
          v65 = v13;
          v17 = MEMORY[0x1E695E110];
          v79[0] = MEMORY[0x1E695E110];
          v78[0] = @"isRemoved";
          v78[1] = @"isRestricted";
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v16];
          v78[2] = @"isBlocked";
          v79[1] = v18;
          v79[2] = v17;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:v78 count:3];
          [v7 setObject:v19 forKey:v11];

          v13 = v65;
          v66 = [v65 applicationExtensionRecords];
          if ([v66 count])
          {
            if (_LSIsNewsBundleIdentifier(v11))
            {
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              v20 = v66;
              v21 = [v20 countByEnumeratingWithState:&v68 objects:v77 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v69;
                v24 = @" not";
                if (v16)
                {
                  v24 = &stru_1EEF65710;
                }

                v67 = v24;
                if (v16)
                {
                  v25 = v8;
                }

                else
                {
                  v25 = v59;
                }

                do
                {
                  for (j = 0; j != v22; ++j)
                  {
                    if (*v69 != v23)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v27 = *(*(&v68 + 1) + 8 * j);
                    v28 = [v27 effectiveBundleIdentifier];
                    if (!_LSIsNewsWidgetBundleIdentifier(v28))
                    {
                      goto LABEL_24;
                    }

                    v29 = +[LSApplicationRestrictionsManager sharedInstance];
                    v30 = [(LSApplicationRestrictionsManager *)v29 isAppExtensionRestricted:v28];

                    v31 = _LSInstallLog();
                    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v32 = @" not";
                      if (v30)
                      {
                        v32 = &stru_1EEF65710;
                      }

                      v81 = v67;
                      v82 = 2112;
                      v83 = v32;
                      _os_log_impl(&dword_18162D000, v31, OS_LOG_TYPE_DEFAULT, "Note: News is%@ restricted, news widget is%@ restricted", buf, 0x16u);
                    }

                    if (v16 == v30)
                    {
LABEL_24:
                      [v25 addObject:v27];
                    }
                  }

                  v22 = [v20 countByEnumeratingWithState:&v68 objects:v77 count:16];
                }

                while (v22);
                v7 = v56;
                v6 = v57;
                v9 = v54;
                v8 = v55;
                a1 = v58;
                v13 = v65;
              }

              else
              {
                a1 = v58;
              }
            }

            else
            {
              v20 = [v66 allObjects];
              if (v16)
              {
                v34 = v8;
              }

              else
              {
                v34 = v59;
              }

              [v34 addObjectsFromArray:v20];
            }
          }

          v15 = v63;
          i = v64;
          v33 = v62;
        }

        else
        {
          v33 = _LSInstallLog();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v81 = "_LSServer_SendStateChangedNotificationsForBundlesWithIdentifiers";
            v82 = 2112;
            v83 = v11;
            v84 = 2112;
            v85 = v15;
            _os_log_error_impl(&dword_18162D000, v33, OS_LOG_TYPE_ERROR, "%s: could not initialize record for bundleID %@: %@", buf, 0x20u);
          }
        }
      }

      v61 = [v9 countByEnumeratingWithState:&v73 objects:v86 count:16];
    }

    while (v61);
  }

  _LSLogStepAsync(7, 1, 0, @"Sending appStateChangedNotification with payload %@", v35, v36, v37, v38, v7);
  v39 = _LSInstallLog();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v81 = v7;
    _os_log_impl(&dword_18162D000, v39, OS_LOG_TYPE_DEFAULT, "Sending appStateChangedNotification for %@", buf, 0xCu);
  }

  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterPostNotificationWithOptions(DistributedCenter, @"com.apple.LaunchServices.applicationStateChanged", 0, v7, 1uLL);
  if ([v59 count])
  {
    _LSLogStepAsync(7, 1, 0, @"Sending installedNotifications for %@", v41, v42, v43, v44, v59);
    v45 = _LSInstallLog();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v81 = v59;
      _os_log_impl(&dword_18162D000, v45, OS_LOG_TYPE_DEFAULT, "Sending installedNotifications for %@", buf, 0xCu);
    }

    v46 = +[_LSInstallProgressService sharedInstance];
    [v46 detachAndSendNotification:@"com.apple.LaunchServices.pluginsregistered" forApplicationExtensionRecords:v59];
  }

  if ([v8 count])
  {
    _LSLogStepAsync(7, 1, 0, @"Sending uninstalledNotifications for %@", v47, v48, v49, v50, v8);
    v51 = _LSInstallLog();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v81 = v8;
      _os_log_impl(&dword_18162D000, v51, OS_LOG_TYPE_DEFAULT, "Sending uninstalledNotifications for %@", buf, 0xCu);
    }

    v52 = +[_LSInstallProgressService sharedInstance];
    [v52 detachAndSendNotification:@"com.apple.LaunchServices.pluginsunregistered" forApplicationExtensionRecords:v8];
  }

  v53 = *MEMORY[0x1E69E9840];
}

void sub_1816B5E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

id bestRecordForScheme(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AF20];
  v4 = a1;
  v5 = objc_alloc_init(v3);
  [v5 setScheme:v4];

  v6 = [LSClaimBinding alloc];
  v7 = [v5 URL];
  v8 = [(LSClaimBinding *)v6 initWithURL:v7 error:a2];

  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = [(LSClaimBinding *)v8 bundleRecord];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v11 = [(LSClaimBinding *)v8 bundleRecord];
    goto LABEL_7;
  }

  if (a2)
  {
    _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "bestRecordForScheme", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 4855);
    *a2 = v11 = 0;
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

LABEL_7:

  return v11;
}

void sub_1816B8440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816B8640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1816B8C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 136), 8);
  _Unwind_Resume(a1);
}

void dispatchAsyncToCallbackQueueWithTransaction(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = os_transaction_create();
  v4 = +[LSApplicationWorkspace callbackQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __dispatchAsyncToCallbackQueueWithTransaction_block_invoke;
  v7[3] = &unk_1E6A19E08;
  v8 = v3;
  v9 = v2;
  v5 = v3;
  v6 = v2;
  dispatch_async(v4, v7);
}

id filterProxiesForHelperPlaceholders(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 correspondingApplicationRecord];
        v10 = [v9 isWebAppPlaceholder];

        if (v10)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v2;
}

void _LSLogStepAsync(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a3;
  if (a4)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = a4;
    a4 = [[v13 alloc] initWithFormat:v14 arguments:&a9];
  }

  [getAITransactionLogClass[0]() logStep:a1 byParty:5 phase:3 success:a2 forBundleID:v12 description:a4];
}

void _LSServer_ExecuteSyncWithQuiescedInstallationActivity(void *a1)
{
  v1 = a1;
  RegisterInstallResultsLock = _LSDatabaseGetRegisterInstallResultsLock();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = ___LSServer_ExecuteSyncWithQuiescedInstallationActivity_block_invoke;
  v7 = &unk_1E6A1A370;
  v3 = v1;
  v8 = v3;
  v4 = v5;
  os_unfair_lock_lock(RegisterInstallResultsLock);
  v6(v4);
  os_unfair_lock_unlock(RegisterInstallResultsLock);
}

void sub_1816BC1FC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1);
  objc_exception_rethrow();
}

BOOL _LSServer_PerformExternalRebuildRegistration(void *a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = +[LSDatabaseRebuildContext currentRebuildContextIfExists];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(LSDatabaseRebuildContext *)v4 registerItems:v3];
      v8 = 0;
      if (!a2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v5 = _LSInstallLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        _LSServer_PerformExternalRebuildRegistration_cold_1();
      }

      v6 = *MEMORY[0x1E696A768];
      v13 = *MEMORY[0x1E696A278];
      v14[0] = @"bad registration input";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v8 = _LSMakeNSErrorImpl(v6, -50, v7, "_LSServer_PerformExternalRebuildRegistration", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 5871);

      if (!a2)
      {
        goto LABEL_11;
      }
    }

LABEL_10:
    v10 = v8;
    *a2 = v8;
    goto LABEL_11;
  }

  v9 = _LSInstallLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    _LSServer_PerformExternalRebuildRegistration_cold_2();
  }

  v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 94, 0, "_LSServer_PerformExternalRebuildRegistration", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSApplicationWorkspace.m", 5875);
  if (a2)
  {
    goto LABEL_10;
  }

LABEL_11:

  v11 = *MEMORY[0x1E69E9840];
  return v8 == 0;
}

void _LSServer_NoteMigratorRunningInMigration()
{
  v0 = +[LSDatabaseRebuildContext currentRebuildContextIfExists];
  v1 = v0;
  if (v0)
  {
    [(LSRebuildStatisticsGatherer *)*(v0 + 8) setMigratorRunning:?];
  }

  else
  {
    v2 = _LSInstallLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      _LSServer_NoteMigratorRunningInMigration_cold_1();
    }
  }
}

uint64_t _LSServer_LSEnumerateAndRegisterAllCryptexContent()
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v0 = objc_alloc_init(LSRebuildStatisticsGatherer);
  [(LSRebuildStatisticsGatherer *)v0 setOnlyCryptexContent:?];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___LSServer_LSEnumerateAndRegisterAllCryptexContent_block_invoke;
  v4[3] = &unk_1E6A1A168;
  v1 = v0;
  v5 = v1;
  v6 = &v7;
  [LSDatabaseRebuildContext withStatsGatherer:v1 runWithRebuildContext:v4];
  [(LSRebuildStatisticsGatherer *)v1 submitAnalytics];
  v2 = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return v2;
}

void sub_1816BC788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _LSServer_LSEnumerateAndRegisterAllCryptexContentWithContext(void *a1)
{
  v1 = a1;
  v2 = _LSInstallLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "calling into InstalledContentLibrary to register cryptex content", buf, 2u);
  }

  v3 = [MEMORY[0x1E69A8D60] defaultWorkspace];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___LSServer_LSEnumerateAndRegisterAllCryptexContentWithContext_block_invoke;
  v10[3] = &unk_1E6A1A190;
  v4 = v1;
  v11 = v4;
  v9 = 0;
  v5 = [v3 enumerateCryptexContentWithBlock:v10 error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0)
  {
    v8 = _LSInstallLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _LSServer_LSEnumerateAndRegisterAllCryptexContentWithContext_cold_1();
    }

    [(LSDatabaseRebuildContext *)v4 noteRebuildError:v6];
  }

  v7 = _LSInstallLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "finished enumerating cryptex content.", buf, 2u);
  }
}

uint64_t _LSServer_LSEnumerateAndRegisterAllBundles(void *a1, __int16 a2)
{
  v3 = a1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v4 = objc_opt_class();
  v5 = [v3 objectForKey:@"UserRequestedAppDBRebuild"];
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v6 = 0;
  }

  v8 = [v6 BOOLValue];

  v9 = objc_alloc_init(LSRebuildStatisticsGatherer);
  [(LSRebuildStatisticsGatherer *)v9 setIsUserRequested:v8];
  [(LSRebuildStatisticsGatherer *)v9 setRebuildReasonFlags:a2];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___LSServer_LSEnumerateAndRegisterAllBundles_block_invoke;
  v13[3] = &unk_1E6A1A208;
  v10 = v9;
  v14 = v10;
  v15 = &v16;
  [(LSRebuildStatisticsGatherer *)v10 performRebuild:v13];
  [(LSRebuildStatisticsGatherer *)v10 submitAnalytics];
  v11 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v11;
}

void sub_1816BCBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816BD07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1816BD3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSServer_RebuildApplicationDatabases(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v63[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1865D7C40]();
  v7 = objc_autoreleasePoolPush();
  _LSLogStepStart(9, 0, 0, @"Force rebuilding LaunchServices database", v8, v9, v10, v11, v42[0]);
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = __Block_byref_object_copy__4;
  v56[4] = __Block_byref_object_dispose__4;
  v57 = 0;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = _LSServer_DatabaseExecutionContext();
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = ___LSServer_RebuildApplicationDatabases_block_invoke;
  v50[3] = &unk_1E6A1A258;
  v54 = a4;
  v52 = v56;
  v53 = &v58;
  v14 = v12;
  v51 = v14;
  v55 = a5;
  [(LSDBExecutionContext *)v13 syncWrite:v50];

  if (*(v59 + 24))
  {
    v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
    v62 = @"UserRequestedAppDBRebuild";
    v63[0] = MEMORY[0x1E695E118];
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
    v24 = _LSServer_LSEnumerateAndRegisterAllBundles(v23, 0);
    v25 = v24;
    _LSLogStepFinished(9, v24 != 0, 0, @"Finished rebuilding LaunchServices database", v26, v27, v28, v29, v42[0]);
    v30 = _LSServer_DatabaseExecutionContext();
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = ___LSServer_RebuildApplicationDatabases_block_invoke_3;
    v42[3] = &unk_1E6A1A2A8;
    v48 = v56;
    v49 = v25;
    v43 = v14;
    v31 = v19;
    v44 = v31;
    v32 = v21;
    v45 = v32;
    v33 = v20;
    v46 = v33;
    v34 = v22;
    v47 = v34;
    [(LSDBExecutionContext *)v30 syncWrite:v42];
  }

  else
  {
    _LSLogStepFinished(9, 0, 0, @"Skipping rebuild", v15, v16, v17, v18, v42[0]);
  }

  v35 = _LSDatabaseGetSeedingGroup();
  dispatch_group_leave(v35);

  _Block_object_dispose(v56, 8);
  _Block_object_dispose(&v58, 8);
  objc_autoreleasePoolPop(v7);
  MEMORY[0x1865D7C50](v36, v37, v38, v39);
  v40 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_1816BDCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 152), 8);
  _Unwind_Resume(a1);
}

void enumeratePlaceholderAndInstalledApplicationRecords(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v21 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [LSApplicationRecord enumeratorWithOptions:64];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v18 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v1[2](v1, *(*(&v17 + 1) + 8 * v6), &v21);
      if (v21)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ((v21 & 1) == 0)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [LSApplicationRecord enumeratorWithOptions:0, 0];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
LABEL_12:
      v11 = 0;
      while (1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v1[2](v1, *(*(&v13 + 1) + 8 * v11), &v21);
        if (v21)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v13 objects:v22 count:16];
          if (v9)
          {
            goto LABEL_12;
          }

          break;
        }
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

id allAppexRecords()
{
  v0 = [LSApplicationExtensionRecord enumeratorWithOptions:0];
  v1 = [v0 allObjects];

  return v1;
}

void _LSServer_SyncWithMobileInstallation(void *a1)
{
  v1 = a1;
  v2 = _LSDatabaseGetMobileInstallSyncupGroup();
  dispatch_group_enter(v2);

  v3 = _LSServer_DatabaseExecutionContext();
  [(LSDBExecutionContext *)v3 assertNotActiveForThisThread];

  if ((atomic_fetch_or(&sMISyncFlag, 0x80u) & 0x80) == 0)
  {
    v4 = _LSInstallLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Syncing with MobileInstallation once in-flight installation activity is quiesced", buf, 2u);
    }

    MEMORY[0x1865D7C40]();
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = ___LSServer_SyncWithMobileInstallation_block_invoke;
    v6[3] = &unk_1E6A1A370;
    v7 = v1;
    _LSServer_ExecuteSyncWithQuiescedInstallationActivity(v6);
  }

  v5 = _LSDatabaseGetMobileInstallSyncupGroup();
  dispatch_group_leave(v5);
}

void sub_1816BED18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1015(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1865D71B0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id _getBlockToUpdateBundleRecordFromMIAndNotifyIfChanged(uint64_t *a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v26 = 0;
  v10 = _LSDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = v7;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEFAULT, "Checking if %@ needs to be registered at %@", buf, 0x16u);
  }

  if (FSNodeCreateWithURL(v8, 0, &v26))
  {
    v11 = _LSDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      _getBlockToUpdateBundleRecordFromMIAndNotifyIfChanged_cold_1();
    }

    v12 = 0;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    v13 = _LSBundleFindWithNode(a1, v26, &v25, &v24);
    if (v13 || _LSNodeHasChanged(v26, *a1, v25, v24, 0))
    {
      v14 = _LSDefaultLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = @"missing";
        *buf = 138412802;
        v28 = v8;
        v29 = 2112;
        if (!v13)
        {
          v15 = @"stale";
        }

        v30 = v7;
        v31 = 2112;
        v32 = v15;
        _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEFAULT, "Registering %@ (%@) because its record is %@", buf, 0x20u);
      }

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = ___getBlockToUpdateBundleRecordFromMIAndNotifyIfChanged_block_invoke;
      v20[3] = &unk_1E6A1A3C8;
      v21 = v8;
      v22 = v9;
      v23 = v7;
      v12 = MEMORY[0x1865D71B0](v20);

      v16 = v21;
    }

    else
    {
      v16 = _LSDefaultLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v8;
        _os_log_impl(&dword_18162D000, v16, OS_LOG_TYPE_DEFAULT, "Skipping %@ because its record is up-to-date", buf, 0xCu);
      }

      v12 = 0;
    }
  }

  v17 = MEMORY[0x1865D71B0](v12);

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

void sub_1816C015C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);

  _Unwind_Resume(a1);
}

void _LSServer_NoteTerminationRequestForMISync()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = 128;
  atomic_compare_exchange_strong(&sMISyncFlag, &v0, v0);
  v1 = v0 == 128;
  v2 = _LSDefaultLog();
  v3 = v2;
  if (v1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      _LSServer_NoteTerminationRequestForMISync_cold_1();
    }

    _LSDatabaseSetSyncInterrupted();
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5[0] = 67109120;
      v5[1] = sMISyncFlag;
      _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "MI sync was not running, %d.", v5, 8u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

id initMobileInstallationCopyFrameworkInfoForLaunchServices(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = MobileInstallationLibrary_frameworkLibrary;
  if (!MobileInstallationLibrary_frameworkLibrary)
  {
    v7 = dlopen("/System/Library/PrivateFrameworks/MobileInstallation.framework/MobileInstallation", 2);
    MobileInstallationLibrary_frameworkLibrary = v7;
  }

  softLinkMobileInstallationCopyFrameworkInfoForLaunchServices[0] = dlsym(v7, "MobileInstallationCopyFrameworkInfoForLaunchServices");
  v8 = (softLinkMobileInstallationCopyFrameworkInfoForLaunchServices[0])(v5, v6, a3);

  return v8;
}

void ___registerExtensionPointsFromMIFrameworkDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LaunchServices: registering extension point %@"];
  if (_LSLoggingQueue_onceToken != -1)
  {
    _registerMIPluginDictionary_cold_1();
  }

  v8 = _LSLoggingQueue_logQueue;
  *block = MEMORY[0x1E69E9820];
  *&block[8] = 3221225472;
  *&block[16] = ___LSSetCrashMessage_block_invoke;
  *&v25 = &unk_1E6A195E0;
  *(&v25 + 1) = v7;
  v9 = v7;
  dispatch_sync(v8, block);

  _LSLogStepStart(4, 0, v5, @"registering extension point", v10, v11, v12, v13, v5);
  active_platform = dyld_get_active_platform();
  v15 = _LSExtensionsLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 32);
    *block = 136316162;
    *&block[4] = "void _registerExtensionPointsFromMIFrameworkDictionary(NSDictionary<NSString *,id> *__strong)_block_invoke";
    *&block[12] = 2112;
    *&block[14] = v5;
    *&block[22] = 1024;
    LODWORD(v25) = active_platform;
    WORD2(v25) = 2112;
    *(&v25 + 6) = v22;
    HIWORD(v25) = 2112;
    v26 = v6;
    _os_log_debug_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEBUG, "%s Registering extension point with identifier '%@' platform: %d url '%@' SDK Dictionary: %@", block, 0x30u);
  }

  v16 = _LSRegisterExtensionPoint(0, 0, v5, active_platform, v6, *(a1 + 32)) == 0;
  _LSLogStepFinished(4, v16, v5, @"registered extension point", v17, v18, v19, v20, v23);

  v21 = *MEMORY[0x1E69E9840];
}

void init_ISInvalidateCacheEntriesForBundleIdentifier(void *a1)
{
  v2 = a1;
  v1 = IconServicesLibrary_frameworkLibrary_0;
  if (!IconServicesLibrary_frameworkLibrary_0)
  {
    v1 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
    IconServicesLibrary_frameworkLibrary_0 = v1;
  }

  softLink_ISInvalidateCacheEntriesForBundleIdentifier[0] = dlsym(v1, "_ISInvalidateCacheEntriesForBundleIdentifier");
  (softLink_ISInvalidateCacheEntriesForBundleIdentifier[0])(v2);
}

Class initAITransactionLog()
{
  if (!MobileInstallationLibrary_frameworkLibrary)
  {
    MobileInstallationLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/MobileInstallation.framework/MobileInstallation", 2);
  }

  result = objc_getClass("AITransactionLog");
  classAITransactionLog = result;
  getAITransactionLogClass[0] = AITransactionLogFunction;
  return result;
}

void LSApplicationStateChangedCallback(void *a1, uint64_t a2, void *a3)
{
  v5 = _LSDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LSApplicationStateChangedCallback_cold_1();
  }

  v6 = [a1 remoteObserver];
  v7 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __LSApplicationStateChangedCallback_block_invoke;
  v10[3] = &unk_1E6A18F50;
  v11 = v7;
  v12 = v6;
  v8 = v6;
  v9 = v7;
  dispatchAsyncToCallbackQueueWithTransaction("com.apple.launchservices.LSApplicationStateChangedCallback", v10);
}

void __LSApplicationWorkspaceObserverCallback_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  _LSContextInvalidate();
  v2 = [*(a1 + 32) isEqualToString:@"com.lsinstallprogress.networkusagechanged"];
  v3 = *(a1 + 40);
  if (!v2)
  {
    v5 = [v3 objectForKeyedSubscript:@"LSApplicationProxiesList"];
    if ([*(a1 + 32) isEqualToString:@"com.lsinstallprogress.appcontrols.cancel"])
    {
      v6 = &selRef_applicationInstallsDidCancel_;
    }

    else if ([*(a1 + 32) isEqualToString:@"com.lsinstallprogress.appcontrols.pause"])
    {
      v6 = &selRef_applicationInstallsDidPause_;
    }

    else if ([*(a1 + 32) isEqualToString:@"com.lsinstallprogress.appcontrols.prioritize"])
    {
      v6 = &selRef_applicationInstallsDidPrioritize_;
    }

    else
    {
      if (![*(a1 + 32) isEqualToString:@"com.lsinstallprogress.appcontrols.resume"])
      {
LABEL_24:

        v16 = *MEMORY[0x1E69E9840];
        return;
      }

      v6 = &selRef_applicationInstallsDidResume_;
    }

    v7 = *v6;
    if (*v6)
    {
      if ([v5 count])
      {
        v8 = *(a1 + 48);
        if (objc_opt_respondsToSelector())
        {
          v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v10 = v5;
          v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v19;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v19 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = [LSApplicationProxy applicationProxyForIdentifier:*(*(&v18 + 1) + 8 * i) placeholder:1];
                [v9 addObject:v15];
              }

              v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
            }

            while (v12);
          }

          [*(a1 + 48) v7];
        }
      }
    }

    goto LABEL_24;
  }

  v17 = [v3 objectForKeyedSubscript:@"usingNetwork"];
  [*(a1 + 48) networkUsageChanged:{objc_msgSend(v17, "BOOLValue")}];
  v4 = *MEMORY[0x1E69E9840];
}

void __LSApplicationWorkspacePluginsChangedCallback_block_invoke(id *a1)
{
  v82 = *MEMORY[0x1E69E9840];
  _LSContextInvalidate();
  v2 = 0x1E695D000uLL;
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([a1[4] isEqualToString:@"com.apple.LaunchServices.pluginsregistered"])
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v4 = [a1[5] allKeys];
    v5 = [v4 countByEnumeratingWithState:&v64 objects:v78 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v65;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v65 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:*(*(&v64 + 1) + 8 * i)];
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v64 objects:v78 count:16];
      }

      while (v6);
    }

    v63 = 0;
    v10 = v3;
    if (_LSCurrentProcessMayMapDatabase())
    {
      v76 = 0;
      v11 = [LSApplicationExtensionRecord applicationExtensionRecordsForUUIDs:v10 outContainingBundleRecords:&v63 error:&v76];
      v12 = v76;
      v13 = v12;
      if (v11)
      {
        v53 = v12;
        v54 = v10;
        v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v15 = v11;
        v16 = [v15 countByEnumeratingWithState:&v72 objects:v81 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v73;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v73 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v72 + 1) + 8 * j);
              v21 = [v20 compatibilityObject];
              if (v21)
              {
                [v14 addObject:v21];
              }

              else
              {
                v22 = _LSInstallLog();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v80 = v20;
                  _os_log_error_impl(&dword_18162D000, v22, OS_LOG_TYPE_ERROR, "Could not get a proxy for appex record %@; did it go away?", buf, 0xCu);
                }
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v72 objects:v81 count:16];
          }

          while (v17);
        }

        v10 = v54;
        v2 = 0x1E695D000;
        if (v14)
        {
LABEL_47:

          v30 = [v63 mutableCopy];
          v29 = sel_pluginsDidInstall_;

          if (!sel_pluginsDidInstall_)
          {
            goto LABEL_51;
          }

          goto LABEL_48;
        }
      }

      else
      {
        v31 = _LSInstallLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          __LSApplicationWorkspacePluginsChangedCallback_block_invoke_cold_1();
        }
      }
    }

    v32 = _LSInstallLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      __LSApplicationWorkspacePluginsChangedCallback_block_invoke_cold_2();
    }

    v14 = objc_alloc_init(*(v2 + 3952));
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v33 = v10;
    v34 = [v33 countByEnumeratingWithState:&v68 objects:buf count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v69;
      do
      {
        for (k = 0; k != v35; ++k)
        {
          if (*v69 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [LSPlugInKitProxy pluginKitProxyForUUID:*(*(&v68 + 1) + 8 * k)];
          if (v38)
          {
            [v14 addObject:v38];
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v68 objects:buf count:16];
      }

      while (v35);
    }

    goto LABEL_47;
  }

  if (([a1[4] isEqualToString:@"com.apple.LaunchServices.pluginsunregistered"] & 1) == 0 && !objc_msgSend(a1[4], "isEqualToString:", @"com.apple.LaunchServices.pluginswillberemoved"))
  {
    v14 = 0;
    v30 = 0;
    goto LABEL_51;
  }

  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = a1[5];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __LSApplicationWorkspacePluginsChangedCallback_block_invoke_2;
  v60[3] = &unk_1E6A1A3F0;
  v61 = v3;
  v25 = v23;
  v62 = v25;
  [v24 enumerateKeysAndObjectsUsingBlock:v60];
  v26 = a1[4];
  v14 = v25;
  v27 = [v26 isEqualToString:@"com.apple.LaunchServices.pluginsunregistered"];
  v28 = &selRef_pluginsDidUninstall_;
  if (!v27)
  {
    v28 = &selRef_pluginsWillUninstall_;
  }

  v29 = *v28;

  v30 = 0;
  if (v29)
  {
LABEL_48:
    if ([v14 count])
    {
      v39 = a1[6];
      if (objc_opt_respondsToSelector())
      {
        [a1[6] v29];
      }
    }
  }

LABEL_51:
  if ([v30 count])
  {
    do
    {
      v40 = objc_autoreleasePoolPush();
      v41 = [v30 lastObject];
      context = v40;
      if (objc_opt_respondsToSelector())
      {
        v42 = [v41 applicationExtensionRecords];
      }

      else
      {
        v42 = 0;
      }

      [v41 _resolveAllProperties];
      [v41 detach];
      v43 = v30;
      [v30 removeLastObject];

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v44 = v42;
      v45 = [v44 countByEnumeratingWithState:&v56 objects:v77 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v57;
        do
        {
          for (m = 0; m != v46; ++m)
          {
            if (*v57 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v56 + 1) + 8 * m);
            v50 = [v49 uniqueIdentifier];
            v51 = [v3 containsObject:v50];

            if (v51)
            {
              [v49 _resolveAllProperties];
              [v49 detach];
            }
          }

          v46 = [v44 countByEnumeratingWithState:&v56 objects:v77 count:16];
        }

        while (v46);
      }

      objc_autoreleasePoolPop(context);
      v30 = v43;
    }

    while ([v43 count]);
  }

  v52 = *MEMORY[0x1E69E9840];
}

void __LSApplicationWorkspacePluginsChangedCallback_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x1E696AFB0];
  v7 = a2;
  v8 = [[v6 alloc] initWithUUIDString:v7];

  [*(a1 + 32) addObject:v8];
  v19 = v5;
  v9 = [v19 objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
  v10 = [v19 objectForKeyedSubscript:@"NSExtensionIdentifier"];
  v11 = [v19 objectForKeyedSubscript:@"LSEffectiveIdentifier"];
  v12 = [v19 objectForKeyedSubscript:*MEMORY[0x1E695E500]];
  v13 = [v19 objectForKeyedSubscript:@"_LSBundlePath"];
  v14 = v13;
  if (v8 && v13)
  {
    v15 = !v9 || v10 == 0;
    if (!v15 && v12 != 0)
    {
      v17 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v13 isDirectory:1];
      v18 = [LSPlugInKitProxy plugInKitProxyForUUID:v8 bundleIdentifier:v9 pluginIdentifier:v10 effectiveIdentifier:v11 version:v12 bundleURL:v17];
      if (v18)
      {
        [*(a1 + 40) addObject:v18];
      }
    }
  }
}

void __LSApplicationStateChangedCallback_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  _LSContextInvalidate();
  v2 = [*(a1 + 32) allKeys];
  v3 = v2;
  if (v2)
  {
    if ([v2 count])
    {
      v4 = *(a1 + 40);
      if (objc_opt_respondsToSelector())
      {
        v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v6 = v3;
        v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v15;
          do
          {
            v10 = 0;
            do
            {
              if (*v15 != v9)
              {
                objc_enumerationMutation(v6);
              }

              v11 = [LSApplicationProxy applicationProxyForIdentifier:*(*(&v14 + 1) + 8 * v10), v14];
              [v5 addObject:v11];

              ++v10;
            }

            while (v8 != v10);
            v8 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
          }

          while (v8);
        }

        v12 = _LSDefaultLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v19 = v5;
          _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "Preparing to call applicationStateDidChange: with %@", buf, 0xCu);
        }

        [*(a1 + 40) applicationStateDidChange:v5];
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __unsubscribeFromLSAWDistributedNotification_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    return (a2 - 1);
  }

  v4 = _LSDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    __unsubscribeFromLSAWDistributedNotification_block_invoke_cold_1(a1);
  }

  return 0;
}

uint64_t initUISOpenApplicationOptionClickAttribution()
{
  v0 = UIKitServicesLibrary_frameworkLibrary_0;
  if (!UIKitServicesLibrary_frameworkLibrary_0)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/UIKitServices.framework/UIKitServices", 2);
    UIKitServicesLibrary_frameworkLibrary_0 = v0;
  }

  result = *dlsym(v0, "UISOpenApplicationOptionClickAttribution");
  constantUISOpenApplicationOptionClickAttribution = result;
  getUISOpenApplicationOptionClickAttribution[0] = UISOpenApplicationOptionClickAttributionFunction;
  return result;
}

uint64_t initUISOpenApplicationOptionPasteSharingToken()
{
  v0 = UIKitServicesLibrary_frameworkLibrary_0;
  if (!UIKitServicesLibrary_frameworkLibrary_0)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/UIKitServices.framework/UIKitServices", 2);
    UIKitServicesLibrary_frameworkLibrary_0 = v0;
  }

  result = *dlsym(v0, "UISOpenApplicationOptionPasteSharingToken");
  constantUISOpenApplicationOptionPasteSharingToken = result;
  getUISOpenApplicationOptionPasteSharingToken[0] = UISOpenApplicationOptionPasteSharingTokenFunction;
  return result;
}

uint64_t __handleSaveObserverBehavior_block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    return [v5 operationWithUUIDWasSaved:{v6, a3}];
  }

  else
  {
    return [v5 operationWithUUID:v6 didFailToSaveWithError:a3];
  }
}

void _LSSetCrashReporterMessage(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = strdup([v1 UTF8String]);
    v4 = _LSDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      _LSSetCrashReporterMessage_cold_1();
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = _LSSetCrashReporterMessage_messagePtr;
  v6 = _LSSetCrashReporterMessage_messagePtr;
  atomic_compare_exchange_strong_explicit(&_LSSetCrashReporterMessage_messagePtr, &v6, v3, memory_order_relaxed, memory_order_relaxed);
  if (v6 == v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  free(v7);
  qword_1ED444C70 = _LSSetCrashReporterMessage_messagePtr;
}

uint64_t initMobileInstallationUpdatePlaceholderMetadata(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = a4;
  v11 = MobileInstallationLibrary_frameworkLibrary;
  if (!MobileInstallationLibrary_frameworkLibrary)
  {
    v11 = dlopen("/System/Library/PrivateFrameworks/MobileInstallation.framework/MobileInstallation", 2);
    MobileInstallationLibrary_frameworkLibrary = v11;
  }

  softLinkMobileInstallationUpdatePlaceholderMetadata[0] = dlsym(v11, "MobileInstallationUpdatePlaceholderMetadata");
  v12 = (softLinkMobileInstallationUpdatePlaceholderMetadata[0])(v9, a2, a3, v10, a5);

  return v12;
}

void __registerSingleMIDict_block_invoke(void **a1)
{
  v2 = _LSDatabaseGetSeedingGroup();
  dispatch_group_enter(v2);

  if (a1[4] && ([a1[5] isEqualToString:@"Framework"] & 1) == 0)
  {
    if ([a1[5] isEqualToString:@"PluginKitPlugin"])
    {
      _registerMIPluginDictionary(a1[4], a1[6]);
    }

    else if (([a1[5] isEqualToString:@"CoreServices"] & 1) != 0 || (objc_msgSend(a1[5], "isEqualToString:", @"Internal") & 1) != 0 || (objc_msgSend(a1[5], "isEqualToString:", @"User") & 1) != 0 || (objc_msgSend(a1[5], "isEqualToString:", @"System") & 1) != 0 || (objc_msgSend(a1[5], "isEqualToString:", @"SystemAppPlaceholder") & 1) != 0 || objc_msgSend(a1[5], "isEqualToString:", @"VPNPlugin"))
    {
      v3 = objc_alloc(MEMORY[0x1E695DFF8]);
      v4 = [a1[4] objectForKey:@"Path"];
      v5 = [v3 initFileURLWithPath:v4 isDirectory:1];

      v6 = *MEMORY[0x1E695E480];
      Unique = _CFBundleCreateUnique();
      _LSLogStepStart(4, 0, a1[7], @"registering app bundle", v8, v9, v10, v11, v29);
      v12 = registerApplicationWithDictionary(a1[4], 0x21u) == 0;
      _LSLogStepFinished(4, v12, a1[7], @"registered app bundle", v13, v14, v15, v16, v30);
      if (Unique)
      {
        CFRelease(Unique);
      }

      v17 = [a1[4] objectForKeyedSubscript:@"ParallelPlaceholderPath"];
      if (v17)
      {
        v18 = [a1[4] mutableCopy];
        v19 = MEMORY[0x1E695E118];
        [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsPlaceholder"];
        [v18 setObject:v17 forKeyedSubscript:@"Path"];
        [v18 setObject:v19 forKeyedSubscript:@"IsParallelPlaceholder"];
        _LSLogStepStart(4, 0, a1[7], @"registering parallel placeholder", v20, v21, v22, v23, v31);
        v24 = registerApplicationWithDictionary(v18, 0x21u) == 0;
        _LSLogStepFinished(4, v24, a1[7], @"registered parallel placeholder", v25, v26, v27, v28, v32);
      }
    }
  }

  if (_LSLoggingQueue_onceToken != -1)
  {
    _registerMIPluginDictionary_cold_1();
  }

  dispatch_sync(_LSLoggingQueue_logQueue, &__block_literal_global_1152);
  v33 = _LSDatabaseGetSeedingGroup();
  dispatch_group_leave(v33);
}

uint64_t initMobileInstallationEnumerateAllInstalledItemDictionaries(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MobileInstallationLibrary_frameworkLibrary;
  if (!MobileInstallationLibrary_frameworkLibrary)
  {
    v5 = dlopen("/System/Library/PrivateFrameworks/MobileInstallation.framework/MobileInstallation", 2);
    MobileInstallationLibrary_frameworkLibrary = v5;
  }

  softLinkMobileInstallationEnumerateAllInstalledItemDictionaries = dlsym(v5, "MobileInstallationEnumerateAllInstalledItemDictionaries");
  v6 = (softLinkMobileInstallationEnumerateAllInstalledItemDictionaries)(v3, v4);

  return v6;
}

{
  v3 = a1;
  v4 = a2;
  v5 = MobileInstallationLibrary(void)::frameworkLibrary;
  if (!MobileInstallationLibrary(void)::frameworkLibrary)
  {
    v5 = dlopen("/System/Library/PrivateFrameworks/MobileInstallation.framework/MobileInstallation", 2);
    MobileInstallationLibrary(void)::frameworkLibrary = v5;
  }

  softLinkMobileInstallationEnumerateAllInstalledItemDictionaries[0] = dlsym(v5, "MobileInstallationEnumerateAllInstalledItemDictionaries");
  v6 = (softLinkMobileInstallationEnumerateAllInstalledItemDictionaries[0])(v3, v4);

  return v6;
}

void ___getBlockToUpdateBundleRecordFromMIAndNotifyIfChanged_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  v3 = *(a1 + 32);
  Unique = _CFBundleCreateUnique();
  v5 = registerApplicationWithDictionary(*(a1 + 40), 0x40000000u);
  if (v5)
  {
    v6 = v5;
    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 48);
      *buf = 67109634;
      *v20 = v6;
      *&v20[4] = 2112;
      *&v20[6] = v14;
      *&v20[14] = 2112;
      *&v20[16] = v15;
      _os_log_error_impl(&dword_18162D000, v7, OS_LOG_TYPE_ERROR, "registerApplicationWithDictionary returned error %d for %@ (%@)", buf, 0x1Cu);
    }
  }

  v8 = [LSApplicationProxy applicationProxyForBundleURL:*(a1 + 32)];
  if ([v8 isInstalled])
  {
    v9 = 7;
  }

  else if ([v8 isPlaceholder])
  {
    v9 = 1;
  }

  else
  {
    v10 = _LSProgressLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 48);
      *buf = 138412802;
      *v20 = v8;
      *&v20[8] = 2112;
      *&v20[10] = v16;
      *&v20[18] = 2112;
      *&v20[20] = v17;
      _os_log_error_impl(&dword_18162D000, v10, OS_LOG_TYPE_ERROR, "Got app proxy %@ for %@ (%@), not sending any notification", buf, 0x20u);
    }

    v9 = 0;
  }

  v11 = +[_LSInstallProgressService sharedInstance];
  v18 = v8;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  [v11 sendNotification:v9 forAppProxies:v12 Plugins:0 completion:0];

  if (Unique)
  {
    CFRelease(Unique);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void ___getBlockToUpdatePluginRecordFromMIAndNotifyIfChanged_block_invoke(uint64_t a1)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E480];
  v4 = (a1 + 32);
  v3 = *(a1 + 32);
  Unique = _CFBundleCreateUnique();
  v7 = *(a1 + 40);
  v6 = (a1 + 40);
  _LSLogStepStart(4, 0, v7, @"registering app extension", v8, v9, v10, v11, v26);
  v12 = *v4;
  v13 = v6[1];
  v32 = *v6;
  v33[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
  v15 = _LSRegisterPluginWithInfo(v12, v14);

  if (v15)
  {
    v16 = _LSDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *v4;
      v18 = *v6;
      LODWORD(v26) = 67109634;
      HIDWORD(v26) = v15;
      v27 = 2112;
      v28 = v17;
      v29 = 2112;
      v30 = v18;
      _os_log_error_impl(&dword_18162D000, v16, OS_LOG_TYPE_ERROR, "_LSRegisterPluginWithInfo returned error %d for %@ (%@)", &v26, 0x1Cu);
    }
  }

  else
  {
    v16 = [LSPlugInKitProxy pluginKitProxyForURL:*v4];
    if (v16)
    {
      v19 = +[_LSInstallProgressService sharedInstance];
      v31 = v16;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
      [v19 sendNotification:@"com.apple.LaunchServices.pluginsregistered" ForPlugins:v20];
    }

    else
    {
      v19 = _LSDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        ___getBlockToUpdatePluginRecordFromMIAndNotifyIfChanged_block_invoke_cold_1(v6);
      }
    }
  }

  _LSLogStepFinished(4, v15 == 0, *v6, @"registered app extension", v21, v22, v23, v24, v26);
  if (Unique)
  {
    CFRelease(Unique);
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t __Block_byref_object_copy__1197(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void ___uninstallMIBundlesNotInSet_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 168);
  if (v4 == 13 || v4 == 2)
  {
    v9 = a1 + 48;
    v10 = *(a3 + 12);
    [(_LSDatabase *)*(*(*(a1 + 48) + 8) + 48) store];
    v12 = _CSStringCopyCFString();
    v11 = [[_LSEnumeratedBundleInfo alloc] initWithBundleID:v12 isPlaceholder:(*(a3 + 172) >> 18) & 1];
    if (([*(v9 - 16) containsObject:v11] & 1) == 0)
    {
      ___uninstallMIBundlesNotInSet_block_invoke_cold_1(v9, a2, a3, a1);
    }
  }
}

void OUTLINED_FUNCTION_7_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_12_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void OUTLINED_FUNCTION_15_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

uint64_t *OUTLINED_FUNCTION_17@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return [a10 countByEnumeratingWithState:&a13 objects:&a29 count:16];
}

void sub_1816C2F88(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1816C4044(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1816C56EC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id __copy_helper_atomic_property_(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = result;
  *(a1 + 48) = v6;
  return result;
}

void sub_1816C75E8(_Unwind_Exception *a1)
{
  std::optional<LSBinding>::~optional(v3);

  _Unwind_Resume(a1);
}

uint64_t std::optional<LSBinding>::operator=[abi:nn200100]<LSBinding,void>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  if (v4 == 1)
  {
    v6 = *(a2 + 32);
    *(a2 + 32) = 0;
    v7 = *(a1 + 32);
    *(a1 + 32) = v6;

    v8 = *(a2 + 40);
    *(a2 + 40) = 0;
    v9 = *(a1 + 40);
    *(a1 + 40) = v8;

    v10 = *(a2 + 48);
  }

  else
  {
    v11 = *(a2 + 32);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a1 + 32) = v11;
    v10 = *(a2 + 48);
    *(a1 + 56) = 1;
  }

  *(a1 + 48) = v10;
  return a1;
}

uint64_t std::optional<LSBinding>::~optional(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
  }

  return a1;
}

void sub_1816C7E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void **a36)
{
  _Block_object_dispose(&a27, 8);
  a36 = a10;
  std::vector<LSApplicationRecord * {__strong}>::__destroy_vector::operator()[abi:nn200100](&a36);

  _Unwind_Resume(a1);
}

void sub_1816C8094(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<LSApplicationRecord * {__strong}>::~__split_buffer(va);

  _Unwind_Resume(a1);
}

void sub_1816C84F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  _Block_object_dispose((v25 - 152), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__142(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 std::__optional_storage_base<LSBinding,false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<LSBinding,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) == *(a2 + 56))
  {
    if (*(a1 + 56))
    {
      v4 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v4;
      v5 = *(a2 + 32);
      *(a2 + 32) = 0;
      v6 = *(a1 + 32);
      *(a1 + 32) = v5;

      v7 = *(a2 + 40);
      *(a2 + 40) = 0;
      v8 = *(a1 + 40);
      *(a1 + 40) = v7;

      *(a1 + 48) = *(a2 + 48);
    }
  }

  else if (*(a1 + 56))
  {

    *(a1 + 56) = 0;
  }

  else
  {
    v10 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v10;
    result = *(a2 + 32);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a1 + 32) = result;
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = 1;
  }

  return result;
}

void std::vector<LSApplicationRecord * {__strong}>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<LSApplicationRecord * {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5++;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<LSApplicationRecord * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void _LSWriteApplicationPlaceholderToURL(void *a1, void *a2, uint64_t a3, void *a4)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (a1)
  {
    v8 = _CFURLIsFileURL();
    if (a2)
    {
      if (v8)
      {
        v9 = _CFURLIsFileURL();
        if (v7)
        {
          if (!a3 && v9)
          {
            v10 = a1;
            v11 = a2;
            if (_LSGetPlaceholderQueue(void)::once != -1)
            {
              _LSWriteApplicationPlaceholderToURL_cold_1();
            }

            v12 = _LSGetPlaceholderQueue(void)::result;
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = ___LSWriteApplicationPlaceholderToURL_block_invoke;
            v17[3] = &unk_1E6A193B8;
            v18 = v10;
            v19 = v11;
            v20 = v7;
            v13 = v11;
            v14 = v10;
            dispatch_async(v12, v17);

            goto LABEL_12;
          }
        }
      }
    }
  }

  if (v7)
  {
    v21 = *MEMORY[0x1E696A278];
    v22[0] = @"invalid input parameters";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v14, "_LSWriteApplicationPlaceholderToURL", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSAppPlaceholders.mm", 69);
    (*(v7 + 2))(v7, 0, v15);
LABEL_12:
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t _LSWriteBundlePlaceholderToURLInternal(id *a1, NSURL *a2, NSURL *a3)
{
  v161 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v112 = v4;
  v113 = v5;
  if (v4)
  {
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v106 = [MEMORY[0x1E696AAA8] currentHandler];
    v107 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"OSStatus _LSWriteBundlePlaceholderToURLInternal(Context &, NSURL *__strong, NSURL *__strong)"}];
    [v106 handleFailureInFunction:v107 file:@"LSAppPlaceholders.mm" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"inSrcURL != nil"}];

    if (v113)
    {
      goto LABEL_3;
    }
  }

  v108 = [MEMORY[0x1E696AAA8] currentHandler];
  v109 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"OSStatus _LSWriteBundlePlaceholderToURLInternal(Context &, NSURL *__strong, NSURL *__strong)"}];
  [v108 handleFailureInFunction:v109 file:@"LSAppPlaceholders.mm" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"inDestURL != nil"}];

LABEL_3:
  v156 = 0;
  v6 = FSNodeCreateWithURL(v4, 1, &v156);
  if (!v6)
  {
    if (([v156 isDirectory] & 1) == 0)
    {
      v7 = 0;
      v6 = 4294965889;
      goto LABEL_9;
    }

    path.__pn_.__r_.__value_.__r.__words[0] = 0;
    v8 = [(NSURL *)v113 URLByDeletingLastPathComponent];
    v6 = FSNodeCreateWithURL(v8, 1, &path.__pn_.__r_.__value_.__l.__data_);

    if (v6)
    {

      goto LABEL_4;
    }

    v20 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v21 = [path.__pn_.__r_.__value_.__l.__data_ URL];
    v155 = 0;
    v22 = [v20 URLForDirectory:99 inDomain:1 appropriateForURL:v21 create:1 error:&v155];
    v23 = v155;

    if (v22)
    {
      v154 = v23;
      v115 = [[FSNode alloc] initWithURL:v22 flags:8 error:&v154];
      v24 = v154;

      if (v115)
      {
        v6 = 0;
        goto LABEL_104;
      }

      v23 = v24;
    }

    v6 = _LSGetOSStatusFromNSError(v23);
    v115 = 0;
    v24 = v23;
LABEL_104:

    if (v6)
    {
      v7 = v115;
      goto LABEL_9;
    }

    v79 = +[_LSDServiceDomain defaultServiceDomain];
    v80 = LaunchServices::Database::Context::_get(a1, v79, 0);

    if (v80 || (v94 = a1[3]) == 0)
    {
      v153 = 0;
      v152 = 0;
      v151 = 0;
    }

    else
    {
      v95 = v94;
      v6 = _LSGetOSStatusFromNSError(v94);

      v153 = 0;
      v152 = 0;
      v151 = 0;
      v7 = v115;
      if (v6)
      {
        goto LABEL_122;
      }
    }

    v81 = +[_LSDServiceDomain defaultServiceDomain];
    v82 = LaunchServices::Database::Context::_get(a1, v81, 0);

    v83 = v82;
    v7 = v115;
    v84 = _LSGetBundleClassForNode(v83, v156);
    if (v84 != 2)
    {
      if (v84 != 12)
      {
        v6 = 4294956485;
        goto LABEL_30;
      }

      v150 = 0;
      v85 = [v156 extensionWithError:&v150];
      v86 = v150;
      v87 = v86;
      if (v85)
      {
        v88 = [v85 caseInsensitiveCompare:@"appex"] == 0;

        if (!v88)
        {
          v6 = 4294956485;
          goto LABEL_29;
        }
      }

      else
      {
        v6 = _LSGetOSStatusFromNSError(v86);

        if (v6)
        {
          v110 = 0;
LABEL_130:
          v7 = v115;
          goto LABEL_10;
        }
      }

      v100 = +[_LSDServiceDomain defaultServiceDomain];
      v101 = LaunchServices::Database::Context::_get(a1, v100, 0);

      v102 = *v101;
      v149 = 0;
      v103 = _LSPluginFindWithInfo(v102, 0, 0, 0, v156, &v151, &v149);
      v104 = v149;
      v105 = v104;
      v110 = v103;
      if (v103)
      {
        v6 = 0;
      }

      else
      {
        v6 = _LSGetOSStatusFromNSError(v104);
      }

      goto LABEL_130;
    }

    v96 = +[_LSDServiceDomain defaultServiceDomain];
    v97 = LaunchServices::Database::Context::_get(a1, v96, 0);

    v98 = v97;
    v7 = v115;
    v6 = _LSFindOrRegisterBundleNode(v98, v156, 0, 0x2000000u, 0, &v153, &v152);
    if (v6 == -9499)
    {
      v99 = _LSDefaultLog();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
      {
        LODWORD(path.__pn_.__r_.__value_.__l.__data_) = 138477827;
        *(path.__pn_.__r_.__value_.__r.__words + 4) = v156;
        _os_log_impl(&dword_18162D000, v99, OS_LOG_TYPE_INFO, "Unable to find or register bundle for node %{private}@, so returning kLSApplicationNotFoundErr.", &path, 0xCu);
      }

      v110 = 0;
      v6 = 4294956482;
      v7 = v115;
      goto LABEL_12;
    }

LABEL_122:
    v110 = 0;
    goto LABEL_10;
  }

LABEL_4:
  v7 = 0;
LABEL_9:
  v110 = 0;
  v153 = 0;
  v152 = 0;
  v151 = 0;
LABEL_10:
  if (v6 && v6 != -10814)
  {
    goto LABEL_30;
  }

LABEL_12:
  v148 = 0;
  v115 = v7;
  v9 = [v156 bundleInfoDictionaryWithError:&v148];
  v10 = v148;
  v11 = v10;
  if (v9)
  {
    v12 = [v9 mutableCopy];
    v13 = v12;
    if (v12)
    {
      [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsPlaceholder"];
      [v13 setObject:&unk_1EEF8E9C0 forKeyedSubscript:@"LSInstallType"];
      [v13 removeObjectForKey:@"CFBundleInfoPlistURL"];
      [v13 removeObjectForKey:@"CFBundleRawInfoPlistURL"];
      v14 = [MEMORY[0x1E696AE40] dataWithPropertyList:v13 format:200 options:0 error:0];
      if (v14)
      {
        v15 = [(FSNode *)v7 childNodeWithRelativePath:@"Info.plist" flags:0 error:0];
        v16 = v15;
        if (v15)
        {
          v17 = [v15 URL];
          v147 = 0;
          v18 = [v14 writeToURL:v17 options:1 error:&v147];
          v19 = v147;

          if (v18)
          {
            v6 = 0;
          }

          else
          {
            v6 = _LSGetOSStatusFromNSError(v19);
          }
        }
      }
    }

    else
    {
      v6 = 4294967255;
    }
  }

  else
  {
    v6 = _LSGetOSStatusFromNSError(v10);
  }

  if (v6)
  {
    goto LABEL_29;
  }

  v27 = [v156 URL];
  v28 = [v27 URLByDeletingLastPathComponent];

  if (v28 && (v29 = _LSCopyiTunesMetadataDictionaryForAppContainerURL(v28), v29, v29))
  {
    v30 = [MEMORY[0x1E696AE40] dataWithPropertyList:v29 format:200 options:0 error:0];
    if (v30)
    {
      v31 = [(FSNode *)v115 childNodeWithRelativePath:@"iTunesMetadata.plist" flags:0 error:0];
      v32 = v31;
      if (v31)
      {
        v33 = [v31 URL];
        v146 = 0;
        v34 = [v30 writeToURL:v33 options:1 error:&v146];
        v35 = v146;

        if (v34)
        {
          v6 = 0;
        }

        else
        {
          v6 = _LSGetOSStatusFromNSError(v35);
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v36 = _LSDefaultLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      _LSWriteBundlePlaceholderToURLInternal(v112, v36);
    }
  }

  v37 = [v156 copyCFBundleWithError:0];
  if (v37)
  {
    cf = v37;
    v144 = 0u;
    v145 = 0u;
    v142 = 0u;
    v143 = 0u;
    obj = CFBundleCopyBundleLocalizations(v37);
    v38 = [(__CFArray *)obj countByEnumeratingWithState:&v142 objects:v160 count:16];
    if (v38)
    {
      v39 = *v143;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v143 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v142 + 1) + 8 * i);
          v42 = v115;
          v43 = [v41 stringByAppendingPathExtension:@"lproj"];
          v44 = _LSCreatePlaceholderSubfolder(v42, v43);

          if (v44)
          {
            v45 = [@"InfoPlist" stringByAppendingPathExtension:@"strings"];
            _LSCopyResourceFileToPlaceholder(cf, v44, v41, v45);
          }
        }

        v38 = [(__CFArray *)obj countByEnumeratingWithState:&v142 objects:v160 count:16];
      }

      while (v38);
    }

    if (IconServicesLibrary(void)::frameworkLibrary || (IconServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2)) != 0)
    {
      v46 = [MEMORY[0x1E695DFD8] setWithObjects:{@"CFBundlePrimaryIcon", @"CFBundleAlternateIcons", 0}];
      if (softLinkLICopyIconPathsFromBundleForStyles)
      {
        v47 = softLinkLICopyIconPathsFromBundleForStyles(cf, v46);
      }

      else
      {
        v47 = 0;
      }

      v140 = 0u;
      v141 = 0u;
      v138 = 0u;
      v139 = 0u;
      v48 = v47;
      v49 = [(__CFSet *)v48 countByEnumeratingWithState:&v138 objects:v159 count:16];
      if (v49)
      {
        v50 = *v139;
        do
        {
          for (j = 0; j != v49; ++j)
          {
            if (*v139 != v50)
            {
              objc_enumerationMutation(v48);
            }

            _LSCopyResourceURLToPlaceholder(cf, v115, *(*(&v138 + 1) + 8 * j));
          }

          v49 = [(__CFSet *)v48 countByEnumeratingWithState:&v138 objects:v159 count:16];
        }

        while (v49);
      }

      _LSCopyResourceFileToPlaceholder(cf, v115, 0, &cfstr_AssetsCar.isa);
    }

    else
    {
      if (!v152)
      {
        goto LABEL_68;
      }

      v89 = +[_LSDServiceDomain defaultServiceDomain];
      v90 = LaunchServices::Database::Context::_get(a1, v89, 0);

      v91 = *v90;
      v92 = v91;
      [(_LSDatabase *)v91 store];
      distributorInfo = v152->distributorInfo;
      v131 = MEMORY[0x1E69E9820];
      v132 = 3321888768;
      v133 = ___ZL38_LSWriteBundlePlaceholderToURLInternalRN14LaunchServices8Database7ContextEP5NSURLS4__block_invoke;
      v134 = &unk_1EEF62440;
      v46 = v91;
      v135 = v46;
      CFRetain(cf);
      v136 = v115;
      _CSArrayEnumerateAllValues();

      CFRelease(cf);
      v137 = 0;
      v48 = v46;
    }

LABEL_68:
    CFRelease(cf);
  }

  v52 = v152;
  if (v152)
  {
    if (!v152->libraryPath)
    {
      goto LABEL_73;
    }

    v53 = +[_LSDServiceDomain defaultServiceDomain];
    v54 = LaunchServices::Database::Context::_get(a1, v53, 0);

    v55 = *v54;
    path.__pn_.__r_.__value_.__r.__words[0] = 0;
    path.__pn_.__r_.__value_.__l.__size_ = &path;
    path.__pn_.__r_.__value_.__r.__words[2] = 0x2020000000;
    v158 = 0;
    v129[0] = 0;
    v129[1] = v129;
    v129[2] = 0x2020000000;
    v130 = 0;
    v56 = v55;
    [(_LSDatabase *)v55 store];
    libraryPath = v152->libraryPath;
    v120 = MEMORY[0x1E69E9820];
    v121 = 3221225472;
    v122 = ___ZL38_LSWriteBundlePlaceholderToURLInternalRN14LaunchServices8Database7ContextEP5NSURLS4__block_invoke_60;
    v123 = &unk_1E6A1A688;
    v124 = v55;
    p_path = &path;
    v127 = v129;
    v125 = v115;
    v128 = a1;
    _CSArrayEnumerateAllValues();

    _Block_object_dispose(v129, 8);
    _Block_object_dispose(&path, 8);

    v52 = v152;
  }

  if (!v52)
  {
LABEL_74:
    if (!v110 || !*(v110 + 140))
    {
      goto LABEL_87;
    }

    goto LABEL_76;
  }

LABEL_73:
  if (!v52->base.entitlements)
  {
    goto LABEL_74;
  }

LABEL_76:
  v58 = +[_LSDServiceDomain defaultServiceDomain];
  v59 = LaunchServices::Database::Context::_get(a1, v58, 0);

  v60 = *v59;
  v62 = v60;
  if (v152 && (entitlements = v152->base.entitlements) != 0 || v110 && (entitlements = *(v110 + 140)) != 0)
  {
    v64 = _LSPlistGetDictionary(v60, entitlements, v61);
    if (v64)
    {
      v65 = [MEMORY[0x1E696AE40] dataWithPropertyList:v64 format:200 options:0 error:0];
      if (v65)
      {
        v66 = [(FSNode *)v115 childNodeWithRelativePath:@"PlaceholderEntitlements.plist" flags:0 error:0];
        v67 = v66;
        if (v66)
        {
          v68 = [v66 URL];
          [v65 writeToURL:v68 atomically:1];
        }
      }
    }
  }

LABEL_87:
  path.__pn_.__r_.__value_.__r.__words[0] = 0;
  v69 = *MEMORY[0x1E695DB48];
  if ([v156 getResourceValue:&path forKey:*MEMORY[0x1E695DB48] options:1 error:0])
  {
    v70 = [(FSNode *)v115 URL];
    v118[0] = MEMORY[0x1E69E9820];
    v118[1] = 3221225472;
    v118[2] = ___ZL38_LSWriteBundlePlaceholderToURLInternalRN14LaunchServices8Database7ContextEP5NSURLS4__block_invoke_2;
    v118[3] = &unk_1E6A1A6B0;
    v119 = path.__pn_.__r_.__value_.__l.__data_;
    XCFURLEnumerate(v70, 1, 0, v118);

    [(FSNode *)v115 setResourceValue:path.__pn_.__r_.__value_.__r.__words[0] forKey:v69 options:3 error:0];
  }

  [(FSNode *)v115 setResourceValue:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695DBA0] options:3 error:0];
  v117 = 0;
  v71 = [(FSNode *)v115 getFileSystemRepresentation:&path error:&v117];
  v72 = v117;
  v73 = v72;
  if (!v71)
  {
    v6 = _LSGetOSStatusFromNSError(v72);

    if (!v6)
    {
      goto LABEL_92;
    }

LABEL_29:
    v7 = v115;
    goto LABEL_30;
  }

LABEL_92:
  v74 = v113;
  v7 = v115;
  v75 = [(NSURL *)v113 fileSystemRepresentation];
  rename(&path, v75, v76);
  if (!v77)
  {
    v6 = 0;
    goto LABEL_34;
  }

  v78 = __error();
  v6 = _LSGetOSStatusFromPOSIXErrorCode(*v78);
LABEL_30:
  if (v7 && v6 && [(FSNode *)v7 getFileSystemRepresentation:&path error:0])
  {
    removefile(&path, 0, 1u);
  }

LABEL_34:

  v25 = *MEMORY[0x1E69E9840];
  return v6;
}

void ___ZL22_LSGetPlaceholderQueuev_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.launchservices.app-placeholders", v2);
  v1 = _LSGetPlaceholderQueue(void)::result;
  _LSGetPlaceholderQueue(void)::result = v0;
}

void _LSCopyResourceFileToPlaceholder(__CFBundle *a1, FSNode *a2, NSString *a3, NSString *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  if (a1 && v11 && v8)
  {
    if (v7)
    {
      v9 = CFBundleCopyResourceURLForLocalization(a1, v8, 0, 0, v7);
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v10 = CFBundleCopyBundleURL(a1);
      v9 = [(__CFURL *)v10 URLByAppendingPathComponent:v8 isDirectory:0];

      if (!v9)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    _LSCopyResourceURLToPlaceholder(a1, v11, v9);
    goto LABEL_9;
  }

LABEL_10:
}

void _LSCopyResourceURLToPlaceholder(__CFBundle *a1, FSNode *a2, NSURL *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1 && v5 && v6)
  {
    v16 = 0;
    v8 = [(NSURL *)v6 getResourceValue:&v16 forKey:*MEMORY[0x1E695DBB8] error:0];
    v9 = v16;
    v10 = v9;
    if (v9)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    if (v11 && [v9 BOOLValue])
    {
      v12 = [(NSURL *)v7 lastPathComponent];
      v13 = [(FSNode *)v5 childNodeWithRelativePath:v12 flags:0 error:0];

      if (v13 && [v13 getFileSystemRepresentation:to error:0])
      {
        v14 = v7;
        copyfile([(NSURL *)v7 fileSystemRepresentation], to, 0, 8u);
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1816CA218(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void ___ZL38_LSWriteBundlePlaceholderToURLInternalRN14LaunchServices8Database7ContextEP5NSURLS4__block_invoke(uint64_t a1)
{
  [(_LSDatabase *)*(a1 + 32) store];
  v2 = _CSStringCopyCFString();
  if (v2)
  {
    _LSCopyResourceFileToPlaceholder(*(a1 + 48), *(a1 + 40), 0, v2);
  }
}

CFTypeRef __copy_helper_block_ea8_48c31_ZTS10CFReleaserIP10__CFBundleE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 48) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_ea8_48c31_ZTS10CFReleaserIP10__CFBundleE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 48) = 0;
}

void ___ZL38_LSWriteBundlePlaceholderToURLInternalRN14LaunchServices8Database7ContextEP5NSURLS4__block_invoke_60(uint64_t a1, uint64_t a2, int a3)
{
  v4 = _LSGetPlugin(*(a1 + 32), a3);
  if (v4 && *v4)
  {
    v5 = _LSAliasCopyResolvedNode(*(a1 + 32), *v4, 0, 0, 0);
    if (v5)
    {
      v17 = v5;
      v6 = [v5 URL];
      v7 = [(NSURL *)v6 lastPathComponent];
      v8 = @"PlugIns";
      v9 = [v7 caseInsensitiveCompare:@"PlugIns"];

      v10 = 56;
      if (v9)
      {
        v8 = @"Extensions";
      }

      else
      {
        v10 = 48;
      }

      v11 = *(*(a1 + v10) + 8);
      v12 = *(v11 + 24);
      *(v11 + 24) = 1;
      if (!v12)
      {
        _LSCreatePlaceholderSubfolder(*(a1 + 40), &v8->isa);
      }

      v13 = [*(a1 + 40) URL];
      v14 = [v13 URLByAppendingPathComponent:v8 isDirectory:1];
      v15 = [(NSURL *)v6 lastPathComponent];
      v16 = [v14 URLByAppendingPathComponent:v15 isDirectory:1];

      if (v6 && v16)
      {
        _LSWriteBundlePlaceholderToURLInternal(*(a1 + 64), v6, v16);
      }

      v5 = v17;
    }
  }
}

id _LSCreatePlaceholderSubfolder(FSNode *a1, NSString *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [(FSNode *)v3 childNodeWithRelativePath:v4 flags:8 error:0];
    v8 = v7;
    if (v7 && [v7 getFileSystemRepresentation:v11 error:0] && (!mkdir(v11, 0x1C0u) || *__error() == 17))
    {
      v6 = v8;
    }

    else
    {
      v6 = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

void ___ZL38_LSWriteBundlePlaceholderToURLInternalRN14LaunchServices8Database7ContextEP5NSURLS4__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = [[FSNode alloc] initWithURL:a3 flags:0 error:0];
    if (v4)
    {
      [(FSNode *)v4 setResourceValue:*(a1 + 32) forKey:*MEMORY[0x1E695DB48] options:3 error:0];
    }
  }
}

uint64_t (*initLICopyIconPathsFromBundleForStyles(__CFBundle *a1, const __CFSet *a2))(__CFBundle *, const __CFSet *)
{
  v4 = MobileIconsLibrary(void)::frameworkLibrary;
  if (!MobileIconsLibrary(void)::frameworkLibrary)
  {
    v4 = dlopen("/System/Library/PrivateFrameworks/MobileIcons.framework/MobileIcons", 2);
    MobileIconsLibrary(void)::frameworkLibrary = v4;
  }

  result = dlsym(v4, "LICopyIconPathsFromBundleForStyles");
  softLinkLICopyIconPathsFromBundleForStyles = result;
  if (result)
  {

    return result(a1, a2);
  }

  return result;
}

id _LSAppRemovalServiceXPCInterface()
{
  if (_LSAppRemovalServiceXPCInterface_onceToken != -1)
  {
    _LSAppRemovalServiceXPCInterface_cold_1();
  }

  v1 = _LSAppRemovalServiceXPCInterface_interface;

  return v1;
}

void _LSServer_DisplayRemovedAppPrompt(uint64_t a1, void *a2, void *a3, void *a4)
{
  v70 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v52 = a4;
  v49 = v7;
  v50 = v8;
  _LSAssertRunningInServer("void _LSServer_DisplayRemovedAppPrompt(LSContext * _Nonnull, NSString *__strong _Nullable, NSURL *__strong _Nullable, void (^__strong _Nonnull)(BOOL, NSError *__strong))");
  v62 = 0;
  v9 = v7;
  v10 = v8;
  v11 = v10;
  if (v9)
  {
    v12 = [[LSApplicationRecord alloc] initWithBundleIdentifierOfSystemPlaceholder:v9 error:&v62];
  }

  else
  {
    if ([v10 isFileURL])
    {
      v65[0] = *MEMORY[0x1E696A278];
      *&buf = @"The app restoration prompt is not available for file URLs.";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:v65 count:1];
      v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v16, "_LSGetPlaceholderRecordForRemovedAppPrompt", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppRemovalPrompt.mm", 138);
      goto LABEL_18;
    }

    if (!v11)
    {
      v65[0] = *MEMORY[0x1E696A278];
      *&buf = @"Either bundleID or resourceURL must be specified to present an app restoration prompt.";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:v65 count:1];
      v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v16, "_LSGetPlaceholderRecordForRemovedAppPrompt", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppRemovalPrompt.mm", 156);
      goto LABEL_18;
    }

    LODWORD(buf) = 0;
    *(&buf + 1) = 0;
    LODWORD(v67) = 0;
    v68 = 0u;
    v69 = 0u;
    LODWORD(v63) = 14;
    v24 = [v11 scheme];
    v25 = _LSGetBindingForNodeOrSchemeOrUTI(a1, 0, v24, 0, 0, -1, &v63, 0, &buf);

    if (v25)
    {
      v26 = *MEMORY[0x1E696A998];
      v64[0] = *MEMORY[0x1E696A278];
      v64[1] = v26;
      v65[0] = @"Failed to find an application that could open the specified URL.";
      v65[1] = v11;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];
      v62 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v25, v27, "_LSGetPlaceholderRecordForRemovedAppPrompt", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppRemovalPrompt.mm", 151);

      v12 = 0;
    }

    else
    {
      v48 = [LSApplicationRecord alloc];
      v12 = [(LSApplicationRecord *)v48 _initWithContext:a1 bundleID:buf bundleData:*(&buf + 1) error:&v62];
    }
  }

  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = +[LSApplicationRestrictionsManager sharedInstance];
  v14 = [(LSBundleRecord *)v12 bundleIdentifier];
  v15 = [(LSApplicationRestrictionsManager *)v13 isApplicationRestricted:v14];

  if (!v15)
  {
    v18 = [LSApplicationRecord alloc];
    v19 = [(LSBundleRecord *)v12 bundleIdentifier];
    v16 = [(LSApplicationRecord *)v18 initWithBundleIdentifier:v19 allowPlaceholder:1 error:0];

    if (v16)
    {
      v20 = [(LSApplicationRecord *)v16 applicationState];
      v21 = [v20 isDowngraded];

      if (v21)
      {
        v22 = _LSDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [(LSBundleRecord *)v12 bundleIdentifier];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v23;
          _os_log_impl(&dword_18162D000, v22, OS_LOG_TYPE_INFO, "Application %@ exists as an offloaded placeholder.", &buf, 0xCu);
        }
      }

      else
      {

        v63 = *MEMORY[0x1E696A278];
        *&buf = @"The specified application is currently installed or installing.";
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v63 count:1];
        _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v22, "_LSGetPlaceholderRecordForRemovedAppPrompt", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppRemovalPrompt.mm", 176);
        v62 = v12 = 0;
      }
    }

    goto LABEL_19;
  }

  v63 = *MEMORY[0x1E696A278];
  *&buf = @"The specified application is restricted, so the system cannot prompt to reinstall it.";
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v63 count:1];
  v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v16, "_LSGetPlaceholderRecordForRemovedAppPrompt", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAppRemovalPrompt.mm", 162);
LABEL_18:
  v12 = 0;
  v62 = v17;
LABEL_19:

LABEL_20:
  v28 = v62;
  if (v12)
  {
    v51 = [(LSBundleRecord *)v12 localizedName];
    v29 = [(LSBundleRecord *)v12 bundleIdentifier];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v67 = 0x2020000000;
    *&v68 = 0;
    v30 = v29;
    v31 = v30;
    if (v30)
    {
      v32 = v30;
      v33 = [v31 UTF8String];
      v34 = &LSVagueRemovedAppPrompts;
      v35 = 64;
      while (1)
      {
        v36 = strcmp(*v34, v33);
        if (!v36)
        {
          v37 = LaunchServices::EligibilityCache::shared(v36);
          if (!LaunchServices::EligibilityCache::eligibleForDomainFailingClosed(v37, v34[1]))
          {
            break;
          }
        }

        v34 += 4;
        v35 -= 32;
        if (!v35)
        {
          goto LABEL_26;
        }
      }

      v41 = 0;
      *(*(&buf + 1) + 24) = 2;
    }

    else
    {
LABEL_26:

      if (*(*(&buf + 1) + 24) || (v38 = -[LSApplicationRecord _initWithNode:bundleIdentifier:placeholderBehavior:systemPlaceholder:itemID:forceInBundleContainer:context:error:]([LSApplicationRecord alloc], "_initWithNode:bundleIdentifier:placeholderBehavior:systemPlaceholder:itemID:forceInBundleContainer:context:error:", 0, @"com.apple.AppStore", 0, 0, 0, 0, a1, 0, v49, v50), [v38 applicationState], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "isInstalled"), v39, v38, (v40 & 1) != 0))
      {
        v34 = 0;
        v41 = 0;
      }

      else
      {
        *(*(&buf + 1) + 24) = 1;
        v47 = [[LSApplicationRecord alloc] _initWithNode:0 bundleIdentifier:@"com.apple.AppStore" placeholderBehavior:0 systemPlaceholder:1 itemID:0 forceInBundleContainer:0 context:a1 error:0];
        v41 = [v47 localizedName];

        v34 = 0;
      }
    }

    if (_LSGetAppRemovalPromptQueue(void)::once != -1)
    {
      _LSServer_DisplayRemovedAppPrompt_cold_1();
    }

    v42 = _LSGetAppRemovalPromptQueue(void)::result;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = ___LSServer_DisplayRemovedAppPrompt_block_invoke;
    v53[3] = &unk_1E6A1A6D8;
    v43 = v51;
    v54 = v43;
    v55 = v9;
    v56 = v41;
    p_buf = &buf;
    v61 = v34;
    v44 = v31;
    v57 = v44;
    v58 = v11;
    v59 = v52;
    v45 = v41;
    _LSAskForScreenUnlock(v42, v53);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    (*(v52 + 2))(v52, 0, v28);
  }

  v46 = *MEMORY[0x1E69E9840];
}

void sub_1816CC030(_Unwind_Exception *a1)
{
  CFRelease(v8);

  _Unwind_Resume(a1);
}

void ___ZL27_LSGetAppRemovalPromptQueuev_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("LS app removal prompt queue", v2);
  v1 = _LSGetAppRemovalPromptQueue(void)::result;
  _LSGetAppRemovalPromptQueue(void)::result = v0;
}

__CFString *_LSGetAppRemovalPromptStringForKey(NSString *a1, NSString *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _LSGetBundle();
  v6 = CFBundleCopyLocalizedString(v5, v4, v4, @"AppRemoval");
  if (!v6)
  {
    v6 = v3;
  }

  return v6;
}

void ___ZL26_LSDisplayRemovedAppPromptP20__CFUserNotificationP8NSStringP5NSURL18LSAppRestoreSourceU13block_pointerFvbP7NSErrorE_block_invoke(void *a1)
{
  v6[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(_LSSpringBoardCall);
  [(_LSSpringBoardCall *)v2 setBundleIdentifier:a1[4]];
  v5[0] = getFBSOpenApplicationOptionKeyPayloadURL[0]();
  v6[0] = a1[5];
  v5[1] = getFBSOpenApplicationOptionKeyIsSensitiveURL();
  v5[2] = @"__PayloadOptions";
  v6[1] = MEMORY[0x1E695E118];
  v6[2] = &unk_1EEF8F128;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
  [(_LSSpringBoardCall *)v2 setLaunchOptions:v3];

  [(_LSSpringBoardCall *)v2 setClientXPCConnection:0];
  [(_LSSpringBoardCall *)v2 setCallCompletionHandlerWhenFullyComplete:1];
  [(_LSSpringBoardCall *)v2 callWithCompletionHandler:a1[6]];

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t initFBSOpenApplicationOptionKeyPayloadURL(void)
{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyPayloadURL");
  constantFBSOpenApplicationOptionKeyPayloadURL = result;
  getFBSOpenApplicationOptionKeyPayloadURL[0] = FBSOpenApplicationOptionKeyPayloadURLFunction;
  return result;
}

{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyPayloadURL");
  constantFBSOpenApplicationOptionKeyPayloadURL = result;
  getFBSOpenApplicationOptionKeyPayloadURL = FBSOpenApplicationOptionKeyPayloadURLFunction;
  return result;
}

{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyPayloadURL");
  constantFBSOpenApplicationOptionKeyPayloadURL = result;
  getFBSOpenApplicationOptionKeyPayloadURL = FBSOpenApplicationOptionKeyPayloadURLFunction;
  return result;
}

uint64_t initFBSOpenApplicationOptionKeyIsSensitiveURL(void)
{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyIsSensitiveURL");
  constantFBSOpenApplicationOptionKeyIsSensitiveURL = result;
  getFBSOpenApplicationOptionKeyIsSensitiveURL = FBSOpenApplicationOptionKeyIsSensitiveURLFunction;
  return result;
}

Class initATTrackingEnforcementManager()
{
  if (!AppTrackingTransparencyLibrary_frameworkLibrary)
  {
    AppTrackingTransparencyLibrary_frameworkLibrary = dlopen("/System/Library/Frameworks/AppTrackingTransparency.framework/AppTrackingTransparency", 2);
  }

  result = objc_getClass("ATTrackingEnforcementManager");
  classATTrackingEnforcementManager = result;
  getATTrackingEnforcementManagerClass = ATTrackingEnforcementManagerFunction;
  return result;
}

uint64_t (*initAudioUnitURLOpen(const __CFURL *a1))(const __CFURL *)
{
  v2 = AudioToolboxLibrary(void)::frameworkLibrary;
  if (!AudioToolboxLibrary(void)::frameworkLibrary)
  {
    v2 = dlopen("/System/Library/Frameworks/AudioToolbox.framework/AudioToolbox", 2);
    AudioToolboxLibrary(void)::frameworkLibrary = v2;
  }

  result = dlsym(v2, "AudioUnitURLOpen");
  softLinkAudioUnitURLOpen = result;
  if (result)
  {

    return result(a1);
  }

  return result;
}

uint64_t _LSBindableComparePriority(void *a1, char a2, char a3)
{
  v5 = a1;
  v6 = v5;
  v7 = a2 & 3;
  if (v7 == (a3 & 3))
  {
    if (v7 == 3)
    {
      v8 = _UTTypeGet(v5);
      v12 = _UTTypeGet(v6);
      v10 = v12;
      if (v8 && v12)
      {
LABEL_10:
        v11 = _UTTypeComparePriority(v6, v8, v6, v10);
        goto LABEL_18;
      }
    }

    else
    {
      if ((a2 & 3) != 0)
      {
        v11 = 0;
        goto LABEL_18;
      }

      v8 = _UTTypeGet(v5);
      v9 = _UTTypeGet(v6);
      v10 = v9;
      if (v8 && v9)
      {
        goto LABEL_10;
      }
    }

    if (v10)
    {
      v13 = -1;
    }

    else
    {
      v13 = 0;
    }

    if (v8)
    {
      v11 = 1;
    }

    else
    {
      v11 = v13;
    }
  }

  else
  {
    v11 = v7 < (a3 & 3u);
  }

LABEL_18:

  return v11;
}

uint64_t _LSBindableActivate(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  v17 = a2;
  if (a2)
  {
    [(_LSDatabase *)v3 schema];
    [(_LSDatabase *)v4 store];
    if (_CSStringBindingGetBindings())
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = -1;
      [(_LSDatabase *)v4 store];
      v5 = v4;
      _CSArrayEnumerateAllValues();
      v6 = *(v14 + 6);
      v7 = v5;
      if (v6 == -1)
      {
        [(_LSDatabase *)v5 store];
        _CSArrayAppendValue();
      }

      else
      {
        [(_LSDatabase *)v5 store];
        v8 = *(v14 + 6);
        if (_CSArrayGetValueAtIndex() != a2)
        {
          [(_LSDatabase *)v5 store];
          v9 = *(v14 + 6);
          _CSArrayInsertValueAtIndex();
        }
      }

      _Block_object_dispose(&v13, 8);
      v10 = 0;
    }

    else
    {
      v13 = 0;
      [(_LSDatabase *)v4 store];
      if (_CSArrayCreate())
      {
        [(_LSDatabase *)v4 store];
        v11 = CSMapSetValue();
      }

      else
      {
        v11 = _LSGetOSStatusFromNSError(v13);
      }

      v10 = v11;
    }
  }

  else
  {
    v10 = 4294967246;
  }

  return v10;
}

void sub_1816CCA58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _LSBindableSetGeneration(void *a1, int a2, int a3)
{
  v5 = a1;
  v6 = v5;
  if ((a2 & 3) != 0)
  {
    if ((a2 & 3) == 2)
    {
      _LSClaimSetGeneration(v5, a2 & 0xFFFFFFFC, a3);
    }
  }

  else
  {
    _UTTypeSetGeneration(v5, a2 & 0xFFFFFFFC, a3);
  }
}

uint64_t _LSBindableDeactivate(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    [(_LSDatabase *)v3 schema];
    [(_LSDatabase *)v4 store];
    if (_CSStringBindingGetBindings())
    {
      v11 = 0;
      v12 = &v11;
      v13 = 0x2020000000;
      v14 = -1;
      [(_LSDatabase *)v4 store];
      v5 = v4;
      _CSArrayEnumerateAllValues();
      if (*(v12 + 6) != -1)
      {
        [(_LSDatabase *)v5 store];
        Count = _CSArrayGetCount();
        v7 = v5;
        if (Count == 1)
        {
          [(_LSDatabase *)v5 store];
          v8 = CSMapRemoveValue();
          if (v8)
          {
LABEL_11:

            _Block_object_dispose(&v11, 8);
            goto LABEL_12;
          }

          [(_LSDatabase *)v5 store];
          _CSArrayDispose();
        }

        else
        {
          [(_LSDatabase *)v5 store];
          v9 = *(v12 + 6);
          _CSArrayRemoveValueAtIndex();
        }
      }

      v8 = 0;
      goto LABEL_11;
    }

    v8 = 4294957797;
  }

  else
  {
    v8 = 4294967246;
  }

LABEL_12:

  return v8;
}

void sub_1816CCDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _LSBindingMapGetVisualizationFunctions(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = LaunchServices::BindingMaps::display;
  a1[2] = 0;
}

BOOL LaunchServices::BindingMaps::display(char **this, LSContext *a2, unsigned int a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v5 = a2;
  v7 = a4;
  BindingMapIndexWithTargetTable = _LSDatabaseFindBindingMapIndexWithTargetTable(*this, v5);
  if (BindingMapIndexWithTargetTable != -1)
  {
    [(_LSDatabase *)*this schema];
    _LSDatabaseFindBindingMapTargetTable(*this, BindingMapIndexWithTargetTable);
    [(_LSDatabase *)*this store];
    v10 = v7;
    _CSStringBindingEnumerateAllBindings();
  }

  return BindingMapIndexWithTargetTable != -1;
}

void ___ZN14LaunchServices11BindingMapsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke(uint64_t a1, unsigned int a2)
{
  [(_LSDatabase *)**(a1 + 40) store];
  v4 = _CSStringCopyCFString();
  if (!v4)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown bindable key string (0x%llx):", a2];
  }

  v5 = [MEMORY[0x1E695DF70] array];
  [(_LSDatabase *)**(a1 + 40) store];
  v9 = *(a1 + 48);
  v8 = *(a1 + 40);
  v6 = *(a1 + 32);
  v7 = v5;
  _CSArrayEnumerateAllValues();
  [*(a1 + 32) write:v4 array:v7];
}

void ___ZN14LaunchServices11BindingMapsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 56);
  if (v5 == *([(_LSDatabase *)**(a1 + 48) schema]+ 4))
  {
    v6 = [*(a1 + 32) link:*(-[_LSDatabase schema](**(a1 + 48)) + 4) unit:a3];
    v7 = *(a1 + 40);
    v27 = v6;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (0x%llx)", v6, a3];
    [v7 addObject:v8];
    goto LABEL_24;
  }

  v9 = *(a1 + 56);
  if (v9 == *([(_LSDatabase *)**(a1 + 48) schema]+ 1588))
  {
    v10 = [*(a1 + 32) link:*(-[_LSDatabase schema](**(a1 + 48)) + 1588) unit:a3];
    v11 = *(a1 + 40);
    v27 = v10;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (0x%llx)", v10, a3];
    [v11 addObject:v8];
    goto LABEL_24;
  }

  v12 = *(a1 + 56);
  if (v12 == *([(_LSDatabase *)**(a1 + 48) schema]+ 1592))
  {
    v13 = [*(a1 + 32) link:*(-[_LSDatabase schema](**(a1 + 48)) + 1592) unit:a3];
    v14 = *(a1 + 40);
    v27 = v13;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (0x%llx)", v13, a3];
    [v14 addObject:v8];
    goto LABEL_24;
  }

  if ((a3 & 3u) > 1)
  {
    if ((a3 & 3) == 2)
    {
      v20 = [*(a1 + 32) link:*(-[_LSDatabase schema](**(a1 + 48)) + 8) unit:a3 & 0xFFFFFFFC];
      v21 = *(a1 + 40);
      v27 = v20;
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (0x%llx)", v20, a3];
      [v21 addObject:v8];
      goto LABEL_24;
    }
  }

  else if ((a3 & 3) != 0)
  {
    v15 = *(a1 + 32);
    v16 = *([(_LSDatabase *)**(a1 + 48) schema]+ 1576);
    if ((a3 & 3) == 1)
    {
      v17 = a3 & 0xFFFFFFFC;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v15 link:v16 unit:v17];
    v19 = *(a1 + 40);
    v27 = v18;
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"handler pref %@ (0x%llx)", v18, a3];
    [v19 addObject:v8];
    goto LABEL_24;
  }

  v22 = a3 & 0xFFFFFFFC;
  if ((a3 & 3) != 3)
  {
    v22 = 0;
  }

  if ((a3 & 0xFFFFFFFC) != 0 && (a3 & 3) == 0)
  {
    v24 = a3 & 0xFFFFFFFC;
  }

  else
  {
    v24 = v22;
  }

  v25 = [*(a1 + 32) link:*(-[_LSDatabase schema](**(a1 + 48)) + 16) unit:v24];
  v26 = *(a1 + 40);
  v27 = v25;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (0x%llx)", v25, a3];
  [v26 addObject:v8];
LABEL_24:
}

void LaunchServices::LSSandboxExtension::~LSSandboxExtension(LaunchServices::LSSandboxExtension *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*this != -1)
  {
    v2 = _LSDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *this;
      v6 = 134217984;
      v7 = v3;
      _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "releasing sandbox extension %ld", &v6, 0xCu);
    }

    v4 = *this;
    sandbox_extension_release();
  }

  v5 = *MEMORY[0x1E69E9840];
}

void LaunchServices::LSSandboxExtension::consume(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  a3[8] = 0;
  v6 = sandbox_extension_consume();
  v7 = _LSDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 136315394;
    *&v10[4] = a1;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "consumed sandbox extension %s: %ld", v10, 0x16u);
  }

  if (v6 == -1)
  {
    if (a2)
    {
      v8 = __error();
      *a2 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], *v8, 0, "consume", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSSandboxHelper.mm", 30);
    }
  }

  else
  {
    a3[8] = 1;
    *a3 = v6;
    *v10 = -1;
    LaunchServices::LSSandboxExtension::~LSSandboxExtension(v10);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void LaunchServices::LSSandboxExtension::consume_shared(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  LaunchServices::LSSandboxExtension::consume(a1, a2, &v4);
  if (v5 == 1)
  {
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_1816CD758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a10 == 1)
  {
    LaunchServices::LSSandboxExtension::~LSSandboxExtension(&a9);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<LaunchServices::LSSandboxExtension>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EEF624E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865D6250);
}

void LaunchServices::BindingEvaluator::CreateWithURL(LaunchServices::BindingEvaluator *this@<X0>, FSNode **a2@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  LaunchServices::BindingEvaluator::BindingEvaluator(a2);
  v5 = _LSBindingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478083;
    v17 = this;
    v18 = 1024;
    v19 = [(LaunchServices::BindingEvaluator *)this isFileURL];
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEBUG, "BindingEvaluator::CreateWithURL(%{private}@) isFileURL=%{BOOL}d", buf, 0x12u);
  }

  LaunchServices::BindingEvaluation::logToFile(@"Creating binding evaluator for URL %@", v6, this);
  if ([(LaunchServices::BindingEvaluator *)this isFileURL])
  {
    v7 = [[FSNode alloc] initWithURL:this flags:0 error:0];
    v8 = *a2;
    *a2 = v7;

    v9 = a2[1];
    a2[1] = @"file";

    v10 = [(FSNode *)*a2 nameWithError:0];
    v11 = a2[3];
    a2[3] = v10;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:this resolvingAgainstBaseURL:0];
    v11 = v12;
    if (v12)
    {
      v13 = [(FSNode *)v12 scheme];
      v14 = a2[1];
      a2[1] = v13;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void LaunchServices::BindingEvaluator::CreateWithNode(void *a1@<X0>, LaunchServices::BindingEvaluator *a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  LaunchServices::BindingEvaluator::BindingEvaluator(a2);
  v4 = _LSBindingLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v11 = a1;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEBUG, "BindingEvaluator::CreateWithNode(%{private}@)", buf, 0xCu);
  }

  LaunchServices::BindingEvaluation::logToFile(@"Creating binding evaluator for FSNode %@", v5, a1);
  objc_storeStrong(a2, a1);
  v6 = *(a2 + 1);
  *(a2 + 1) = @"file";

  v7 = [a1 nameWithError:0];
  v8 = *(a2 + 3);
  *(a2 + 3) = v7;

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t LaunchServices::BindingEvaluator::ContentTypeBindingAllowsOverride(LSContext *this, LSContext *a2, NSString *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  LaunchServices::BindingEvaluator::CreateWithUTI(a2, 0, v17);
  v18 = -1;
  v19 = 142;
  LaunchServices::BindingEvaluator::getBestBinding(&v11, v17, this, 0, 0);
  if (v16)
  {
    if (v13)
    {
      v5 = (*(v13 + 8) & 2) == 0;

      if (!v5)
      {
        v6 = _LSDefaultLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 138543362;
          v12 = a2;
          _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "Override not allowed for content type %{public}@", &v11, 0xCu);
        }

        v7 = 0;
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v6 = _LSDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    LaunchServices::BindingEvaluator::ContentTypeBindingAllowsOverride(a2, v6);
  }

  v7 = 1;
LABEL_11:

  LaunchServices::BindingEvaluator::~BindingEvaluator(v17, v8);
  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1816CDC44(_Unwind_Exception *a1, NSString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  LaunchServices::BindingEvaluator::~BindingEvaluator(va, a2);
  _Unwind_Resume(a1);
}

uint64_t LaunchServices::BindingEvaluator::PrepareMimicForBinding(void *a1, uint64_t a2)
{
  result = LaunchServices::TypeEvaluator::PrepareMimicForTypeEvaluation(a1, a2);
  if (result)
  {
    result = _LSPrepareMimicForBundleLookup(a1, a2);
    if (result)
    {
      result = [a1 populateSimpleSelector:sel_isSideFault error:a2];
      if (result)
      {
        v5 = [a1 mimic];
        v6 = [v5 isSideFault];

        if (v6)
        {
          return [a1 populateSimpleSelector:sel_sideFaultResourceValuesWithError_ error:a2];
        }

        else
        {
          return 1;
        }
      }
    }
  }

  return result;
}

id LaunchServices::BindingEvaluator::getCalculatedUTI(LaunchServices::BindingEvaluator *this, LSContext *a2)
{
  v4 = 0;
  LaunchServices::BindingEvaluation::calculateUTI(a2, this, &v4, 0, 0);
  v2 = v4;

  return v2;
}

void LaunchServices::BindingEvaluator::setFilter(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(a1 + 136);
  *(a1 + 136) = v3;

  v5 = *(a1 + 144);
  *(a1 + 144) = 0;
}

void LaunchServices::BindingEvaluator::setFilter_NoIO(uint64_t a1, void *a2, void *a3)
{
  v5 = [a3 copy];
  v6 = *(a1 + 152);
  *(a1 + 152) = v5;

  v7 = [a2 copy];
  v8 = *(a1 + 160);
  *(a1 + 160) = v7;
}

void LaunchServices::BindingEvaluator::setResultFilter(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(a1 + 168);
  *(a1 + 168) = v3;
}

void LaunchServices::BindingEvaluator::setAllPropertiesFromBindingEvaluator(LaunchServices::BindingEvaluator *this, const LaunchServices::BindingEvaluator *a2)
{
  *(this + 12) = *(a2 + 12);
  *(this + 13) = *(a2 + 13);
  if (this != a2)
  {
    std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>(this + 14, *(a2 + 14), *(a2 + 15), (*(a2 + 15) - *(a2 + 14)) >> 2);
  }

  v4 = MEMORY[0x1865D71B0](*(a2 + 17));
  v5 = *(this + 17);
  *(this + 17) = v4;

  objc_storeStrong(this + 18, *(a2 + 18));
  v6 = MEMORY[0x1865D71B0](*(a2 + 19));
  v7 = *(this + 19);
  *(this + 19) = v6;

  v8 = *(a2 + 20);

  objc_storeStrong(this + 20, v8);
}

id LaunchServices::BindingEvaluation::getReasonFromBinding(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    v2 = "?";
    v3 = *(a1 + 80);
    if (v3 == 1)
    {
      v2 = "beat next";
    }

    if (v3 == 255)
    {
      v4 = "lost to prev";
    }

    else
    {
      v4 = v2;
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%s because %@)", *(a1 + 40), v4, v1];
  }

  else
  {
    v5 = *(a1 + 40);
  }

  return v5;
}

void LaunchServices::BindingEvaluation::State::~State(id *this)
{
  v3 = this + 23;
  std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](&v3);
  LaunchServices::BindingEvaluator::~BindingEvaluator(this + 1, v2);
}

id LaunchServices::getLocalizedKindStringWithEvaluator(void **a1, void *a2, const LaunchServices::BindingEvaluator *a3, void *a4)
{
  v43[13] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v35 = a1;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v8 = +[_LSDServiceDomain defaultServiceDomain];
  v9 = LaunchServices::Database::Context::_get(&v35, v8, 0);

  if (v9)
  {
    LaunchServices::BindingEvaluation::State::State(&v39, v9, a3);
    v40[12] = 1;
    v42 |= 0x1508Au;
    v41 = 15;
    v34 = 0;
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    memset(v28, 0, sizeof(v28));
    KindStringFromState = LaunchServices::BindingEvaluation::getKindStringFromState(&v39, &v34, v28, v10);
    if (KindStringFromState)
    {
      if (!v7)
      {
        if (*a3)
        {
          v12 = [*a3 URL];
          v7 = [v12 ls_preferredLocalizations];
        }

        else
        {
          v7 = 0;
        }
      }

      if (v34 == 1)
      {
        v16 = LaunchServices::BindingEvaluation::getBoundDisplayNameConstructorsForKindString(&v39, v28, v7, 0);
        v18 = v16;
        if (v34 == 1)
        {
          if (v16)
          {
            v19 = LaunchServices::CanonicalString::Find(*v39, @"%@ Document", v17);
            if (v19)
            {
              KindStringFromState = LaunchServices::CanonicalString::getLocalizedString(v19);
            }
          }
        }

        v20 = v18;
      }

      else
      {
        v20 = 0;
      }

      v22 = LaunchServices::LocalizedString::localizeUnsafely(KindStringFromState, *v39, v7);
      if (v22)
      {
        KindStringFromState = LaunchServices::BindingEvaluation::formatAndSanitizeKindString(&v39, v22, v20, v21);
      }

      else if (a4)
      {
        _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, 0, "getLocalizedKindStringWithEvaluator", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSBindingEvaluator.mm", 1167);
        *a4 = KindStringFromState = 0;
      }

      else
      {
        KindStringFromState = 0;
      }
    }

    *&v28[0] = v43;
    std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](v28);
    LaunchServices::BindingEvaluator::~BindingEvaluator(v40, v23);
  }

  else if (a4)
  {
    v13 = +[_LSDServiceDomain defaultServiceDomain];
    v14 = LaunchServices::Database::Context::_get(&v35, v13, 0);

    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = v38;
    }

    KindStringFromState = 0;
    *a4 = v15;
  }

  else
  {
    KindStringFromState = 0;
  }

  if (v35 && v37 == 1)
  {
    _LSContextDestroy(v35);
  }

  v24 = v36;
  v35 = 0;
  v36 = 0;

  v37 = 0;
  v25 = v38;
  v38 = 0;

  v26 = *MEMORY[0x1E69E9840];

  return KindStringFromState;
}

void sub_1816CE364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  LaunchServices::BindingEvaluation::ExtendedBinding::~ExtendedBinding(&a9);
  LaunchServices::BindingEvaluation::State::~State(&a28);
  LaunchServices::Database::Context::~Context(&a23);

  _Unwind_Resume(a1);
}

id LaunchServices::BindingEvaluator::getLocalizedKindString(const LaunchServices::BindingEvaluator *a1, void **a2, void *a3, void *a4)
{
  v4 = LaunchServices::getLocalizedKindStringWithEvaluator(a2, a3, a1, a4);

  return v4;
}

id LaunchServices::BindingEvaluator::getLocalizedKindStringDictionary(const LaunchServices::BindingEvaluator *a1, void **a2, void *a3)
{
  v64[13] = *MEMORY[0x1E69E9840];
  v52 = a2;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v5 = +[_LSDServiceDomain defaultServiceDomain];
  v6 = LaunchServices::Database::Context::_get(&v52, v5, 0);

  if (v6)
  {
    v56 = 0;
    v57 = &v56;
    v58 = 0x15012000000;
    v59 = __Block_byref_object_copy__6;
    v60 = __Block_byref_object_dispose__6;
    v61 = " 5#0%4#02";
    LaunchServices::BindingEvaluation::State::State(&v62, v6, a1);
    v7 = v57;
    v57[19] = 1;
    v8 = *(v7 + 41) | 0x1508A;
    *(v7 + 40) = 15;
    *(v7 + 41) = v8;
    v51 = 0;
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    *v44 = 0u;
    v45 = 0u;
    KindStringFromState = LaunchServices::BindingEvaluation::getKindStringFromState((v7 + 6), &v51, v44, v9);
    if (KindStringFromState)
    {
      if (v51 == 1)
      {
        v11 = LaunchServices::BindingEvaluation::getBoundDisplayNameConstructorsForKindString(v57 + 6, v44, 0, 1);
      }

      else
      {
        v11 = 0;
      }

      v16 = [v11 objectForKeyedSubscript:@"LSDefaultLocalizedValue"];
      v18 = [v11 allKeys];
      if (v51 == 1)
      {
        if (v16)
        {
          v19 = LaunchServices::CanonicalString::Find(*v57[6], @"%@ Document", v17);
          if (v19)
          {
            KindStringFromState = LaunchServices::CanonicalString::getLocalizedString(v19);
          }
        }
      }

      v20 = LaunchServices::LocalizedString::getAllUnsafeLocalizations(KindStringFromState, *v57[6], 0, 0, 0);
      if (v20)
      {
        v38 = 0;
        v39 = &v38;
        v40 = 0x3032000000;
        v41 = __Block_byref_object_copy__31;
        v42 = __Block_byref_object_dispose__32;
        v43 = 0;
        v28 = MEMORY[0x1E69E9820];
        v29 = 3221225472;
        v30 = ___ZNK14LaunchServices16BindingEvaluator32getLocalizedKindStringDictionaryEP9LSContextPU15__autoreleasingP7NSError_block_invoke;
        v31 = &unk_1E6A1A7E0;
        v32 = v11;
        v33 = v18;
        v34 = v16;
        v36 = &v56;
        v37 = &v38;
        v15 = v20;
        v35 = v15;
        [v15 enumerateKeysAndObjectsUsingBlock:&v28];
        v21 = v39[5];
        if (v21)
        {
          v22 = [v21 copy];

          v15 = v22;
        }

        _Block_object_dispose(&v38, 8);
      }

      else if (a3)
      {
        _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, 0, "getLocalizedKindStringDictionary", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSBindingEvaluator.mm", 1266);
        *a3 = v15 = 0;
      }

      else
      {
        v15 = 0;
      }
    }

    else if (a3)
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, 0, "getLocalizedKindStringDictionary", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSBindingEvaluator.mm", 1269);
      *a3 = v15 = 0;
    }

    else
    {
      v15 = 0;
    }

    _Block_object_dispose(&v56, 8);
    *v44 = v64;
    std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](v44);
    LaunchServices::BindingEvaluator::~BindingEvaluator(&v63, v23);
  }

  else if (a3)
  {
    v12 = +[_LSDServiceDomain defaultServiceDomain];
    v13 = LaunchServices::Database::Context::_get(&v52, v12, 0);

    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = v55;
    }

    v15 = 0;
    *a3 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v52 && v54 == 1)
  {
    _LSContextDestroy(v52);
  }

  v24 = v53;
  v52 = 0;
  v53 = 0;

  v54 = 0;
  v25 = v55;
  v55 = 0;

  v26 = *MEMORY[0x1E69E9840];

  return v15;
}

void sub_1816CE928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, id a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  _Block_object_dispose(&a19, 8);

  LaunchServices::BindingEvaluation::ExtendedBinding::~ExtendedBinding(&a25);
  _Block_object_dispose(&a44, 8);
  LaunchServices::BindingEvaluation::State::~State((v48 + 48));
  LaunchServices::Database::Context::~Context(&a39);
  _Unwind_Resume(a1);
}

uint64_t LaunchServices::BindingEvaluation::getKindStringFromState(LaunchServices::BindingEvaluation *this, LaunchServices::BindingEvaluation::State *a2, BOOL *a3, LaunchServices::BindingEvaluation::ExtendedBinding *a4)
{
  v53 = 0;
  *v51 = 0u;
  *v52 = 0u;
  *obj = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  if (*(this + 96) == 1)
  {
    v44 = [MEMORY[0x1E696AAA8] currentHandler];
    v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"const LocalizedString *LaunchServices::getKindStringFromState(State &, BOOL *, ExtendedBinding *)"}];
    [v44 handleFailureInFunction:v45 file:@"LSBindingEvaluator.mm" lineNumber:2178 description:@"Attempted to get a kind string when performing bundle lookup."];
  }

  if (!*(this + 56) && *(this + 240) != 1)
  {
    v9 = 0;
    goto LABEL_35;
  }

  TypeResolvable = _UTTypeGetTypeResolvable(**this);
  if (LaunchServices::BindingEvaluation::conformsTo(this, TypeResolvable, @"com.apple.resolvable", v8))
  {
    v9 = @"Alias";
LABEL_35:

LABEL_36:
    v33 = 0;
    goto LABEL_37;
  }

  TypeVolume = _UTTypeGetTypeVolume(**this);
  if (LaunchServices::BindingEvaluation::conformsTo(this, TypeVolume, @"public.volume", v11))
  {
    v9 = @"Volume";
    goto LABEL_35;
  }

  TypeApplication = _UTTypeGetTypeApplication(**this);
  if (LaunchServices::BindingEvaluation::conformsTo(this, TypeApplication, @"com.apple.application", v13))
  {
    v14 = *(this + 1);
    v15 = @"Application";
    if (v14)
    {
      LODWORD(v54) = 0;
      v46[0] = 0;
      v16 = _LSBundleFindWithNode(*this, v14, &v54, v46);
      if (v46[0])
      {
        if ((*(v46[0] + 172) & 0x200000) != 0)
        {
          v15 = @"Beta Application";
        }
      }

      else
      {
        v34 = v16;
        v35 = _LSDefaultLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          LaunchServices::BindingEvaluation::getKindStringFromState(v14, v34, v35);
        }

        v15 = @"Application";
      }
    }

    v9 = v15;
    goto LABEL_35;
  }

  TypePackage = _UTTypeGetTypePackage(**this);
  if (LaunchServices::BindingEvaluation::conformsTo(this, TypePackage, @"com.apple.package", v18))
  {
    v9 = @"Package";
    goto LABEL_18;
  }

  TypeDirectory = _UTTypeGetTypeDirectory(**this);
  if (LaunchServices::BindingEvaluation::conformsTo(this, TypeDirectory, @"public.directory", v26))
  {
    v9 = @"Folder";
    goto LABEL_35;
  }

  TypeUnixExecutable = _UTTypeGetTypeUnixExecutable(**this);
  v29 = LaunchServices::BindingEvaluation::conformsTo(this, TypeUnixExecutable, @"public.unix-executable", v28);
  v30 = v29;
  v9 = @"Document";
  if (v29)
  {
    v31 = @"Unix Executable File";
  }

  else
  {
    v31 = @"Document";
  }

  if ((v30 & 1) == 0)
  {
LABEL_18:
    LaunchServices::BindingEvaluation::runEvaluator(this, 0, v46);
    v19 = v46[0];
    if (v46[0] == v46[1])
    {
      v23 = 0;
    }

    else
    {
      v20 = *(v46[0] + 16);
      v47 = *v46[0];
      v48 = v20;
      obj[0] = *(v46[0] + 32);
      v21 = *(v19 + 40);
      v22 = *(v19 + 48);
      obj[1] = v21;
      *&v50 = v22;
      WORD4(v50) = *(v19 + 56);
      v51[0] = *(v19 + 64);
      v51[1] = *(v19 + 72);
      LOBYTE(v52[0]) = *(v19 + 80);
      v52[1] = *(v19 + 88);
      LODWORD(v53) = *(v19 + 96);
      v23 = *(&v48 + 1);
      if (v48)
      {
        if (*(&v48 + 1))
        {
          if (!_LSClaimFlagsAreWildcard(*(*(&v48 + 1) + 8)))
          {
            LocalizedString = LaunchServices::LocalizedString::Get(**this, *(v23 + 20));
            if (LocalizedString)
            {
              v54 = v46;
              std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](&v54);
              goto LABEL_62;
            }
          }
        }
      }
    }

    v41 = *(this + 56);
    if (v41 && (v42 = *(this + 29)) != 0 && (*(v42 + 9) & 2) == 0 && v41 != _UTTypeGetTypeApplication(**this))
    {
      v43 = _UTGetLocalizedDescription(**this, *(this + 56));
      LocalizedString = LaunchServices::LocalizedString::Get(**this, v43);
      v54 = v46;
      std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](&v54);
      if (LocalizedString)
      {
LABEL_62:
        v33 = 0;
        if (a2)
        {
          goto LABEL_43;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v54 = v46;
      std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](&v54);
    }

    if (*(&v47 + 1))
    {
      if (v23)
      {
        v33 = !_LSClaimFlagsAreWildcard(*(v23 + 8));
      }

      else
      {
        v33 = 1;
      }

      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v33 = 0;
  v9 = @"Unix Executable File";
LABEL_37:
  v36 = LaunchServices::CanonicalString::Find(**this, v9, v32);
  if (v36)
  {
    LocalizedString = LaunchServices::CanonicalString::getLocalizedString(v36);
    if (!a2)
    {
      goto LABEL_44;
    }

LABEL_43:
    *a2 = v33;
    goto LABEL_44;
  }

  v37 = _LSDefaultLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    LaunchServices::BindingEvaluation::getKindStringFromState(v9, v37);
  }

  LocalizedString = 0;
  if (a2)
  {
    goto LABEL_43;
  }

LABEL_44:
  if (a3)
  {
    v38 = v48;
    *a3 = v47;
    *(a3 + 1) = v38;
    objc_storeStrong(a3 + 4, obj[0]);
    objc_storeStrong(a3 + 5, obj[1]);
    *(a3 + 6) = v50;
    *(a3 + 28) = WORD4(v50);
    objc_storeStrong(a3 + 8, v51[0]);
    objc_storeStrong(a3 + 9, v51[1]);
    a3[80] = v52[0];
    objc_storeStrong(a3 + 11, v52[1]);
    *(a3 + 24) = v53;
  }

  if (!LocalizedString)
  {
    v39 = _LSDefaultLog();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      LaunchServices::BindingEvaluation::getKindStringFromState(v39);
    }
  }

  return LocalizedString;
}