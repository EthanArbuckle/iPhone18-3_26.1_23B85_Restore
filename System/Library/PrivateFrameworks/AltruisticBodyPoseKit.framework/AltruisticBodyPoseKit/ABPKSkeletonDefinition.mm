@interface ABPKSkeletonDefinition
+ (id)computeParentChildOrderFor:(const void *)a3 withRoot:(int64_t)a4;
- (ABPKSkeletonDefinition)init;
- (ABPKSkeletonDefinition)initWithPlist:(id)a3 fromBundle:(id)a4;
- (ABPKSkeletonDefinition)initWithType:(int64_t)a3;
- (id).cxx_construct;
- (id)getChildrenIndices:(int64_t)a3;
- (id)jointName:(int64_t)a3;
- (int64_t)indexOfJointWithName:(id)a3;
- (int64_t)parentJoint:(int64_t)a3;
- (void)enumerateChildrenJointIndicesOfJointAtIndex:(int64_t)a3 withBlock:(id)a4;
@end

@implementation ABPKSkeletonDefinition

- (ABPKSkeletonDefinition)init
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [(ABPKSkeletonDefinition *)self initWithPlist:@"ABPKDetection2dSkeletonDefinition.plist" fromBundle:v3];

  return v4;
}

- (ABPKSkeletonDefinition)initWithType:(int64_t)a3
{
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (a3 >= 5)
  {
    v6 = __ABPKLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_23EDDC000, v6, OS_LOG_TYPE_ERROR, " ERROR: Unknown ABPKSkeletonType in ABPKSkeletonDefinition:initWithType. ", v8, 2u);
    }
  }

  else
  {
    self = [(ABPKSkeletonDefinition *)self initWithPlist:off_278C718E0[a3] fromBundle:v5];
  }

  return self;
}

- (ABPKSkeletonDefinition)initWithPlist:(id)a3 fromBundle:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v46.receiver = self;
  v46.super_class = ABPKSkeletonDefinition;
  v8 = [(ABPKSkeletonDefinition *)&v46 init];
  if (v8)
  {
    v9 = [v7 pathForResource:v6 ofType:0];
    if (!v9)
    {
      v11 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v6;
        _os_log_impl(&dword_23EDDC000, v11, OS_LOG_TYPE_DEFAULT, " Could not find path for resource %@. ", buf, 0xCu);
      }

      v18 = 0;
      goto LABEL_44;
    }

    v10 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v9];
    v11 = v10;
    if (!v10)
    {
      v19 = __ABPKLogSharedInstance();
      obj = v19;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v9;
        _os_log_impl(&dword_23EDDC000, v19, OS_LOG_TYPE_ERROR, " Failed to init dictionary from plist at path %@. ", buf, 0xCu);
      }

      v18 = 0;
      goto LABEL_43;
    }

    obj = [v10 objectForKey:@"JointNames"];
    if (!obj)
    {
      v12 = __ABPKLogSharedInstance();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23EDDC000, v12, OS_LOG_TYPE_ERROR, " Dictionary has not key 'JointNames' ", buf, 2u);
      }

      v18 = 0;
      goto LABEL_42;
    }

    v12 = [v11 objectForKey:@"ParentIndices"];
    if (v12)
    {
      v13 = [obj count];
      if (v13 == [v12 count])
      {
        objc_storeStrong(&v8->_jointNames, obj);
        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(&v8->_jointParentIndicesVector.__begin_, [v12 count]);
        for (i = 0; ; i = v45 + 1)
        {
          v45 = i;
          if (i >= [v12 count])
          {
            break;
          }

          v15 = [v12 objectAtIndexedSubscript:v45];
          v16 = [v15 integerValue];

          v44 = v16;
          std::vector<long>::push_back[abi:ne200100](&v8->_jointParentIndicesVector.__begin_, &v44);
          if (v44 != -1)
          {
            *buf = &v44;
            v17 = std::__tree<std::__value_type<long,std::vector<long>>,std::__map_value_compare<long,std::__value_type<long,std::vector<long>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::vector<long>>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(&v8->_parentsToChildIndicesMap, &v44);
            std::vector<long>::push_back[abi:ne200100](v17 + 5, &v45);
          }
        }

        begin = v8->_jointParentIndicesVector.__begin_;
        end = v8->_jointParentIndicesVector.__end_;
        v26 = end - begin;
        if (end == begin)
        {
          v29 = -1;
LABEL_40:
          v8->_rootJointIndex = v29;
          v32 = [ABPKSkeletonDefinition computeParentChildOrderFor:&v8->_jointParentIndicesVector withRoot:?];
          parentChildOrder = v8->_parentChildOrder;
          v8->_parentChildOrder = v32;

          v34 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[ABPKSkeletonDefinition jointCount](v8, "jointCount")}];
          jointNames = v8->_jointNames;
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __51__ABPKSkeletonDefinition_initWithPlist_fromBundle___block_invoke;
          v42[3] = &unk_278C718C0;
          v20 = v34;
          v43 = v20;
          [(NSArray *)jointNames enumerateObjectsUsingBlock:v42];
          v36 = [v20 copy];
          jointNamesToIndices = v8->_jointNamesToIndices;
          v8->_jointNamesToIndices = v36;

          v18 = v8;
          goto LABEL_41;
        }

        v27 = 0;
        v28 = v26 >> 3;
        if (v28 <= 1)
        {
          v28 = 1;
        }

        v29 = -1;
        while (1)
        {
          v30 = begin[v27];
          if (v30 < 0)
          {
            if (v30 != -1)
            {
              v20 = __ABPKLogSharedInstance();
              if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_28;
              }

              *buf = 134217984;
              *&buf[4] = v30;
              v21 = " Found parent index (%ld) < -1. ";
              v22 = v20;
              v23 = 12;
              goto LABEL_27;
            }

            v31 = v29 == -1;
            v29 = v27;
            if (!v31)
            {
              break;
            }
          }

          if (v28 == ++v27)
          {
            goto LABEL_40;
          }
        }

        v20 = __ABPKLogSharedInstance();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v21 = " Found multiple joints without parent joint. ";
          goto LABEL_26;
        }

LABEL_28:
        v18 = 0;
LABEL_41:

LABEL_42:
LABEL_43:

LABEL_44:
        goto LABEL_45;
      }

      v20 = __ABPKLogSharedInstance();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v21 = " Mismatch in nr of elements between JointNames and ParentIndices. ";
    }

    else
    {
      v20 = __ABPKLogSharedInstance();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v21 = " Dictionary has not key 'ParentIndices' ";
    }

LABEL_26:
    v22 = v20;
    v23 = 2;
LABEL_27:
    _os_log_impl(&dword_23EDDC000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
    goto LABEL_28;
  }

  v18 = 0;
LABEL_45:

  v38 = *MEMORY[0x277D85DE8];
  return v18;
}

void __51__ABPKSkeletonDefinition_initWithPlist_fromBundle___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v5 setValue:v6 forKey:v7];
}

- (id)jointName:(int64_t)a3
{
  if (a3 < 0)
  {
    v6 = 0;
  }

  else
  {
    if ([(NSArray *)self->_jointNames count]<= a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(NSArray *)self->_jointNames objectAtIndex:a3];
    }
  }

  return v6;
}

- (int64_t)indexOfJointWithName:(id)a3
{
  v3 = [(NSDictionary *)self->_jointNamesToIndices objectForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (int64_t)parentJoint:(int64_t)a3
{
  if (a3 < 0)
  {
    return -1;
  }

  begin = self->_jointParentIndicesVector.__begin_;
  if (a3 >= (self->_jointParentIndicesVector.__end_ - begin))
  {
    return -1;
  }

  else
  {
    return begin[a3];
  }
}

- (id)getChildrenIndices:(int64_t)a3
{
  v10[0] = a3;
  if (a3 < 0 || a3 >= (self->_jointParentIndicesVector.__end_ - self->_jointParentIndicesVector.__begin_))
  {
    v8 = objc_opt_new();
  }

  else
  {
    v10[2] = v10;
    v3 = std::__tree<std::__value_type<long,std::vector<long>>,std::__map_value_compare<long,std::__value_type<long,std::vector<long>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::vector<long>>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(&self->_parentsToChildIndicesMap, v10);
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:(v3[6] - v3[5]) >> 3];
    v5 = v3[5];
    if (v3[6] != v5)
    {
      v6 = 0;
      do
      {
        v7 = [MEMORY[0x277CCABB0] numberWithLong:*(v5 + 8 * v6)];
        [v4 addObject:v7];

        ++v6;
        v5 = v3[5];
      }

      while (v6 < (v3[6] - v5) >> 3);
    }

    v8 = [v4 copy];
  }

  return v8;
}

- (void)enumerateChildrenJointIndicesOfJointAtIndex:(int64_t)a3 withBlock:(id)a4
{
  v10[0] = a3;
  v6 = a4;
  if ((a3 & 0x8000000000000000) == 0 && a3 < (self->_jointParentIndicesVector.__end_ - self->_jointParentIndicesVector.__begin_))
  {
    v10[2] = v10;
    v7 = std::__tree<std::__value_type<long,std::vector<long>>,std::__map_value_compare<long,std::__value_type<long,std::vector<long>>,std::less<long>,true>,std::allocator<std::__value_type<long,std::vector<long>>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(&self->_parentsToChildIndicesMap, v10);
    v8 = v7[5];
    for (i = v7[6]; v8 != i; ++v8)
    {
      v6[2](v6, *v8);
    }
  }
}

+ (id)computeParentChildOrderFor:(const void *)a3 withRoot:(int64_t)a4
{
  std::vector<int>::vector[abi:ne200100](&v45, (*(a3 + 1) - *a3) >> 3);
  v6 = v45;
  v45[a4] = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v7 = *a3;
  if (*(a3 + 1) == *a3)
  {
    v38 = 0;
    v39 = 0;
    v19 = 1;
    v40 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      v41 = v10;
      v11 = v6[v10];
      if (v11 < 0)
      {
        do
        {
          std::vector<long>::push_back[abi:ne200100](&v42, &v41);
          v7 = *a3;
          v41 = *(*a3 + 8 * v41);
          v6 = v45;
          v11 = v45[v41];
        }

        while (v11 < 0);
        v9 = v42;
        v8 = v43;
      }

      if (v8 != v9)
      {
        v12 = v11 + 1;
        do
        {
          v13 = *(v8 - 1);
          v8 -= 8;
          v41 = v13;
          v6[v13] = v12++;
        }

        while (v8 != v9);
        v43 = v8;
      }

      ++v10;
      v14 = *(a3 + 1);
    }

    while (v10 < (v14 - v7) >> 3);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    if (v14 == v7)
    {
      v19 = 1;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = v45[v17];
        if (v18 + 1 > ((v16 - v15) >> 2))
        {
          do
          {
            LODWORD(v37.__begin_) = 0;
            std::vector<int>::push_back[abi:ne200100](&v38, &v37);
            v15 = v38;
            v16 = v39;
          }

          while (v18 + 1 > ((v39 - v38) >> 2));
          v7 = *a3;
          v14 = *(a3 + 1);
        }

        ++v15[v18];
        ++v17;
      }

      while (v17 < (v14 - v7) >> 3);
      v19 = ((v16 - v15) >> 2) + 1;
    }
  }

  memset(&v37, 0, sizeof(v37));
  std::vector<int>::reserve(&v37, v19);
  LODWORD(__p) = 0;
  std::vector<int>::push_back[abi:ne200100](&v37.__begin_, &__p);
  v20 = v38;
  v21 = v39;
  while (v20 != v21)
  {
    LODWORD(__p) = *(v37.__end_ - 1) + *v20;
    std::vector<int>::push_back[abi:ne200100](&v37.__begin_, &__p);
    ++v20;
  }

  std::vector<int>::vector[abi:ne200100](&__p, (*(a3 + 1) - *a3) >> 3);
  v22 = v45;
  v23 = __p;
  if (v46 != v45)
  {
    v24 = 0;
    v25 = v46 - v45;
    begin = v37.__begin_;
    if (v25 <= 1)
    {
      v25 = 1;
    }

    do
    {
      v27 = v22[v24];
      v28 = begin[v27];
      begin[v27] = v28 + 1;
      v23[v28] = v24++;
    }

    while (v25 != v24);
  }

  v29 = [MEMORY[0x277CBEB18] arrayWithCapacity:(v36 - v23) >> 2];
  v30 = __p;
  if (v36 != __p)
  {
    v31 = 0;
    do
    {
      v32 = [MEMORY[0x277CCABB0] numberWithInt:v30[v31]];
      [v29 addObject:v32];

      ++v31;
      v30 = __p;
    }

    while (v31 < (v36 - __p) >> 2);
  }

  v33 = [v29 copy];

  if (__p)
  {
    v36 = __p;
    operator delete(__p);
  }

  if (v37.__begin_)
  {
    v37.__end_ = v37.__begin_;
    operator delete(v37.__begin_);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  return v33;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 7) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  *(self + 5) = self + 48;
  return self;
}

@end