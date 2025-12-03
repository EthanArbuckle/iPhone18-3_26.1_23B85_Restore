@interface PHASEShape
- (PHASEEngine)engine;
- (PHASEShape)init;
- (PHASEShape)initWithEngine:(PHASEEngine *)engine mesh:(MDLMesh *)mesh;
- (PHASEShape)initWithEngine:(PHASEEngine *)engine mesh:(MDLMesh *)mesh materials:(NSArray *)materials;
- (PHASEShape)initWithEngine:(id)engine mesh:(id)mesh materials:(id)materials options:(id)options;
- (PHASEShape)initWithEngine:(id)engine mesh:(id)mesh options:(id)options;
- (PHASEShape)initWithShape:(id)shape;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dumpState;
- (id)geoShapeHandlesForEntityType:(unsigned int)type;
- (void)applyOptions:(id)options;
- (void)buildLocalizedGeometryPermutations;
- (void)dealloc;
- (void)updateMaterialForElement:(id)element;
- (void)updateMaterialForShape:(Handle64)shape fromElementIndex:(unint64_t)index;
@end

@implementation PHASEShape

- (PHASEShape)init
{
  [(PHASEShape *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEShape)initWithShape:(id)shape
{
  shapeCopy = shape;
  v43.receiver = self;
  v43.super_class = PHASEShape;
  v5 = [(PHASEShape *)&v43 init];
  v6 = v5;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(shapeCopy + 10);
    objc_storeWeak(v5 + 10, WeakRetained);

    v8 = *(shapeCopy + 2);
    if (v8 && *v8)
    {
      Phase::MdlMeshAsset::Initialize((v5 + 8), *v8);
    }

    *(v5 + 8) = *(shapeCopy + 8);
    *(v5 + 5) = *(shapeCopy + 5);
    v5[48] = shapeCopy[48];
    if (v5 != shapeCopy)
    {
      v10 = *(shapeCopy + 7);
      v9 = *(shapeCopy + 8);
      v11 = v9 - v10;
      v12 = *(v5 + 9);
      v13 = *(v5 + 7);
      if (v12 - v13 < (v9 - v10))
      {
        v14 = 0x2E8BA2E8BA2E8BA3 * (v11 >> 3);
        if (v13)
        {
          v15 = *(v5 + 8);
          v16 = *(v5 + 7);
          if (v15 != v13)
          {
            do
            {
              v15 -= 88;
              std::__destroy_at[abi:ne200100]<Phase::Controller::GeometryPermutation,0>(v15);
            }

            while (v15 != v13);
            v16 = *(v5 + 7);
          }

          *(v5 + 8) = v13;
          operator delete(v16);
          v12 = 0;
          *(v5 + 7) = 0;
          *(v5 + 8) = 0;
          *(v5 + 9) = 0;
        }

        if (v14 <= 0x2E8BA2E8BA2E8BALL)
        {
          v17 = 0x2E8BA2E8BA2E8BA3 * (v12 >> 3);
          v18 = 2 * v17;
          if (2 * v17 <= v14)
          {
            v18 = v14;
          }

          if (v17 >= 0x1745D1745D1745DLL)
          {
            v19 = 0x2E8BA2E8BA2E8BALL;
          }

          else
          {
            v19 = v18;
          }

          if (v19 <= 0x2E8BA2E8BA2E8BALL)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::LocalizedGeometryPermutation>>(v19);
          }
        }

        std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
      }

      v20 = *(v5 + 8) - v13;
      if (v20 >= v11)
      {
        v21 = std::__copy_impl::operator()[abi:ne200100]<Phase::LocalizedGeometryPermutation *,Phase::LocalizedGeometryPermutation *,Phase::LocalizedGeometryPermutation *>(*(shapeCopy + 7), *(shapeCopy + 8), *(v5 + 7));
        for (i = *(v5 + 8); i != v21; std::__destroy_at[abi:ne200100]<Phase::Controller::GeometryPermutation,0>(i))
        {
          i -= 88;
        }

        *(v5 + 8) = v21;
      }

      else
      {
        std::__copy_impl::operator()[abi:ne200100]<Phase::LocalizedGeometryPermutation *,Phase::LocalizedGeometryPermutation *,Phase::LocalizedGeometryPermutation *>(*(shapeCopy + 7), v10 + v20, *(v5 + 7));
        *(v5 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<Phase::LocalizedGeometryPermutation>,Phase::LocalizedGeometryPermutation*,Phase::LocalizedGeometryPermutation*,Phase::LocalizedGeometryPermutation*>(v10 + v20, v9, *(v5 + 8));
      }
    }

    elements = [shapeCopy elements];
    v24 = [elements count];

    if (v24)
    {
      v41 = v5;
      v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:v24];
      for (j = 0; j != v24; ++j)
      {
        v27 = [PHASEShapeElement alloc];
        elements2 = [shapeCopy elements];
        v29 = [elements2 objectAtIndexedSubscript:j];
        material = [v29 material];
        v31 = [(PHASEShapeElement *)v27 initWithOwner:v6 material:material];
        [v25 setObject:v31 atIndexedSubscript:j];
      }

      v32 = [MEMORY[0x277CBEA60] arrayWithArray:v25];
      elements = v6->_elements;
      v6->_elements = v32;

      v5 = v41;
    }

    std::vector<unsigned int>::vector[abi:ne200100](__p, 1uLL);
    v34 = __p[0];
    *__p[0] = 1;
    begin = v6->_localizedGeometryPermutations.__begin_;
    end = v6->_localizedGeometryPermutations.__end_;
    if (begin == end)
    {
      goto LABEL_36;
    }

    do
    {
      if (*(begin + 10))
      {
        v37 = objc_loadWeakRetained(v5 + 10);
        implementation = [v37 implementation];
        v39 = (*(**(implementation + 368) + 64))(*(implementation + 368), *(begin + 10), __p);

        if (!v39)
        {
          std::terminate();
        }

        *(begin + 10) = v39;
      }

      begin = (begin + 88);
    }

    while (begin != end);
    v34 = __p[0];
    if (__p[0])
    {
LABEL_36:
      __p[1] = v34;
      operator delete(v34);
    }
  }

  return v6;
}

- (PHASEShape)initWithEngine:(PHASEEngine *)engine mesh:(MDLMesh *)mesh
{
  v6 = engine;
  v7 = mesh;
  v17.receiver = self;
  v17.super_class = PHASEShape;
  v8 = [(PHASEShape *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_engine, v6);
    Phase::MdlMeshAsset::Initialize(&v9->_meshAsset, v7);
    v9->_voxelDensity = 64;
    v9->_flags = 7;
    v9->_isReal = 0;
    [(PHASEShape *)v9 buildLocalizedGeometryPermutations];
    SubmeshCount = Phase::MdlMeshAsset::GetSubmeshCount(&v9->_meshAsset);
    if (SubmeshCount)
    {
      v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:SubmeshCount];
      v12 = 0;
      do
      {
        v13 = [[PHASEShapeElement alloc] initWithOwner:v9];
        [v11 setObject:v13 atIndexedSubscript:v12];

        ++v12;
      }

      while (SubmeshCount != v12);
      v14 = [MEMORY[0x277CBEA60] arrayWithArray:v11];
      elements = v9->_elements;
      v9->_elements = v14;
    }
  }

  return v9;
}

- (PHASEShape)initWithEngine:(PHASEEngine *)engine mesh:(MDLMesh *)mesh materials:(NSArray *)materials
{
  v8 = engine;
  v9 = mesh;
  v10 = materials;
  v11 = v10;
  if (v10 && [(NSArray *)v10 count])
  {
    v12 = [(PHASEShape *)self initWithEngine:v8 mesh:v9];
    if (v12 && [(NSArray *)v11 count])
    {
      v13 = 0;
      for (i = 0; i < [(NSArray *)v12->_elements count]; ++i)
      {
        v15 = [(NSArray *)v11 objectAtIndexedSubscript:v13];
        v16 = [(NSArray *)v12->_elements objectAtIndexedSubscript:i];
        [v16 setMaterial:v15];

        if (v13 + 1 < [(NSArray *)v11 count])
        {
          ++v13;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"API Misuse" format:@"initWithEngine:mesh:materials - the materials array cannot be nil or empty"];
    selfCopy = 0;
  }

  return selfCopy;
}

- (PHASEShape)initWithEngine:(id)engine mesh:(id)mesh options:(id)options
{
  v41 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  meshCopy = mesh;
  optionsCopy = options;
  v32 = engineCopy;
  v9 = [(PHASEShape *)self initWithEngine:engineCopy mesh:meshCopy];
  v10 = v9;
  if (v9)
  {
    [(PHASEShape *)v9 applyOptions:optionsCopy];
    [(PHASEShape *)v10 buildLocalizedGeometryPermutations];
  }

  v31 = v10;
  if (v10->_isReal)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = [meshCopy submeshes];
    v11 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v11)
    {
      v12 = 0;
      v13 = *v35;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          material = [v15 material];
          v17 = [material propertyNamed:@"ARMeshGeometryClassification"];

          material2 = [v15 material];
          v19 = [material2 propertyNamed:@"ARMeshGeometryMaterial"];

          if (v17)
          {
            v20 = v19 == 0;
          }

          else
          {
            v20 = 1;
          }

          if (!v20)
          {
            v38[0] = @"ARMeshClassificationID";
            v21 = MEMORY[0x277CCABB0];
            [v17 floatValue];
            v22 = [v21 numberWithFloat:?];
            v38[1] = @"ARMeshMaterialID";
            v39[0] = v22;
            v23 = MEMORY[0x277CCABB0];
            [v19 floatValue];
            v24 = [v23 numberWithFloat:?];
            v39[1] = v24;
            v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];

            v26 = [[PHASEMaterial alloc] initWithEngine:v32 semantics:v25];
            v27 = [(NSArray *)v31->_elements objectAtIndexedSubscript:v12];
            [v27 setMaterial:v26];
          }

          ++v12;
        }

        v11 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v11);
    }
  }

  return v31;
}

- (PHASEShape)initWithEngine:(id)engine mesh:(id)mesh materials:(id)materials options:(id)options
{
  engineCopy = engine;
  meshCopy = mesh;
  materialsCopy = materials;
  optionsCopy = options;
  v14 = [(PHASEShape *)self initWithEngine:engineCopy mesh:meshCopy materials:materialsCopy];
  v15 = v14;
  if (v14)
  {
    [(PHASEShape *)v14 applyOptions:optionsCopy];
    [(PHASEShape *)v15 buildLocalizedGeometryPermutations];
  }

  return v15;
}

- (id)geoShapeHandlesForEntityType:(unsigned int)type
{
  v47 = *MEMORY[0x277D85DE8];
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  begin = self->_localizedGeometryPermutations.__begin_;
  end = self->_localizedGeometryPermutations.__end_;
  selfCopy = self;
  v32 = end;
LABEL_2:
  if (begin != end)
  {
    v7 = *(begin + 6);
    v6 = *(begin + 7);
    while (1)
    {
      if (v7 == v6)
      {
        begin = (begin + 88);
        end = v32;
        goto LABEL_2;
      }

      if (*v7 == type)
      {
        v8 = *(begin + 10);
        if (v8)
        {
          goto LABEL_25;
        }

        if ([(NSArray *)selfCopy->_elements count])
        {
          v33 = selfCopy->_elements;
          std::vector<unsigned long long>::vector[abi:ne200100](&__p, -[NSArray count](v33, "count"));
          v9 = __p;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v10 = v33;
          v11 = [(NSArray *)v10 countByEnumeratingWithState:&v39 objects:buf count:16];
          if (v11)
          {
            v12 = *v40;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v40 != v12)
                {
                  objc_enumerationMutation(v10);
                }

                v14 = *(*(&v39 + 1) + 8 * i);
                material = [v14 material];
                v16 = material == 0;

                if (v16)
                {
                  geoMaterialHandle = 0;
                }

                else
                {
                  material2 = [v14 material];
                  geoMaterialHandle = [material2 geoMaterialHandle];
                }

                *v9++ = geoMaterialHandle;
              }

              v11 = [(NSArray *)v10 countByEnumeratingWithState:&v39 objects:buf count:16];
            }

            while (v11);
          }

          memset(buf, 0, sizeof(buf));
          std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(buf, __p, v38, (v38 - __p) >> 3);
          v46 = 10;
          Phase::UnorderedStringMap<Phase::OptionsValue>::Set(begin + 1, &Phase::Geometry::ShapeOptions::MaterialList, buf);
          std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
          if (__p)
          {
            v38 = __p;
            operator delete(__p);
          }
        }

        if (type == 4)
        {
          *buf = *(begin + 18) & 7;
          v46 = 2;
          Phase::UnorderedStringMap<Phase::OptionsValue>::Set(begin + 1, &Phase::Geometry::ShapeOptions::SceneQueryFilter, buf);
          std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
        }

        if (*begin == 2)
        {
          *buf = selfCopy->_voxelDensity;
          v46 = 1;
          Phase::UnorderedStringMap<Phase::OptionsValue>::Set(begin + 1, &Phase::Geometry::VoxelTreeOptions::Resolution, buf);
          std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,unsigned int,float,double,Phase::Vector<float,2ul>,Phase::Vector<float,3ul>,Phase::Vector<float,4ul>,std::string,std::vector<unsigned int>,std::vector<unsigned long long>,Phase::UnorderedStringMap<Phase::OptionsValue>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
        }

        WeakRetained = objc_loadWeakRetained(&selfCopy->_engine);
        implementation = [WeakRetained implementation];
        v8 = (*(**(implementation + 368) + 40))(*(implementation + 368), *begin, &selfCopy->_meshAsset, begin + 8);
        *(begin + 10) = v8;

        if (v8)
        {
LABEL_25:
          v21 = objc_loadWeakRetained(&selfCopy->_engine);
          v22 = *([v21 implementation] + 368);
          memset(buf, 0, sizeof(buf));
          v23 = (*(*v22 + 64))(v22, v8, buf);
          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }

          if (!v23)
          {
            v26 = **(Phase::Logger::GetInstance(v24) + 448);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              dumpState = [(PHASEShape *)selfCopy dumpState];
              *buf = 136315906;
              *&buf[4] = "PHASEShape.mm";
              *&buf[12] = 1024;
              *&buf[14] = 403;
              *&buf[18] = 1024;
              *&buf[20] = type;
              v44 = 2112;
              v45 = dumpState;
              _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d [PHASEShape geoShapeHandlesForEntityType] - Failed to copy shapetype: %u.\n%@", buf, 0x22u);
            }

            v28 = 0;
            goto LABEL_40;
          }

          v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23];
          [v34 addObject:v25];
        }
      }

      ++v7;
    }
  }

  if (type - 3 <= 2 && ![v34 count])
  {
    v29 = **(Phase::Logger::GetInstance(0) + 448);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      dumpState2 = [(PHASEShape *)selfCopy dumpState];
      *buf = 136315906;
      *&buf[4] = "PHASEShape.mm";
      *&buf[12] = 1024;
      *&buf[14] = 428;
      *&buf[18] = 1024;
      *&buf[20] = type;
      v44 = 2112;
      v45 = dumpState2;
      _os_log_impl(&dword_23A302000, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [PHASEShape geoShapeHandlesForEntityType] - Expected to find at least one geometry permutation with a matching entity type: %u.\n%@", buf, 0x22u);
    }
  }

  v28 = [MEMORY[0x277CBEA60] arrayWithArray:{v34, v32}];
LABEL_40:

  return v28;
}

- (void)updateMaterialForElement:(id)element
{
  elementCopy = element;
  v4 = [(NSArray *)self->_elements indexOfObject:?];
  if (v4 >= [(NSArray *)self->_elements count])
  {
    std::terminate();
  }

  begin = self->_localizedGeometryPermutations.__begin_;
  end = self->_localizedGeometryPermutations.__end_;
  while (begin != end)
  {
    v7 = *(begin + 10);
    if (v7)
    {
      [(PHASEShape *)self updateMaterialForShape:v7 fromElementIndex:v4];
    }

    begin = (begin + 88);
  }
}

- (void)updateMaterialForShape:(Handle64)shape fromElementIndex:(unint64_t)index
{
  if (!shape.mData)
  {
    std::terminate();
  }

  v11 = [(NSArray *)self->_elements objectAtIndexedSubscript:index];
  material = [v11 material];

  if (material)
  {
    material2 = [v11 material];
    material = [material2 geoMaterialHandle];
  }

  WeakRetained = objc_loadWeakRetained(&self->_engine);
  implementation = [WeakRetained implementation];
  (*(**(implementation + 368) + 120))(*(implementation + 368), shape.mData, index, material);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithShape:self];
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  if (WeakRetained)
  {
    begin = self->_localizedGeometryPermutations.__begin_;
    end = self->_localizedGeometryPermutations.__end_;
    while (begin != end)
    {
      if (*(begin + 10))
      {
        v6 = objc_loadWeakRetained(&self->_engine);
        implementation = [v6 implementation];
        (*(**(implementation + 368) + 344))(*(implementation + 368), *(begin + 10));

        *(begin + 10) = 0;
      }

      begin = (begin + 88);
    }
  }

  v8.receiver = self;
  v8.super_class = PHASEShape;
  [(PHASEShape *)&v8 dealloc];
}

- (void)applyOptions:(id)options
{
  v44 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  optionsCopy = options;
  v5 = [optionsCopy countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (v5)
  {
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(optionsCopy);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v9 = [optionsCopy objectForKey:{v8, v33}];
        if ([v8 isEqualToString:@"PHASEVoxelDensityKey"])
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if ((isKindOfClass & 1) == 0)
          {
            v20 = **(Phase::Logger::GetInstance(isKindOfClass) + 448);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v38 = "PHASEShape.mm";
              v39 = 1024;
              v40 = 513;
              _os_log_impl(&dword_23A302000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): [PHASEShape initWithEngine:mesh:materials:options] - The value for option PHASEVoxelDensityKey must be of  class NSNumber.", buf, 0x12u);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(exception, "[PHASEShape initWithEngine:mesh:materials:options] - The value for option PHASEVoxelDensityKey must be of class NSNumber.");
            goto LABEL_41;
          }

          v11 = v9;
          intValue = [v11 intValue];
          if ((intValue ^ (intValue - 1)) <= intValue - 1 || (intValue & 0xAAAAAAAA) != 0)
          {
            v22 = **(Phase::Logger::GetInstance(intValue) + 448);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              intValue2 = [v11 intValue];
              *buf = 136315650;
              v38 = "PHASEShape.mm";
              v39 = 1024;
              v40 = 506;
              v41 = 1024;
              LODWORD(v42) = intValue2;
              _os_log_impl(&dword_23A302000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): [PHASEShape initWithEngine:mesh:materials:options] - The value for option PHASEVoxelDensityKey must be a  power of four. The value passed in == %d", buf, 0x18u);
            }

            v25 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v25, "[PHASEShape initWithEngine:mesh:materials:options] - The value for option PHASEVoxelDensityKey must be a power of four. The value passed in == %d");
            v25->__vftable = (MEMORY[0x277D828F8] + 16);
          }

          self->_voxelDensity = [v11 intValue];
        }

        else if ([v8 isEqualToString:@"PHASEShapeCategoriesKey"])
        {
          objc_opt_class();
          v14 = objc_opt_isKindOfClass();
          if ((v14 & 1) == 0)
          {
            v26 = **(Phase::Logger::GetInstance(v14) + 448);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v38 = "PHASEShape.mm";
              v39 = 1024;
              v40 = 539;
              _os_log_impl(&dword_23A302000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): [PHASEShape initWithEngine:mesh:materials:options] - The value for option PHASEShapeCategoriesKey must be of  class NSNumber.", buf, 0x12u);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(exception, "[PHASEShape initWithEngine:mesh:materials:options] - The value for option PHASEShapeCategoriesKey must be of class NSNumber.");
            goto LABEL_41;
          }

          unsignedIntegerValue = [v9 unsignedIntegerValue];
          v16 = unsignedIntegerValue;
          if ((unsignedIntegerValue & 7) == 0)
          {
            v27 = **(Phase::Logger::GetInstance(unsignedIntegerValue) + 448);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v38 = "PHASEShape.mm";
              v39 = 1024;
              v40 = 532;
              v41 = 2048;
              v42 = v16;
              _os_log_impl(&dword_23A302000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): [PHASEShape initWithEngine:mesh:materials:options] - The value for option PHASEShapeCategoriesKey must  contain a valid set of PHASESpatialPipelineFlags. The value passed in == %lu", buf, 0x1Cu);
            }

            v28 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v28, "[PHASEShape initWithEngine:mesh:materials:options] - The value for option PHASEShapeCategoriesKey must contain a valid set of PHASESpatialPipelineFlags. The value passed in == %lu");
            v28->__vftable = (MEMORY[0x277D828F8] + 16);
          }

          self->_flags = unsignedIntegerValue;
        }

        else if ([v8 isEqualToString:@"PHASEShapeIsRealKey"])
        {
          objc_opt_class();
          v17 = objc_opt_isKindOfClass();
          if ((v17 & 1) == 0)
          {
            v29 = **(Phase::Logger::GetInstance(v17) + 448);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v38 = "PHASEShape.mm";
              v39 = 1024;
              v40 = 563;
              _os_log_impl(&dword_23A302000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): [PHASEShape initWithEngine:mesh:materials:options] - The value for option PHASEShapeIsRealKey must be of  class NSNumber.", buf, 0x12u);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(exception, "[PHASEShape initWithEngine:mesh:materials:options] - The value for option PHASEShapeIsRealKey must be of class NSNumber.");
LABEL_41:
            exception->__vftable = (MEMORY[0x277D828F8] + 16);
          }

          v18 = v9;
          if ([v18 intValue])
          {
            intValue3 = [v18 intValue];
            if (intValue3 != 1)
            {
              v30 = **(Phase::Logger::GetInstance(intValue3) + 448);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                intValue4 = [v18 intValue];
                *buf = 136315650;
                v38 = "PHASEShape.mm";
                v39 = 1024;
                v40 = 556;
                v41 = 1024;
                LODWORD(v42) = intValue4;
                _os_log_impl(&dword_23A302000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): [PHASEShape initWithEngine:mesh:materials:options] - The value for option PHASEShapeIsRealKey be either  YES, NO, 1 (integer) or 0 (integer). The value passed in == %d", buf, 0x18u);
              }

              v32 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v32, "[PHASEShape initWithEngine:mesh:materials:options] - The value for option PHASEShapeIsRealKey be either YES, NO, 1 (integer) or 0 (integer). The value passed in == %d");
              v32->__vftable = (MEMORY[0x277D828F8] + 16);
            }
          }

          self->_isReal = [v18 BOOLValue];
        }
      }

      v5 = [optionsCopy countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v5);
  }
}

- (void)buildLocalizedGeometryPermutations
{
  begin = self->_localizedGeometryPermutations.__begin_;
  end = self->_localizedGeometryPermutations.__end_;
  p_localizedGeometryPermutations = &self->_localizedGeometryPermutations;
  while (end != begin)
  {
    end = (end - 88);
    std::__destroy_at[abi:ne200100]<Phase::Controller::GeometryPermutation,0>(end);
  }

  self->_localizedGeometryPermutations.__end_ = begin;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  implementation = [WeakRetained implementation];
  v40 = 0;
  v41 = 0;
  v42 = 0;
  std::vector<Phase::Controller::GeometryPermutation>::__init_with_size[abi:ne200100]<Phase::Controller::GeometryPermutation*,Phase::Controller::GeometryPermutation*>(&v40, *(implementation + 552), *(implementation + 560), 0xCCCCCCCCCCCCCCCDLL * ((*(implementation + 560) - *(implementation + 552)) >> 4));

  v8 = objc_loadWeakRetained(&self->_engine);
  if ([v8 engineMode] == 2)
  {
  }

  else
  {
    v9 = objc_loadWeakRetained(&self->_engine);
    engineMode = [v9 engineMode];

    if (engineMode != 1)
    {
      goto LABEL_11;
    }
  }

  if (Phase::CurrentProcessCanModifySharedEntities(void)::onceToken != -1)
  {
    dispatch_once(&Phase::CurrentProcessCanModifySharedEntities(void)::onceToken, &__block_literal_global_5);
  }

  if ((Phase::CurrentProcessCanModifySharedEntities(void)::currentProcessCanModifySharedEntities & 1) == 0)
  {
    self->_flags &= 0xFFFFFFFFFFFFFFF9;
  }

LABEL_11:
  v11 = v40;
  for (i = v41; v11 != i; v11 += 80)
  {
    v13 = self->_flags & *(v11 + 72);
    if ((v13 & 7) != 0)
    {
      LODWORD(v34) = *v11;
      std::unordered_map<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,std::allocator<std::pair<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey const,Phase::OptionsValue>>>::unordered_map(v35, v11 + 8);
      __p = 0;
      v37 = 0;
      v38 = 0;
      std::vector<Phase::Geometry::EntityType>::__init_with_size[abi:ne200100]<Phase::Geometry::EntityType*,Phase::Geometry::EntityType*>(&__p, *(v11 + 48), *(v11 + 56), (*(v11 + 56) - *(v11 + 48)) >> 2);
      v39 = v13;
      v15 = self->_localizedGeometryPermutations.__end_;
      cap = self->_localizedGeometryPermutations.__cap_;
      if (v15 >= cap)
      {
        v17 = 0x2E8BA2E8BA2E8BA3 * ((v15 - p_localizedGeometryPermutations->__begin_) >> 3);
        v18 = v17 + 1;
        if ((v17 + 1) > 0x2E8BA2E8BA2E8BALL)
        {
          std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
        }

        v19 = 0x2E8BA2E8BA2E8BA3 * ((cap - p_localizedGeometryPermutations->__begin_) >> 3);
        if (2 * v19 > v18)
        {
          v18 = 2 * v19;
        }

        if (v19 >= 0x1745D1745D1745DLL)
        {
          v20 = 0x2E8BA2E8BA2E8BALL;
        }

        else
        {
          v20 = v18;
        }

        v47 = p_localizedGeometryPermutations;
        if (v20)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::LocalizedGeometryPermutation>>(v20);
        }

        v21 = 88 * v17;
        v43 = 0;
        v44 = v21;
        v45 = v21;
        v46 = 0;
        *v21 = v34;
        std::unordered_map<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,std::allocator<std::pair<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey const,Phase::OptionsValue>>>::unordered_map(v21 + 8, v35);
        *(v21 + 48) = 0;
        *(v21 + 56) = 0;
        *(v21 + 64) = 0;
        std::vector<Phase::Geometry::EntityType>::__init_with_size[abi:ne200100]<Phase::Geometry::EntityType*,Phase::Geometry::EntityType*>(v21 + 48, __p, v37, (v37 - __p) >> 2);
        *(v21 + 72) = v39;
        v22 = self->_localizedGeometryPermutations.__begin_;
        v23 = self->_localizedGeometryPermutations.__end_;
        v24 = v23 - v22;
        v26 = v44;
        v25 = v45;
        if (v23 != v22)
        {
          v32 = v45;
          v33 = v23 - v22;
          v27 = v22 + 8;
          v28 = v44 - 8 * ((v23 - v22) >> 3) + 8;
          do
          {
            *(v28 - 8) = *(v27 - 2);
            v29 = std::__hash_table<std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,Phase::Controller::Parameter<double>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,Phase::Controller::Parameter<double>>>>::__hash_table(v28, v27);
            *(v29 + 40) = 0;
            *(v29 + 48) = 0;
            *(v29 + 56) = 0;
            *(v29 + 40) = *(v27 + 40);
            *(v29 + 56) = *(v27 + 7);
            *(v27 + 5) = 0;
            *(v27 + 6) = 0;
            *(v27 + 7) = 0;
            *(v29 + 64) = *(v27 + 4);
            v30 = (v27 + 80);
            v27 += 88;
            v28 = v29 + 88;
          }

          while (v30 != v23);
          do
          {
            std::__destroy_at[abi:ne200100]<Phase::Controller::GeometryPermutation,0>(v22);
            v22 = (v22 + 88);
          }

          while (v22 != v23);
          v22 = p_localizedGeometryPermutations->__begin_;
          v25 = v32;
          v24 = v33;
        }

        v16 = (v25 + 88);
        self->_localizedGeometryPermutations.__begin_ = (v26 - v24);
        self->_localizedGeometryPermutations.__end_ = (v25 + 88);
        v31 = self->_localizedGeometryPermutations.__cap_;
        self->_localizedGeometryPermutations.__cap_ = v46;
        v45 = v22;
        v46 = v31;
        v43 = v22;
        v44 = v22;
        std::__split_buffer<Phase::LocalizedGeometryPermutation>::~__split_buffer(&v43);
      }

      else
      {
        *v15 = v34;
        std::unordered_map<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,std::allocator<std::pair<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey const,Phase::OptionsValue>>>::unordered_map(v15 + 8, v35);
        *(v15 + 6) = 0;
        *(v15 + 7) = 0;
        *(v15 + 8) = 0;
        std::vector<Phase::Geometry::EntityType>::__init_with_size[abi:ne200100]<Phase::Geometry::EntityType*,Phase::Geometry::EntityType*>(v15 + 48, __p, v37, (v37 - __p) >> 2);
        *(v15 + 72) = v39;
        v16 = (v15 + 88);
        self->_localizedGeometryPermutations.__end_ = (v15 + 88);
      }

      self->_localizedGeometryPermutations.__end_ = v16;
      if (__p)
      {
        v37 = __p;
        operator delete(__p);
      }

      std::__hash_table<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,std::__unordered_map_hasher<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,true>,std::__unordered_map_equal<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalEqualTo,Phase::UnorderedStringMap<Phase::OptionsValue>::InternalHash,true>,std::allocator<std::__hash_value_type<Phase::UnorderedStringMap<Phase::OptionsValue>::InternalKey,Phase::OptionsValue>>>::~__hash_table(v35);
    }
  }

  v34 = &v40;
  std::vector<Phase::Controller::GeometryPermutation>::__destroy_vector::operator()[abi:ne200100](&v34);
}

- (id)dumpState
{
  selfCopy = self;
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"PHASEShape:%p: --- State ---", self];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_engine);
  implementation = [WeakRetained implementation];
  v23 = 0;
  v24 = 0;
  v25 = 0;
  std::vector<Phase::Controller::GeometryPermutation>::__init_with_size[abi:ne200100]<Phase::Controller::GeometryPermutation*,Phase::Controller::GeometryPermutation*>(&v23, *(implementation + 552), *(implementation + 560), 0xCCCCCCCCCCCCCCCDLL * ((*(implementation + 560) - *(implementation + 552)) >> 4));

  [v3 appendFormat:@"\nGeometryPermutations (%lu):", 0xCCCCCCCCCCCCCCCDLL * ((v24 - v23) >> 4)];
  v6 = v23;
  v7 = v24;
  if (v23 != v24)
  {
    v8 = 0;
    do
    {
      [v3 appendFormat:@"\n\t%d", v8];
      [v3 appendFormat:@"\n\t\tShapeType = %d", *v6];
      v9 = Phase::UnorderedStringMap<Phase::OptionsValue>::Find(v6 + 1, &Phase::Geometry::MeshOptions::SortPrimitives);
      if (v9)
      {
        v10 = (v9 + 7);
        if (*(v9 + 24) != 1)
        {
          v10 = &dword_278B4F028;
        }
      }

      else
      {
        v10 = &dword_278B4F028;
      }

      [v3 appendFormat:@"\n\t\tPrimitiveSortType = %d", *v10];
      v11 = selfCopy;
      v12 = *(v6 + 6);
      v13 = *(v6 + 7);
      while (v12 != v13)
      {
        [v3 appendFormat:@"\n\t\tEntityType (%d) = %d", 0, *v12++];
      }

      [v3 appendFormat:@"\n\t\tSpatialPipelineFlags = %lu", *(v6 + 9)];
      selfCopy = v11;
      v8 = (v8 + 1);
      v6 += 20;
    }

    while (v6 != v7);
  }

  [v3 appendFormat:@"\nLocalizedGeometryPermutations (%lu):", 0x2E8BA2E8BA2E8BA3 * ((selfCopy->_localizedGeometryPermutations.__end_ - selfCopy->_localizedGeometryPermutations.__begin_) >> 3)];
  begin = selfCopy->_localizedGeometryPermutations.__begin_;
  end = selfCopy->_localizedGeometryPermutations.__end_;
  if (begin != end)
  {
    v16 = 0;
    do
    {
      [v3 appendFormat:@"\n\t%d", v16];
      [v3 appendFormat:@"\n\t\tShapeType = %d", *begin];
      v17 = Phase::UnorderedStringMap<Phase::OptionsValue>::Find(begin + 1, &Phase::Geometry::MeshOptions::SortPrimitives);
      if (v17)
      {
        v18 = (v17 + 7);
        if (*(v17 + 24) != 1)
        {
          v18 = &dword_278B4F028;
        }
      }

      else
      {
        v18 = &dword_278B4F028;
      }

      [v3 appendFormat:@"\n\t\tPrimitiveSortType = %d", *v18];
      v19 = *(begin + 6);
      v20 = *(begin + 7);
      while (v19 != v20)
      {
        [v3 appendFormat:@"\n\t\tEntityType (%d) = %d", 0, *v19++];
      }

      [v3 appendFormat:@"\n\t\tSpatialPipelineFlags = %lu", *(begin + 9)];
      v16 = (v16 + 1);
      begin = (begin + 88);
    }

    while (begin != end);
  }

  v21 = [MEMORY[0x277CCACA8] stringWithString:v3];
  v26 = &v23;
  std::vector<Phase::Controller::GeometryPermutation>::__destroy_vector::operator()[abi:ne200100](&v26);

  return v21;
}

- (PHASEEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

@end