@interface SemanticsTable
- (BOOL)getARMeshClassificationID:(id)d ARMeshClassificationID:(int64_t *)iD;
- (BOOL)getARMeshMaterialID:(id)d ARMeshMaterialID:(int64_t *)iD;
- (id).cxx_construct;
- (id)labelsForSemanticType:(id)type error:(id *)error;
- (materialsForPair)getMaterialsForPair:(const semantic_pair *)pair;
- (void)readTable:(id *)table;
@end

@implementation SemanticsTable

- (void)readTable:(id *)table
{
  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT * FROM [semantics]"];
  tableCopy = table;
  v5 = DBIOFetchDatabaseResultsExt(_dbPtr, v31, table);
  v6 = v5;
  if (v5)
  {
    v7 = AbsorptionTable::get(v5);
    obj = materialCachedTable<AMAbsorption>::getMaterial(v7, @"Default", table);
    v47 = obj;
    v8 = ScatteringTable::get(obj);
    v34 = materialCachedTable<AMScattering>::getMaterial(v8, @"Default", table);
    v48 = v34;
    v9 = SoundReductionTable::get(v34);
    v10 = materialCachedTable<AMSoundReductionIndex>::getMaterial(v9, @"Default", table);
    v11 = 0;
    v49 = v10;
    v32 = v10;
    v33 = v6;
    while (v11 < [(AbsorptionTable *)v6 count])
    {
      v37 = v11;
      v12 = [(AbsorptionTable *)v6 objectAtIndexedSubscript:v11];
      v13 = [v12 objectAtIndexedSubscript:4];
      v14 = [v12 objectAtIndexedSubscript:5];
      v40 = [v12 objectAtIndexedSubscript:6];
      if ([v13 isEqualToString:@"Default"] && objc_msgSend(v14, "isEqualToString:", @"Default"))
      {
        v15 = [v40 isEqualToString:@"Default"];
      }

      else
      {
        v15 = 0;
      }

      v39 = [v12 objectAtIndexedSubscript:0];
      longValue = [v39 longValue];
      v38 = [v12 objectAtIndexedSubscript:2];
      longLongValue = [v38 longLongValue];
      v46 = [v12 objectAtIndexedSubscript:1];
      v45 = [v12 objectAtIndexedSubscript:3];
      v44[0] = &v46;
      std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>(&self->_MeshMaterialMap.__table_.__bucket_list_.__ptr_, &v46)[3] = longValue;
      v44[0] = &v45;
      v18 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::__emplace_unique_key_args<NSString * {__strong},std::piecewise_construct_t const&,std::tuple<NSString * const {__strong}&>,std::tuple<>>(&self->_MeshClassificationMap.__table_.__bucket_list_.__ptr_, &v45);
      v18[3] = longLongValue;
      v44[0] = longValue;
      v44[1] = longLongValue;
      if (longValue >= longLongValue)
      {
        v19 = (longLongValue + longValue + longValue * longValue);
      }

      else
      {
        v19 = (longValue + longLongValue * longLongValue);
      }

      v44[2] = v19;
      if (v15)
      {
        v20 = std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__emplace_unique_key_args<semantic_pair,std::piecewise_construct_t const&,std::tuple<semantic_pair const&>,std::tuple<>>(&self->_SemanticsMap.__table_.__bucket_list_.__ptr_, v44);
        objc_storeStrong(v20 + 5, obj);
        objc_storeStrong(v20 + 6, v34);
        objc_storeStrong(v20 + 7, v10);
      }

      else
      {
        v21 = AbsorptionTable::get(v18);
        v41 = materialCachedTable<AMAbsorption>::getMaterial(v21, v13, tableCopy);
        v22 = ScatteringTable::get(v41);
        v42 = materialCachedTable<AMScattering>::getMaterial(v22, v14, tableCopy);
        v23 = SoundReductionTable::get(v42);
        v43 = materialCachedTable<AMSoundReductionIndex>::getMaterial(v23, v40, tableCopy);
        v50 = v44;
        v24 = std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::__emplace_unique_key_args<semantic_pair,std::piecewise_construct_t const&,std::tuple<semantic_pair const&>,std::tuple<>>(&self->_SemanticsMap.__table_.__bucket_list_.__ptr_, v44);
        v25 = v24[5];
        v24[5] = v41;
        v26 = v41;

        v27 = v24[6];
        v24[6] = v42;
        v28 = v42;

        v29 = v24[7];
        v24[7] = v43;
        v30 = v43;

        v10 = v32;
        v6 = v33;
      }

      v11 = v37 + 1;
    }
  }
}

- (id)labelsForSemanticType:(id)type error:(id *)error
{
  typeCopy = type;
  array = [MEMORY[0x277CBEB18] array];
  if ([typeCopy isEqualToString:@"visual material"])
  {
    for (i = self->_MeshMaterialMap.__table_.__first_node_.__next_; i; i = *i)
    {
      v8 = i[2];
      [array addObject:v8];
    }
  }

  else if ([typeCopy isEqualToString:@"ARMeshMaterial"])
  {
    for (j = self->_MeshMaterialMap.__table_.__first_node_.__next_; j; j = *j)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithLongLong:j[3]];
      [array addObject:v10];
    }
  }

  else if ([typeCopy isEqualToString:@"object"])
  {
    for (k = self->_MeshClassificationMap.__table_.__first_node_.__next_; k; k = *k)
    {
      v12 = k[2];
      [array addObject:v12];
    }
  }

  else if ([typeCopy isEqualToString:@"ARMeshClassification"])
  {
    for (m = self->_MeshClassificationMap.__table_.__first_node_.__next_; m; m = *m)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithLongLong:m[3]];
      [array addObject:v14];
    }
  }

  return array;
}

- (BOOL)getARMeshMaterialID:(id)d ARMeshMaterialID:(int64_t *)iD
{
  dCopy = d;
  v6 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>(&self->_MeshMaterialMap.__table_.__bucket_list_.__ptr_, &dCopy);
  if (v6)
  {
    *iD = v6[3];
  }

  v7 = v6 != 0;

  return v7;
}

- (BOOL)getARMeshClassificationID:(id)d ARMeshClassificationID:(int64_t *)iD
{
  dCopy = d;
  v6 = std::__hash_table<std::__hash_value_type<NSString * {__strong},long long>,std::__unordered_map_hasher<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::hash<NSString * {__strong}>,std::equal_to<NSString * {__strong}>,true>,std::__unordered_map_equal<NSString * {__strong},std::__hash_value_type<NSString * {__strong},long long>,std::equal_to<NSString * {__strong}>,std::hash<NSString * {__strong}>,true>,std::allocator<std::__hash_value_type<NSString * {__strong},long long>>>::find<NSString * {__strong}>(&self->_MeshClassificationMap.__table_.__bucket_list_.__ptr_, &dCopy);
  if (v6)
  {
    *iD = v6[3];
  }

  v7 = v6 != 0;

  return v7;
}

- (materialsForPair)getMaterialsForPair:(const semantic_pair *)pair
{
  v3 = std::__hash_table<std::__hash_value_type<semantic_pair,materialsForPair>,std::__unordered_map_hasher<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::hash<semantic_pair>,std::equal_to<semantic_pair>,true>,std::__unordered_map_equal<semantic_pair,std::__hash_value_type<semantic_pair,materialsForPair>,std::equal_to<semantic_pair>,std::hash<semantic_pair>,true>,std::allocator<std::__hash_value_type<semantic_pair,materialsForPair>>>::find<semantic_pair>(&self->_SemanticsMap.__table_.__bucket_list_.__ptr_, pair);
  if (v3)
  {
    return (v3 + 5);
  }

  else
  {
    return _defaultMaterial;
  }
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 30) = 1065353216;
  return self;
}

@end