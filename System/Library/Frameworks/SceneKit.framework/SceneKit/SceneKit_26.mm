void sub_21C12A7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, char *a45, char *a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a42)
  {
    operator delete(a42);
  }

  if (a45)
  {
    a46 = a45;
    operator delete(a45);
  }

  a45 = &a48;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&a45);
  std::__tree<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>>>::destroy(&a55, a56);
  _Unwind_Resume(a1);
}

uint64_t Skeleton::setSkeletalAnimation(uint64_t result, uint64_t a2)
{
  if (!*(result + 120))
  {
    v2 = result;
    v3 = *(result + 104);
    if (v3)
    {
      result = [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v3 propertyWithName:@"skel:animationSource" type:USKDataTypeObjectPath_weak role:{USKRoleTypeNone_weak), "setObjectPath:", a2}];
      *(v2 + 120) = a2;
    }
  }

  return result;
}

uint64_t *Skeleton::bindRigidDeformation(uint64_t *result, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = *result;
  v7 = result[1] - *result;
  if (v7)
  {
    v17 = v4;
    v18 = v5;
    v10 = result;
    v11 = 0;
    v12 = v7 >> 3;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    while (*(v6 + 8 * v11) != a2)
    {
      if (v12 == ++v11)
      {
        return result;
      }
    }

    if (v11 != -1)
    {
      v16 = 1065353216;
      v13 = [USKHelper node:a3 propertyWithName:@"primvars:skel:jointWeights" type:USKDataTypeFloatArray_weak role:USKRoleTypeNone_weak];
      [v13 setFloatArray:&v16 count:1];
      [v13 setMetadataWithKey:@"elementSize" value:{+[USKData_helper dataWithInt:](USKData_helper, "dataWithInt:", 1)}];
      [v13 setMetadataWithKey:@"interpolation" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"constant"}];
      v15 = v11;
      v14 = [USKHelper node:a3 propertyWithName:@"primvars:skel:jointIndices" type:USKDataTypeIntArray_weak role:USKRoleTypeNone_weak];
      [v14 setIntArray:&v15 count:1];
      [v14 setMetadataWithKey:@"elementSize" value:{+[USKData_helper dataWithInt:](USKData_helper, "dataWithInt:", 1)}];
      [v14 setMetadataWithKey:@"interpolation" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"constant"}];
      return Skeleton::bindToUskMesh(v10, a3, a4);
    }
  }

  return result;
}

void Skin::addMeshSkinData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6, std::vector<int>::size_type a7, uint64_t a8, int a9, _OWORD *a10)
{
  v18 = [USKHelper node:a2 propertyWithName:@"primvars:skel:jointWeights" type:USKDataTypeFloatArray_weak role:USKRoleTypeNone_weak];
  [v18 setFloatArray:a3 count:a4];
  [v18 setMetadataWithKey:@"elementSize" value:{+[USKData_helper dataWithInt:](USKData_helper, "dataWithInt:", a5)}];
  [v18 setMetadataWithKey:@"interpolation" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"vertex"}];
  memset(&v25, 0, sizeof(v25));
  std::vector<unsigned int>::reserve(&v25, a7);
  if (a9 == 2)
  {
    if (a7)
    {
      v19 = a7;
      do
      {
        v20 = *a6++;
        v26 = v20;
        v27 = &v26;
        v24 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a1 + 64, &v26)[5];
        std::vector<int>::push_back[abi:nn200100](&v25.__begin_, &v24);
        --v19;
      }

      while (v19);
    }
  }

  else if (a7)
  {
    v21 = a7;
    do
    {
      v22 = *a6;
      a6 += 2;
      v26 = v22;
      v27 = &v26;
      v24 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(a1 + 64, &v26)[5];
      std::vector<int>::push_back[abi:nn200100](&v25.__begin_, &v24);
      --v21;
    }

    while (v21);
  }

  v23 = [USKHelper node:a2 propertyWithName:@"primvars:skel:jointIndices" type:USKDataTypeIntArray_weak role:USKRoleTypeNone_weak];
  [v23 setIntArray:v25.__begin_ count:a7];
  [v23 setMetadataWithKey:@"elementSize" value:{+[USKData_helper dataWithInt:](USKData_helper, "dataWithInt:", a8)}];
  [v23 setMetadataWithKey:@"interpolation" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"vertex"}];
  Skeleton::bindToUskMesh(*(a1 + 56), a2, a10);
  if (v25.__begin_)
  {
    v25.__end_ = v25.__begin_;
    operator delete(v25.__begin_);
  }
}

void sub_21C12AD64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Skeleton::bindToUskMesh(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = [USKHelper node:a2 propertyWithName:@"primvars:skel:geomBindTransform" type:USKDataTypeDouble4x4_weak role:USKRoleTypeNone_weak];
  v7 = a3[5];
  v12[4] = a3[4];
  v12[5] = v7;
  v8 = a3[7];
  v12[6] = a3[6];
  v12[7] = v8;
  v9 = a3[1];
  v12[0] = *a3;
  v12[1] = v9;
  v10 = a3[3];
  v12[2] = a3[2];
  v12[3] = v10;
  [v6 setDouble4x4Value:v12];
  return [+[USKHelper node:propertyWithName:type:role:](USKHelper node:a2 propertyWithName:@"skel:skeleton" type:USKDataTypeObjectPath_weak role:{USKRoleTypeNone_weak), "setObjectPath:", *(a1 + 112)}];
}

void AnimationData::processSkeletonAnimation(AnimationData *this, CAAnimationGroup *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    AnimationData::processSkeletonAnimationGroup(this, a2);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35[0] = a2;
      v4 = [(CAAnimationGroup *)a2 keyTimes];
      if ([v4 count])
      {
        v5 = [(CAAnimationGroup *)a2 keyPath];
        if ([v5 length])
        {
          v6 = [v5 componentsSeparatedByString:@"."];
          if ([v6 count] == 2)
          {
            v7 = [v6 objectAtIndex:0];
            if ([v7 characterAtIndex:0] == 47)
            {
              std::string::basic_string[abi:nn200100]<0>(v33, [objc_msgSend(v7 substringFromIndex:{1), "UTF8String"}]);
              v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 32, v33);
              if ((this + 40) == v8)
              {
                __p = 0;
                v31 = 0;
                v32 = 0;
                std::vector<UITouch *>::push_back[abi:nn200100](&__p, v35);
                v35[2] = v33;
                v9 = (std::__tree<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 32, v33) + 56);
                if (v9 != &__p)
                {
                  std::vector<CAKeyframeAnimation *>::__assign_with_size[abi:nn200100]<CAKeyframeAnimation **,CAKeyframeAnimation **>(v9, __p, v31, (v31 - __p) >> 3);
                }

                if (__p)
                {
                  v31 = __p;
                  operator delete(__p);
                }
              }

              else
              {
                std::vector<UITouch *>::push_back[abi:nn200100](v8 + 56, v35);
              }

              if ([v4 count] >= 2)
              {
                [objc_msgSend(v4 objectAtIndexedSubscript:{objc_msgSend(v4, "count") - 1), "doubleValue"}];
                v11 = v10;
                [objc_msgSend(v4 objectAtIndexedSubscript:{0), "doubleValue"}];
                v13 = v11 - v12;
                if (v13 >= 0.0001)
                {
                  [v35[0] duration];
                  *(this + 3) = v14 / v13;
                  [objc_msgSend(v4 objectAtIndexedSubscript:{0), "doubleValue"}];
                  v16 = v15;
                  v17 = *(this + 3);
                  [v35[0] beginTime];
                  v19 = v18;
                  [objc_msgSend(v4 objectAtIndexedSubscript:{objc_msgSend(v4, "count") - 1), "doubleValue"}];
                  v21 = v20;
                  v22 = *(this + 3);
                  [v35[0] beginTime];
                  v23 = v19 + v16 * v17;
                  v25 = v24 + v21 * v22;
                  if (*this > v23)
                  {
                    *this = v23;
                  }

                  if (*(this + 1) < v25)
                  {
                    *(this + 1) = v25;
                  }

                  [objc_msgSend(v4 objectAtIndexedSubscript:{1), "doubleValue"}];
                  v27 = v26;
                  [objc_msgSend(v4 objectAtIndexedSubscript:{0), "doubleValue"}];
                  v29 = (v27 - v28) * *(this + 3);
                  if (v29 > 0.0001 && *(this + 2) > 0.0001)
                  {
                    *(this + 2) = v29;
                  }
                }
              }

              if (v34 < 0)
              {
                operator delete(v33[0]);
              }
            }
          }
        }
      }
    }
  }
}

void sub_21C12B140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

NSUInteger AnimationData::processSkeletonAnimationGroup(AnimationData *this, CAAnimationGroup *a2)
{
  result = [(NSArray *)[(CAAnimationGroup *)a2 animations] count];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      AnimationData::processSkeletonAnimation(this, [(NSArray *)[(CAAnimationGroup *)a2 animations] objectAtIndex:i]);
      result = [(NSArray *)[(CAAnimationGroup *)a2 animations] count];
    }
  }

  return result;
}

void *std::vector<CAKeyframeAnimation *>::__assign_with_size[abi:nn200100]<CAKeyframeAnimation **,CAKeyframeAnimation **>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<CAKeyframeAnimation *>::__vallocate[abi:nn200100](v6, v10);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<CAKeyframeAnimation *>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<UITouch *>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::vector<CAKeyframeAnimation *>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::vector<CAKeyframeAnimation *>>,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<CAKeyframeAnimation *>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::vector<CAKeyframeAnimation *>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void USDKitConverter::~USDKitConverter(USDKitConverter *this)
{
  ShapeBlending::~ShapeBlending((this + 440));
  std::__tree<char>::destroy(this + 416, *(this + 53));
  Skinning::~Skinning(this + 43);
  std::__tree<char>::destroy(this + 320, *(this + 41));
  v2 = *(this + 37);
  if (v2)
  {
    *(this + 38) = v2;
    operator delete(v2);
  }

  std::__tree<char>::destroy(this + 272, *(this + 35));
  std::__tree<char>::destroy(this + 248, *(this + 32));
  std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(this + 216, *(this + 28));
  std::__tree<std::__value_type<__C3DImage *,std::string>,std::__map_value_compare<__C3DImage *,std::__value_type<__C3DImage *,std::string>,std::less<__C3DImage *>,true>,std::allocator<std::__value_type<__C3DImage *,std::string>>>::destroy(this + 192, *(this + 25));
  std::__tree<char>::destroy(this + 168, *(this + 22));
  std::__tree<std::string>::destroy(this + 144, *(this + 19));
  std::__tree<char>::destroy(this + 120, *(this + 16));
  std::__tree<char>::destroy(this + 96, *(this + 13));
  std::__tree<std::string>::destroy(this + 64, *(this + 9));
}

uint64_t C3DMorphGetTypeID()
{
  if (C3DMorphGetTypeID_onceToken != -1)
  {
    C3DMorphGetTypeID_cold_1();
  }

  return C3DMorphGetTypeID_typeID;
}

double __C3DMorphGetTypeID_block_invoke()
{
  C3DMorphGetTypeID_typeID = _CFRuntimeRegisterClass();
  unk_281740AB8 = kC3DC3DMorphContextClassSerializable;
  unk_281740AC8 = *&off_282DC7070;
  qword_281740AB0 = _C3DMorphSearchByID;
  result = *&kC3DC3DMorphContextClassSceneLink;
  unk_281740A88 = kC3DC3DMorphContextClassSceneLink;
  qword_281740A70 = _C3DMorphCopyInstanceVariables;
  unk_281740A98 = *algn_282DC7090;
  qword_281740AA8 = qword_282DC70A0;
  qword_281740AE0 = _C3DMorphGenericSourceDidChange;
  return result;
}

uint64_t C3DMorphCreate()
{
  if (C3DMorphGetTypeID_onceToken != -1)
  {
    C3DMorphGetTypeID_cold_1();
  }

  result = C3DTypeCreateInstance_(C3DMorphGetTypeID_typeID, 192);
  *(result + 192) = 1;
  *(result + 184) = 0x13C23D70ALL;
  return result;
}

uint64_t C3DMorphSetCalculationMode(uint64_t result, int a2)
{
  if (*(result + 64) != a2)
  {
    *(result + 64) = a2;
    ++*(result + 188);
    result = *(result + 200);
    if (result)
    {
      return C3DMorpherResetIncrementalCount(result);
    }
  }

  return result;
}

__n128 C3DMorpherGetExtraTargetInfo@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(a1 + 88);
  *(a2 + 8) = *(a1 + 96);
  *(a2 + 24) = *(a1 + 112);
  *(a2 + 32) = *(a1 + 120);
  *(a2 + 40) = *(a1 + 128);
  *(a2 + 48) = *(a1 + 136);
  *(a2 + 56) = *(a1 + 144);
  result = *(a1 + 152);
  *(a2 + 64) = result;
  return result;
}

void C3DMorphSetTargetsWithExtraTargetInfo(uint64_t a1, CFTypeRef cf, size_t __n, const void **a4)
{
  v5 = __n;
  v7 = *(a1 + 88);
  v8 = *(a1 + 72);
  if (v8 != cf)
  {
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 72) = 0;
    }

    if (cf)
    {
      v10 = CFRetain(cf);
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 72) = v10;
  }

  ++*(a1 + 188);
  *(a1 + 193) = v5;
  v11 = *a4;
  v12 = *(a4 + 1);
  *(a1 + 88) = *a4;
  if (v12)
  {
    v13 = *(a1 + 92);
    *(a1 + 92) = v12;
    v14 = (4 * v11);
    if (v11 != v7)
    {
      v15 = *(a1 + 96);
      if (v11)
      {
        v16 = malloc_type_realloc(v15, (4 * v11), 0xE20B048BuLL);
      }

      else
      {
        free(v15);
        v16 = 0;
      }

      *(a1 + 96) = v16;
    }

    if (*a4)
    {
      memcpy(*(a1 + 96), a4[1], v14);
    }

    v17 = *(a4 + 1);
    v18 = (4 * v17);
    if (v17 != v13)
    {
      v19 = *(a1 + 104);
      if (v17)
      {
        v20 = malloc_type_realloc(v19, (4 * v17), 0x63411EF3uLL);
      }

      else
      {
        free(v19);
        v20 = 0;
      }

      *(a1 + 104) = v20;
      v13 = *(a4 + 1);
    }

    if (v13)
    {
      memcpy(*(a1 + 104), a4[2], v18);
    }
  }

  else
  {
    *(a1 + 92) = 0;
    free(*(a1 + 96));
    *(a1 + 96) = 0;
    free(*(a1 + 104));
    *(a1 + 104) = 0;
  }

  v21 = *(a1 + 112);
  v22 = *(a4 + 6);
  *(a1 + 112) = v22;
  if (v22)
  {
    v23 = (4 * v22);
    if (v22 == v21 || (*(a1 + 120) = malloc_type_realloc(*(a1 + 120), (4 * v22), 0x34ED3448uLL), *(a4 + 6)))
    {
      memcpy(*(a1 + 120), a4[4], v23);
    }

    v24 = *(a1 + 128);
    v25 = *(a4 + 10);
    *(a1 + 128) = v25;
    v26 = (4 * v25);
    if (v25 != v24)
    {
      v27 = *(a1 + 136);
      if (v25)
      {
        v28 = malloc_type_realloc(v27, (4 * v25), 0xFBB77C87uLL);
      }

      else
      {
        free(v27);
        v28 = 0;
      }

      *(a1 + 136) = v28;
      v24 = *(a4 + 10);
    }

    if (v24)
    {
      memcpy(*(a1 + 136), a4[6], v26);
    }

    v29 = *(a4 + 14);
    if (v29)
    {
      v30 = *(a1 + 144);
      *(a1 + 144) = v29;
      v31 = *(a4 + 6);
      v32 = (4 * v31);
      if (v31 != v21)
      {
        v33 = *(a1 + 152);
        if (v31)
        {
          v34 = malloc_type_realloc(v33, (4 * v31), 0x43A85EADuLL);
        }

        else
        {
          free(v33);
          v34 = 0;
        }

        *(a1 + 152) = v34;
      }

      if (*a4)
      {
        memcpy(*(a1 + 152), a4[8], v32);
      }

      v35 = *(a4 + 14);
      v36 = (4 * v35);
      if (v35 != v30)
      {
        v37 = *(a1 + 160);
        if (*(a4 + 1))
        {
          v38 = malloc_type_realloc(v37, v36, 0xFF05193EuLL);
        }

        else
        {
          free(v37);
          v38 = 0;
        }

        *(a1 + 160) = v38;
        v30 = *(a4 + 14);
      }

      if (v30)
      {
        memcpy(*(a1 + 160), a4[9], v36);
      }
    }

    else
    {
      *(a1 + 144) = 0;
      free(*(a1 + 152));
      *(a1 + 152) = 0;
      free(*(a1 + 160));
      *(a1 + 160) = 0;
    }
  }

  else
  {
    *(a1 + 128) = 0;
    *(a1 + 144) = 0;
    free(*(a1 + 120));
    *(a1 + 120) = 0;
    free(*(a1 + 136));
    *(a1 + 136) = 0;
    free(*(a1 + 152));
    *(a1 + 152) = 0;
    free(*(a1 + 160));
    *(a1 + 160) = 0;
    if (!v12)
    {
      free(*(a1 + 168));
      *(a1 + 168) = 0;
    }
  }

  v39 = *(a1 + 80);
  if (v39)
  {
    *(a1 + 80) = 0;
    _setupWeights(a1, v39);
    C3DGenericSourceSetListener(v39, 0);
    CFRelease(v39);
  }

  v40 = *(a1 + 176);
  if (v40)
  {
    CFRelease(v40);
    *(a1 + 176) = 0;
  }
}

void _setupWeights(uint64_t a1, void *Accessor)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 4 * v2);
    CFDataSetLength(Mutable, 4 * v2);
    if (Accessor)
    {
      Accessor = C3DGenericSourceGetAccessor(Accessor);
    }

    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    for (i = 0; i != v2; ++i)
    {
      v8 = 0;
      if (Accessor && C3DSourceAccessorGetCount(Accessor) > i)
      {
        v8 = *C3DSourceAccessorGetValuePtrAtIndex(Accessor, i);
      }

      *&MutableBytePtr[4 * i] = v8;
    }

    v9 = C3DSourceAccessorCreate(1, 1, v2, 0, 0);
    v10 = C3DGenericSourceCreateMutable(v9, 0);
    C3DGenericSourceSetData(v10, Mutable);
    C3DSourceAccessorSetSource(v9, v10);
    CFRelease(v9);
    CFRelease(Mutable);
    C3DMorphSetWeightsSource(a1, v10, v11);

    CFRelease(v10);
  }
}

void C3DMorphSetTargets(uint64_t a1, CFArrayRef theArray, size_t a3)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  memset(v11, 0, sizeof(v11));
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v7 = Count;
  C3DMorphSetTargetsWithExtraTargetInfo(a1, theArray, a3, &v7);
}

float C3DMorphSetWeightsSource(uint64_t a1, CFTypeRef a2, float result)
{
  v4 = *(a1 + 80);
  if (v4 == a2)
  {
    return result;
  }

  if (!v4)
  {
    if (!a2)
    {
      v6 = 0;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  C3DGenericSourceSetListener(v4, 0);
  v6 = *(a1 + 80);
  if (v6 != a2)
  {
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 80) = 0;
    }

    if (!a2)
    {
      v6 = 0;
LABEL_11:
      *(a1 + 80) = v6;
      goto LABEL_12;
    }

LABEL_10:
    v6 = CFRetain(a2);
    goto LABEL_11;
  }

LABEL_12:
  C3DGenericSourceSetListener(v6, a1);

  return __morphWeightsHaveChanged(a1, v7);
}

float __morphWeightsHaveChanged(uint64_t a1, float result)
{
  v43 = *MEMORY[0x277D85DE8];
  ++*(a1 + 188);
  if (*(a1 + 168))
  {
    v3 = *(a1 + 80);
    if (!v3)
    {
      if (*(a1 + 72))
      {
        _setupWeights(a1, 0);
        v3 = *(a1 + 80);
      }

      else
      {
        v3 = 0;
      }
    }

    Content = C3DGenericSourceGetContent(v3);
    v6 = v5;
    if (*(a1 + 88) == v5)
    {
      v7 = Content;
      v8 = *(a1 + 112);
      v9 = *(a1 + 92) + v8 + v5 + *(a1 + 144);
      v34 = 0;
      *buf = 0;
      if (v5)
      {
        v10 = 0;
        v11 = 4 * v5;
        do
        {
          if (*(a1 + 92))
          {
            v12 = *(*(a1 + 96) + v10);
          }

          else
          {
            v12 = 0;
          }

          __evaluateRuntimeWeightsForInBetween(*(a1 + 168), buf, &v34, v12, *(a1 + 104), v9, *&v7[v10]);
          v10 += 4;
        }

        while (v11 != v10);
        v8 = *(a1 + 112);
      }

      v33 = 0;
      if (v8)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = *(*(a1 + 120) + 4 * v13);
          if (v15)
          {
            v16 = 3.4028e38;
            v17 = *(*(a1 + 120) + 4 * v13);
            v18 = v14;
            do
            {
              v19 = *(*(a1 + 136) + 4 * v18++);
              v16 = fminf(v16, *&v7[4 * v19]);
              --v17;
            }

            while (v17);
            v14 += v15;
          }

          else
          {
            v16 = 3.4028e38;
          }

          if (*(a1 + 144))
          {
            v20 = *(*(a1 + 152) + 4 * v13);
          }

          else
          {
            v20 = 0;
          }

          __evaluateRuntimeWeightsForInBetween(*(a1 + 168), buf, &v33, v20, *(a1 + 160), v9, v16);
          ++v13;
        }

        while (v13 < *(a1 + 112));
      }

      if (*buf != v9)
      {
        v21 = scn_default_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          __morphWeightsHaveChanged_cold_1(v21, v22, v23, v24, v25, v26, v27, v28);
        }
      }
    }

    else
    {
      v29 = scn_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = *(a1 + 88);
        v31 = *(a1 + 92);
        v32 = *(a1 + 112);
        *buf = 67109888;
        v36 = v6;
        v37 = 1024;
        v38 = v30;
        v39 = 1024;
        v40 = v31;
        v41 = 1024;
        v42 = v32;
        _os_log_error_impl(&dword_21BEF7000, v29, OS_LOG_TYPE_ERROR, "Error: Morpher has %d targets weights, but has %d main targets (note: there are %d in-betweens and %d correctives)", buf, 0x1Au);
      }
    }
  }

  return result;
}

uint64_t C3DMorphGetWeightsSource(uint64_t a1)
{
  result = *(a1 + 80);
  if (!result)
  {
    if (*(a1 + 72))
    {
      _setupWeights(a1, 0);
      return *(a1 + 80);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void C3DMorphUpdateCPUMeshIncrementally(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v110 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 80);
  if (!v6)
  {
    return;
  }

  v88[0] = a2;
  v10 = a1;
  Accessor = C3DGenericSourceGetAccessor(v6);
  Count = C3DSourceAccessorGetCount(Accessor);
  v13 = *(v10 + 184);
  ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(Accessor, 0);
  v88[1] = v88;
  MEMORY[0x28223BE20](ValuePtrAtIndex);
  v97 = (v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v96 = &v88[-4 * Count - 8];
  MEMORY[0x28223BE20](v17);
  v95 = &v88[-4 * Count - 8];
  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a3, 0, 0, 1);
  v89 = a3;
  v91 = C3DMeshGetSourceWithSemanticAtIndex(a3, 1, 0, 1);
  MEMORY[0x28223BE20](v91);
  v92 = &v88[-8 * Count - 16];
  v109[0] = 0;
  v90 = SourceWithSemanticAtIndex;
  v19 = C3DMeshSourceGetCount(SourceWithSemanticAtIndex);
  v98 = 0;
  v109[1] = v19;
  v20 = 1.0;
  v21 = 1.0;
  if (a5)
  {
    *v97 = -1082130432;
    C3DMeshSourceGetContent(v90, &v103);
    v22 = v104;
    v23 = v96;
    *v96 = v103;
    v23[1] = v22;
    if (v91)
    {
      C3DMeshSourceGetContent(v91, &v103);
      v24 = v104;
      v25 = v95;
      *v95 = v103;
      v25[1] = v24;
    }

    else
    {
      v26 = v95;
      *v95 = 0u;
      v26[1] = 0u;
    }

    v27 = v10;
    if (*(v10 + 193) == 1)
    {
      v28 = v92;
      *v92 = v109;
      v28[1] = 8;
      v28[2] = 1;
      v28[3] = 0;
      *(v28 + 8) = 67239936;
      *(v28 + 44) = 0;
      *(v28 + 36) = 0;
      *(v28 + 13) = 0;
      v28[7] = 1;
    }

    if (Count < 1)
    {
      v29 = 0;
      v21 = 0.0;
      v98 = 1;
      goto LABEL_18;
    }

    bzero(a4, 4 * Count);
    v21 = 0.0;
    v98 = 1;
  }

  v29 = Count > 0;
  v27 = v10;
  if (!*(v10 + 64) && Count >= 1)
  {
    v30 = ValuePtrAtIndex;
    v31 = a4;
    v32 = Count;
    do
    {
      v33 = *v30;
      v30 += 4;
      v34 = v33;
      v35 = *v31++;
      v36 = vabds_f32(v34, v35);
      v37 = v20 - v34;
      v38 = v21 - v35;
      if (v36 > v13)
      {
        v21 = v38;
        v20 = v37;
      }

      --v32;
    }

    while (v32);
  }

LABEL_18:
  if (vabds_f32(v20, v21) <= 0.00000011921)
  {
    v47 = 1;
    v50 = 1;
    if (!v29)
    {
      goto LABEL_42;
    }

    goto LABEL_27;
  }

  v39 = v27;
  v40 = v20 - v21;
  v41 = v88[0];
  v42 = C3DMeshGetSourceWithSemanticAtIndex(v88[0], 0, 0, 1);
  v43 = C3DMeshGetSourceWithSemanticAtIndex(v41, 1, 0, 1);
  v44 = v98;
  *&v97[v98] = v40;
  v45 = &v96[2 * v44];
  C3DMeshSourceGetContent(v42, &v103);
  v46 = v104;
  *v45 = v103;
  v45[1] = v46;
  v47 = v45[1].u8[7] == 1;
  v48 = &v95[2 * v44];
  if (v43)
  {
    C3DMeshSourceGetContent(v43, &v103);
    v49 = v104;
    *v48 = v103;
    v48[1] = v49;
  }

  else
  {
    *v48 = 0u;
    v48[1] = 0u;
  }

  v50 = v48[1].u8[7] == 1;
  v27 = v39;
  if (*(v39 + 193) == 1)
  {
    v51 = &v92[8 * v98];
    *v51 = v109;
    v51[1] = 8;
    v51[2] = 1;
    v51[3] = 0;
    *(v51 + 8) = 67239936;
    *(v51 + 44) = 0;
    *(v51 + 36) = 0;
    *(v51 + 13) = 0;
    v51[7] = 1;
  }

  ++v98;
  if (v29)
  {
LABEL_27:
    v52 = 0;
    v94 = ValuePtrAtIndex;
    v93 = Count;
    do
    {
      v53 = *&ValuePtrAtIndex[4 * v52];
      v54 = *(a4 + v52);
      if (vabds_f32(v53, v54) > v13)
      {
        v55 = v47;
        v56 = v50;
        v57 = a4;
        v58 = v53 - v54;
        v59 = v27;
        ValueAtIndex = CFArrayGetValueAtIndex(*(v27 + 72), v52);
        Mesh = C3DGeometryGetMesh(ValueAtIndex);
        v62 = C3DMeshGetSourceWithSemanticAtIndex(Mesh, 0, 0, 1);
        v63 = C3DMeshGetSourceWithSemanticAtIndex(Mesh, 1, 0, 1);
        v64 = v98;
        *&v97[v98] = v58;
        v65 = &v96[2 * v64];
        C3DMeshSourceGetContent(v62, &v103);
        v66 = v104;
        *v65 = v103;
        v65[1] = v66;
        v67 = v65[1].u8[7] == 1;
        v68 = &v95[2 * v64];
        if (v63)
        {
          C3DMeshSourceGetContent(v63, &v103);
          v69 = v104;
          *v68 = v103;
          v68[1] = v69;
        }

        else
        {
          *v68 = 0u;
          v68[1] = 0u;
        }

        v70 = v56;
        v71 = v68[1].u8[7] == 1;
        v27 = v59;
        if (*(v59 + 193) == 1)
        {
          v72 = v59;
          ElementsCount = C3DMeshGetElementsCount(Mesh);
          v74 = &v92[8 * v98];
          if (ElementsCount < 1)
          {
            *v74 = v109;
            v74[1] = 8;
            v74[2] = 1;
            v74[3] = 0;
            *(v74 + 8) = 67239936;
            *(v74 + 44) = 0;
            *(v74 + 36) = 0;
            *(v74 + 13) = 0;
            v74[7] = 1;
          }

          else
          {
            ElementAtIndex = C3DMeshGetElementAtIndex(Mesh, 0, 1);
            if (!ElementAtIndex)
            {
              v76 = scn_default_log();
              if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
              {
                C3DMorphUpdateCPUMeshIncrementally_cold_1(v107, &v108, v76);
              }
            }

            C3DMeshElementGetContent(ElementAtIndex, 0, &v103);
            v77 = v104;
            *v74 = v103;
            *(v74 + 1) = v77;
            v78 = v106;
            *(v74 + 2) = v105;
            *(v74 + 3) = v78;
          }

          v27 = v72;
        }

        v47 = v55 & v67;
        v50 = v70 & v71;
        ++v98;
        a4 = v57;
        Count = v93;
        ValuePtrAtIndex = v94;
      }

      ++v52;
    }

    while (Count != v52);
  }

LABEL_42:
  v79 = v27;
  if (*(v27 + 193))
  {
    v103 = 0u;
    v104 = 0u;
    C3DMeshSourceGetContent(v90, &v103);
    v101 = v103;
    v102 = v104;
    if (((v104.u8[7] == 1) & v47) == 1)
    {
      __blendsparse_dst_float_src_float(&v101, v96, v97, v92, v98, *v103.i64, *v104.i64, v80);
    }

    else
    {
      __blendsparse_dst_float3_src_generic(&v101, v96, v97, v92, v98, v103);
    }

    v82 = v79;
    if (*(v79 + 192) != 1)
    {
      goto LABEL_62;
    }

    if (!v91)
    {
      goto LABEL_62;
    }

    MorphableSourceMask = C3DMeshGetMorphableSourceMask(v88[0]);
    v82 = v79;
    if ((MorphableSourceMask & 2) == 0)
    {
      goto LABEL_62;
    }

    v101 = 0u;
    v102 = 0u;
    C3DMeshSourceGetContent(v91, &v101);
    v99 = v101;
    v100 = v102;
    if (((v102.u8[7] == 1) & v50) == 1)
    {
      __blendsparse_dst_float_src_float(&v99, v95, v97, v92, v98, *v101.i64, *v102.i64, v84);
    }

    else
    {
      __blendsparse_dst_float3_src_generic(&v99, v95, v97, v92, v98, v101);
    }
  }

  else
  {
    v103 = 0u;
    v104 = 0u;
    C3DMeshSourceGetContent(v90, &v103);
    v101 = v103;
    v102 = v104;
    if (v47)
    {
      __blend_dst_float_src_float(&v101, v96, v97, v98, *v103.i64);
    }

    else
    {
      __blend_dst_float3_src_generic(&v101, v96, v97, v98, *v103.i64, v104, v81);
    }

    v82 = v79;
    if (*(v79 + 192) != 1)
    {
      goto LABEL_62;
    }

    if (!v91)
    {
      goto LABEL_62;
    }

    v85 = C3DMeshGetMorphableSourceMask(v88[0]);
    v82 = v79;
    if ((v85 & 2) == 0)
    {
      goto LABEL_62;
    }

    v101 = 0u;
    v102 = 0u;
    C3DMeshSourceGetContent(v91, &v101);
    v99 = v101;
    v100 = v102;
    if (v50)
    {
      __blend_dst_float_src_float(&v99, v95, v97, v98, *v101.i64);
    }

    else
    {
      __blend_dst_float3_src_generic(&v99, v95, v97, v98, *v101.i64, v102, v86);
    }
  }

  v82 = v79;
LABEL_62:
  v87 = v89;
  if ((*(v82 + 192) & 1) == 0)
  {
    C3DMeshUnifyNormals(v89, v89, 0, 0);
  }

  C3DMeshResetBoundingVolumes(v87);
}

void __blendsparse_dst_float_src_float(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, __n128 i)
{
  v77 = *MEMORY[0x277D85DE8];
  if (*(a1 + 23) != 1)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      __blendsparse_dst_float_src_float_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  if (*(a1 + 22) == 4 * *(a1 + 24))
  {
    if (a5 >= 1)
    {
      v19 = 0;
      do
      {
        v20 = (a2 + 32 * v19);
        v21 = *v20;
        v22 = *(v20 + 22);
        i.n128_u32[0] = *(a3 + 4 * v19);
        v23 = (a4 + (v19 << 6));
        v24 = *(v23 + 4);
        v25 = *(v23 + 20);
        v26 = *(v23 + 36);
        v74 = *v23;
        v75 = v25;
        v76[0] = v26;
        *(v76 + 12) = v23[3];
        if (v24)
        {
          v27 = 0;
          v28 = 0;
          v67 = vdupq_lane_s32(i.n128_u64[0], 0);
          v68 = i;
          do
          {
            v73 = 0;
            v69 = v74;
            v70 = v24;
            v71 = v75;
            v72[0] = v76[0];
            *(v72 + 12) = *(v76 + 12);
            C3DIndicesContentGetVertexIndicesForLinePrimitiveAtIndex_0(&v69, v27, &v73 + 1, &v73);
            v29 = v73 - HIDWORD(v73);
            v30 = *(a1 + 24);
            v31 = (v73 - HIDWORD(v73)) * v30;
            v32 = (*a1 + HIDWORD(v73) * *(a1 + 22));
            v33 = (v21 + v28 * v22);
            v34 = (-HIDWORD(v73) & 3) * v30;
            v35 = v31 - v34;
            if (v31 <= v34)
            {
              v40 = 0;
              i = v68;
            }

            else
            {
              v36 = v34;
              for (i = v68; v36; --v36)
              {
                v37 = *v33++;
                v32->f32[0] = v32->f32[0] + (v37 * v68.n128_f32[0]);
                v32 = (v32 + 4);
              }

              if (v35 >= 4)
              {
                v38 = v35 >> 2;
                do
                {
                  v39 = *v33;
                  v33 += 4;
                  *v32 = vmlaq_f32(*v32, v67, v39);
                  ++v32;
                  --v38;
                }

                while (v38);
              }

              v40 = (v35 & 0xFFFFFFFC) + v34;
            }

            for (j = v31 - v40; j; --j)
            {
              v42 = *v33++;
              v32->f32[0] = v32->f32[0] + (v42 * i.n128_f32[0]);
              v32 = (v32 + 4);
            }

            v28 += v29;
            ++v27;
          }

          while (v27 != v24);
        }

        ++v19;
      }

      while (v19 != a5);
    }
  }

  else if (a5 >= 1)
  {
    v43 = 0;
    do
    {
      v44 = (a2 + 32 * v43);
      v45 = *v44;
      v46 = *(v44 + 22);
      v47 = *(a3 + 4 * v43);
      v48 = (a4 + (v43 << 6));
      v49 = *(v48 + 4);
      v50 = *(v48 + 20);
      v51 = *(v48 + 36);
      v74 = *v48;
      v75 = v50;
      v76[0] = v51;
      *(v76 + 12) = v48[3];
      if (v49)
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v73 = 0;
          v69 = v74;
          v70 = v49;
          v71 = v75;
          v72[0] = v76[0];
          *(v72 + 12) = *(v76 + 12);
          C3DIndicesContentGetVertexIndicesForLinePrimitiveAtIndex_0(&v69, v52, &v73 + 1, &v73);
          v55 = v73;
          v54 = HIDWORD(v73);
          if (HIDWORD(v73) < v73)
          {
            v56 = *a1;
            v57 = *(a1 + 22);
            v58 = *(a1 + 24);
            v59 = HIDWORD(v73) * v57;
            v60 = (v45 + v46 * v53);
            do
            {
              if (v58)
              {
                v61 = (v56 + v59);
                v62 = v60;
                v63 = v58;
                do
                {
                  v64 = *v62++;
                  *v61 = *v61 + (v64 * v47);
                  ++v61;
                  --v63;
                }

                while (v63);
              }

              ++v53;
              ++v54;
              v59 += v57;
              v60 = (v60 + v46);
            }

            while (v55 != v54);
          }

          ++v52;
        }

        while (v52 != v49);
      }

      ++v43;
    }

    while (v43 != a5);
  }
}

void __blendsparse_dst_float3_src_generic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float32x4_t a6)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a5 >= 1)
  {
    v7 = 0;
    do
    {
      v8 = (a2 + 32 * v7);
      v27 = v7;
      v28 = *v8;
      v9 = *(v8 + 20);
      v10 = *(v8 + 22);
      a6.i32[0] = *(a3 + 4 * v7);
      v11 = (a4 + (v7 << 6));
      v35 = *v11;
      v12 = *(v11 + 4);
      v13 = *(v11 + 36);
      v36 = *(v11 + 20);
      v37[0] = v13;
      *(v37 + 12) = v11[3];
      if (v12)
      {
        v14 = 0;
        v15 = 0;
        v29 = vdupq_lane_s32(*a6.f32, 0);
        do
        {
          v34 = 0;
          v30 = v35;
          v31 = v12;
          v32 = v36;
          v33[0] = v37[0];
          *(v33 + 12) = *(v37 + 12);
          C3DIndicesContentGetVertexIndicesForLinePrimitiveAtIndex_0(&v30, v14, &v34 + 1, &v34);
          v18 = v34;
          v19 = HIDWORD(v34);
          if (HIDWORD(v34) < v34)
          {
            v20 = (v28 + v10 * v15);
            do
            {
              ++v15;
              *a6.i64 = C3DConvertFloatingTypeToFloat4(v9, v20, a6, v16.f32[0], v17);
              v21 = *a1 + v19 * *(a1 + 22);
              v22.i64[0] = *v21;
              v22.i64[1] = *(v21 + 8);
              v17 = v29.f32[0];
              v16 = vmlaq_f32(v22, v29, a6);
              *v21 = v16.i64[0];
              *(v21 + 8) = v16.i32[2];
              ++v19;
              v20 = (v20 + v10);
            }

            while (v18 != v19);
          }

          ++v14;
        }

        while (v14 != v12);
      }

      v7 = v27 + 1;
    }

    while (v27 + 1 != a5);
  }
}

void __blend_dst_float_src_float(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if (*(a1 + 23) != 1)
  {
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __blendsparse_dst_float_src_float_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v17 = *(a1 + 16);
  v18 = *(a1 + 22);
  v19 = *(a1 + 24);
  if (v18 == 4 * v19)
  {
    if (a4 >= 1)
    {
      v20 = 0;
      v21 = ((3 * v17) >> 2) & 0xFFFFFFFFFFFFFFFLL;
      v22 = (3 * v17) >> 2;
      do
      {
        v23 = a2 + 32 * v20;
        v24 = *v23;
        v25 = *(v23 + 22);
        LODWORD(a5) = *(a3 + 4 * v20);
        if (v25 == 4 * *(v23 + 24))
        {
          v26 = *a1;
          if (v17 >= 2)
          {
            v27 = vdupq_lane_s32(*&a5, 0);
            v28 = *v23;
            v29 = ((3 * v17) >> 2) & 0xFFFFFFFFFFFFFFFLL;
            do
            {
              v30 = *v28++;
              *v26 = vmlaq_f32(*v26, v27, v30);
              ++v26;
              --v29;
            }

            while (v29);
            v26 = *a1;
          }

          if (3 * v17 > 4 * v21)
          {
            f32 = v26[v22].f32;
            v32 = v24[v22].f32;
            v33 = 3 * v17 - 4 * v21;
            do
            {
              v34 = *v32++;
              *f32 = *f32 + (v34 * *&a5);
              ++f32;
              --v33;
            }

            while (v33);
          }
        }

        else if (v17)
        {
          v35 = 0;
          v36 = *a1;
          v37 = *(a1 + 22);
          v38 = *(a1 + 24);
          do
          {
            v39 = v24;
            v40 = v36;
            v41 = v38;
            if (v38)
            {
              do
              {
                v42 = *v39++;
                *v40 = *v40 + (v42 * *&a5);
                ++v40;
                --v41;
              }

              while (v41);
            }

            ++v35;
            v36 = (v36 + v37);
            v24 = (v24 + v25);
          }

          while (v35 != v17);
        }

        ++v20;
      }

      while (v20 != a4);
    }
  }

  else if (a4 >= 1)
  {
    v43 = 0;
    do
    {
      if (v17)
      {
        v44 = 0;
        v45 = a2 + 32 * v43;
        v46 = *v45;
        v47 = *(a3 + 4 * v43);
        v48 = *(v45 + 22);
        v49 = *a1;
        do
        {
          v50 = v46;
          v51 = v49;
          v52 = v19;
          if (v19)
          {
            do
            {
              v53 = *v50++;
              *v51 = *v51 + (v53 * v47);
              ++v51;
              --v52;
            }

            while (v52);
          }

          ++v44;
          v49 = (v49 + v18);
          v46 = (v46 + v48);
        }

        while (v44 != v17);
      }

      ++v43;
    }

    while (v43 != a4);
  }
}

void __blend_dst_float3_src_generic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, float32x4_t a6, float a7)
{
  if (*(a1 + 23) != 1)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      __blendsparse_dst_float_src_float_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  if (a4 >= 1)
  {
    v19 = 0;
    v20 = *(a1 + 16);
    do
    {
      if (v20)
      {
        v21 = 0;
        v22 = a2 + 32 * v19;
        v23 = *v22;
        v24 = (a3 + 4 * v19);
        v25 = *(v22 + 22);
        v26 = *(v22 + 20);
        v27 = vld1q_dup_f32(v24);
        v30 = v27;
        do
        {
          *v27.i64 = C3DConvertFloatingTypeToFloat4(v26, v23, v27, a6.f32[0], a7);
          v28 = *a1 + v21 * *(a1 + 22);
          v29.i64[0] = *v28;
          v29.i64[1] = *(v28 + 8);
          a7 = v30.f32[0];
          a6 = vmlaq_f32(v29, v30, v27);
          *v28 = a6.i64[0];
          *(v28 + 8) = a6.i32[2];
          ++v21;
          v23 = (v23 + v25);
        }

        while (v20 != v21);
      }

      ++v19;
    }

    while (v19 != a4);
  }
}

__CFArray *C3DMorphCopyMainTargets(uint64_t a1)
{
  if (*(a1 + 92))
  {
    Mutable = CFArrayCreateMutable(0, *(a1 + 88), MEMORY[0x277CBF128]);
    if (*(a1 + 88))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v3 += *(*(a1 + 96) + 4 * v4);
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v3 - 1);
        CFArrayAppendValue(Mutable, ValueAtIndex);
        ++v4;
      }

      while (v4 < *(a1 + 88));
    }

    return Mutable;
  }

  if (*(a1 + 112))
  {
    Mutable = CFArrayCreateMutable(0, *(a1 + 88), MEMORY[0x277CBF128]);
    if (*(a1 + 88))
    {
      v6 = 0;
      do
      {
        v7 = CFArrayGetValueAtIndex(*(a1 + 72), v6);
        CFArrayAppendValue(Mutable, v7);
        ++v6;
      }

      while (v6 < *(a1 + 88));
    }

    return Mutable;
  }

  v8 = *(a1 + 72);
  if (!v8)
  {
    return 0;
  }

  return CFRetain(v8);
}

uint64_t C3DMorphGetWeightCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 80);
  if (!v10)
  {
    if (!*(a1 + 72) || (_setupWeights(a1, 0), (v10 = *(a1 + 80)) == 0))
    {
      v11 = scn_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        C3DKeyframedAnimationCopy_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
      }

      v10 = 0;
    }
  }

  result = C3DGenericSourceGetAccessor(v10);
  if (result)
  {
    return C3DSourceAccessorGetCount(result);
  }

  return result;
}

float C3DMorphGetWeightAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 80);
  if (!v12)
  {
    if (!*(a1 + 72) || (_setupWeights(a1, 0), (v12 = *(a1 + 80)) == 0))
    {
      v13 = scn_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        C3DKeyframedAnimationCopy_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
      }

      v12 = 0;
    }
  }

  Accessor = C3DGenericSourceGetAccessor(v12);
  v22 = 0.0;
  if (C3DSourceAccessorGetCount(Accessor) > a2)
  {
    ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(Accessor, a2);
    if (ValuePtrAtIndex)
    {
      return *ValuePtrAtIndex;
    }
  }

  return v22;
}

void C3DMorphSetWeightAtIndex(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 80);
  if (!v14)
  {
    if (!*(a1 + 72) || (_setupWeights(a1, 0), (v14 = *(a1 + 80)) == 0) && (!*(a1 + 72) || (_setupWeights(a1, 0), (v14 = *(a1 + 80)) == 0)))
    {
      v15 = scn_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        C3DKeyframedAnimationCopy_cold_1(v15, v16, v17, v18, v19, v20, v21, v22);
      }

      v14 = 0;
    }
  }

  Accessor = C3DGenericSourceGetAccessor(v14);
  if (C3DSourceAccessorGetCount(Accessor) > a2)
  {
    MutableValuePtrAtIndex = C3DSourceAccessorGetMutableValuePtrAtIndex(Accessor, a2);
    if (MutableValuePtrAtIndex)
    {
      v25 = *MutableValuePtrAtIndex;
      if (*MutableValuePtrAtIndex != a3)
      {
        *MutableValuePtrAtIndex = a3;
        __morphWeightsHaveChanged(a1, v25);
      }
    }
  }
}

uint64_t C3DMorphCreateCopy(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DMorphCreate();
  *(v10 + 64) = *(a1 + 64);
  *(v10 + 184) = *(a1 + 184);
  *(v10 + 192) = *(a1 + 192);
  v11 = *(a1 + 80);
  if (v11)
  {
    DeepCopy = C3DGenericSourceCreateDeepCopy(v11);
    C3DMorphSetWeightsSource(v10, DeepCopy, v13);
    if (DeepCopy)
    {
      CFRelease(DeepCopy);
    }
  }

  v14 = *(a1 + 72);
  if (v14)
  {
    *(v10 + 72) = CFArrayCreateMutableCopy(0, 0, v14);
  }

  v15 = *(a1 + 88);
  *(v10 + 88) = v15;
  *(v10 + 112) = *(a1 + 112);
  *(v10 + 128) = *(a1 + 128);
  *(v10 + 144) = *(a1 + 144);
  if (*(a1 + 96))
  {
    v16 = 4 * v15;
    v17 = malloc_type_malloc(v16, 0xB9A3FB46uLL);
    *(v10 + 96) = v17;
    memcpy(v17, *(a1 + 96), v16);
  }

  if (*(a1 + 104))
  {
    v18 = 4 * *(a1 + 92);
    v19 = malloc_type_malloc(v18, 0x84A5E6B0uLL);
    *(v10 + 104) = v19;
    memcpy(v19, *(a1 + 104), v18);
  }

  if (*(a1 + 120))
  {
    v20 = 4 * *(a1 + 112);
    v21 = malloc_type_malloc(v20, 0x733211C5uLL);
    *(v10 + 120) = v21;
    memcpy(v21, *(a1 + 120), v20);
  }

  if (*(a1 + 136))
  {
    v22 = 4 * *(a1 + 128);
    v23 = malloc_type_malloc(v22, 0xB7DDFAEBuLL);
    *(v10 + 136) = v23;
    memcpy(v23, *(a1 + 136), v22);
  }

  if (*(a1 + 152))
  {
    v24 = 4 * *(a1 + 112);
    v25 = malloc_type_malloc(v24, 0x6BD0CE34uLL);
    *(v10 + 152) = v25;
    memcpy(v25, *(a1 + 152), v24);
  }

  if (*(a1 + 160))
  {
    v26 = 4 * *(a1 + 144);
    v27 = malloc_type_malloc(v26, 0xCD358E9uLL);
    *(v10 + 160) = v27;
    memcpy(v27, *(a1 + 160), v26);
  }

  if (*(a1 + 168))
  {
    v28 = 4 * (*(a1 + 112) + *(a1 + 92) + *(a1 + 144) + *(a1 + 88));
    v29 = malloc_type_malloc(v28, 0x496BEFABuLL);
    *(v10 + 168) = v29;
    memcpy(v29, *(a1 + 168), v28);
  }

  C3DEntityCopyTo(a1, v10);
  return v10;
}

void C3DMorphCreateTargetNormalsIfNeeded(uint64_t a1, __C3DGeometry *a2)
{
  if (*(a1 + 192))
  {
    if (!C3DGeometryUsesDeformerBasedDynamicMesh(a2))
    {
      Mesh = C3DGeometryGetMesh(a2);
      if (Mesh)
      {
        v5 = Mesh;
        EffectiveDataKindForRendering = C3DGeometryGetEffectiveDataKindForRendering(a2);
        if (C3DMeshHasSourcesWithSemantic(v5, 1, EffectiveDataKindForRendering, 0))
        {
          v7 = *(a1 + 72);
          if (v7)
          {
            Count = CFArrayGetCount(v7);
            v9 = Count - 1;
            if (Count >= 1)
            {
              v10 = Count;
              v11 = 0;
              for (i = 0; i != v10; ++i)
              {
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
                  if (!ValueAtIndex)
                  {
                    break;
                  }

                  v14 = C3DGeometryGetMesh(ValueAtIndex);
                  if (!v14)
                  {
                    break;
                  }

                  v15 = v14;
                  if (C3DMeshGetNormalSource(v14, 1))
                  {
                    break;
                  }

                  v11 = 1;
                  C3DMeshUnifyNormals(v15, v5, 1, 1);
                  if (v9 == i++)
                  {
                    goto LABEL_17;
                  }
                }
              }

              if ((v11 & 1) == 0)
              {
                return;
              }

LABEL_17:

              C3DMeshUnifyNormals(v5, v5, 1, 1);
            }
          }
        }
      }
    }
  }
}

uint64_t C3DMorphConvertToSparse(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v56 = *MEMORY[0x277D85DE8];
  if (*(a1 + 193) == a3)
  {
    return 0;
  }

  v6 = a1;
  if (C3DGeometryUsesDeformerBasedDynamicMesh(a2))
  {
    return 0;
  }

  *(v6 + 193) = a3;
  if (a3)
  {
    C3DMorphConvertToCalculationMode(v6, a2, 1, a4);
  }

  Mesh = C3DGeometryGetMesh(a2);
  Count = CFArrayGetCount(*(v6 + 72));
  if (Count >= 1)
  {
    v8 = 0;
    allocator = *MEMORY[0x277CBECE8];
    v38 = v6;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v6 + 72), v8);
      v10 = C3DGeometryGetMesh(ValueAtIndex);
      PositionSource = 0;
      v55 = 0;
      PositionSource = C3DMeshGetPositionSource(v10, 0);
      NormalSource = C3DMeshGetNormalSource(v10, 0);
      v55 = NormalSource;
      if (PositionSource)
      {
        ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(v10, 0, 0);
        NormalSource = v55;
      }

      else
      {
        ChannelForSourceWithSemanticAtIndex = -1;
      }

      v52 = ChannelForSourceWithSemanticAtIndex;
      if (NormalSource)
      {
        v13 = C3DMeshGetChannelForSourceWithSemanticAtIndex(v10, 1, 0);
        v14 = v55 == 0;
        v53 = v13;
        if (v55)
        {
          v15 = 2;
LABEL_16:
          if (v13 != ChannelForSourceWithSemanticAtIndex)
          {
            v16 = scn_default_log();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
            {
              C3DMorphConvertToSparse_cold_1(v50, &v51, v16);
            }
          }

          goto LABEL_19;
        }
      }

      else
      {
        v13 = -1;
        v53 = -1;
        v14 = 1;
      }

      v15 = 1;
      if (!v14)
      {
        goto LABEL_16;
      }

LABEL_19:
      if (a3)
      {
        values = C3DMeshElementCreateIntervalList(&PositionSource, v15, 1);
        if (values)
        {
          v17 = CFArrayCreate(allocator, &values, 1, MEMORY[0x277CBF128]);
          C3DMeshSetMeshElements(v10, v17);
          CFRelease(v17);
          CFRelease(values);
          for (i = 0; i != v15; ++i)
          {
            PackedCopy = C3DMeshSourceCreatePackedCopy(*(&PositionSource + i), values, *(&v52 + i));
            if (PackedCopy)
            {
              v20 = PackedCopy;
              if (a4)
              {
                (*(a4 + 16))(a4, ValueAtIndex, *(&PositionSource + i), PackedCopy);
              }

              C3DMeshSetSourceWithInputSet(v10, v20, 0, 255);
              CFRelease(v20);
            }

            else
            {
              v21 = scn_default_log();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109376;
                v47 = i;
                v48 = 1024;
                v49 = v8;
                _os_log_error_impl(&dword_21BEF7000, v21, OS_LOG_TYPE_ERROR, "Error: Failed to create packed source %d for sparse morph target %d", buf, 0xEu);
              }
            }
          }
        }

        else
        {
          v28 = scn_default_log();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v47 = v8;
            _os_log_error_impl(&dword_21BEF7000, v28, OS_LOG_TYPE_ERROR, "Error: Could not create intervals for sparse morph target %d (this morph target is useless)", buf, 8u);
          }

          C3DMeshSetMeshElements(v10, 0);
          p_PositionSource = &PositionSource;
          do
          {
            v30 = *p_PositionSource++;
            C3DMeshRemoveSource(v10, v30);
            --v15;
          }

          while (v15);
        }

        v26 = v8;
      }

      else
      {
        if (C3DMeshGetElementsCount(v10) != 1)
        {
          v22 = scn_default_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            C3DMorphConvertToSparse_cold_2(v44, &v45, v22);
          }
        }

        if (*(v6 + 64) != 1)
        {
          v23 = scn_default_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            C3DMorphConvertToSparse_cold_3(v42, &v43, v23);
          }
        }

        ElementAtIndex = C3DMeshGetElementAtIndex(v10, 0, 0);
        v25 = C3DMeshGetPositionSource(Mesh, 0);
        v26 = v8;
        if (v25)
        {
          v27 = C3DMeshSourceGetCount(v25);
        }

        else
        {
          v27 = 0;
        }

        v31 = &v52;
        v32 = &PositionSource;
        do
        {
          v33 = *v31++;
          UnpackedCopy = C3DMeshSourceCreateUnpackedCopy(*v32, ElementAtIndex, v27, v33);
          if (UnpackedCopy)
          {
            v35 = UnpackedCopy;
            if (a4)
            {
              (*(a4 + 16))(a4, ValueAtIndex, *v32, UnpackedCopy);
            }

            C3DMeshSetSourceWithInputSet(v10, v35, 0, 255);
            CFRelease(v35);
          }

          ++v32;
          --v15;
        }

        while (v15);
      }

      v8 = v26 + 1;
      v6 = v38;
    }

    while (v26 + 1 != Count);
  }

  return 1;
}

uint64_t C3DMorphConvertToCalculationMode(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 64) == a3 || C3DGeometryUsesDeformerBasedDynamicMesh(a2))
  {
    return 0;
  }

  *(a1 + 64) = a3;
  Mesh = C3DGeometryGetMesh(a2);
  PositionSource = C3DMeshGetPositionSource(Mesh, 0);
  NormalSource = C3DMeshGetNormalSource(Mesh, 0);
  Count = CFArrayGetCount(*(a1 + 72));
  if (Count >= 1)
  {
    for (i = 0; Count != i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
      v12 = C3DGeometryGetMesh(ValueAtIndex);
      v13 = C3DMeshGetPositionSource(v12, 0);
      v14 = C3DMeshGetNormalSource(v12, 0);
      if (v14)
      {
        v15 = NormalSource == 0;
      }

      else
      {
        v15 = 1;
      }

      v16 = !v15;
      if (a3 == 1)
      {
        DeltaSource = C3DMeshSourceCreateDeltaSource(PositionSource, v13);
        if (v16)
        {
          AbsoluteSource = C3DMeshSourceCreateDeltaSource(NormalSource, v14);
          goto LABEL_17;
        }
      }

      else
      {
        DeltaSource = C3DMeshSourceCreateAbsoluteSource(PositionSource, v13);
        if (v16)
        {
          AbsoluteSource = C3DMeshSourceCreateAbsoluteSource(NormalSource, v14);
LABEL_17:
          v19 = AbsoluteSource;
          if (DeltaSource)
          {
            goto LABEL_20;
          }

          goto LABEL_23;
        }
      }

      v19 = 0;
      if (DeltaSource)
      {
LABEL_20:
        if (a4)
        {
          (*(a4 + 16))(a4, ValueAtIndex, v13, DeltaSource);
        }

        C3DMeshSetSourceWithInputSet(v12, DeltaSource, 0, 255);
        CFRelease(DeltaSource);
      }

LABEL_23:
      if (v19)
      {
        if (a4)
        {
          (*(a4 + 16))(a4, ValueAtIndex, v14, v19);
        }

        C3DMeshSetSourceWithInputSet(v12, v19, 0, 255);
        CFRelease(v19);
      }
    }
  }

  return 1;
}

uint64_t C3DMorphIsUsingSparseTargets(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 193);
}

const UInt8 *C3DMorphGetRuntimeWeights(uint64_t a1, _DWORD *a2)
{
  result = *(a1 + 168);
  if (result || (v5 = *(a1 + 112) + *(a1 + 92) + *(a1 + 144)) != 0 && (*(a1 + 168) = malloc_type_malloc(4 * (*(a1 + 88) + v5), 0x100004052888210uLL), __morphWeightsHaveChanged(a1, v6), (result = *(a1 + 168)) != 0))
  {
    *a2 = *(a1 + 112) + *(a1 + 92) + *(a1 + 144) + *(a1 + 88);
  }

  else
  {
    v7 = *(a1 + 80);
    if (!v7)
    {
      if (*(a1 + 72))
      {
        _setupWeights(a1, 0);
        v7 = *(a1 + 80);
      }

      else
      {
        v7 = 0;
      }
    }

    Accessor = C3DGenericSourceGetAccessor(v7);
    *a2 = C3DSourceAccessorGetCount(Accessor);

    return C3DSourceAccessorGetValuePtrAtIndex(Accessor, 0);
  }

  return result;
}

uint64_t C3DMorphGetIndexOfTargetWithName(uint64_t a1, void *key)
{
  *&v18[5] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 176);
  if (!v4)
  {
    v5 = C3DMorphCopyMainTargets(a1);
    if (!v5)
    {
      return -1;
    }

    v6 = v5;
    v7 = *MEMORY[0x277CBECE8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v10 = Count;
      for (i = 0; i != v10; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
        Name = C3DGeometryGetName(ValueAtIndex);
        if (!Name)
        {
          v14 = scn_default_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            C3DMorphGetIndexOfTargetWithName_cold_1(v17, v18, v14);
          }
        }

        CFDictionaryAddValue(Mutable, Name, i);
      }
    }

    *(a1 + 176) = CFDictionaryCreateCopy(v7, Mutable);
    CFRelease(Mutable);
    CFRelease(v6);
    v4 = *(a1 + 176);
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(v4, key, &value))
  {
    return value;
  }

  else
  {
    return -1;
  }
}

uint64_t C3DMorphGetClearCPUDataAfterUpload(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 194);
}

void C3DMorphSetClearCPUDataAfterUpload(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 194) = a2;
}

float C3DMorphGetWeightIncrementalThreshold(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 184);
}

void C3DMorphSetWeightIncrementalThreshold(uint64_t a1, float a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 184) = a2;
}

id _C3DMorphCFFinalize(uint64_t a1)
{
  SharedInstance = C3DNotificationCenterGetSharedInstance();
  C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationMorphWillDie", a1, 0, 1u);
  v3 = *(a1 + 80);
  if (v3)
  {
    C3DGenericSourceSetListener(v3, a1);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 72) = 0;
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 80) = 0;
  }

  v6 = *(a1 + 176);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 176) = 0;
  }

  free(*(a1 + 168));
  free(*(a1 + 96));
  free(*(a1 + 104));
  free(*(a1 + 120));
  free(*(a1 + 136));
  free(*(a1 + 152));
  free(*(a1 + 160));

  return C3DEntityCFFinalize(a1);
}

__CFString *_C3DMorphCFCopyDebugDescription(uint64_t a1)
{
  v2 = C3DMorphCopyMainTargets(a1);
  v3 = v2;
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  Name = C3DEntityGetName(a1);
  CFStringAppendFormat(Mutable, 0, @"<C3DMorph %p %@\n", a1, Name);
  CFStringAppendFormat(Mutable, 0, @"  calc:%d morphNrm:%d targets:%ld\n", *(a1 + 64), *(a1 + 192), Count);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
      WeightAtIndex = C3DMorphGetWeightAtIndex(a1, i);
      CFStringAppendFormat(Mutable, 0, @"[%ld] weight:%f %@\n", i, WeightAtIndex, ValueAtIndex);
    }
  }

  CFStringAppend(Mutable, @">");
  if (v3)
  {
    CFRelease(v3);
  }

  return Mutable;
}

BOOL _C3DMorphInitWithPropertyList(uint64_t a1, const __CFDictionary *a2, uint64_t a3, CFErrorRef *a4)
{
  if ((C3DEntityInitWithPropertyList(a1, a2) & 1) == 0)
  {
    v18 = scn_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      _C3DMorphInitWithPropertyList_cold_1();
    }

    return 0;
  }

  if (!a1)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  Value = CFDictionaryGetValue(a2, @"morphingType");
  if (!Value)
  {
    v20 = scn_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      _C3DMorphInitWithPropertyList_cold_4();
      if (!a4)
      {
        return 0;
      }
    }

    else if (!a4)
    {
      return 0;
    }

    if (!*a4)
    {
      MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
      v17 = 0;
      goto LABEL_20;
    }

    return 0;
  }

  valuePtr = 0;
  v16 = CFNumberGetValue(Value, kCFNumberShortType, &valuePtr);
  v17 = v16 != 0;
  if (!v16)
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      _C3DMorphInitWithPropertyList_cold_3();
      if (!a4)
      {
        return v17;
      }
    }

    else if (!a4)
    {
      return v17;
    }

    if (*a4)
    {
      return v17;
    }

    MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
LABEL_20:
    *a4 = MalformedDocumentError;
    return v17;
  }

  *(a1 + 64) = valuePtr;
  return v17;
}

__CFDictionary *_C3DMorphCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = C3DEntityCopyPropertyList(a1, a2, a3);
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  valuePtr = C3DLibraryGetEntryID(a2, *(a1 + 80));
  v14 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  CFDictionarySetValue(v5, @"weightsID", v14);
  CFRelease(v14);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (CFArrayGetCount(*(a1 + 72)) >= 1)
  {
    v16 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v16);
      Mesh = C3DGeometryGetMesh(ValueAtIndex);
      valuePtr = C3DLibraryGetEntryID(a2, Mesh);
      v19 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
      CFArrayAppendValue(Mutable, v19);
      CFRelease(v19);
      ++v16;
    }

    while (v16 < CFArrayGetCount(*(a1 + 72)));
  }

  CFDictionarySetValue(v5, @"targetIDs", Mutable);
  CFRelease(Mutable);
  LOWORD(valuePtr) = *(a1 + 64);
  v20 = CFNumberCreate(0, kCFNumberShortType, &valuePtr);
  CFDictionarySetValue(v5, @"morphingType", v20);
  CFRelease(v20);
  OwnData = C3DGenericSourceGetOwnData(*(a1 + 80));
  CFDictionarySetValue(v5, @"weightsData", OwnData);
  return v5;
}

const __CFNumber *_C3DMorphFinalizeDeserialization(uint64_t a1, uint64_t a2, const __CFDictionary *a3, CFErrorRef *a4)
{
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  *(a1 + 72) = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  result = CFDictionaryGetValue(a3, @"targetIDs");
  if (!result)
  {
    return result;
  }

  v17 = result;
  if (CFArrayGetCount(result) < 1)
  {
LABEL_10:
    v27 = *(a1 + 72);
    if (v27)
    {
      LODWORD(v27) = CFArrayGetCount(v27);
    }

    *(a1 + 88) = v27;
    result = CFDictionaryGetValue(a3, @"weightsID");
    if (!result)
    {
      return result;
    }

    valuePtr = 0;
    if (CFNumberGetValue(result, kCFNumberLongType, &valuePtr))
    {
      v28 = valuePtr;
      TypeID = C3DGenericSourceGetTypeID();
      RemappedID = C3DLibraryGetRemappedID(a2, v28, TypeID);
      if (RemappedID)
      {
        v31 = RemappedID;
        v32 = C3DGenericSourceGetTypeID();
        Entry = C3DLibraryGetEntry(a2, v32, v31);
        Value = CFDictionaryGetValue(a3, @"weightsData");
        C3DGenericSourceSetData(Entry, Value);
        C3DMorphSetWeightsSource(a1, Entry, v35);
        return 1;
      }

      v37 = scn_default_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        _C3DMorphFinalizeDeserialization_cold_2();
        if (a4)
        {
LABEL_21:
          if (!*a4)
          {
            *a4 = C3DSceneSourceCreateMalformedDocumentError(0);
          }
        }
      }

      else
      {
LABEL_20:
        if (a4)
        {
          goto LABEL_21;
        }
      }
    }

    return 0;
  }

  v18 = 0;
  while (1)
  {
    valuePtr = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(v17, v18);
    result = CFNumberGetValue(ValueAtIndex, kCFNumberLongType, &valuePtr);
    if (!result)
    {
      return result;
    }

    v20 = valuePtr;
    v21 = C3DMeshGetTypeID();
    v22 = C3DLibraryGetRemappedID(a2, v20, v21);
    if (!v22)
    {
      v36 = scn_default_log();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      _C3DMorphFinalizeDeserialization_cold_3();
      if (a4)
      {
        goto LABEL_21;
      }

      return 0;
    }

    v23 = v22;
    v24 = C3DMeshGetTypeID();
    v25 = C3DLibraryGetEntry(a2, v24, v23);
    v26 = C3DGeometryCreate();
    C3DGeometrySetMesh(v26, v25);
    CFArrayAppendValue(*(a1 + 72), v26);
    CFRelease(v26);
    if (++v18 >= CFArrayGetCount(v17))
    {
      goto LABEL_10;
    }
  }
}

CFIndex _C3DMorphFillLibraryForSerialization(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = CFArrayGetCount(*(a1 + 72));
  if (result >= 1)
  {
    for (i = 0; i < result; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
      C3DLibraryAddEntry(a2, ValueAtIndex);
      v9 = CFArrayGetValueAtIndex(*(a1 + 72), i);
      C3DFillLibraryForSerialization(v9, a2, a3);
      result = CFArrayGetCount(*(a1 + 72));
    }
  }

  v10 = *(a1 + 80);
  if (v10)
  {
    C3DLibraryAddEntry(a2, v10);
    v11 = *(a1 + 80);

    return C3DFillLibraryForSerialization(v11, a2, a3);
  }

  return result;
}

uint64_t _C3DMorphSearchByID(uint64_t a1, const void *a2)
{
  ID = C3DEntityGetID(a1);
  if (C3DEqual(ID, a2))
  {
    return a1;
  }

  v6 = *(a1 + 80);
  if (!v6)
  {
    if (*(a1 + 72))
    {
      _setupWeights(a1, 0);
      v6 = *(a1 + 80);
    }

    else
    {
      v6 = 0;
    }
  }

  return C3DSearchByID(v6, a2);
}

__CFArray *_C3DMorphCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = *(a1 + 72);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
        Name = C3DGeometryGetName(ValueAtIndex);
        if (Name)
        {
          v9 = Name;
          CFRetain(Name);
        }

        else
        {
          v9 = CFStringCreateWithFormat(0, 0, @"<unnamed %d>", i);
        }

        v10 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v16 = 1;
        valuePtr = 5;
        v15 = ValueAtIndex;
        v11 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        v12 = CFNumberCreate(0, kCFNumberSInt32Type, &v16);
        v13 = CFNumberCreate(0, kCFNumberLongType, &v15);
        CFDictionarySetValue(v10, @"name", v9);
        CFDictionarySetValue(v10, @"type", v11);
        CFDictionarySetValue(v10, @"address", v13);
        CFDictionarySetValue(v10, @"semantic", v12);
        CFArrayAppendValue(Mutable, v10);
        CFRelease(v12);
        CFRelease(v10);
        CFRelease(v13);
        CFRelease(v11);
        CFRelease(v9);
      }
    }
  }

  return Mutable;
}

void _C3DMorphEnumerateSubEntities(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 80) || *(a1 + 72) && (_setupWeights(a1, 0), *(a1 + 80)))
    {
      v4 = *(a2 + 16);

      v4(a2);
    }
  }
}

void __evaluateRuntimeWeightsForInBetween(uint64_t a1, _DWORD *a2, unsigned int *a3, unsigned int a4, uint64_t a5, unsigned int a6, float a7)
{
  v7 = *a2;
  v8 = *a3;
  if (a4 >= 2)
  {
    v10 = 0;
    v11 = 0;
    v12 = a6 - v7;
    if (a6 < v7)
    {
      v12 = 0;
    }

    v13 = a1 + 4 * v7;
    while (1)
    {
      if (v12 == v10)
      {
        v18 = scn_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __evaluateRuntimeWeightsForInBetween_cold_1(v7 + v10, a6, v18);
        }

        return;
      }

      v14 = v10 - a4;
      if (v11)
      {
        *(v13 + 4 * v10) = 0;
      }

      else if (a7 >= 1.0)
      {
        if (v14 != -1)
        {
          goto LABEL_16;
        }

        *(v13 + 4 * v10) = a7;
      }

      else
      {
        if (v14 == -1)
        {
          v15 = 1.0;
        }

        else
        {
          v15 = *(a5 + 4 * v8);
        }

        if (v15 < a7)
        {
LABEL_16:
          v11 = 0;
          *(v13 + 4 * v10) = 0;
          goto LABEL_17;
        }

        if (v10)
        {
          v16 = *(a5 + 4 * (v8 - 1));
          v17 = (a7 - v16) / (v15 - v16);
          *(a1 + 4 * (v7 - 1 + v10)) = 1.0 - v17;
        }

        else
        {
          v17 = a7 / v15;
        }

        *(v13 + 4 * v10) = v17;
      }

      v11 = 1;
LABEL_17:
      if (v14 != -1)
      {
        ++v8;
      }

      if (++v10 == a4)
      {
        v19 = v7 + v10;
        goto LABEL_28;
      }
    }
  }

  v19 = v7 + 1;
  *(a1 + 4 * v7) = a7;
LABEL_28:
  *a2 = v19;
  *a3 = v8;
}

void C3DIndicesContentGetVertexIndicesForLinePrimitiveAtIndex_0(uint64_t *a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 35);
  v8 = a1[6];
  v9 = a1[7];
  v10 = v8 + v9 * 2 * a2;
  v11 = v9 * ((2 * (a2 & 0x3FFFFFFFFFFFFFFFLL)) | 1);
  if (v11 + v8 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11 + v8;
  }

  if (a1[1] < (v7 + v7 * v12))
  {
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = a1[1];
      v20 = *(a1 + 35);
      v21 = 136315650;
      v22 = "C3DIndicesContentGetVertexIndicesForLinePrimitiveAtIndex";
      v23 = 1024;
      v24 = v12;
      v25 = 2048;
      v26 = v19 / v20;
      _os_log_error_impl(&dword_21BEF7000, v13, OS_LOG_TYPE_ERROR, "Error: %s - index (%u) out of bounds (%lu)", &v21, 0x1Cu);
    }

    *a3 = 0;
    *a4 = 0;
    return;
  }

  switch(v7)
  {
    case 4:
      v17 = *a1;
      *a3 = *(*a1 + 4 * v10);
      v15 = *(v17 + 4 * v8 + 4 * v11);
      goto LABEL_14;
    case 2:
      v16 = *a1;
      *a3 = *(*a1 + 2 * v10);
      v15 = *(v16 + 2 * v8 + 2 * v11);
      goto LABEL_14;
    case 1:
      v14 = *a1;
      *a3 = *(*a1 + v10);
      v15 = *(v14 + v8 + v11);
LABEL_14:
      *a4 = v15;
      return;
  }

  *a3 = 0;
  *a4 = 0;
  v18 = scn_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex_cold_1();
  }
}

C3D::ConvertCubePass *C3D::ConvertCubePass::ConvertCubePass(C3D::ConvertCubePass *this, C3D::RenderGraph *a2, C3D::Pass *a3, const Parameters *a4)
{
  v6 = C3D::RenderPass::RenderPass(this, a2, a3);
  *v6 = &unk_282DC70B8;
  *(v6 + 120) = *&a4->var0;
  snprintf(v6 + 256, 0x40uLL, "ConvertCubePass-%sTo%s", off_278300258[a4->var0], off_278300258[a4->var1]);
  if (!*(this + 241))
  {
    RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
    v8 = ([(SCNMTLRenderContext *)RenderContext features]& 0x20) != 0;
    *(this + 117) = v8;
    *(this + 118) = v8;
    *(this + 19) = 6;
  }

  return this;
}

void C3D::ConvertCubePass::setup(C3D::ConvertCubePass *this)
{
  C3D::Pass::setInputCount(this, 1u);

  C3D::Pass::setOutputCount(this, 1u);
}

uint64_t C3D::ConvertCubePass::compile(C3D::ConvertCubePass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  v3 = [(SCNMTLRenderContext *)RenderContext resourceManager];
  [-[SCNMTLResourceManager libraryManager](v3) frameworkLibrary];
  v4 = C3D::Pass::descriptor(this);
  v5 = *(C3D::PassDescriptor::outputAtIndex(v4, 0) + 28);
  v6 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47))));
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v6 ^ (v6 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v6 ^ (v6 >> 47))) >> 47));
  *(this + 31) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t C3D::ConvertCubePass::execute(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 248) + 16) :"state" detail:? :?NSRetainFct];
  if (*(v4 + 3376) != v5)
  {
    *(v4 + 3376) = v5;
    [*(v4 + 3392) setRenderPipelineState:v5];
  }

  v6 = C3D::Pass::inputTextureAtIndex(a1, 0);
  IsArray = SCNMTLTextureTypeIsArray([v6 textureType]);
  ArrayElementType = SCNMTLTextureTypeGetArrayElementType([v6 textureType]);
  if (*(a2 + 18) || IsArray)
  {
    if (*(a1 + 240))
    {
      v9 = 1;
    }

    else
    {
      v9 = 6;
    }

    v6 = [v6 newTextureViewWithPixelFormat:objc_msgSend(v6 textureType:"pixelFormat") levels:ArrayElementType slices:*(a2 + 18), 1, 0, v9];
  }

  SCNMTLRenderCommandEncoder::setFragmentTexture(v4, v6, 0);
  RenderContext = C3DEngineContextGetRenderContext(*(a1 + 16));
  if (([(SCNMTLRenderContext *)RenderContext features]& 0x400) != 0)
  {
    if (*(a1 + 117) == 1 || (v13 = *(a2 + 16), !*(a2 + 16)))
    {

      return SCNMTLRenderCommandEncoder::drawFullScreenTriangle(v4);
    }

    else
    {

      return SCNMTLRenderCommandEncoder::drawPrimitives(v4, MTLPrimitiveTypeTriangle, 0, 3, 1, v13);
    }
  }

  else
  {
    SCNMTLRenderCommandEncoder::setVertexBytes(v4, (a2 + 16), 2uLL, 0);
    SCNMTLRenderCommandEncoder::_bindPendingTextures(v4);
    SCNMTLRenderCommandEncoder::applyChangedStates(v4);
    v11 = *(v4 + 3392);

    return [v11 drawPrimitives:3 vertexStart:0 vertexCount:3];
  }
}

void C3D::ConvertCubePass::Resource::~Resource(C3D::ConvertCubePass::Resource *this)
{
  *this = &unk_282DC7128;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC7128;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

const __CFArray *__allocateLastWeightsIfNeeded(uint64_t a1)
{
  result = C3DGeometryGetOverrideMaterial(*(a1 + 72));
  if (result)
  {
    result = CFArrayGetCount(result);
    v3 = result;
  }

  else
  {
    v3 = 0;
  }

  if (v3 != *(a1 + 104))
  {
    free(*(a1 + 96));
    if (v3)
    {
      result = malloc_type_calloc(v3, 4uLL, 0x100004052888210uLL);
    }

    else
    {
      result = 0;
    }

    *(a1 + 96) = result;
    *(a1 + 104) = v3;
    *(a1 + 88) = 0;
  }

  return result;
}

uint64_t C3DMorpherGetTypeID()
{
  if (C3DMorpherGetTypeID_onceToken != -1)
  {
    C3DMorpherGetTypeID_cold_1();
  }

  return C3DMorpherGetTypeID_typeID;
}

double __C3DMorpherGetTypeID_block_invoke()
{
  C3DMorpherGetTypeID_typeID = _CFRuntimeRegisterClass();
  unk_2817409D0 = kC3DC3DMorpherContextClassSerializable;
  unk_2817409E0 = *&off_282DC7168;
  result = *&kC3DC3DMorpherContextClassSceneLink;
  *&algn_281740990[16] = kC3DC3DMorpherContextClassSceneLink;
  *&algn_281740990[32] = unk_282DC7188;
  qword_2817409C0 = qword_282DC7198;
  unk_2817409C8 = _C3DMorpherSearchByID;
  qword_281740988 = _C3DMorpherCopyInstanceVariables;
  return result;
}

uint64_t C3DMorpherCreateWith(const void *a1)
{
  if (C3DMorpherGetTypeID_onceToken != -1)
  {
    C3DMorpherGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DMorpherGetTypeID_typeID, 96);
  C3DMorpherSetMorph(Instance, a1);
  return Instance;
}

void C3DMorpherSetMorph(uint64_t a1, const void *a2)
{
  v4 = C3DGetSceneRef(a1);
  if (v4)
  {
    v5 = *(a1 + 72);
    if (v5)
    {
      C3DRemoveSceneRef(v5, v4);
    }
  }

  v6 = *(a1 + 72);
  if (!v6)
  {
    if (!a2)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  __C3DMorphSetMorpher(v6, 0);
  v7 = *(a1 + 72);
  if (v7 == a2)
  {
    goto LABEL_13;
  }

  if (v7)
  {
    CFRelease(v7);
    *(a1 + 72) = 0;
  }

  if (a2)
  {
LABEL_11:
    v8 = CFRetain(a2);
    goto LABEL_12;
  }

  v8 = 0;
LABEL_12:
  *(a1 + 72) = v8;
LABEL_13:
  free(*(a1 + 96));
  *(a1 + 96) = 0;
  *(a1 + 108) = 0;
  if (a2)
  {
    __C3DMorphSetMorpher(a2, a1);
    __allocateLastWeightsIfNeeded(a1);
  }

  if (v4)
  {
    v9 = *(a1 + 72);
    if (v9)
    {

      C3DAddSceneRef(v9, v4);
    }
  }
}

CFTypeRef *C3DMorpherCreateCopy(uint64_t a1)
{
  Copy = C3DMorphCreateCopy(*(a1 + 72));
  v3 = C3DMorpherCreateWith(Copy);
  CFRelease(Copy);
  C3DEntityCopyTo(a1, v3);
  return v3;
}

uint64_t C3DMorpherBeginIncrementalPass(uint64_t a1, int a2, void *a3, const UInt8 **a4, _DWORD *a5, float *a6)
{
  if (!a1)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DMorpherBeginIncrementalPass_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  v20 = *(a1 + 72);
  if (!v20)
  {
    v21 = scn_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      C3DMorphGetWeightCount_cold_1(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  v29 = *(a1 + 108);
  State = __C3DMorphGetState(v20);
  if (v29 != a2 || v29 == 0)
  {
    v32 = 2;
LABEL_16:
    *(a1 + 88) = State;
    __allocateLastWeightsIfNeeded(a1);
    *a3 = *(a1 + 96);
    v34 = 0;
    *a4 = C3DMorphGetRuntimeWeights(v20, &v34);
    *a5 = v34;
    *a6 = C3DMorphGetIncrementalThreshold(v20);
    return v32;
  }

  if (*(a1 + 88) != State)
  {
    v32 = 1;
    goto LABEL_16;
  }

  return 0;
}

uint64_t C3DMorpherEndIncrementalPass(uint64_t a1)
{
  v7 = 0;
  RuntimeWeights = C3DMorphGetRuntimeWeights(*(a1 + 72), &v7);
  IncrementalThreshold = C3DMorphGetIncrementalThreshold(*(a1 + 72));
  v4 = v7;
  if (v7)
  {
    v5 = *(a1 + 96);
    do
    {
      if (vabds_f32(*RuntimeWeights, *v5) > IncrementalThreshold)
      {
        *v5 = *RuntimeWeights;
      }

      ++RuntimeWeights;
      ++v5;
      --v4;
    }

    while (v4);
  }

  result = (*(a1 + 108) + 1);
  *(a1 + 108) = result;
  return result;
}

void _C3DMorpherPrepareMorphedMesh(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  EffectiveDataKindForRendering = C3DGeometryGetEffectiveDataKindForRendering(*(a1 + 64));
  PositionSource = C3DMeshGetPositionSource(a3, EffectiveDataKindForRendering);
  NormalSource = C3DMeshGetNormalSource(a3, EffectiveDataKindForRendering);
  if (!a4)
  {
    v12 = NormalSource;
    if (C3DMeshSourceGetMTLBuffer(PositionSource))
    {
      C3DMeshCopySources(a2, a3);
      PositionSource = C3DMeshGetPositionSource(a3, 1);
      v12 = C3DMeshGetNormalSource(a3, 1);
    }

    if (C3DMeshSourceIsMutable(PositionSource) && C3DMeshSourceGetValueType(PositionSource) == 9)
    {
      v13 = 0;
      if (!v12)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v13 = 1;
      v14 = C3DMeshGetPositionSource(a2, 1);
      CopyWithBaseType = C3DMeshSourceCreateCopyWithBaseType(v14, 9u, 1);
      __C3DMeshSetRenderableSourceWithInputSetAndPositionChannel(a3, CopyWithBaseType, 0);
      CFRelease(CopyWithBaseType);
      if (!v12)
      {
        goto LABEL_13;
      }
    }

    if (!C3DMeshSourceIsMutable(v12) || C3DMeshSourceGetValueType(v12) != 9)
    {
      v16 = C3DMeshGetNormalSource(a2, 1);
      v17 = C3DMeshSourceCreateCopyWithBaseType(v16, 9u, 1);
      __C3DMeshSetRenderableSourceWithInputSetAndPositionChannel(a3, v17, 0);
      CFRelease(v17);
      goto LABEL_16;
    }

LABEL_13:
    if (!v13)
    {
      return;
    }

LABEL_16:
    *(a1 + 108) = 0;
    return;
  }

  v11 = scn_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    _C3DMorpherPrepareMorphedMesh_cold_1(v11);
  }
}

void C3DMorpherUpdateIfNeeded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DMorpherBeginIncrementalPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (*(a1 + 72) && !C3DEngineContextIsClusteredShadingEnabled(a3))
  {
    State = __C3DMorphGetState(*(a1 + 72));
    if (*(a1 + 88) != State)
    {
      *(a1 + 88) = State;
      Mesh = C3DGeometryGetMesh(*(a1 + 64));
      MorphedMeshLegacy = C3DMorpherGetMorphedMeshLegacy(a1);
      _C3DMorpherPrepareMorphedMesh(a1, Mesh, MorphedMeshLegacy, 0);
      __allocateLastWeightsIfNeeded(a1);
      C3DMorphUpdateCPUMeshIncrementally(*(a1 + 72), Mesh, MorphedMeshLegacy, *(a1 + 96), *(a1 + 108) == 0);
      C3DMorpherEndIncrementalPass(a1);
      C3DMeshDidMutate(MorphedMeshLegacy);
      C3DNodeBoundingBoxDidUpdate(a2);
    }
  }
}

uint64_t C3DMorpherGetMorphedMeshLegacy(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DMorpherBeginIncrementalPass_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 80);
  if (!result)
  {
    result = *(a1 + 64);
    if (result)
    {
      Mesh = C3DGeometryGetMesh(result);
      if (Mesh)
      {
        result = C3DMeshCreateCopy(Mesh);
        *(a1 + 80) = result;
      }

      else
      {
        return *(a1 + 80);
      }
    }
  }

  return result;
}

uint64_t C3DMorpherGetBaseGeometry(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DMorpherBeginIncrementalPass_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

void C3DMorpherSetBaseGeometry(uint64_t a1, __C3DGeometry *a2)
{
  v2 = *(a1 + 64);
  if (v2 != a2)
  {
    v5 = C3DGetSceneRef(a1);
    v6 = v5;
    if (v2)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      C3DRemoveSceneRef(v2, v5);
    }

    v8 = *(a1 + 64);
    if (v8 != a2)
    {
      if (v8)
      {
        CFRelease(v8);
        *(a1 + 64) = 0;
      }

      if (a2)
      {
        v9 = CFRetain(a2);
      }

      else
      {
        v9 = 0;
      }

      *(a1 + 64) = v9;
    }

    *(a1 + 88) = 0;
    if (a2 && v6)
    {
      C3DAddSceneRef(a2, v6);
    }

    v10 = *(a1 + 80);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 80) = 0;
    }

    if (a2)
    {
      v11 = *(a1 + 72);

      C3DMorphCreateTargetNormalsIfNeeded(v11, a2);
    }
  }
}

id _C3DMorpherCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    __C3DMorphSetMorpher(v2, 0);
    CFRelease(*(a1 + 72));
  }

  free(*(a1 + 96));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v3 = *(a1 + 80);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 80) = 0;
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 64) = 0;
  }

  return C3DEntityCFFinalize(a1);
}

__CFString *_C3DMorpherCFCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<C3DMorpher %p baseGeom:%p morphedMesh:%p state:%d\n", a1, *(a1 + 64), *(a1 + 80), *(a1 + 88));
  CFStringAppendFormat(Mutable, 0, @"  morph:%@\n", *(a1 + 72));
  CFStringAppend(Mutable, @">");
  return Mutable;
}

__CFDictionary *_C3DMorpherCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DMorpherBeginIncrementalPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = C3DEntityCopyPropertyList(a1, a2, a3);
  valuePtr = C3DLibraryGetEntryID(a2, *(a1 + 72));
  v15 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  CFDictionarySetValue(v14, @"morphID", v15);
  CFRelease(v15);
  return v14;
}

uint64_t _C3DMorpherFinalizeDeserialization(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, CFErrorRef *a4)
{
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DMorpherBeginIncrementalPass_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  Value = CFDictionaryGetValue(theDict, @"morphID");
  TypeID = C3DMorphGetTypeID();
  if (Value)
  {
    v18 = TypeID;
    valuePtr = 0;
    if (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
    {
      RemappedID = C3DLibraryGetRemappedID(a2, valuePtr, v18);
      Entry = C3DLibraryGetEntry(a2, v18, RemappedID);
      if (Entry)
      {
        C3DMorpherSetMorph(a1, Entry);
        return 1;
      }
    }

    else
    {
      v30 = scn_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        _C3DMorpherFinalizeDeserialization_cold_2(v30, v31, v32, v33, v34, v35, v36, v37);
      }
    }
  }

  else
  {
    v22 = scn_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      _C3DMorpherFinalizeDeserialization_cold_3(v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  v38 = scn_default_log();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    _C3DMorpherFinalizeDeserialization_cold_4(v38, v39, v40, v41, v42, v43, v44, v45);
    if (!a4)
    {
      return 0;
    }
  }

  else if (!a4)
  {
    return 0;
  }

  if (*a4)
  {
    return 0;
  }

  MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
  result = 0;
  *a4 = MalformedDocumentError;
  return result;
}

void *_C3DMorpherFillLibraryForSerialization(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DMorpherBeginIncrementalPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  C3DLibraryAddEntry(a2, *(a1 + 72));
  C3DLibraryAddEntry(a2, *(a1 + 64));
  C3DFillLibraryForSerialization(*(a1 + 72), a2, a3);
  return C3DFillLibraryForSerialization(*(a1 + 64), a2, a3);
}

uint64_t _C3DMorpherSearchByID(uint64_t a1, const void *a2)
{
  ID = C3DEntityGetID(a1);
  if (C3DEqual(ID, a2))
  {
    return a1;
  }

  v6 = *(a1 + 72);

  return C3DSearchByID(v6, a2);
}

uint64_t _C3DMorpherEnumerateSubEntities(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(result + 72))
  {
    result = (*(a2 + 16))(a2);
  }

  if (*(v3 + 64))
  {
    v4 = *(a2 + 16);

    return v4(a2);
  }

  return result;
}

__CFArray *_C3DMorpherCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v9 = 2;
  valuePtr = 5;
  v8 = a1 + 72;
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &v9);
  v6 = CFNumberCreate(0, kCFNumberLongType, &v8);
  CFDictionarySetValue(v3, @"name", @"morph");
  CFDictionarySetValue(v3, @"type", v4);
  CFDictionarySetValue(v3, @"address", v6);
  CFDictionarySetValue(v3, @"semantic", v5);
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v5);
  CFRelease(v3);
  CFRelease(v6);
  CFRelease(v4);
  return Mutable;
}

void _C3DFXContextCFFinalize(uint64_t a1, int64x2_t a2)
{
  C3DFXContextRemoveAllPassInstances(a1, a2);
  __releaseBuiltinTechniques(a1);
  v3 = *(a1 + 240);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 240) = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = C3DGetScene(*(a1 + 24));
    C3DRemoveSceneRef(v4, v5);
    v6 = *(a1 + 24);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 24) = 0;
    }
  }

  v7 = *(a1 + 280);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 280) = 0;
  }

  v8 = *(a1 + 296);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 296) = 0;
  }

  v9 = *(a1 + 72);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 72) = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 40) = 0;
  }

  v11 = *(a1 + 208);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 208) = 0;
  }

  free(*(a1 + 200));
  if (*(a1 + 96) >= 1)
  {
    v12 = 0;
    do
    {
      CFRelease(*(*(a1 + 80) + 8 * v12++));
    }

    while (v12 < *(a1 + 96));
  }

  v13 = *(a1 + 80);
  if (v13)
  {

    free(v13);
  }
}

CFStringRef _C3DFXContextCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DFXContext>");
}

CFStringRef _C3DFXContextCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DFXContext>");
}

BOOL C3DFXContextSetPostProcessTechnique(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DFXContextSetPostProcessTechnique_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    C3DEngineContextGetStats_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  *(a1 + 121) &= ~0x10u;
  v22 = *(a1 + 24);
  if (!v22)
  {
    if (!a2)
    {
      goto LABEL_19;
    }

LABEL_13:
    v25 = CFRetain(a2);
    goto LABEL_14;
  }

  v23 = C3DGetScene(*(a1 + 24));
  C3DRemoveSceneRef(v22, v23);
  v24 = *(a1 + 24);
  if (v24 == a2)
  {
    goto LABEL_15;
  }

  if (v24)
  {
    CFRelease(v24);
    *(a1 + 24) = 0;
  }

  if (a2)
  {
    goto LABEL_13;
  }

  v25 = 0;
LABEL_14:
  *(a1 + 24) = v25;
LABEL_15:
  if (a2)
  {
    Scene = C3DEngineContextGetScene(a3);
    if (Scene)
    {
      C3DAddSceneRef(a2, Scene);
    }

    *(a1 + 121) = *(a1 + 121) & 0xEF | (2 * a2[88]) & 0x10;
  }

LABEL_19:
  FXContext = C3DEngineContextGetFXContext(a3);
  if (FXContext)
  {
    *(FXContext + 121) &= ~1u;
  }

  result = C3DFXContextTechniquesDidChange(a1, a3);
  *(a1 + 121) |= 2u;
  return result;
}

uint64_t C3DFXInvalidatePasses(uint64_t a1)
{
  result = C3DEngineContextGetFXContext(a1);
  if (result)
  {
    *(result + 121) &= ~1u;
  }

  return result;
}

BOOL C3DFXContextTechniquesDidChange(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFXContextSetPostProcessTechnique_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  ++*(a1 + 116);
  result = C3DEngineContextHasFeatures(a2, 4);
  if (!result)
  {
    v13 = *(a1 + 72);
    if (v13 && C3DFXTechniqueConsumesMainDepth(v13) || C3DWasLinkedBeforeMajorOSYear2017() && (v14 = *(a1 + 48)) != 0 && C3DFXTechniqueConsumesMainDepth(v14))
    {
      result = 1;
    }

    else
    {
      v15 = *(a1 + 96);
      if (v15 < 1)
      {
        result = 0;
      }

      else
      {
        for (i = 0; i < v15; ++i)
        {
          result = C3DFXTechniqueConsumesMainDepth(*(*(a1 + 80) + 8 * i));
          if (result)
          {
            break;
          }
        }
      }
    }

    v17 = *(a1 + 248);
    if (v17)
    {
      *(v17 + 176) = result;
    }
  }

  return result;
}

BOOL C3DFXContextIsMainPass(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DEngineContextGetScene_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      return *(a1 + 248) == a2;
    }
  }

  else if (a2)
  {
    return *(a1 + 248) == a2;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DFXContextIsMainPass_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

  return *(a1 + 248) == a2;
}

void C3DFXContextSceneWillChange(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = C3DGetScene(*(a1 + 24));

    C3DRemoveSceneRef(v1, v2);
  }
}

void C3DFXContextSceneDidChange(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    Scene = C3DEngineContextGetScene(a2);
    if (Scene)
    {
      v4 = Scene;
      v5 = *(a1 + 24);

      C3DAddSceneRef(v5, v4);
    }
  }
}

void C3DFXContextBumpTimestamp(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  ++*(a1 + 272);
  C3DFramebufferRegistryBumpTimestamp(*(a1 + 240));
}

uint64_t C3DFXContextGetCurrentPassInstance(void *a1)
{
  if (a1[22] >= a1[27])
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFXContextGetCurrentPassInstance_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1[25] + 8 * a1[22]);
}

uint64_t C3DFXContextGetFirstPassInstanceWithName(uint64_t a1, CFTypeRef cf1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 216);
  if (v3 < 1)
  {
LABEL_5:
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = cf1;
      _os_log_impl(&dword_21BEF7000, v5, OS_LOG_TYPE_DEFAULT, "Warning: C3DFXContextGetFirstPassInstanceWithGroupID: failed to find pass instance with name (%@)", &v7, 0xCu);
    }

    return 0;
  }

  else
  {
    v4 = *(a1 + 200);
    while (!CFEqual(cf1, *(**v4 + 16)))
    {
      v4 += 8;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    return *v4;
  }
}

uint64_t C3DFXContextGetMirrorNode(void *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetScene_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(C3DFXContextGetCurrentPassInstance(a1) + 5104);
}

void C3DFXContextCleanup(void *a1, uint64_t a2)
{
  a1[31] = 0;
  v3 = a1[30];
  if (v3)
  {
    C3DFramebufferRegistryCleanup(v3, a2);
  }

  v4 = a1[33];
  if (v4)
  {
    CFRelease(v4);
    a1[33] = 0;
  }
}

void C3DFXContextSetup(void *a1, uint64_t a2)
{
  context[2] = *MEMORY[0x277D85DE8];
  PointOfView = C3DEngineContextGetPointOfView(a2);
  if (PointOfView)
  {
    Camera = C3DNodeGetCamera(PointOfView);
  }

  else
  {
    Camera = 0;
  }

  FXContext = C3DEngineContextGetFXContext(a2);
  if (FXContext)
  {
    v7 = FXContext;
    __releaseBuiltinTechniques(a1);
    C3DEngineContextSetJitteringStep(a2, 0);
    *(v7 + 248) = 0;
    Scene = C3DEngineContextGetScene(a2);
    if (Scene)
    {
      v9 = Scene;
      if (Camera)
      {
        WantsHDR = C3DCameraGetWantsHDR(Camera);
        v11 = C3DCameraGetMotionBlurIntensity(Camera) > 0.0;
        RenderContext = C3DEngineContextGetRenderContext(a2);
        if (WantsHDR)
        {
          v13 = 2;
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        RenderContext = C3DEngineContextGetRenderContext(a2);
        v11 = 0;
        WantsHDR = 0;
        v13 = 0;
      }

      *(v7 + 112) = *(v7 + 112) & 0xFD | v13;
      Default = *(v7 + 16);
      if (!Default)
      {
        if (RenderContext)
        {
          v16 = v11;
        }

        else
        {
          v16 = 0;
        }

        Default = C3DFXTechniqueCreateDefault(WantsHDR & 1, v16);
        *(v7 + 16) = Default;
      }

      *(v7 + 248) = C3DFXTechniqueGetPassAtIndex(Default, 0);
      RootNode = C3DSceneGetRootNode(v9);
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __C3DFXContextSetup_block_invoke;
      v36[3] = &__block_descriptor_40_e315_q16__0____C3DNode____C3DEntity____CFRuntimeBase_QAQ__v____CFString_____CFString_____CFDictionary_____C3DScene_q_____C3DNode_____C3DNode_____C3DNode_i____C3DMatrix4x4__16f__4_____4__________C3DMatrix4x4_BfQib1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b1b3b1______SS_I_________C3DGeometry_____C3DDeformerStack_f_____8l;
      v36[4] = Mutable;
      C3DNodeApplyHierarchySkippingHiddenNodes(RootNode, v36);
      v19 = *(v7 + 96);
      if (v19)
      {
        if (v19 >= 1)
        {
          v20 = 0;
          do
          {
            CFRelease(*(*(v7 + 80) + 8 * v20++));
          }

          while (v20 < *(v7 + 96));
        }

        free(*(v7 + 80));
        *(v7 + 80) = 0;
      }

      Count = CFArrayGetCount(Mutable);
      *(v7 + 96) = Count;
      if (Count)
      {
        *(v7 + 80) = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
        if (*(v7 + 96) >= 1)
        {
          v22 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v22);
            *(*(v7 + 80) + 8 * v22++) = CFRetain(ValueAtIndex);
          }

          while (v22 < *(v7 + 96));
        }
      }

      CFRelease(Mutable);
      if (Camera && C3DWasLinkedBeforeMajorOSYear2017())
      {
        Technique = C3DCameraGetTechnique(Camera);
        if (Technique)
        {
          DepthOfField = Technique;
          CFRetain(Technique);
        }

        else if (C3DCameraHasDepthOfField(Camera))
        {
          DepthOfField = C3DFXTechniqueCreateDepthOfField();
        }

        else
        {
          DepthOfField = 0;
        }

        v26 = *(v7 + 48);
        if (v26 != DepthOfField)
        {
          if (v26)
          {
            CFRelease(v26);
            *(v7 + 48) = 0;
          }

          if (DepthOfField)
          {
            v27 = CFRetain(DepthOfField);
          }

          else
          {
            v27 = 0;
          }

          *(v7 + 48) = v27;
        }

        if (DepthOfField)
        {
          CFRelease(DepthOfField);
        }
      }

      v28 = C3DEngineContextGetScene(a2);
      C3DSceneClearRegisteredCIFilterTechniques(v28);
      RegisteredNodeFilters = C3DSceneGetRegisteredNodeFilters(v9);
      if (RegisteredNodeFilters)
      {
        v30 = RegisteredNodeFilters;
        v31 = CFSetGetCount(RegisteredNodeFilters);
        v32 = CFDictionaryCreateMutable(0, v31, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        context[0] = v32;
        context[1] = a2;
        CFSetApplyFunction(v30, _addCIFilterSubPasses, context);
        CFRelease(v32);
      }

      C3DEngineContextSetJitteringEnabled(a2, 0);
      if (C3DEngineContextGetAuthoringEnvironment(a2, 0))
      {
        Authoring = C3DFXTechniqueCreateAuthoring();
        v34 = *(v7 + 88);
        if (v34 != Authoring)
        {
          if (v34)
          {
            CFRelease(v34);
            *(v7 + 88) = 0;
          }

          if (Authoring)
          {
            v35 = CFRetain(Authoring);
          }

          else
          {
            v35 = 0;
          }

          *(v7 + 88) = v35;
        }

        if (Authoring)
        {
          CFRelease(Authoring);
        }
      }

      C3DFXContextTechniquesDidChange(v7, a2);
    }
  }

  else
  {
    v14 = scn_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      C3DFXContextSetup_cold_1();
    }
  }
}

void __releaseBuiltinTechniques(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  if (C3DWasLinkedBeforeMajorOSYear2017())
  {
    v4 = a1[6];
    if (v4)
    {
      CFRelease(v4);
      a1[6] = 0;
    }
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
    a1[7] = 0;
  }

  v6 = a1[11];
  if (v6)
  {
    CFRelease(v6);
    a1[11] = 0;
  }
}

uint64_t __C3DFXContextSetup_block_invoke(uint64_t a1, uint64_t a2)
{
  Light = C3DNodeGetLight(a2);
  if (Light)
  {
    v5 = Light;
    Technique = C3DLightGetTechnique(Light);
    if (Technique)
    {
      CFArrayAppendValue(*(a1 + 32), Technique);
    }

    else if (C3DLightGetCastsShadow(v5) && C3DLightGetUsesDeferredShadows(v5))
    {
      if ((C3DLightGetType(v5) & 0xFFFFFFFD) == 1)
      {
        SpotShadow = C3DFXTechniqueCreateSpotShadow(a2);
        CFArrayAppendValue(*(a1 + 32), SpotShadow);
        CFRelease(SpotShadow);
      }

      else
      {
        v8 = scn_default_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __C3DFXContextSetup_block_invoke_cold_1();
        }
      }
    }
  }

  return 0;
}

uint64_t C3DFXContextGetFramebufferRegistry(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFXContextSetPostProcessTechnique_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 240);
}

uint64_t C3DFXContextGetOutputColorTexture(uint64_t a1, __n128 *a2)
{
  CurrentResolvedFramebuffer = _C3DFXContextGetCurrentResolvedFramebuffer(a1, a2, 1, 0);
  if (!CurrentResolvedFramebuffer)
  {
    return 0;
  }

  v4 = CurrentResolvedFramebuffer;
  RendererContextGL = C3DEngineContextGetRendererContextGL(a2);
  C3DRendererContextRestoreFramebuffer(RendererContextGL);
  RenderTarget = C3DFramebufferGetRenderTarget(v4, 0);
  if (!RenderTarget)
  {
    return 0;
  }

  return C3DRenderTargetGetTexture(RenderTarget);
}

uint64_t _C3DFXContextGetCurrentResolvedFramebuffer(uint64_t a1, __n128 *a2, int a3, int a4)
{
  FramebufferForPass = *(a1 + 152);
  if (!FramebufferForPass || (!a4 ? (v9 = 0) : (v9 = 2), ((v9 | a3) & ~(*(a1 + 168) | (2 * *(a1 + 169)))) != 0))
  {
    v10 = *(a1 + 144);
    v11 = *(a1 + 160);
    if (!v11 && (v12 = scn_default_log(), os_log_type_enabled(v12, OS_LOG_TYPE_FAULT)))
    {
      C3DFXContextIsMainPass_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
      if (v10)
      {
LABEL_9:
        RendererContextGL = C3DEngineContextGetRendererContextGL(a2);
        if (C3DFramebufferGetSampleCount(v10) < 2)
        {
          FramebufferForPass = v10;
LABEL_22:
          *(a1 + 152) = FramebufferForPass;
LABEL_23:
          if (!a3)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        if (C3DFramebufferRegistryGetEnableRecycling())
        {
          PassIdentifierForPass = 0;
        }

        else
        {
          v22 = *(a1 + 288);
          *(a1 + 288) = v22 + 1;
          PassIdentifierForPass = _createPassIdentifierForPass(v11, RendererContextGL, 1, v22);
          CFArrayAppendValue(*(a1 + 280), PassIdentifierForPass);
          CFRelease(PassIdentifierForPass);
        }

        FramebufferForPass = *(a1 + 152);
        if (!FramebufferForPass)
        {
          FramebufferForPass = C3DFXContextGetFramebufferForPass(a1, v11, a2, 1, PassIdentifierForPass);
        }

        v23 = C3DEngineContextGetRendererContextGL(a2);
        C3DRendererContextSetEnableWriteToDepth(v23, 1);
        if (a3)
        {
          v24 = *(a1 + 168) == 0;
          if (!a4)
          {
LABEL_18:
            v25 = 0;
            goto LABEL_21;
          }
        }

        else
        {
          v24 = 0;
          if (!a4)
          {
            goto LABEL_18;
          }
        }

        v25 = *(a1 + 169) == 0;
LABEL_21:
        C3DRendererContextResolveFramebuffer(RendererContextGL, FramebufferForPass, v10, v24, v25, 0);
        if (!FramebufferForPass)
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }
    }

    else if (v10)
    {
      goto LABEL_9;
    }

    FramebufferForPass = 0;
    if (!a3)
    {
LABEL_25:
      if (a4)
      {
        *(a1 + 169) = 1;
      }

      return FramebufferForPass;
    }

LABEL_24:
    *(a1 + 168) = 1;
    goto LABEL_25;
  }

  return FramebufferForPass;
}

uint64_t C3DFXContextGetOutputDepthTexture(uint64_t a1, __n128 *a2)
{
  CurrentResolvedFramebuffer = _C3DFXContextGetCurrentResolvedFramebuffer(a1, a2, 0, 1);
  if (!CurrentResolvedFramebuffer)
  {
    return 0;
  }

  v4 = CurrentResolvedFramebuffer;
  RendererContextGL = C3DEngineContextGetRendererContextGL(a2);
  C3DRendererContextRestoreFramebuffer(RendererContextGL);
  RenderTarget = C3DFramebufferGetRenderTarget(v4, 4);
  if (!RenderTarget)
  {
    return 0;
  }

  return C3DRenderTargetGetTexture(RenderTarget);
}

uint64_t C3DFXContextGetOutputFramebuffer(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFXContextSetPostProcessTechnique_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 144);
}

void _C3DFXViewportDidChange(__n128 *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  FXContext = C3DEngineContextGetFXContext(a1);
  C3DFramebufferRegistryViewportDidResize(FXContext[30], a1);
  v11 = FXContext[2];
  if (v11)
  {
    _reshape(v11, a1);
  }

  v12 = FXContext[5];
  if (v12)
  {
    _reshape(v12, a1);
  }

  v13 = FXContext[3];
  if (v13)
  {
    _reshape(v13, a1);
  }

  v14 = FXContext[7];
  if (v14)
  {
    _reshape(v14, a1);
  }

  v15 = FXContext[11];
  if (v15)
  {
    _reshape(v15, a1);
  }

  v16 = FXContext[6];
  if (v16)
  {
    _reshape(v16, a1);
  }

  v17 = FXContext[4];
  if (v17)
  {
    _reshape(v17, a1);
  }

  v18 = FXContext[9];
  if (v18)
  {
    _reshape(v18, a1);
  }

  if (FXContext[12] >= 1)
  {
    v19 = 0;
    do
    {
      _reshape(*(FXContext[10] + 8 * v19++), a1);
    }

    while (v19 < FXContext[12]);
  }
}

void _reshape(uint64_t a1, __n128 *a2)
{
  PassCount = C3DFXTechniqueGetPassCount(a1);
  C3DEngineContextGetViewport(a2);
  if (PassCount >= 1)
  {
    for (i = 0; i != PassCount; ++i)
    {
      PassAtIndex = C3DFXTechniqueGetPassAtIndex(a1, i);
      if ((*(PassAtIndex + 187) & 8) != 0)
      {
        v8[0] = PassAtIndex;
        v8[1] = a1;
        v8[2] = 0;
        v8[3] = a2;
        v8[4] = 0;
        v8[5] = 0;
        v7 = *(PassAtIndex + 280);
        v8[6] = 0xBFF0000000000000;
        v8[7] = v7;
        memset(&v8[8], 0, 24);
        C3DFXPassReshape(v8);
      }
    }
  }
}

void C3DFXContextResolveNodeReferences(void *a1, uint64_t a2)
{
  RootNode = C3DSceneGetRootNode(a2);
  v4 = RootNode;
  v5 = a1[61];
  if (v5)
  {
    NodeWithName = C3DNodeGetNodeWithName(RootNode, v5);
    C3DFXPassSetRootNode(a1, NodeWithName);
    v7 = a1[61];
    if (v7)
    {
      CFRelease(v7);
      a1[61] = 0;
    }
  }

  v8 = a1[62];
  if (v8)
  {
    v9 = C3DNodeGetNodeWithName(v4, v8);
    C3DFXPassSetMirrorNode(a1, v9);
    v10 = a1[62];
    if (v10)
    {
      CFRelease(v10);
      a1[62] = 0;
    }
  }

  v11 = a1[63];
  if (v11)
  {
    v12 = C3DNodeGetNodeWithName(v4, v11);
    C3DFXPassSetPointOfView(a1, v12);
    v13 = a1[63];
    if (v13)
    {
      CFRelease(v13);
      a1[63] = 0;
    }
  }
}

void C3DEngineContextRenderSubTechnique(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v46[5] = *MEMORY[0x277D85DE8];
  if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DEngineContextGetStats_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    C3DEngineContextRenderSubTechnique_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  if (!a2)
  {
    v24 = scn_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      C3DFXTechniqueAppendPass_cold_1(v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }

  if ((*(a2 + 88) & 2) != 0)
  {
    v32 = scn_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderSubTechnique_cold_4(v32, v33, v34, v35, v36, v37, v38, v39);
    }
  }

  *(a2 + 88) |= 2u;
  PassCount = C3DFXTechniqueGetPassCount(a2);
  if (PassCount >= 1)
  {
    v41 = PassCount;
    for (i = 0; i != v41; ++i)
    {
      PassAtIndex = C3DFXTechniqueGetPassAtIndex(a2, i);
      if ((C3DFXPassIsTopLevel(PassAtIndex) & 1) == 0)
      {
        if (*(PassAtIndex + 24) == 3)
        {
          v44 = scn_default_log();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
          {
            C3DEngineContextRenderSubTechnique_cold_5(v45, v46, v44);
          }
        }

        __C3DEngineContextRenderPassInstance(a1, a3, PassAtIndex, a4, 0, 0, 0);
      }
    }
  }

  *(a2 + 88) &= ~2u;
}

void __C3DEngineContextRenderPassInstance(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t Player, int a5, int a6, uint64_t a7)
{
  if (!a1 && (v14 = scn_default_log(), os_log_type_enabled(v14, OS_LOG_TYPE_FAULT)))
  {
    C3DEngineContextGetStats_cold_1(v14, v15, v16, v17, v18, v19, v20, v21);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v22 = scn_default_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    C3DEngineContextRenderSubTechnique_cold_2(v22, v23, v24, v25, v26, v27, v28, v29);
  }

LABEL_6:
  if (a3 || (v30 = scn_default_log(), !os_log_type_enabled(v30, OS_LOG_TYPE_FAULT)))
  {
    if (!a6)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  C3DFXContextIsMainPass_cold_2(v30, v31, v32, v33, v34, v35, v36, v37);
  if (a6)
  {
LABEL_9:
    Player = C3DAnimationNodeGetPlayer(a3);
  }

LABEL_10:
  if (Player)
  {
    Node = C3DRendererElementGetNode(Player);
  }

  else
  {
    Node = 0;
  }

  v39 = *(a3 + 232);
  if (v39 && !v39(a3, Node))
  {
    return;
  }

  v129 = a5;
  v137 = Node;
  v40 = *(a3 + 40);
  if (!v40)
  {
    v41 = scn_default_log();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
    {
      C3DFXTechniqueAppendPass_cold_1(v41, v42, v43, v44, v45, v46, v47, v48);
    }
  }

  v138 = v40;
  v135 = a7;
  v136 = a2;
  FXContext = C3DEngineContextGetFXContext(a1);
  SceneTime = C3DEngineContextGetSceneTime(a1);
  if (a6)
  {
    *(FXContext + 160) = a3;
  }

  DrawInstruction = C3DFXPassGetDrawInstruction(a3);
  Program = C3DFXPassGetProgram(a3);
  RendererContextGL = C3DEngineContextGetRendererContextGL(a1);
  RendererElementState = C3DEngineContextGetRendererElementState(a1);
  ResourceManager = C3DEngineContextGetResourceManager(a1);
  CString = SCNStringGetCString(*(a3 + 16));
  if (CString)
  {
    v57 = CString;
  }

  else
  {
    v57 = "NoName";
  }

  C3DRendererContextPushGroupMarker(RendererContextGL, v57);
  C3DRendererElementStateSetActiveTextureUnit(RendererElementState, 0);
  if (Program)
  {
    _ZF = 0;
  }

  else
  {
    _ZF = DrawInstruction == 2;
  }

  v59 = !_ZF;
  v131 = DrawInstruction;
  v132 = *(a3 + 184);
  v134 = v59;
  if (_ZF)
  {
    C3DRendererElementStateBindProgramRendererElement(RendererElementState, Player, a1, a3);
    Program = C3DRendererElementStateGetCurrentProgram(RendererElementState);
  }

  v60 = RendererElementState;
  v139 = RendererElementState;
  v61 = v138;
  if (Program)
  {
    ProgramResident = C3DResourceManagerMakeProgramResident(ResourceManager, Program, RendererContextGL);
    if (ProgramResident)
    {
      v63 = ProgramResident;
      C3DRendererContextBindProgramObject(RendererContextGL, ProgramResident);
    }

    else
    {
      v64 = scn_default_log();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        __C3DEngineContextRenderPassInstance_cold_5();
      }

      v63 = 0;
      v60 = v139;
    }
  }

  else
  {
    v63 = 0;
  }

  v65 = *(a3 + 184);
  if ((v65 & 0x8000000) == 0)
  {
    *(a3 + 184) = v65 | 0x8000000;
    C3DEngineContextGetFXContext(a1);
    if (v63)
    {
      UniformLocationOfSymbolNamed = C3DFXGLSLProgramObjectGetUniformLocationOfSymbolNamed(v63, @"u_inverseResolution");
      if (UniformLocationOfSymbolNamed != -1)
      {
        v67 = UniformLocationOfSymbolNamed;
        v68 = C3DFXPassAddInputWithName(a3, @"u_inverseResolution");
        UniformIndex = C3DFXGLSLProgramObjectGetUniformIndex(v63, v67);
        C3DFXPassInputSetUniformIndex(v68, UniformIndex);
        C3DFXPassInputSetSemantic(v68, 18);
      }

      v70 = C3DFXGLSLProgramObjectGetUniformLocationOfSymbolNamed(v63, @"u_time");
      if (v70 != -1)
      {
        v71 = v70;
        v72 = C3DFXPassAddInputWithName(a3, @"u_time");
        v73 = C3DFXGLSLProgramObjectGetUniformIndex(v63, v71);
        C3DFXPassInputSetUniformIndex(v72, v73);
        C3DFXPassInputSetSemantic(v72, 19);
      }
    }

    v140.n128_u64[0] = a3;
    v140.n128_u64[1] = v138;
    v141 = v137;
    v142 = a1;
    v143 = 0;
    v144 = v63;
    v74 = *(a3 + 280);
    v145 = 0xBFF0000000000000;
    v146 = v74;
    v148 = 0;
    v147 = 0;
    v149 = 0;
    C3DFXPassSetup(&v140);
    C3DEngineContextGetViewport(a1);
    C3DFXPassReshape(&v140);
    v60 = v139;
  }

  if (C3DFramebufferRegistryGetEnableRecycling())
  {
    PassIdentifierForPass = 0;
  }

  else
  {
    v76 = *(FXContext + 288);
    *(FXContext + 288) = v76 + 1;
    PassIdentifierForPass = _createPassIdentifierForPass(a3, RendererContextGL, 0, v76);
    CFArrayAppendValue(*(FXContext + 280), PassIdentifierForPass);
    CFRelease(PassIdentifierForPass);
  }

  v133 = a6;
  if ((*(a3 + 185) & 0x10) == 0)
  {
    v77 = 0;
    if (!a6)
    {
      goto LABEL_83;
    }

LABEL_78:
    *(FXContext + 144) = v77;
    goto LABEL_83;
  }

  v78 = C3DFXPassRequireFBO(a3, a6, v129);
  v79 = C3DEngineContextGetRendererContextGL(a1);
  v80 = v79;
  if (v78)
  {
    FramebufferForPass = C3DFXContextGetFramebufferForPass(FXContext, a3, a1, 0, PassIdentifierForPass);
    if (FramebufferForPass)
    {
      v77 = FramebufferForPass;
      C3DRendererContextBindFramebuffer(v80, FramebufferForPass);
      Size = C3DFramebufferGetSize(v77);
      goto LABEL_58;
    }
  }

  else
  {
    BoundFramebuffer = C3DRendererContextGetBoundFramebuffer(v79);
    if (BoundFramebuffer)
    {
      C3DFramebufferRegistryTrackFBO(*(FXContext + 240), BoundFramebuffer, PassIdentifierForPass);
    }
  }

  Viewport = C3DEngineContextGetViewport(a1);
  v77 = 0;
  __asm { FMOV            V1.2S, #1.0 }

  Size = COERCE_DOUBLE(vmaxnm_f32(*&vextq_s8(Viewport, Viewport, 8uLL), _D1));
LABEL_58:
  v130 = Size;
  if (*&Size == 0.0 || *(&Size + 1) == 0.0)
  {
    v89 = scn_default_log();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      __C3DEngineContextRenderPassInstance_cold_6();
    }
  }

  v140 = C3DEngineContextGetViewport(a1);
  if (C3DFXPassGetHasCustomViewport(a3))
  {
    v140 = C3DFXPassGetViewport(a3);
  }

  C3DFXPassGetSubViewport(a3, &v140);
  C3DRendererContextSetViewport(v140);
  C3DEngineContextSetDrawableSize(a1, v130);
  v60 = v139;
  if ((v78 & 1) != 0 || C3DEngineContextGetClearsOnDraw(a1))
  {
    v90 = *(a3 + 184);
    v91 = (v90 << 7) & 0x100 | ((v90 & 1) << 14);
    if ((v90 & 4) != 0 || (v90 & 0xA) == 0xA)
    {
      v91 |= 0x400u;
    }

    else if (!v91)
    {
      goto LABEL_76;
    }

    MainClearColor = C3DEngineContextGetMainClearColor(a1);
    if ((C3DWasLinkedBeforeMajorOSYear2016() & 1) == 0)
    {
      Scene = C3DEngineContextGetScene(a1);
      BackgroundEffectSlot = C3DSceneGetBackgroundEffectSlot(Scene, 0);
      if (BackgroundEffectSlot)
      {
        ColorIfApplicable = C3DEffectSlotGetColorIfApplicable(BackgroundEffectSlot);
        if (ColorIfApplicable)
        {
          MainClearColor = *ColorIfApplicable;
        }
      }
    }

    *&v150 = C3DFXPassGetClearColor(a3, MainClearColor);
    *(&v150 + 1) = v96;
    v97 = C3DEngineContextGetRendererContextGL(a1);
    C3DRendererContextClear(v97, v91, &v150);
    v60 = v139;
  }

LABEL_76:
  a6 = v133;
  if (v133)
  {
    v61 = v138;
    goto LABEL_78;
  }

  v61 = v138;
  if (v77)
  {
    v98 = scn_default_log();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_FAULT))
    {
      __C3DEngineContextRenderPassInstance_cold_7(v98, v99, v100, v101, v102, v103, v104, v105);
    }

    v60 = v139;
  }

LABEL_83:
  v140.n128_u64[0] = a3;
  v140.n128_u64[1] = v61;
  v141 = v137;
  v142 = a1;
  v143 = v136 + 80;
  v144 = v63;
  v145 = *&SceneTime;
  v146 = *(a3 + 280);
  v147 = Player;
  v148 = v135;
  v149 = 0;
  C3DFXPassWillExecute(&v140);
  if (v63)
  {
    C3DGLSLProfileBindPassInputs(a1, v63, a3, v61, (v132 & 0x8000000) == 0);
  }

  v106 = v134;
  if (!v134)
  {
    v108 = 0;
    goto LABEL_94;
  }

  BlendStates = C3DFXPassGetBlendStates(a3);
  C3DRendererContextSetBlendStates(RendererContextGL, BlendStates);
  v108 = BlendStates != 0;
  if (BlendStates)
  {
    C3DRendererContextPushBlendStatesOverride(RendererContextGL);
  }

  RasterizerStates = C3DFXPassGetRasterizerStates(a3);
  C3DRendererContextSetRasterizerStates(RendererContextGL, RasterizerStates);
  if (v131 > 2)
  {
    switch(v131)
    {
      case 3:
        goto LABEL_92;
      case 4:
        if (v63)
        {
          C3DEngineContextDrawFullScreenQuad(a1);
          a6 = v133;
        }

        else
        {
          a6 = v133;
          if ((__C3DEngineContextRenderPassInstance_done & 1) == 0)
          {
            __C3DEngineContextRenderPassInstance_done = 1;
            v128 = scn_default_log();
            if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
            {
              __C3DEngineContextRenderPassInstance_cold_8();
            }
          }
        }

        C3DRendererContextUnbindTextureUnits(RendererContextGL);
        if (!v63)
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      case 6:
LABEL_92:
        C3DEngineContextGetSystemTime(a1);
        _drawScene(a1, v136);
        goto LABEL_105;
    }

    goto LABEL_103;
  }

  if (v131 == 1)
  {
    C3DFXPassExecute(&v140);
    goto LABEL_105;
  }

  if (v131 == 2)
  {
    v106 = v134;
    v60 = v139;
    a6 = v133;
LABEL_94:
    C3DRendererElementStateDrawRendererElement(v60, Player, a1, a3, v106);
    if (!v63)
    {
      goto LABEL_107;
    }

    goto LABEL_106;
  }

LABEL_103:
  v110 = scn_default_log();
  if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
  {
    __C3DEngineContextRenderPassInstance_cold_9();
  }

LABEL_105:
  a6 = v133;
  if (v63)
  {
LABEL_106:
    C3DRendererContextUnbindProgramObject(RendererContextGL);
  }

LABEL_107:
  if (v108)
  {
    C3DRendererContextPopBlendStatesOverride(RendererContextGL);
  }

  if ((*(a3 + 186) & 2) != 0)
  {
    RenderCallbacks = C3DEngineContextGetRenderCallbacks(a1);
    v112 = *(RenderCallbacks + 16);
    if (v112)
    {
      if (RendererContextGL)
      {
        v113 = RenderCallbacks;
        C3DRendererContextResetToDefaultStates(RendererContextGL);
        v112 = *(v113 + 16);
      }

      v112(a1);
    }

    UserInfo = C3DEngineContextGetUserInfo(a1);
    if (UserInfo)
    {
      if ([UserInfo showsStatistics])
      {
        AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(a1, 0);
        if (AuthoringEnvironment)
        {
          C3DAuthoringEnvironmentDrawStats(AuthoringEnvironment);
        }
      }
    }
  }

  if (a6)
  {
    CurrentResolvedFramebuffer = v77;
    if ((*(a3 + 184) & 0x10) != 0)
    {
      CurrentResolvedFramebuffer = _C3DFXContextGetCurrentResolvedFramebuffer(FXContext, a1, 1, 1);
    }

    if (v77)
    {
      v117 = C3DEngineContextGetRendererContextGL(a1);
      C3DRendererContextUnbindFramebuffer(v117);
      C3DFramebufferRegistryReleaseFramebuffer(*(FXContext + 240), v77);
      if (CurrentResolvedFramebuffer != v77)
      {
        C3DFramebufferRegistryReleaseFramebuffer(*(FXContext + 240), CurrentResolvedFramebuffer);
      }
    }

    if (CurrentResolvedFramebuffer)
    {
      v118 = *(a3 + 184);
      if ((v118 & 0x800000) != 0)
      {
        RenderTarget = C3DFramebufferGetRenderTarget(CurrentResolvedFramebuffer, 0);
        C3DFXContextSetCurrentColor(FXContext, RenderTarget);
        v118 = *(a3 + 184);
      }

      if ((v118 & 0x1000000) != 0)
      {
        v120 = C3DFramebufferGetRenderTarget(CurrentResolvedFramebuffer, 4);
        C3DFXContextSetCurrentDepth(FXContext, v120);
      }
    }

    *(FXContext + 168) = 0;
    *(FXContext + 144) = 0;
    *(FXContext + 152) = 0;
  }

  C3DFXPassDidExecute(&v140);
  C3DRendererContextPopGroupMarker();
  v121 = *(a3 + 520);
  if (v121 >= 1)
  {
    for (i = 0; i < v121; ++i)
    {
      v123 = *(*(a3 + 512) + 8 * i);
      if (*(v123 + 16) == 1 && (*(v123 + 80) & 3) == 0)
      {
        C3DFramebufferRegistryReleaseTextureWithName(*(FXContext + 240), *(v123 + 56));
        v121 = *(a3 + 520);
      }
    }
  }

  v124 = *(a3 + 440);
  if (v124)
  {
    v125 = 0;
    v126 = 8;
    do
    {
      v127 = *(*(a3 + 432) + v126);
      if (v127)
      {
        C3DFramebufferRegistryReleaseTextureWithName(*(FXContext + 240), v127);
        v124 = *(a3 + 440);
      }

      ++v125;
      v126 += 64;
    }

    while (v125 < v124);
  }
}

uint64_t __appendTechnique(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v8 = a3;
  *(&v83[1] + 4) = *MEMORY[0x277D85DE8];
  PassCount = C3DFXTechniqueGetPassCount(a3);
  result = C3DEngineContextGetRenderContext(a1);
  v68 = result == 0;
  v13 = *(v8 + 88) | 2;
  *(v8 + 88) = v13;
  if (PassCount >= 1)
  {
    v14 = result;
    v15 = 0;
    v66 = a4;
    v67 = v8;
    v70 = a6;
    v71 = a1;
    v64 = result;
    v65 = PassCount;
    while (1)
    {
      result = C3DFXTechniqueGetPassAtIndex(v8, v15);
      v16 = result;
      if (a6 && *(result + 28) != a6)
      {
        goto LABEL_85;
      }

      if ((*(result + 187) & 8) == 0)
      {
        v77 = 0;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v72[0] = result;
        v72[1] = v8;
        if (a4)
        {
          Node = C3DRendererElementGetNode(a4);
        }

        else
        {
          Node = 0;
        }

        *&v73 = Node;
        *(&v73 + 1) = a1;
        v74 = 0uLL;
        v18 = v16[35];
        *&v75 = 0xBFF0000000000000;
        *(&v75 + 1) = v18;
        v76 = 0uLL;
        LOWORD(v77) = 0;
        C3DFXPassInitialize(v72, v68);
        Scene = C3DEngineContextGetScene(a1);
        C3DFXContextResolveNodeReferences(v16, Scene);
      }

      result = C3DFXPassIsTopLevel(v16);
      if (!result)
      {
        goto LABEL_85;
      }

      v20 = a4 ? C3DRendererElementGetNode(a4) : 0;
      v21 = v16[29];
      if (v21)
      {
        result = v21(v16, v20);
        if (!result)
        {
          goto LABEL_85;
        }
      }

      v22 = C3DAllocatorNew(*(a2 + 208));
      bzero(v22, 0x1410uLL);
      *(v22 + 1) = 0;
      *(v22 + 2) = a5;
      *v22 = v16;
      MirrorNode = C3DFXPassGetMirrorNode(v16);
      *(v22 + 638) = MirrorNode;
      *(v22 + 320) = 0u;
      if (a5 && !MirrorNode)
      {
        *(v22 + 638) = *(a5 + 5104);
      }

      *(v22 + 2) = 0uLL;
      v24 = (v22 + 32);
      *(v22 + 3) = 0uLL;
      *(v22 + 4) = 0uLL;
      v22[24] = 1;
      v22[26] = 0;
      if (C3DFXPassIsViewDependant(v16))
      {
        PreferredRenderMode = C3DEngineContextGetPreferredRenderMode(a1);
        v22[27] = PreferredRenderMode;
        if (PreferredRenderMode)
        {
          LOBYTE(PreferredRenderMode) = C3DEngineContextGetPreferredMultiVertexOutputStreamGenerator(a1);
        }

        v22[28] = PreferredRenderMode;
        EyeCount = C3DEngineContextGetEyeCount(a1);
      }

      else
      {
        *(v22 + 27) = 0;
        EyeCount = 1;
      }

      v22[24] = EyeCount;
      if (v14)
      {
        if (*(a2 + 248) == v16 && [-[SCNMTLRenderContext textureTarget](v14) textureType] == 5)
        {
          v22[26] = 1;
          v22[24] = 6;
          if (([(SCNMTLRenderContext *)v14 features]& 0x20) != 0)
          {
            v22[27] = 1;
            v22[28] = C3DEngineContextGetPreferredMultiVertexOutputStreamGenerator(a1);
          }
        }

        v27 = [-[SCNMTLRenderContext textureTarget](v14) textureType];
        if (SCNMTLTextureTypeIsArray(v27))
        {
          v22[24] = [-[SCNMTLRenderContext textureTarget](v14) arrayLength];
        }

        if (C3DFXPassGetDrawOnlyShadowCaster(v16))
        {
          PointOfView = C3DFXPassGetPointOfView(v16);
          if (PointOfView && (Light = C3DNodeGetLight(PointOfView)) != 0 && (v30 = Light, C3DLightSupportsShadowCascades(Light)))
          {
            ShadowCascadeCount = C3DLightGetShadowCascadeCount(v30);
            if (ShadowCascadeCount < 2)
            {
              goto LABEL_39;
            }
          }

          else
          {
            LOBYTE(ShadowCascadeCount) = 1;
          }

          v22[24] = ShadowCascadeCount;
        }
      }

LABEL_39:
      v32 = *v22;
      v33 = *(*v22 + 24);
      if (v33 == 6 || v33 == 3)
      {
        v35 = C3DEngineContextGetScene(v71);
        EnginePipeline = C3DSceneGetEnginePipeline(v35);
        RendererElementStore = C3DEnginePipelineGetRendererElementStore(EnginePipeline);
        ElementCount = C3DRendererElementStoreGetElementCount(RendererElementStore);
        C3DCullingContextInitialize(v22 + 5, v71, v22, ElementCount);
        if (*(v32 + 24) == 6)
        {
          v39 = *(v32 + 464);
          if (v39)
          {
            Count = CFArrayGetCount(v39);
            if (Count >= 1)
            {
              v41 = Count;
              for (i = 0; i != v41; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(*(v32 + 464), i);
                if ((ValueAtIndex[13].i8[13] & 0x10) == 0)
                {
                  C3DCullingContextPushRenderableElementsToVisible(v22 + 5, *(a2 + 120), ValueAtIndex);
                }
              }
            }
          }
        }

        else
        {
          C3DCullingContextCull((v22 + 80));
        }

        if (C3DFXPassRequiresLighting(v32))
        {
          LightingSystem = C3DSceneGetLightingSystem(v35);
          if (C3DFXPassGetUpdatesMainFrameBuffer(v32) && !C3DFXPassGetMirrorNode(v32))
          {
            v63 = vcvt_f32_f64(*(v22 + 4824));
            if (!C3DEngineContextGetPointOfCulling(v71) && (*(a2 + 121) & 0x20) != 0)
            {
              v45 = v63;
              if ((*(a2 + 272) - *(a2 + 312)) <= 2)
              {
                v62 = vneg_f32(vrev64_s32(*(a2 + 304)));
                v45.i32[1] = v62.i32[1];
                v45 = vbsl_s8(vcgt_f32(v62, v63), __PAIR64__(v63.u32[1], v62.u32[0]), v45);
              }
            }

            else
            {
              v45 = v63;
            }

            C3DLightingSystemSetMainRenderingFrustums(LightingSystem, v22 + 6, *v45.i32, *&v45.i32[1], v22[4708], v22 + 42, v22 + 174);
            C3DLightingSystemAppendForwardShadowingTechniques(LightingSystem, a2, v71);
          }
        }

        if (v22[24])
        {
          v46 = 0;
          v47 = (v22 + 5000);
          do
          {
            v48 = *v47;
            v47 += 4;
            C3DArraySetCount(v24[v46++], v48);
          }

          while (v46 < v22[24]);
        }
      }

      v49 = *v24;
      if (*v24 && v22[5088] == 1 && (*(a2 + 121) & 4) == 0)
      {
        v50 = C3DEngineContextGetScene(v71);
        if (!v50)
        {
          v51 = scn_default_log();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
          {
            __appendTechnique_cold_1(v82, v83, v51);
          }
        }

        v52 = C3DSceneGetEnginePipeline(v50);
        if (!v52)
        {
          v53 = scn_default_log();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
          {
            __appendTechnique_cold_2(v80, &v81, v53);
          }
        }

        v54 = C3DEnginePipelineGetRendererElementStore(v52);
        if (!v54)
        {
          v52 = scn_default_log();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
          {
            __appendTechnique_cold_3(v78, &v79, v52);
          }
        }

        ValuesPtr = C3DArrayGetValuesPtr(v49);
        v56 = C3DArrayGetCount(v49);
        if (v56 >= 1)
        {
          v57 = v56;
          do
          {
            v58 = *ValuesPtr++;
            v52 = v52 & 0xFFFFFFFF00000000 | v58;
            Element = C3DRendererElementStoreGetElement(v54, v52);
            v60 = *(Element + 40);
            if (v60)
            {
              v61 = Element;
              if (v60 != C3DFXTechniqueGetNullTechnique() && (C3DFXTechniqueIsBeingRendered(v60) & 1) == 0)
              {
                __appendTechnique(v71, a2, v60, v61, v22, v70);
              }
            }

            --v57;
          }

          while (v57);
        }
      }

      *(v22 + 1) = C3DFXContextAddPassInstance(a2, v22);
      if (C3DFXContextIsMainPass(a2, v16))
      {
        *(a2 + 184) = *(v22 + 1);
      }

      a4 = v66;
      result = C3DAnimationNodeSetPlayer(v16, v66);
      v8 = v67;
      a6 = v70;
      a1 = v71;
      v14 = v64;
      PassCount = v65;
LABEL_85:
      if (++v15 == PassCount)
      {
        v13 = *(v8 + 88);
        break;
      }
    }
  }

  *(v8 + 88) = v13 & 0xFD;
  return result;
}

void C3DEngineContextRenderMainTechnique(__n128 *a1)
{
  *&v56[5] = *MEMORY[0x277D85DE8];
  FXContext = C3DEngineContextGetFXContext(a1);
  Stats = C3DEngineContextGetStats(a1);
  RenderContext = C3DEngineContextGetRenderContext(a1);
  RendererContextGL = C3DEngineContextGetRendererContextGL(a1);
  if (!(RenderContext | RendererContextGL))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderMainTechnique_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  *(FXContext + 288) = 0;
  CFArrayRemoveAllValues(*(FXContext + 280));
  if (C3DEngineContextIsJitteringEnabled(a1))
  {
    JitteringStep = C3DEngineContextGetJitteringStep(a1);
    if (JitteringStep)
    {
      v15 = JitteringStep;
      C3DFXPassSetEnabled(**(*(FXContext + 40) + 80), 0);
      v16 = *(*(*(FXContext + 40) + 80) + 8);
      if (v15)
      {
        C3DFXPassSetEnabled(v16, 0);
        v19 = 1;
LABEL_16:
        C3DFXPassSetEnabled(*(*(*(FXContext + 40) + 80) + 16), v19);
        UpdatesMainFrameBuffer = C3DFXPassGetUpdatesMainFrameBuffer(*(*(*(FXContext + 40) + 80) + 24));
        C3DFXPassSetEnabled(*(*(*(FXContext + 40) + 80) + 24), UpdatesMainFrameBuffer);
        if (!RendererContextGL)
        {
          goto LABEL_20;
        }

        goto LABEL_17;
      }

      v17 = 1;
    }

    else
    {
      C3DFXPassSetEnabled(**(*(FXContext + 40) + 80), 1);
      v16 = *(*(*(FXContext + 40) + 80) + 8);
      v17 = 0;
    }

    C3DFXPassSetEnabled(v16, v17);
    v19 = 0;
    goto LABEL_16;
  }

  if (*(FXContext + 40))
  {
    v18 = 4;
    do
    {
      C3DFXPassSetEnabled(**(*(FXContext + 40) + 80), 0);
      --v18;
    }

    while (v18);
  }

  if (!RendererContextGL)
  {
LABEL_20:
    v50 = (FXContext + 121);
    if (*(FXContext + 121))
    {
      goto LABEL_22;
    }

LABEL_21:
    C3DFXContextSetup(FXContext, a1);
    v30 = 0;
    *(FXContext + 121) |= 1u;
    goto LABEL_23;
  }

LABEL_17:
  Viewport = C3DEngineContextGetViewport(a1);
  Viewport.n128_u64[0] = vextq_s8(Viewport, Viewport, 8uLL).u64[0];
  __asm { FMOV            V1.2S, #1.0 }

  v27 = vbsl_s8(vcgt_f32(_D1, Viewport.n128_u64[0]), _D1, Viewport.n128_u64[0]);
  v28 = vmvn_s8(vceq_f32(*(FXContext + 104), v27));
  if (((v28.i32[0] | v28.i32[1]) & 1) == 0)
  {
    goto LABEL_20;
  }

  v29 = *(FXContext + 121);
  *(FXContext + 104) = v27;
  v50 = (FXContext + 121);
  if ((v29 & 1) == 0)
  {
    goto LABEL_21;
  }

  _C3DFXViewportDidChange(a1);
LABEL_22:
  v30 = 1;
LABEL_23:
  v31 = CACurrentMediaTime();
  C3DFXContextBumpTimestamp(FXContext);
  if (RendererContextGL)
  {
    C3DRendererContextBumpTimeStamp(RendererContextGL);
  }

  C3DFXContextPreparePassesInstances(a1, FXContext);
  v51 = Stats;
  *(Stats + 152) = *(Stats + 152) + CACurrentMediaTime() - v31;
  v32 = *(FXContext + 216);
  if (v32)
  {
    v48 = v30;
    v49 = RendererContextGL;
    v52 = v32 - 1;
    if (v32 >= 1)
    {
      v33 = 0;
      v34 = *(**(*(FXContext + 200) + 8 * v52) + 40);
      while (!C3DFXPassIsEnabled(**(*(FXContext + 200) + 8 * v33)))
      {
LABEL_40:
        if (++v33 == v32)
        {
          goto LABEL_44;
        }
      }

      v35 = **(*(FXContext + 200) + 8 * v33);
      v36 = *(v35 + 40);
      *(v35 + 184) = *(v35 + 184) & 0xFFFDFFFF | ((v33 == v52) << 17);
      v37 = *(*(FXContext + 200) + 8 * v33);
      if (!a1 && (v38 = scn_default_log(), os_log_type_enabled(v38, OS_LOG_TYPE_FAULT)))
      {
        C3DEngineContextRenderMainTechnique_cold_2(v55, v56, v38);
        if (!v37)
        {
LABEL_32:
          v39 = scn_default_log();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
          {
            C3DEngineContextRenderMainTechnique_cold_3(v53, &v54, v39);
          }
        }
      }

      else if (!v37)
      {
        goto LABEL_32;
      }

      *(C3DEngineContextGetFXContext(a1) + 176) = *(v37 + 8);
      if (*(v37 + 27))
      {
        Pass = C3DFXPassInstanceGetPass(v37);
        __C3DEngineContextRenderPassInstance(a1, v37, Pass, 0, v36 == v34, 1, 0);
      }

      else if (*(v37 + 24))
      {
        v41 = 0;
        do
        {
          v42 = C3DFXPassInstanceGetPass(v37);
          __C3DEngineContextRenderPassInstance(a1, v37, v42, 0, v36 == v34, 1, v41++);
        }

        while (v41 < *(v37 + 24));
      }

      *(v35 + 184) &= ~0x20000u;
      goto LABEL_40;
    }

LABEL_44:
    *v43.i64 = CACurrentMediaTime();
    v44 = *v43.i64;
    C3DFXContextRemoveAllPassInstances(FXContext, v43);
    if (v49)
    {
      FramebufferRegistry = C3DFXContextGetFramebufferRegistry(FXContext);
      C3DFramebufferRegistryFinalizeFrame(FramebufferRegistry);
    }

    *(v51 + 152) = *(v51 + 152) + CACurrentMediaTime() - v44;
    v46 = v48;
    if ((*v50 & 2) != 0)
    {
      v46 = 0;
    }

    if ((v46 & 1) == 0)
    {
      *v50 &= ~2u;
      SharedInstance = C3DNotificationCenterGetSharedInstance();
      C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextPassesDidUpdate", a1, 0, 1u);
    }

    if (v49)
    {
      C3DFramebufferRegistryPurge(*(FXContext + 240), a1);
    }

    C3DFXContextSetCurrentColor(FXContext, 0);
    C3DFXContextSetCurrentDepth(FXContext, 0);
  }
}

uint64_t C3DFXContextPreparePassesInstances(uint64_t a1, uint64_t a2)
{
  *(a2 + 184) = 0;
  v4 = *(a2 + 32);
  if (v4)
  {
    __appendTechnique(a1, a2, v4, 0, 0, 0);
  }

  v5 = *(a2 + 121);
  if ((v5 & 4) == 0)
  {
    v6 = *(a2 + 24);
    if (v6)
    {
      __appendTechnique(a1, a2, v6, 0, 0, 1u);
      v5 = *(a2 + 121);
    }
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = (v5 & 0x14) == 16;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    __appendTechnique(a1, a2, v7, 0, 0, 0);
    v5 = *(a2 + 121);
  }

  if ((v5 & 4) == 0)
  {
    v9 = *(a2 + 24);
    if (v9)
    {
      __appendTechnique(a1, a2, v9, 0, 0, 2u);
      v5 = *(a2 + 121);
    }

    if ((v5 & 0x10) == 0 && *(a2 + 96) >= 1)
    {
      v10 = 0;
      do
      {
        __appendTechnique(a1, a2, *(*(a2 + 80) + 8 * v10++), 0, 0, 0);
      }

      while (v10 < *(a2 + 96));
    }

    v11 = *(a2 + 24);
    if (v11)
    {
      __appendTechnique(a1, a2, v11, 0, 0, 3u);
    }

    v12 = *(a2 + 72);
    if (v12)
    {
      __appendTechnique(a1, a2, v12, 0, 0, 0);
    }

    v13 = *(a2 + 48);
    if (v13)
    {
      __appendTechnique(a1, a2, v13, 0, 0, 0);
    }

    v14 = *(a2 + 24);
    if (v14)
    {
      __appendTechnique(a1, a2, v14, 0, 0, 4u);
    }
  }

  result = C3DEngineContextIsJitteringEnabled(a1);
  if (result)
  {
    v16 = *(a2 + 40);

    return __appendTechnique(a1, a2, v16, 0, 0, 0);
  }

  return result;
}

void C3DFXContextRemoveAllPassInstances(void *a1, int64x2_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DFXContextSetPostProcessTechnique_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (a1[27] >= 1)
  {
    v11 = 0;
    do
    {
      for (i = 32; i != 80; i += 8)
      {
        v13 = *(*(a1[25] + 8 * v11) + i);
        if (v13)
        {
          C3DFXContextReleaseCullingData(a1, v13);
          *(*(a1[25] + 8 * v11) + i) = 0;
        }
      }

      C3DAllocatorDelete(a1[26], *(a1[25] + 8 * v11++), a2);
    }

    while (v11 < a1[27]);
  }

  a1[27] = 0;
}

void C3DFXContextSetCurrentColor(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 128);
  if (v4)
  {
    if (*(v4 + 48))
    {
      C3DFramebufferRegistryReleaseRenderTarget(*(a1 + 240), v4);
    }

    else
    {
      if (!*(v4 + 76))
      {
        v5 = scn_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          C3DFXContextSetCurrentColor_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
        }
      }

      --*(*(a1 + 128) + 76);
    }
  }

  *(a1 + 128) = a2;
  if (a2)
  {
    ++*(a2 + 76);
  }
}

void C3DFXContextSetCurrentDepth(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 136);
  if (v4)
  {
    if (*(v4 + 48))
    {
      C3DFramebufferRegistryReleaseRenderTarget(*(a1 + 240), v4);
    }

    else
    {
      if (!*(v4 + 76))
      {
        v5 = scn_default_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
        {
          C3DFXContextSetCurrentDepth_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
        }
      }

      --*(*(a1 + 136) + 76);
    }
  }

  *(a1 + 136) = a2;
  if (a2)
  {
    ++*(a2 + 76);
  }
}

void C3DFXContextReleaseCullingData(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v3 = *(a1 + 296);
    if (v3)
    {
      CFArrayAppendValue(v3, cf);
    }

    CFRelease(cf);
  }
}

uint64_t C3DFXContextAddPassInstance(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFXContextSetPostProcessTechnique_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 216);
  if (result == *(a1 + 232))
  {
    if (2 * result <= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2 * result;
    }

    v14 = malloc_type_realloc(*(a1 + 200), 8 * v13, 0x2004093837F09uLL);
    *(a1 + 200) = v14;
    *(a1 + 232) = v13;
    result = *(a1 + 216);
  }

  else
  {
    v14 = *(a1 + 200);
  }

  v14[result] = a2;
  *(a1 + 216) = result + 1;
  return result;
}

uint64_t C3DFXContextCreateCullingData(uint64_t a1, unsigned int a2)
{
  Count = CFArrayGetCount(*(a1 + 296));
  v5 = Count - 1;
  if (Count < 1)
  {

    return C3DArrayCreate(4, a2);
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 296), v5);
    CFRetain(ValueAtIndex);
    C3DArraySetCount(ValueAtIndex, a2);
    C3DArraySetCount(ValueAtIndex, 0);
    CFArrayRemoveValueAtIndex(*(a1 + 296), v5);
    return ValueAtIndex;
  }
}

void C3DFXContextSetEnableSampleDistributedRange(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 121);
  if (((((v4 & 0x20) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v5 = 32;
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 121) = v4 & 0xDF | v5;
    Scene = C3DEngineContextGetScene(a2);
    SharedInstance = C3DNotificationCenterGetSharedInstance();

    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", Scene, 0, 1u);
  }
}

id C3DFXContextCopyPassDescription(uint64_t a1, uint64_t a2)
{
  C3DFXContextPreparePassesInstances(a2, a1);
  v30 = a1;
  v3 = *(a1 + 216);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v3];
  v28 = v4;
  [v4 setValue:v5 forKey:@"passes"];

  v29 = v3;
  if (v3 >= 1)
  {
    v7 = 0;
    do
    {
      v31 = v7;
      v8 = **(v30[25] + 8 * v7);
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v9 setValue:C3DFXPassGetName(v8) forKey:@"name"];
      [v9 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", C3DFXPassGetDrawInstruction(v8)), @"type"}];
      [v9 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", C3DFXPassIsEnabled(v8)), @"enabled"}];
      v10 = *(v8 + 520);
      v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v10];
      v32 = v9;
      [v9 setValue:v11 forKey:@"inputs"];

      if (v10 >= 1)
      {
        for (i = 0; i != v10; ++i)
        {
          v13 = *(*(v8 + 512) + 8 * i);
          if (*(v13 + 56))
          {
            v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v15 = v14;
            v16 = *(v13 + 56);
            if (v16)
            {
              [v14 setValue:v16 forKey:@"name"];
            }

            [v15 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", *(v13 + 16)), @"type"}];
            v17 = v15;
            if (v17)
            {
              [v11 addObject:v17];
            }
          }
        }
      }

      v18 = *(v8 + 440);
      v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v18];
      [v32 setValue:v19 forKey:@"outputs"];

      if (v18)
      {
        v20 = 0;
        v21 = v18 << 6;
        do
        {
          v22 = *(v8 + 432);
          v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v24 = v22 + v20;
          [v23 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", *(v24 + 16)), @"type"}];
          v25 = *(v24 + 8);
          if (!v25)
          {
            if (*(v24 + 16))
            {
              v25 = @"COLOR";
            }

            else
            {
              v25 = @"DEPTH";
            }
          }

          [v23 setValue:v25 forKey:@"name"];
          v26 = v23;
          if (v26)
          {
            [v19 addObject:v26];
          }

          v20 += 64;
        }

        while (v21 != v20);
      }

      [v5 addObject:v32];
      v7 = v31 + 1;
    }

    while (v31 + 1 != v29);
  }

  C3DFXContextRemoveAllPassInstances(v30, v6);
  return v28;
}

void *_addCIFilterSubTechniquesForNode(void *a1, uint64_t a2, const __CFDictionary *a3)
{
  Value = CFDictionaryGetValue(a3, a1);
  if (!Value)
  {
    Scene = C3DEngineContextGetScene(a2);
    Parent = C3DNodeGetParent(a1);
    if (Parent)
    {
      v9 = Parent;
      do
      {
        v10 = CFDictionaryGetValue(a3, v9);
        if (!v10)
        {
          if (C3DNodeGetFilters(v9))
          {
            v10 = _addCIFilterSubTechniquesForNode(v9, a2, a3);
          }

          else
          {
            v10 = 0;
          }
        }

        v11 = C3DNodeGetParent(v9);
        if (!v11)
        {
          break;
        }

        v9 = v11;
      }

      while (!v10);
      Value = C3DFXTechniqueCreateCIFilter(a1, a2);
      if (v10)
      {
        C3DFXTechniqueAddSubTechnique(v10, Value);
      }
    }

    else
    {
      Value = C3DFXTechniqueCreateCIFilter(a1, a2);
    }

    C3DSceneRegisterCIFilterTechniqueForNode(Scene, a1, Value);
    EnginePipeline = C3DSceneGetEnginePipeline(Scene);
    RendererElementStore = C3DEnginePipelineGetRendererElementStore(EnginePipeline);
    RendererElementSpan = C3DNodeGetRendererElementSpan(a1);
    ElementInSpanAtIndex = C3DRendererElementStoreGetElementInSpanAtIndex(RendererElementStore, RendererElementSpan, (HIDWORD(RendererElementSpan) - 1));
    v16 = *(ElementInSpanAtIndex + 40);
    if (v16 != Value)
    {
      if (v16)
      {
        CFRelease(v16);
        *(ElementInSpanAtIndex + 40) = 0;
      }

      if (Value)
      {
        v17 = CFRetain(Value);
      }

      else
      {
        v17 = 0;
      }

      *(ElementInSpanAtIndex + 40) = v17;
    }

    CFRelease(Value);
    CFDictionarySetValue(a3, a1, Value);
  }

  return Value;
}

__CFString *_createPassIdentifierForPass(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  Mutable = CFStringCreateMutable(0, 0);
  SampleCount = *(a1 + 176);
  if (!*(a1 + 176))
  {
    SampleCount = C3DRendererContextGetSampleCount(a2);
  }

  CFStringAppendFormat(Mutable, 0, @"%d - %@", a4, *(a1 + 16));
  if (a3)
  {
    CFStringAppend(Mutable, @" (resolve)");
  }

  else if (SampleCount >= 2)
  {
    CFStringAppendFormat(Mutable, 0, @" (%dx)", SampleCount);
  }

  return Mutable;
}

uint64_t C3DFXContextGetFramebufferForPass(uint64_t a1, uint64_t a2, __n128 *a3, int a4, void *a5)
{
  if (!a1 && (v10 = scn_default_log(), os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    C3DEngineContextGetScene_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v18 = scn_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    C3DFXContextIsMainPass_cold_2(v18, v19, v20, v21, v22, v23, v24, v25);
  }

LABEL_6:
  if (!a3)
  {
    v26 = scn_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextGetStats_cold_1(v26, v27, v28, v29, v30, v31, v32, v33);
    }
  }

  FramebufferDescription = C3DFXPassGetFramebufferDescription(a2);
  v36 = *(FramebufferDescription + 48);
  v35 = *(FramebufferDescription + 64);
  v37 = *(FramebufferDescription + 32);
  v54 = *(FramebufferDescription + 80);
  v38 = *(FramebufferDescription + 16);
  v52[0] = *FramebufferDescription;
  v52[1] = v38;
  v52[3] = v36;
  v53 = v35;
  v52[2] = v37;
  if ((v54 & 8) != 0)
  {
    *&v52[0] = vrndp_f32(vcvt_f32_f64(vmulq_f64(*(a2 + 376), vcvt_hight_f64_f32(C3DEngineContextGetViewport(a3)))));
  }

  v39 = *(a2 + 24);
  SampleCount = 1;
  if (v39 <= 6 && ((1 << v39) & 0x4C) != 0 && (a4 & 1) == 0)
  {
    SampleCount = *(a2 + 176);
    if (!*(a2 + 176))
    {
      RendererContextGL = C3DEngineContextGetRendererContextGL(a3);
      SampleCount = C3DRendererContextGetSampleCount(RendererContextGL);
    }

    if (SampleCount >= 2)
    {
      BYTE11(v52[0]) &= ~1u;
      BYTE11(v53) &= ~1u;
    }
  }

  C3DFramebufferDescriptionSetSampleCount(v52, SampleCount);
  v42 = v54;
  if ((v54 & 0x10) == 0 && (*(a2 + 186) & 2) != 0)
  {
    v42 = v54 | 0x10;
    LOBYTE(v54) = v54 | 0x10;
    BYTE8(v53) = 44;
  }

  if (a4)
  {
    v42 &= ~0x10u;
    LOBYTE(v54) = v42;
  }

  if ((v42 & 0x10) != 0)
  {
    BYTE8(v53) = 44;
  }

  if (a4)
  {
    v43 = 0;
  }

  else
  {
    v43 = *(a2 + 440);
  }

  if ((v42 & 0x10) != 0)
  {
    v44 = 0;
  }

  else
  {
    v44 = a4;
  }

  C3DFramebufferRegistryPrepareFramebufferWithDescription(*(a1 + 240), v52, *(a2 + 432), v43, v44, a5, a3);
  if (*(a2 + 440))
  {
    v45 = 0;
    v46 = 0;
    do
    {
      v47 = *(a2 + 432);
      v48 = *(v47 + v45 + 8);
      if (v48)
      {
        v49 = *(v47 + v45 + 16);
        if (a4)
        {
          if (v49 != 5)
          {
            C3DFramebufferRegistryReplaceTextureWithNameByTexture(*(a1 + 240), v49, v48);
          }
        }

        else
        {
          v50 = *(v47 + v45 + 20);
          if (v50)
          {
            C3DFramebufferRegistryRetainTextureWithName(*(a1 + 240), v49, v48, v50);
          }
        }
      }

      ++v46;
      v45 += 64;
    }

    while (v46 < *(a2 + 440));
  }

  return C3DFramebufferRegistryFinalizeAndGetFramebuffer(*(a1 + 240));
}

uint64_t _drawScene(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderSubTechnique_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Pass = C3DFXPassInstanceGetPass(a2);
  FXContext = C3DEngineContextGetFXContext(a1);
  RootNode = C3DFXPassGetRootNode(Pass);
  Scene = C3DEngineContextGetScene(a1);
  if (!RootNode)
  {
    v16 = Scene;
    if (!Scene)
    {
      v17 = scn_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        C3DSceneCreateHitTestResultsWithSegment_cold_1(v17, v18, v19, v20, v21, v22, v23, v24);
      }
    }

    RootNode = C3DSceneGetRootNode(v16);
  }

  RenderCallbacks = C3DEngineContextGetRenderCallbacks(a1);
  if (C3DFXContextIsMainPass(FXContext, Pass) && RenderCallbacks && *RenderCallbacks)
  {
    (*RenderCallbacks)(a1);
  }

  C3DEngineContextRenderNodeTree(a1, a2, RootNode);
  RendererElementState = C3DEngineContextGetRendererElementState(a1);
  if (C3DEngineContextGetRendererContextGL(a1))
  {
    C3DRendererElementStateBeginProcessing(RendererElementState, 0, a1);
  }

  result = C3DFXContextIsMainPass(FXContext, Pass);
  if (result && RenderCallbacks)
  {
    v28 = *(RenderCallbacks + 8);
    if (v28)
    {
      return v28(a1);
    }
  }

  return result;
}

void C3D::CustomPass::CustomPass(C3D::CustomPass *this, C3D::RenderGraph *a2, C3D::Pass *a3, __C3DFXPass *a4)
{
  C3D::Pass::Pass(this, a2, a3);
  *v5 = &unk_282DC71D0;
  *(v5 + 112) = a4;
  *(v5 + 120) = 0;
  *(v5 + 32) = 1;
}

const char *C3D::CustomPass::name(C3D::CustomPass *this, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(this + 14);
  if (v5)
  {
    return C3D::CachedFXPassName(this + 15, v5, *(*(this + 3) + 16), a4);
  }

  v6 = scn_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    C3D::CustomPass::name(v6);
  }

  v5 = *(this + 14);
  if (v5)
  {
    return C3D::CachedFXPassName(this + 15, v5, *(*(this + 3) + 16), a4);
  }

  else
  {
    return "CustomPass";
  }
}

void C3D::CustomPass::execute(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    goto LABEL_5;
  }

  v3 = scn_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    C3D::CustomPass::execute(v3);
  }

  v2 = *(a1 + 112);
  if (v2)
  {
LABEL_5:
    v4 = *(v2 + 248);
    if (v4)
    {
      v7[0] = v2;
      v7[1] = 0;
      v5 = *(a1 + 16);
      v7[2] = 0;
      v7[3] = v5;
      v7[4] = 0;
      v7[5] = 0;
      v6 = *(v2 + 280);
      v7[6] = 0xBFF0000000000000;
      v7[7] = v6;
      memset(&v7[8], 0, 24);
      v4(v7);
    }
  }
}

uint64_t __HandleProfileWillDieNotification(int a1, void *a2, CFTypeRef cf1, uint64_t a4)
{
  if (!CFEqual(cf1, @"kC3DNotificationProfileWillDie"))
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __HandleProfileWillDieNotification_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  return [a2 releaseProgramForResource:a4];
}

BOOL CheckDefineUsageInModifiers(uint64_t *a1, uint64_t a2, const void *a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  else
  {
    v6 = 1;
    v7 = a2;
    v8 = 1;
    do
    {
      Defines = C3DShaderModifierGetDefines(*a1);
      if (Defines && CFDictionaryGetCountOfKey(Defines, a3))
      {
        break;
      }

      v8 = v6++ < a2;
      ++a1;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void __AppendModifierDefines(void *a1, uint64_t *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      Defines = C3DShaderModifierGetDefines(*a2);
      if (Defines)
      {
        CFDictionaryApplyFunction(Defines, __appendDictionary, a1);
      }

      ++a2;
      --v3;
    }

    while (v3);
  }
}

uint64_t __GetModifierFlag(uint64_t *a1, uint64_t a2)
{
  if (a2 < 1)
  {
    LOWORD(v4) = 0;
  }

  else
  {
    v2 = a2;
    v4 = 0;
    do
    {
      v5 = *a1++;
      v4 |= C3DShaderModifierGetFlags(v5);
      --v2;
    }

    while (v2);
  }

  return v4;
}

uint64_t __GetDefineForPropertyAndSuffix(int a1, int a2)
{
  if (__GetDefineForPropertyAndSuffix_predicate != -1)
  {
    __GetDefineForPropertyAndSuffix_cold_1();
  }

  return *(&__GetDefineForPropertyAndSuffix_strings + 8 * a1 + a2);
}

uint64_t C3DFXGLSLProgramGetTypeID()
{
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramGetTypeID_cold_1();
  }

  return C3DFXGLSLProgramGetTypeID_typeID;
}

uint64_t __C3DFXGLSLProgramGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DFXGLSLProgramGetTypeID_typeID = result;
  qword_281741808 = _C3DFXGLSLProgramCopyInstanceVariables;
  return result;
}

uint64_t C3DFXGLSLProgramCreate()
{
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DFXGLSLProgramGetTypeID_typeID, 104);
  v1 = Instance;
  if (Instance)
  {
    C3DFXProgramInitialize(Instance);
    *(v1 + 64) = 1;
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0u;
  }

  return v1;
}

uint64_t C3DFXGLSLProgramGetDefaultProgram()
{
  if (C3DFXGLSLProgramGetDefaultProgram_onceToken != -1)
  {
    C3DFXGLSLProgramGetDefaultProgram_cold_1();
  }

  return C3DFXGLSLProgramGetDefaultProgram_defaultProgram;
}

void __C3DFXGLSLProgramGetDefaultProgram_block_invoke()
{
  ProgramWithName = _C3DFXGLSLProgramCreateProgramWithName(@"C3D-DefaultProgram", 0);
  C3DFXGLSLProgramGetDefaultProgram_defaultProgram = ProgramWithName;

  C3DFXGLSLProgramSetUniformIndex(ProgramWithName, @"u_modelViewProjectionTransform", 7);
}

void C3DFXGLSLProgramSetUniformIndex(CFMutableDictionaryRef *cf, const void *a2, char *a3)
{
  if (!cf && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DResourceManagerMakeProgramResident_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    C3DFXGLSLProgramSetUniformIndex_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  v22 = CFGetTypeID(cf);
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v22 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v23 = scn_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  cf[14] = (a3 + 1);
  __AllocUniformsNamesToIndexesIfNeeded(cf);
  CFDictionarySetValue(cf[13], a2, a3);
}

uint64_t C3DFXGLSLProgramCreateWithSources(const void *a1, const void *a2)
{
  v4 = C3DFXGLSLProgramCreate();
  v5 = C3DFXShaderCreate(0);
  C3DFXShaderSetSource(v5, a1);
  *(v4 + 80) = v5;
  v6 = C3DFXShaderCreate(1);
  C3DFXShaderSetSource(v6, a2);
  *(v4 + 88) = v6;
  return v4;
}

uint64_t _C3DFXGLSLProgramCreateProgramWithName(void *a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [a1 stringByAppendingString:@".vsh"];
  v5 = [a1 stringByAppendingString:@".fsh"];
  v6 = C3DGetTextResourceWithNameAllowingHotReload(v4);
  v7 = C3DGetTextResourceWithNameAllowingHotReload(v5);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    a2 = 0;
  }

  if (a2 == 1)
  {
    v6 = C3DStringNamed(v4);
    v7 = C3DStringNamed(v5);
  }

  v9 = v7;
  v10 = 0;
  if (v6 && v7)
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, v6);
    CFStringTrimWhitespace(MutableCopy);
    if (CFStringHasPrefix(MutableCopy, @"#extension"))
    {
      v12 = CFRetain(v6);
    }

    else
    {
      values = @"precision highp float;\n";
      v19 = v6;
      v13 = CFArrayCreate(0, &values, 2, 0);
      v12 = CFStringCreateByCombiningStrings(0, v13, &stru_282DCC058);
      CFRelease(v13);
    }

    CFRelease(MutableCopy);
    v14 = CFStringCreateMutableCopy(0, 0, v9);
    CFStringTrimWhitespace(v14);
    if (CFStringHasPrefix(v14, @"#extension"))
    {
      v15 = CFRetain(v9);
    }

    else
    {
      values = @"precision highp float;\n";
      v19 = v9;
      v16 = CFArrayCreate(0, &values, 2, 0);
      v15 = CFStringCreateByCombiningStrings(0, v16, &stru_282DCC058);
      CFRelease(v16);
    }

    CFRelease(v14);
    v10 = C3DFXGLSLProgramCreateWithSources(v12, v15);
    C3DFXProgramSetClientProgram(v10, a2);
    CFRelease(v12);
    CFRelease(v15);
  }

  return v10;
}

uint64_t C3DFXGLSLProgramGetShader(CFTypeRef cf, int a2)
{
  if (!cf)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = CFGetTypeID(cf);
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v12 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  return *(cf + a2 + 10);
}

CFTypeRef C3DFXGLSLProgramSetShader(char *cf, CFTypeRef a2)
{
  if (!cf && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DResourceManagerMakeProgramResident_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DFXShaderGetStage_cold_1(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = CFGetTypeID(cf);
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v20 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v21 = scn_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  Stage = C3DFXShaderGetStage(a2);
  v30 = cf + 80;
  result = *&v30[8 * Stage];
  if (result != a2)
  {
    if (result)
    {
      CFRelease(result);
      *&v30[8 * Stage] = 0;
    }

    if (a2)
    {
      result = CFRetain(a2);
    }

    else
    {
      result = 0;
    }

    *&v30[8 * Stage] = result;
  }

  return result;
}

uint64_t C3DFXGLSLProgramGetShaders(void *a1)
{
  v2 = CFGetTypeID(a1);
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramGetTypeID_cold_1();
  }

  if (v2 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1[10];
}

uint64_t C3DFXGLSLProgramGetShaderSources(void *a1)
{
  v2 = CFGetTypeID(a1);
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramGetTypeID_cold_1();
  }

  if (v2 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  result = C3DFXGLSLProgramGetShaders(a1);
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

void C3DFXGLSLProgramSetAttributeIndex(CFMutableDictionaryRef *cf, const void *a2, int a3)
{
  if (!cf && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DResourceManagerMakeProgramResident_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    C3DFXGLSLProgramSetAttributeIndex_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  v22 = CFGetTypeID(cf);
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v22 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v23 = scn_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  __AllocAttributesNamesToIndexesIfNeeded(cf);
  CFDictionarySetValue(cf[12], a2, a3);
}

void __AllocAttributesNamesToIndexesIfNeeded(CFTypeRef cf)
{
  if (!cf)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = CFGetTypeID(cf);
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v10 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  if (!*(cf + 12))
  {
    *(cf + 12) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
  }
}

uint64_t C3DFXGLSLProgramGetAttributeIndex(CFDictionaryRef *cf, const void *a2)
{
  if (!cf && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DResourceManagerMakeProgramResident_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DFXGLSLProgramSetAttributeIndex_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = CFGetTypeID(cf);
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v20 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v21 = scn_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  __AllocAttributesNamesToIndexesIfNeeded(cf);
  return CFDictionaryGetValue(cf[12], a2);
}

CFTypeRef _C3DFXGLSLProgramSetUniformDictionary(CFTypeRef cf, CFTypeRef a2)
{
  if (!cf)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = CFGetTypeID(cf);
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v12 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  result = *(cf + 13);
  if (result != a2)
  {
    if (result)
    {
      CFRelease(result);
      *(cf + 13) = 0;
    }

    if (a2)
    {
      result = CFRetain(a2);
    }

    else
    {
      result = 0;
    }

    *(cf + 13) = result;
  }

  return result;
}

CFTypeRef _C3DFXGLSLProgramSetAttributesDictionary(CFTypeRef cf, CFTypeRef a2)
{
  if (!cf)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = CFGetTypeID(cf);
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v12 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v13 = scn_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  result = *(cf + 12);
  if (result != a2)
  {
    if (result)
    {
      CFRelease(result);
      *(cf + 12) = 0;
    }

    if (a2)
    {
      result = CFRetain(a2);
    }

    else
    {
      result = 0;
    }

    *(cf + 12) = result;
  }

  return result;
}

uint64_t C3DFXGLSLProgramGetNextUniformIndex(CFTypeRef cf)
{
  if (!cf)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = CFGetTypeID(cf);
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v10 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  return *(cf + 14);
}

void __AllocUniformsNamesToIndexesIfNeeded(CFTypeRef cf)
{
  if (!cf)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = CFGetTypeID(cf);
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v10 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  if (!*(cf + 13))
  {
    *(cf + 13) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
  }
}

uint64_t C3DFXGLSLProgramGetUniformIndex(CFDictionaryRef *cf, const void *a2)
{
  if (!cf && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DResourceManagerMakeProgramResident_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DFXGLSLProgramSetUniformIndex_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = CFGetTypeID(cf);
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v20 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v21 = scn_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  __AllocUniformsNamesToIndexesIfNeeded(cf);
  if (CFDictionaryContainsKey(cf[13], a2))
  {
    return CFDictionaryGetValue(cf[13], a2);
  }

  else
  {
    return -1;
  }
}

CFArrayRef C3DFXGLSLProgramCopyAttributesNames(CFDictionaryRef *cf)
{
  if (!cf)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = CFGetTypeID(cf);
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v10 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  v19 = cf[12];
  if (!v19)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(v19);
  v21 = C3DMalloc(8 * Count);
  CFDictionaryGetKeysAndValues(cf[12], v21, 0);
  v22 = CFArrayCreate(*MEMORY[0x277CBECE8], v21, Count, MEMORY[0x277CBF128]);
  if (v21)
  {
    free(v21);
  }

  return v22;
}

const __CFDictionary *_C3DFXGLSLProgramGetMaxUniformIndex(const __CFDictionary **cf)
{
  if (!cf)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DResourceManagerMakeProgramResident_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = CFGetTypeID(cf);
  if (C3DFXGLSLProgramGetTypeID_onceToken != -1)
  {
    C3DFXGLSLProgramSetUniformIndex_cold_3();
  }

  if (v10 != C3DFXGLSLProgramGetTypeID_typeID)
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DFXGLSLProgramSetUniformIndex_cold_4(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  context = 0;
  result = cf[13];
  if (result)
  {
    CFDictionaryApplyFunction(result, _findMax, &context);
    return context;
  }

  return result;
}

void _findMax(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 < a2)
  {
    *a3 = a2;
  }
}

uint64_t C3DVertexAttribFromParameterSemantic(int a1, unsigned int a2)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      return 0;
    }

    if (a1 == 2)
    {
      return 1;
    }

    return 14;
  }

  if (a1 == 3)
  {
    return 3;
  }

  if (a1 != 4)
  {
    if (a1 == 5)
    {
      return 2;
    }

    return 14;
  }

  v3 = a2;
  if (a2 >= 8)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DVertexAttribFromParameterSemantic_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return (v3 + 6);
}

id _C3DFXGLSLProgramCFFinalize(void *a1)
{
  v2 = 0;
  v3 = a1 + 10;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = v3[v2];
    if (v6)
    {
      CFRelease(v6);
    }

    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v7 = a1[12];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[13];
  if (v8)
  {
    CFRelease(v8);
  }

  return C3DFXProgramCFFinalize(a1);
}

__CFArray *_C3DFXGLSLProgramCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v27 = 2;
  valuePtr = 5;
  Attributes = a1 + 80;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &v27);
  v7 = CFNumberCreate(0, kCFNumberLongType, &Attributes);
  CFDictionarySetValue(v4, @"name", @"vertexShader");
  CFDictionarySetValue(v4, @"type", v5);
  CFDictionarySetValue(v4, @"address", v7);
  CFDictionarySetValue(v4, @"semantic", v6);
  CFArrayAppendValue(Mutable, v4);
  CFRelease(v6);
  CFRelease(v4);
  CFRelease(v7);
  CFRelease(v5);
  v8 = MEMORY[0x277CBF150];
  v9 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x277CBF150]);
  v27 = 2;
  valuePtr = 5;
  Attributes = a1 + 88;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v27);
  v12 = CFNumberCreate(0, kCFNumberLongType, &Attributes);
  CFDictionarySetValue(v9, @"name", @"fragmentShader");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = CFDictionaryCreateMutable(0, 4, v3, v8);
  v27 = 1;
  valuePtr = 5;
  Attributes = C3DEntityGetAttributes(a1);
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v27);
  v16 = CFNumberCreate(0, kCFNumberLongType, &Attributes);
  CFDictionarySetValue(v13, @"name", @"attributes");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v27 = 2;
  valuePtr = 5;
  Attributes = a1 + 96;
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v27);
  v20 = CFNumberCreate(0, kCFNumberLongType, &Attributes);
  CFDictionarySetValue(v17, @"name", @"attributeNamesToIndexes");
  CFDictionarySetValue(v17, @"type", v18);
  CFDictionarySetValue(v17, @"address", v20);
  CFDictionarySetValue(v17, @"semantic", v19);
  CFArrayAppendValue(Mutable, v17);
  CFRelease(v19);
  CFRelease(v17);
  CFRelease(v20);
  CFRelease(v18);
  v21 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v27 = 2;
  valuePtr = 5;
  Attributes = a1 + 104;
  v22 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &v27);
  v24 = CFNumberCreate(0, kCFNumberLongType, &Attributes);
  CFDictionarySetValue(v21, @"name", @"uniformNamesToIndexes");
  CFDictionarySetValue(v21, @"type", v22);
  CFDictionarySetValue(v21, @"address", v24);
  CFDictionarySetValue(v21, @"semantic", v23);
  CFArrayAppendValue(Mutable, v21);
  CFRelease(v23);
  CFRelease(v21);
  CFRelease(v24);
  CFRelease(v22);
  return Mutable;
}

uint64_t __C3DRendererDelegateGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DRendererDelegateGetTypeID_typeID = result;
  return result;
}

uint64_t C3DRendererDelegateCreate(uint64_t a1, char a2, uint64_t a3)
{
  if (C3DRendererDelegateGetTypeID_onceToken != -1)
  {
    C3DRendererDelegateCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DRendererDelegateGetTypeID_typeID, 24);
  if (!a1)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DRendererDelegateCreate_cold_2(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  *(Instance + 16) = a1;
  *(Instance + 32) = a3;
  *(Instance + 24) = a2;
  return Instance;
}

uint64_t C3DRendererDelegateFireWithNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DRendererDelegateFireWithNode_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  return (*(a1 + 16))(a2, a3, *(a1 + 32), a4);
}

uint64_t SCNMTLTextureDescFromMTLTexture@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = [a1 width];
  *(a2 + 2) = [a1 height];
  *(a2 + 4) = [a1 depth];
  *(a2 + 6) = [a1 arrayLength];
  *(a2 + 8) = [a1 textureType];
  *(a2 + 9) = [a1 storageMode];
  *(a2 + 10) = [a1 usage];
  *(a2 + 11) = [a1 cpuCacheMode];
  *(a2 + 12) = [a1 pixelFormat];
  v4 = [a1 mipmapLevelCount];
  result = [a1 sampleCount];
  *(a2 + 16) = 0;
  if (result == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = result;
  }

  *(a2 + 15) = v6;
  if (v4 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  *(a2 + 14) = v7;
  return result;
}

void *SCNMTLTextureDescToMTLTextureDescriptor(unsigned __int16 *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD7058]);
  v3 = v2;
  if (*a1 <= 1u)
  {
    v4 = 1;
  }

  else
  {
    v4 = *a1;
  }

  [v2 setWidth:v4];
  if (a1[1] <= 1u)
  {
    v5 = 1;
  }

  else
  {
    v5 = a1[1];
  }

  [v3 setHeight:v5];
  if (a1[2] <= 1u)
  {
    v6 = 1;
  }

  else
  {
    v6 = a1[2];
  }

  [v3 setDepth:v6];
  if (a1[3] <= 1u)
  {
    v7 = 1;
  }

  else
  {
    v7 = a1[3];
  }

  [v3 setArrayLength:v7];
  if (*(a1 + 15) <= 1u)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 15);
  }

  [v3 setSampleCount:v8];
  [v3 setTextureType:*(a1 + 8)];
  [v3 setStorageMode:*(a1 + 9)];
  [v3 setUsage:*(a1 + 10)];
  [v3 setCpuCacheMode:*(a1 + 11)];
  [v3 setPixelFormat:a1[6]];
  if (*(a1 + 14) <= 1u)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(a1 + 14);
  }

  [v3 setMipmapLevelCount:v9];
  return v3;
}

void SCNMTLTexturePool::~SCNMTLTexturePool(SCNMTLTexturePool *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
      }

      v2 += 4;
    }

    while (v2 != v3);
    v2 = *(this + 2);
  }

  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

void sub_21C136C88(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v1 + 24) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SCNMTLTexturePool::allocate(uint64_t a1, __int128 *a2, void *a3, int a4)
{
  v4 = a3;
  v8 = (a1 + 16);
  v7 = *(a1 + 16);
  v9 = *(a1 + 40);
  if (32 * v9)
  {
    v10 = &v7[2 * v9];
    while (1)
    {
      v11 = *a2 == *(v7 + 1) && *(a2 + 1) == *(v7 + 2);
      v12 = v11 && *(a2 + 4) == *(v7 + 6);
      if (v12 && (!a4 || *(v7 + 7) >= 3u))
      {
        break;
      }

      v7 += 2;
      if (v7 == v10)
      {
        goto LABEL_14;
      }
    }

    v14 = *v7;
    *(v7 + 7) = 0;
    v23 = v10 - 2;
    if (v7 != v23)
    {
      v25 = *v7;
      v24 = v7[1];
      v26 = v23[1];
      *v7 = *v23;
      v7[1] = v26;
      *v23 = v25;
      v23[1] = v24;
      LODWORD(v9) = *(a1 + 40);
    }

    *(a1 + 40) = v9 - 1;
  }

  else
  {
LABEL_14:
    if (!a3)
    {
      v33 = *a2;
      v34 = *(a2 + 4);
      v4 = SCNMTLTextureDescToMTLTextureDescriptor(&v33);
    }

    v13 = [*(a1 + 8) newTextureWithDescriptor:v4];
    v14 = v13;
    v33 = *a2;
    v34 = *(a2 + 4);
    if (v13)
    {
      v15 = *(a1 + 24);
      v16 = *(a1 + 32);
      if (v15 >= v16)
      {
        v19 = (v15 - *v8) >> 5;
        v20 = v19 + 1;
        if ((v19 + 1) >> 59)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v21 = v16 - *v8;
        if (v21 >> 4 > v20)
        {
          v20 = v21 >> 4;
        }

        if (v21 >= 0x7FFFFFFFFFFFFFE0)
        {
          v22 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<SCNMTLTexturePool::CachedTexture>>(v8, v22);
        }

        v27 = 32 * v19;
        *v27 = v13;
        *(v27 + 8) = v33;
        *(v27 + 24) = v34;
        *(v27 + 28) = 0;
        v17 = 32 * v19 + 32;
        v28 = *(a1 + 16);
        v29 = *(a1 + 24) - v28;
        v30 = v27 - v29;
        memcpy((v27 - v29), v28, v29);
        v31 = *(a1 + 16);
        *(a1 + 16) = v30;
        *(a1 + 24) = v17;
        *(a1 + 32) = 0;
        if (v31)
        {
          operator delete(v31);
        }
      }

      else
      {
        *v15 = v13;
        *(v15 + 8) = v33;
        *(v15 + 24) = v34;
        v17 = v15 + 32;
      }

      *(a1 + 24) = v17;
    }

    else
    {
      v18 = scn_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        SCNMTLTexturePool::allocate(v4, v18);
      }
    }
  }

  return v14;
}

MTLTexture *SCNMTLTexturePool::allocateWithStagingBuffer(uint64_t a1, unsigned __int16 *a2, void *a3, int a4)
{
  if (a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
    *(a2 + 10) |= 2u;
  }

  *(a2 + 9) = v8;
  v25 = *a2;
  LODWORD(v26) = *(a2 + 4);
  v9 = SCNMTLTexturePool::allocate(a1, &v25, 0, a4);
  v10 = SCNMTLPixelFormatGetBitSize() >> 3;
  v11 = v10 * *a2;
  v12 = v11 * a2[1];
  v13 = [(MTLTexture *)v9 width];
  v14 = [(MTLTexture *)v9 height];
  v15 = [(MTLTexture *)v9 depth];
  if (a4)
  {
    v25 = 0uLL;
    v26 = 0;
    v27 = v13;
    v28 = v14;
    v29 = v15;
    [(MTLTexture *)v9 replaceRegion:&v25 mipmapLevel:0 slice:0 withBytes:*a3 bytesPerRow:v11 bytesPerImage:v12];
    return v9;
  }

  LOWORD(v25) = v10;
  WORD1(v25) = v11;
  DWORD1(v25) = v12;
  if ([(MTLTexture *)v9 pixelFormat]!= 23 && [(MTLTexture *)v9 pixelFormat]!= 63 && [(MTLTexture *)v9 pixelFormat]!= 113)
  {
    v16 = scn_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      SCNMTLTexturePool::allocateWithStagingBuffer(v16, v17, v18);
    }
  }

  v19 = [*(a1 + 8) computePipelineStateForKernel:@"copy_texture_3D_from_buffer_ushort"];
  v20 = [(SCNMTLRenderContext *)*a1 resourceComputeEncoder];
  v21 = [(SCNMTLOpenSubdivComputeEvaluator *)v19 computeEvaluator];
  if (v20->_computePipelineState != v21)
  {
    v20->_computePipelineState = v21;
    [(MTLComputeCommandEncoder *)v20->_encoder setComputePipelineState:v21];
  }

  v23 = a3[1];
  v22 = a3[2];
  if (v20->_buffers[0] != v23)
  {
    v20->_buffers[0] = v23;
LABEL_16:
    v20->_offsets[0] = v22;
    v20->_buffersToBind[0] |= 1uLL;
    goto LABEL_17;
  }

  if (v20->_offsets[0] != v22)
  {
    goto LABEL_16;
  }

LABEL_17:
  SCNMTLComputeCommandEncoder::setBytes(v20, &v25, 8uLL, 1uLL);
  if (v20->_textures[0] != v9)
  {
    v20->_textures[0] = v9;
    v20->_texturesToBind[0] |= 1uLL;
  }

  SCNMTLComputeCommandEncoder::dispatchOnGrid3D(v20, [(MTLTexture *)v9 width], [(MTLTexture *)v9 height], [(MTLTexture *)v9 depth]);
  return v9;
}

void SCNMTLTexturePool::free(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  v5 = (*(a1 + 16) + 32 * v4);
  if (v3 == v5)
  {
LABEL_5:
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      SCNMTLTexturePool::free(a2, v7);
    }
  }

  else
  {
    v6 = 0;
    while (*&v5[v6] != a2)
    {
      v6 += 2;
      if (&v5[v6] == v3)
      {
        goto LABEL_5;
      }
    }

    if (v6 * 16)
    {
      v4 = &v5[v6];
      v9 = v5[v6];
      v8 = v5[v6 + 1];
      v10 = v5[1];
      *v4 = *v5;
      *(v4 + 16) = v10;
      *v5 = v9;
      v5[1] = v8;
      LODWORD(v4) = *(a1 + 40);
    }

    *(a1 + 40) = v4 + 1;
  }
}

void SCNMTLTexturePool::reset(SCNMTLTexturePool *this)
{
  v3 = *(this + 2);
  v2 = *(this + 3);
  if (v3 == v2)
  {
    v3 = *(this + 3);
  }

  else
  {
    do
    {
      v4 = *(v3 + 28);
      *(v3 + 28) = v4 + 1;
      if (v4 < 0x65)
      {
        v3 += 32;
      }

      else
      {

        v5 = *(this + 3);
        v6 = v5 - (v3 + 32);
        if (v5 != v3 + 32)
        {
          memmove(v3, (v3 + 32), v5 - (v3 + 32));
        }

        v2 = v3 + v6;
        *(this + 3) = v3 + v6;
      }
    }

    while (v3 != v2);
    v2 = *(this + 2);
  }

  *(this + 10) = (v3 - v2) >> 5;
}

uint64_t SCNMTLComputeCommandEncoder::dispatchOnGrid3D(SCNMTLComputeCommandEncoder *this, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!this->_computePipelineState)
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      SCNMTLComputeCommandEncoder::dispatchOnGrid3D(v8, v9, v10);
    }
  }

  SCNMTLComputeCommandEncoder::_bindPendingTextures(this);
  SCNMTLComputeCommandEncoder::_bindPendingBuffers(this);
  v11 = [(MTLComputePipelineState *)this->_computePipelineState threadExecutionWidth];
  v12 = [(MTLComputePipelineState *)this->_computePipelineState maxTotalThreadsPerThreadgroup];
  if ((this->_features & 0x40) != 0)
  {
    encoder = this->_encoder;
    v22 = a2;
    v23 = a3;
    v24 = a4;
    v19 = v11;
    v20 = v12 / v11;
    v21 = 1;
    return [(MTLComputeCommandEncoder *)encoder dispatchThreads:&v22 threadsPerThreadgroup:&v19];
  }

  else
  {
    if (v11 >= a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = v11;
    }

    if (v11 >= a3)
    {
      v14 = a3;
    }

    else
    {
      v14 = v11;
    }

    if (v11 >= a4)
    {
      v15 = a4;
    }

    else
    {
      v15 = v11;
    }

    while (v14 * v15 * v13 > v12)
    {
      if (v13 <= v14 || v13 <= v15)
      {
        if (v14 > v15)
        {
          v14 >>= 1;
        }

        else
        {
          v15 >>= 1;
        }
      }

      else
      {
        v13 >>= 1;
      }
    }

    v16 = this->_encoder;
    v22 = (a2 + v13 - 1) / v13;
    v23 = (a3 + v14 - 1) / v14;
    v24 = (a4 + v15 - 1) / v15;
    v19 = v13;
    v20 = v14;
    v21 = v15;
    return [(MTLComputeCommandEncoder *)v16 dispatchThreadgroups:&v22 threadsPerThreadgroup:&v19];
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<SCNMTLTexturePool::CachedTexture>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void __AddTextureProperty(uint64_t a1, unsigned int a2, int a3, int a4)
{
  DefineForPropertyAndSuffix = __GetDefineForPropertyAndSuffix(a3, 0);
  v9 = __GetDefineForPropertyAndSuffix(a3, 1);
  v10 = __GetDefineForPropertyAndSuffix(a3, 5);
  *(a1 + 56) = 0;
  if (a4 && C3DProgramHashCodeGetEffectPropertyIsEnabled(*(a1 + 48), a2))
  {
    if (!CFDictionaryContainsKey(*a1, v9))
    {
      CFDictionaryAddValue(*a1, v9, @"1");
    }

    if (!C3DProgramHashCodeGetEffectPropertyHasTexture(*(a1 + 48), a2))
    {
      v13 = 2;
      goto LABEL_12;
    }

    if (C3DProgramHashCodeGetEffectPropertyTextureType(*(a1 + 48), a2) == 4)
    {
      v11 = 7;
    }

    else
    {
      v11 = 6;
    }

    v12 = __GetDefineForPropertyAndSuffix(a3, v11);
    *(a1 + 56) = 1;
    CFDictionaryAddValue(*a1, v12, &stru_282DCC058);
    CFDictionaryAddValue(*a1, v10, &stru_282DCC058);
    if ((C3DProgramHashCodeGetEffectPropertyHashCode(*(a1 + 48), a2) & 0x2000) != 0)
    {
      v13 = 3;
LABEL_12:
      v14 = *a1;
      v15 = __GetDefineForPropertyAndSuffix(a3, v13);
      CFDictionaryAddValue(v14, v15, &stru_282DCC058);
    }
  }

  if (a3 != 7 && CFDictionaryGetCountOfKey(*a1, v9))
  {
    CFStringAppendFormat(*(a1 + 8), 0, @"  vec4 %@;\n", DefineForPropertyAndSuffix);
  }

  if (CFDictionaryGetCountOfKey(*a1, v10))
  {
    CFStringAppendFormat(*(a1 + 8), 0, @"    vec2 %@Texcoord;\n", DefineForPropertyAndSuffix);
    v16 = (C3DProgramHashCodeGetEffectPropertyHashCode(*(a1 + 48), a2) >> 18) & 0xF;
    if (v16 != 15)
    {
      CFStringAppendFormat(*(a1 + 40), 0, @"    _surface.%@Texcoord = v_texcoord%d;\n", DefineForPropertyAndSuffix, v16);
    }
  }
}

void __ReplaceCodeWithModifiers(uint64_t *a1, uint64_t a2, __CFString *a3, __CFString *a4, void *a5, void *a6, const __CFString *a7)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (a2 >= 1)
  {
    do
    {
      v15 = *a1;
      Declaration = C3DShaderModifierGetDeclaration(*a1);
      if (Declaration)
      {
        CFStringAppend(a4, Declaration);
      }

      Code = C3DShaderModifierGetCode(v15);
      if (Code)
      {
        CFStringAppend(Mutable, Code);
      }

      else
      {
        v18 = scn_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __ReplaceCodeWithModifiers_cold_1(&v21, v22, v18);
        }
      }

      Defines = C3DShaderModifierGetDefines(v15);
      if (Defines)
      {
        CFDictionaryApplyFunction(Defines, __appendDictionary_0, a5);
      }

      StandardUniformsUsed = C3DShaderModifierGetStandardUniformsUsed(v15);
      if (StandardUniformsUsed)
      {
        CFDictionaryApplyFunction(StandardUniformsUsed, __appendDictionary_0, a6);
      }

      ++a1;
      --a2;
    }

    while (a2);
  }

  v23 = CFStringFind(a3, a7, 0);
  CFStringReplace(a3, v23, Mutable);
  CFRelease(Mutable);
}

uint64_t C3DFXTechniqueCreateDepthOfField()
{
  v0 = C3DDictionaryNamed(@"C3DFXDOFPass_deprecated.plist");
  v1 = C3DFXTechniqueCreateWithDescription(v0, 0);
  PassNamed = C3DFXTechniqueGetPassNamed(v1, @"SceneKit_downSample4x");
  C3DFXPassSetWillExecuteCallback(PassNamed, _willExecuteDof);
  v3 = C3DFXTechniqueGetPassNamed(v1, @"SceneKit_DOF_blurCoc_H");
  C3DFXPassSetup2PassesBlurCallbacks(v3, 1);
  v4 = C3DFXTechniqueGetPassNamed(v1, @"SceneKit_DOF_blurCoc_V");
  C3DFXPassSetup2PassesBlurCallbacks(v4, 0);
  v5 = C3DFXTechniqueGetPassNamed(v1, @"SceneKit_blurColor4x_H");
  C3DFXPassSetup2PassesBlurCallbacks(v5, 1);
  v6 = C3DFXTechniqueGetPassNamed(v1, @"SceneKit_blurColor4x_V");
  C3DFXPassSetup2PassesBlurCallbacks(v6, 0);
  return v1;
}

void _willExecuteDof(uint64_t a1)
{
  v33 = 0.0;
  v32 = 0;
  Viewport = C3DEngineContextGetViewport(*(a1 + 24));
  __asm { FMOV            V1.2S, #1.0 }

  v31 = vdiv_f32(_D1, *&vextq_s8(Viewport, Viewport, 8uLL));
  v8 = *(a1 + 24);
  PointOfView = C3DEngineContextGetPointOfView(v8);
  if (PointOfView)
  {
    Camera = C3DNodeGetCamera(PointOfView);
    if (Camera)
    {
      v11 = Camera;
      FXContext = C3DEngineContextGetFXContext(v8);
      MainPassInstance = C3DFXContextGetMainPassInstance(FXContext);
      v14 = *(MainPassInstance + 4824);
      v15 = *(MainPassInstance + 4832);
      FocusDistance = C3DCameraGetFocusDistance(v11);
      v17 = 1.0;
      if (FocusDistance >= 1.0)
      {
        v17 = FocusDistance;
      }

      v18 = 10.0 / v17;
      v19 = (FocusDistance + 0.1) * (C3DCameraGetAperture(v11) * v18);
      v20 = v14 * (FocusDistance - (FocusDistance + 0.1));
      *&v21 = (v15 - v14) * (FocusDistance * v19) / (v15 * v20);
      v22 = (v14 - FocusDistance) * v19 / v20;
      *(&v21 + 1) = v22;
      v33 = 1.0 - v22;
      v32 = v21;
    }

    else
    {
      v24 = scn_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        _willExecuteDof_cold_1(v24);
      }
    }
  }

  else
  {
    v23 = scn_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      _willExecuteDof_cold_2(v23);
    }
  }

  v29 = xmmword_21C2A28D0;
  v30 = xmmword_21C2A28C0;
  v25 = C3DEngineContextGetPointOfView(*(a1 + 24));
  v26 = 0.0;
  if (v25)
  {
    v27 = C3DNodeGetCamera(v25);
    if (v27)
    {
      v26 = C3DCameraGetDepthOfFieldIntensity(v27) * 0.25;
    }
  }

  v28 = v26;
  C3DFXTechniqueSetValueForSymbol(*(a1 + 8), @"C3D-blur-radiusV", &v28);
  C3DFXTechniqueSetValueForSymbol(*(a1 + 8), @"C3D-blur-radiusH", &v28);
  C3DFXTechniqueSetValueForSymbol(*(a1 + 8), @"C3D-dof-lerpBias", &v29);
  C3DFXTechniqueSetValueForSymbol(*(a1 + 8), @"C3D-dof-lerpScale", &v30);
  C3DFXTechniqueSetValueForSymbol(*(a1 + 8), @"C3D-dof-cocScaleBias", &v32);
  C3DFXTechniqueSetValueForSymbol(*(a1 + 8), @"C3D-dof-invertPixelSize", &v31);
}

void *_C3DCreateProgressWithUnits(int a1)
{
  if (![MEMORY[0x277CCAC48] currentProgress])
  {
    return 0;
  }

  v2 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:a1];
  if (v2)
  {
    [v2 addObserver:objc_opt_class() forKeyPath:@"fractionCompleted" options:1 context:0];
  }

  return v2;
}

uint64_t C3DExecuteProgressBlocks(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27[256] = *MEMORY[0x277D85DE8];
  v22 = &a9;
  if (a1)
  {
    v9 = 0;
    do
    {
      v27[v9++] = a1;
      v10 = v22++;
      a1 = *v10;
    }

    while (*v10);
  }

  else
  {
    LODWORD(v9) = 0;
  }

  v11 = _C3DCreateProgressWithUnits(v9);
  if (!v9)
  {
    return 1;
  }

  v12 = v11;
  v13 = v27;
  v14 = 1;
  v15 = v9;
  do
  {
    [v12 becomeCurrentWithPendingUnitCount:1];
    v16 = (*(*v13 + 16))();
    if (v12)
    {
      if (v12 != [MEMORY[0x277CCAC48] currentProgress])
      {
        v17 = scn_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          C3DExecuteProgressBlocks_cold_1(buf, &v26, v17);
        }
      }
    }

    [v12 resignCurrent];
    [v12 fractionCompleted];
    if (v18 > 1.0)
    {
      v19 = scn_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        C3DExecuteProgressBlocks_cold_2(v23, &v24, v19);
      }
    }

    if (v14 < v15)
    {
      v20 = v16;
    }

    else
    {
      v20 = 0;
    }

    ++v13;
    ++v14;
  }

  while ((v20 & 1) != 0);
  return v16;
}

uint64_t C3DExecuteIncrementalProgressBlock(int a1, uint64_t a2)
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v4 = _C3DCreateProgressWithUnits(a1);
  [v4 becomeCurrentWithPendingUnitCount:1];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __C3DExecuteIncrementalProgressBlock_block_invoke;
  v24[3] = &unk_278300340;
  v24[4] = v4;
  v24[5] = &v26;
  v25 = a1;
  v5 = (*(a2 + 16))(a2, v24);
  if (*(v27 + 6) < a1)
  {
    if (v4)
    {
      if (v4 != [MEMORY[0x277CCAC48] currentProgress])
      {
        v6 = scn_default_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          C3DExecuteIncrementalProgressBlock_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
        }
      }
    }

    [v4 resignCurrent];
    [v4 fractionCompleted];
    if (v14 > 1.0)
    {
      v15 = scn_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        C3DExecuteIncrementalProgressBlock_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
        if (!v4)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }
  }

  if (v4)
  {
LABEL_9:
    [v4 removeObserver:objc_opt_class() forKeyPath:@"fractionCompleted" context:0];
  }

LABEL_10:
  _Block_object_dispose(&v26, 8);
  return v5;
}

void sub_21C139B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __C3DExecuteIncrementalProgressBlock_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (v2 != [MEMORY[0x277CCAC48] currentProgress])
    {
      v3 = scn_default_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        C3DExecuteIncrementalProgressBlock_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
      }
    }
  }

  [*(a1 + 32) resignCurrent];
  [*(a1 + 32) fractionCompleted];
  if (v11 > 1.0)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DExecuteIncrementalProgressBlock_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  if (++*(*(*(a1 + 40) + 8) + 24) > *(a1 + 48))
  {
    v20 = scn_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      __C3DExecuteIncrementalProgressBlock_block_invoke_cold_3(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  if (*(*(*(a1 + 40) + 8) + 24) < *(a1 + 48))
  {
    [*(a1 + 32) becomeCurrentWithPendingUnitCount:1];
  }
}

uint64_t __structMemberSize(MTLStructMember *a1)
{
  for (i = 0; ; i += [(MTLStructMember *)a1 offset])
  {
    v3 = [(MTLStructMember *)a1 dataType];
    if (v3 != MTLDataTypeStruct)
    {
      break;
    }

    a1 = [(NSArray *)[(MTLStructType *)[(MTLStructMember *)a1 structType] members] lastObject];
  }

  if (v3 == MTLDataTypeArray)
  {
    v4 = [(MTLStructMember *)a1 arrayType];
    v5 = [(MTLArrayType *)v4 arrayLength];
    Size = SCNMTLDataTypeGetSize([(MTLArrayType *)v4 elementType]) * v5;
  }

  else
  {
    Size = SCNMTLDataTypeGetSize(v3);
  }

  return (Size + i);
}

void sub_21C13A9F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_21C13B4DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<SCNSemanticBinding>::emplace_back<SCNSemanticBinding const&>(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<SCNSemanticBinding>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
  return v6 - 16;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<SCNSemanticBinding>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<SCNPassInputBinding>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void OUTLINED_FUNCTION_1_12(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void OUTLINED_FUNCTION_2_14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x18u);
}

uint64_t _C3DNotificationCenterCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  return pthread_mutex_destroy((a1 + 24));
}

void C3DNotificationCenterRemoveObserver(uint64_t a1, const void *a2, const __CFString *a3, const void *a4)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterRemoveObserver(LocalCenter, a2, a3, a4);
}

void *_createSCNGeometryArrayFromC3DGeometryArray(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        ObjCWrapper = C3DEntityGetObjCWrapper(v7);
        if (ObjCWrapper)
        {
          [v2 addObject:ObjCWrapper];
        }

        else
        {
          v9 = [[SCNGeometry alloc] initWithGeometryRef:v7];
          [v2 addObject:v9];
        }
      }

      v4 = [a1 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  return v2;
}

void *_createSCNGeometrySubArrayFromC3DGeometryArray(void *a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = a2 + a3;
  if (a2 + a3 > [a1 count])
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      _createSCNGeometrySubArrayFromC3DGeometryArray_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v3];
  if (v4 < v6)
  {
    do
    {
      v16 = [a1 objectAtIndexedSubscript:v4];
      ObjCWrapper = C3DEntityGetObjCWrapper(v16);
      if (ObjCWrapper)
      {
        [v15 addObject:ObjCWrapper];
      }

      else
      {
        v18 = [[SCNGeometry alloc] initWithGeometryRef:v16];
        [v15 addObject:v18];
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  return v15;
}

void *_createC3DGeometryArrayFromSCNGeometryArray(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(a1);
        }

        [v2 addObject:{objc_msgSend(*(*(&v8 + 1) + 8 * v6++), "geometryRef")}];
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v2;
}

id *_block_invoke(uint64_t a1, uint64_t a2, id *a3, uint64_t a4)
{
  result = C3DEntityGetObjCWrapper(a3);
  if (result)
  {
    v6 = result;
    v7 = [SCNGeometrySource geometrySourceWithMeshSourceRef:a4];
    v8 = [v6 _encodeDataAsHalf];

    return [(SCNGeometrySource *)v7 set_encodeDataAsHalf:v8];
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);

  return [v4 countByEnumeratingWithState:va objects:va1 count:16];
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return [a17 countByEnumeratingWithState:&a33 objects:&a65 count:16];
}

void _C3DProgramHashCodeCFFinalize(uint64_t a1)
{
  SharedInstance = C3DNotificationCenterGetSharedInstance();
  C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationProgramHashCodeWillDie", a1, 0, 0);
  if (!CFDictionaryContainsKey(s_ProgramHashCodeDictionary, *(a1 + 280)))
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DProgramHashCodeCFFinalize_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (!*(a1 + 280))
  {
    v11 = scn_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      _C3DProgramHashCodeCFFinalize_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  CFDictionaryRemoveValue(s_ProgramHashCodeDictionary, *(a1 + 280));
  v19 = *(a1 + 280);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 280) = 0;
  }

  v20 = 0;
  v21 = a1 + 16;
  v22 = 1;
  do
  {
    v23 = v22;
    v24 = *(v21 + 8 * v20);
    if (v24)
    {
      CFRelease(v24);
      *(v21 + 8 * v20) = 0;
    }

    v22 = 0;
    v20 = 1;
  }

  while ((v23 & 1) != 0);
  v25 = *(a1 + 162);
  if (*(a1 + 162))
  {
    v26 = 0;
    v27 = a1 + 216;
    do
    {
      v28 = *(v27 + 8 * v26);
      if (v28)
      {
        CFRelease(v28);
        *(v27 + 8 * v26) = 0;
        v25 = *(a1 + 162);
      }

      ++v26;
    }

    while (v26 < v25);
  }
}

__CFString *_C3DProgramHashCodeCFCopyDebugDescription(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  CFStringAppendFormat(Mutable, 0, @"<C3DProgramHashCode %p : ", a1);
  v4 = (a1 + 16);
  if (*(a1 + 16))
  {
    CFStringAppend(Mutable, @"SM_Mat,");
  }

  if (*(a1 + 24))
  {
    CFStringAppend(Mutable, @"SM_Geo,");
  }

  if (*v4 || *(a1 + 24))
  {
    alloc = v2;
    memset(&c, 0, sizeof(c));
    CC_SHA256_Init(&c);
    v5 = 0;
    v6 = MEMORY[0x277D85DD0];
    v7 = 1;
    do
    {
      v8 = 0;
      v9 = v7;
      v10 = v4[v5];
      do
      {
        v44[0] = v6;
        v44[1] = 3221225472;
        v44[2] = ____createShaderModifierHashCode_block_invoke;
        v44[3] = &__block_descriptor_44_e13_v24__0q8r_v16l;
        v45 = v8;
        v44[4] = &c;
        C3DCFArrayApplyBlock(v10, v44);
        ++v8;
      }

      while (v8 != 4);
      v7 = 0;
      v5 = 1;
    }

    while ((v9 & 1) != 0);
    for (i = 0; i != 64; i += 8)
    {
      if (*(a1 + 216 + i))
      {
        CFStringUpdateHash();
      }
    }

    data = 2;
    CC_SHA256_Update(&c, &data, 4u);
    CC_SHA256_Final(md, &c);
    v12 = 0;
    v13 = cStr;
    v14.i64[0] = 0xA0A0A0A0A0A0A0A0;
    v14.i64[1] = 0xA0A0A0A0A0A0A0A0;
    v15.i64[0] = 0x3737373737373737;
    v15.i64[1] = 0x3737373737373737;
    v16.i64[0] = 0x3030303030303030;
    v16.i64[1] = 0x3030303030303030;
    v17.i64[0] = 0xF0F0F0F0F0F0F0FLL;
    v17.i64[1] = 0xF0F0F0F0F0F0F0FLL;
    v18.i64[0] = 0xA0A0A0A0A0A0A0ALL;
    v18.i64[1] = 0xA0A0A0A0A0A0A0ALL;
    do
    {
      v19 = *&md[v12];
      v20.i64[0] = 0x3737373737373737;
      v20.i64[1] = 0x3737373737373737;
      v21.i64[0] = 0x3030303030303030;
      v21.i64[1] = 0x3030303030303030;
      v50.val[0] = vbslq_s8(vcgtq_u8(v14, v19), vsraq_n_u8(v21, v19, 4uLL), vsraq_n_u8(v20, v19, 4uLL));
      v22 = vandq_s8(v19, v17);
      v50.val[1] = vbslq_s8(vcgtq_u8(v18, v22), vorrq_s8(v22, v16), vaddq_s8(v22, v15));
      vst2q_s8(v13, v50);
      v13 += 32;
      v12 += 16;
    }

    while (v12 != 32);
    cStr[64] = 0;
    v23 = CFStringCreateWithCString(alloc, cStr, 0x600u);
    CFStringAppendFormat(Mutable, 0, @"SM(%@),", v23);
    CFRelease(v23);
  }

  v24 = *(a1 + 200);
  if (v24)
  {
    CFStringAppend(Mutable, @"Aone,");
    v24 = *(a1 + 200);
    if ((v24 & 2) == 0)
    {
LABEL_20:
      if ((v24 & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_46;
    }
  }

  else if ((v24 & 2) == 0)
  {
    goto LABEL_20;
  }

  CFStringAppend(Mutable, @"Acst,");
  v24 = *(a1 + 200);
  if ((v24 & 4) == 0)
  {
LABEL_21:
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  CFStringAppend(Mutable, @"opq,");
  v24 = *(a1 + 200);
  if ((v24 & 0x10) == 0)
  {
LABEL_22:
    if ((v24 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  CFStringAppend(Mutable, @"tgt,");
  v24 = *(a1 + 200);
  if ((v24 & 0x20) == 0)
  {
LABEL_23:
    if ((v24 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  CFStringAppend(Mutable, @"lgh,");
  v24 = *(a1 + 200);
  if ((v24 & 0x40) == 0)
  {
LABEL_24:
    if ((v24 & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  CFStringAppend(Mutable, @"amb,");
  v24 = *(a1 + 200);
  if ((v24 & 0x400) == 0)
  {
LABEL_25:
    if ((v24 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  CFStringAppend(Mutable, @"prob,");
  v24 = *(a1 + 200);
  if ((v24 & 0x80) == 0)
  {
LABEL_26:
    if ((v24 & 0x100) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

LABEL_51:
  CFStringAppend(Mutable, @"fog,");
  v24 = *(a1 + 200);
  if ((v24 & 0x100) == 0)
  {
LABEL_27:
    if ((v24 & 0x200) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_52:
  CFStringAppend(Mutable, @"dynB,");
  if ((*(a1 + 200) & 0x200) != 0)
  {
LABEL_28:
    CFStringAppend(Mutable, @"pntR,");
  }

LABEL_29:
  CFStringAppendFormat(Mutable, 0, @"[%@:", _C3DProgramHashCodeCFCopyDebugDescription_modelNames[*(a1 + 120) & 0xF]);
  v25 = *(a1 + 120);
  if ((v25 & 0x10) != 0)
  {
    CFStringAppend(Mutable, @"PerPix|");
    v25 = *(a1 + 120);
    if ((v25 & 0x20) == 0)
    {
LABEL_31:
      if ((v25 & 0x40) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_56;
    }
  }

  else if ((v25 & 0x20) == 0)
  {
    goto LABEL_31;
  }

  CFStringAppend(Mutable, @"Double|");
  v25 = *(a1 + 120);
  if ((v25 & 0x40) == 0)
  {
LABEL_32:
    if ((v25 & 0x80) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_57;
  }

LABEL_56:
  CFStringAppend(Mutable, @"OverLght|");
  v25 = *(a1 + 120);
  if ((v25 & 0x80) == 0)
  {
LABEL_33:
    if ((v25 & 0x100) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_58;
  }

LABEL_57:
  CFStringAppend(Mutable, @"WrNrm|");
  v25 = *(a1 + 120);
  if ((v25 & 0x100) == 0)
  {
LABEL_34:
    if ((v25 & 0x200) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_59;
  }

LABEL_58:
  CFStringAppend(Mutable, @"Nrmliz|");
  v25 = *(a1 + 120);
  if ((v25 & 0x200) == 0)
  {
LABEL_35:
    if ((v25 & 0x400) == 0)
    {
      goto LABEL_36;
    }

LABEL_60:
    CFStringAppend(Mutable, @"LinDepth|");
    v25 = *(a1 + 120);
    if ((v25 & 0x8000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_61;
  }

LABEL_59:
  CFStringAppend(Mutable, @"WriteDepth|");
  v25 = *(a1 + 120);
  if ((v25 & 0x400) != 0)
  {
    goto LABEL_60;
  }

LABEL_36:
  if ((v25 & 0x8000) == 0)
  {
    goto LABEL_37;
  }

LABEL_61:
  CFStringAppend(Mutable, @"LockAmb|");
  v25 = *(a1 + 120);
LABEL_37:
  v26 = (v25 >> 11) & 0xF;
  if (v26 <= 3)
  {
    CFStringAppend(Mutable, off_278300558[v26]);
  }

  CFStringAppend(Mutable, @"]");
  CFStringAppend(Mutable, @"[Node:");
  v27 = *(a1 + 124);
  if (v27 >> 28)
  {
    CFStringAppendFormat(Mutable, 0, @"skn(%d)|", v27 >> 28);
    v27 = *(a1 + 124);
    if ((v27 & 1) == 0)
    {
LABEL_41:
      if ((v27 & 2) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_64;
    }
  }

  else if ((v27 & 1) == 0)
  {
    goto LABEL_41;
  }

  CFStringAppend(Mutable, @"LightMap|");
  v27 = *(a1 + 124);
  if ((v27 & 2) == 0)
  {
LABEL_42:
    if ((v27 & 4) == 0)
    {
      goto LABEL_76;
    }

LABEL_65:
    CFStringAppend(Mutable, @"Tess|");
    v28 = *(a1 + 124);
    if ((v28 & 8) != 0)
    {
      v29 = @"PNTriangles|";
    }

    else
    {
      if ((v28 & 0x10) == 0)
      {
        goto LABEL_70;
      }

      v29 = @"Phong|";
    }

    CFStringAppend(Mutable, v29);
LABEL_70:
    v27 = *(a1 + 124);
    if ((v27 & 0x20) != 0)
    {
      CFStringAppend(Mutable, @"OSD|");
      v30 = *(a1 + 124);
      if ((v30 & 0x40) != 0)
      {
        CFStringAppend(Mutable, @"SingleCrease|");
        v30 = *(a1 + 124);
      }

      if ((v30 & 0x80) != 0)
      {
        CFStringAppend(Mutable, @"ScreenSpace|");
        v30 = *(a1 + 124);
      }

      CFStringAppendFormat(Mutable, 0, @"PrimvarData=%d|", (v30 >> 8) & 0x7FFFF);
      v27 = *(a1 + 124);
    }

    goto LABEL_76;
  }

LABEL_64:
  CFStringAppend(Mutable, @"VrtCol|");
  v27 = *(a1 + 124);
  if ((v27 & 4) != 0)
  {
    goto LABEL_65;
  }

LABEL_76:
  if ((v27 & 0x8000000) != 0)
  {
    CFStringAppend(Mutable, @"Bézier|");
  }

  CFStringAppend(Mutable, @"]");
  for (j = 0; j != 21; ++j)
  {
    v32 = *(a1 + 36 + 4 * j);
    if ((v32 & 0x800) == 0)
    {
      continue;
    }

    CFStringAppendFormat(Mutable, 0, @"[%@:", _C3DProgramHashCodeCFCopyDebugDescription_propertyNames[j]);
    if (v32)
    {
      CFStringAppend(Mutable, @"Tex|");
      if ((v32 & 2) == 0)
      {
LABEL_82:
        if ((v32 & 4) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_99;
      }
    }

    else if ((v32 & 2) == 0)
    {
      goto LABEL_82;
    }

    CFStringAppend(Mutable, @"rgb0|");
    if ((v32 & 4) == 0)
    {
LABEL_83:
      if ((v32 & 8) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_100;
    }

LABEL_99:
    CFStringAppend(Mutable, @"rgb1|");
    if ((v32 & 8) == 0)
    {
LABEL_84:
      if ((v32 & 0x10) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_101;
    }

LABEL_100:
    CFStringAppend(Mutable, @"a1|");
    if ((v32 & 0x10) == 0)
    {
LABEL_85:
      if ((v32 & 0x20) != 0)
      {
        goto LABEL_102;
      }

      goto LABEL_86;
    }

LABEL_101:
    CFStringAppend(Mutable, @"flt0|");
    if ((v32 & 0x20) != 0)
    {
LABEL_102:
      CFStringAppend(Mutable, @"texA|");
      if ((v32 & 0x2000) == 0)
      {
        goto LABEL_88;
      }

LABEL_87:
      CFStringAppend(Mutable, @"int|");
      goto LABEL_88;
    }

LABEL_86:
    if ((v32 & 0x2000) != 0)
    {
      goto LABEL_87;
    }

LABEL_88:
    if ((v32 & 0x1C000) != 0)
    {
      CFStringAppend(Mutable, @"comp|");
    }

    if ((v32 & 0x1000) != 0)
    {
      CFStringAppend(Mutable, @"mat|");
    }

    v33 = ((v32 >> 6) & 0xF) - 1;
    if (v33 <= 3)
    {
      CFStringAppend(Mutable, off_278300578[v33]);
    }

    CFStringAppend(Mutable, @"]");
  }

  if (*(a1 + 160))
  {
    CFStringAppend(Mutable, @"[Lighting:");
    if (*(a1 + 160))
    {
      for (k = 0; k < *(a1 + 160); ++k)
      {
        if (k)
        {
          CFStringAppend(Mutable, @",");
        }

        v35 = *(a1 + 128 + 4 * k);
        v36 = v35 & 7;
        if (v36 > 3)
        {
          if ((v35 & 7) > 5)
          {
            if (v36 != 6)
            {
              if ((v35 & 0x200) == 0)
              {
                goto LABEL_120;
              }

              goto LABEL_148;
            }

            v37 = @"R";
          }

          else if (v36 == 4)
          {
            v37 = @"P";
          }

          else
          {
            v37 = @"I";
          }
        }

        else if ((v35 & 7) > 1)
        {
          if (v36 == 2)
          {
            v37 = @"O";
          }

          else
          {
            v37 = @"S";
          }
        }

        else
        {
          v37 = @"A";
          if ((v35 & 7) != 0)
          {
            v37 = @"D";
          }
        }

        CFStringAppend(Mutable, v37);
        if ((v35 & 0x200) == 0)
        {
LABEL_120:
          if ((v35 & 0x400) == 0)
          {
            goto LABEL_122;
          }

LABEL_121:
          CFStringAppend(Mutable, @"s");
          goto LABEL_122;
        }

LABEL_148:
        CFStringAppend(Mutable, @"g");
        if ((v35 & 0x400) != 0)
        {
          goto LABEL_121;
        }

LABEL_122:
        if ((HIWORD(v35) & 0x1F) >= 2u)
        {
          CFStringAppendFormat(Mutable, 0, @"Soft(%d)", HIWORD(v35) & 0x1F);
          if ((v35 & 0x800) == 0)
          {
LABEL_124:
            if ((v35 & 0x1000) == 0)
            {
              goto LABEL_126;
            }

LABEL_125:
            CFStringAppend(Mutable, @"m");
            goto LABEL_126;
          }
        }

        else if ((v35 & 0x800) == 0)
        {
          goto LABEL_124;
        }

        CFStringAppend(Mutable, @"c");
        if ((v35 & 0x1000) != 0)
        {
          goto LABEL_125;
        }

LABEL_126:
        v38 = (v35 >> 3) & 7;
        if (v38 > 1)
        {
          switch(v38)
          {
            case 4u:
              v39 = @"(e)";
              break;
            case 3u:
              v39 = @"(q)";
              break;
            case 2u:
              v39 = @"(l)";
              break;
            default:
              v39 = @"(?)";
              break;
          }

          goto LABEL_139;
        }

        if (v38)
        {
          v39 = @"(c)";
LABEL_139:
          CFStringAppend(Mutable, v39);
        }

        v40 = ((v35 >> 6) & 7) - 1;
        if (v40 <= 3)
        {
          CFStringAppend(Mutable, off_278300598[v40]);
        }
      }
    }

    CFStringAppend(Mutable, @"]");
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}