@interface CADSPGraphModel
- (BOOL)getAudioStreamConfiguration:(CADSPAudioStreamConfiguration *)configuration forName:(id)name;
- (BOOL)isEqual:(id)equal;
- (NSArray)audioStreamConfigurationNames;
- (NSString)name;
- (id).cxx_construct;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation CADSPGraphModel

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 32) = 0;
  *(self + 5) = 0x7F6E6F726DLL;
  *(self + 6) = 0;
  *(self + 56) = 0;
  *(self + 57) &= 0xF0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 48) = 1065353216;
  *(self + 216) = 0u;
  *(self + 232) = 0u;
  *(self + 248) = 0u;
  *(self + 63) = 0;
  *(self + 200) = 0u;
  *(self + 264) = 0u;
  *(self + 280) = 0u;
  *(self + 296) = 0u;
  *(self + 312) = 0u;
  *(self + 328) = 0u;
  *(self + 344) = 0u;
  *(self + 360) = 0u;
  *(self + 376) = 0u;
  *(self + 392) = 0u;
  *(self + 408) = 0u;
  *(self + 424) = 0u;
  *(self + 440) = 0u;
  *(self + 456) = 0u;
  *(self + 472) = 0u;
  *(self + 488) = 0u;
  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_27;
  }

  if (self == equalCopy)
  {
    v5 = 1;
    goto LABEL_28;
  }

  if (std::operator==[abi:ne200100]<std::string,std::string>(&self->_this.name.var0.__val_.__rep_.__l.__data_, &equalCopy->_this) && *self->_anon_28 == *equalCopy->_anon_28 && *&self->_anon_28[4] == *&equalCopy->_anon_28[4] && *&self->_anon_28[8] == *&equalCopy->_anon_28[8] && *&self->_anon_28[12] == *&equalCopy->_anon_28[12] && self->_anon_28[16] == equalCopy->_anon_28[16] && ((equalCopy->_anon_28[17] ^ self->_anon_28[17]) & 0xF) == 0 && std::operator==[abi:ne200100]<AudioDSPGraph::IR::BoxModel,std::allocator<AudioDSPGraph::IR::BoxModel>>(*&self->_anon_28[24], *&self->_anon_28[32], *&equalCopy->_anon_28[24], *&equalCopy->_anon_28[32]) && std::operator==[abi:ne200100]<AudioDSPGraph::IR::BoxRelationModel,std::allocator<AudioDSPGraph::IR::BoxRelationModel>>(*&self->_anon_28[48], *&self->_anon_28[56], *&equalCopy->_anon_28[48], *&equalCopy->_anon_28[56]) && std::operator==[abi:ne200100]<AudioDSPGraph::IR::SubsetModel,std::allocator<AudioDSPGraph::IR::SubsetModel>>(*&self->_anon_28[72], *&self->_anon_28[80], *&equalCopy->_anon_28[72], *&equalCopy->_anon_28[80]) && std::operator==[abi:ne200100]<AudioDSPGraph::IR::WireModel,std::allocator<AudioDSPGraph::IR::WireModel>>(*&self->_anon_28[96], *&self->_anon_28[104], *&equalCopy->_anon_28[96], *&equalCopy->_anon_28[104]) && std::operator==[abi:ne200100]<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::Hash,std::equal_to<AudioDSPGraph::IR::WireConfigurationAlias>,std::allocator<std::pair<AudioDSPGraph::IR::WireConfigurationAlias const,AudioDSPGraph::IR::WireConfiguration>>>(&self->_anon_28[120], &equalCopy->_anon_28[120]) && AudioDSPGraph::IR::operator==<std::vector<AudioDSPGraph::IR::PortModel>>(&self->_anon_28[160], &equalCopy->_anon_28[160]) && std::operator==[abi:ne200100]<AudioDSPGraph::IR::SubsetModel,std::allocator<AudioDSPGraph::IR::SubsetModel>>(*&self->_anon_28[208], *&self->_anon_28[216], *&equalCopy->_anon_28[208], *&equalCopy->_anon_28[216]) && std::operator==[abi:ne200100]<AudioDSPGraph::IR::ParameterModel,std::allocator<AudioDSPGraph::IR::ParameterModel>>(*&self->_anon_28[232], *&self->_anon_28[240], *&equalCopy->_anon_28[232], *&equalCopy->_anon_28[240]) && std::operator==[abi:ne200100]<AudioDSPGraph::IR::ParameterConnectionModel,std::allocator<AudioDSPGraph::IR::ParameterConnectionModel>>(*&self->_anon_28[256], *&self->_anon_28[264], *&equalCopy->_anon_28[256], *&equalCopy->_anon_28[264]) && std::operator==[abi:ne200100]<AudioDSPGraph::IR::ParameterWireModel,std::allocator<AudioDSPGraph::IR::ParameterWireModel>>(*&self->_anon_28[280], *&self->_anon_28[288], *&equalCopy->_anon_28[280], *&equalCopy->_anon_28[288]) && std::operator==[abi:ne200100]<AudioDSPGraph::IR::PropertyModel,std::allocator<AudioDSPGraph::IR::PropertyModel>>(*&self->_anon_28[304], *&self->_anon_28[312], *&equalCopy->_anon_28[304], *&equalCopy->_anon_28[312]) && std::operator==[abi:ne200100]<AudioDSPGraph::IR::ParameterConnectionModel,std::allocator<AudioDSPGraph::IR::ParameterConnectionModel>>(*&self->_anon_28[328], *&self->_anon_28[336], *&equalCopy->_anon_28[328], *&equalCopy->_anon_28[336]) && std::operator==[abi:ne200100]<AudioDSPGraph::IR::ParameterWireModel,std::allocator<AudioDSPGraph::IR::ParameterWireModel>>(*&self->_anon_28[352], *&self->_anon_28[360], *&equalCopy->_anon_28[352], *&equalCopy->_anon_28[360]) && std::operator==[abi:ne200100]<AudioDSPGraph::IR::GraphModel::Analyzer,std::allocator<AudioDSPGraph::IR::GraphModel::Analyzer>>(*&self->_anon_28[376], *&self->_anon_28[384], *&equalCopy->_anon_28[376], *&equalCopy->_anon_28[384]) && std::operator==[abi:ne200100]<AudioDSPGraph::IR::GraphModel::AnalyzerConnection,std::allocator<AudioDSPGraph::IR::GraphModel::AnalyzerConnection>>(*&self->_anon_28[400], *&self->_anon_28[408], *&equalCopy->_anon_28[400], *&equalCopy->_anon_28[408]) && (v7.__data_ = *&self->_anon_28[432], v7.__size_ = *&equalCopy->_anon_28[424], std::operator==[abi:ne200100]<AudioDSPGraph::IR::InjectTapPointModel,std::allocator<AudioDSPGraph::IR::InjectTapPointModel>>(*&self->_anon_28[424], v7, *&equalCopy->_anon_28[432])))
  {
    v8.__data_ = *&self->_anon_28[456];
    v8.__size_ = *&equalCopy->_anon_28[448];
    v5 = std::operator==[abi:ne200100]<AudioDSPGraph::IR::InjectTapPointModel,std::allocator<AudioDSPGraph::IR::InjectTapPointModel>>(*&self->_anon_28[448], v8, *&equalCopy->_anon_28[456]);
  }

  else
  {
LABEL_27:
    v5 = 0;
  }

LABEL_28:

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CADSPMutableGraphModel allocWithZone:zone];
  AudioDSPGraph::IR::GraphModel::operator=(&v4->super._this, &self->_this);
  v5 = [(NSMutableArray *)self->_boxes mutableCopy];
  boxes = v4->super._boxes;
  v4->super._boxes = v5;

  v7 = [(NSMutableArray *)self->_boxRelations mutableCopy];
  boxRelations = v4->super._boxRelations;
  v4->super._boxRelations = v7;

  v9 = [(NSMutableArray *)self->_subsets mutableCopy];
  subsets = v4->super._subsets;
  v4->super._subsets = v9;

  v11 = [(NSMutableArray *)self->_inputs mutableCopy];
  inputs = v4->super._inputs;
  v4->super._inputs = v11;

  v13 = [(NSMutableArray *)self->_outputs mutableCopy];
  outputs = v4->super._outputs;
  v4->super._outputs = v13;

  v15 = [(NSMutableArray *)self->_jacks mutableCopy];
  jacks = v4->super._jacks;
  v4->super._jacks = v15;

  v17 = [(NSMutableArray *)self->_wires mutableCopy];
  wires = v4->super._wires;
  v4->super._wires = v17;

  v19 = [(NSMutableArray *)self->_parameters mutableCopy];
  parameters = v4->super._parameters;
  v4->super._parameters = v19;

  v21 = [(NSMutableArray *)self->_parameterConnections mutableCopy];
  parameterConnections = v4->super._parameterConnections;
  v4->super._parameterConnections = v21;

  v23 = [(NSMutableArray *)self->_parameterWires mutableCopy];
  parameterWires = v4->super._parameterWires;
  v4->super._parameterWires = v23;

  v25 = [(NSMutableArray *)self->_propertyConnections mutableCopy];
  propertyConnections = v4->super._propertyConnections;
  v4->super._propertyConnections = v25;

  v27 = [(NSMutableArray *)self->_properties mutableCopy];
  properties = v4->super._properties;
  v4->super._properties = v27;

  v29 = [(NSMutableArray *)self->_propertyWires mutableCopy];
  propertyWires = v4->super._propertyWires;
  v4->super._propertyWires = v29;

  v31 = [(NSMutableArray *)self->_injectorTapPoints mutableCopy];
  injectorTapPoints = v4->super._injectorTapPoints;
  v4->super._injectorTapPoints = v31;

  v33 = [(NSMutableArray *)self->_recorderTapPoints mutableCopy];
  recorderTapPoints = v4->super._recorderTapPoints;
  v4->super._recorderTapPoints = v33;

  return v4;
}

- (NSString)name
{
  if (LOBYTE(self->_this.name.var1) == 1)
  {
    v16 = v2;
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    data = self->_this.name.var0.__val_.__rep_.__l.__data_;
    p_this = &self->_this;
    v8 = data;
    v11 = *(&p_this->name.var0.var1 + 23);
    if (v11 >= 0)
    {
      v12 = p_this;
    }

    else
    {
      v12 = v8;
    }

    if (v11 >= 0)
    {
      size = *(&p_this->name.var0.var1 + 23);
    }

    else
    {
      size = p_this->name.var0.__val_.__rep_.__l.__size_;
    }

    v14 = [v7 initWithBytes:v12 length:size encoding:{4, v3, v16, v4}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)getAudioStreamConfiguration:(CADSPAudioStreamConfiguration *)configuration forName:(id)name
{
  v18 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v7 = nameCopy;
  if (!nameCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    *__p = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, [v7 UTF8String]);
  v8 = std::__hash_table<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,std::__unordered_map_hasher<AudioDSPGraph::IR::WireConfigurationAlias,std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,AudioDSPGraph::IR::Hash,std::equal_to<AudioDSPGraph::IR::WireConfigurationAlias>,true>,std::__unordered_map_equal<AudioDSPGraph::IR::WireConfigurationAlias,std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>,std::equal_to<AudioDSPGraph::IR::WireConfigurationAlias>,AudioDSPGraph::IR::Hash,true>,std::allocator<std::__hash_value_type<AudioDSPGraph::IR::WireConfigurationAlias,AudioDSPGraph::IR::WireConfiguration>>>::find<AudioDSPGraph::IR::WireConfigurationAlias>(&self->_anon_28[120], __p);
  if (!v8)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  if (configuration)
  {
    v9 = *(v8 + 5);
    v10 = *(v8 + 7);
    *&configuration->var0.mBitsPerChannel = v8[9];
    *&configuration->var0.mSampleRate = v9;
    *&configuration->var0.mBytesPerPacket = v10;
    configuration->var1 = *(v8 + 20);
  }

  if (SBYTE7(v14) < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *MEMORY[0x1E69E9840];
  return 1;
}

- (NSArray)audioStreamConfigurationNames
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:*&self->_anon_28[144]];
  for (i = *&self->_anon_28[136]; i; i = *i)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = *(i + 39);
    if (v6 >= 0)
    {
      v7 = (i + 2);
    }

    else
    {
      v7 = i[2];
    }

    if (v6 >= 0)
    {
      v8 = *(i + 39);
    }

    else
    {
      v8 = i[3];
    }

    v9 = [v5 initWithBytes:v7 length:v8 encoding:4];
    [v3 addObject:v9];
  }

  v10 = [v3 copy];

  return v10;
}

@end