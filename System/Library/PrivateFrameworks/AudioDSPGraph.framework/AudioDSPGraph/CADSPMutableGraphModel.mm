@interface CADSPMutableGraphModel
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)addBox:(id)a3;
- (void)addBoxRelation:(id)a3;
- (void)addInjectorTapPoint:(id)a3;
- (void)addJack:(id)a3;
- (void)addParameter:(id)a3;
- (void)addParameterConnection:(id)a3;
- (void)addParameterWire:(id)a3;
- (void)addPort:(id)a3;
- (void)addProperty:(id)a3;
- (void)addPropertyConnection:(id)a3;
- (void)addPropertyWire:(id)a3;
- (void)addRecorderTapPoint:(id)a3;
- (void)addSubset:(id)a3;
- (void)addWire:(id)a3;
- (void)setAudioStreamConfiguration:(const CADSPAudioStreamConfiguration *)a3 forName:(id)a4;
- (void)setName:(id)a3;
@end

@implementation CADSPMutableGraphModel

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = CADSPMutableGraphModel;
  return [(CADSPGraphModel *)&v4 mutableCopyWithZone:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CADSPGraphModel allocWithZone:a3];
  AudioDSPGraph::IR::GraphModel::operator=(&v4->_this, &self->super._this);
  v5 = [(NSMutableArray *)self->super._boxes copy];
  boxes = v4->_boxes;
  v4->_boxes = v5;

  v7 = [(NSMutableArray *)self->super._boxRelations copy];
  boxRelations = v4->_boxRelations;
  v4->_boxRelations = v7;

  v9 = [(NSMutableArray *)self->super._subsets copy];
  subsets = v4->_subsets;
  v4->_subsets = v9;

  v11 = [(NSMutableArray *)self->super._inputs copy];
  inputs = v4->_inputs;
  v4->_inputs = v11;

  v13 = [(NSMutableArray *)self->super._outputs copy];
  outputs = v4->_outputs;
  v4->_outputs = v13;

  v15 = [(NSMutableArray *)self->super._jacks copy];
  jacks = v4->_jacks;
  v4->_jacks = v15;

  v17 = [(NSMutableArray *)self->super._wires copy];
  wires = v4->_wires;
  v4->_wires = v17;

  v19 = [(NSMutableArray *)self->super._parameters copy];
  parameters = v4->_parameters;
  v4->_parameters = v19;

  v21 = [(NSMutableArray *)self->super._parameterConnections copy];
  parameterConnections = v4->_parameterConnections;
  v4->_parameterConnections = v21;

  v23 = [(NSMutableArray *)self->super._parameterWires copy];
  parameterWires = v4->_parameterWires;
  v4->_parameterWires = v23;

  v25 = [(NSMutableArray *)self->super._propertyConnections copy];
  propertyConnections = v4->_propertyConnections;
  v4->_propertyConnections = v25;

  v27 = [(NSMutableArray *)self->super._properties copy];
  properties = v4->_properties;
  v4->_properties = v27;

  v29 = [(NSMutableArray *)self->super._propertyWires copy];
  propertyWires = v4->_propertyWires;
  v4->_propertyWires = v29;

  v31 = [(NSMutableArray *)self->super._injectorTapPoints copy];
  injectorTapPoints = v4->_injectorTapPoints;
  v4->_injectorTapPoints = v31;

  v33 = [(NSMutableArray *)self->super._recorderTapPoints copy];
  recorderTapPoints = v4->_recorderTapPoints;
  v4->_recorderTapPoints = v33;

  return v4;
}

- (void)setName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    std::optional<std::string>::operator=[abi:ne200100]<char const*,void>(&self->super._this, [v4 UTF8String]);
  }

  else if (LOBYTE(self->super._this.name.var1) == 1)
  {
    if (*(&self->super._this.name.var0.var1 + 23) < 0)
    {
      operator delete(self->super._this.name.var0.__val_.__rep_.__l.__data_);
    }

    LOBYTE(self->super._this.name.var1) = 0;
  }
}

- (void)addWire:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v34 = v5;

  v6 = v5;
  v8 = *&self->super._anon_28[104];
  v7 = *&self->super._anon_28[112];
  if (v8 >= v7)
  {
    v10 = *&self->super._anon_28[96];
    v11 = 0xEEEEEEEEEEEEEEEFLL * ((v8 - v10) >> 3);
    if (v11 + 1 > 0x222222222222222)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xEEEEEEEEEEEEEEEFLL * ((v7 - v10) >> 3);
    v13 = 2 * v12;
    if (2 * v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x111111111111111)
    {
      v14 = 0x222222222222222;
    }

    else
    {
      v14 = v13;
    }

    v38 = &self->super._anon_28[96];
    if (v14)
    {
      std::allocator<AudioDSPGraph::IR::WireModel>::allocate_at_least[abi:ne200100](v14);
    }

    v17 = 120 * v11;
    v35 = 0;
    v36 = v17;
    v37 = v17;
    v18 = v5;
    if (*(v5 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(v17, *(v5 + 8), *(v5 + 16));
      v18 = v5;
    }

    else
    {
      v19 = *(v5 + 8);
      *(v17 + 16) = *(v5 + 24);
      *v17 = v19;
    }

    *(v17 + 24) = *(v18 + 32);
    if (*(v18 + 63) < 0)
    {
      std::string::__init_copy_ctor_external((v17 + 32), *(v18 + 40), *(v18 + 48));
      v18 = v5;
    }

    else
    {
      v20 = *(v5 + 40);
      *(v17 + 48) = *(v5 + 56);
      *(v17 + 32) = v20;
    }

    *(v17 + 56) = *(v18 + 64);
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v17 + 64, v5 + 72);
    *&v37 = v37 + 120;
    v21 = *&self->super._anon_28[96];
    v22 = *&self->super._anon_28[104];
    v23 = v36 + v21 - v22;
    if (v21 != v22)
    {
      v32 = self;
      v24 = 0;
      do
      {
        v25 = v23 + v24;
        v26 = (v21 + v24);
        v27 = *(v21 + v24);
        *(v25 + 16) = *(v21 + v24 + 16);
        *v25 = v27;
        v26[1] = 0;
        v26[2] = 0;
        *v26 = 0;
        *(v25 + 24) = *(v21 + v24 + 24);
        v28 = *(v21 + v24 + 32);
        *(v25 + 48) = *(v21 + v24 + 48);
        *(v25 + 32) = v28;
        v26[5] = 0;
        v26[6] = 0;
        v26[4] = 0;
        *(v25 + 56) = *(v21 + v24 + 56);
        *(v23 + v24 + 64) = 0;
        *(v25 + 112) = -1;
        std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v23 + v24 + 64);
        v29 = *(v21 + v24 + 112);
        if (v29 != -1)
        {
          v39 = v23 + v24 + 64;
          (off_1F48CBB58[v29])(&v39, v26 + 8);
          *(v25 + 112) = v29;
        }

        v24 += 120;
      }

      while (v26 + 15 != v22);
      self = v32;
      do
      {
        std::allocator_traits<std::allocator<AudioDSPGraph::IR::WireModel>>::destroy[abi:ne200100]<AudioDSPGraph::IR::WireModel,void,0>(v21);
        v21 += 120;
      }

      while (v21 != v22);
    }

    v30 = *&self->super._anon_28[96];
    *&self->super._anon_28[96] = v23;
    v31 = *&self->super._anon_28[112];
    v33 = v37;
    *&self->super._anon_28[104] = v37;
    *&v37 = v30;
    *(&v37 + 1) = v31;
    v35 = v30;
    v36 = v30;
    std::__split_buffer<AudioDSPGraph::IR::WireModel>::~__split_buffer(&v35);
    v16 = v33;
  }

  else
  {
    if (*(v5 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(*&self->super._anon_28[104], *(v5 + 8), *(v5 + 16));
      v6 = v5;
    }

    else
    {
      v9 = *(v5 + 8);
      *(v8 + 16) = *(v5 + 24);
      *v8 = v9;
    }

    *(v8 + 24) = *(v6 + 32);
    if (*(v6 + 63) < 0)
    {
      std::string::__init_copy_ctor_external((v8 + 32), *(v6 + 40), *(v6 + 48));
      v6 = v5;
    }

    else
    {
      v15 = *(v5 + 40);
      *(v8 + 48) = *(v5 + 56);
      *(v8 + 32) = v15;
    }

    *(v8 + 56) = *(v6 + 64);
    std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v8 + 64, v5 + 72);
    v16 = v8 + 120;
    *&self->super._anon_28[104] = v8 + 120;
  }

  *&self->super._anon_28[104] = v16;
  CA::DSP::LazyCreate(&self->super._wires);
  [(NSMutableArray *)self->super._wires addObject:v34];
}

- (void)addJack:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v27 = v5;

  v7 = *&self->super._anon_28[216];
  v6 = *&self->super._anon_28[224];
  if (v7 >= v6)
  {
    v9 = *&self->super._anon_28[208];
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v9) >> 3);
    if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 3);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v12;
    }

    v28.__end_cap_.__value_ = &self->super._anon_28[208];
    if (v13)
    {
      std::allocator<AudioDSPGraph::IR::SubsetModel>::allocate_at_least[abi:ne200100](v13);
    }

    begin = (24 * v10);
    v28.__first_ = 0;
    v28.__begin_ = (24 * v10);
    v28.__end_ = (24 * v10);
    v28.__end_cap_.__value_ = 0;
    if (*(v5 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(begin, *(v5 + 8), *(v5 + 16));
      begin = v28.__begin_;
      end = v28.__end_;
    }

    else
    {
      v16 = *(v5 + 8);
      *(24 * v10 + 0x10) = *(v5 + 24);
      *&begin->__r_.__value_.__l.__data_ = v16;
      end = (24 * v10);
    }

    v28.__end_ = end + 1;
    v19 = *&self->super._anon_28[208];
    v18 = *&self->super._anon_28[216];
    v29[0] = &self->super._anon_28[208];
    v29[1] = &v31;
    v29[2] = &v32;
    v20 = begin + v19 - v18;
    v31 = v20;
    v32 = v20;
    if (v19 == v18)
    {
      v30 = 1;
    }

    else
    {
      v21 = v19;
      v22 = begin + v19 - v18;
      do
      {
        v23 = *v21;
        *(v22 + 2) = *(v21 + 2);
        *v22 = v23;
        v22 += 24;
        *(v21 + 1) = 0;
        *(v21 + 2) = 0;
        *v21 = 0;
        v21 = (v21 + 24);
      }

      while (v21 != v18);
      v32 = v22;
      v30 = 1;
      do
      {
        if (*(v19 + 23) < 0)
        {
          operator delete(*v19);
        }

        v19 = (v19 + 24);
      }

      while (v19 != v18);
    }

    std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::SubsetModel>,AudioDSPGraph::IR::SubsetModel*>>::~__exception_guard_exceptions[abi:ne200100](v29);
    v24 = *&self->super._anon_28[208];
    *&self->super._anon_28[208] = v20;
    v25 = *&self->super._anon_28[224];
    v26 = v28.__end_;
    *&self->super._anon_28[216] = *&v28.__end_;
    v28.__end_ = v24;
    v28.__end_cap_.__value_ = v25;
    v28.__first_ = v24;
    v28.__begin_ = v24;
    std::__split_buffer<AudioDSPGraph::IR::SubsetModel>::~__split_buffer(&v28);
    v14 = v26;
  }

  else
  {
    if (*(v5 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(*&self->super._anon_28[216], *(v5 + 8), *(v5 + 16));
    }

    else
    {
      v8 = *(v5 + 8);
      *(v7 + 16) = *(v5 + 24);
      *v7 = v8;
    }

    v14 = (v7 + 24);
    *&self->super._anon_28[216] = v7 + 24;
  }

  *&self->super._anon_28[216] = v14;
  CA::DSP::LazyCreate(&self->super._jacks);
  [(NSMutableArray *)self->super._jacks addObject:v27];
}

- (void)addPort:(id)a3
{
  v4 = a3;
  v33 = [v4 copy];

  v5 = v33;
  v6 = 24;
  if (!*(v33 + 8))
  {
    v6 = 0;
  }

  v7 = self + v6;
  v8 = (v7 + 200);
  v10 = *(v7 + 26);
  v9 = *(v7 + 27);
  if (v10 >= v9)
  {
    v12 = (v10 - *v8) >> 5;
    if ((v12 + 1) >> 59)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v13 = v9 - *v8;
    v14 = v13 >> 4;
    if (v13 >> 4 <= (v12 + 1))
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v37 = v8;
    if (v15)
    {
      std::allocator<AudioDSPGraph::IR::PortModel>::allocate_at_least[abi:ne200100](v15);
    }

    v18 = 32 * v12;
    v34 = 0;
    v35 = v18;
    v36 = v18;
    v19 = v33;
    if (v33[31] < 0)
    {
      std::string::__init_copy_ctor_external(v18, *(v33 + 1), *(v33 + 2));
      v21 = v35;
      v22 = v36;
      v19 = v33;
    }

    else
    {
      v20 = *(v33 + 8);
      *(v18 + 16) = *(v33 + 3);
      *v18 = v20;
      v21 = v18;
      v22 = v18;
    }

    *(v18 + 24) = *(v19 + 8);
    *&v36 = v22 + 32;
    v24 = *v8;
    v23 = v8[1];
    v38[0] = v8;
    v38[1] = &v40;
    v38[2] = &v41;
    v25 = v21 + v24 - v23;
    v40 = v25;
    v41 = v25;
    if (v24 == v23)
    {
      v39 = 1;
    }

    else
    {
      v26 = v24;
      v27 = v21 + v24 - v23;
      do
      {
        v28 = *v26;
        *(v27 + 16) = *(v26 + 2);
        *v27 = v28;
        *(v26 + 1) = 0;
        *(v26 + 2) = 0;
        *v26 = 0;
        *(v27 + 24) = *(v26 + 6);
        v26 += 2;
        v27 += 32;
      }

      while (v26 != v23);
      v41 = v27;
      v39 = 1;
      do
      {
        if (v24[23] < 0)
        {
          operator delete(*v24);
        }

        v24 += 32;
      }

      while (v24 != v23);
    }

    std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::PortModel>,AudioDSPGraph::IR::PortModel*>>::~__exception_guard_exceptions[abi:ne200100](v38);
    v29 = *v8;
    *v8 = v25;
    v30 = v8[2];
    v32 = v36;
    *(v8 + 1) = v36;
    *&v36 = v29;
    *(&v36 + 1) = v30;
    v34 = v29;
    v35 = v29;
    std::__split_buffer<AudioDSPGraph::IR::PortModel>::~__split_buffer(&v34);
    v17 = v32;
    v16 = *(v33 + 8);
  }

  else
  {
    if (v33[31] < 0)
    {
      std::string::__init_copy_ctor_external(v10, *(v33 + 1), *(v33 + 2));
      v5 = v33;
    }

    else
    {
      v11 = *(v33 + 8);
      *(v10 + 16) = *(v33 + 3);
      *v10 = v11;
    }

    v16 = *(v5 + 8);
    *(v10 + 24) = v16;
    v17 = v10 + 32;
    v8[1] = v10 + 32;
  }

  v8[1] = v17;
  if (v16)
  {
    if (v16 != 1)
    {
      goto LABEL_34;
    }

    v31 = 544;
  }

  else
  {
    v31 = 536;
  }

  CA::DSP::LazyCreate((self + v31));
  [*(&self->super.super.isa + v31) addObject:v33];
LABEL_34:
}

- (void)addSubset:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v27 = v5;

  v7 = *&self->super._anon_28[80];
  v6 = *&self->super._anon_28[88];
  if (v7 >= v6)
  {
    v9 = *&self->super._anon_28[72];
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v9) >> 3);
    if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 3);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v12;
    }

    v28.__end_cap_.__value_ = &self->super._anon_28[72];
    if (v13)
    {
      std::allocator<AudioDSPGraph::IR::SubsetModel>::allocate_at_least[abi:ne200100](v13);
    }

    begin = (24 * v10);
    v28.__first_ = 0;
    v28.__begin_ = (24 * v10);
    v28.__end_ = (24 * v10);
    v28.__end_cap_.__value_ = 0;
    if (*(v5 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(begin, *(v5 + 8), *(v5 + 16));
      begin = v28.__begin_;
      end = v28.__end_;
    }

    else
    {
      v16 = *(v5 + 8);
      *(24 * v10 + 0x10) = *(v5 + 24);
      *&begin->__r_.__value_.__l.__data_ = v16;
      end = (24 * v10);
    }

    v28.__end_ = end + 1;
    v19 = *&self->super._anon_28[72];
    v18 = *&self->super._anon_28[80];
    v29[0] = &self->super._anon_28[72];
    v29[1] = &v31;
    v29[2] = &v32;
    v20 = begin + v19 - v18;
    v31 = v20;
    v32 = v20;
    if (v19 == v18)
    {
      v30 = 1;
    }

    else
    {
      v21 = v19;
      v22 = begin + v19 - v18;
      do
      {
        v23 = *v21;
        *(v22 + 2) = *(v21 + 2);
        *v22 = v23;
        v22 += 24;
        *(v21 + 1) = 0;
        *(v21 + 2) = 0;
        *v21 = 0;
        v21 = (v21 + 24);
      }

      while (v21 != v18);
      v32 = v22;
      v30 = 1;
      do
      {
        if (*(v19 + 23) < 0)
        {
          operator delete(*v19);
        }

        v19 = (v19 + 24);
      }

      while (v19 != v18);
    }

    std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::SubsetModel>,AudioDSPGraph::IR::SubsetModel*>>::~__exception_guard_exceptions[abi:ne200100](v29);
    v24 = *&self->super._anon_28[72];
    *&self->super._anon_28[72] = v20;
    v25 = *&self->super._anon_28[88];
    v26 = v28.__end_;
    *&self->super._anon_28[80] = *&v28.__end_;
    v28.__end_ = v24;
    v28.__end_cap_.__value_ = v25;
    v28.__first_ = v24;
    v28.__begin_ = v24;
    std::__split_buffer<AudioDSPGraph::IR::SubsetModel>::~__split_buffer(&v28);
    v14 = v26;
  }

  else
  {
    if (*(v5 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(*&self->super._anon_28[80], *(v5 + 8), *(v5 + 16));
    }

    else
    {
      v8 = *(v5 + 8);
      *(v7 + 16) = *(v5 + 24);
      *v7 = v8;
    }

    v14 = (v7 + 24);
    *&self->super._anon_28[80] = v7 + 24;
  }

  *&self->super._anon_28[80] = v14;
  CA::DSP::LazyCreate(&self->super._subsets);
  [(NSMutableArray *)self->super._subsets addObject:v27];
}

- (void)addBoxRelation:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v31 = v5;

  v7 = *&self->super._anon_28[56];
  v6 = *&self->super._anon_28[64];
  if (v7 >= v6)
  {
    v10 = *&self->super._anon_28[48];
    v11 = 0x6DB6DB6DB6DB6DB7 * ((v7 - v10) >> 3);
    if ((v11 + 1) > 0x492492492492492)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0x6DB6DB6DB6DB6DB7 * ((v6 - v10) >> 3);
    v13 = 2 * v12;
    if (2 * v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x249249249249249)
    {
      v14 = 0x492492492492492;
    }

    else
    {
      v14 = v13;
    }

    v35 = &self->super._anon_28[48];
    if (v14)
    {
      std::allocator<AudioDSPGraph::IR::BoxRelationModel>::allocate_at_least[abi:ne200100](v14);
    }

    v17 = 56 * v11;
    v32 = 0;
    v33 = v17;
    v34 = v17;
    v18 = v5;
    if (*(v5 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(v17, *(v5 + 8), *(v5 + 16));
      v18 = v5;
    }

    else
    {
      v19 = *(v5 + 8);
      *(v17 + 16) = *(v5 + 24);
      *v17 = v19;
    }

    if (*(v18 + 55) < 0)
    {
      std::string::__init_copy_ctor_external((v17 + 24), *(v18 + 32), *(v18 + 40));
      v18 = v5;
    }

    else
    {
      v20 = *(v5 + 32);
      *(v17 + 40) = *(v5 + 48);
      *(v17 + 24) = v20;
    }

    *(v17 + 48) = *(v18 + 56);
    *&v34 = v34 + 56;
    v21 = *&self->super._anon_28[48];
    v22 = *&self->super._anon_28[56];
    v23 = v33 + v21 - v22;
    if (v21 != v22)
    {
      v24 = *&self->super._anon_28[48];
      v25 = v33 + v21 - v22;
      do
      {
        v26 = *v24;
        *(v25 + 16) = *(v24 + 2);
        *v25 = v26;
        *(v24 + 1) = 0;
        *(v24 + 2) = 0;
        *v24 = 0;
        v27 = *(v24 + 24);
        *(v25 + 40) = *(v24 + 5);
        *(v25 + 24) = v27;
        *(v24 + 4) = 0;
        *(v24 + 5) = 0;
        *(v24 + 3) = 0;
        *(v25 + 48) = *(v24 + 12);
        v24 = (v24 + 56);
        v25 += 56;
      }

      while (v24 != v22);
      do
      {
        std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::BoxRelationModel,0>(v21);
        v21 += 56;
      }

      while (v21 != v22);
    }

    v28 = *&self->super._anon_28[48];
    *&self->super._anon_28[48] = v23;
    v29 = *&self->super._anon_28[64];
    v30 = v34;
    *&self->super._anon_28[56] = v34;
    *&v34 = v28;
    *(&v34 + 1) = v29;
    v32 = v28;
    v33 = v28;
    std::__split_buffer<AudioDSPGraph::IR::BoxRelationModel>::~__split_buffer(&v32);
    v16 = v30;
  }

  else
  {
    v8 = v5;
    if (*(v5 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(*&self->super._anon_28[56], *(v5 + 8), *(v5 + 16));
      v8 = v5;
    }

    else
    {
      v9 = *(v5 + 8);
      *(v7 + 16) = *(v5 + 24);
      *v7 = v9;
    }

    if (*(v8 + 55) < 0)
    {
      std::string::__init_copy_ctor_external((v7 + 24), *(v8 + 32), *(v8 + 40));
    }

    else
    {
      v15 = *(v5 + 32);
      *(v7 + 40) = *(v5 + 48);
      *(v7 + 24) = v15;
    }

    *(v7 + 48) = *(v5 + 56);
    v16 = v7 + 56;
    *&self->super._anon_28[56] = v7 + 56;
  }

  *&self->super._anon_28[56] = v16;
  CA::DSP::LazyCreate(&self->super._boxRelations);
  [(NSMutableArray *)self->super._boxRelations addObject:v31];
}

- (void)addBox:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v32 = v5;

  v7 = *&self->super._anon_28[32];
  v6 = *&self->super._anon_28[40];
  if (v7 >= v6)
  {
    v9 = *&self->super._anon_28[24];
    v10 = 0xEEEEEEEEEEEEEEEFLL * ((v7 - v9) >> 3);
    if (v10 + 1 > 0x222222222222222)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xEEEEEEEEEEEEEEEFLL * ((v6 - v9) >> 3);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x111111111111111)
    {
      v13 = 0x222222222222222;
    }

    else
    {
      v13 = v12;
    }

    v36 = &self->super._anon_28[24];
    if (v13)
    {
      std::allocator<AudioDSPGraph::IR::BoxModel>::allocate_at_least[abi:ne200100](v13);
    }

    v16 = 120 * v10;
    v33 = 0;
    v34 = v16;
    v35 = v16;
    if (*(v5 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(v16, *(v5 + 8), *(v5 + 16));
    }

    else
    {
      v17 = *(v5 + 8);
      *(v16 + 16) = *(v5 + 24);
      *v16 = v17;
    }

    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((v16 + 24), (v5 + 32));
    v18 = *(v5 + 64);
    *(v16 + 72) = *(v5 + 80);
    *(v16 + 56) = v18;
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((v16 + 88), (v5 + 96));
    v19 = *&self->super._anon_28[24];
    v20 = *&self->super._anon_28[32];
    v21 = v34 - (v20 - v19);
    *&v35 = v35 + 120;
    if (v20 != v19)
    {
      v22 = v34 - 8 * ((v20 - v19) >> 3) + 56;
      v23 = v19 + 88;
      do
      {
        v24 = *(v23 - 88);
        *(v22 - 40) = *(v23 - 72);
        *(v22 - 56) = v24;
        *(v23 - 80) = 0;
        *(v23 - 72) = 0;
        *(v23 - 88) = 0;
        *(v22 - 32) = 0;
        *(v22 - 8) = 0;
        if (*(v23 - 40) == 1)
        {
          v25 = *(v23 - 64);
          *(v22 - 16) = *(v23 - 48);
          *(v22 - 32) = v25;
          *(v23 - 56) = 0;
          *(v23 - 48) = 0;
          *(v23 - 64) = 0;
          *(v22 - 8) = 1;
        }

        v26 = v23 - 88;
        v27 = *(v23 - 16);
        *v22 = *(v23 - 32);
        *(v22 + 16) = v27;
        *(v22 + 32) = 0;
        *(v22 + 56) = 0;
        if (*(v23 + 24) == 1)
        {
          v28 = *v23;
          *(v22 + 48) = *(v23 + 16);
          *(v22 + 32) = v28;
          *(v23 + 8) = 0;
          *(v23 + 16) = 0;
          *v23 = 0;
          *(v22 + 56) = 1;
        }

        v22 += 120;
        v23 += 120;
      }

      while (v26 + 120 != v20);
      do
      {
        std::allocator_traits<std::allocator<AudioDSPGraph::IR::BoxModel>>::destroy[abi:ne200100]<AudioDSPGraph::IR::BoxModel,void,0>(v19);
        v19 += 120;
      }

      while (v19 != v20);
    }

    v29 = *&self->super._anon_28[24];
    *&self->super._anon_28[24] = v21;
    v30 = *&self->super._anon_28[40];
    v31 = v35;
    *&self->super._anon_28[32] = v35;
    *&v35 = v29;
    *(&v35 + 1) = v30;
    v33 = v29;
    v34 = v29;
    std::__split_buffer<AudioDSPGraph::IR::BoxModel>::~__split_buffer(&v33);
    v15 = v31;
  }

  else
  {
    if (*(v5 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(*&self->super._anon_28[32], *(v5 + 8), *(v5 + 16));
    }

    else
    {
      v8 = *(v5 + 8);
      *(v7 + 16) = *(v5 + 24);
      *v7 = v8;
    }

    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((v7 + 24), (v5 + 32));
    v14 = *(v5 + 64);
    *(v7 + 72) = *(v5 + 80);
    *(v7 + 56) = v14;
    std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((v7 + 88), (v5 + 96));
    v15 = v7 + 120;
    *&self->super._anon_28[32] = v7 + 120;
  }

  *&self->super._anon_28[32] = v15;
  CA::DSP::LazyCreate(&self->super._boxes);
  [(NSMutableArray *)self->super._boxes addObject:v32];
}

- (void)addRecorderTapPoint:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v32 = v5;

  v7 = *&self->super._anon_28[456];
  v6 = *&self->super._anon_28[464];
  if (v7 >= v6)
  {
    v10 = *&self->super._anon_28[448];
    v11 = 0x6DB6DB6DB6DB6DB7 * ((v7 - v10) >> 3);
    if ((v11 + 1) > 0x492492492492492)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0x6DB6DB6DB6DB6DB7 * ((v6 - v10) >> 3);
    v13 = 2 * v12;
    if (2 * v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x249249249249249)
    {
      v14 = 0x492492492492492;
    }

    else
    {
      v14 = v13;
    }

    v37 = &self->super._anon_28[448];
    if (v14)
    {
      std::allocator<AudioDSPGraph::IR::InjectTapPointModel>::allocate_at_least[abi:ne200100](v14);
    }

    v18 = 56 * v11;
    v33 = 0;
    v34 = v18;
    v35 = v18;
    v36 = 0;
    v19 = v5;
    if (*(v5 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(v18, *(v5 + 8), *(v5 + 16));
      v19 = v5;
    }

    else
    {
      v20 = *(v5 + 8);
      *(v18 + 16) = *(v5 + 24);
      *v18 = v20;
    }

    if (*(v19 + 55) < 0)
    {
      std::string::__init_copy_ctor_external((v18 + 24), *(v19 + 32), *(v19 + 40));
      v19 = v5;
    }

    else
    {
      v21 = *(v5 + 32);
      *(v18 + 40) = *(v5 + 48);
      *(v18 + 24) = v21;
    }

    v22 = *(v19 + 56);
    *(v18 + 52) = *(v19 + 60);
    *(v18 + 48) = v22;
    v17 = v35 + 56;
    v23 = *&self->super._anon_28[448];
    v24 = *&self->super._anon_28[456];
    v25 = v34 + v23 - v24;
    if (v23 != v24)
    {
      v26 = *&self->super._anon_28[448];
      v27 = v34 + v23 - v24;
      do
      {
        v28 = *v26;
        *(v27 + 16) = *(v26 + 2);
        *v27 = v28;
        *(v26 + 1) = 0;
        *(v26 + 2) = 0;
        *v26 = 0;
        v29 = *(v26 + 24);
        *(v27 + 40) = *(v26 + 5);
        *(v27 + 24) = v29;
        *(v26 + 4) = 0;
        *(v26 + 5) = 0;
        *(v26 + 3) = 0;
        v30 = *(v26 + 12);
        *(v27 + 52) = *(v26 + 52);
        *(v27 + 48) = v30;
        v26 = (v26 + 56);
        v27 += 56;
      }

      while (v26 != v24);
      do
      {
        std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::BoxRelationModel,0>(v23);
        v23 += 56;
      }

      while (v23 != v24);
      v23 = *&self->super._anon_28[448];
    }

    *&self->super._anon_28[448] = v25;
    *&self->super._anon_28[456] = v17;
    v31 = *&self->super._anon_28[464];
    *&self->super._anon_28[464] = v36;
    v35 = v23;
    v36 = v31;
    v33 = v23;
    v34 = v23;
    std::__split_buffer<AudioDSPGraph::IR::BoxRelationModel>::~__split_buffer(&v33);
  }

  else
  {
    v8 = v5;
    if (*(v5 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(*&self->super._anon_28[456], *(v5 + 8), *(v5 + 16));
      v8 = v5;
    }

    else
    {
      v9 = *(v5 + 8);
      *(v7 + 16) = *(v5 + 24);
      *v7 = v9;
    }

    if (*(v8 + 55) < 0)
    {
      std::string::__init_copy_ctor_external((v7 + 24), *(v8 + 32), *(v8 + 40));
    }

    else
    {
      v15 = *(v5 + 32);
      *(v7 + 40) = *(v5 + 48);
      *(v7 + 24) = v15;
    }

    v16 = *(v5 + 56);
    *(v7 + 52) = *(v5 + 60);
    *(v7 + 48) = v16;
    v17 = v7 + 56;
    *&self->super._anon_28[456] = v17;
  }

  *&self->super._anon_28[456] = v17;
  CA::DSP::LazyCreate(&self->super._recorderTapPoints);
  [(NSMutableArray *)self->super._recorderTapPoints addObject:v32];
}

- (void)addInjectorTapPoint:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v32 = v5;

  v7 = *&self->super._anon_28[432];
  v6 = *&self->super._anon_28[440];
  if (v7 >= v6)
  {
    v10 = *&self->super._anon_28[424];
    v11 = 0x6DB6DB6DB6DB6DB7 * ((v7 - v10) >> 3);
    if ((v11 + 1) > 0x492492492492492)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0x6DB6DB6DB6DB6DB7 * ((v6 - v10) >> 3);
    v13 = 2 * v12;
    if (2 * v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x249249249249249)
    {
      v14 = 0x492492492492492;
    }

    else
    {
      v14 = v13;
    }

    v37 = &self->super._anon_28[424];
    if (v14)
    {
      std::allocator<AudioDSPGraph::IR::InjectTapPointModel>::allocate_at_least[abi:ne200100](v14);
    }

    v18 = 56 * v11;
    v33 = 0;
    v34 = v18;
    v35 = v18;
    v36 = 0;
    v19 = v5;
    if (*(v5 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(v18, *(v5 + 8), *(v5 + 16));
      v19 = v5;
    }

    else
    {
      v20 = *(v5 + 8);
      *(v18 + 16) = *(v5 + 24);
      *v18 = v20;
    }

    if (*(v19 + 55) < 0)
    {
      std::string::__init_copy_ctor_external((v18 + 24), *(v19 + 32), *(v19 + 40));
      v19 = v5;
    }

    else
    {
      v21 = *(v5 + 32);
      *(v18 + 40) = *(v5 + 48);
      *(v18 + 24) = v21;
    }

    v22 = *(v19 + 56);
    *(v18 + 52) = *(v19 + 60);
    *(v18 + 48) = v22;
    v17 = v35 + 56;
    v23 = *&self->super._anon_28[424];
    v24 = *&self->super._anon_28[432];
    v25 = v34 + v23 - v24;
    if (v23 != v24)
    {
      v26 = *&self->super._anon_28[424];
      v27 = v34 + v23 - v24;
      do
      {
        v28 = *v26;
        *(v27 + 16) = *(v26 + 2);
        *v27 = v28;
        *(v26 + 1) = 0;
        *(v26 + 2) = 0;
        *v26 = 0;
        v29 = *(v26 + 24);
        *(v27 + 40) = *(v26 + 5);
        *(v27 + 24) = v29;
        *(v26 + 4) = 0;
        *(v26 + 5) = 0;
        *(v26 + 3) = 0;
        v30 = *(v26 + 12);
        *(v27 + 52) = *(v26 + 52);
        *(v27 + 48) = v30;
        v26 = (v26 + 56);
        v27 += 56;
      }

      while (v26 != v24);
      do
      {
        std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::BoxRelationModel,0>(v23);
        v23 += 56;
      }

      while (v23 != v24);
      v23 = *&self->super._anon_28[424];
    }

    *&self->super._anon_28[424] = v25;
    *&self->super._anon_28[432] = v17;
    v31 = *&self->super._anon_28[440];
    *&self->super._anon_28[440] = v36;
    v35 = v23;
    v36 = v31;
    v33 = v23;
    v34 = v23;
    std::__split_buffer<AudioDSPGraph::IR::BoxRelationModel>::~__split_buffer(&v33);
  }

  else
  {
    v8 = v5;
    if (*(v5 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(*&self->super._anon_28[432], *(v5 + 8), *(v5 + 16));
      v8 = v5;
    }

    else
    {
      v9 = *(v5 + 8);
      *(v7 + 16) = *(v5 + 24);
      *v7 = v9;
    }

    if (*(v8 + 55) < 0)
    {
      std::string::__init_copy_ctor_external((v7 + 24), *(v8 + 32), *(v8 + 40));
    }

    else
    {
      v15 = *(v5 + 32);
      *(v7 + 40) = *(v5 + 48);
      *(v7 + 24) = v15;
    }

    v16 = *(v5 + 56);
    *(v7 + 52) = *(v5 + 60);
    *(v7 + 48) = v16;
    v17 = v7 + 56;
    *&self->super._anon_28[432] = v17;
  }

  *&self->super._anon_28[432] = v17;
  CA::DSP::LazyCreate(&self->super._injectorTapPoints);
  [(NSMutableArray *)self->super._injectorTapPoints addObject:v32];
}

- (void)addPropertyWire:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v36 = v5;

  v7 = *&self->super._anon_28[360];
  v6 = *&self->super._anon_28[368];
  if (v7 >= v6)
  {
    v9 = *&self->super._anon_28[352];
    v10 = 0x2E8BA2E8BA2E8BA3 * ((v7 - v9) >> 3);
    if ((v10 + 1) > 0x2E8BA2E8BA2E8BALL)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0x2E8BA2E8BA2E8BA3 * ((v6 - v9) >> 3);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x1745D1745D1745DLL)
    {
      v13 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v13 = v12;
    }

    v40 = &self->super._anon_28[352];
    if (v13)
    {
      std::allocator<AudioDSPGraph::IR::ParameterWireModel>::allocate_at_least[abi:ne200100](v13);
    }

    v18 = 88 * v10;
    v37 = 0;
    v38 = v18;
    v39 = v18;
    v19 = v5;
    if (*(v5 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(v18, *(v5 + 8), *(v5 + 16));
      v19 = v5;
    }

    else
    {
      v20 = *(v5 + 8);
      *(v18 + 16) = *(v5 + 24);
      *v18 = v20;
    }

    v21 = *(v19 + 32);
    *(v18 + 32) = *(v19 + 40);
    *(v18 + 24) = v21;
    if (*(v19 + 71) < 0)
    {
      std::string::__init_copy_ctor_external((v18 + 40), *(v19 + 48), *(v19 + 56));
      v19 = v5;
    }

    else
    {
      v22 = *(v5 + 48);
      *(v18 + 56) = *(v5 + 64);
      *(v18 + 40) = v22;
    }

    v23 = *(v19 + 72);
    *(v18 + 72) = *(v19 + 80);
    *(v18 + 64) = v23;
    *(v18 + 80) = *(v19 + 88);
    *&v39 = v39 + 88;
    v24 = *&self->super._anon_28[352];
    v25 = *&self->super._anon_28[360];
    v26 = v38 + v24 - v25;
    if (v24 != v25)
    {
      v27 = *&self->super._anon_28[352];
      v28 = v38 + v24 - v25;
      do
      {
        v29 = *v27;
        *(v28 + 16) = *(v27 + 2);
        *v28 = v29;
        *(v27 + 1) = 0;
        *(v27 + 2) = 0;
        *v27 = 0;
        v30 = *(v27 + 3);
        *(v28 + 32) = *(v27 + 8);
        *(v28 + 24) = v30;
        v31 = *(v27 + 40);
        *(v28 + 56) = *(v27 + 7);
        *(v28 + 40) = v31;
        *(v27 + 6) = 0;
        *(v27 + 7) = 0;
        *(v27 + 5) = 0;
        v32 = *(v27 + 8);
        *(v28 + 72) = *(v27 + 18);
        *(v28 + 64) = v32;
        *(v28 + 80) = *(v27 + 80);
        v27 = (v27 + 88);
        v28 += 88;
      }

      while (v27 != v25);
      do
      {
        std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::ParameterWireModel,0>(v24);
        v24 += 88;
      }

      while (v24 != v25);
    }

    v33 = *&self->super._anon_28[352];
    *&self->super._anon_28[352] = v26;
    v34 = *&self->super._anon_28[368];
    v35 = v39;
    *&self->super._anon_28[360] = v39;
    *&v39 = v33;
    *(&v39 + 1) = v34;
    v37 = v33;
    v38 = v33;
    std::__split_buffer<AudioDSPGraph::IR::ParameterWireModel>::~__split_buffer(&v37);
    v17 = v35;
  }

  else
  {
    if (*(v5 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(*&self->super._anon_28[360], *(v5 + 8), *(v5 + 16));
    }

    else
    {
      v8 = *(v5 + 8);
      *(v7 + 16) = *(v5 + 24);
      *v7 = v8;
    }

    v14 = *(v5 + 32);
    *(v7 + 32) = *(v5 + 40);
    *(v7 + 24) = v14;
    if (*(v5 + 71) < 0)
    {
      std::string::__init_copy_ctor_external((v7 + 40), *(v5 + 48), *(v5 + 56));
    }

    else
    {
      v15 = *(v5 + 48);
      *(v7 + 56) = *(v5 + 64);
      *(v7 + 40) = v15;
    }

    v16 = *(v5 + 72);
    *(v7 + 72) = *(v5 + 80);
    *(v7 + 64) = v16;
    *(v7 + 80) = *(v5 + 88);
    v17 = v7 + 88;
    *&self->super._anon_28[360] = v7 + 88;
  }

  *&self->super._anon_28[360] = v17;
  CA::DSP::LazyCreate(&self->super._propertyWires);
  [(NSMutableArray *)self->super._propertyWires addObject:v36];
}

- (void)addPropertyConnection:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v25 = v5;

  v6 = &self->super._anon_28[336];
  v8 = *&self->super._anon_28[336];
  v7 = *&self->super._anon_28[344];
  if (v8 >= v7)
  {
    v10 = *&self->super._anon_28[328];
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v10) >> 4);
    if (v11 + 1 > 0x555555555555555)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 4);
    v13 = 2 * v12;
    if (2 * v12 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x2AAAAAAAAAAAAAALL)
    {
      v14 = 0x555555555555555;
    }

    else
    {
      v14 = v13;
    }

    v29 = &self->super._anon_28[328];
    if (v14)
    {
      std::allocator<AudioDSPGraph::IR::ParameterConnectionModel>::allocate_at_least[abi:ne200100](v14);
    }

    v26 = 0;
    v27 = 48 * v11;
    std::construct_at[abi:ne200100]<AudioDSPGraph::IR::ParameterConnectionModel,AudioDSPGraph::IR::ParameterConnectionModel const&,AudioDSPGraph::IR::ParameterConnectionModel*>(48 * v11, v5 + 8);
    v28 = 48 * v11 + 48;
    v15 = *v6;
    v16 = *&self->super._anon_28[328];
    v30[0] = &self->super._anon_28[328];
    v30[1] = &v32;
    v30[2] = &v33;
    v17 = v27 + v16 - v15;
    v32 = v17;
    v33 = v17;
    if (v16 == v15)
    {
      v31 = 1;
    }

    else
    {
      v18 = v16;
      v19 = v27 + v16 - v15;
      do
      {
        *v19 = *v18;
        v20 = *(v18 + 8);
        *(v19 + 24) = *(v18 + 24);
        *(v19 + 8) = v20;
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
        *(v18 + 8) = 0;
        v21 = *(v18 + 32);
        *(v19 + 40) = *(v18 + 40);
        *(v19 + 32) = v21;
        v18 += 48;
        v19 += 48;
      }

      while (v18 != v15);
      v33 = v19;
      v31 = 1;
      do
      {
        if (*(v16 + 31) < 0)
        {
          operator delete(*(v16 + 8));
        }

        v16 += 48;
      }

      while (v16 != v15);
    }

    std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::ParameterConnectionModel>,AudioDSPGraph::IR::ParameterConnectionModel*>>::~__exception_guard_exceptions[abi:ne200100](v30);
    v22 = *&self->super._anon_28[328];
    *&self->super._anon_28[328] = v17;
    v23 = *&self->super._anon_28[344];
    v24 = v28;
    *v6 = v28;
    *&v28 = v22;
    *(&v28 + 1) = v23;
    v26 = v22;
    v27 = v22;
    std::__split_buffer<AudioDSPGraph::IR::ParameterConnectionModel>::~__split_buffer(&v26);
    v9 = v24;
  }

  else
  {
    std::construct_at[abi:ne200100]<AudioDSPGraph::IR::ParameterConnectionModel,AudioDSPGraph::IR::ParameterConnectionModel const&,AudioDSPGraph::IR::ParameterConnectionModel*>(*&self->super._anon_28[336], v5 + 8);
    v9 = v8 + 48;
    *v6 = v8 + 48;
  }

  *&self->super._anon_28[336] = v9;
  CA::DSP::LazyCreate(&self->super._propertyConnections);
  [(NSMutableArray *)self->super._propertyConnections addObject:v25];
}

- (void)addProperty:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v25 = v5;

  v7 = *&self->super._anon_28[312];
  v6 = *&self->super._anon_28[320];
  if (v7 >= v6)
  {
    v9 = *&self->super._anon_28[304];
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v9) >> 3);
    if (v10 + 1 > 0x666666666666666)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v9) >> 3);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x333333333333333)
    {
      v13 = 0x666666666666666;
    }

    else
    {
      v13 = v12;
    }

    v29 = &self->super._anon_28[304];
    if (v13)
    {
      std::allocator<AudioDSPGraph::IR::PropertyModel>::allocate_at_least[abi:ne200100](v13);
    }

    v26 = 0;
    v27 = 40 * v10;
    v28 = 40 * v10;
    *v27 = *(v5 + 8);
    std::__optional_copy_base<std::vector<unsigned char>,false>::__optional_copy_base[abi:ne200100](40 * v10 + 8, v5 + 16);
    *&v28 = v28 + 40;
    v15 = *&self->super._anon_28[304];
    v14 = *&self->super._anon_28[312];
    v30[0] = &self->super._anon_28[304];
    v30[1] = &v32;
    v30[2] = &v33;
    v16 = v27 + v15 - v14;
    v32 = v16;
    v33 = v16;
    if (v15 == v14)
    {
      v31 = 1;
    }

    else
    {
      v17 = 0;
      do
      {
        v18 = v16 + v17;
        v19 = v15 + v17;
        *v18 = *(v15 + v17);
        *(v16 + v17 + 8) = 0;
        v20 = (v16 + v17 + 8);
        *(v18 + 32) = 0;
        if (*(v15 + v17 + 32) == 1)
        {
          *v20 = 0;
          *(v16 + v17 + 16) = 0;
          *(v16 + v17 + 24) = 0;
          *v20 = *(v19 + 8);
          *(v18 + 24) = *(v19 + 24);
          *(v19 + 8) = 0;
          *(v19 + 16) = 0;
          *(v19 + 24) = 0;
          *(v18 + 32) = 1;
        }

        v17 += 40;
      }

      while (v19 + 40 != v14);
      v33 = v16 + v17;
      v31 = 1;
      do
      {
        if (*(v15 + 32) == 1)
        {
          v21 = *(v15 + 8);
          if (v21)
          {
            *(v15 + 16) = v21;
            operator delete(v21);
          }
        }

        v15 += 40;
      }

      while (v15 != v14);
    }

    std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::PropertyModel>,AudioDSPGraph::IR::PropertyModel*>>::~__exception_guard_exceptions[abi:ne200100](v30);
    v22 = *&self->super._anon_28[304];
    *&self->super._anon_28[304] = v16;
    v23 = *&self->super._anon_28[320];
    v24 = v28;
    *&self->super._anon_28[312] = v28;
    *&v28 = v22;
    *(&v28 + 1) = v23;
    v26 = v22;
    v27 = v22;
    std::__split_buffer<AudioDSPGraph::IR::PropertyModel>::~__split_buffer(&v26);
    v8 = v24;
  }

  else
  {
    *v7 = *(v5 + 8);
    std::__optional_copy_base<std::vector<unsigned char>,false>::__optional_copy_base[abi:ne200100]((v7 + 1), v5 + 16);
    v8 = v7 + 5;
    *&self->super._anon_28[312] = v7 + 5;
  }

  *&self->super._anon_28[312] = v8;
  CA::DSP::LazyCreate(&self->super._properties);
  [(NSMutableArray *)self->super._properties addObject:v25];
}

- (void)addParameterWire:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v39 = v5;

  v6 = &self->super._anon_28[288];
  v8 = *&self->super._anon_28[288];
  v7 = *&self->super._anon_28[296];
  if (v8 >= v7)
  {
    v10 = &self->super._anon_28[280];
    v11 = *&self->super._anon_28[280];
    v12 = 0x2E8BA2E8BA2E8BA3 * ((v8 - v11) >> 3);
    if ((v12 + 1) > 0x2E8BA2E8BA2E8BALL)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v13 = 0x2E8BA2E8BA2E8BA3 * ((v7 - v11) >> 3);
    v14 = 2 * v13;
    if (2 * v13 <= v12 + 1)
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0x1745D1745D1745DLL)
    {
      v15 = 0x2E8BA2E8BA2E8BALL;
    }

    else
    {
      v15 = v14;
    }

    v43 = &self->super._anon_28[280];
    if (v15)
    {
      std::allocator<AudioDSPGraph::IR::ParameterWireModel>::allocate_at_least[abi:ne200100](v15);
    }

    v20 = 88 * v12;
    v40 = 0;
    v41 = v20;
    v42 = v20;
    v21 = v5;
    if (*(v5 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(v20, *(v5 + 8), *(v5 + 16));
      v21 = v5;
    }

    else
    {
      v22 = *(v5 + 8);
      *(v20 + 16) = *(v5 + 24);
      *v20 = v22;
    }

    v23 = *(v21 + 32);
    *(v20 + 32) = *(v21 + 40);
    *(v20 + 24) = v23;
    if (*(v21 + 71) < 0)
    {
      std::string::__init_copy_ctor_external((v20 + 40), *(v21 + 48), *(v21 + 56));
      v21 = v5;
    }

    else
    {
      v24 = *(v5 + 48);
      *(v20 + 56) = *(v5 + 64);
      *(v20 + 40) = v24;
    }

    v25 = *(v21 + 72);
    *(v20 + 72) = *(v21 + 80);
    *(v20 + 64) = v25;
    *(v20 + 80) = *(v21 + 88);
    *&v42 = v42 + 88;
    v26 = *v6;
    v27 = *v10;
    v28 = *v10 == *v6;
    v29 = v41 + *v10 - *v6;
    if (!v28)
    {
      v30 = v27;
      v31 = v29;
      do
      {
        v32 = *v30;
        *(v31 + 16) = *(v30 + 16);
        *v31 = v32;
        *(v30 + 8) = 0;
        *(v30 + 16) = 0;
        *v30 = 0;
        v33 = *(v30 + 24);
        *(v31 + 32) = *(v30 + 32);
        *(v31 + 24) = v33;
        v34 = *(v30 + 40);
        *(v31 + 56) = *(v30 + 56);
        *(v31 + 40) = v34;
        *(v30 + 48) = 0;
        *(v30 + 56) = 0;
        *(v30 + 40) = 0;
        v35 = *(v30 + 64);
        *(v31 + 72) = *(v30 + 72);
        *(v31 + 64) = v35;
        *(v31 + 80) = *(v30 + 80);
        v30 += 88;
        v31 += 88;
      }

      while (v30 != v26);
      do
      {
        std::__destroy_at[abi:ne200100]<AudioDSPGraph::IR::ParameterWireModel,0>(v27);
        v27 += 88;
      }

      while (v27 != v26);
    }

    v36 = *&self->super._anon_28[280];
    *&self->super._anon_28[280] = v29;
    v37 = *&self->super._anon_28[296];
    v38 = v42;
    *v6 = v42;
    *&v42 = v36;
    *(&v42 + 1) = v37;
    v40 = v36;
    v41 = v36;
    std::__split_buffer<AudioDSPGraph::IR::ParameterWireModel>::~__split_buffer(&v40);
    v19 = v38;
  }

  else
  {
    if (*(v5 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(*&self->super._anon_28[288], *(v5 + 8), *(v5 + 16));
    }

    else
    {
      v9 = *(v5 + 8);
      *(v8 + 16) = *(v5 + 24);
      *v8 = v9;
    }

    v16 = *(v5 + 32);
    *(v8 + 32) = *(v5 + 40);
    *(v8 + 24) = v16;
    if (*(v5 + 71) < 0)
    {
      std::string::__init_copy_ctor_external((v8 + 40), *(v5 + 48), *(v5 + 56));
    }

    else
    {
      v17 = *(v5 + 48);
      *(v8 + 56) = *(v5 + 64);
      *(v8 + 40) = v17;
    }

    v18 = *(v5 + 72);
    *(v8 + 72) = *(v5 + 80);
    *(v8 + 64) = v18;
    *(v8 + 80) = *(v5 + 88);
    v19 = v8 + 88;
    *v6 = v8 + 88;
  }

  *&self->super._anon_28[288] = v19;
  CA::DSP::LazyCreate(&self->super._parameterWires);
  [(NSMutableArray *)self->super._parameterWires addObject:v39];
}

- (void)addParameterConnection:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v24 = v5;

  v7 = *&self->super._anon_28[264];
  v6 = *&self->super._anon_28[272];
  if (v7 >= v6)
  {
    v9 = *&self->super._anon_28[256];
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v9) >> 4);
    if (v10 + 1 > 0x555555555555555)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 4);
    v12 = 2 * v11;
    if (2 * v11 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v13 = 0x555555555555555;
    }

    else
    {
      v13 = v12;
    }

    v28 = &self->super._anon_28[256];
    if (v13)
    {
      std::allocator<AudioDSPGraph::IR::ParameterConnectionModel>::allocate_at_least[abi:ne200100](v13);
    }

    v25 = 0;
    v26 = 48 * v10;
    std::construct_at[abi:ne200100]<AudioDSPGraph::IR::ParameterConnectionModel,AudioDSPGraph::IR::ParameterConnectionModel const&,AudioDSPGraph::IR::ParameterConnectionModel*>(48 * v10, v5 + 8);
    v27 = 48 * v10 + 48;
    v15 = *&self->super._anon_28[256];
    v14 = *&self->super._anon_28[264];
    v29[0] = &self->super._anon_28[256];
    v29[1] = &v31;
    v29[2] = &v32;
    v16 = v26 + v15 - v14;
    v31 = v16;
    v32 = v16;
    if (v15 == v14)
    {
      v30 = 1;
    }

    else
    {
      v17 = v15;
      v18 = v26 + v15 - v14;
      do
      {
        *v18 = *v17;
        v19 = *(v17 + 8);
        *(v18 + 24) = *(v17 + 24);
        *(v18 + 8) = v19;
        *(v17 + 16) = 0;
        *(v17 + 24) = 0;
        *(v17 + 8) = 0;
        v20 = *(v17 + 32);
        *(v18 + 40) = *(v17 + 40);
        *(v18 + 32) = v20;
        v17 += 48;
        v18 += 48;
      }

      while (v17 != v14);
      v32 = v18;
      v30 = 1;
      do
      {
        if (*(v15 + 31) < 0)
        {
          operator delete(*(v15 + 8));
        }

        v15 += 48;
      }

      while (v15 != v14);
    }

    std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<AudioDSPGraph::IR::ParameterConnectionModel>,AudioDSPGraph::IR::ParameterConnectionModel*>>::~__exception_guard_exceptions[abi:ne200100](v29);
    v21 = *&self->super._anon_28[256];
    *&self->super._anon_28[256] = v16;
    v22 = *&self->super._anon_28[272];
    v23 = v27;
    *&self->super._anon_28[264] = v27;
    *&v27 = v21;
    *(&v27 + 1) = v22;
    v25 = v21;
    v26 = v21;
    std::__split_buffer<AudioDSPGraph::IR::ParameterConnectionModel>::~__split_buffer(&v25);
    v8 = v23;
  }

  else
  {
    std::construct_at[abi:ne200100]<AudioDSPGraph::IR::ParameterConnectionModel,AudioDSPGraph::IR::ParameterConnectionModel const&,AudioDSPGraph::IR::ParameterConnectionModel*>(*&self->super._anon_28[264], v5 + 8);
    v8 = v7 + 48;
    *&self->super._anon_28[264] = v7 + 48;
  }

  *&self->super._anon_28[264] = v8;
  CA::DSP::LazyCreate(&self->super._parameterConnections);
  [(NSMutableArray *)self->super._parameterConnections addObject:v24];
}

- (void)addParameter:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v19 = v5;

  v7 = *&self->super._anon_28[240];
  v6 = *&self->super._anon_28[248];
  if (v7 >= v6)
  {
    v9 = *&self->super._anon_28[232];
    v10 = (v7 - v9) >> 4;
    v11 = v10 + 1;
    if ((v10 + 1) >> 60)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v12 = v6 - v9;
    if (v12 >> 3 > v11)
    {
      v11 = v12 >> 3;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::allocator<AudioDSPGraph::IR::ParameterModel>::allocate_at_least[abi:ne200100](v13);
    }

    v14 = (16 * v10);
    *v14 = *(v5 + 8);
    v8 = 16 * v10 + 16;
    v15 = *&self->super._anon_28[232];
    v16 = *&self->super._anon_28[240] - v15;
    v17 = v14 - v16;
    memcpy(v14 - v16, v15, v16);
    v18 = *&self->super._anon_28[232];
    *&self->super._anon_28[232] = v17;
    *&self->super._anon_28[240] = v8;
    *&self->super._anon_28[248] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v7 = *(v5 + 8);
    v8 = (v7 + 1);
  }

  *&self->super._anon_28[240] = v8;
  CA::DSP::LazyCreate(&self->super._parameters);
  [(NSMutableArray *)self->super._parameters addObject:v19];
}

- (void)setAudioStreamConfiguration:(const CADSPAudioStreamConfiguration *)a3 forName:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (v6)
  {

    if (a3)
    {
      v8 = *&a3->var0.mBytesPerPacket;
      v24 = *&a3->var0.mSampleRate;
      v25 = v8;
      *&v26 = *&a3->var0.mBitsPerChannel;
      var1 = a3->var1;
      std::string::basic_string[abi:ne200100]<0>(__p, [v7 UTF8String]);
      v10 = std::__string_hash<char>::operator()[abi:ne200100](__p);
      v11 = v10;
      v12 = *&self->super._anon_28[128];
      if (!*&v12)
      {
        goto LABEL_20;
      }

      v13 = vcnt_s8(v12);
      v13.i16[0] = vaddlv_u8(v13);
      v14 = v13.u32[0];
      if (v13.u32[0] > 1uLL)
      {
        v15 = v10;
        if (v10 >= *&v12)
        {
          v15 = v10 % *&v12;
        }
      }

      else
      {
        v15 = (*&v12 - 1) & v10;
      }

      v16 = *(*&self->super._anon_28[120] + 8 * v15);
      if (!v16 || (v17 = *v16) == 0)
      {
LABEL_20:
        operator new();
      }

      while (1)
      {
        v18 = v17[1];
        if (v18 == v11)
        {
          if (AudioDSPGraph::IR::BoxAlias::operator==(v17 + 2, __p))
          {
            v21 = v25;
            *(v17 + 5) = v24;
            *(v17 + 7) = v21;
            v17[9] = v26;
            *(v17 + 20) = var1;
            if (SHIBYTE(v23) < 0)
            {
              v19 = __p[0];
              goto LABEL_23;
            }

            goto LABEL_24;
          }
        }

        else
        {
          if (v14 > 1)
          {
            if (v18 >= *&v12)
            {
              v18 %= *&v12;
            }
          }

          else
          {
            v18 &= *&v12 - 1;
          }

          if (v18 != v15)
          {
            goto LABEL_20;
          }
        }

        v17 = *v17;
        if (!v17)
        {
          goto LABEL_20;
        }
      }
    }
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = 0u;
    self = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(__p[0]) = 134217984;
    *(__p + 4) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  std::string::basic_string[abi:ne200100]<0>(&v24, [v7 UTF8String]);
  std::__hash_table<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,std::__unordered_map_hasher<AudioDSPGraph::IR::WireConfigurationAlias,std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,AudioDSPGraph::IR::Hash,std::equal_to<AudioDSPGraph::IR::WireConfigurationAlias>,true>,std::__unordered_map_equal<AudioDSPGraph::IR::WireConfigurationAlias,std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,std::equal_to<AudioDSPGraph::IR::WireConfigurationAlias>,AudioDSPGraph::IR::Hash,true>,std::allocator<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>>>::__erase_unique<AudioDSPGraph::IR::WireConfigurationAlias>(&self->super._anon_28[120], &v24);
  if (SBYTE7(v25) < 0)
  {
    v19 = v24;
LABEL_23:
    operator delete(v19);
  }

LABEL_24:

  v20 = *MEMORY[0x1E69E9840];
}

@end