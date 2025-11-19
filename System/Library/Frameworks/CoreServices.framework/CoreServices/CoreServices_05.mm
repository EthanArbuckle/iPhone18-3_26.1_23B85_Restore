void sub_1816CEF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  LaunchServices::BindingEvaluation::ExtendedBinding::~ExtendedBinding(va);
  _Unwind_Resume(a1);
}

id LaunchServices::BindingEvaluation::getBoundDisplayNameConstructorsForKindString(void **a1, unsigned int *a2, uint64_t a3, int a4)
{
  v8 = (a2 + 18);
  if (!*(a2 + 9))
  {
    obj = 0;
    _LSBundleCopyNode(**a1, *a2, 0, 0, &obj);
    objc_storeStrong(v8, obj);
  }

  v14 = *(*(a2 + 1) + 168);
  v9 = *a1;
  v10 = *a2;
  v11 = *(a2 + 9);
  if (a4)
  {
    [_LSDisplayNameConstructor displayNameConstructorsWithContext:v9 bundle:v10 bundleClass:&v14 node:v11 error:0];
  }

  else
  {
    [_LSDisplayNameConstructor displayNameConstructorWithContext:v9 bundle:v10 bundleClass:&v14 node:v11 preferredLocalizations:a3 error:0];
  }
  v12 = ;

  return v12;
}

void ___ZNK14LaunchServices16BindingEvaluator32getLocalizedKindStringDictionaryEP9LSContextPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, uint64_t a2, LaunchServices::BindingEvaluation::State *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:a2];
    if (v8)
    {
      goto LABEL_9;
    }

    if ([*(a1 + 32) count] >= 2)
    {
      v9 = *(a1 + 40);
      v19[0] = a2;
      v10 = CFBundleCopyLocalizationsForPreferences(v9, [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1]);
      v11 = [(__CFArray *)v10 firstObject];
      if (v11)
      {
        v12 = [*(a1 + 32) objectForKeyedSubscript:v11];

        v8 = v12;
        if (v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
      }
    }
  }

  v8 = *(a1 + 48);
LABEL_9:
  v13 = LaunchServices::BindingEvaluation::formatAndSanitizeKindString((*(*(a1 + 64) + 8) + 48), a3, v8, v7);
  if (v13 != a3)
  {
    v14 = *(*(*(a1 + 72) + 8) + 40);
    if (!v14)
    {
      v15 = [*(a1 + 56) mutableCopy];
      v16 = *(*(a1 + 72) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      v14 = *(*(*(a1 + 72) + 8) + 40);
    }

    [v14 setObject:v13 forKeyedSubscript:a2];
  }

  v18 = *MEMORY[0x1E69E9840];
}

id LaunchServices::BindingEvaluation::formatAndSanitizeKindString(LaunchServices::BindingEvaluation *this, LaunchServices::BindingEvaluation::State *a2, NSString *a3, _LSDisplayNameConstructor *a4)
{
  if (a3)
  {
    v5 = [(NSString *)a3 unlocalizedNameWithContext:*this, a4];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:a2, v5];

    v7 = v6;
  }

  else
  {
    v7 = a2;
  }

  v8 = _LSBalanceBiDiControlCharacters(v7);

  v9 = _LSReplaceForbiddenCharacters(v8, 0);

  return v9;
}

uint64_t LaunchServices::BindingEvaluator::compareBindings(LaunchServices::BindingEvaluator *this, LSContext *a2, const LSBinding *a3, const LSBinding *a4)
{
  v28[13] = *MEMORY[0x1E69E9840];
  LaunchServices::BindingEvaluation::State::State(v26, a2, this);
  v19 = 0u;
  v20 = 0u;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  LODWORD(v20) = a3->claim;
  *(&v20 + 1) = a3->claimData;
  LODWORD(v19) = a3->bundle;
  *(&v19 + 1) = a3->bundleData;
  v12 = 0u;
  v13 = 0u;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  LODWORD(v13) = a4->claim;
  *(&v13 + 1) = a4->claimData;
  LODWORD(v12) = a4->bundle;
  *(&v12 + 1) = a4->bundleData;
  v8 = LaunchServices::BindingEvaluation::compareBindings(v26, &v19, &v12, v6, v7);

  *&v19 = v28;
  std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](&v19);
  LaunchServices::BindingEvaluator::~BindingEvaluator(&v27, v9);
  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1816CF508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  LaunchServices::BindingEvaluation::ExtendedBinding::~ExtendedBinding(&a9);
  LaunchServices::BindingEvaluation::ExtendedBinding::~ExtendedBinding(&a23);
  LaunchServices::BindingEvaluation::State::~State(&a36);
  _Unwind_Resume(a1);
}

uint64_t LaunchServices::BindingEvaluator::compareBundles(LaunchServices::BindingEvaluator *this, LSContext *a2, unsigned int a3, LSBundleData *a4, unsigned int a5, LSBundleData *a6)
{
  v8.claim = 0;
  memset(&v8.claimData, 0, 32);
  v8.bundle = a3;
  v8.bundleData = a4;
  v7.claim = 0;
  memset(&v7.claimData, 0, 32);
  v7.bundle = a5;
  v7.bundleData = a6;
  return LaunchServices::BindingEvaluator::compareBindings(this, a2, &v8, &v7);
}

uint64_t _LSGetBindingForNodeOrSchemeOrUTI(int a1, void *a2, LaunchServices::BindingEvaluator *this, LaunchServices::BindingEvaluator *a4, int a5, int a6, int *a7, int a8, uint64_t a9)
{
  v40 = *MEMORY[0x1E69E9840];
  LOBYTE(v34[0]) = 0;
  v39 = 0;
  if (a2)
  {
    LaunchServices::BindingEvaluator::CreateWithNode(a2, __p);
    std::optional<LaunchServices::BindingEvaluator>::operator=[abi:nn200100]<LaunchServices::BindingEvaluator,void>(v34, __p);
LABEL_7:
    LaunchServices::BindingEvaluator::~BindingEvaluator(__p, v13);
    v14 = 4294956486;
    goto LABEL_8;
  }

  if (this)
  {
    LaunchServices::BindingEvaluator::CreateWithURLScheme(this, __p);
    std::optional<LaunchServices::BindingEvaluator>::operator=[abi:nn200100]<LaunchServices::BindingEvaluator,void>(v34, __p);
    goto LABEL_7;
  }

  if (a4)
  {
    LaunchServices::BindingEvaluator::CreateWithUTI(a4, 0, __p);
    std::optional<LaunchServices::BindingEvaluator>::operator=[abi:nn200100]<LaunchServices::BindingEvaluator,void>(v34, __p);
    goto LABEL_7;
  }

  v14 = 4294967246;
LABEL_8:
  if (v39 == 1)
  {
    v35 = a6;
    if (a5)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = ___LSGetBindingForNodeOrSchemeOrUTI_block_invoke;
      v26[3] = &__block_descriptor_36_e61_B24__0__LSContext___8r__LSBinding_I__LSBundleData_I______Q_16l;
      v27 = a5;
      v15 = [v26 copy];
      v16 = v37;
      v37 = v15;

      v17 = [@"bundle unit" copy];
      v18 = v38;
      v38 = v17;
    }

    v36 = a8;
    if (a7)
    {
      v25 = *a7;
      std::vector<LSBundleClass>::vector[abi:nn200100](__p, &v25, 1uLL);
      LaunchServices::BindingEvaluator::setAllowedBundleClasses(v34, __p);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    LaunchServices::BindingEvaluator::getBestBinding(__p, v34);
    v19 = 0;
    v20 = v19;
    if (v33 == 1)
    {
      if (a9)
      {
        v21 = v29;
        *a9 = *__p;
        *(a9 + 16) = v21;
        objc_storeStrong((a9 + 32), obj);
        objc_storeStrong((a9 + 40), v31);
        v14 = 0;
        *(a9 + 48) = v32;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = _LSGetOSStatusFromNSError(v19);
    }

    if (v33 == 1)
    {
    }

    if (v39)
    {
      LaunchServices::BindingEvaluator::~BindingEvaluator(v34, v22);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1816CF84C(_Unwind_Exception *a1, NSString *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  LaunchServices::BindingEvaluator::~BindingEvaluator(&__p, a2);
  if (a61 == 1)
  {
    LaunchServices::BindingEvaluator::~BindingEvaluator(&a39, v62);
  }

  _Unwind_Resume(a1);
}

char *LaunchServices::BindingEvaluation::State::getDefaultAppCategoryBeingBound(LaunchServices::BindingEvaluation::State *this)
{
  if (*(this + 280) == 1)
  {
    return *(this + 34);
  }

  v3 = *(this + 27);
  if (v3)
  {
    result = LSDefaultAppCategoryGetInfoForTypeIdentifierOrSubordinateTypeIdentifier(v3);
  }

  else
  {
    v4 = *(this + 2);
    if (v4)
    {
      result = LSDefaultAppCategoryGetInfoForSubordinateClaim(0, v4);
    }

    else
    {
      result = 0;
    }
  }

  *(this + 34) = result;
  *(this + 280) = 1;
  return result;
}

uint64_t LaunchServices::BindingEvaluation::BindingResultImpl::enumerateResults(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v3 = a1 + 24;
  v6 = MEMORY[0x1865D71B0](a2);
  if (v4 != v5)
  {
    while ((v6[2](v6, **(a1 + 8), v4) & 1) != 0)
    {
      v4 += 104;
      if (v4 == v5)
      {
        v4 = v5;
        goto LABEL_12;
      }
    }

    v7 = [[_LSBindingForLog alloc] initWithState:*(a1 + 8) binding:v4];
    LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v8, "binding result filter", v7);

    if (v4 != v5 && v4 + 104 != v5)
    {
      v9 = (v4 + 200);
      do
      {
        if ((v6)[2](v6, **(a1 + 8), v9 - 24))
        {
          v10 = *(v9 - 5);
          *v4 = *(v9 - 6);
          *(v4 + 16) = v10;
          v11 = *(v9 - 8);
          *(v9 - 8) = 0;
          v12 = *(v4 + 32);
          *(v4 + 32) = v11;

          v13 = *(v9 - 7);
          *(v9 - 7) = 0;
          v14 = *(v4 + 40);
          *(v4 + 40) = v13;

          *(v4 + 48) = *(v9 - 6);
          *(v4 + 56) = *(v9 - 20);
          v15 = *(v9 - 4);
          *(v9 - 4) = 0;
          v16 = *(v4 + 64);
          *(v4 + 64) = v15;

          v17 = *(v9 - 3);
          *(v9 - 3) = 0;
          v18 = *(v4 + 72);
          *(v4 + 72) = v17;

          *(v4 + 80) = *(v9 - 16);
          v19 = *(v9 - 1);
          *(v9 - 1) = 0;
          v20 = *(v4 + 88);
          *(v4 + 88) = v19;

          *(v4 + 96) = *v9;
          v4 += 104;
        }

        else
        {
          v21 = [[_LSBindingForLog alloc] initWithState:*(a1 + 8) binding:v9 - 24];
          LaunchServices::BindingEvaluation::logToFile(@"%s: %@ FILTERED", v22, "binding result filter", v21);
        }

        v23 = v9 + 2;
        v9 += 26;
      }

      while (v23 != v5);
    }
  }

LABEL_12:

  v24 = *(a1 + 32);

  return std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::erase(v3, v4, v24);
}

uint64_t std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *>(&v9, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v7 -= 104;
        std::allocator_traits<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::destroy[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding,void,0>(a1, v7);
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void *std::vector<LSBundleClass>::__assign_with_size[abi:nn200100]<LSBundleClass const*,LSBundleClass const*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 > (v8 - *result) >> 2)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v10 = v8 >> 1;
      if (v8 >> 1 <= a4)
      {
        v10 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v11 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<unsigned int>::__vallocate[abi:nn200100](v7, v11);
    }

    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  v12 = result[1];
  v13 = v12 - v9;
  if (a4 <= (v12 - v9) >> 2)
  {
    v19 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v19);
    }

    v18 = &v9[v19];
  }

  else
  {
    if (v12 != v9)
    {
      result = memmove(*result, __src, v12 - v9);
      v12 = v7[1];
    }

    v14 = &__src[v13];
    v15 = v12;
    if (&__src[v13] != a3)
    {
      v15 = v12;
      v16 = v12;
      do
      {
        v17 = *v14;
        v14 += 4;
        *v16 = v17;
        v16 += 4;
        v15 += 4;
      }

      while (v14 != a3);
    }

    v18 = v15;
  }

  v7[1] = v18;
  return result;
}

uint64_t std::vector<LSBinding>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *(v9 + 16);
      *v8 = *v9;
      *(v8 + 16) = v10;
      v11 = *(v9 + 32);
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v8 + 32) = v11;
      *(v8 + 48) = *(v9 + 48);
      v9 += 56;
      v8 += 56;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<LSBinding *,LSBinding *,LSBinding *>(&v13, a2, v7, v6);
}

void *std::__split_buffer<LSBinding>::__construct_at_end_with_size<std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding *>>(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = v4 + 56 * a3;
    do
    {
      v7 = *(a2 + 16);
      *v4 = *a2;
      *(v4 + 16) = v7;
      *(v4 + 32) = *(a2 + 32);
      result = *(a2 + 40);
      v8 = *(a2 + 48);
      *(v4 + 40) = result;
      *(v4 + 48) = v8;
      v4 += 56;
      a2 += 104;
    }

    while (v4 != v6);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

uint64_t std::vector<LSBinding>::__swap_out_circular_buffer(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<LSBinding>,LSBinding*>(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<LSBinding>,LSBinding*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<LSBinding *,LSBinding *,LSBinding *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 56);
      *(a4 - 40) = *(v7 - 40);
      *(a4 - 56) = v8;
      v9 = *(v7 - 24);
      *(v7 - 24) = 0;
      v10 = *(a4 - 24);
      *(a4 - 24) = v9;

      v11 = *(v7 - 16);
      *(v7 - 16) = 0;
      v12 = *(a4 - 16);
      *(a4 - 16) = v11;

      *(a4 - 8) = *(v7 - 8);
      a4 -= 56;
      v7 -= 56;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *,LSBinding *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    v7 = *(v5 + 16);
    *a4 = *v5;
    *(a4 + 16) = v7;
    objc_storeStrong((a4 + 32), *(v5 + 32));
    objc_storeStrong((a4 + 40), *(v5 + 40));
    *(a4 + 48) = *(v5 + 48);
    v5 += 104;
    a4 += 56;
  }

  while (v5 != v6);
  return v6;
}

uint64_t LaunchServices::BindingEvaluator::operator=(uint64_t a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  objc_storeStrong((a1 + 8), *(a2 + 8));
  objc_storeStrong((a1 + 16), *(a2 + 16));
  objc_storeStrong((a1 + 24), *(a2 + 24));
  objc_storeStrong((a1 + 32), *(a2 + 32));
  objc_storeStrong((a1 + 40), *(a2 + 40));
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  objc_storeStrong((a1 + 80), *(a2 + 80));
  v5 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v5;
  if (a1 != a2)
  {
    std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int *,unsigned int *>((a1 + 112), *(a2 + 112), *(a2 + 120), (*(a2 + 120) - *(a2 + 112)) >> 2);
  }

  v6 = MEMORY[0x1865D71B0](*(a2 + 136));
  v7 = *(a1 + 136);
  *(a1 + 136) = v6;

  objc_storeStrong((a1 + 144), *(a2 + 144));
  v8 = MEMORY[0x1865D71B0](*(a2 + 152));
  v9 = *(a1 + 152);
  *(a1 + 152) = v8;

  objc_storeStrong((a1 + 160), *(a2 + 160));
  v10 = MEMORY[0x1865D71B0](*(a2 + 168));
  v11 = *(a1 + 168);
  *(a1 + 168) = v10;

  return a1;
}

void LaunchServices::BindingEvaluation::addStrongBinding(LaunchServices::BindingEvaluation *this, LaunchServices::BindingEvaluation::State *a2)
{
  if ((*(this + 116) & 2) != 0)
  {
    v5 = _LSBindingLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEBUG, "Skipping strong binding binding due to options", v12, 2u);
    }

    LaunchServices::BindingEvaluation::logToFile(@"Skipping strong binding binding due to options", v6);
  }

  else
  {
    v3 = *(this + 1);
    if (v3)
    {
      v23 = *this;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0u;
      v22 = 0u;
      if ([v3 canIssueIO])
      {
        v4 = v3;
      }

      else
      {
        v7 = [FSNode alloc];
        v8 = [v3 URL];
        v4 = [(FSNode *)v7 initWithURL:v8 flags:0 error:0];
      }

      if (LaunchServices::CopyStrongBindingForNode(&v23, v4, 128, 0, &v18, 0))
      {
        LaunchServices::BindingEvaluation::logToFile(@"Adding strong binding", v9);
        v17 = 0;
        v15 = 0u;
        v16 = 0u;
        v13 = 0u;
        v14 = 0u;
        v12[2] = v20;
        v12[3] = v21;
        v12[0] = v18;
        v12[1] = v19;
        if ((LaunchServices::BindingEvaluation::gIsReasonTrackingEnabled & 1) != 0 || (*(this + 118) & 2) != 0)
        {
          *(&v13 + 1) = @"Strong Binding";
        }

        *&v14 = 2;
        LaunchServices::BindingEvaluation::pushBackBinding(this, this + 23, v12);
      }

      else
      {
        LaunchServices::BindingEvaluation::logToFile(@"No strong binding found", v9);
      }

      if (v23)
      {
        if (v25 == 1)
        {
          _LSContextDestroy(v23);
        }
      }

      v10 = v24;
      v23 = 0;
      v24 = 0;

      v25 = 0;
      v11 = v26;
      v26 = 0;
    }
  }
}

void _LSSetCrashMessage(NSString *a1)
{
  v1 = a1;
  if (_LSLoggingQueue(void)::onceToken != -1)
  {
    _LSSetCrashMessage();
  }

  v2 = _LSLoggingQueue(void)::logQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL18_LSSetCrashMessageP8NSString_block_invoke;
  block[3] = &unk_1E6A1A830;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

{
  v1 = a1;
  if (_LSLoggingQueue(void)::onceToken != -1)
  {
    _LSSetCrashMessage();
  }

  v2 = _LSLoggingQueue(void)::logQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL18_LSSetCrashMessageP8NSString_block_invoke_0;
  block[3] = &unk_1E6A1A830;
  v5 = v1;
  v3 = v1;
  dispatch_sync(v2, block);
}

void ___ZL18_LSSetCrashMessageP8NSString_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  if (v1)
  {
    v3 = strdup([v1 UTF8String]);
    v4 = _LSDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      ___ZL18_LSSetCrashMessageP8NSString_block_invoke_cold_1(v3, v4);
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
  v6 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
  atomic_compare_exchange_strong_explicit(&_LSSetCrashReporterMessage(NSString *)::messagePtr, &v6, v3, memory_order_relaxed, memory_order_relaxed);
  if (v6 == v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  free(v7);
  qword_1ED444C70 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
}

void ___ZL15_LSLoggingQueuev_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.launchservices.logging", v2);
  v1 = _LSLoggingQueue(void)::logQueue;
  _LSLoggingQueue(void)::logQueue = v0;
}

uint64_t std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = a2 + v6 - a4;
    v8 = *(a1 + 8);
    do
    {
      std::allocator_traits<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::construct[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::ExtendedBinding,void,0>(a1, v8, v10);
      v10 += 104;
      v8 += 104;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *>(&v12, a2, v7, v6);
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:nn200100]<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>,LaunchServices::BindingEvaluation::ExtendedBinding*,LaunchServices::BindingEvaluation::ExtendedBinding*,LaunchServices::BindingEvaluation::ExtendedBinding*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 32) = *(v6 + 32);
      v8 = *(v6 + 40);
      v9 = *(v6 + 48);
      *(a4 + 40) = v8;
      *(a4 + 48) = v9;
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 64) = *(v6 + 64);
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 88) = *(v6 + 88);
      *(a4 + 96) = *(v6 + 96);
      v6 += 104;
      a4 += 104;
    }

    while (v6 != a3);
  }

  return a4;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a3 + v7;
      v9 = a4 + v7;
      v10 = *(a3 + v7 - 104);
      *(v9 - 88) = *(a3 + v7 - 88);
      *(v9 - 104) = v10;
      v11 = *(a3 + v7 - 72);
      *(a3 + v7 - 72) = 0;
      v12 = *(a4 + v7 - 72);
      *(v9 - 72) = v11;

      v13 = *(a3 + v7 - 64);
      *(v8 - 64) = 0;
      v14 = *(a4 + v7 - 64);
      *(v9 - 64) = v13;

      *(v9 - 56) = *(a3 + v7 - 56);
      *(v9 - 48) = *(a3 + v7 - 48);
      v15 = *(a3 + v7 - 40);
      *(v8 - 40) = 0;
      v16 = *(a4 + v7 - 40);
      *(v9 - 40) = v15;

      v17 = *(a3 + v7 - 32);
      *(v8 - 32) = 0;
      v18 = *(a4 + v7 - 32);
      *(v9 - 32) = v17;

      *(v9 - 24) = *(a3 + v7 - 24);
      v19 = *(a3 + v7 - 16);
      *(v8 - 16) = 0;
      v20 = *(a4 + v7 - 16);
      *(v9 - 16) = v19;

      *(v9 - 8) = *(a3 + v7 - 8);
      v7 -= 104;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    v7 = *(v5 + 16);
    *a4 = *v5;
    *(a4 + 16) = v7;
    objc_storeStrong((a4 + 32), *(v5 + 32));
    objc_storeStrong((a4 + 40), *(v5 + 40));
    *(a4 + 48) = *(v5 + 48);
    *(a4 + 56) = *(v5 + 56);
    objc_storeStrong((a4 + 64), *(v5 + 64));
    objc_storeStrong((a4 + 72), *(v5 + 72));
    *(a4 + 80) = *(v5 + 80);
    objc_storeStrong((a4 + 88), *(v5 + 88));
    *(a4 + 96) = *(v5 + 96);
    *(a4 + 98) = *(v5 + 98);
    v5 += 104;
    a4 += 104;
  }

  while (v5 != v6);
  return v6;
}

void ___ZN14LaunchServices17BindingEvaluationL31weaklyBoundAppHasRequiredClaimsERKNS0_5StateERK9LSBinding_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  [(_LSDatabase *)***(a1 + 40) store];
  v6 = _CSStringCopyCFString();
  v7 = v6;
  if (v6)
  {
    v9 = v6;
    v8 = [v6 isEqualToString:*(*(a1 + 48) + 8)];
    v7 = v9;
    if (v8)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

void ___ZN14LaunchServices17BindingEvaluationL27addExtensionAndOSTypeClaimsERNS0_5StateE_block_invoke(uint64_t a1, int a2, int a3)
{
  v5 = *(*(a1 + 32) + 8);
  if (*(v5 + 24) != a2)
  {
    *(v5 + 24) = a2;
    *(*(*(a1 + 40) + 8) + 24) = _LSDatabaseFindBindingMapIndex(***(a1 + 48), a2);
  }

  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 != -1 && v6 != 2)
  {
    v8 = *(a1 + 48);

    LaunchServices::BindingEvaluation::addClaimsInBindingMap(v8, v6, a3);
  }
}

uint64_t ___ZN14LaunchServices17BindingEvaluationL17addWildcardClaimsERNS0_5StateE_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 175) & 0x10) != 0)
  {
    v4 = result;
    [(_LSDatabase *)***(result + 32) store];
    v5 = *(a3 + 472);
    v6 = *(v4 + 32);
    return _CSArrayEnumerateAllValues();
  }

  return result;
}

void ___ZN14LaunchServices17BindingEvaluationL17addWildcardClaimsERNS0_5StateE_block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  v5 = _LSClaimGet(***(a1 + 32));
  if (v5 && (*(v5 + 8) & 0x10) != 0)
  {
    v7 = 0u;
    v8 = 0u;
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    LODWORD(v7) = *(a1 + 48);
    *(&v7 + 1) = *(a1 + 40);
    LODWORD(v8) = a3;
    *(&v8 + 1) = v5;
    if ((LaunchServices::BindingEvaluation::gIsReasonTrackingEnabled & 1) != 0 || (v6 = *(a1 + 32), (*(v6 + 118) & 2) != 0))
    {
      *(&v9 + 1) = @"Wildcard document claim";
      v6 = *(a1 + 32);
    }

    *&v10 = 1;
    LaunchServices::BindingEvaluation::pushBackBinding(v6, (v6 + 184), &v7);
  }
}

void ___ZN14LaunchServices17BindingEvaluationL21addAlternateUTIClaimsERNS0_5StateE_block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (*(v4 + 224) != a3 && (*(a4 + 8) & 1) != 0 && _UTTypeConformsTo(**v4, a3, *(a1 + 48)))
  {
    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 40);
      v9 = *(a4 + 12);
      [(_LSDatabase *)***(a1 + 32) store];
      v10 = _CSStringCopyCFString();
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_INFO, "Found alternate UTI for extension .%@: %@", &v12, 0x16u);
    }

    LaunchServices::BindingEvaluation::addClaimsInBindingMap(*(a1 + 32), 0, *(a4 + 12));
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t ___ZN14LaunchServices17BindingEvaluationL18addParentUTIClaimsERNS0_5StateE_block_invoke(uint64_t a1, const __CFString *a2)
{
  v4 = 0;
  result = _UTGetActiveTypeForCFStringIdentifier(***(a1 + 32), a2, &v4);
  if (result)
  {
    LaunchServices::BindingEvaluation::addClaimsForParentUTI(*(a1 + 32), result);
    return _UTTypeSearchConformsToTypes(***(a1 + 32), v4, LaunchServices::BindingEvaluation::searchParentUTIsForClaims, *(a1 + 32), 0);
  }

  return result;
}

void *LaunchServices::BindingEvaluation::BindingResultImpl::BindingResultImpl<std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>>(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_1EEF62518;
  a1[1] = a2;
  a1[2] = 0;
  v4 = *a3;
  v5 = a3[1];
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = 0;
  std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__init_with_size[abi:nn200100]<std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding const*>,std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding const*>>(a1 + 3, v4, v5, 0x4EC4EC4EC4EC4EC5 * ((v5 - v4) >> 3));
  return a1;
}

void *std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__init_with_size[abi:nn200100]<std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding const*>,std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding const*>>(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__vallocate[abi:nn200100](result, a4);
    v7 = *(v6 + 8);
    if (a2 == a3)
    {
      v8 = *(v6 + 8);
    }

    else
    {
      v8 = *(v6 + 8);
      do
      {
        result = std::allocator_traits<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::construct[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::ExtendedBinding const&,void,0>(v6, v8, a2);
        a2 += 104;
        v8 += 104;
      }

      while (a2 != a3);
    }

    *(v6 + 8) = v8;
  }

  return result;
}

char *std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__vallocate[abi:nn200100](void *a1, unint64_t a2)
{
  if (a2 >= 0x276276276276277)
  {
    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  v2 = a2;
  LaunchServices::BindingEvaluation::BindingMallocZone::get_zone(void)::zone = malloc_default_zone();
  v2 *= 104;
  result = malloc_type_zone_malloc(LaunchServices::BindingEvaluation::BindingMallocZone::get_zone(void)::zone, v2, 0x10E00401500E465uLL);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[v2];
  return result;
}

void std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__assign_with_size[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding const*,LaunchServices::BindingEvaluation::ExtendedBinding const*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3) >= a4)
  {
    v13 = *(a1 + 8) - v8;
    if (0x4EC4EC4EC4EC4EC5 * (v13 >> 3) >= a4)
    {
      std::__copy_impl::operator()[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *>(&v23, a2, a3, v8);
      v20 = v19;
      v21 = *(a1 + 8);
      if (v21 != v19)
      {
        do
        {
          v21 -= 104;
          std::allocator_traits<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::destroy[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding,void,0>(a1, v21);
        }

        while (v21 != v20);
      }

      *(a1 + 8) = v20;
    }

    else
    {
      v14 = std::__copy_impl::operator()[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *>(&v22, a2, a2 + v13, v8);
      v15 = *(a1 + 8);
      if (v14 == a3)
      {
        v17 = *(a1 + 8);
      }

      else
      {
        v16 = v14;
        v17 = *(a1 + 8);
        v18 = v17;
        do
        {
          std::allocator_traits<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::construct[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::ExtendedBinding const&,void,0>(a1, v18, v16);
          v16 += 104;
          v18 += 104;
          v17 += 104;
        }

        while (v16 != a3);
      }

      *(a1 + 8) = v17;
    }
  }

  else
  {
    std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__vdeallocate(a1);
    if (a4 > 0x276276276276276)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v9 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
    {
      v10 = 0x276276276276276;
    }

    else
    {
      v10 = v9;
    }

    std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__vallocate[abi:nn200100](a1, v10);
    v11 = *(a1 + 8);
    if (v6 == a3)
    {
      v12 = *(a1 + 8);
    }

    else
    {
      v12 = *(a1 + 8);
      do
      {
        std::allocator_traits<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::construct[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::ExtendedBinding const&,void,0>(a1, v12, v6);
        v6 += 104;
        v12 += 104;
      }

      while (v6 != a3);
    }

    *(a1 + 8) = v12;
  }
}

void LaunchServices::BindingEvaluation::BindingResultImpl::~BindingResultImpl(id *this)
{
  *this = &unk_1EEF62518;
  v2 = this + 3;
  std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](&v2);
}

uint64_t LaunchServices::BindingEvaluation::compareVendorsAndBundleClass(LaunchServices::BindingEvaluation *this, LaunchServices::BindingEvaluation::State *a2, uint64_t a3, const LaunchServices::BindingEvaluation::ExtendedBinding *a4, const LaunchServices::BindingEvaluation::ExtendedBinding *a5)
{
  v7 = a2;
  v9 = *(this + 15);
  v10 = *(this + 16);
  if (v9 == v10)
  {
    goto LABEL_8;
  }

  while (*v9 != 14)
  {
    if (++v9 == v10)
    {
      goto LABEL_10;
    }
  }

  if (v9 != v10)
  {
LABEL_8:
    if (LaunchServices::BindingEvaluation::State::getDefaultAppCategoryBeingBound(this) && (*(*(a3 + 8) + 168) == 14 || *(*(a4 + 1) + 168) == 14))
    {
      LaunchServices::BindingEvaluation::logToFile(@"binding default app category with at least one system app placeholder, not preferring apple", v11);
      goto LABEL_49;
    }
  }

LABEL_10:
  v12 = *(a3 + 8);
  if (v12)
  {
    v13 = *(a4 + 1);
    if ((*(v12 + 164) & 1) == 0)
    {
      if (v13 && (*(v13 + 164) & 1) != 0)
      {
        if (v7)
        {
          v14 = "vendor (prioritized is-Apple check)";
        }

        else
        {
          v14 = "vendor";
        }

        LaunchServices::BindingEvaluation::logComparison(this, a3, a4, v14, -1);
        LOBYTE(v15) = -1;
        return v15;
      }

      goto LABEL_20;
    }

    if (!v13 || (*(v13 + 164) & 1) == 0)
    {
      if (v7)
      {
        v18 = "vendor (prioritized is-Apple check)";
      }

      else
      {
        v18 = "vendor";
      }

      LOBYTE(v15) = 1;
      v19 = this;
      v20 = a3;
      v21 = a4;
      v22 = 1;
      goto LABEL_75;
    }

    v23 = *(v12 + 352);
    [(_LSDatabase *)**this store];
    v24 = _CSStringCopyCFString();
    if (v24)
    {
      v25 = _LSBundleGetSystemApplicationTypes();
      v26 = [v25 containsObject:v24];
    }

    else
    {
      v26 = 0;
    }

    v27 = *(*(a4 + 1) + 352);
    [(_LSDatabase *)**this store];
    v28 = _CSStringCopyCFString();
    if (v28)
    {
      v29 = _LSBundleGetSystemApplicationTypes();
      v30 = [v29 containsObject:v28];

      if (!v26)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v30 = 0;
      if (!v26)
      {
        goto LABEL_39;
      }
    }

    if ((v30 & 1) == 0)
    {
      LOBYTE(v15) = 1;
LABEL_44:

      goto LABEL_45;
    }

LABEL_39:
    if (v26 & 1 | ((v30 & 1) == 0))
    {
      v15 = [v24 isEqualToString:@"Internal"];
      v31 = [v28 isEqualToString:@"Internal"];
      if (v15)
      {
        LOBYTE(v15) = (v15 & ~v31) << 31 >> 31;
      }

      else
      {
        LOBYTE(v15) = v31;
      }
    }

    else
    {
      LOBYTE(v15) = -1;
    }

    goto LABEL_44;
  }

  v16 = *(a4 + 1);
  if (!v16)
  {
LABEL_20:
    if (v7)
    {
      v17 = "vendor (prioritized is-Apple check)";
    }

    else
    {
      v17 = "vendor";
    }

    LaunchServices::BindingEvaluation::logComparison(this, a3, a4, v17, 0);
    goto LABEL_49;
  }

  v15 = -(*(v16 + 164) & 1);
LABEL_45:
  if (v7)
  {
    v32 = "vendor (prioritized is-Apple check)";
  }

  else
  {
    v32 = "vendor";
  }

  LaunchServices::BindingEvaluation::logComparison(this, a3, a4, v32, v15);
  if (!v15)
  {
LABEL_49:
    v33 = *(*(a3 + 8) + 168);
    v34 = *(*(a4 + 1) + 168);
    if (v33 != 16 || v34 == 16)
    {
      if (v33 != 16 && v34 == 16)
      {
        LOBYTE(v15) = 1;
        goto LABEL_71;
      }

      if (v33 != 14 || v34 == 14)
      {
        LOBYTE(v15) = v33 != 14 && v34 == 14;
        goto LABEL_71;
      }
    }

    LOBYTE(v15) = -1;
LABEL_71:
    if (v7)
    {
      v18 = "system placeholder (prioritized is-Apple check)";
    }

    else
    {
      v18 = "system placeholder";
    }

    v22 = v15;
    v19 = this;
    v20 = a3;
    v21 = a4;
LABEL_75:
    LaunchServices::BindingEvaluation::logComparison(v19, v20, v21, v18, v22);
  }

  return v15;
}

id LaunchServices::BindingEvaluation::getBindingPath(void ***this, LaunchServices::BindingEvaluation::State *a2, const LaunchServices::BindingEvaluation::ExtendedBinding *a3)
{
  v5 = *(a2 + 8);
  if (!v5)
  {
    v6 = _LSAliasGetPath(**this, **(a2 + 1));
    v7 = *(a2 + 8);
    *(a2 + 8) = v6;

    v5 = *(a2 + 8);
  }

  return v5;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *,LaunchServices::BindingEvaluation::ExtendedBinding *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *(v5 + 16);
      *a4 = *v5;
      *(a4 + 16) = v7;
      v8 = *(v5 + 32);
      *(v5 + 32) = 0;
      v9 = *(a4 + 32);
      *(a4 + 32) = v8;

      v10 = *(v5 + 40);
      *(v5 + 40) = 0;
      v11 = *(a4 + 40);
      *(a4 + 40) = v10;

      *(a4 + 48) = *(v5 + 48);
      *(a4 + 56) = *(v5 + 56);
      v12 = *(v5 + 64);
      *(v5 + 64) = 0;
      v13 = *(a4 + 64);
      *(a4 + 64) = v12;

      v14 = *(v5 + 72);
      *(v5 + 72) = 0;
      v15 = *(a4 + 72);
      *(a4 + 72) = v14;

      *(a4 + 80) = *(v5 + 80);
      v16 = *(v5 + 88);
      *(v5 + 88) = 0;
      v17 = *(a4 + 88);
      *(a4 + 88) = v16;

      *(a4 + 96) = *(v5 + 96);
      v5 += 104;
      a4 += 104;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

double _LSBindingListBufferInit(uint64_t a1, void *a2)
{
  *&result = 8184;
  *a2 = 8184;
  return result;
}

uint64_t _LSBindingListBufferAppend(void *a1, unsigned int *a2, unsigned int a3, unsigned int a4)
{
  v7 = a1;
  v8 = a2 + 2;
  v9 = a2[1];
  if (!v9)
  {
LABEL_6:
    v13 = 0;
LABEL_20:
    v17 = *a2;
    if (v17 >= 0xC)
    {
      a2[1] = v9 + 1;
      memmove(v8 + 3, v8, a2 - v8 - v17 + 0x2000);
      *v8 = a3;
      [(_LSDatabase *)v7 store];
      _CSStringRetain();
      v8[1] = 1;
      v8[2] = a4;
      [(_LSDatabase *)v7 store];
      _CSStringRetain();
      *a2 -= 12;
      v13 = 1;
    }

    goto LABEL_22;
  }

  v10 = 0;
  while (1)
  {
    if (*v8 > a3)
    {
      v13 = 0;
      goto LABEL_18;
    }

    v11 = v8 + 2;
    v12 = v8[1];
    if (*v8 == a3)
    {
      break;
    }

    v8 = &v11[v12];
    if (v9 == ++v10)
    {
      goto LABEL_6;
    }
  }

  if (v12)
  {
    v14 = 0;
    while (v8[v14 + 2] != a4)
    {
      if (v12 == ++v14)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = 1;
  }

  else
  {
    LODWORD(v14) = 0;
    v13 = 0;
  }

  if (v14 == v12)
  {
LABEL_16:
    v15 = *a2;
    if (v15 < 4)
    {
      goto LABEL_22;
    }

    v8[1] = v12 + 1;
    v16 = &v11[v12];
    memmove(&v11[(v12 + 1)], v16, a2 - v16 - v15 + 0x2000);
    *v16 = a4;
    [(_LSDatabase *)v7 store];
    _CSStringRetain();
    v9 = a2[1];
    *a2 -= 4;
    v13 = 1;
  }

LABEL_18:
  if (v9 == v10 || *v8 != a3)
  {
    goto LABEL_20;
  }

LABEL_22:

  return v13;
}

uint64_t _LSBindingListBufferAppendNSString(void *a1, unsigned int *a2, unsigned int a3, void *a4, int a5)
{
  v9 = a1;
  v10 = a4;
  StringForCFString = _LSDatabaseCreateStringForCFString(v9, v10, a5);
  if (StringForCFString)
  {
    v12 = _LSBindingListBufferAppend(v9, a2, a3, StringForCFString);
    [(_LSDatabase *)v9 store];
    _CSStringRelease();
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

double _LSBindingListBufferReset(void *a1, uint64_t a2)
{
  _LSBindingListDataReleaseContents(a1, (a2 + 4));
  *&result = 8184;
  *a2 = 8184;
  return result;
}

void _LSBindingListDataReleaseContents(void *a1, unsigned int *a2)
{
  v10 = a1;
  if (*a2)
  {
    v3 = 0;
    v4 = a2 + 1;
    do
    {
      v5 = *v4;
      [(_LSDatabase *)v10 store];
      _CSStringRelease();
      if (v4[1])
      {
        v6 = 0;
        do
        {
          v7 = v4[v6 + 2];
          [(_LSDatabase *)v10 store];
          _CSStringRelease();
          ++v6;
          v8 = v4[1];
        }

        while (v6 < v8);
        v9 = 4 * v8;
      }

      else
      {
        v9 = 0;
      }

      v4 = (v4 + v9 + 8);
      ++v3;
    }

    while (v3 < *a2);
  }
}

uint64_t _LSBindingListCreate(void *a1, unsigned int *a2, _DWORD *a3)
{
  v5 = a1;
  v6 = v5;
  v7 = a2 + 1;
  if (a2[1])
  {
    [(_LSDatabase *)v5 store];
    v8 = *([(_LSDatabase *)v6 schema]+ 1596);
    v9 = *a2;
    v10 = CSStoreAllocUnitWithData();
    *a3 = v10;
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      _LSBindingListDataReleaseContents(v6, a2 + 1);
      v11 = 4294957803;
    }

    *a2 = 8184;
  }

  else
  {
    v11 = 0;
    v7 = a3;
  }

  *v7 = 0;

  return v11;
}

void _LSBindingListDestroy()
{
  v0 = MEMORY[0x1EEE9AC00]();
  [(_LSDatabase *)v0 store];
  v1 = *([(_LSDatabase *)v0 schema]+ 1596);
  if (CSStoreGetUnit())
  {
    [(_LSDatabase *)v0 store];
    v2 = *([(_LSDatabase *)v0 schema]+ 1596);
    CSStoreGetUnit();
    [(_LSDatabase *)v0 store];
    v3 = *([(_LSDatabase *)v0 schema]+ 1596);
    CSStoreFreeUnit();
  }

  else
  {
    puts("_LSBindingListDestroy: binding list not found");
  }
}

uint64_t _LSBindingListValidate(void *a1, int a2, const char **a3)
{
  v5 = a1;
  v6 = v5;
  if (a2)
  {
    [(_LSDatabase *)v5 store];
    v10 = *([(_LSDatabase *)v6 schema]+ 1596);
    Unit = CSStoreGetUnit();
    v12 = bindingListDataHasValidLength(Unit, 0);
    if (v12)
    {
      v8 = 0;
      if (*Unit)
      {
        v7 = v12;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
      v8 = "Invalid length";
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (a3)
  {
    *a3 = v8;
  }

  return v7;
}

uint64_t _LSBindingListActivate()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v3 = v0;
  [(_LSDatabase *)v3 store];
  v4 = *([(_LSDatabase *)v3 schema]+ 1596);
  Unit = CSStoreGetUnit();
  if (Unit)
  {
    if (bindingListDataHasValidLength(Unit, 0))
    {
      if (__dst)
      {
        v6 = 0;
        v7 = 0;
        v8 = &v16;
        do
        {
          BindingMapIndex = _LSDatabaseFindBindingMapIndex(v3, *v8);
          v10 = v8[1];
          if (BindingMapIndex << 16 != -65536 && v8[1])
          {
            v11 = 0;
            do
            {
              v12 = v8[v11 + 2];
              v13 = _LSBindableActivate(v3, v2);
              ++v11;
              v10 = v8[1];
            }

            while (v11 < v10);
            v6 = v13;
          }

          v8 += v10 + 2;
          ++v7;
        }

        while (v7 != __dst);
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 4294957799;
    }
  }

  else
  {
    v6 = 4294957797;
  }

  return v6;
}

uint64_t _LSBindingListDeactivate()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v3 = v0;
  [(_LSDatabase *)v3 store];
  v4 = *([(_LSDatabase *)v3 schema]+ 1596);
  Unit = CSStoreGetUnit();
  if (Unit)
  {
    if (bindingListDataHasValidLength(Unit, 0))
    {
      if (__dst)
      {
        v6 = 0;
        v7 = 0;
        v8 = &v16;
        do
        {
          BindingMapIndex = _LSDatabaseFindBindingMapIndex(v3, *v8);
          v10 = v8[1];
          if (BindingMapIndex << 16 != -65536 && v8[1])
          {
            v11 = 0;
            do
            {
              v12 = v8[v11 + 2];
              v13 = _LSBindableDeactivate(v3, v2);
              ++v11;
              v10 = v8[1];
            }

            while (v11 < v10);
            v6 = v13;
          }

          v8 += v10 + 2;
          ++v7;
        }

        while (v7 != __dst);
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 4294957799;
    }
  }

  else
  {
    v6 = 4294957797;
  }

  return v6;
}

void _LSBindingListEnumerate(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  [(_LSDatabase *)v4 store];
  v6 = *([(_LSDatabase *)v4 schema]+ 1596);
  Unit = CSStoreGetUnit();
  v8 = Unit;
  if (Unit)
  {
    v13 = 0;
    if (*Unit)
    {
      v9 = 0;
      v10 = Unit + 1;
      do
      {
        v11 = 0;
        while (1)
        {
          v12 = v10[1];
          if (v11 >= v12)
          {
            break;
          }

          (*(v5 + 2))(v5, *v10, v10[v11++ + 2], &v13);
          if (v13)
          {
            goto LABEL_9;
          }
        }

        v10 += v12 + 2;
        ++v9;
      }

      while (v9 < *v8);
    }
  }

LABEL_9:
}

void _LSBindingListGetVisualizationFunctions(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = LaunchServices::BindingLists::display;
  a1[2] = 0;
}

uint64_t LaunchServices::BindingLists::display(void **this, LSContext *a2, uint64_t a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v8 = a4;
  if (a3)
  {
    v25 = 0;
    if (!_LSBindingListValidate(*this, a3, &v25))
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = ___ZN14LaunchServices12BindingListsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke;
      v22[3] = &unk_1E6A18D78;
      v23 = v8;
      v24 = v25;
      [v23 withWarningColors:v22];
    }

    [(_LSDatabase *)*this store];
    StringTable = _CSStoreGetStringTable();
    v10 = objc_opt_new();
    v11 = [v8 visualizer];
    [v10 setVisualizer:v11];

    [v10 setInsertsNewlines:0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___ZN14LaunchServices12BindingListsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_2;
    v16[3] = &unk_1E6A1A9E0;
    v19 = this;
    v20 = a3;
    v12 = v10;
    v17 = v12;
    v21 = StringTable;
    v13 = v8;
    v18 = v13;
    [v12 withReferenceToUnit:a2 unit:a3 block:v16];
    v14 = [v12 attributedString];
    [v13 writeAttributedString:v14];
  }

  return 1;
}

void ___ZN14LaunchServices12BindingListsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_2(uint64_t a1)
{
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = -1;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 1;
  v2 = **(a1 + 48);
  v3 = *(a1 + 56);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZN14LaunchServices12BindingListsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_3;
  v7[3] = &unk_1E6A1A9B8;
  v4 = *(a1 + 32);
  v14 = *(a1 + 60);
  v8 = v4;
  v10 = v15;
  v11 = v19;
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v12 = v17;
  v13 = v5;
  v9 = v6;
  _LSBindingListEnumerate(v2, v3, v7);

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
}

void sub_1816D2748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void ___ZN14LaunchServices12BindingListsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_3(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 80);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZN14LaunchServices12BindingListsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_4;
  v8[3] = &unk_1E6A1A990;
  v11 = *(a1 + 48);
  v9 = v6;
  v13 = *(a1 + 72);
  v14 = a3;
  v15 = a2;
  v12 = *(a1 + 56);
  v10 = *(a1 + 40);
  [v9 withReferenceToUnit:v7 unit:a3 block:v8];
}

void ___ZN14LaunchServices12BindingListsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_4(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  if (*(v2 + 24) == 1)
  {
    *(v2 + 24) = 0;
  }

  else
  {
    [*(a1 + 32) write:{@", "}];
  }

  v3 = *(a1 + 80);
  [(_LSDatabase *)**(a1 + 72) store];
  v4 = _CSStringCopyCFString();
  if (v4)
  {
    v5 = *(a1 + 84);
    v6 = *(*(a1 + 56) + 8);
    if (v5 != *(v6 + 24))
    {
      *(v6 + 24) = v5;
      *(*(*(a1 + 64) + 8) + 24) = _LSDatabaseFindBindingMapIndex(**(a1 + 72), *(a1 + 84));
    }

    v7 = *(*(*(a1 + 64) + 8) + 24);
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = @".%@";
      }

      else
      {
        if (v7 != 5)
        {
          [*(a1 + 32) write:v4];
          goto LABEL_18;
        }

        v8 = @"%@:";
      }

      [*(a1 + 32) writeFormat:v8, v4];
    }

    else
    {
      v17 = 0;
      active = _UTGetActiveTypeForIdentifier(**(a1 + 72), *(a1 + 80), &v17);
      v11 = *(a1 + 32);
      if (active)
      {
        v12 = [(_LSDatabase *)**(a1 + 72) schema];
        v13 = [v11 link:*(v12 + 16) unit:v17 linkedText:v4];
        [v11 write:v13];
      }

      else
      {
        [*(a1 + 32) write:v4];
      }
    }
  }

  else
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ___ZN14LaunchServices12BindingListsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_5;
    v14[3] = &unk_1E6A1A968;
    v9 = *(a1 + 40);
    v15 = *(a1 + 32);
    v16 = *(a1 + 80);
    [v9 withWarningColors:v14];
  }

LABEL_18:
}

void sub_1816D2A70(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t (*initBRCopyRepresentedFileNameForFaultFileURL(const __CFURL *a1))(const __CFURL *)
{
  v2 = CloudDocsLibrary(void)::frameworkLibrary;
  if (!CloudDocsLibrary(void)::frameworkLibrary)
  {
    v2 = dlopen("/System/Library/PrivateFrameworks/CloudDocs.framework/CloudDocs", 2);
    CloudDocsLibrary(void)::frameworkLibrary = v2;
  }

  result = dlsym(v2, "BRCopyRepresentedFileNameForFaultFileURL");
  softLinkBRCopyRepresentedFileNameForFaultFileURL[0] = result;
  if (result)
  {

    return result(a1);
  }

  return result;
}

void _LSSliceMaskWriteDescription(void *a1, unsigned int a2)
{
  v3 = a1;
  [v3 beginFlags:@"slices" flags:a2];
  [v3 flag:1 name:@"ppc"];
  [v3 flag:2 name:@"ppc64"];
  [v3 flag:4 name:@"i386"];
  [v3 flag:8 name:@"x86_64"];
  [v3 flag:16 name:@"x86_64h"];
  [v3 flag:32 name:@"armv6"];
  [v3 flag:64 name:@"armv7"];
  [v3 flag:128 name:@"arm64"];
  [v3 flag:256 name:@"arm64e"];
  [v3 flag:512 name:@"armv7f"];
  [v3 flag:1024 name:@"armv7s"];
  [v3 flag:2048 name:@"armv7k"];
  [v3 flag:4096 name:@"armv7m"];
  [v3 flag:0x2000 name:@"armv7em"];
  [v3 flag:0x4000 name:@"arm64_32"];
  [v3 flag:0x8000 name:@"arm64_32v8"];
  [v3 endFlags];
}

uint64_t _LSBundleDisplayNameContextGetIndex(void *a1)
{
  v1 = a1;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = -1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___LSBundleDisplayNameContextGetIndex_block_invoke;
  v5[3] = &unk_1E6A1AA30;
  v6 = v1;
  v7 = &v8;
  v2 = v1;
  _LSBundleDisplayNameContextEnumerate(v5);
  v3 = v9[3];

  _Block_object_dispose(&v8, 8);
  return v3;
}

void sub_1816D317C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _LSBundleBaseFlagsWriteDescription(void *a1, unint64_t a2)
{
  v3 = a1;
  [v3 beginBitfieldFlags:@"base flags"];
  [v3 flag:a2 & 1 name:@"apple-internal" color:255];
  [v3 flag:(a2 >> 1) & 1 name:@"requires-garbage-collection" color:16711680];
  [v3 flag:(a2 >> 2) & 1 name:@"built-with-tsan"];
  [v3 flag:(a2 >> 3) & 1 name:@"link-enabled"];
  [v3 flag:(a2 >> 4) & 1 name:@"secured-system-content" color:8388863];
  [v3 flag:(a2 >> 5) & 1 name:@"redactible" color:16711935];
  [v3 endFlags];
}

__CFString *_LSBundleClassGetName(unsigned int a1)
{
  if (a1 >= 0x11)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"0x%llx", a1];
  }

  else
  {
    v2 = off_1E6A1AC30[a1];
  }

  return v2;
}

uint64_t _LSPrepareMimicForBundleLookup(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = _LSPrepareMimicForBundleClass(v3, a2);
  if (v4)
  {
    v9 = sel_nameWithError_;
    v10 = sel_getVolumeIdentifier_error_;
    v11 = sel_getCreationDate_error_;
    v12 = sel_getFileIdentifier_error_;
    v13 = sel_canonicalPathWithError_;
    v14 = sel_getInodeNumber_error_;
    v5 = v3;
    v6 = 0;
    v7 = 1;
    do
    {
      if (v7)
      {
        v7 = [v5 populateSimpleSelector:(&v9)[v6] error:{a2, v9, v10, v11, v12, v13, v14}];
      }

      else
      {
        v7 = 0;
      }

      ++v6;
    }

    while (v6 != 6);
  }

  return v4;
}

uint64_t _LSBundleDataMayBeOnNetwork(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    a2 = *(a2 + 4) && (v5 = _LSContainerGet(v3)) != 0 && (*v5 & 1) == 0;
  }

  return a2;
}

uint64_t _LSBundleDataIsIncomplete(void *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (v3 && a2)
  {
    v5 = *(a2 + 172);
    if ((v5 & 0x20000000000200) != 0)
    {
      if ((v5 & 0x2000000000) != 0 && (*(a2 + 164) & 1) != 0 && *(a2 + 148) == 2)
      {
        v6 = _LSDefaultLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = *(a2 + 12);
          v8 = _LSDatabaseGetNSStringFromString(v4);
          *buf = 138543362;
          v20 = v8;
          _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_INFO, "Ignoring first-party applet %{public}@ in /Library during incompleteness check", buf, 0xCu);
        }
      }

      else
      {
        v18 = 1;
      }
    }

    else
    {
      v9 = v3;
      [(_LSDatabase *)v4 store];
      v10 = *(a2 + 480);
      v14 = v4;
      _CSArrayEnumerateAllValues();
    }
  }

  v11 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_1816D3750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSBundleAdd(void *a1, uint64_t a2, _DWORD *a3)
{
  v4 = a1;
  v5 = v4;
  if (v4 && [(_LSDatabase *)v4 store])
  {
    [(_LSDatabase *)v5 store];
    v6 = *([(_LSDatabase *)v5 schema]+ 4);
    v7 = CSStoreAllocUnitWithData();
    if (v7)
    {
      [(_LSDatabase *)v5 setApplicationsChanged:?];
      v8 = 0;
      if (a3)
      {
        *a3 = v7;
      }
    }

    else
    {
      v8 = 4294957803;
    }
  }

  else
  {
    v8 = 4294967246;
  }

  return v8;
}

id _LSBundleGetRegistrationNotification(void *a1, int a2, char a3, uint64_t a4)
{
  v7 = a1;
  v8 = _LSBundleGet(v7, a2);
  if (v8)
  {
    v9 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v11 = *(v8 + 12);
    [(_LSDatabase *)v7 store];
    values = _CSStringCopyCFString();
    if (values)
    {
      v12 = CFArrayCreate(v9, &values, 1, MEMORY[0x1E695E9C0]);
      if (v12)
      {
        CFDictionaryAddValue(Mutable, @"bundleIDs", v12);
        CFRelease(v12);
      }

      CFRelease(values);
    }

    v13 = *(v8 + 108);
    [(_LSDatabase *)v7 store];
    v14 = _CSStringCopyCFString();
    if (v14)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E695E120], v14);
      CFRelease(v14);
    }

    v15 = *(v8 + 172);
    v16 = *MEMORY[0x1E695E4D0];
    if ((v15 & 0x40000) != 0)
    {
      v17 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v17 = *MEMORY[0x1E695E4C0];
    }

    CFDictionaryAddValue(Mutable, @"isPlaceholder", v17);
    if (a3)
    {
      CFDictionaryAddValue(Mutable, @"isForcedUpdate", v16);
    }

    if (Mutable)
    {
      v18 = [objc_alloc(MEMORY[0x1E696AD80]) initWithName:a4 object:0 userInfo:Mutable];

      goto LABEL_17;
    }
  }

  else
  {
  }

  v18 = 0;
LABEL_17:

  return v18;
}

uint64_t _LSBundleRemove(void *a1, int a2, int a3)
{
  __dst[71] = *MEMORY[0x1E69E9840];
  v5 = a1;
  [(_LSDatabase *)v5 store];
  v6 = _LSBundleGet(v5, a2);
  memcpy(__dst, v6, 0x238uLL);
  [(_LSDatabase *)v5 setApplicationsChanged:?];
  if ((HIDWORD(__dst[21]) & 0x40000) != 0)
  {
    v60 = v5;
    _LSDatabaseEnumeratingBindingMap(v60);
    v8 = &v60;
  }

  else
  {
    [(_LSDatabase *)v5 store];
    v7 = *([(_LSDatabase *)v5 schema]+ 4);
    v64 = MEMORY[0x1E69E9820];
    v65 = 3221225472;
    v66 = ___LSBundleRemove_block_invoke_2;
    v67 = &unk_1E6A1AB20;
    memcpy(v69, __dst, sizeof(v69));
    v68 = v5;
    _CSStoreEnumerateUnits();
    v8 = &v68;
  }

  _LSDatabaseDisposeStringArray(v5, SHIDWORD(__dst[58]));
  if (LODWORD(__dst[59]))
  {
    v9 = v5;
    [(_LSDatabase *)v5 store];
    v59 = v5;
    _CSArrayEnumerateAllValues();
    v10 = v59;
    [(_LSDatabase *)v59 store];
    _CSArrayDispose();
  }

  if (HIDWORD(__dst[59]))
  {
    v11 = v5;
    [(_LSDatabase *)v5 store];
    v58 = v5;
    _CSArrayEnumerateAllValues();
    v12 = v58;
    [(_LSDatabase *)v58 store];
    _CSArrayDispose();
  }

  if (LODWORD(__dst[60]))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v14 = v5;
    [(_LSDatabase *)v5 store];
    v57 = v5;
    _CSArrayEnumerateAllValues();
    v15 = v57;
    [(_LSDatabase *)v57 store];
    _CSArrayDispose();
  }

  else
  {
    Mutable = 0;
  }

  if (LODWORD(__dst[61]))
  {
    v16 = v5;
    [(_LSDatabase *)v5 store];
    v56 = v5;
    _CSArrayEnumerateAllValues();
    v17 = v56;
    [(_LSDatabase *)v56 store];
    _CSArrayDispose();
  }

  _LSBindableDeactivate(v5, a2);
  _LSBindableDeactivate(v5, a2);
  if (HIDWORD(__dst[12]))
  {
    _LSBindableDeactivate(v5, a2);
  }

  if (HIDWORD(__dst[61]))
  {
    _LSBundleDeactivateBindingsForUserActivityTypes(v5, a2, __dst);
    v18 = v5;
    [(_LSDatabase *)v5 store];
    _CSArrayDispose();
  }

  if (HIDWORD(__dst[69]))
  {
    _LSBindableDeactivate(v5, a2);
  }

  v19 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v20 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v21 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v22 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v23 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v24 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v25 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v26 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v27 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v28 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v29 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v30 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v31 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v32 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v33 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v34 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  _LSDatabaseDisposeStringArray(v5, SHIDWORD(__dst[60]));
  v35 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v36 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v37 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v38 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  _LSPlistRemove(v5, SHIDWORD(__dst[55]));
  v39 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v40 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  _LSDatabaseDisposeStringArray(v5, SHIDWORD(__dst[38]));
  _LSDatabaseDisposeStringArray(v5, __dst[39]);
  _LSDatabaseDisposeStringArray(v5, SHIDWORD(__dst[66]));
  _LSDatabaseDisposeStringArray(v5, SHIDWORD(__dst[57]));
  _LSDatabaseDisposeStringArray(v5, __dst[62]);
  _LSDatabaseDisposeStringArray(v5, SHIDWORD(__dst[11]));
  v41 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v42 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v43 = v5;
  [(_LSDatabase *)v5 store];
  _CSArrayDispose();
  _LSPlistRemove(v5, __dst[57]);
  _LSPlistRemove(v5, __dst[17]);
  _LSPlistRemove(v5, SHIDWORD(__dst[17]));
  _LSPlistRemove(v5, __dst[18]);
  _LSPlistRemove(v5, SHIDWORD(__dst[64]));
  _LSPlistRemove(v5, __dst[19]);
  _LSPlistRemove(v5, __dst[68]);
  v44 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  v45 = v5;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  _LSDatabaseDisposeStringArray(v5, SHIDWORD(__dst[62]));
  _LSDatabaseDisposeStringArray(v5, __dst[63]);
  LaunchServices::LocalizedString::Remove(v5, LODWORD(__dst[14]));
  LaunchServices::LocalizedString::Remove(v5, LODWORD(__dst[13]));
  LaunchServices::LocalizedString::Remove(v5, HIDWORD(__dst[14]));
  LaunchServices::LocalizedString::Remove(v5, LODWORD(__dst[15]));
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = ___LSBundleRemove_block_invoke_5;
  v61[3] = &unk_1E6A1AB70;
  v46 = v5;
  v62 = v46;
  memcpy(v63, __dst, sizeof(v63));
  _LSBundleDisplayNameContextEnumerate(v61);
  if (LODWORD(__dst[0]))
  {
    _LSAliasRemove(v46, __dst[0]);
  }

  if (HIDWORD(__dst[63]))
  {
    _LSAliasRemove(v46, SHIDWORD(__dst[63]));
  }

  if (LODWORD(__dst[12]))
  {
    _LSAliasRemove(v46, __dst[12]);
  }

  _LSDatabaseDisposeStringArray(v46, SHIDWORD(__dst[65]));
  v47 = v46;
  [(_LSDatabase *)v46 store];
  _CSArrayDispose();
  v48 = v46;
  [(_LSDatabase *)v46 store];
  v49 = v46;
  _CSArrayEnumerateAllValues();
  v50 = v49;
  [(_LSDatabase *)v49 store];
  _CSArrayDispose();
  _LSPlistRemove(v49, __dst[69]);
  v51 = v49;
  [(_LSDatabase *)v49 store];
  _CSStringRelease();
  v52 = v49;
  v53 = *([(_LSDatabase *)v49 schema]+ 4);
  CSStoreFreeUnit();
  if (a3 || Mutable)
  {
    _LSDatabaseCommit(v49);
    if (Mutable)
    {
      LSPluginSendNotification(v49, @"com.apple.LaunchServices.pluginsunregistered", Mutable);
      CFRelease(Mutable);
    }
  }

  v54 = *MEMORY[0x1E69E9840];
  return 0;
}

void _LSBundleSetFlags(void *a1)
{
  v1 = a1;
  [(_LSDatabase *)v1 store];
  v2 = *([(_LSDatabase *)v1 schema]+ 4);
  _CSStoreWriteToUnit();
}

void _LSBundleSetMoreFlags(void *a1)
{
  v1 = a1;
  [(_LSDatabase *)v1 store];
  v2 = *([(_LSDatabase *)v1 schema]+ 4);
  _CSStoreWriteToUnit();
}

void _LSBundleSetLegacySpecialApplicationTypes(void *a1, uint64_t a2, int a3, int a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = _LSBundleGet(v7, a2);
  if (v8)
  {
    v9 = v7;
    if (!LSBundleMeetsBasicDefaultAppRequirements(v9, a2, v8))
    {
      goto LABEL_24;
    }

    v10 = LSGetDefaultAppCategoryInfoForCategory(1);
    v11 = (*(v10 + 4))(v9, a2, v8, 0, a3 ^ 1u);
    v12 = LSGetDefaultAppCategoryInfoForCategory(2);
    v13 = (*(v12 + 4))(v9, a2, v8, 0, a3 ^ 1u);
    if (((v11 | v13) & 1) == 0)
    {
      goto LABEL_24;
    }

    memcpy(__dst, v8, sizeof(__dst));
    if (v13)
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    *(&__dst[47] + 1) = v14 | v11 | *(&__dst[47] + 1) & 0xFFFFFFFC;
    if (!a4)
    {
LABEL_23:
      v21 = v9;
      [(_LSDatabase *)v9 store];
      v22 = v9;
      v23 = *([(_LSDatabase *)v9 schema]+ 4);
      _CSStoreWriteToUnit();
LABEL_24:

      goto LABEL_25;
    }

    v15 = LSGetDefaultAppsClaimUnitIDForBundle(v9, a2);
    if (a3)
    {
      if (v11)
      {
        if (!v15)
        {
          v16 = &unk_1EEF8F178;
LABEL_17:
          if (v13)
          {
            v16 = [v16 arrayByAddingObject:@"com.apple.default-app.mail-client"];
          }

          v18 = *MEMORY[0x1E695E178];
          v30[0] = @"LSItemContentTypes";
          v30[1] = v18;
          v31[0] = v16;
          v31[1] = @"Viewer";
          v30[2] = *MEMORY[0x1E695E170];
          v31[2] = @"Default Apps Claim";
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:3];
          v20 = _LSDefaultLog();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v27 = v16;
            v28 = 2048;
            v29 = a2;
            _os_log_impl(&dword_18162D000, v20, OS_LOG_TYPE_DEFAULT, "adding claim for default app types %@ for bundle %llx", buf, 0x16u);
          }

          v25 = v19;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
          _LSRegisterDocumentTypes(v9);
        }
      }

      else
      {
        if (v15)
        {
          v17 = 0;
        }

        else
        {
          v17 = v13;
        }

        if (v17)
        {
          v16 = MEMORY[0x1E695E0F0];
          goto LABEL_17;
        }
      }
    }

    *&__dst[69] = _LSDatabaseGetSequenceNumber(v9) + 1;
    __dst[134] = CFAbsoluteTimeGetCurrent();
    _LSDatabaseSetSequenceNumber();
    goto LABEL_23;
  }

LABEL_25:

  v24 = *MEMORY[0x1E69E9840];
}

_LSStringLocalizer *_LSBundleGetLocalizer(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  if (!a2 || (v10 = _LSBundleGet(v7, a2)) == 0)
  {
    if (v8 && [v8 isDirectory])
    {
      v12 = [_LSStringLocalizer alloc];
      v13 = [v8 URL];
      v14 = [(_LSStringLocalizer *)v12 initWithBundleURL:v13 stringsFile:@"InfoPlist"];

      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if ((*(v10 + 184) & 8) == 0)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_13;
  }

  if (a3 || *(v10 + 168) != 11)
  {
    v11 = [[_LSStringLocalizer alloc] initWithDatabase:v7 bundleUnit:a2 delegate:a3];
  }

  else
  {
    v11 = +[_LSStringLocalizer coreTypesLocalizer];
  }

  v14 = v11;
LABEL_13:
  objc_autoreleasePoolPop(v9);

  return v14;
}

NSObject *_LSBundleGetLocalizedName(void *a1, uint64_t a2, void *a3, void *a4, void *a5, char a6)
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = _LSBundleGet(v11, a2);
  v16 = v15;
  v17 = v12 == 0;
  if (v12)
  {
    Index = _LSBundleDisplayNameContextGetIndex(v12);
    if (Index == -1)
    {
      v17 = 1;
      goto LABEL_13;
    }

    v19 = (v16 + 4 * Index + 520);
    goto LABEL_7;
  }

  if ((a6 & 1) != 0 || (v20 = *(v15 + 112), !v20))
  {
    v19 = (v15 + 104);
LABEL_7:
    v20 = *v19;
  }

  v21 = LaunchServices::LocalizedString::Get(v11, v20);
  if (v21)
  {
    v22 = LaunchServices::LocalizedString::localizeUnsafely(v21, v11, v14);
    if (v22)
    {
      v23 = _LSDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        _LSBundleGetShortDescription(v11, a2);
        objc_claimAutoreleasedReturnValue();
        _LSBundleGetLocalizedName_cold_1();
      }

      goto LABEL_27;
    }
  }

LABEL_13:
  v24 = _LSDefaultLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    _LSBundleGetShortDescription(v11, a2);
    objc_claimAutoreleasedReturnValue();
    _LSBundleGetLocalizedName_cold_2();
  }

  if (!v17)
  {
    v27 = 0;
    goto LABEL_37;
  }

  v25 = _LSBundleGetLocalizer(v11, a2, 0, v13);
  v23 = v25;
  if (!v25)
  {
    goto LABEL_34;
  }

  if (v12)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@#%@", *MEMORY[0x1E695E120], v12];
    v22 = [v23 localizedStringWithString:v26 preferredLocalizations:v14];

    if (!v22)
    {
LABEL_34:
      v27 = 0;
LABEL_36:

      goto LABEL_37;
    }
  }

  else if ((a6 & 1) != 0 || ([v25 localizedStringWithString:*MEMORY[0x1E695E120] preferredLocalizations:v14], (v22 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v22 = [v23 localizedStringWithString:*MEMORY[0x1E695E4F8] preferredLocalizations:v14];
    if (!v22)
    {
      goto LABEL_34;
    }
  }

  if (![__LSDefaultsGetSharedInstance() markLocalizationsStoredInDatabase])
  {
LABEL_27:

    goto LABEL_28;
  }

  v27 = [v22 stringByAppendingString:@"🔥"];

  v22 = v27;
  if (v27)
  {
LABEL_28:
    v28 = [v22 length];
    v27 = 0;
    if (v28 <= 0x400 && v28)
    {
      v29 = [v13 extensionWithError:0];
      v23 = v29;
      if (v29 && [v29 length])
      {
        v27 = [v22 stringByAppendingPathExtension:v23];
      }

      else
      {
        v27 = v22;
      }
    }

    else
    {
      v23 = v22;
    }

    goto LABEL_36;
  }

LABEL_37:

  v30 = *MEMORY[0x1E69E9840];

  return v27;
}

id _LSBundleGetShortDescription(void *a1, int a2)
{
  v3 = a1;
  v4 = _LSBundleGet(v3, a2);
  v5 = v4;
  if (v4)
  {
    v6 = LaunchServices::LocalizedString::Get(v3, *(v4 + 112));
    if (v6)
    {
      v7 = LaunchServices::LocalizedString::localizeUnsafely(v6, v3, 0);
    }

    else
    {
      v7 = 0;
    }

    v8 = LaunchServices::LocalizedString::Get(v3, *(v5 + 104));
    if (v8)
    {
      v9 = LaunchServices::LocalizedString::localizeUnsafely(v8, v3, 0);

      v7 = v9;
    }

    if (!v7)
    {
      v10 = *(v5 + 100);
      [(_LSDatabase *)v3 store];
      v7 = _CSStringCopyCFString();
      if (!v7)
      {
        v11 = *(v5 + 12);
        [(_LSDatabase *)v3 store];
        v7 = _CSStringCopyCFString();
        if (!v7)
        {
          v7 = _LSAliasGetName(v3, *v5);
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id _LSBundleGetDisplayNameForNodeWithUnregisteredBundleType(uint64_t *a1, void *a2, void *a3, uint64_t *a4)
{
  v7 = a2;
  v8 = a3;
  if (!_LSBundleNodeHasUnregisteredPersonality(a1, v7, v8, 0))
  {
    v10 = 0;
    v15 = 0;
    goto LABEL_25;
  }

  v27 = 0;
  v9 = [v7 bundleInfoDictionaryWithError:&v27];
  v10 = v27;
  if (v9)
  {
    v11 = objc_opt_class();
    v12 = *MEMORY[0x1E695E120];
    v13 = [v9 objectForKey:*MEMORY[0x1E695E120]];
    v14 = v13;
    if (v11 && v13)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = 0;
        v16 = v14;
        v17 = v10;
        goto LABEL_22;
      }

LABEL_9:
      v26 = v10;
      v18 = [v7 nameWithError:&v26];
      v17 = v26;

      if (v18)
      {
        v19 = [v18 stringByDeletingPathExtension];
        v20 = v19;
        if (v19 && ![v19 caseInsensitiveCompare:v14])
        {
          v16 = _LSBundleGetLocalizer(*a1, 0, 0, v7);
        }

        else
        {
          v16 = 0;
        }

        if (!v16)
        {
          v15 = 0;
LABEL_23:
          v10 = v17;
          goto LABEL_24;
        }

        v21 = [v7 URL];
        v22 = [v21 ls_preferredLocalizations];
        v23 = [v16 localizedStringWithString:v12 preferredLocalizations:v22];

        if (v23)
        {
          v15 = [v23 stringByAppendingPathExtension:v8];
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
        v16 = v14;
      }

LABEL_22:

      goto LABEL_23;
    }

    if (v13)
    {
      goto LABEL_9;
    }
  }

  v15 = 0;
LABEL_24:

LABEL_25:
  if (!(v15 | v10))
  {
    v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, 0, "_LSBundleGetDisplayNameForNodeWithUnregisteredBundleType", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSBundle.mm", 2096);
  }

  if (a4 && !v15)
  {
    v24 = v10;
    *a4 = v10;
  }

  return v15;
}

uint64_t _LSBundleNodeHasUnregisteredPersonality(uint64_t *a1, void *a2, void *a3, int *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a4)
  {
    v10 = *a4;
  }

  else
  {
    if (v8)
    {
      v11 = _LSGetBundleClassForExtensionNSString(v8);
    }

    else
    {
      v11 = _LSGetBundleClassForNode(a1, v7);
    }

    v10 = v11;
  }

  HasUnregisteredPersonality = _LSBundleClassHasUnregisteredPersonality(v10);
  v13 = HasUnregisteredPersonality;
  if (!v10 && !HasUnregisteredPersonality)
  {
    inUTI = 0;
    if ([v7 getCachedResourceValueIfPresent:&inUTI forKey:*MEMORY[0x1E695DC68] error:0])
    {
      v13 = UTTypeConformsTo(inUTI, @"com.apple.localizable-name-bundle");
    }

    else
    {
      LaunchServices::TypeEvaluator::TypeEvaluator(v17, v7);
      v16 = 0;
      if (LaunchServices::TypeEvaluator::getTypeUnit(v17, a1, &v16, 0) && (TypeLocalizableNameBundle = _UTTypeGetTypeLocalizableNameBundle(*a1)) != 0)
      {
        v13 = _UTTypeConformsTo(*a1, v16, TypeLocalizableNameBundle);
      }

      else
      {
        v13 = 0;
      }
    }
  }

  return v13;
}

uint64_t _LSBundleCopyStringDictionaryForKey(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_autoreleasePoolPush();
  v11 = _LSBundleGetLocalizer(a1, a2, 0, a3);
  v12 = v11;
  if (v11)
  {
    v13 = [v11 localizedStringDictionaryWithString:a4 defaultValue:a5];
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v10);
  return v13;
}

uint64_t _LSBundleInfoPlistKeyIsCommon(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (_LSBundleInfoPlistKeyIsCommon::once != -1)
  {
    _LSBundleInfoPlistKeyIsCommon_cold_1();
  }

  if ([_LSBundleInfoPlistKeyIsCommon::explicitlyIgnoredKeys containsObject:a1])
  {
    v2 = 0;
  }

  else if ([_LSBundleInfoPlistKeyIsCommon::explicitlyIncludedKeys containsObject:a1])
  {
    v2 = 1;
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = _LSBundleInfoPlistKeyIsCommon::prefixes;
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v3);
          }

          if ([a1 hasPrefix:{*(*(&v9 + 1) + 8 * i), v9}])
          {
            v2 = 1;
            goto LABEL_17;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v2 = 0;
LABEL_17:
  }

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _LSBundleCopyArchitecturesAvailable(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  if (v3)
  {
    if (a2)
    {
      v5 = _LSBundleGet(v3, a2);
      if (v5)
      {
        v6 = objc_autoreleasePoolPush();
        v5 = _LSBundleCopyArchitectures_Common(v5);
        objc_autoreleasePoolPop(v6);
      }
    }
  }

  return v5;
}

__CFString *_LSGetDescriptionForPersonaType(unint64_t a1)
{
  if (a1 >= 5)
  {
    v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"InvalidType(%lu)", a1];
  }

  else
  {
    v1 = off_1E6A1AD10[a1];
  }

  return v1;
}

void _LSBundleGetVisualizationFunctions(id (**a1)(void **this, LSContext *a2, int a3)@<X8>)
{
  *a1 = LaunchServices::Bundles::getSummary;
  a1[1] = LaunchServices::Bundles::display;
  a1[2] = LaunchServices::Bundles::copyBindingForVisualization;
}

BOOL LaunchServices::Bundles::display(void **this, LSContext *a2, unsigned int a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v163 = *MEMORY[0x1E69E9840];
  v113 = a4;
  v116 = this;
  v7 = _LSBundleGet(*this, a3);
  v8 = v7;
  if (!v7)
  {
    goto LABEL_94;
  }

  if (*(v7 + 512) != 11)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
    [v113 write:@"revision" number:v9];
  }

  v10 = *v116;
  v156 = 0;
  v11 = _LSBundleCreateNode(v10, a3, 0, 0, &v156);
  v12 = v156;
  v13 = v12;
  v112 = v8;
  v109 = v11;
  if (!v11 || (v155 = v12, v14 = [v11 checkResourceIsReachableAndReturnError:&v155], v15 = v155, v13, v13 = v15, (v14 & 1) == 0))
  {
    v152[0] = MEMORY[0x1E69E9820];
    v152[1] = 3221225472;
    v152[2] = ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke;
    v152[3] = &unk_1E6A1ABE8;
    v153 = v113;
    v15 = v13;
    v154 = v15;
    [v153 withWarningColors:v152];
  }

  v16 = v8[42];
  v108 = _LSBundleClassGetName(v8[42]);
  [v113 write:@"class" format:{@"%@ (0x%llx)", v108, v16}];
  v17 = [v113 link:*(-[_LSDatabase schema](*v116) + 1580) unit:v8[1]];
  [v113 write:@"container" string:v17];

  v18 = v116;
  v19 = v8;
  v20 = v8[1];
  v21 = _LSContainerGet(*v116);
  if (v21)
  {
    v22 = _LSContainerStateGetDescription(*(v21 + 2));
    [v113 write:@"mount state" string:v22];

    v19 = v8;
    v18 = v116;
  }

  [v113 write:@"Driver Extensions" arrayStringID:v19[121]];
  v23 = v19 + 69;
  if (*(v19 + 71))
  {
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    [v113 write:@"Compatibility" number:v24];

    v19 = v8;
    v18 = v116;
  }

  if (v23[8])
  {
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:?];
    [v113 write:@"InstallFailure" number:v25];

    v19 = v8;
    v18 = v116;
  }

  [v113 write:@"Mach-O UUIDs" arrayStringID:v19[23]];
  v111 = [MEMORY[0x1E695DF70] array];
  if (v19[75])
  {
    [(_LSDatabase *)*v18 store];
    v26 = v19[75];
    v147 = MEMORY[0x1E69E9820];
    v148 = 3221225472;
    v149 = ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_2;
    v150 = &unk_1E6A18FC8;
    v151 = v111;
    _CSArrayEnumerateAllValues();

    v19 = v8;
  }

  [v113 write:@"Device Family" array:v111];
  [v113 write:@"Counterparts" arrayID:v19[77]];
  [v113 write:@"EquivalentIDs" arrayStringID:v19[78]];
  [v113 write:@"App Clip Parents" arrayStringID:v19[133]];
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*v23];
  [v113 write:@"sequenceNum" number:v27];

  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v23[2]];
  [v113 write:@"itemID" number:v28];

  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v23[13]];
  [v113 write:@"FamilyID" number:v29];

  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v23[11]];
  [v113 write:@"PurchaserID" number:v30];

  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v23[12]];
  [v113 write:@"DownloaderID" number:v31];

  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v23[10]];
  [v113 write:@"staticSize" number:v32];

  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8[84]];
  [v113 write:@"installType" number:v33];

  v34 = [v113 link:*(-[_LSDatabase schema](*v116) + 1584) unit:v8[127]];
  [v113 write:@"appContainer" string:v34];

  v35 = [v113 link:*(-[_LSDatabase schema](*v116) + 1584) unit:v8[24]];
  [v113 write:@"dataContainer" string:v35];

  v36 = [v113 link:*(-[_LSDatabase schema](*v116) + 1584) unit:*v8];
  [v113 write:@"path" string:v36];

  [v113 write:@"directory" directoryClass:*(v8 + 148)];
  [v113 write:@"name" stringID:v8[25]];
  [v113 write:@"displayName" stringID:v8[27]];
  [v113 childUnit:@"localizedNames" table:*(-[_LSDatabase schema](*v116) + 1604) unit:v8[28]];
  [v113 childUnit:@"localizedShortNames" table:*(-[_LSDatabase schema](*v116) + 1604) unit:v8[26]];
  [v113 childUnit:@"localizedMicrophoneUsage" table:*(-[_LSDatabase schema](*v116) + 1604) unit:v8[29]];
  [v113 childUnit:@"localizedIdentityUsageDescription" table:*(-[_LSDatabase schema](*v116) + 1604) unit:v8[30]];
  v143[0] = MEMORY[0x1E69E9820];
  v143[1] = 3221225472;
  v143[2] = ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_3;
  v143[3] = &unk_1E6A1AC10;
  v37 = v113;
  v144 = v37;
  v145 = v116;
  v146 = v112;
  _LSBundleDisplayNameContextEnumerate(v143);
  [v37 write:@"itemName" stringID:*(v112 + 388)];
  [v37 write:@"teamID" stringID:*(v112 + 16)];
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v112 + 392)];
  [v37 write:@"storeFront" number:v38];

  v39 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v112 + 400)];
  [v37 write:@"versionID" number:v39];

  [v37 write:@"sourceAppBundleID" stringID:*(v112 + 408)];
  [v37 write:@"ratingLabel" stringID:*(v112 + 428)];
  v40 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v23[18]];
  [v37 write:@"ratingRank" number:v40];

  [v37 write:@"genre" stringID:*(v112 + 440)];
  v41 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v112 + 432)];
  [v37 write:@"genreID" number:v41];

  [v37 childUnit:@"distributorInfo" table:*(-[_LSDatabase schema](*v116) + 1600) unit:*(v112 + 444)];
  v142 = 0;
  v42 = *(v112 + 316);
  if (v42)
  {
    _UTGetActiveTypeForIdentifier(*v116, v42, &v142);
    if (v142)
    {
      v43 = [(_LSDatabase *)*v116 schema];
      v44 = [v37 link:*(v43 + 16) unit:v142];
      [v37 write:@"category" string:v44];

      goto LABEL_21;
    }

    v45 = *(v112 + 316);
  }

  else
  {
    v45 = 0;
  }

  [v37 write:@"category" stringID:v45];
LABEL_21:
  v141 = 0;
  v46 = *(v112 + 320);
  if (!v46)
  {
    v50 = 0;
LABEL_26:
    [v37 write:@"2ry category" stringID:v50];
    v49 = v112;
    goto LABEL_27;
  }

  _UTGetActiveTypeForIdentifier(*v116, v46, &v141);
  if (!v141)
  {
    v50 = *(v112 + 320);
    goto LABEL_26;
  }

  v47 = [(_LSDatabase *)*v116 schema];
  v48 = [v37 link:*(v47 + 16) unit:v141];
  [v37 write:@"2ry category" string:v48];

  v49 = v112;
LABEL_27:
  [v37 write:@"identifier" stringID:*(v49 + 12)];
  if (*(v49 + 12) != *(v49 + 304))
  {
    [v37 write:@"canonical id" stringID:?];
  }

  [v37 write:@"vendor" stringID:*(v49 + 348)];
  [v37 write:@"type" stringID:*(v49 + 352)];
  v51 = *(v49 + 44);
  v161 = *(v49 + 28);
  v162 = v51;
  [v37 write:@"version" version:&v161];
  [v37 write:@"versionString" stringID:*(v49 + 328)];
  [v37 write:@"displayVersion" stringID:*(v49 + 332)];
  [v37 write:@"codeInfoID" stringID:*(v49 + 124)];
  [v37 write:@"signerOrg" stringID:*(v49 + 128)];
  [v37 write:@"signer identity" stringID:*(v49 + 132)];
  [v37 write:@"appVariant" stringID:*(v49 + 412)];
  [v37 write:@"managementDeclarationID" stringID:*(v49 + 416)];
  [v37 write:@"mod date" interval:*(v49 + 200)];
  [v37 write:@"reg date" interval:*(v49 + 24)];
  [v37 write:@"rec mod date" interval:*(v49 + 536)];
  if (*(v49 + 513))
  {
    v138[0] = MEMORY[0x1E69E9820];
    v138[1] = 3221225472;
    v138[2] = ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_4;
    v138[3] = &unk_1E6A18D78;
    v139 = v37;
    v140 = v49;
    [v139 withWarningColors:v138];

    v49 = v112;
  }

  v52 = v37;
  [v52 beginFlags:@"bundle flags" flags:*(v49 + 172)];
  [v52 flag:2 name:@"has-display-name"];
  [v52 flag:4 name:@"ui-element"];
  [v52 flag:8 name:@"bg-only"];
  [v52 flag:16 name:@"shell-script"];
  [v52 flag:32 name:@"one-instance"];
  [v52 flag:64 name:@"trash" color:16711680];
  [v52 flag:128 name:@"launch-disabled" color:16711680];
  [v52 flag:256 name:@"exec-for-bundle"];
  [v52 flag:512 name:@"no-executable" color:16711680];
  [v52 flag:1024 name:@"quarantined" color:16711680];
  [v52 flag:2048 name:@"requires-old-java-stub" color:16711680];
  [v52 flag:4096 name:@"requires-iphone-os"];
  [v52 flag:0x2000 name:@"requires-java-runtime"];
  [v52 flag:0x4000 name:@"version-too-low" color:16711680];
  [v52 missingFlag:0x8000 name:@"shows-sec-prompts"];
  [v52 flag:0x10000 name:@"is-Newsstand-App"];
  [v52 flag:0x20000 name:@"restricted-download"];
  [v52 flag:0x40000 name:@"is-Placeholder" color:12566272];
  [v52 flag:0x80000 name:@"is-AppUpdate"];
  [v52 flag:0x100000 name:@"requires-iphone-simulator"];
  [v52 flag:0x200000 name:@"is-Beta-App"];
  [v52 flag:0x400000 name:@"is-purchased-redownload"];
  [v52 flag:0x1000000 name:@"has-MID-based-SINF"];
  [v52 flag:0x2000000 name:@"missing-required-SINF"];
  [v52 flag:0x4000000 name:@"is-ad-hoc-signed"];
  [v52 flag:0x8000000 name:@"handles-file-url"];
  [v52 flag:0x10000000 name:@"wildcard"];
  [v52 flag:0x20000000 name:@"supports-audiobooks"];
  [v52 flag:0x40000000 name:@"externally-playable-content"];
  [v52 flag:0x80000000 name:@"file-sharing-enabled"];
  [v52 flag:0x100000000 name:@"contains-settings-bundle"];
  [v52 flag:0x200000000 name:@"supports-open-in-place"];
  [v52 flag:0x400000000 name:@"supports-purgeable-local-storage"];
  [v52 flag:0x1000000000 name:@"in-generational-storage" color:16711680];
  [v52 flag:0x2000000000 name:@"is-applet"];
  [v52 flag:0x4000000000 name:@"is-containerized"];
  [v52 flag:0x10000000000 name:@"is-deletable"];
  [v52 flag:0x20000000000 name:@"launch-prohibited" color:16711680];
  [v52 flag:0x40000000000 name:@"always-available-app"];
  [v52 flag:0x80000000000 name:@"supports-odr"];
  [v52 flag:0x100000000000 name:@"has-custom-notification"];
  [v52 flag:0x200000000000 name:@"has-watch-glance"];
  [v52 flag:0x400000000000 name:@"has-parallel-placeholder"];
  [v52 flag:0x20000000000000 name:@"no-info.plist" color:16711680];
  [v52 flag:0x2000000000000 name:@"game-center"];
  [v52 flag:0x4000000000000 name:@"ever-game-center"];
  [v52 flag:0x8000000000000 name:@"device-based-VPP"];
  [v52 flag:0x20000000000000 name:@"no-info.plist" color:16711680];
  [v52 flag:0x100000000000000 name:@"uses-system-persona"];
  [v52 flag:0x800000000000000 name:@"arcade-app"];
  [v52 flag:0x1000000000000000 name:@"app-clip"];
  [v52 flag:0x4000000000000000 name:@"supports-CarPlay-dashboard-scene"];
  [v52 flag:0x8000000000000000 name:@"supports-CarPlay-instrument-cluster-scene"];
  [v52 endFlags];

  v53 = *(v112 + 189);
  v54 = v52;
  [v54 beginBitfieldFlags:@"more flags"];
  [v54 flag:v53 & 1 name:@"web-browser" color:8028671];
  [v54 flag:(v53 >> 1) & 1 name:@"mail-client" color:14124031];
  [v54 flag:(v53 >> 2) & 1 name:@"supports-controller-user-interaction"];
  [v54 flag:(v53 >> 3) & 1 name:@"spotlight-continuation"];
  [v54 flag:(v53 >> 4) & 1 name:@"spotlight-actions"];
  [v54 flag:(v53 >> 5) & 1 name:@"code-signing-info-not-authoritative" color:16727808];
  [v54 flag:(v53 >> 6) & 1 name:@"LSApplicationQueriesSchemes-too-big" color:16727808];
  [v54 flag:(v53 >> 7) & 1 name:@"is-update-available" color:5213952];
  [v54 flag:(v53 >> 8) & 1 name:@"is-playgrounds-app"];
  [v54 flag:(v53 >> 9) & 1 name:@"supports-aod"];
  [v54 flag:(v53 >> 10) & 1 name:@"defaults-to-aod-private"];
  [v54 flag:(v53 >> 11) & 1 name:@"supports-live-activities"];
  [v54 flag:(v53 >> 12) & 1 name:@"supports-live-activities-frequent-updates"];
  [v54 flag:(v53 >> 13) & 1 name:@"requires-post-processing"];
  [v54 flag:(v53 >> 14) & 1 name:@"has-shell-role"];
  [v54 flag:(v53 >> 15) & 1 name:@"requires-secure-launch" color:16711680];
  [v54 flag:(v53 >> 16) & 1 name:@"watch-install-eligible"];
  [v54 flag:(v53 >> 17) & 1 name:@"eligibility-checked-browser"];
  [v54 flag:(v53 >> 18) & 1 name:@"eligibility-checked-browser-engine-embedder"];
  [v54 flag:(v53 >> 19) & 1 name:@"managed-app-distributor"];
  [v54 flag:(v53 >> 20) & 1 name:@"app-protection-hidden" color:16711680];
  [v54 flag:(v53 >> 21) & 1 name:@"app-protection-locked" color:16711680];
  [v54 flag:(v53 >> 22) & 1 name:@"supports-data-export"];
  [v54 flag:(v53 >> 23) & 1 name:@"has-supports-game-mode"];
  [v54 flag:(v53 >> 24) & 1 name:@"supports-game-mode"];
  [v54 flag:(v53 >> 25) & 1 name:@"on-cryptex"];
  [v54 endFlags];

  v55 = v54;
  v56 = *(v112 + 180);
  if ((v56 & 0x10000) != 0)
  {
    if (*(v112 + 476))
    {
      [(_LSDatabase *)*v116 store];
      v57 = *(v112 + 476);
      Count = _CSArrayGetCount();
    }

    else
    {
      Count = 0;
    }

    if (*(v112 + 472))
    {
      [(_LSDatabase *)*v116 store];
      v59 = *(v112 + 472);
      v60 = _CSArrayGetCount();
    }

    else
    {
      v60 = 0;
    }

    if (!(Count | v60))
    {
      v56 |= 0x10u;
    }
  }

  [v55 beginFlags:@"plist flags" flags:v56];
  [v55 flag:1 name:@"has-environment"];
  [v55 flag:2 name:@"has-quarantine-path-exclusion"];
  [v55 flag:8 name:@"has-min-sys-version-by-arch"];
  [v55 flag:16 name:@"has-ignored-custom-bindings"];
  [v55 flag:32 name:@"has-eligibility-deletion-domain"];
  [v55 flag:64 name:@"has-journal-notification-format"];
  [v55 flag:128 name:@"launch-with-label"];
  [v55 flag:256 name:@"has-directions-app-modes"];
  [v55 flag:512 name:@"has-uibackgroundmodes"];
  [v55 flag:1024 name:@"has-audiocomponents"];
  [v55 flag:2048 name:@"has-sbapptags"];
  [v55 flag:4096 name:@"has-vpn-plugins"];
  [v55 flag:0x2000 name:@"has-required-device-capabilities"];
  [v55 flag:0x4000 name:@"has-cohort-metadata"];
  [v55 flag:0x10000 name:@"has-custom-bindings"];
  [v55 flag:0x20000 name:@"has-subgenres"];
  [v55 flag:0x8000 name:@"has-externalAccessory-protocols"];
  [v55 flag:0x200000 name:@"has-supported-intents-list"];
  [v55 flag:0x800000 name:@"has-substituted-executable"];
  [v55 flag:0x2000000 name:@"has-install-uninstall-predicate"];
  [v55 flag:0x4000000 name:@"has-feature-flag-predicate"];
  [v55 endFlags];

  v61 = v55;
  [v61 beginFlags:@"icon flags" flags:*(v112 + 188)];
  [v61 flag:1 name:@"relative-icon-path"];
  [v61 flag:2 name:@"has-prerendered-icon"];
  [v61 flag:4 name:@"supports-asset-catalog"];
  [v61 flag:8 name:@"supports-alternate-icons"];
  [v61 endFlags];

  _LSSliceMaskWriteDescription(v61, *(v112 + 156));
  v62 = v61;
  [v62 beginFlags:@"item flags" flags:*(v112 + 184)];
  [v62 flag:1 name:@"file"];
  [v62 flag:8 name:@"container"];
  [v62 flag:2 name:@"package"];
  [v62 flag:4 name:@"application"];
  [v62 flag:16 name:@"alias"];
  [v62 flag:32 name:@"symlink"];
  [v62 flag:4096 name:@"volume"];
  [v62 flag:64 name:@"invisible"];
  [v62 flag:0x100000 name:@"extension-hidden"];
  [v62 flag:128 name:@"native-app"];
  [v62 flag:256 name:@"classic-app" color:16711680];
  [v62 flag:512 name:@"prefers-native-cfm"];
  [v62 flag:1024 name:@"prefers-classic-cfm" color:16711680];
  [v62 flag:2048 name:@"scriptable"];
  [v62 flag:0x200000 name:@"services"];
  [v62 flag:0x20000 name:@"am-custom-service-types"];
  [v62 flag:0x2000 name:@"executable"];
  [v62 flag:0x400000 name:@"unsupported-format" color:16711680];
  [v62 endFlags];

  v63 = v112;
  _LSBundleBaseFlagsWriteDescription(v62, *(v112 + 164));
  if (*(v112 + 149))
  {
    v64 = _LSProfileValidationStateGetVisualizationDescription(*(v112 + 149));
    [v62 write:@"validation" string:v64];

    v63 = v112;
  }

  [v62 write:@"platform" platform:*(v63 + 20)];
  [v62 write:@"iconName" stringID:*(v63 + 448)];
  [v62 write:@"alternate primary icon" stringID:*(v63 + 452)];
  if (*(v63 + 456))
  {
    [v62 childUnit:@"iconDict" table:*(-[_LSDatabase schema](*v116) + 1600) unit:*(v63 + 456)];
  }

  [v62 write:@"icons" arrayStringID:*(v63 + 460)];
  [v62 write:@"executable" stringID:*(v63 + 8)];
  v65 = *(v63 + 224);
  v161 = *(v63 + 208);
  v162 = v65;
  v159 = kLSVersionNumberNull;
  v160 = unk_1817E90C0;
  if (_LSVersionNumberCompare(&v161, &v159))
  {
    v66 = *(v112 + 224);
    v161 = *(v112 + 208);
    v162 = v66;
    [v62 write:@"min version" version:&v161];
    [v62 write:@"min version platform" platform:*(v112 + 204)];
  }

  v67 = *(v112 + 256);
  v161 = *(v112 + 240);
  v162 = v67;
  v159 = kLSVersionNumberNull;
  v160 = unk_1817E90C0;
  if (_LSVersionNumberCompare(&v161, &v159))
  {
    v68 = *(v112 + 256);
    v161 = *(v112 + 240);
    v162 = v68;
    [v62 write:@"max version" version:&v161];
  }

  v69 = *(v112 + 76);
  v161 = *(v112 + 60);
  v162 = v69;
  v159 = kLSVersionNumberNull;
  v160 = unk_1817E90C0;
  if (_LSVersionNumberCompare(&v161, &v159))
  {
    v70 = *(v112 + 76);
    v161 = *(v112 + 60);
    v162 = v70;
    [v62 write:@"execSDK ver" version:&v161];
  }

  [v62 write:@"App Store tools build version" stringID:*(v112 + 272)];
  [v62 write:@"personas" arrayStringID:*(v112 + 524)];
  v110 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v71 = v112;
  v72 = v116;
  if (*(v112 + 528))
  {
    [(_LSDatabase *)*v116 store];
    v73 = *(v112 + 528);
    v133 = MEMORY[0x1E69E9820];
    v134 = 3221225472;
    v135 = ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_5;
    v136 = &unk_1E6A18FC8;
    v137 = v110;
    _CSArrayEnumerateAllValues();

    v71 = v112;
    v72 = v116;
  }

  [v62 write:@"personaTypes" array:v110];
  [v62 childUnit:@"infoDictionary" table:*(-[_LSDatabase schema](*v72) + 1600) unit:v71[34]];
  [v62 write:@"library" stringID:v71[116]];
  [v62 write:@"library items" arrayStringID:v71[117]];
  [v62 write:@"queriable schemes" arrayStringID:v71[124]];
  [v62 write:@"BGPermittedIDs" arrayStringID:v71[125]];
  [v62 write:@"CarPlay URL Schemes" arrayStringID:v71[126]];
  [v62 write:@"activityTypes" arrayID:v71[123]];
  [v62 childUnit:@"MI Install IDs" table:*(-[_LSDatabase schema](*v72) + 1600) unit:v71[136]];
  [(_LSDatabase *)*v72 store];
  v74 = v71[135];
  v127 = MEMORY[0x1E69E9820];
  v128 = 3221225472;
  v129 = ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_6;
  v130 = &unk_1E6A19480;
  v131 = v62;
  v132 = v72;
  _CSArrayEnumerateAllValues();
  v115 = v131;
  [v131 write:@"management domain" stringID:v71[137]];
  [v131 write:@"linked parent bundleID" stringID:v71[139]];
  [v131 write:@"serialized placeholder" stringID:v71[140]];
  [v131 childUnit:@"stashed app info" table:*(-[_LSDatabase schema](*v72) + 1600) unit:v71[138]];
  v75 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v71[40]];
  [v131 write:@"code signature version" number:v75];

  if (*(v112 + 168) == 2)
  {
    context = objc_autoreleasePoolPush();
    v76 = [MEMORY[0x1E695DF70] array];
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v77 = _LSGetAllClaimedTypesOrSchemesForBundleID(v116, v112, 14, 1);
    v78 = [v77 countByEnumeratingWithState:&v123 objects:v158 count:16];
    if (v78)
    {
      v79 = *v124;
      do
      {
        for (i = 0; i != v78; ++i)
        {
          if (*v124 != v79)
          {
            objc_enumerationMutation(v77);
          }

          v81 = *(*(&v123 + 1) + 8 * i);
          if (UTTypeIsDynamic(v81))
          {
            v82 = UTTypeCopyPreferredTagWithClass(v81, @"public.filename-extension");
            v83 = v82;
            if (v82)
            {
              [(__CFString *)v81 stringByAppendingFormat:@" (.%@)", v82];
              v81 = v84 = v81;
            }

            else
            {
              v87 = UTTypeCopyPreferredTagWithClass(v81, @"public.mime-type");
              v84 = v87;
              if (v87)
              {
                v88 = [(__CFString *)v81 stringByAppendingFormat:@" (MIME %@)", v87];

                v81 = v88;
              }
            }
          }

          else
          {
            LODWORD(v161) = 0;
            if (_UTGetActiveTypeForCFStringIdentifier(*v116, v81, &v161))
            {
              v85 = [(_LSDatabase *)*v116 schema];
              v86 = [v115 link:*(v85 + 16) unit:v161 linkedText:v81];

              v81 = v86;
            }
          }

          [v76 addObject:v81];
        }

        v78 = [v77 countByEnumeratingWithState:&v123 objects:v158 count:16];
      }

      while (v78);
    }

    [v76 sortUsingSelector:sel_caseInsensitiveCompare_];
    [v115 write:@"claimed UTIs" array:v76];

    objc_autoreleasePoolPop(context);
    inTagClass = objc_autoreleasePoolPush();
    v89 = [MEMORY[0x1E695DF70] array];
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v90 = _LSGetAllClaimedTypesOrSchemesForBundleID(v116, v112, 14, 0);
    v91 = [v90 countByEnumeratingWithState:&v119 objects:v157 count:16];
    if (v91)
    {
      v92 = *v120;
      do
      {
        for (j = 0; j != v91; ++j)
        {
          if (*v120 != v92)
          {
            objc_enumerationMutation(v90);
          }

          v94 = *(*(&v119 + 1) + 8 * j);
          v95 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:", v94];

          [v89 addObject:v95];
        }

        v91 = [v90 countByEnumeratingWithState:&v119 objects:v157 count:16];
      }

      while (v91);
    }

    [v89 sortUsingSelector:sel_caseInsensitiveCompare_];
    [v115 write:@"claimed schemes" array:v89];

    objc_autoreleasePoolPop(inTagClass);
  }

  v96 = objc_autoreleasePoolPush();
  v97 = v112;
  v98 = v116;
  if (v109)
  {
    if ([__LSDefaultsGetSharedInstance() isServer])
    {
      *&v161 = 0;
      if ([v109 getContentModificationDate:&v161 error:0])
      {
        v99 = *(v112 + 200);
        if (v99 != *&v161)
        {
          [v115 write:@"bundleModDate" interval:v99];
          [v115 write:@"NodeModDate" interval:*&v161];
        }
      }
    }
  }

  objc_autoreleasePoolPop(v96);
  v100 = [MEMORY[0x1E695DF70] array];
  [(_LSDatabase *)*v116 store];
  v101 = *(v112 + 480);
  v102 = v100;
  _CSArrayEnumerateAllValues();
  [v115 write:@"plugin Identifiers" array:v102];
  if (*(v112 + 140))
  {
    [v115 childUnit:@"entitlements" table:*(-[_LSDatabase schema](*v116) + 1600) unit:*(v112 + 140)];
  }

  if (*(v112 + 144))
  {
    [v115 childUnit:@"group ctrs" table:*(-[_LSDatabase schema](*v116) + 1600) unit:*(v112 + 144)];
  }

  if (*(v112 + 516))
  {
    [v115 childUnit:@"environment" table:*(-[_LSDatabase schema](*v116) + 1600) unit:*(v112 + 516)];
  }

  if (*(v112 + 152))
  {
    [v115 childUnit:@"Intents" table:*(-[_LSDatabase schema](*v116) + 1600) unit:*(v112 + 152)];
  }

  if (*(v112 + 476))
  {
    [(_LSDatabase *)*v116 store];
    v103 = *(v112 + 476);
    v118 = v115;
    _CSArrayEnumerateAllValues();

    v97 = v112;
    v98 = v116;
  }

  if (*(v97 + 472))
  {
    [(_LSDatabase *)*v98 store];
    v104 = *(v112 + 472);
    v117 = v115;
    _CSArrayEnumerateAllValues();
  }

  v8 = v112;
LABEL_94:

  v105 = *MEMORY[0x1E69E9840];
  return v8 != 0;
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,_LSBundleCopyArchitectures_Common(LSBundleData const*,NSArray<NSString *> *)::$_0 &,LSSliceData *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  v9 = *a1;
  v10 = _LSScoreCPUType(*a2);
  v11 = _LSScoreCPUType(v9);
  v12 = *a3;
  v13 = _LSScoreCPUType(*a3);
  if (v10 >= v11)
  {
    if (v13 < v10)
    {
      *a2 = v12;
      *a3 = v8;
      v14 = *a2;
      v15 = *a1;
      v16 = _LSScoreCPUType(*a2);
      if (v16 >= _LSScoreCPUType(v15))
      {
        v11 = v10;
        v12 = v8;
        goto LABEL_11;
      }

      *a1 = v14;
      *a2 = v15;
      v12 = *a3;
      v13 = _LSScoreCPUType(*a3);
    }

    goto LABEL_10;
  }

  if (v13 >= v10)
  {
    *a1 = v8;
    *a2 = v9;
    v12 = *a3;
    v13 = _LSScoreCPUType(*a3);
    if (v13 < v11)
    {
      *a2 = v12;
      goto LABEL_9;
    }

LABEL_10:
    v11 = v13;
    goto LABEL_11;
  }

  *a1 = v12;
LABEL_9:
  *a3 = v9;
  v12 = v9;
LABEL_11:
  v17 = *a4;
  result = _LSScoreCPUType(*a4);
  if (result < v11)
  {
    *a3 = v17;
    *a4 = v12;
    v19 = *a3;
    v20 = *a2;
    v21 = _LSScoreCPUType(*a3);
    result = _LSScoreCPUType(v20);
    if (v21 < result)
    {
      *a2 = v19;
      *a3 = v20;
      v22 = *a2;
      v23 = *a1;
      v24 = _LSScoreCPUType(*a2);
      result = _LSScoreCPUType(v23);
      if (v24 < result)
      {
        *a1 = v22;
        *a2 = v23;
      }
    }
  }

  return result;
}

uint64_t std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,_LSBundleCopyArchitectures_Common(LSBundleData const*,NSArray<NSString *> *)::$_0 &,LSSliceData *,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,_LSBundleCopyArchitectures_Common(LSBundleData const*,NSArray<NSString *> *)::$_0 &,LSSliceData *,0>(a1, a2, a3, a4);
  v10 = *a5;
  v11 = *a4;
  v12 = _LSScoreCPUType(*a5);
  result = _LSScoreCPUType(v11);
  if (v12 < result)
  {
    *a4 = v10;
    *a5 = v11;
    v14 = *a4;
    v15 = *a3;
    v16 = _LSScoreCPUType(*a4);
    result = _LSScoreCPUType(v15);
    if (v16 < result)
    {
      *a3 = v14;
      *a4 = v15;
      v17 = *a3;
      v18 = *a2;
      v19 = _LSScoreCPUType(*a3);
      result = _LSScoreCPUType(v18);
      if (v19 < result)
      {
        *a2 = v17;
        *a3 = v18;
        v20 = *a2;
        v21 = *a1;
        v22 = _LSScoreCPUType(*a2);
        result = _LSScoreCPUType(v21);
        if (v22 < result)
        {
          *a1 = v20;
          *a2 = v21;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,_LSBundleCopyArchitectures_Common(LSBundleData const*,NSArray<NSString *> *)::$_0 &,LSSliceData *>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = *a1;
        v9 = a1[1];
        v10 = _LSScoreCPUType(v9);
        v11 = _LSScoreCPUType(v8);
        v12 = *(a2 - 1);
        v13 = _LSScoreCPUType(v12);
        if (v10 >= v11)
        {
          if (v13 < v10)
          {
            a1[1] = v12;
            *(a2 - 1) = v9;
            v25 = *a1;
            v24 = a1[1];
            v26 = _LSScoreCPUType(v24);
            if (v26 < _LSScoreCPUType(v25))
            {
              *a1 = v24;
              a1[1] = v25;
            }
          }

          return 1;
        }

        if (v13 >= v10)
        {
          *a1 = v9;
          a1[1] = v8;
          v37 = *(a2 - 1);
          if (_LSScoreCPUType(v37) >= v11)
          {
            return 1;
          }

          a1[1] = v37;
        }

        else
        {
          *a1 = v12;
        }

        *(a2 - 1) = v8;
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,_LSBundleCopyArchitectures_Common(LSBundleData const*,NSArray<NSString *> *)::$_0 &,LSSliceData *,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        break;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,_LSBundleCopyArchitectures_Common(LSBundleData const*,NSArray<NSString *> *)::$_0 &,LSSliceData *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    v7 = _LSScoreCPUType(v5);
    if (v7 < _LSScoreCPUType(v6))
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_13:
  v15 = a1 + 1;
  v14 = a1[1];
  v16 = *a1;
  v17 = _LSScoreCPUType(v14);
  v18 = _LSScoreCPUType(v16);
  v20 = a1 + 2;
  v19 = a1[2];
  v21 = _LSScoreCPUType(v19);
  if (v17 >= v18)
  {
    if (v21 >= v17)
    {
      goto LABEL_24;
    }

    *v15 = v19;
    *v20 = v14;
    v22 = a1;
    v23 = a1 + 1;
LABEL_22:
    if (v21 >= v18)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v22 = a1;
  v23 = a1 + 2;
  if (v21 >= v17)
  {
    *a1 = v14;
    a1[1] = v16;
    v22 = a1 + 1;
    v23 = a1 + 2;
    goto LABEL_22;
  }

LABEL_23:
  *v22 = v19;
  *v23 = v16;
LABEL_24:
  v27 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v28 = 0;
  for (i = 24; ; i += 8)
  {
    v30 = *v27;
    v31 = *v20;
    v32 = _LSScoreCPUType(*v27);
    if (v32 < _LSScoreCPUType(v31))
    {
      v33 = i;
      while (1)
      {
        *(a1 + v33) = v31;
        v34 = v33 - 8;
        if (v33 == 8)
        {
          break;
        }

        v31 = *(a1 + v33 - 16);
        v35 = _LSScoreCPUType(v31);
        v33 = v34;
        if (v32 >= v35)
        {
          v36 = (a1 + v34);
          goto LABEL_32;
        }
      }

      v36 = a1;
LABEL_32:
      *v36 = v30;
      if (++v28 == 8)
      {
        break;
      }
    }

    v20 = v27++;
    if (v27 == a2)
    {
      return 1;
    }
  }

  return v27 + 1 == a2;
}

uint64_t _LSScoreCPUType(int a1)
{
  if (a1 == 16777228)
  {
    v1 = 1;
  }

  else
  {
    v1 = -1;
  }

  if (a1 == 16777234)
  {
    v2 = 4;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 16777223)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 18)
  {
    v4 = 5;
  }

  else
  {
    v4 = -1;
  }

  if (a1 == 12)
  {
    v4 = 6;
  }

  if (a1 == 7)
  {
    v4 = 3;
  }

  if (a1 <= 16777222)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

void ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  [v1 addObject:?];
}

void ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"localizedNames#%@", a3];
  [*(a1 + 32) childUnit:v5 table:*(-[_LSDatabase schema](**(a1 + 40)) + 1604) unit:*(*(a1 + 48) + 4 * a2 + 520)];
}

void ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(*(a1 + 40) + 513)];
  [v1 write:@"retries" number:?];
}

void ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_5(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 32);
  v4 = _LSGetDescriptionForPersonaType(a3);
  [v3 addObject:?];
}

uint64_t ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *([(_LSDatabase *)**(a1 + 40) schema]+ 1600);

  return [v4 childUnit:@"supportedGameController" table:v5 unit:a3];
}

void ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_7(uint64_t a1, uint64_t a2, int a3)
{
  v4 = _LSGetPlugin(**(a1 + 40), a3);
  if (v4)
  {
    v5 = *(v4 + 12);
    [(_LSDatabase *)**(a1 + 40) store];
    v6 = _CSStringCopyCFString();
    if (v6)
    {
      [*(a1 + 32) addObject:v6];
    }
  }
}

uint64_t ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *([(_LSDatabase *)**(a1 + 40) schema]+ 16);

  return [v4 childUnit:v5 unit:a3];
}

uint64_t ___ZN14LaunchServices7BundlesL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _LSClaimGet(**(a1 + 40));
  if (result)
  {
    v6 = *(a1 + 32);
    v7 = *([(_LSDatabase *)**(a1 + 40) schema]+ 8);

    return [v6 childUnit:v7 unit:a3];
  }

  return result;
}

void yieldAppsMatchingSearch(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v5 = +[_LSDServiceDomain defaultServiceDomain];
  v6 = LaunchServices::Database::Context::_get(&v19, v5, 0);

  if (v6)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___ZL23yieldAppsMatchingSearchU13block_pointerFbP14_LSQueryResultP7NSErrorEU13block_pointerFbP11_LSDatabasejPK12LSBundleDataE_block_invoke;
    v15[3] = &unk_1E6A1AE20;
    v16 = v4;
    v18 = v6;
    v7 = v3;
    v17 = v7;
    v8 = _LSEnumerateViableBundlesOfClass(v6, 2, v15);
    if (v8)
    {
      v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v8, 0, "yieldAppsMatchingSearch", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSBundleQuery.mm", 659);
      (*(v7 + 2))(v7, 0, v9);
    }

    v10 = v16;
  }

  else
  {
    v11 = +[_LSDServiceDomain defaultServiceDomain];
    v12 = LaunchServices::Database::Context::_get(&v19, v11, 0);

    if (v12)
    {
      v10 = 0;
    }

    else
    {
      v10 = v22;
    }

    (*(v3 + 2))(v3, 0, v10);
  }

  if (v19 && v21 == 1)
  {
    _LSContextDestroy(v19);
  }

  v13 = v20;
  v19 = 0;
  v20 = 0;

  v21 = 0;
  v14 = v22;
  v22 = 0;
}

void sub_1816DD094(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1816DDA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1816DDEFC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 152), 8);

  _Unwind_Resume(a1);
}

void sub_1816DE194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_1816DEEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

id getAppRecordForApplicationNode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [[LSApplicationRecord alloc] _initWithNode:a2 bundleIdentifier:0 placeholderBehavior:0 systemPlaceholder:0 itemID:0 forceInBundleContainer:0 context:a1 error:a3];

  return v3;
}

id getAppexRecordForXPCServiceNode(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = 0;
  v4 = [[LSApplicationExtensionRecord alloc] _initWithUUID:0 node:a2 bundleIdentifier:0 context:a1 requireValid:0 error:&v7];
  v5 = v7;
  if (a3 && !v4)
  {
    v5 = v5;
    *a3 = v5;
  }

  return v4;
}

BOOL _LSIconDictionarySupportsAlternateIcons(NSDictionary *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [(NSDictionary *)a1 objectForKey:@"CFBundleAlternateIcons"];
  v4 = (_NSIsNSArray() & 1) != 0 || _NSIsNSDictionary();

  objc_autoreleasePoolPop(v2);
  return v4;
}

void std::vector<unsigned int>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::allocator<unsigned int>::allocate_at_least[abi:nn200100](this, __n);
    }

    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }
}

Class init_EXAppExtensionPointEnumerator(void)
{
  if (!ExtensionFoundationLibrary(void)::frameworkLibrary)
  {
    ExtensionFoundationLibrary(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/ExtensionFoundation.framework/ExtensionFoundation", 2);
  }

  result = objc_getClass("_EXAppExtensionPointEnumerator");
  class_EXAppExtensionPointEnumerator = result;
  get_EXAppExtensionPointEnumeratorClass = _EXAppExtensionPointEnumeratorFunction;
  return result;
}

void init_ISInvalidateCacheEntriesForBundleIdentifier(NSString *a1)
{
  v2 = a1;
  v1 = IconServicesLibrary(void)::frameworkLibrary;
  if (!IconServicesLibrary(void)::frameworkLibrary)
  {
    v1 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
    IconServicesLibrary(void)::frameworkLibrary = v1;
  }

  softLink_ISInvalidateCacheEntriesForBundleIdentifier = dlsym(v1, "_ISInvalidateCacheEntriesForBundleIdentifier");
  softLink_ISInvalidateCacheEntriesForBundleIdentifier(v2);
}

{
  v2 = a1;
  v1 = IconServicesLibrary(void)::frameworkLibrary;
  if (!IconServicesLibrary(void)::frameworkLibrary)
  {
    v1 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
    IconServicesLibrary(void)::frameworkLibrary = v1;
  }

  softLink_ISInvalidateCacheEntriesForBundleIdentifier = dlsym(v1, "_ISInvalidateCacheEntriesForBundleIdentifier");
  softLink_ISInvalidateCacheEntriesForBundleIdentifier(v2);
}

{
  v2 = a1;
  v1 = IconServicesLibrary(void)::frameworkLibrary;
  if (!IconServicesLibrary(void)::frameworkLibrary)
  {
    v1 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
    IconServicesLibrary(void)::frameworkLibrary = v1;
  }

  softLink_ISInvalidateCacheEntriesForBundleIdentifier = dlsym(v1, "_ISInvalidateCacheEntriesForBundleIdentifier");
  softLink_ISInvalidateCacheEntriesForBundleIdentifier(v2);
}

void sub_1816EBB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = LSBundleRecordUpdater;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1816ECAA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,LSPluginData>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSPluginData>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSPluginData>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSPluginData>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,LSPluginData>>(void *a1, unsigned int *a2)
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

const __CFSet *_LSBundleActivateBindingsForUserActivityTypes(void *a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  v7 = 4294967246;
  if (v5)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = _LSBundleCopyUserActivityTypes(v5, a2, a3);
        if (v7)
        {
          v9 = v6;
          v10 = a2;
          CFSetApplyFunction(v7, _LSBundleActivateBindingForUserActivityType, &v9);
          CFRelease(v7);

          v7 = 0;
        }
      }
    }
  }

  return v7;
}

CFSetRef _LSBundleCopyUserActivityTypes(void *a1, int a2, uint64_t a3)
{
  v5 = a1;
  Copy = 0;
  if (v5 && a2 && a3)
  {
    if (*(a3 + 492) && (v7 = *MEMORY[0x1E695E480], (Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8])) != 0))
    {
      [(_LSDatabase *)v5 store];
      v10 = v5;
      _CSArrayEnumerateAllValues();
      Copy = CFSetCreateCopy(v7, Mutable);
      CFRelease(Mutable);
    }

    else
    {
      Copy = 0;
    }
  }

  return Copy;
}

const __CFString *_LSBundleActivateBindingForUserActivityType(const __CFString *result, void *a2)
{
  if (result)
  {
    if (a2)
    {
      result = _LSDatabaseCreateStringForCFString(*a2, result, 0);
      if (result)
      {
        _LSBindableActivate(*a2, *(a2 + 2));
        [(_LSDatabase *)*a2 store];

        return _CSStringRelease();
      }
    }
  }

  return result;
}

const __CFSet *_LSBundleDeactivateBindingsForUserActivityTypes(void *a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  v7 = 4294967246;
  if (v5)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = _LSBundleCopyUserActivityTypes(v5, a2, a3);
        if (v7)
        {
          v9 = v6;
          v10 = a2;
          CFSetApplyFunction(v7, _LSBundleDeactivateBindingForUserActivityType, &v9);
          CFRelease(v7);

          v7 = 0;
        }
      }
    }
  }

  return v7;
}

const __CFString *_LSBundleDeactivateBindingForUserActivityType(const __CFString *result, void **a2)
{
  if (result)
  {
    if (a2)
    {
      result = _LSDatabaseGetStringForCFString(*a2, result, 0);
      if (result)
      {
        v3 = *a2;
        v4 = *(a2 + 2);

        return _LSBindableDeactivate(v3, v4);
      }
    }
  }

  return result;
}

CFSetRef _LSBundleCopyUserActivityDomainNames(void *a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  Copy = 0;
  if (v5 && a2 && a3)
  {
    v8 = *(a3 + 12);
    [(_LSDatabase *)v5 store];
    v9 = _CSStringCopyCFString();
    v10 = v9;
    if (v9)
    {
      v11 = _LSCopyUserActivityDomainNamesForBundleID(v9);
      v12 = v11;
      if (v11)
      {
        Count = CFArrayGetCount(v11);
        v14 = *MEMORY[0x1E695E480];
        Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9F8]);
        if (Mutable)
        {
          v16 = CFArrayGetCount(v12);
          while (v16 > 0)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v12, --v16);
            CFSetAddValue(Mutable, ValueAtIndex);
          }

          Copy = CFSetCreateCopy(v14, Mutable);
          CFRelease(Mutable);
        }

        else
        {
          Copy = 0;
        }

        CFRelease(v12);
      }

      else
      {
        Copy = 0;
      }

      CFRelease(v10);
    }

    else
    {
      Copy = 0;
    }
  }

  return Copy;
}

BOOL _LSBundleCouldBeSelectedForActivityContinuation(void *a1, int a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v9 = 0;
  if (v7 && a2 && a3)
  {
    v10 = *(a3 + 172);
    v11 = (_LSBundleDataGetUnsupportedFormatFlag() & 0x400000) == 0;
    v9 = (v10 & 0x80) == 0 && v11;
    v12 = *(a3 + 12);
    [(_LSDatabase *)v7 store];
    v13 = _CSStringCopyCFString();
    v14 = +[LSApplicationRestrictionsManager sharedInstance];
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a3 + 420)];
    if ([(LSApplicationRestrictionsManager *)v14 isRatingAllowed:v15 forBundleIdentifier:v13])
    {
      v16 = +[LSApplicationRestrictionsManager sharedInstance];
      v17 = [(LSApplicationRestrictionsManager *)v16 isApplicationRestricted:v13 checkFlags:*(a3 + 172)];

      if (!v17)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
    }

    v18 = _LSDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412546;
      v22 = v13;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_18162D000, v18, OS_LOG_TYPE_DEFAULT, "%@ is currently restricted and cannot be returned for activity type %@.", &v21, 0x16u);
    }

    v9 = 0;
    goto LABEL_14;
  }

LABEL_15:

  v19 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t _LSBundleCompareForActivityContinuationSuitability(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!a2 || !a3)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult _LSBundleCompareForActivityContinuationSuitability(__strong LSDatabaseRef, const LSBundleData *, const LSBundleData *)"}];
    [v14 handleFailureInFunction:v15 file:@"LSBundleUserActivitySupport.mm" lineNumber:245 description:@"unexpected NULL bundle data"];
  }

  MayBeOnNetwork = _LSBundleDataMayBeOnNetwork(v5, a2);
  if ((MayBeOnNetwork != 0) == (_LSBundleDataMayBeOnNetwork(v5, a3) == 0))
  {
    if (MayBeOnNetwork)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    goto LABEL_20;
  }

  if (*(a2 + 304) == *(a3 + 304))
  {
    v18 = *(a2 + 28);
    v19 = *(a2 + 44);
    v16 = *(a3 + 28);
    v17 = *(a3 + 44);
    v22 = v18;
    v23 = v19;
    v7 = *(a3 + 44);
    v20 = *(a3 + 28);
    v21 = v7;
    if (_LSVersionNumberCompare(&v22, &v20) != 1)
    {
      v22 = v18;
      v23 = v19;
      v20 = v16;
      v21 = v17;
      if (_LSVersionNumberCompare(&v22, &v20) == -1)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_13:
    v8 = -1;
    goto LABEL_20;
  }

  StringForCFString = _LSDatabaseGetStringForCFString(v5, @"com.apple.mobilephone", 1);
  if (StringForCFString)
  {
    if (*(a2 + 304) != StringForCFString)
    {
      if (*(a3 + 304) == StringForCFString)
      {
LABEL_16:
        v8 = 1;
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    goto LABEL_13;
  }

LABEL_15:
  RegTime = _LSBundleDataGetRegTime(a2);
  v11 = _LSBundleDataGetRegTime(a3);
  if (RegTime < v11)
  {
    goto LABEL_16;
  }

  if (RegTime <= v11)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

LABEL_20:

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1816EF4BC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1816F0CBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  LaunchServices::BindingEvaluator::~BindingEvaluator(v11);
  _Unwind_Resume(a1);
}

void sub_1816F126C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  a16 = &a20;
  std::vector<LSBinding>::__destroy_vector::operator()[abi:nn200100](&a16);

  LaunchServices::BindingEvaluator::~BindingEvaluator(&a29);
  LaunchServices::Database::Context::~Context(&a23);

  _Unwind_Resume(a1);
}

uint64_t _LSNumericHandlerRankFromHandlerRankString(const __CFString *a1)
{
  if (!a1 || CFStringCompare(a1, @"None", 1uLL) == kCFCompareEqualTo)
  {
    return 0;
  }

  v2 = 1;
  if (CFStringCompare(a1, @"Alternate", 1uLL))
  {
    if (CFStringCompare(a1, @"Default", 1uLL))
    {
      if (CFStringCompare(a1, @"Owner", 1uLL))
      {
        return 0;
      }

      else
      {
        return 3;
      }
    }

    else
    {
      return 2;
    }
  }

  return v2;
}

CFSetRef _LSCopyAllHandlerRankStrings()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = xmmword_1E6A1B160;
  v2[1] = *off_1E6A1B170;
  result = CFSetCreate(*MEMORY[0x1E695E480], v2, 4, MEMORY[0x1E695E9F8]);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _LSClaimAdd(void *a1, uint64_t a2, _DWORD *a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    v7 = [(_LSDatabase *)v5 store];
    v8 = 4294967246;
    if (a2 && v7)
    {
      [(_LSDatabase *)v6 store];
      v9 = *([(_LSDatabase *)v6 schema]+ 8);
      v10 = CSStoreAllocUnitWithData();
      if (v10 && ([(_LSDatabase *)v6 store], v11 = *([(_LSDatabase *)v6 schema]+ 8), (Unit = CSStoreGetUnit()) != 0))
      {
        v17 = *Unit;
        v21 = *(Unit + 64);
        v19 = *(Unit + 32);
        v20 = *(Unit + 48);
        v18 = *(Unit + 16);
        [(_LSDatabase *)v6 store];
        [(_LSDatabase *)v6 schema];
        CSBindableKeyMapNextKey();
        v13 = objc_autoreleasePoolPush();
        [(_LSDatabase *)v6 store];
        v14 = *([(_LSDatabase *)v6 schema]+ 8);
        if (_CSStoreWriteToUnit())
        {
          v8 = 0;
        }

        else
        {
          v8 = _LSGetOSStatusFromNSError(0);
        }

        objc_autoreleasePoolPop(v13);
        if (!v8)
        {
          [(_LSDatabase *)v6 store];
          [(_LSDatabase *)v6 schema];
          CSMapSetValue();
          v15 = *(a2 + 8);
          if ((v15 & 0x20) != 0)
          {
            [(_LSDatabase *)v6 setDocumentTypesChanged:?];
            v15 = *(a2 + 8);
          }

          if ((v15 & 0x40) != 0)
          {
            [(_LSDatabase *)v6 setURLTypesChanged:?];
          }

          v8 = 0;
          if (a3)
          {
            *a3 = v10;
          }
        }
      }

      else
      {
        v8 = 4294957803;
      }
    }
  }

  else
  {
    v8 = 4294967246;
  }

  return v8;
}

uint64_t _LSClaimRemove(void *a1)
{
  v1 = a1;
  [(_LSDatabase *)v1 store];
  v2 = _LSClaimGet(v1);
  if (v2)
  {
    [(_LSDatabase *)v1 store];
    [(_LSDatabase *)v1 schema];
    v3 = *v2;
    CSMapRemoveValue();
    v4 = v2[2];
    if ((v4 & 0x20) != 0)
    {
      [(_LSDatabase *)v1 setDocumentTypesChanged:?];
      v4 = v2[2];
    }

    if ((v4 & 0x40) != 0)
    {
      [(_LSDatabase *)v1 setURLTypesChanged:?];
    }

    LaunchServices::LocalizedString::Remove(v1, v2[5]);
    for (i = 0; i != 8 && v2[i + 7]; ++i)
    {
      [(_LSDatabase *)v1 store];
      _CSStringRelease();
    }

    v6 = v2[16];
    [(_LSDatabase *)v1 store];
    _CSStringRelease();
    _LSDatabaseDisposeStringArray(v1, v2[6]);
    if (v2[17])
    {
      v7 = _LSBindingListDeactivate();
      v8 = v2[17];
      _LSBindingListDestroy();
    }

    else
    {
      v7 = 0;
    }

    v9 = *([(_LSDatabase *)v1 schema]+ 8);
    CSStoreFreeUnit();
  }

  else
  {
    v7 = 4294957797;
  }

  return v7;
}

uint64_t _LSClaimSetGeneration(void *a1, uint64_t a2, int a3)
{
  result = _LSClaimGet(a1);
  if (result)
  {
    *(result + 4) = a3;
  }

  return result;
}

void _LSClaimGetVisualizationFunctions(unsigned int *(**a1)(void **this, LSContext *a2)@<X8>)
{
  *a1 = LaunchServices::Claims::getSummary;
  a1[1] = LaunchServices::Claims::display;
  a1[2] = LaunchServices::Claims::copyBindingForVisualization;
}

unsigned int *LaunchServices::Claims::getSummary(void **this, LSContext *a2)
{
  v3 = _LSClaimGet(*this);
  if (v3)
  {
    v3 = LaunchServices::LocalizedString::Get(*this, v3[5]);
    if (v3)
    {
      v3 = LaunchServices::LocalizedString::localizeUnsafely(v3, *this, 0);
    }
  }

  return v3;
}

BOOL LaunchServices::Claims::display(void **this, LSContext *a2, unsigned int a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v6 = a4;
  v7 = _LSClaimGet(*this);
  if (v7)
  {
    [v6 childUnit:@"localizedNames" table:*(-[_LSDatabase schema](*this) + 1604) unit:*(v7 + 20)];
    v8 = _LSCopyHandlerRankStringFromNumericHandlerRank(*(v7 + 12));
    [v6 write:@"rank" string:v8];
    v9 = [v6 link:*(-[_LSDatabase schema](*this) + 4) unit:*(v7 + 16)];
    [v6 write:@"bundle" string:v9];

    [v6 write:@"reqCaps" arrayStringID:*(v7 + 24)];
    v10 = v6;
    v11 = *(v7 + 8);
    [v10 beginFlags:@"flags" flags:v11];
    if ((v11 & 2) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    if ((v11 & 2) != 0)
    {
      v13 = @"apple-default-no-override";
    }

    else
    {
      v13 = @"apple-default";
    }

    [v10 flag:v12 name:v13 color:255];
    [v10 flag:4 name:@"apple-internal" color:255];
    [v10 flag:4096 name:@"relative-icon-path"];
    [v10 flag:8 name:@"package"];
    [v10 flag:16 name:@"legacy-wildcard"];
    [v10 flag:32 name:@"doc-type"];
    [v10 flag:64 name:@"url-type"];
    [v10 flag:128 name:@"private-scheme"];
    [v10 flag:256 name:@"always-available"];
    [v10 flag:512 name:@"resolves-icloud-conflicts"];
    [v10 flag:1024 name:@"uti-wildcard"];
    [v10 flag:2048 name:@"supports-collaboration"];
    [v10 flag:0x2000 name:@"default-apps-claim" color:16711935];
    [v10 flag:0x4000 name:@"relaxed-default-apps-claim" color:16711680];
    [v10 endFlags];

    v14 = v10;
    [v14 beginFlags:@"roles" flags:*(v7 + 14)];
    [v14 flag:8 name:@"Shell"];
    [v14 flag:4 name:@"Editor"];
    [v14 flag:2 name:@"Viewer"];
    [v14 flag:16 name:@"Importer"];
    [v14 flag:32 name:@"QLGenerator"];
    [v14 flag:1 name:@"None"];
    [v14 endFlags];

    [v14 write:@"iconFiles" arrayIDs:v7 + 28 count:8];
    [v14 write:@"iconName" stringID:*(v7 + 60)];
    [v14 write:@"delegate" stringID:*(v7 + 64)];
    [v14 childUnit:@"bindings" table:*(-[_LSDatabase schema](*this) + 1596) unit:*(v7 + 68)];
  }

  return v7 != 0;
}

void _LSEnumerateAllClaimedTypesOrSchemesForBundleID(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSEnumerateAllClaimedTypesOrSchemesForBundleID(LSContext * _Nonnull, const LSBundleData * _Nonnull, LSRolesMask, BOOL, void (^__strong _Nonnull)(NSString *__strong, const LSClaimData *))"}];
    [v11 handleFailureInFunction:v12 file:@"LSClaimedTypes.mm" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"inBundleData != NULL"}];

    if (v7)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSEnumerateAllClaimedTypesOrSchemesForBundleID(LSContext * _Nonnull, const LSBundleData * _Nonnull, LSRolesMask, BOOL, void (^__strong _Nonnull)(NSString *__strong, const LSClaimData *))"}];
    [v13 handleFailureInFunction:v14 file:@"LSClaimedTypes.mm" lineNumber:184 description:{@"Invalid parameter not satisfying: %@", @"inBlock != nil"}];

    goto LABEL_4;
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSEnumerateAllClaimedTypesOrSchemesForBundleID(LSContext * _Nonnull, const LSBundleData * _Nonnull, LSRolesMask, BOOL, void (^__strong _Nonnull)(NSString *__strong, const LSClaimData *))"}];
  [v9 handleFailureInFunction:v10 file:@"LSClaimedTypes.mm" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"inContext != NULL"}];

  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_4:
  [(_LSDatabase *)*a1 store];
  v8 = *(a2 + 472);
  v15 = v7;
  _CSArrayEnumerateAllValues();
}

id _LSGetAllClaimedTypesOrSchemesForBundleID(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x1E695DFA8] set];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___LSGetAllClaimedTypesOrSchemesForBundleID_block_invoke;
  v13[3] = &unk_1E6A1B228;
  v10 = v9;
  v14 = v10;
  _LSEnumerateAllClaimedTypesOrSchemesForBundleID(a1, a2, a3, a4, v13);
  v11 = [v10 copy];

  objc_autoreleasePoolPop(v8);

  return v11;
}

void sub_1816F2910(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  LaunchServices::BindingEvaluator::~BindingEvaluator(va);
  _Unwind_Resume(a1);
}

void sub_1816F29D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  LaunchServices::BindingEvaluator::~BindingEvaluator(va);
  _Unwind_Resume(a1);
}

void sub_1816F2A74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  LaunchServices::BindingEvaluator::~BindingEvaluator(va);
  _Unwind_Resume(a1);
}

void sub_1816F2B34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  LaunchServices::BindingEvaluator::~BindingEvaluator(va);
  _Unwind_Resume(a1);
}

void sub_1816F31D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

void sub_1816F3418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

__CFString *_LSContainerStateGetDescription(int a1)
{
  if ((a1 + 1) >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"? (%llu)", a1];
  }

  else
  {
    v2 = off_1E6A1B420[(a1 + 1)];
  }

  return v2;
}

void _LSContainerSetMounted(void *a1, unsigned int a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = _LSContainerGet(v5);
  v7 = v6;
  if (v6)
  {
    v8 = _LSAliasGetPath(v5, *(v6 + 12));
    v14 = *v7;
    v15 = *(v7 + 16);
    v9 = _LSDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134218499;
      v17 = a2;
      v18 = 2113;
      v19 = v8;
      v20 = 2048;
      v21 = a3;
      _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_INFO, "Updating state of volume %llx %{private}@ to mounted with volume ID %llu", buf, 0x20u);
    }

    v10 = v5;
    [(_LSDatabase *)v5 store];
    v11 = v5;
    v12 = *([(_LSDatabase *)v5 schema]+ 1580);
    _CSStoreWriteToUnit();
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t _LSContainerFindOrRegisterWithNode(id *a1, void *a2, int a3, _DWORD *a4, uint64_t *a5, id *a6, void *a7)
{
  v88[1] = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = v13;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  if (a1 && v13 && *a1)
  {
    v51 = 0;
    obj = 0;
    v50 = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    v15 = _LSCreateContainerNodesAndFlagsForNode(v13, &obj, &v51, &v50, a7);
    location = a6;
    *(v54 + 24) = v15;
    if (v15)
    {
      v43 = a5;
      v17 = v51;
      v16 = obj;
      v39 = v50;
      v38 = v47;
      v18 = *a1;
      v19 = v16;
      v20 = v17;
      v21 = v43;
      v40 = v19;
      v41 = v20;
      v86 = 0;
      v82 = 0;
      v83 = &v82;
      v84 = 0x2020000000;
      v85 = 0;
      v78 = 0;
      v79 = &v78;
      v80 = 0x2020000000;
      v81 = 0;
      if ([v19 getVolumeIdentifier:&v86 error:0])
      {
        v22 = v18;
        [(_LSDatabase *)v18 store];
        v23 = v18;
        v24 = *([(_LSDatabase *)v18 schema]+ 1580);
        v67 = MEMORY[0x1E69E9820];
        v68 = 3221225472;
        v69 = ___ZL33_LSContainerFindWithNodesAndFlagsP11_LSDatabaseP6FSNodeS2_tPjPPK15LSContainerData_block_invoke;
        v70 = &unk_1E6A1B360;
        v77 = v39;
        v76 = v86;
        v25 = v18;
        v71 = v25;
        v26 = v19;
        v72 = v26;
        v73 = v41;
        v74 = &v82;
        v75 = &v78;
        _CSStoreEnumerateUnits();

        v21 = v43;
        if (v79[3])
        {
          goto LABEL_8;
        }

        v27 = v25;
        [(_LSDatabase *)v25 store];
        v28 = v25;
        v29 = *([(_LSDatabase *)v25 schema]+ 1580);
        v57 = MEMORY[0x1E69E9820];
        v58 = 3221225472;
        v59 = ___ZL33_LSContainerFindWithNodesAndFlagsP11_LSDatabaseP6FSNodeS2_tPjPPK15LSContainerData_block_invoke_2;
        v60 = &unk_1E6A1B388;
        v66 = v39;
        v61 = v25;
        v63 = &v82;
        v64 = &v78;
        v65 = v86;
        v62 = v26;
        _CSStoreEnumerateUnits();

        v21 = v43;
        if (v79[3])
        {
LABEL_8:
          *(v38 + 6) = *(v83 + 6);
          v30 = 1;
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {
        v30 = v79[3] != 0;
      }

      _Block_object_dispose(&v78, 8);
      _Block_object_dispose(&v82, 8);

      *(v54 + 24) = v30;
      if (v30)
      {
        goto LABEL_17;
      }

      v67 = 0;
      v68 = &v67;
      v69 = 0x3032000000;
      v70 = __Block_byref_object_copy__13;
      v71 = __Block_byref_object_dispose__13;
      v72 = 0;
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = ___LSContainerFindOrRegisterWithNode_block_invoke;
      v44[3] = &unk_1E6A1B298;
      v44[4] = &v46;
      v44[5] = &v53;
      v45 = a7 != 0;
      v44[6] = &v67;
      _LSContainerAddWithNode(a1, v14, 1, v44);
      v31 = *(v54 + 24);
      if (a7 && (v54[3] & 1) == 0)
      {
        *a7 = *(v68 + 40);
        v31 = *(v54 + 24);
      }

      if (a3 & 0x3000000) == 0x2000000 && (v31)
      {
        v32 = _LSContextUpdate(a1, 1, a7);
        *(v54 + 24) = v32;
      }

      _Block_object_dispose(&v67, 8);

      if (v54[3])
      {
LABEL_17:
        if (a4)
        {
          *a4 = *(v47 + 6);
        }

        if (v21)
        {
          v33 = *(v47 + 6);
          *v21 = _LSContainerGet(*a1);
        }

        if (location)
        {
          objc_storeStrong(location, obj);
        }
      }
    }

    _Block_object_dispose(&v46, 8);
  }

  else if (a7)
  {
    v87 = *MEMORY[0x1E696A278];
    v88[0] = @"invalid input parameters";
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:&v87 count:1];
    *a7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v34, "_LSContainerFindOrRegisterWithNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSContainer.mm", 366);
  }

  v35 = *(v54 + 24);
  _Block_object_dispose(&v53, 8);

  v36 = *MEMORY[0x1E69E9840];
  return v35 & 1;
}

void sub_1816F4378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29, id a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39, id a40)
{
  _Block_object_dispose((v42 - 200), 8);
  _Block_object_dispose((v42 - 168), 8);

  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a31, 8);

  _Unwind_Resume(a1);
}

BOOL _LSCreateContainerNodesAndFlagsForNode(void *a1, void **a2, void **a3, _WORD *a4, void *a5)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 volumeNodeWithFlags:0 error:a5];
    v12 = v11 != 0;
    if (v11)
    {
      v13 = +[FSNode rootVolumeNode];
      v14 = [v11 isEqual:v13];

      if (v14)
      {
        v15 = 18;
      }

      else
      {
        v18 = +[FSNode prebootVolumeNode];
        [v11 isEqual:v18];

        v15 = 16;
      }

      if ([v11 isOnDiskImage])
      {
        if (a3)
        {
          v19 = [v11 diskImageURLWithFlags:1 error:0];
          v20 = v19;
          if (v19 && [v19 isFileURL])
          {
            v17 = [[FSNode alloc] initWithURL:v20 flags:0 error:0];
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        v15 |= 4u;
      }

      else
      {
        v17 = 0;
      }

      v21 = [v11 isOnLocalVolume];
      if (a2)
      {
        v22 = *a2;
        *a2 = v11;

        v11 = 0;
      }

      if (a3)
      {
        v23 = *a3;
        *a3 = v17;

        v17 = 0;
      }

      if (a4)
      {
        *a4 = v15 | v21;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    if (a5)
    {
      v26 = *MEMORY[0x1E696A278];
      v27[0] = @"inNode";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      *a5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v16, "_LSCreateContainerNodesAndFlagsForNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSContainer.mm", 206);
    }

    v12 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v12;
}

void _LSContainerAddWithNode(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  if (([__LSDefaultsGetSharedInstance() isServer] & 1) != 0 || (objc_msgSend(__LSDefaultsGetSharedInstance(), "hasServer") & 1) == 0)
  {
    MEMORY[0x1865D7C40]();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = ___LSContainerAddWithNode_block_invoke;
    v21[3] = &unk_1E6A1B2C0;
    v22 = v7;
    v24 = a1;
    v25 = a3;
    v23 = v8;
    v12 = MEMORY[0x1865D71B0](v21);
    v13 = v12;
    if (a3)
    {
      (*(v12 + 16))(v12);
    }

    else
    {
      if (a1)
      {
        v17 = [MEMORY[0x1E696AAA8] currentHandler];
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSContainerAddWithNode(LSContext *, FSNode *__strong, Boolean, void (^__strong)(LSContainerID, NSError *__strong))"}];
        [v17 handleFailureInFunction:v18 file:@"LSContainer.mm" lineNumber:617 description:@"if asyncing _LSContainerAddWithNode it cannot use a caller's context"];
      }

      v14 = _LSServer_GetIOQueue();
      dispatch_async(v14, v13);
    }

    v15 = v22;
  }

  else
  {
    if (a3)
    {
      v10 = v20;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = ___LSContainerAddWithNode_block_invoke_25;
      v20[3] = &unk_1E6A19090;
      v20[4] = v8;
      v11 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v20];
    }

    else
    {
      v10 = v19;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = ___LSContainerAddWithNode_block_invoke_2;
      v19[3] = &unk_1E6A19090;
      v19[4] = v8;
      v11 = [(_LSDService *)_LSDModifyService XPCProxyWithErrorHandler:v19];
    }

    v15 = v11;

    v16 = [v7 URL];
    [v15 registerContainerURL:v16 completionHandler:v8];
  }

  objc_autoreleasePoolPop(v9);
}

uint64_t _LSContainerAdd(void *a1, uint64_t a2, _DWORD *a3)
{
  v4 = a1;
  v5 = v4;
  if (v4 && [(_LSDatabase *)v4 store])
  {
    [(_LSDatabase *)v5 store];
    v6 = *([(_LSDatabase *)v5 schema]+ 1580);
    v7 = CSStoreAllocUnitWithData();
    if (v7)
    {
      v8 = 0;
      if (a3)
      {
        *a3 = v7;
      }
    }

    else
    {
      v8 = 4294957803;
    }
  }

  else
  {
    v8 = 4294967246;
  }

  return v8;
}

uint64_t _LSContainerRemove(uint64_t *a1, int a2)
{
  result = [(_LSDatabase *)*a1 accessContext];
  if (result)
  {
    result = _CSStoreAccessContextAssertWriting();
  }

  if (a2)
  {
    result = _LSContainerGet(*a1);
    if (result)
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x4812000000;
      v15 = __Block_byref_object_copy__27;
      v16 = __Block_byref_object_dispose__28;
      v17 = &unk_1818533FF;
      v19 = 0;
      v20 = 0;
      __p = 0;
      [(_LSDatabase *)*a1 store];
      v5 = *([(_LSDatabase *)*a1 schema]+ 4);
      _CSStoreEnumerateUnits();
      v6 = v13[6];
      v7 = v13[7];
      while (v6 != v7)
      {
        _LSUnregisterBundle(a1, *v6++, 0);
      }

      _Block_object_dispose(&v12, 8);
      if (__p)
      {
        v19 = __p;
        operator delete(__p);
      }

      v12 = 0;
      v13 = &v12;
      v14 = 0x4812000000;
      v15 = __Block_byref_object_copy__27;
      v16 = __Block_byref_object_dispose__28;
      v17 = &unk_1818533FF;
      v19 = 0;
      v20 = 0;
      __p = 0;
      [(_LSDatabase *)*a1 store];
      v8 = *([(_LSDatabase *)*a1 schema]+ 1588);
      _CSStoreEnumerateUnits();
      v9 = v13[6];
      v10 = v13[7];
      while (v9 != v10)
      {
        _LSPluginRemove(*a1, *v9++);
      }

      _Block_object_dispose(&v12, 8);
      if (__p)
      {
        v19 = __p;
        operator delete(__p);
      }

      [(_LSDatabase *)*a1 store];
      v11 = *([(_LSDatabase *)*a1 schema]+ 1580);
      return CSStoreFreeUnit();
    }
  }

  return result;
}

void sub_1816F531C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  _Block_object_dispose(&a22, 8);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__27(__n128 *a1, __n128 *a2)
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

uint64_t _LSContainerSet(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = v4;
  if (v4 && (v6 = [(_LSDatabase *)v4 store], a3) && v6)
  {
    [(_LSDatabase *)v5 store];
    v7 = *([(_LSDatabase *)v5 schema]+ 1580);
    _CSStoreWriteToUnit();
    v8 = 0;
  }

  else
  {
    v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, 0, "_LSContainerSet", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSContainer.mm", 737);
  }

  return 1;
}

void _LSServer_LSDatabaseRemoveNonexistentCryptexBundlesForReboot(uint64_t *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = _LSDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "Cleaning nonexistent cryptex bundles", buf, 2u);
  }

  *buf = 0;
  v23 = buf;
  v24 = 0x4812000000;
  v25 = __Block_byref_object_copy__27;
  v26 = __Block_byref_object_dispose__28;
  v27 = &unk_1818533FF;
  v29 = 0;
  v30 = 0;
  __p = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x4812000000;
  v18 = __Block_byref_object_copy__32;
  v19 = __Block_byref_object_dispose__33;
  v20 = &unk_1818533FF;
  memset(v21, 0, sizeof(v21));
  [(_LSDatabase *)*a1 store];
  v3 = *([(_LSDatabase *)*a1 schema]+ 4);
  _CSStoreEnumerateUnits();
  v4 = v16[6];
  for (i = v16[7]; v4 != i; v4 += 4)
  {
    if (([*(v4 + 1) checkResourceIsReachableAndReturnError:0] & 1) == 0)
    {
      v6 = _LSDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *v4;
        v8 = *(v4 + 1);
        *v31 = 134218242;
        *&v31[4] = v7;
        v32 = 2112;
        v33 = v8;
        _os_log_error_impl(&dword_18162D000, v6, OS_LOG_TYPE_ERROR, "cryptex unit %llx is not reachable at %@, will remove", v31, 0x16u);
      }

      std::vector<unsigned int>::push_back[abi:nn200100](v23 + 6, v4);
    }
  }

  v9 = *(v23 + 6);
  for (j = *(v23 + 7); v9 != j; ++v9)
  {
    v11 = *v9;
    v12 = _LSBundleRemove(*a1, *v9, 0);
    v13 = _LSDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v31 = 134218240;
      *&v31[4] = v11;
      v32 = 1024;
      LODWORD(v33) = v12;
      _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEFAULT, "Removed bundle unit %llx, status: %d", v31, 0x12u);
    }
  }

  _Block_object_dispose(&v15, 8);
  *v31 = v21;
  std::vector<std::pair<unsigned int,NSUUID * {__strong}>>::__destroy_vector::operator()[abi:nn200100](v31);
  _Block_object_dispose(buf, 8);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1816F5864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  _Block_object_dispose(&a20, 8);
  *(v36 - 128) = a10;
  std::vector<std::pair<unsigned int,NSUUID * {__strong}>>::__destroy_vector::operator()[abi:nn200100]((v36 - 128));
  _Block_object_dispose(&a29, 8);
  if (__p)
  {
    a36 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void _LSContainerGetVisualizationFunctions(int *(**a1)(void **this, LSContext *a2)@<X8>)
{
  *a1 = LaunchServices::Containers::getSummary;
  a1[1] = LaunchServices::Containers::display;
  a1[2] = LaunchServices::Containers::copyBindingForVisualization;
}

int *LaunchServices::Containers::getSummary(void **this, LSContext *a2)
{
  v3 = _LSContainerGet(*this);
  if (v3)
  {
    v3 = _LSAliasGetPath(*this, v3[3]);
  }

  return v3;
}

BOOL LaunchServices::Containers::display(void **this, LSContext *a2, unsigned int a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v6 = a4;
  v7 = _LSContainerGet(*this);
  if (v7)
  {
    v8 = [v6 link:*(-[_LSDatabase schema](*this) + 1584) unit:*(v7 + 3)];
    [v6 write:@"path" string:v8];

    if (*(v7 + 4))
    {
      v9 = [v6 link:*(-[_LSDatabase schema](*this) + 1584) unit:*(v7 + 4)];
      [v6 write:@"disk image" string:v9];
    }

    v10 = v6;
    [v10 beginFlags:@"flags" flags:*v7];
    [v10 flag:1 name:@"local"];
    [v10 missingFlag:1 name:@"remote" color:6710886];
    [v10 flag:2 name:@"root"];
    [v10 flag:4 name:@"disk-image"];
    [v10 flag:16 name:@"sys-managed"];
    [v10 endFlags];

    v11 = _LSContainerStateGetDescription(*(v7 + 2));
    [v10 write:@"state" string:v11];
    if (*(v7 + 2) == 1)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(v7 + 2)];
      [v10 write:@"volume" number:v12];
    }

    else
    {
      [v10 write:@"volume" string:&stru_1EEF65710];
    }
  }

  return v7 != 0;
}

uint64_t ___ZL33_LSContainerFindWithNodesAndFlagsP11_LSDatabaseP6FSNodeS2_tPjPPK15LSContainerData_block_invoke(uint64_t result, int a2, unsigned __int16 *a3, uint64_t a4, _BYTE *a5)
{
  v5 = *a3;
  if (v5 != *(result + 80))
  {
    return result;
  }

  if (*(a3 + 2) != 1)
  {
    return result;
  }

  v7 = result;
  v8 = *(result + 72);
  if (v8 != *(a3 + 2))
  {
    return result;
  }

  if ((v5 & 2) != 0)
  {
LABEL_9:
    *(*(*(v7 + 56) + 8) + 24) = a2;
    *(*(*(v7 + 64) + 8) + 24) = a3;
    *a5 = 1;
    return result;
  }

  result = _LSAliasCompareToNode(*(result + 32), *(a3 + 3), v8, 0, *(result + 40));
  if (!result)
  {
    return result;
  }

  v11 = *(a3 + 4);
  v12 = *(v7 + 48);
  if (!v11)
  {
    if (v12)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (v12)
  {
    result = _LSAliasCompareToNode(*(v7 + 32), v11, 0, 0, v12);
    if (result)
    {
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t ___ZL33_LSContainerFindWithNodesAndFlagsP11_LSDatabaseP6FSNodeS2_tPjPPK15LSContainerData_block_invoke_2(uint64_t result, uint64_t a2, unsigned __int16 *a3, uint64_t a4, _BYTE *a5)
{
  if (*a3 == *(result + 72))
  {
    v14 = v5;
    v15 = v6;
    v9 = a2;
    v10 = result;
    v13 = 0;
    v12 = 0;
    result = _LSContainerCheckState(*(result + 32), a2, a3, &v13, &v12);
    if (result)
    {
      v11 = 0;
    }

    else
    {
      v11 = v13 == 1;
    }

    if (v11 && v12 == *(v10 + 64))
    {
      if ((*a3 & 2) != 0 || (result = _LSAliasCompareToNode(*(v10 + 32), *(a3 + 3), v12, 0, *(v10 + 40)), result))
      {
        *(*(*(v10 + 48) + 8) + 24) = v9;
        *(*(*(v10 + 56) + 8) + 24) = a3;
        *a5 = 1;
      }
    }
  }

  return result;
}

void ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v55 = *(a1 + 64);
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = LaunchServices::Database::Context::_get(&v55, v2, 0);

  if (!v3)
  {
    v14 = *(a1 + 56);
    v15 = +[_LSDServiceDomain defaultServiceDomain];
    v16 = LaunchServices::Database::Context::_get(&v55, v15, 0);

    if (v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = v58;
    }

    (*(v14 + 16))(v14, 0, v17);

    goto LABEL_19;
  }

  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v4 = _LSDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke_cold_1(a1);
  }

  [(_LSDatabase *)*v3 store];
  v5 = *([(_LSDatabase *)*v3 schema]+ 1580);
  v44 = MEMORY[0x1E69E9820];
  v45 = 3221225472;
  v7 = (a1 + 72);
  v6 = *(a1 + 72);
  v46 = ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke_39;
  v47 = &unk_1E6A1B3B0;
  v50 = *(a1 + 80);
  v48 = &v51;
  v49 = v6;
  _CSStoreEnumerateUnits();
  if (*(v52 + 6))
  {
    goto LABEL_11;
  }

  v8 = _LSDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke_cold_2(a1);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v60 = 0;
  [(_LSDatabase *)*v3 store];
  v9 = *([(_LSDatabase *)*v3 schema]+ 1580);
  v38[1] = MEMORY[0x1E69E9820];
  v38[2] = 3221225472;
  v10 = *(a1 + 32);
  v38[3] = ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke_40;
  v38[4] = &unk_1E6A1B3D8;
  v43 = *(a1 + 80);
  v40 = buf;
  v42 = v3;
  v39 = v10;
  v41 = &v51;
  _CSStoreEnumerateUnits();
  v11 = *(v52 + 6);
  if (v11 && *(*&buf[8] + 24))
  {
    _LSContainerSetMounted(*v3, v11, *v7);
  }

  _Block_object_dispose(buf, 8);
  if (*(v52 + 6))
  {
LABEL_11:
    v12 = _LSDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke_cold_3(a1, (a1 + 72));
    }

    v13 = *(v52 + 6);
    (*(*(a1 + 56) + 16))();
    goto LABEL_14;
  }

  v21 = _LSDefaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke_cold_4((a1 + 32), (a1 + 72));
  }

  v22 = *(a1 + 40);
  if (v22)
  {
    v23 = *v3;
    v38[0] = 0;
    v24 = _LSAliasAdd(v23, v22, v38);
    v25 = v38[0];
    v26 = v25;
    if (!v24)
    {
LABEL_38:
      v33 = _LSDefaultLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a1 + 32);
        v36 = *v7;
        *buf = 138478339;
        *&buf[4] = v35;
        *&buf[12] = 2048;
        *&buf[14] = v36;
        *&buf[22] = 2114;
        v60 = v26;
        _os_log_error_impl(&dword_18162D000, v33, OS_LOG_TYPE_ERROR, "Error adding database record for volume %{private}@ with volume ID %llu: %{public}@", buf, 0x20u);
      }

      v25 = v26;
      (*(*(a1 + 56) + 16))();
      goto LABEL_42;
    }
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  v27 = *(a1 + 48);
  if (v27)
  {
    v28 = *v3;
    v37 = v25;
    v29 = _LSAliasAdd(v28, v27, &v37);
    v26 = v37;

    v25 = v26;
    if (!v29)
    {
LABEL_36:
      if (v24)
      {
        _LSAliasRemove(*v3, v24);
      }

      goto LABEL_38;
    }
  }

  else
  {
    v29 = 0;
  }

  v30 = *(a1 + 72);
  v31 = *v3;
  *buf = *(a1 + 80);
  *&buf[2] = 0;
  *&buf[4] = v30;
  *&buf[12] = v24;
  *&buf[16] = v29;
  v32 = _LSContainerAdd(v31, buf, v52 + 6);
  if (v32)
  {
    v26 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v32, 0, "_LSContainerAdd_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSContainer.mm", 520);

    if (v29)
    {
      _LSAliasRemove(*v3, v29);
    }

    goto LABEL_36;
  }

  _LSContainerSetMounted(*v3, *(v52 + 6), *v7);
  v34 = *(v52 + 6);
  (*(*(a1 + 56) + 16))();
LABEL_42:

LABEL_14:
  _Block_object_dispose(&v51, 8);
LABEL_19:
  MEMORY[0x1865D7C50]();
  if (v55 && v57 == 1)
  {
    _LSContextDestroy(v55);
  }

  v18 = v56;
  v55 = 0;
  v56 = 0;

  v57 = 0;
  v19 = v58;
  v58 = 0;

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1816F6408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  LaunchServices::Database::Context::~Context(&a31);
  _Unwind_Resume(a1);
}

uint64_t ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke_39(uint64_t result, int a2, unsigned __int16 *a3, uint64_t a4, _BYTE *a5)
{
  if (*a3 == *(result + 48) && *(a3 + 2) == 1 && *(result + 40) == *(a3 + 2))
  {
    *(*(*(result + 32) + 8) + 24) = a2;
    *a5 = 1;
  }

  return result;
}

uint64_t ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke_40(uint64_t result, int a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(*(*(result + 40) + 8) + 24) = a3;
  v5 = *(*(*(result + 40) + 8) + 24);
  if (*v5 == *(result + 64))
  {
    v8 = result;
    result = _LSAliasCompareToNode(**(result + 56), *(v5 + 3), *(v5 + 2), 0, *(result + 32));
    if (result)
    {
      *(*(*(v8 + 48) + 8) + 24) = a2;
      *a5 = 1;
    }
  }

  return result;
}

uint64_t std::vector<std::pair<unsigned int,FSNode * {__strong}>>::__emplace_back_slow_path<unsigned int &,FSNode * {__strong}&>(uint64_t *a1, _DWORD *a2, id *a3)
{
  v3 = (a1[1] - *a1) >> 4;
  v4 = v3 + 1;
  if ((v3 + 1) >> 60)
  {
    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 3 > v4)
  {
    v4 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    std::allocator<std::pair<unsigned int,NSUUID * {__strong}>>::allocate_at_least[abi:nn200100](a1, v8);
  }

  v9 = 16 * v3;
  v16 = 0;
  v17 = v9;
  *(&v18 + 1) = 0;
  *v9 = *a2;
  *(v9 + 8) = *a3;
  *&v18 = v9 + 16;
  v10 = a1[1];
  v11 = v9 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<std::pair<unsigned int,NSUUID * {__strong}>>,std::pair<unsigned int,NSUUID * {__strong}>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::pair<unsigned int,NSUUID * {__strong}>>::~__split_buffer(&v16);
  return v15;
}

void sub_1816F66C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<unsigned int,NSUUID * {__strong}>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *_LSCopyGroupContainerIdentifiersFromEntitlements(void *a1, void *a2)
{
  v3 = a2;
  [a1 UTF8String];
  v4 = v3;
  v5 = container_entitlements_copy_container_identifiers();
  if (object_getClass(v5) != MEMORY[0x1E69E9E50])
  {
    _LSCopyGroupContainerIdentifiersFromEntitlements_cold_1(v5);
  }

  count = xpc_array_get_count(v5);
  v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:count];
  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:{xpc_array_get_string(v5, i)}];
      if (v9)
      {
        [v7 addObject:v9];
      }
    }
  }

  return v7;
}

id _LSCopyGroupContainerURLSFromContainermanager(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v24 = 1;
  [v1 UTF8String];
  v2 = container_create_or_lookup_app_group_paths_for_platform();
  if (v2)
  {
    v19 = v1;
    v3 = _CFXPCCreateCFObjectFromXPCObject();
    v4 = objc_alloc(MEMORY[0x1E695DF90]);
    v5 = [v3 allKeys];
    v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = objc_alloc(MEMORY[0x1E695DFF8]);
          v14 = [v7 objectForKeyedSubscript:v12];
          v15 = [v13 initFileURLWithPath:v14 isDirectory:1];
          [v6 setObject:v15 forKeyedSubscript:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v9);
    }

    v1 = v19;
  }

  else
  {
    v16 = _LSDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      _LSCopyGroupContainerURLSFromContainermanager_cold_1(v1, &v24);
    }

    v6 = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t _LSCopyEnvironmentVariablesFromContainermanager(void *a1, void *a2, unsigned int a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = _LSDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v24 = v5;
    v25 = 2048;
    v26 = a2;
    v27 = 2048;
    v28 = a3;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "querying MCM for environment for %@, class %llx, platform %lu", buf, 0x20u);
  }

  v20 = 1;
  [v5 UTF8String];
  v7 = container_create_or_lookup_path_for_platform();
  if (!v7)
  {
    v15 = _LSDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      _LSCopyEnvironmentVariablesFromContainermanager_cold_1(v5, &v20);
    }

    goto LABEL_14;
  }

  v8 = v7;
  v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:v7 isDirectory:1 relativeToURL:0];
  v10 = [v9 URLByAppendingPathComponent:@"tmp" isDirectory:1];
  v11 = [v10 path];
  v12 = [v9 path];
  v13 = v12;
  if (v11 && v12)
  {
    v21[0] = @"HOME";
    v21[1] = @"CFFIXED_USER_HOME";
    v22[0] = v12;
    v22[1] = v12;
    v21[2] = @"TMPDIR";
    v21[3] = @"_DYLD_CLOSURE_HOME";
    v22[2] = v11;
    v22[3] = v12;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];
  }

  else
  {
    v16 = _LSDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v10 path];
      *buf = 138412546;
      v24 = v17;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_18162D000, v16, OS_LOG_TYPE_DEFAULT, "Error creating env variables-tempURL: %@, containerPath: %@", buf, 0x16u);
    }

    v14 = 0;
  }

  free(v8);

  if (!v14)
  {
LABEL_14:
    v14 = MEMORY[0x1E695E0F8];
  }

  v18 = *MEMORY[0x1E69E9840];
  return v14;
}

void _LSGetNodeTypeCreatorInfo(uint64_t *a1, void *a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v9 = a2;
  if (a3 && *a3)
  {
    *a4 = *(*a3 + 196);
LABEL_9:
    *a5 = 0;
    goto LABEL_10;
  }

  if (a1 && _LSGetBundleClassForNode(a1, v9) == 2 && (v11 = 0, !_LSBundleFindWithNode(a1, v9, 0, &v11)))
  {
    v10 = v11;
    *a4 = *(v11 + 196);
    *a5 = 0;
    if (a3)
    {
      *a3 = v10;
    }
  }

  else if (([v9 getHFSType:a4 creator:a5 error:0] & 1) == 0)
  {
    *a4 = 0;
    goto LABEL_9;
  }

LABEL_10:
}

BOOL _LSIsKnownExtensionInlineBuffer(uint64_t *a1, uint64_t a2)
{
  v2 = 0;
  v6[20] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    if (*(a2 + 160) >= 1 && XCFBufInitWithCFStringInlineBuffer(v6, a2, 1))
    {
      v2 = _LSIsKnownExtension(a1, v6);
      XCFBufDestroy(v6);
    }

    else
    {
      v2 = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _LSGetBundleClassForExtensionNSString(void *a1)
{
  v1 = a1;
  v6 = v1;
  v9 = 0;
  v10 = [(__CFString *)v1 length];
  if (CFStringGetCharactersPtr(v1))
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
  }

  v11 = 0;
  v12 = 0;
  v8 = CStringPtr;
  v3 = _LSGetBundleClassForExtensionInlineBuffer(v5);

  return v3;
}

uint64_t _LSBundleClassHasUnregisteredPersonality(int a1)
{
  if ((a1 - 9) >= 7)
  {
    v1 = 0;
  }

  else
  {
    v1 = 0x1000001000101uLL >> (8 * (a1 - 9));
  }

  return v1 & 1;
}

BOOL _LSIsKnownExtension(uint64_t *a1, uint64_t *a2)
{
  [(_LSDatabase *)*a1 store];
  [(_LSDatabase *)*a1 schema];
  v4 = *a2;
  v5 = *(a2 + 2);
  return CSStringBindingFindStringAndBindings() == 0;
}

uint64_t _LSGetValidApplicationCategoryTypeSet()
{
  v29 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&_LSGetValidApplicationCategoryTypeSet::lock);
  if (_LSGetValidApplicationCategoryTypeSet::categoryTypeSet)
  {
    goto LABEL_24;
  }

  if (!_LSCurrentProcessMayMapDatabase())
  {
    v6 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:?];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__14;
    v20 = __Block_byref_object_dispose__14;
    v21 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___LSGetValidApplicationCategoryTypeSet_block_invoke_71;
    v15[3] = &unk_1E6A1B490;
    v15[4] = &v16;
    [v6 getApplicationCategoryIdentifiersSetWithCompletionHandler:v15];
    _LSGetValidApplicationCategoryTypeSet::categoryTypeSet = [v17[5] copy];
    _Block_object_dispose(&v16, 8);

    goto LABEL_24;
  }

  v19 = 0;
  v16 = 0;
  v17 = 0;
  LOBYTE(v18) = 0;
  v0 = +[_LSDServiceDomain defaultServiceDomain];
  v1 = LaunchServices::Database::Context::_get(&v16, v0, 0);

  if (v1)
  {
    v24 = 0;
    if (_UTGetActiveTypeForCFStringIdentifier(*v1, @"public.app-category", &v24))
    {
      v2 = *MEMORY[0x1E695E480];
      Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &kXCFCaseInsensitiveStringSetCallBacks);
      if (!Mutable)
      {
        v13 = [MEMORY[0x1E696AAA8] currentHandler];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFSetRef _LSGetValidApplicationCategoryTypeSet()"];
        [v13 handleFailureInFunction:v14 file:@"LSCore.mm" lineNumber:944 description:@"Failed to allocate CFMutableSet for category types."];
      }

      v4 = *v1;
      v5 = v24;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3321888768;
      v22[2] = ___LSGetValidApplicationCategoryTypeSet_block_invoke;
      v22[3] = &__block_descriptor_48_ea8_40c27_ZTS10CFReleaserIP7__CFSetE_e42_v36__0I8r____IIIIiII_8I_IIIIIIIII_12q20_28l;
      v22[4] = v1;
      cf = Mutable;
      if (Mutable)
      {
        CFRetain(Mutable);
      }

      _UTTypeSearchConformingTypesWithBlock(v4, v5, -1, 0, v22);
      CFSetRemoveValue(Mutable, @"public.app-category");
      _LSGetValidApplicationCategoryTypeSet::categoryTypeSet = CFSetCreateCopy(v2, Mutable);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = 0;
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      goto LABEL_20;
    }

    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v26 = "CFSetRef _LSGetValidApplicationCategoryTypeSet()";
      v27 = 2114;
      v28 = @"public.app-category";
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: unable to get info for type %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = LaunchServices::Database::Context::error(&v16);
      _LSGetValidApplicationCategoryTypeSet_cold_1(v8, buf, v7);
    }
  }

LABEL_20:
  if (v16 && v18 == 1)
  {
    _LSContextDestroy(v16);
  }

  v9 = v17;
  v16 = 0;
  v17 = 0;

  LOBYTE(v18) = 0;
  v10 = v19;
  v19 = 0;

LABEL_24:
  os_unfair_lock_unlock(&_LSGetValidApplicationCategoryTypeSet::lock);
  result = _LSGetValidApplicationCategoryTypeSet::categoryTypeSet;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef __copy_helper_block_ea8_40c27_ZTS10CFReleaserIP7__CFSetE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_ea8_40c27_ZTS10CFReleaserIP7__CFSetE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 40) = 0;
}

id LaunchServices::Database::Context::error(id *this)
{
  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = LaunchServices::Database::Context::_get(this, v2, 0);

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = this[3];
  }

  return v4;
}

const void *_LSCopyApplicationCategoriesForApplicationNode(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v19 = 0;
  v7 = v6[2](v6, v5, &v19);
  v8 = v19;
  v9 = v7;
  v10 = v9;
  if (v9)
  {
  }

  else
  {
    Copy = _LSGetOSStatusFromNSError(v8);

    if (Copy == -1427)
    {
      Copy = 0;
      *a2 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
      goto LABEL_22;
    }

    if (Copy)
    {
      goto LABEL_22;
    }
  }

  valid = _LSGetValidApplicationCategoryTypeSet();
  if (valid)
  {
    Count = CFArrayGetCount(v10);
    if (Count >= 1)
    {
      MutableCopy = 0;
      v14 = *MEMORY[0x1E695E480];
      v15 = Count + 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, v15 - 2);
        if (!CFSetContainsValue(valid, ValueAtIndex))
        {
          if (!MutableCopy)
          {
            MutableCopy = CFArrayCreateMutableCopy(v14, 0, v10);
          }

          CFArrayRemoveValueAtIndex(MutableCopy, v15 - 2);
        }

        --v15;
      }

      while (v15 > 1);
      if (MutableCopy)
      {
        Copy = CFArrayCreateCopy(v14, MutableCopy);
        if (v10)
        {
          CFRelease(v10);
        }

        CFRelease(MutableCopy);
        if (!Copy)
        {
          goto LABEL_15;
        }

LABEL_17:
        *a2 = CFRetain(Copy);
        CFRelease(Copy);
        Copy = 0;
        goto LABEL_22;
      }
    }
  }

  Copy = v10;
  if (v10)
  {
    goto LABEL_17;
  }

LABEL_15:
  *a2 = 0;
LABEL_22:

  return Copy;
}

uint64_t _LSCopyInfoForNode(uint64_t *a1, void *a2, int a3, int *a4)
{
  v7 = a2;
  v41 = 0;
  v42 = 0;
  *(a4 + 1) = 0;
  *a4 = 0;
  a4[4] = 0;
  if (!a1 && a3 != 64)
  {
    v8 = _LSContextInit(&v42);
    if (v8)
    {
      v9 = 0;
      goto LABEL_23;
    }

    a1 = &v42;
  }

  v40 = 0;
  v9 = [v7 nameWithError:&v40];
  v10 = v40;
  v11 = v10;
  if (v9)
  {
  }

  else
  {
    v8 = _LSGetOSStatusFromNSError(v10);

    if (v8)
    {
      goto LABEL_21;
    }
  }

  _CFGetPathExtensionRangesFromPathComponent();
  if (a3)
  {
    v12.location = v43;
    if (v43 != -1)
    {
      v12.length = v44;
      if (v44 >= 1)
      {
        *(a4 + 3) = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v9, v12);
      }
    }
  }

  if ([v7 isHidden])
  {
    *a4 |= 0x40u;
  }

  if ((a3 & 0x54) != 0)
  {
    v35[0] = 0;
    if ([v7 getResourceValue:v35 forKey:*MEMORY[0x1E695DB60] options:1 error:0] && objc_msgSend(v35[0], "BOOLValue"))
    {
      *a4 |= 0x100000u;
    }
  }

  if (a3 == 64)
  {
    goto LABEL_20;
  }

  v14 = _LSGetBundleClassForNode(a1, v7);
  v15 = v14;
  if (v14)
  {
    v16 = v14 == 3;
  }

  else
  {
    v16 = 1;
  }

  v17 = !v16;
  if (![v7 isDirectory])
  {
    if ([v7 isSymbolicLink])
    {
      v19 = *a4 | 0x30;
      goto LABEL_64;
    }

    if ([v7 isAliasFile])
    {
      v24 = *a4;
      v25 = 17;
    }

    else
    {
      v24 = *a4;
      if (v15 != 2)
      {
        v19 = v24 | 1;
LABEL_64:
        *a4 = v19;
        memset(v39, 63, sizeof(v39));
        [v7 getHFSType:&v39[1] creator:v39 error:0];
        if ((a3 & 0x14) != 0 && (*a4 & 0x10) == 0 && [v7 isExecutable])
        {
          v27 = (v39[1] == 1061109567 || v39[1] == 0) && v44 == 0;
          if (v27 || v15)
          {
            *a4 |= 0x2000u;
          }

          else
          {
            LODWORD(v35[0]) = 0;
            v35[1] = 0;
            v36 = 0;
            v37 = 0u;
            v38 = 0u;
            if (_LSGetBindingForNodeOrSchemeOrUTI(a1, v7, 0, 0, 0, -1, 0, 2, v35) || !v37)
            {
              *a4 |= 0x2000u;
            }
          }
        }

        if ((a3 & 2) != 0)
        {
          v28 = v39[0];
          a4[1] = v39[1];
          a4[2] = v28;
        }

        if ((a3 & 0x18) != 0 && (*a4 & 4) != 0)
        {
          v29 = v41;
          if (a1 && !v41)
          {
            _LSFindOrRegisterBundleNode(a1, v7, 0, (a1 == &v42) << 25, 0, 0, &v41);
            v29 = v41;
          }

          if (v29)
          {
            v30 = *a1;
            plistContentFlags = v29->_plistContentFlags;
            *a4 |= (_LSBundleDataGetUnsupportedFormatFlag() | plistContentFlags) & 0x600F80;
            v32 = _LSGetItemInfoArchFlagsForBundle(v41);
          }

          else
          {
            v32 = 0x400000;
          }

          *a4 |= v32;
        }

        goto LABEL_20;
      }

      v25 = 5;
    }

    v19 = v24 | v25;
    goto LABEL_64;
  }

  *a4 |= 8u;
  if ([v7 isVolume])
  {
    if ((a3 & 0x14) != 0)
    {
      v8 = 0;
      v18 = *a4 | 0x1000;
LABEL_34:
      *a4 = v18;
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if ((a3 & 0x3E) == 0)
  {
    goto LABEL_20;
  }

  if (_LSNodeIsPackageCommon(a1, v7, 1, 0))
  {
    *a4 |= 2u;
  }

  if ((a3 & 2) != 0 && (*a4 & 2) != 0)
  {
    if (v41)
    {
      v20 = 0;
    }

    else
    {
      v20 = v17;
    }

    if (a1 && v20)
    {
      _LSFindOrRegisterBundleNode(a1, v7, 0, (a1 == &v42) << 25, 0, 0, &v41);
    }

    _LSGetNodeTypeCreatorInfo(a1, v7, &v41, a4 + 1, a4 + 2);
  }

  if ((a3 & 0x3C) == 0)
  {
    goto LABEL_20;
  }

  v8 = 0;
  if ((*a4 & 2) != 0 && v15 == 2)
  {
    *a4 |= 4u;
    if ((a3 & 0x18) != 0)
    {
      v21 = v41;
      if (a1 && !v41)
      {
        _LSFindOrRegisterBundleNode(a1, v7, 0, (a1 == &v42) << 25, 0, 0, &v41);
        v21 = v41;
      }

      if (v21)
      {
        v22 = *a1;
        v23 = v21->_plistContentFlags;
        *a4 |= (_LSBundleDataGetUnsupportedFormatFlag() | v23) & 0x600F80;
        v8 = 0;
        v18 = *a4 | _LSGetItemInfoArchFlagsForBundle(v41);
        goto LABEL_34;
      }

      v33 = [v7 URL];
      v34 = CFBundleCopyInfoDictionaryInDirectory(v33);

      *a4 |= _LSGetApplicationFlagsFromPlist(v34, v7, 1, 0, 0, 0);
      if (v34)
      {
        CFRelease(v34);
      }
    }

LABEL_20:
    v8 = 0;
  }

LABEL_21:
  if (v42)
  {
    _LSContextDestroy(&v42);
  }

LABEL_23:

  return v8;
}

uint64_t _LSGetItemInfoArchFlagsForBundle(const LSBundleData *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___ZL32_LSGetItemInfoArchFlagsForBundlePK12LSBundleData_block_invoke;
  v3[3] = &unk_1E6A1ABC0;
  v3[4] = &v4;
  _LSEnumerateSliceMask(a1->base._sliceMask, v3);
  v1 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1816F7FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSGetApplicationFlagsFromPlist(const __CFDictionary *a1, void *a2, int a3, int a4, int a5, _BYTE *a6)
{
  v11 = a2;
  if (a1)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      if (CFDictionaryGetCount(a1))
      {
        if (_LSGetBooleanFromDict(a1, @"LSRequiresClassic"))
        {
          v13 = 256;
        }

        else if (_LSGetBooleanFromDict(a1, @"LSRequiresCarbon"))
        {
          v13 = 128;
        }

        else if (_LSGetBooleanFromDict(a1, @"LSPrefersCarbon"))
        {
          v13 = 640;
        }

        else if (_LSGetBooleanFromDict(a1, @"LSPrefersClassic"))
        {
          v13 = 1152;
        }

        else if (a4)
        {
          v13 = 640;
        }

        else
        {
          v13 = 128;
        }

        if (CFDictionaryContainsKey(a1, @"AMCustomServiceTypes"))
        {
          v15 = v13 | 0x20000;
        }

        else
        {
          v15 = v13;
        }

        if (!a6)
        {
          goto LABEL_16;
        }

LABEL_15:
        *a6 = 0;
        goto LABEL_16;
      }
    }
  }

  if (a5)
  {
    v14 = 256;
  }

  else
  {
    v14 = 128;
  }

  if (a3)
  {
    v14 = 0;
  }

  if (a4)
  {
    v15 = 640;
  }

  else
  {
    v15 = v14;
  }

  if (a6)
  {
    goto LABEL_15;
  }

LABEL_16:

  return v15;
}

BOOL _LSGetItemInfoFlagsForNode(uint64_t *a1, void *a2, _DWORD *a3, void *a4)
{
  v7 = a2;
  if (v7)
  {
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _LSGetItemInfoFlagsForNode(LSContext *, FSNode *__strong, LSItemInfoFlags *, NSError *__autoreleasing *)"}];
    [v10 handleFailureInFunction:v11 file:@"LSCore.mm" lineNumber:1535 description:{@"Invalid parameter not satisfying: %@", @"inNode != nil"}];

    if (a3)
    {
      goto LABEL_3;
    }
  }

  v12 = [MEMORY[0x1E696AAA8] currentHandler];
  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _LSGetItemInfoFlagsForNode(LSContext *, FSNode *__strong, LSItemInfoFlags *, NSError *__autoreleasing *)"}];
  [v12 handleFailureInFunction:v13 file:@"LSCore.mm" lineNumber:1536 description:{@"Invalid parameter not satisfying: %@", @"outFlags != NULL"}];

LABEL_3:
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v8 = _LSCopyInfoForNode(a1, v7, 4, v14);
  if (v8)
  {
    if (a4)
    {
      *a4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v8, 0, "_LSGetItemInfoFlagsForNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSCore.mm", 1544);
    }
  }

  else
  {
    *a3 = v14[0];
  }

  return v8 == 0;
}

uint64_t _LSCanBundleHandleNodeOrSchemeOrUTI(int a1, int a2, void *a3, LaunchServices::BindingEvaluator *this, LaunchServices::BindingEvaluator *a5, int a6)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0u;
  v13 = 0u;
  if (_LSGetBindingForNodeOrSchemeOrUTI(a1, a3, this, a5, a2, a6, 0, 80046, &v9))
  {
    v7 = 0;
  }

  else if (v11)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (a3 && v10)
    {
      v7 = (*(v10 + 172) >> 28) & 1;
    }
  }

  return v7;
}

uint64_t _LSCopySniffedExtensionAndTypeIdentifierForURL()
{
  v0 = _CFBundleCopyFileTypeForFileURL();
  if (v0)
  {
    CFRelease(v0);
  }

  return 0;
}

__CFSet *_LSCopyPackageExtensions(LSContext *a1)
{
  v2 = a1->db;
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  if (Mutable)
  {
    [(_LSDatabase *)v2 store];
    [(_LSDatabase *)v2 schema];
    v4 = CSStringBindingCopyCFStrings();
    v5 = v4;
    if (v4)
    {
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v7 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v5, v7);
          if (_LSIsPackageExtension(a1, 1, ValueAtIndex))
          {
            v9 = CFArrayGetValueAtIndex(v5, v7);
            CFSetAddValue(Mutable, v9);
          }

          ++v7;
        }

        while (Count != v7);
      }

      CFRelease(v5);
    }

    if (CFSetGetCount(Mutable) < 1)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }

    else
    {
      CFSetAddValue(Mutable, @"app");
      CFSetAddValue(Mutable, @"service");
    }
  }

  return Mutable;
}

void _LSSetKernelPackageExtensions()
{
  v0 = _LSCopyPackageExtensionsUnion();
  if (v0)
  {
    v1 = v0;
    Count = CFArrayGetCount(v0);
    if (Count >= 1)
    {
      v3 = Count;
      os_unfair_lock_lock(&packageExtensionsLock);
      if (lastPackageExtensions)
      {
        CFRelease(lastPackageExtensions);
      }

      lastPackageExtensions = CFRetain(v1);
      os_unfair_lock_unlock(&packageExtensionsLock);
      v4 = 0;
      for (i = 0; i != v3; ++i)
      {
        usedBufLen = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v1, i);
        v19.length = CFStringGetLength(ValueAtIndex);
        v19.location = 0;
        Bytes = CFStringGetBytes(ValueAtIndex, v19, 0x8000100u, 0, 0, 0, 0, &usedBufLen);
        v8 = usedBufLen;
        if (usedBufLen <= v4)
        {
          v8 = v4;
        }

        if (Bytes)
        {
          v4 = v8;
        }
      }

      v9 = v4 + 1;
      v10 = malloc_type_malloc((v4 + 1) * v3, 0x100004077774924uLL);
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = v10;
        while (1)
        {
          v14 = CFArrayGetValueAtIndex(v1, v12);
          if (!CFStringGetCString(v14, v13, v9, 0x8000100u))
          {
            break;
          }

          ++v12;
          v13 += v9;
          if (v3 == v12)
          {
            v16 = v11;
            v17 = v3;
            v18 = v9;
            fsctl("/", 0x80104102uLL, &v16, 0);
            break;
          }
        }

        free(v11);
      }
    }

    CFRelease(v1);
  }
}

CFArrayRef _LSCopyPackageExtensionsUnion(void)
{
  v3.db = 0;
  if (_LSContextInit(&v3.db))
  {
    v0 = 0;
  }

  else
  {
    v1 = _LSCopyPackageExtensions(&v3);
    if (v1)
    {
      v0 = XCFArrayCreateWithSet(*MEMORY[0x1E695E480], v1, MEMORY[0x1E695E9C0]);
      CFRelease(v1);
    }

    else
    {
      v0 = 0;
    }

    _LSContextDestroy(&v3.db);
  }

  return v0;
}

CFArrayRef _LSCopyKernelPackageExtensionsAsLSD()
{
  if (os_unfair_lock_trylock(&packageExtensionsLock))
  {
    if (lastPackageExtensions)
    {
      v0 = CFRetain(lastPackageExtensions);
      os_unfair_lock_unlock(&packageExtensionsLock);
      if (v0)
      {
        return v0;
      }
    }

    else
    {
      os_unfair_lock_unlock(&packageExtensionsLock);
    }
  }

  return _LSCopyPackageExtensionsUnion();
}

uint64_t ___ZL28_LSIsClaimedPackageExtensionP9LSContextPK10__CFString_block_invoke(uint64_t result, uint64_t a2, int a3, _BYTE *a4)
{
  if ((a3 & 3) == 2 && (a3 & 0xFFFFFFFC) != 0)
  {
    v6 = result;
    result = _LSClaimGet(**(result + 40));
    if (result)
    {
      if ((*(result + 8) & 8) != 0)
      {
        *(*(*(v6 + 32) + 8) + 24) = 1;
        *a4 = 1;
      }
    }
  }

  return result;
}

uint64_t ___ZL32_LSGetItemInfoArchFlagsForBundlePK12LSBundleData_block_invoke(uint64_t result, int a2)
{
  if (a2 > 16777222)
  {
    if (a2 == 16777223)
    {
      v2 = 0x10000000;
    }

    else
    {
      if (a2 != 16777234)
      {
        return result;
      }

      v2 = 0x8000000;
    }
  }

  else if (a2 == 7)
  {
    v2 = 0x4000000;
  }

  else
  {
    if (a2 != 18)
    {
      return result;
    }

    v2 = 0x2000000;
  }

  *(*(*(result + 32) + 8) + 24) |= v2;
  return result;
}

uint64_t _LSSetLocalDatabaseIfNewer(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = a1;
  os_unfair_recursive_lock_lock_with_options();
  sessionKey = v2->sessionKey;
  v4 = _LSGetSession(sessionKey);
  v5 = v4[3];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  v7 = v4[3];
  v8 = _LSDatabaseGetCacheGUID(v7);
  v1 = _LSDatabaseGetCacheGUID(v2);
  v9 = [v8 isEqual:v1];

  if (!v9)
  {
LABEL_7:
    v15 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v19 = _LSDatabaseGetCacheGUID(v2);
      v20 = v4[3];
      if (v20)
      {
        v1 = v4[3];
        v21 = _LSDatabaseGetCacheGUID(v1);
      }

      else
      {
        v21 = @"(no db)";
      }

      *buf = 138412546;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = v21;
      _os_log_debug_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEBUG, "Database with GUID %@ does not match existing database GUID %@", buf, 0x16u);
      if (v20)
      {
      }
    }

    goto LABEL_8;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  memset(buf, 0, sizeof(buf));
  _LSDatabaseGetHeader(v2, buf);
  v10 = v32;
  v11 = v4[3];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  memset(buf, 0, sizeof(buf));
  _LSDatabaseGetHeader(v11, buf);
  if (v10 <= v32)
  {
    v15 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      memset(buf, 0, sizeof(buf));
      _LSDatabaseGetHeader(v2, buf);
      v18 = v4[3];
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
      memset(buf, 0, sizeof(buf));
      _LSDatabaseGetHeader(v18, buf);
      _LSSetLocalDatabaseIfNewer_cold_1();
    }

LABEL_8:

    v14 = 0;
    goto LABEL_9;
  }

  v12 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    memset(buf, 0, sizeof(buf));
    _LSDatabaseGetHeader(v2, buf);
    v13 = v4[3];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    memset(buf, 0, sizeof(buf));
    _LSDatabaseGetHeader(v13, buf);
    _LSSetLocalDatabaseIfNewer_cold_2();
  }

  LSSession::setDatabase(v4, v2);
  v14 = 1;
LABEL_9:
  os_unfair_recursive_lock_unlock();

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

void _LSDatabaseHandleUnitExhaustion(_LSDatabase *a1, unsigned int a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    store = a1->_store;
  }

  v5 = _CSStoreCopyTableName();
  v6 = a1->node;
  v7 = [FSNode alloc];
  v8 = [(FSNode *)v6 URL];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld.exhausted", a2];
  v10 = [v8 URLByAppendingPathExtension:v9];
  v29 = 0;
  v11 = [(FSNode *)v7 initWithURL:v10 flags:0 error:&v29];
  v12 = v29;

  if (v11)
  {
    v13 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__pn_.__r_.__value_.__l.__data_) = 138543874;
      *(buf.__pn_.__r_.__value_.__r.__words + 4) = v5;
      WORD2(buf.__pn_.__r_.__value_.__r.__words[1]) = 2114;
      *(&buf.__pn_.__r_.__value_.__r.__words[1] + 6) = v6;
      HIWORD(buf.__pn_.__r_.__value_.__r.__words[2]) = 2114;
      v34 = v11;
      _os_log_error_impl(&dword_18162D000, v13, OS_LOG_TYPE_ERROR, "Unit exhaustion in table %{public}@; moving database %{public}@ -> %{public}@", &buf, 0x20u);
    }

    v28 = v12;
    v14 = [(FSNode *)v6 getFileSystemRepresentation:&buf error:&v28];
    v15 = v28;

    if (v14)
    {
      v27 = v15;
      v16 = [(FSNode *)v11 getFileSystemRepresentation:&__to error:&v27];
      v17 = v27;

      if (v16)
      {
        rename(&buf, &__to, v18);
        if (!v19)
        {
          v21 = _LSDatabaseGetLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *v30 = 136446210;
            p_to = &__to;
            _os_log_impl(&dword_18162D000, v21, OS_LOG_TYPE_DEFAULT, "moved database to %{public}s", v30, 0xCu);
          }

          goto LABEL_14;
        }

        v20 = *__error();
        v21 = _LSDatabaseGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *v30 = 67109120;
          LODWORD(p_to) = v20;
          v22 = "rename() failed: %{darwin.errno}d";
          v23 = v21;
          v24 = 8;
LABEL_13:
          _os_log_error_impl(&dword_18162D000, v23, OS_LOG_TYPE_ERROR, v22, v30, v24);
        }
      }

      else
      {
        v21 = _LSDatabaseGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *v30 = 138412290;
          p_to = v17;
          v22 = "couldn't get file system representation of database moved-aside path: %@";
          v23 = v21;
          v24 = 12;
          goto LABEL_13;
        }
      }

LABEL_14:

      goto LABEL_15;
    }

    v26 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__to.__pn_.__r_.__value_.__l.__data_) = 138412290;
      *(__to.__pn_.__r_.__value_.__r.__words + 4) = v15;
      _os_log_error_impl(&dword_18162D000, v26, OS_LOG_TYPE_ERROR, "couldn't get file system representation of database path: %@", &__to, 0xCu);
    }
  }

  else
  {
    v25 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.__pn_.__r_.__value_.__l.__data_) = 138412290;
      *(buf.__pn_.__r_.__value_.__r.__words + 4) = v12;
      _os_log_error_impl(&dword_18162D000, v25, OS_LOG_TYPE_ERROR, "couldn't get database aside node: %@", &buf, 0xCu);
    }
  }

LABEL_15:
  _LSSetCrashMessage([objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unit exhaustion in table %@", v5]);
  abort();
}

void sub_1816F927C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = _LSDatabase;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void _LSDatabaseSetHeader(void *a1)
{
  if (a1)
  {
    v5 = 0;
    v1 = a1;
    v2 = v1[5];
    v3 = *(v1 + 12);
    if (!_CSStoreWriteToHeader())
    {
      v4 = _LSDatabaseGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        _LSDatabaseSetHeader(&v5);
      }
    }
  }
}

uint64_t _LSDatabaseSessionSetSeedingInProgress(char a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = _LSServer_SelfSessionKey();
  v3 = _LSGetSession(v2);
  *(v3 + 20) = *(v3 + 20) & 0xFE | a1;

  return os_unfair_recursive_lock_unlock();
}

uint64_t _LSDatabaseSessionSetSeedingDueToManualRebuild(int a1)
{
  os_unfair_recursive_lock_lock_with_options();
  v2 = _LSServer_SelfSessionKey();
  v3 = _LSGetSession(v2);
  if (a1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *(v3 + 20) = *(v3 + 20) & 0xFD | v4;

  return os_unfair_recursive_lock_unlock();
}

void sub_1816F97C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LSDBHeader::GetCurrentModelCode(std::string *a1@<X8>)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v4 = MGCopyAnswer();
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = MGCopyAnswer();
  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [v3 componentsJoinedByString:@"/"];
  if (v6)
  {
    std::string::__assign_external(a1, [v6 UTF8String]);
  }
}

void sub_1816F98F8(_Unwind_Exception *a1)
{
  v4 = v3;

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void LSDBHeader::GetCurrentCryptexVersion(std::string *a1@<X8>)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v5 = _LSGetCurrentCryptexBuildVersionString();
  if (v5)
  {
    v3 = [v5 UTF8String];
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = "";
    }

    std::string::__assign_external(a1, v4);
  }
}

void sub_1816F99B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

void _LSDatabaseSetHeaderFlag(_LSDatabase *a1, int a2, int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  memset(v8, 0, sizeof(v8));
  _LSDatabaseGetHeader(v5, v8);
  if (a3)
  {
    v6 = DWORD2(v9) | a2;
  }

  else
  {
    v6 = DWORD2(v9) & ~a2;
  }

  DWORD2(v9) = v6;
  _LSDatabaseSetHeader(v5);

  v7 = *MEMORY[0x1E69E9840];
}

id _LSDatabaseGetSeededSystemVersion(_LSDatabase *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  _LSDatabaseGetHeader(a1, v10);
  *__p = *(v10 + 8);
  v9 = *(&v10[1] + 8);
  v1 = _LSVersionNumberGetStringRepresentation(__p);
  v2 = MEMORY[0x1E696AEC0];
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = @"?";
  }

  *__dst = 0;
  v13 = 0;
  strlcpy(__dst, v11, 0x10uLL);
  std::string::basic_string[abi:nn200100]<0>(__p, __dst);
  if ((SBYTE7(v9) & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = [v2 stringWithFormat:@"%@ (%s)", v3, v4];
  if (SBYTE7(v9) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

void sub_1816F9C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id _LSDatabaseGetSeededCryptexVersion(_LSDatabase *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v10, 0, sizeof(v10));
  _LSDatabaseGetHeader(a1, v10);
  *__p = *(&v10[2] + 8);
  v9 = *(&v10[3] + 8);
  v1 = _LSVersionNumberGetStringRepresentation(__p);
  v2 = MEMORY[0x1E696AEC0];
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = @"?";
  }

  *__dst = 0;
  v12 = 0;
  strlcpy(__dst, &v10[4] + 8, 0x10uLL);
  std::string::basic_string[abi:nn200100]<0>(__p, __dst);
  if ((SBYTE7(v9) & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = [v2 stringWithFormat:@"%@ (%s)", v3, v4];
  if (SBYTE7(v9) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

void sub_1816F9D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_LSDatabase *_LSDatabaseCreateFromPersistentStore(char a1, _WORD *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v6 = objc_autoreleasePoolPush();
  v7 = [__LSDefaultsGetSharedInstance() dbRemoveDBOnStartupURL];
  v8 = _LSDatabaseRecoveryFileExists(v7);

  if (v8)
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [__LSDefaultsGetSharedInstance() dbRemoveDBOnStartupURL];
    v37 = 0;
    v11 = [v9 removeItemAtURL:v10 error:&v37];
    v12 = v37;

    if (v11)
    {
      v13 = [__LSDefaultsGetSharedInstance() databaseStoreFileURL];
      v38 = 4;
      v14 = [MEMORY[0x1E696AC08] defaultManager];
      v36 = v12;
      v15 = [v14 removeItemAtURL:v13 error:&v36];
      v16 = v36;

      if (v15)
      {
        v17 = _LSDatabaseGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v40 = v13;
          _os_log_impl(&dword_18162D000, v17, OS_LOG_TYPE_INFO, "_LSCreateStoreWithFileContents, removed database file at %{public}@ to force clean rebuild.", buf, 0xCu);
        }
      }

      else
      {
        v17 = _LSDatabaseGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          _LSDatabaseCreateFromPersistentStore_cold_2();
        }
      }
    }

    else
    {
      v13 = _LSDatabaseGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v18 = [__LSDefaultsGetSharedInstance() dbRemoveDBOnStartupURL];
        _LSDatabaseCreateFromPersistentStore_cold_1(v18, buf, v13);
      }

      v16 = v12;
    }
  }

  else
  {
    v16 = 0;
  }

  v19 = [__LSDefaultsGetSharedInstance() dbRecoveryFileURL];
  v20 = _LSDatabaseRecoveryFileExists(v19) == 0;

  if (v20)
  {
    v26 = [__LSDefaultsGetSharedInstance() dbRecoveryFileURL];
    _LSDatabaseCreateRecoveryFile(v26);

    v35 = v16;
    v27 = _LSDatabaseCreateFromPersistentStoreIgnoringRecoveryFile(a1, 0, &v38, &v35);
    v22 = v35;

    if (v27)
    {
      v24 = v22;
      v23 = v27;
      goto LABEL_26;
    }

    v32 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      _LSDatabaseCreateFromPersistentStore_cold_4();
    }
  }

  else
  {
    v21 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      _LSDatabaseCreateFromPersistentStore_cold_3();
    }

    v38 = 4;
    v22 = v16;
  }

  if ((a1 & 4) != 0)
  {
    v34 = 0;
    v33 = v22;
    v23 = _LSDatabaseCreateFromPersistentStoreIgnoringRecoveryFile(a1, 1, &v34, &v33);
    v24 = v33;

    v38 |= v34;
    if (!v23)
    {
      v25 = _LSDatabaseGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        _LSDatabaseCreateFromPersistentStore_cold_5();
      }
    }
  }

  else
  {
    v23 = 0;
    v24 = v22;
  }

LABEL_26:
  v28 = [__LSDefaultsGetSharedInstance() dbRecoveryFileURL];
  _LSDatabaseDeleteRecoveryFile(v28);

  objc_autoreleasePoolPop(v6);
  if (v23)
  {
    if (a2)
    {
      *a2 = v38;
    }
  }

  else if (a3)
  {
    v29 = v24;
    *a3 = v24;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t _LSDatabaseRecoveryFileExists(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = [a1 getFileSystemRepresentation:v3 maxLength:1024];
  if (result)
  {
    result = access(v3, 0) == 0;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void _LSDatabaseCreateRecoveryFile(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if ([a1 getFileSystemRepresentation:v13 maxLength:1024])
  {
    v1 = open_dprotected_np(v13, 2561, 4, 0, 436);
    if (v1 < 0)
    {
      v5 = *__error() == 17;
      v6 = _LSDatabaseGetLog();
      v4 = v6;
      if (v5)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          _LSDatabaseCreateRecoveryFile_cold_2();
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        v7 = __error();
        _LSDatabaseCreateRecoveryFile_cold_1(v13, v7, buf, v4);
      }
    }

    else
    {
      v2 = close(v1) == 0;
      v3 = _LSDatabaseGetLog();
      v4 = v3;
      if (v2)
      {
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v10 = "void _LSDatabaseCreateRecoveryFile(NSURL *__strong)";
          v11 = 2082;
          v12 = v13;
          _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: Successfully created recovery file %{public}s", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        __error();
        _LSDatabaseCreateRecoveryFile_cold_3();
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

_LSDatabase *_LSDatabaseCreateFromPersistentStoreIgnoringRecoveryFile(char a1, int a2, __int16 *a3, void *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v8 = _LSGetStoreNode();
  v9 = v8;
  if (!a2)
  {
    v32 = 0;
    v14 = _LSCreateStoreWithFileContents(v8, &v32);
    v15 = v32;
    if (v14)
    {
      v11 = 0;
      goto LABEL_11;
    }

    v18 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      _LSDatabaseCreateFromPersistentStoreIgnoringRecoveryFile();
    }

    if (_LSGetOSStatusFromNSError(v15) == -43)
    {
      v13 = 0;
      v14 = 0;
      v11 = 8;
      goto LABEL_41;
    }

    v15 = v15;
    v22 = [v15 domain];
    v23 = *MEMORY[0x1E696A768];
    if ([v22 isEqualToString:*MEMORY[0x1E696A768]])
    {
      if ([v15 code] == -9496)
      {

LABEL_40:
        v13 = 0;
        v14 = 0;
        v11 = 16;
        goto LABEL_41;
      }

      v26 = [v15 code] == -9489;

      if (v26)
      {
        goto LABEL_40;
      }
    }

    else
    {
    }

    v15 = v15;
    v24 = [v15 domain];
    if ([v24 isEqualToString:v23])
    {
      v25 = [v15 code] == -9493;

      v13 = 0;
      v14 = 0;
      if (v25)
      {
        v11 = 128;
      }

      else
      {
        v11 = 256;
      }
    }

    else
    {

      v13 = 0;
      v14 = 0;
      v11 = 256;
    }

    goto LABEL_41;
  }

  if ((a1 & 4) == 0)
  {
    v10 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      _LSDatabaseCreateFromPersistentStoreIgnoringRecoveryFile();
    }

    _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, 0, "_LSDatabaseCreateFromPersistentStoreIgnoringRecoveryFile", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 1929);
    v11 = 64;
    v12 = 1;
    v13 = 0;
    v15 = v14 = 0;
    if (!a4)
    {
LABEL_44:
      v17 = v15;
      if (!a3)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

LABEL_42:
    if (!v13)
    {
      v27 = v15;
      v13 = 0;
      *a4 = v15;
    }

    goto LABEL_44;
  }

  v33 = 0;
  v14 = _LSCreateEmptyStore(&v33);
  v15 = v33;
  if (!v14)
  {
    v21 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      _LSDatabaseCreateFromPersistentStoreIgnoringRecoveryFile();
    }

    v13 = 0;
    v14 = 0;
    v11 = 64;
LABEL_41:
    v12 = 1;
    if (!a4)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  v11 = 1;
LABEL_11:
  v16 = _LSServer_SelfSessionKey();
  v31 = v15;
  v13 = _LSDatabaseCreate(v9, v16, v14, &v31);
  v17 = v31;

  v34 = v13;
  if (!v13)
  {
    v19 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      _LSDatabaseCreateFromPersistentStoreIgnoringRecoveryFile();
    }

    v13 = 0;
    v12 = 0;
    v11 |= 0x20u;
LABEL_25:
    v15 = v17;
    if (!a4)
    {
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if ((a1 & 2) != 0)
  {
    v20 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v36 = v13;
      _os_log_impl(&dword_18162D000, v20, OS_LOG_TYPE_INFO, "Cleaning new database object %{public}@", buf, 0xCu);
    }

    _LSDatabaseClean(&v34);
    v12 = 0;
    v13 = v34;
    goto LABEL_25;
  }

  v12 = 0;
  if (a3)
  {
LABEL_45:
    *a3 = v11;
  }

LABEL_46:
  v28 = 0;
  v34 = 0;
  if ((v12 & 1) == 0)
  {
    CFRelease(v14);
    v28 = v34;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v13;
}

void _LSDatabaseDeleteRecoveryFile(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 getFileSystemRepresentation:&__p maxLength:1024])
  {
    if (remove(&__p, v2) && *__error() != 2)
    {
      v3 = _LSDatabaseGetLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        v4 = __error();
        _LSDatabaseDeleteRecoveryFile_cold_1(&__p, v4, &v6, v3);
      }
    }

    else
    {
      v3 = _LSDatabaseGetLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136446210;
        p_p = &__p;
        _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "Successfully removed recovery file %{public}s", &v6, 0xCu);
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

_LSDatabase *_LSDatabaseCreateSystemContentDatabaseFromPersistentStore(void *a1)
{
  v2 = [FSNode alloc];
  v3 = [__LSDefaultsGetSharedInstance() systemContentDatabaseStoreFileURL];
  v4 = [(FSNode *)v2 initWithURL:v3 flags:0 error:a1];

  if (v4 && (v5 = _LSCreateStoreWithFileContents(v4, a1)) != 0)
  {
    v6 = _LSServer_SelfSessionKey();
    v7 = _LSDatabaseCreateWithAccessContext(v4, v6, v5, 0, a1);
    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t _LSCreateStoreWithFileContents(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  v9 = 0;
  if (!v3)
  {
    v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, 0, "_LSCreateStoreWithFileContents", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 555);
    if (!a2)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
    *a2 = v9;
    goto LABEL_9;
  }

  v5 = [v3 URL];
  v6 = _CSStoreCreateWithURL();

  if (!v6)
  {
    v7 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      _LSCreateStoreWithFileContents(&v9);
    }

    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_8;
  }

LABEL_9:

  return v6;
}

_BYTE *_LSDatabaseCreateCleanForTesting(void *a1)
{
  result = _LSCreateEmptyStore(a1);
  if (result)
  {
    v3 = result;
    v4 = _CFGetEUID();
    v5 = _LSDatabaseCreate(0, v4, v3, a1);
    v6 = v5;
    CFRelease(v3);
    if (v5)
    {
      *(v5 + 32) |= 2u;
      _LSDatabaseClean(&v6);
      result = v6;
      *(v6 + 32) |= 2u;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFTypeRef _LSCreateEmptyStore(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0;
  Mutable = CSStoreCreateMutable();
  if (!Mutable)
  {
    v12 = 0;
    if (!a1)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  memset(v22, 0, sizeof(v22));
  if (_CSStoreAddTable())
  {
    LSDBHeader::reset(v22);
    if (_CSStoreWriteToHeader())
    {
      v3 = 0;
      while (1)
      {
        v4 = *(&kLSTableInfo + v3);
        if (!_CSStoreAddTable())
        {
          break;
        }

        v3 += 16;
        if (v3 == 192)
        {
          v5 = CSBindableKeyMapAddTable(Mutable, @"BindableKeyMap");
          if (v5)
          {
            _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v5, 0, "_LSCreateEmptyStore", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 595);
            v17 = v13 = 0;
          }

          else
          {
            for (i = 0; i != 448; i += 32)
            {
              v7 = *(&kLSBindingInfo + i);
              v8 = CSStringBindingStoreAddTable();
              if (v8)
              {
                v20 = @"Table";
                v21 = v7;
                v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
                v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v8, v13, "_LSCreateEmptyStore", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 601);

                goto LABEL_20;
              }
            }

            v9 = &off_1E6A1B508;
            v10 = -6;
            while (1)
            {
              if (v10 >= 8)
              {
                v11 = *v9;
                strlen(*v9);
                if (!_CSGetConstStringForCharacters())
                {
                  break;
                }
              }

              v9 += 4;
              if (++v10 == 8)
              {
                v12 = CFRetain(Mutable);
                goto LABEL_22;
              }
            }

            v18 = @"BindingClass";
            v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
            v19 = v13;
            v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
            v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10817, v14, "_LSCreateEmptyStore", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 609);
          }

LABEL_20:

          break;
        }
      }
    }
  }

  v12 = 0;
LABEL_22:
  CFRelease(Mutable);
  if (a1)
  {
LABEL_23:
    if (!v12)
    {
      v12 = 0;
      *a1 = v17;
    }
  }

LABEL_25:

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1816FB0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  CFRelease(v10);

  _Unwind_Resume(a1);
}

void _LSDatabaseClean(id *a1)
{
  v74 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  location = a1;
  v2 = *a1;
  v58 = v2;
  if (v2)
  {
    v3 = v2[5];
  }

  v4 = v2 + 6;
  if (!v2)
  {
    v4 = 0;
  }

  v5 = *(v4 + 395);
  v53 = MEMORY[0x1E69E9820];
  v54 = 3321888768;
  v55 = ___ZL16_LSDatabaseCleanPU8__strongP11_LSDatabase_block_invoke;
  v56 = &__block_descriptor_40_ea8_32c14_ZTS9LSContext_e19_v32__0I8r_v12I20_24l;
  v57 = v2;
  _CSStoreEnumerateUnits();
  v6 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "Registering CoreTypes bundle", buf, 2u);
  }

  v64 = @"ApplicationType";
  v65 = @"Hidden";
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  v7 = [(_LSDatabase *)v58 isSeeded];
  v8 = [[FSNode alloc] initWithFileSystemRepresentation:"/System/Library/CoreServices/MobileCoreTypes.bundle" flags:0 error:0];
  if (v8 && _LSFindOrRegisterBundleNode(&v58, v8, 0, v7 ^ 1 | 0x11000000u, v45, 0, 0))
  {
    v9 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _LSDatabaseClean();
    }
  }

  v10 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEFAULT, "Registering extension points", buf, 2u);
  }

  [getEXEnumeratorClass() extensionPointDefinitionEnumerator];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  obj = v50 = 0u;
  v11 = [obj countByEnumeratingWithState:&v49 objects:v63 count:16];
  if (v11)
  {
    v47 = *v50;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v50 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v49 + 1) + 8 * i);
        v14 = [v13 identifier];
        v15 = [v13 platform];
        v16 = [v13 SDKDictionary];
        v17 = [v13 url];
        v18 = [FSNode alloc];
        v48 = 0;
        v19 = [(FSNode *)v18 initWithURL:v17 flags:8 error:&v48];
        v20 = v48;
        if (!v19)
        {
          v21 = _LSDatabaseGetLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            *&buf[4] = v17;
            *&buf[12] = 2114;
            *&buf[14] = v20;
            _os_log_error_impl(&dword_18162D000, v21, OS_LOG_TYPE_ERROR, "Failed to create node for framework %{public}@: %{public}@", buf, 0x16u);
          }
        }

        v22 = _LSExtensionsLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "void _LSDatabaseClean(LSDatabaseHandle)";
          *&buf[12] = 2112;
          *&buf[14] = v13;
          _os_log_debug_impl(&dword_18162D000, v22, OS_LOG_TYPE_DEBUG, "%s Registering extension point '%@'", buf, 0x16u);
        }

        if (([__LSDefaultsGetSharedInstance() isServer] & 1) != 0 || -[FSNode canReadFromSandboxWithAuditToken:](v19, "canReadFromSandboxWithAuditToken:", 0))
        {
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"registering extension point %@ at URL %@", v14, v17, location];
          LSCrashMessage::LSCrashMessage(&v59, v23);

          v24 = _LSRegisterFrameworkExtensionPointIfNecessary(v58, 0, v14, v15, v16, v17);
          if (v24)
          {
            v25 = _LSDatabaseGetLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              *&buf[4] = v24;
              *&buf[12] = 2114;
              *&buf[14] = v17;
              _os_log_error_impl(&dword_18162D000, v25, OS_LOG_TYPE_ERROR, "Error %ld registering extension points inside framework %{public}@", buf, 0x16u);
            }
          }

          LSCrashMessage::~LSCrashMessage(&v59);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v49 objects:v63 count:16];
    }

    while (v11);
  }

  v26 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v26, OS_LOG_TYPE_DEFAULT, "Done reregistering extension points", buf, 2u);
  }

  v27 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v27, OS_LOG_TYPE_DEFAULT, "Loading handler preferences", buf, 2u);
  }

  v28 = v58;
  if (v58)
  {
    _LSDatabaseSetHeaderFlag(v58, 1, 0);
  }

  v30 = LSHandlerPref::CopyHandlers(v28);
  if (v30)
  {
    LSHandlerPref::Load(v58, v30, v29);
    if (v58)
    {
      _LSDatabaseSetHeaderFlag(v58, 1, 1);
    }

    CFRelease(v30);
  }

  v31 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v31, OS_LOG_TYPE_DEFAULT, "Registering canonical names", buf, 2u);
  }

  v32 = v58;
  v33 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v33, OS_LOG_TYPE_DEFAULT, "Registering canonical names", buf, 2u);
  }

  v34 = objc_autoreleasePoolPush();
  v35 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v35, OS_LOG_TYPE_DEFAULT, "Registering framework bundle localized strings", buf, 2u);
  }

  v36 = +[_LSStringLocalizer newFrameworkBundleLocalizer];
  v37 = v32;
  v38 = v36;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZL52_LSDatabaseRegisterCanonicalNamesFromStringLocalizerP11_LSDatabaseP18_LSStringLocalizer_block_invoke;
  v71 = &unk_1E6A1B828;
  v39 = v37;
  v72 = v39;
  v73 = &v59;
  [v38 enumerateLocalizedStringsUsingBlock:buf];
  if (v60[3])
  {
    v40 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v60[3];
      v42 = [v38 debugDescription];
      *v66 = 134218242;
      v67 = v41;
      v68 = 2114;
      v69 = v42;
      _os_log_impl(&dword_18162D000, v40, OS_LOG_TYPE_DEFAULT, "Registered %llu new canonical strings from string localizer %{public}@", v66, 0x16u);
    }
  }

  _Block_object_dispose(&v59, 8);
  objc_autoreleasePoolPop(v34);

  if (([__LSDefaultsGetSharedInstance() hasServer] & 1) == 0 && (objc_msgSend(__LSDefaultsGetSharedInstance(), "isServer") & 1) == 0)
  {
    [(_LSDatabase *)v58 setSeeded:?];
  }

  objc_storeStrong(location, v58);
  kdebug_trace();

  v43 = *MEMORY[0x1E69E9840];
}

void sub_1816FB9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, void *a36, char a37)
{
  _Block_object_dispose(&a37, 8);

  _Unwind_Resume(a1);
}

void _LSDatabaseCommit(uint64_t a1)
{
  v1 = [__LSDefaultsGetSharedInstance() databaseUpdateNotificationNameForSessionKey:*(a1 + 16)];
  v2 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    _LSDatabaseCommit_cold_1();
  }

  LaunchServices::notifyd::NotifyToken::Post(v1, v3);
}