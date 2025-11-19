uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, llvm::Type **a6, char a7)
{
  v13 = *(a2 + 200);
  v61 = llvm::PointerType::get();
  v14 = *(a2 + 208);
  v15 = llvm::PointerType::get();
  v16 = *(a3 + 16);
  v65 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a2 + 8), v16, v15, v64);
  v18 = *(a2 + 208);
  (*(**(a2 + 920) + 896))();
  v19 = *(a2 + 200);
  v20 = llvm::ConstantInt::get();
  v64[0] = "scs.scs_layout.ptr";
  v65 = 259;
  GEP = llvm::IRBuilderBase::CreateGEP((a2 + 8), v18, PointerCast, v20, v64);
  v22 = *(a2 + 200);
  v23 = llvm::PointerType::get();
  v65 = 257;
  v24 = llvm::IRBuilderBase::CreatePointerCast((a2 + 8), GEP, v23, v64);
  v25 = *(a2 + 200);
  v26 = llvm::ConstantInt::get();
  v65 = 257;
  v27 = llvm::IRBuilderBase::CreateGEP((a2 + 8), v25, v24, v26, v64);
  *a1 = AGCLLVMBuilder::CreateLoad(a2, v27, "global_stride");
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a2, a4, PointerCast);
  v29 = *(a2 + 200);
  (*(**(a2 + 920) + 1072))();
  v30 = *(a2 + 200);
  v31 = llvm::ConstantInt::get();
  v65 = 257;
  v32 = llvm::IRBuilderBase::CreateGEP((a2 + 8), v29, PerVridSetDataPtr, v31, v64);
  v33 = *(a2 + 200);
  (*(**(a2 + 920) + 1080))();
  v34 = *(a2 + 200);
  v35 = llvm::ConstantInt::get();
  v65 = 257;
  v36 = llvm::IRBuilderBase::CreateGEP((a2 + 8), v33, PerVridSetDataPtr, v35, v64);
  v37 = *(a2 + 200);
  (*(**(a2 + 920) + 1088))();
  v38 = *(a2 + 200);
  v39 = llvm::ConstantInt::get();
  v65 = 257;
  v40 = llvm::IRBuilderBase::CreateGEP((a2 + 8), v37, PerVridSetDataPtr, v39, v64);
  v41 = *(a2 + 200);
  v65 = 257;
  llvm::Type::isOpaquePointerTy(*v40);
  a1[2] = llvm::IRBuilderBase::CreateAlignedLoad((a2 + 8), v41, v40, 0, v64);
  v42 = *(a2 + 200);
  if ((a5 & 0x100000000) != 0)
  {
    v46 = *(a2 + 200);
    Cast = llvm::ConstantInt::get();
    llvm::IRBuilderBase::CreateAlignedStore((a2 + 8), Cast, v32, 0);
  }

  else
  {
    v65 = 257;
    llvm::Type::isOpaquePointerTy(*v32);
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a2 + 8), v42, v32, 0, v64);
    v44 = *(a2 + 200);
    v63 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a2 + 8, 38, AlignedLoad, v44, v62);
  }

  a1[1] = Cast;
  if (a7)
  {
    llvm::IRBuilderBase::CreateAlignedStore((a2 + 8), a6, v36, 0);
  }

  else
  {
    v47 = *(a2 + 200);
    v65 = 257;
    llvm::Type::isOpaquePointerTy(*v36);
    a6 = llvm::IRBuilderBase::CreateAlignedLoad((a2 + 8), v47, v36, 0, v64);
  }

  a1[3] = a6;
  v48 = *(a2 + 208);
  (*(**(a2 + 920) + 960))(*(a2 + 920));
  v49 = *(a2 + 200);
  v50 = llvm::ConstantInt::get();
  v65 = 257;
  v51 = llvm::IRBuilderBase::CreateGEP((a2 + 8), v48, PointerCast, v50, v64);
  v63 = 257;
  v52 = llvm::IRBuilderBase::CreatePointerCast((a2 + 8), v51, v61, v62);
  v53 = *(a2 + 200);
  v54 = llvm::ConstantInt::get();
  v65 = 257;
  v55 = llvm::IRBuilderBase::CreateGEP((a2 + 8), v53, v52, v54, v64);
  v63 = 257;
  llvm::Type::isOpaquePointerTy(*v55);
  a1[4] = llvm::IRBuilderBase::CreateAlignedLoad((a2 + 8), v53, v55, 0, v62);
  v56 = *(a2 + 200);
  v57 = llvm::ConstantInt::get();
  v65 = 257;
  v58 = llvm::IRBuilderBase::CreateGEP((a2 + 8), v56, v52, v57, v64);
  v63 = 257;
  llvm::Type::isOpaquePointerTy(*v58);
  result = llvm::IRBuilderBase::CreateAlignedLoad((a2 + 8), v56, v58, 0, v62);
  a1[5] = result;
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(void *a1, uint64_t a2, uint64_t a3, llvm::Value **a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  v157 = *MEMORY[0x277D85DE8];
  v131 = *(a1 + 477);
  v12 = a1[23];
  v132 = llvm::PointerType::get();
  v13 = a1[23];
  v14 = llvm::PointerType::get();
  v15 = *(a2 + 24);
  v16 = *(a2 + 40);
  v17 = a1[25];
  *&v151 = "vrid_ext";
  LOWORD(v153) = 259;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, a3, v17, &v151);
  v154 = 0;
  v152 = 0u;
  v153 = 0u;
  v151 = 0u;
  v148 = *(a1 + 7);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v149, (a1 + 1));
  v150 = *(a1 + 26);
  (*(*a1 + 1976))(&v151, a1, &v148, a2, a3, a7);
  if (v149)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v131 < 4)
  {
    Add = 0;
  }

  else
  {
    v143 = *(a1 + 7);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v144, (a1 + 1));
    v145 = *(a1 + 26);
    (*(*a1 + 1096))(v146, a1, &v143);
    v19 = v146[1];
    v20 = v146[2];
    if (v144)
    {
      llvm::MetadataTracking::untrack();
    }

    v21 = a1[25];
    v22 = llvm::ConstantInt::get();
    v146[0] = "scs.num_vrids";
    v147 = 259;
    llvm::IRBuilderBase::CreateMul((a1 + 1), v20, v22, v146);
    v23 = a1[25];
    v24 = llvm::ConstantInt::get();
    v146[0] = "scs.max_level_depth";
    v147 = 259;
    Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), v19, v24, v146);
  }

  v26 = a1[25];
  v27 = llvm::ConstantInt::get();
  v146[0] = "vrid_level_1";
  v147 = 259;
  v130 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Cast, v27, v146);
  v28 = a1[25];
  v29 = llvm::ConstantInt::get();
  v146[0] = "vrid_level_2";
  v147 = 259;
  v129 = Cast;
  v136 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Cast, v29, v146);
  llvm::ArrayType::get(v132, 0x1A);
  v30 = llvm::UndefValue::get();
  LODWORD(v155[0]) = 2;
  v147 = 257;
  InsertValue = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v30, *(&v151 + 1), v155, 1, v146);
  LODWORD(v155[0]) = 3;
  v147 = 257;
  v32 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), InsertValue, v152, v155, 1, v146);
  LODWORD(v155[0]) = 0;
  v147 = 257;
  v33 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v32, *(&v152 + 1), v155, 1, v146);
  LODWORD(v155[0]) = 4;
  v147 = 257;
  v34 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v33, *(&v153 + 1), v155, 1, v146);
  LODWORD(v155[0]) = 5;
  v147 = 257;
  v35 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v34, v154, v155, 1, v146);
  if (a7)
  {
    LODWORD(v155[0]) = 1;
    v147 = 257;
    v35 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v35, v151, v155, 1, v146);
  }

  v140 = v35;
  if (a5 <= 6 && (((1 << a5) & 0x4A) != 0 || ((1 << a5) & 0x21) != 0))
  {
    v36 = v14;
    v37 = a1[25];
    v134 = llvm::ConstantInt::get();
    v38 = a1[25];
    llvm::ConstantInt::get();
  }

  else
  {
    v36 = v14;
    v120 = a4[3];
    v121 = a1[25];
    v122 = llvm::ConstantInt::get();
    v147 = 257;
    v134 = v120;
    llvm::IRBuilderBase::CreateAdd((a1 + 1), v120, v122, v146);
  }

  v147 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast(a1 + 1, v15, v132, v146);
  v147 = 257;
  v128 = llvm::IRBuilderBase::CreatePointerCast(a1 + 1, v16, v36, v146);
  v40 = *a4;
  v146[0] = "global_vrid_size";
  v147 = 259;
  v41 = *v40;
  v42 = llvm::ConstantInt::get();
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v40, v42, v146);
  v139 = (*(*a1 + 1016))(a1, a5, a6);
  v44 = a1[23];
  v147 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((a1 + 1), v130, LShr, v146);
  v155[0] = "segment_start";
  v156 = 259;
  v127 = PointerCast;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v44, PointerCast, Mul, v155);
  v46 = a1[23];
  v47 = *(&v152 + 1);
  v48 = a1[25];
  v49 = llvm::ConstantInt::get();
  v147 = 257;
  v50 = v46;
  v51 = a6;
  v137 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v50, v47, v49, v146);
  v52 = 6;
  v53 = -104;
  do
  {
    if (RaytracingConstantsGen1::payloadHasSegment(v52, a5, v51, *(a1 + 1940)))
    {
      v55 = RaytracingConstantsGen2::payloadSegmentSize(v52, *(a1 + 2872));
      if (v55)
      {
        v56 = v55;
        if (v55 <= v139)
        {
          LODWORD(v155[0]) = v52;
          v147 = 257;
          v140 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v140, v137, v155, 1, v146);
          v78 = (v56 + 3) & 0x3FFC;
          v79 = a1[23];
          v80 = a1[25];
          v81 = llvm::ConstantInt::get();
          v147 = 257;
          v137 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v79, v137, v81, v146);
          v82 = v139 - v78;
          if (v139 < v78)
          {
            v82 = 0;
          }

          v139 = v82;
        }

        else
        {
          v57 = a1[25];
          v58 = llvm::ConstantInt::get();
          if ((v52 - 19) <= 4)
          {
            v59 = a1[25];
            v60 = llvm::ConstantInt::get();
            v147 = 257;
            llvm::IRBuilderBase::CreateICmp(a1 + 1, 35, v134, v60, v146);
            v61 = a1[25];
            v62 = llvm::ConstantInt::get();
            v147 = 257;
            Sub = llvm::IRBuilderBase::CreateSub((a1 + 1), v134, v62, v146);
            v64 = a1[25];
            v51 = a6;
            v65 = llvm::ConstantInt::get();
            v156 = 257;
            UDiv = llvm::IRBuilderBase::CreateUDiv((a1 + 1), Sub, v65, v155);
            v67 = a1[25];
            v68 = llvm::ConstantInt::get();
            v142 = 257;
            llvm::IRBuilderBase::CreateAdd((a1 + 1), UDiv, v68, v141);
            v69 = a1[25];
            llvm::ConstantInt::get();
            Select = llvm::IRBuilderBase::CreateSelect();
            v147 = 257;
            v58 = llvm::IRBuilderBase::CreateMul((a1 + 1), v58, Select, v146);
          }

          v147 = 257;
          v71 = llvm::IRBuilderBase::CreateMul((a1 + 1), v136, v58, v146);
          v72 = a1[23];
          v147 = 257;
          v73 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v72, GEP, v71, v146);
          v141[0] = v52;
          v156 = 257;
          v140 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v140, v73, v141, 1, v155);
          v74 = a1[23];
          v75 = a1[25];
          v76 = llvm::ConstantInt::get();
          v147 = 257;
          v77 = llvm::IRBuilderBase::CreateMul((a1 + 1), v58, v76, v146);
          v156 = 257;
          GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v74, GEP, v77, v155);
        }
      }
    }

    ++v52;
    v53 += 8;
  }

  while (v52 != 26);
  if (a5 <= 7 && ((1 << a5) & 0xDE) != 0)
  {
    v83 = a4;
    if (v131 <= 3)
    {
      v101 = a1[23];
      v102 = a4[4];
      v146[0] = "instance_leaf_start";
      v147 = 259;
      v103 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v101, v127, v102, v146);
      v104 = a4[5];
      v146[0] = "vrid_instance_leaf_offset";
      v147 = 259;
      v105 = llvm::IRBuilderBase::CreateMul((a1 + 1), v129, v104, v146);
      v106 = a1[23];
      v147 = 257;
      v100 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v106, v103, v105, v146);
      v141[0] = 21;
      v156 = 257;
      v97 = (a1 + 1);
      v98 = v141;
      v99 = v155;
      v96 = v140;
    }

    else
    {
      v84 = a1[25];
      v85 = llvm::ConstantInt::get();
      v147 = 257;
      v86 = llvm::IRBuilderBase::CreateSub((a1 + 1), Add, v85, v146);
      v87 = a1[25];
      v88 = llvm::ConstantInt::get();
      v156 = 257;
      v89 = llvm::IRBuilderBase::CreateMul((a1 + 1), v86, v88, v155);
      v90 = a1[25];
      v91 = llvm::ConstantInt::get();
      v147 = 257;
      v92 = llvm::IRBuilderBase::CreateMul((a1 + 1), v89, v91, v146);
      v147 = 257;
      v93 = llvm::IRBuilderBase::CreateMul((a1 + 1), v92, v129, v146);
      v94 = a1[23];
      v146[0] = "scs.instance_leaf_ptrs.a";
      v147 = 259;
      v95 = llvm::IRBuilderBase::CreateGEP((a1 + 1), v94, v153, v93, v146);
      LODWORD(v155[0]) = 21;
      v147 = 257;
      v96 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v140, v95, v155, 1, v146);
      LODWORD(v155[0]) = 19;
      v147 = 257;
      v97 = (a1 + 1);
      v98 = v155;
      v99 = v146;
      v100 = v95;
    }

    v107 = llvm::IRBuilderBase::CreateInsertValue(v97, v96, v100, v98, 1, v99);
  }

  else
  {
    v123 = llvm::ConstantPointerNull::get(v132, v54);
    LODWORD(v155[0]) = 21;
    v147 = 257;
    v124 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v140, v123, v155, 1, v146);
    v126 = llvm::ConstantPointerNull::get(v132, v125);
    LODWORD(v155[0]) = 19;
    v147 = 257;
    v107 = llvm::IRBuilderBase::CreateInsertValue((a1 + 1), v124, v126, v155, 1, v146);
    v83 = a4;
  }

  if (v83[1])
  {
    v108 = *v83;
    v109 = a1[25];
    v110 = llvm::ConstantInt::get();
    v147 = 257;
    v111 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v108, v110, v146);
    v156 = 257;
    v112 = llvm::IRBuilderBase::CreateMul((a1 + 1), v130, v111, v155);
    v113 = v83[1];
    v147 = 257;
    v114 = llvm::IRBuilderBase::CreateMul((a1 + 1), v136, v113, v146);
    v147 = 257;
    v115 = llvm::IRBuilderBase::CreateAdd((a1 + 1), v112, v114, v146);
    v116 = *v128;
    v117 = a1[23];
    v146[0] = "ray_user_data_as_i8";
    v147 = 259;
    v155[0] = llvm::IRBuilderBase::CreateGEP((a1 + 1), v117, v128, v115, v146);
    AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "llvm.agx3.in.user.payload.section.bounds", 40, v116, v155, 1uLL);
  }

  v118 = *MEMORY[0x277D85DE8];
  return v107;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildCliqueSPop(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v15 = *a2;
  v16 = *(a2 + 2);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v15, (a1 + 1));
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 944))(v14, a1);
  v8 = *&v14[0];
  memset(v14, 0, sizeof(v14));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(v14, a1, a3, v8, 0, 0, 0);
  v9 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a3, v8, v14, a4, 1u, 1);
  v10 = a1[18];
  v18[0] = v9;
  v18[1] = v8;
  v11 = a1[22];
  v18[2] = llvm::ConstantInt::get();
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.cliqueS_pop_commit_end", 26, v10, v18, 3uLL);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildCliqueSPush(uint64_t a1, __int128 *a2, uint64_t a3, llvm::Type **a4, uint64_t a5, uint64_t a6)
{
  v28[8] = *MEMORY[0x277D85DE8];
  v25 = *a2;
  v26 = *(a2 + 2);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 6);
  AGCLLVMBuilder::InsertPoint::restoreIP(&v25, a1 + 8);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  memset(v24, 0, sizeof(v24));
  (*(*a1 + 944))(v24, a1);
  memset(v23, 0, sizeof(v23));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(v23, a1, a3, *&v24[0], 0, 0, 0);
  v11 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a3, *&v24[0], v23, a6, 1u, 1);
  v12 = *(a1 + 144);
  v28[0] = v11;
  v22 = 257;
  v28[1] = AGCLLVMBuilder::CreateLoad(a1, a4, v21);
  v28[2] = *&v24[0];
  v13 = *(a1 + 176);
  v28[3] = llvm::ConstantInt::get();
  v14 = *(a1 + 176);
  v28[4] = llvm::ConstantInt::get();
  v15 = *(a1 + 176);
  v28[5] = llvm::ConstantInt::get();
  v16 = *(a1 + 1940);
  v17 = *(a1 + 176);
  v28[6] = llvm::ConstantInt::get();
  v18 = *(a1 + 184);
  v28[7] = llvm::ConstantInt::get();
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.cliqueS_transform_and_commit", 32, v12, v28, 8uLL);
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayDriverTestHit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  std::string::basic_string[abi:nn200100]<0>(v14, "agx.ray_driver_test_hit");
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v14, a3);
  if (v17 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v17 >= 0)
  {
    v9 = v17;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = *(a1 + 176);
  v21[0] = *(a3 + 24);
  v21[1] = a4;
  v11 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v8, v9, v10, v21, 2uLL);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayHasMoreResults(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v16 = *a2;
  v17 = *(a2 + 16);
  if (v17)
  {
    llvm::MetadataTracking::track();
  }

  v18 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v16);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  std::string::basic_string[abi:nn200100]<0>(v12, "agx.ray_has_more_results");
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v12, a3);
  if (v15 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v15 >= 0)
  {
    v7 = v15;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = *(a1 + 176);
  v19[0] = *(a3 + 24);
  v9 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v6, v7, v8, v19, 1uLL);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayRunThisThread(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = *a2;
  v20 = *(a2 + 16);
  if (v20)
  {
    llvm::MetadataTracking::track();
  }

  v21 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v19);
  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  std::string::basic_string[abi:nn200100]<0>(v15, "agx.ray_run_this_thread");
  v6 = __p;
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v15, a3);
  if (v18 < 0)
  {
    v6 = __p[0];
  }

  if (v18 >= 0)
  {
    v7 = v18;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = *(a1 + 184);
  v9 = *v8;
  v22 = v8;
  v23 = v8;
  v10 = llvm::StructType::get();
  v11 = *(a3 + 8);
  v22 = *(a3 + 24);
  v23 = v11;
  v12 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v6, v7, v10, &v22, 2uLL);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayEndSerial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v17 = *a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v17);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  std::string::basic_string[abi:nn200100]<0>(v13, "agx.end_serial");
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v13, a3);
  if (v16 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v16 >= 0)
  {
    v9 = v16;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = *(a1 + 144);
  v11 = *(a3 + 8);
  v20[0] = *(a3 + 24);
  v20[1] = v11;
  v20[2] = a4;
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v8, v9, v10, v20, 3uLL);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  v12 = *MEMORY[0x277D85DE8];
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayHasTerminated(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  std::string::basic_string[abi:nn200100]<0>(v14, "agx.ray_has_terminated");
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v14, a3);
  if (v17 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v17 >= 0)
  {
    v9 = v17;
  }

  else
  {
    v9 = __p[1];
  }

  v10 = *(a1 + 176);
  v21[0] = *(a3 + 24);
  v21[1] = a4;
  v11 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v8, v9, v10, v21, 2uLL);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRiaCliqueEnd(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v6 = *(a2 + 16);
  if (v6)
  {
    llvm::MetadataTracking::track();
  }

  v7 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v5);
  if (v6)
  {
    llvm::MetadataTracking::untrack();
  }

  return AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.ria_clique_end", 18, *(a1 + 144), 0, 0);
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::commitIntersectionTestSerial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26[5] = *MEMORY[0x277D85DE8];
  v23 = *a2;
  v24 = *(a2 + 16);
  if (v24)
  {
    llvm::MetadataTracking::track();
  }

  v25 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v23);
  if (v24)
  {
    llvm::MetadataTracking::untrack();
  }

  std::string::basic_string[abi:nn200100]<0>(v19, "agx.commit_serial");
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v19, a3);
  if (v22 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if (v22 >= 0)
  {
    v13 = v22;
  }

  else
  {
    v13 = __p[1];
  }

  v14 = *(a1 + 192);
  v15 = *(a3 + 8);
  v26[0] = *(a3 + 24);
  v26[1] = v15;
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v16 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v12, v13, v14, v26, 5uLL);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v20 < 0)
  {
    operator delete(v19[0]);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::commitIntersectionTestParallel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[7] = *MEMORY[0x277D85DE8];
  v24 = *a2;
  v25 = *(a2 + 16);
  if (v25)
  {
    llvm::MetadataTracking::track();
  }

  v26 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v24);
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  v12 = *(a3 + 8);
  v27[0] = *(a3 + 24);
  v27[1] = v12;
  v27[2] = a4;
  v27[3] = a5;
  v27[4] = a6;
  v13 = *(a1 + 176);
  v27[5] = llvm::ConstantInt::get();
  v14 = *(a1 + 176);
  v27[6] = llvm::ConstantInt::get();
  std::string::basic_string[abi:nn200100]<0>(v20, "agx.commit_parallel");
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v20, a3);
  if (v23 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if (v23 >= 0)
  {
    v16 = v23;
  }

  else
  {
    v16 = __p[1];
  }

  v17 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v15, v16, *(a1 + 176), v27, 7uLL);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildDriverIFBEmulationWrapper(AGCLLVMBuilder *a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v26[10] = *MEMORY[0x277D85DE8];
  v23 = *a2;
  v24 = *(a2 + 16);
  if (v24)
  {
    llvm::MetadataTracking::track();
  }

  v25 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v23);
  if (v24)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 944))(v26, a1);
  v8 = v26[0];
  memset(v22, 0, sizeof(v22));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(v22, a1, a4, v26[0], 0, 0, 0);
  v9 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a4, v8, v22, 0, 1u, 1);
  v10 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a4, v8, v22, 1, 1u, 1);
  v11 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a4, v8, v22, 2, 1u, 1);
  v12 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a4, v8, v22, 3, 1u, 1);
  v13 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a4, v8, v22, 4, 1u, 1);
  v14 = *(a1 + 18);
  v26[0] = v9;
  v26[1] = v10;
  v26[2] = v11;
  v26[3] = v12;
  v26[4] = v13;
  v21 = 257;
  v26[5] = AGCLLVMBuilder::CreateLoad(a1, a3, v20);
  v26[6] = v8;
  v15 = *(a1 + 23);
  v26[7] = llvm::ConstantInt::get();
  v16 = *(a1 + 23);
  v26[8] = llvm::ConstantInt::get();
  v17 = *(a1 + 23);
  v26[9] = llvm::ConstantInt::get();
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.ifb_wrapper", 15, v14, v26, 0xAuLL);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildDriverIntersectionGin1122SWWA(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v13 = *a2;
  v14 = *(a2 + 16);
  if (v14)
  {
    llvm::MetadataTracking::track();
  }

  v15 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v13);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 944))(v12, a1);
  v6 = *&v12[0];
  memset(v12, 0, sizeof(v12));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(v12, a1, a3, v6, 0, 0, 0);
  v16[0] = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a3, v6, v12, 8, 1u, 1);
  v16[1] = v6;
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.commit_parallel_gin1122swwa", 31, *(a1 + 144), v16, 2uLL);
  v9 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (a1 + 8));
  v11 = *(a1 + 104);
  result = (*(*a1 + 1272))(a1, &v9);
  if (v10)
  {
    result = llvm::MetadataTracking::untrack();
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildDriverIntersectionEarlyTermination(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 944))(v14, a1);
  v8 = *&v14[0];
  memset(v14, 0, sizeof(v14));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(v14, a1, a3, v8, 0, 0, 0);
  v18[0] = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a3, v8, v14, a4, 1u, 1);
  v18[1] = v8;
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.commit_early_termination", 28, *(a1 + 144), v18, 2uLL);
  v11 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v12, (a1 + 8));
  v13 = *(a1 + 104);
  result = (*(*a1 + 1272))(a1, &v11);
  if (v12)
  {
    result = llvm::MetadataTracking::untrack();
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildDriverIntersectionMiss(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[3] = *MEMORY[0x277D85DE8];
  v14 = *a2;
  v15 = *(a2 + 16);
  if (v15)
  {
    llvm::MetadataTracking::track();
  }

  v16 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v14);
  if (v15)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 944))(v13, a1);
  v6 = *&v13[0];
  memset(v13, 0, sizeof(v13));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(v13, a1, a3, v6, 0, 0, 0);
  v17[0] = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a3, v6, v13, 8, 1u, 1);
  v17[1] = v6;
  v7 = *(a1 + 176);
  v17[2] = llvm::ConstantInt::get();
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.commit_parallel_miss", 24, *(a1 + 144), v17, 3uLL);
  v10 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v11, (a1 + 8));
  v12 = *(a1 + 104);
  result = (*(*a1 + 1272))(a1, &v10);
  if (v11)
  {
    result = llvm::MetadataTracking::untrack();
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildDriverIntersectionTest(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = *a2;
  v48 = *(a2 + 16);
  if (v48)
  {
    llvm::MetadataTracking::track();
  }

  v49 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v47);
  if (v48)
  {
    llvm::MetadataTracking::untrack();
  }

  v15 = a4 - 6 < 3 || (a6 - 5) < 3;
  if (a4 > 8)
  {
    goto LABEL_19;
  }

  if (((1 << a4) & 0x44) == 0)
  {
    if (((1 << a4) & 0x88) != 0)
    {
      v37 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v38, (a1 + 8));
      v39 = *(a1 + 104);
      (*(*a1 + 1208))(&v43, a1, &v37, a3, a5, a6, 1, a7, 0, v15);
      v45 = v43;
      v46 = v44;
      if (!v38)
      {
LABEL_19:
        v16 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      if (((1 << a4) & 0x120) == 0)
      {
        goto LABEL_19;
      }

      v34 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v35, (a1 + 8));
      v36 = *(a1 + 104);
      (*(*a1 + 1200))(&v43, a1, &v34, a3, a5, a6, 1, a7, 0, v15);
      v45 = v43;
      v46 = v44;
      if (!v35)
      {
        goto LABEL_19;
      }
    }

    llvm::MetadataTracking::untrack();
    goto LABEL_19;
  }

  v40 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v41, (a1 + 8));
  v42 = *(a1 + 104);
  HIBYTE(v24) = v15;
  LOBYTE(v24) = 0;
  (*(*a1 + 1192))(&v43, a1, &v40, a3, a5, a6, 1, a7, !v15, v24);
  v45 = v43;
  v46 = v44;
  if (v41)
  {
    llvm::MetadataTracking::untrack();
  }

  v16 = 1;
LABEL_23:
  v31 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v32, (a1 + 8));
  v33 = *(a1 + 104);
  v17 = *(a1 + 176);
  v18 = llvm::ConstantInt::get();
  v19 = *(a1 + 176);
  v20 = llvm::ConstantInt::get();
  v21 = *(a1 + 168);
  v22 = llvm::ConstantFP::get();
  (*(*a1 + 1256))(a1, &v31, &v45, v18, v20, v22, (a6 - 5) < 3u, 0);
  if (v32)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v16)
  {
    v28 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v29, (a1 + 8));
    v30 = *(a1 + 104);
    (*(*a1 + 1112))(a1, &v28, a3, a5, a6, 1);
    if (v29)
    {
      llvm::MetadataTracking::untrack();
    }
  }

  v25 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v26, (a1 + 8));
  v27 = *(a1 + 104);
  result = (*(*a1 + 1272))(a1, &v25);
  if (v26)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildCurveIntersectionTest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, unsigned int a5@<W5>, char a6@<W7>, uint64_t a7@<X8>)
{
  v54 = *MEMORY[0x277D85DE8];
  v44 = *a2;
  v45 = *(a2 + 16);
  if (v45)
  {
    llvm::MetadataTracking::track();
  }

  v46 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v44);
  if (v45)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 944))(&v47, a1);
  v14 = v47;
  memset(v43, 0, sizeof(v43));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(v43, a1, a3, v47, 0, 0, 0);
  v15 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a3, v14, v43, a4, a5, 1);
  v17 = v16;
  v18 = *(a1 + 168);
  v19 = *(a1 + 200);
  v20 = *(a1 + 184);
  v21 = llvm::PointerType::get();
  v22 = *(a1 + 200);
  v23 = *v18;
  v47 = v18;
  v48 = v18;
  *&v49 = v19;
  *(&v49 + 1) = v20;
  v50 = v19;
  v51.i64[0] = v19;
  v51.i64[1] = v21;
  v52 = v22;
  v53 = v22;
  v24 = llvm::StructType::get();
  v25 = *(a1 + 184);
  v42 = *(a1 + 192);
  v26 = llvm::PointerType::get();
  v27 = *(a1 + 192);
  v28 = *v26;
  v47 = v26;
  v48 = v27;
  *&v49 = v27;
  *(&v49 + 1) = v27;
  v29 = llvm::StructType::get();
  v30 = *v24;
  v47 = v24;
  v48 = v42;
  v49 = v42;
  v50 = v29;
  v51 = vextq_s8(*(a1 + 184), *(a1 + 184), 8uLL);
  v31 = llvm::StructType::get();
  result = AGCLLVMBuilder::createAllocaInEntryBlock(a1, v31);
  v33 = result;
  if ((a6 & 1) == 0)
  {
    v34 = *(a1 + 1940);
    v47 = v15;
    v35 = *(a1 + 184);
    v48 = llvm::ConstantInt::get();
    v36 = *(a1 + 176);
    v37 = llvm::ConstantInt::get();
    if (v34)
    {
      v38 = 21;
    }

    else
    {
      v38 = 14;
    }

    *&v49 = v37;
    if (v34)
    {
      v39 = "agx.curve_test_legacy";
    }

    else
    {
      v39 = "agx.curve_test";
    }

    v40 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v39, v38, v31, &v47, 3uLL);
    result = llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v40, v33, 0);
  }

  *a7 = 3;
  *(a7 + 8) = v15;
  *(a7 + 16) = v17;
  *(a7 + 24) = v33;
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildBoundingBoxIntersectionTest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, unsigned int a5@<W5>, char a6@<W7>, uint64_t a7@<X8>)
{
  v54 = *MEMORY[0x277D85DE8];
  v44 = *a2;
  v45 = *(a2 + 16);
  if (v45)
  {
    llvm::MetadataTracking::track();
  }

  v46 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v44);
  if (v45)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 944))(&v47, a1);
  v14 = v47;
  memset(v43, 0, sizeof(v43));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(v43, a1, a3, v47, 0, 0, 0);
  v15 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a3, v14, v43, a4, a5, 1);
  v17 = v16;
  v18 = *(a1 + 168);
  v19 = *(a1 + 200);
  v20 = *(a1 + 184);
  v21 = llvm::PointerType::get();
  v22 = *(a1 + 200);
  v23 = *v18;
  v47 = v18;
  v48 = v18;
  *&v49 = v19;
  *(&v49 + 1) = v20;
  v50 = v19;
  v51.i64[0] = v19;
  v51.i64[1] = v21;
  v52 = v22;
  v53 = v22;
  v24 = llvm::StructType::get();
  v25 = *(a1 + 184);
  v42 = *(a1 + 192);
  v26 = llvm::PointerType::get();
  v27 = *(a1 + 192);
  v28 = *v26;
  v47 = v26;
  v48 = v27;
  *&v49 = v27;
  *(&v49 + 1) = v27;
  v29 = llvm::StructType::get();
  v30 = *v24;
  v47 = v24;
  v48 = v42;
  v49 = v42;
  v50 = v29;
  v51 = vextq_s8(*(a1 + 184), *(a1 + 184), 8uLL);
  v31 = llvm::StructType::get();
  result = AGCLLVMBuilder::createAllocaInEntryBlock(a1, v31);
  v33 = result;
  if ((a6 & 1) == 0)
  {
    v34 = *(a1 + 1940);
    v47 = v15;
    v35 = *(a1 + 184);
    v48 = llvm::ConstantInt::get();
    v36 = *(a1 + 176);
    v37 = llvm::ConstantInt::get();
    if (v34)
    {
      v38 = 28;
    }

    else
    {
      v38 = 21;
    }

    *&v49 = v37;
    if (v34)
    {
      v39 = "agx.bounding_box_test_legacy";
    }

    else
    {
      v39 = "agx.bounding_box_test";
    }

    v40 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v39, v38, v31, &v47, 3uLL);
    result = llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v40, v33, 0);
  }

  *a7 = 2;
  *(a7 + 8) = v15;
  *(a7 + 16) = v17;
  *(a7 + 24) = v33;
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildTriangleIntersectionTest@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, unsigned int a5@<W5>, uint64_t a6@<X8>, char a7)
{
  v59 = *MEMORY[0x277D85DE8];
  v51 = *a2;
  v52 = *(a2 + 16);
  if (v52)
  {
    llvm::MetadataTracking::track();
  }

  v53 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v51);
  if (v52)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 944))(&v54, a1);
  v13 = v54;
  memset(v50, 0, sizeof(v50));
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(v50, a1, a3, v54, 0, 0, 0);
  v14 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a3, v13, v50, a4, a5, 1);
  v16 = v15;
  v17 = *(a1 + 168);
  v18 = *(a1 + 200);
  v19 = *(a1 + 184);
  v20 = llvm::PointerType::get();
  v21 = *(a1 + 224);
  v22 = *(a1 + 184);
  v23 = *v17;
  v54 = v17;
  v55 = v18;
  *&v56 = v18;
  *(&v56 + 1) = v20;
  v57 = v21;
  v58.i64[0] = v22;
  v24 = llvm::StructType::get();
  v25 = llvm::ArrayType::get(v24, 2);
  v26 = *(a1 + 200);
  v27 = *(a1 + 184);
  v28 = *v25;
  v54 = v25;
  v55 = v26;
  *&v56 = v26;
  *(&v56 + 1) = v26;
  v57 = v26;
  v58.i64[0] = v27;
  v29 = llvm::StructType::get();
  v30 = *(a1 + 184);
  v49 = *(a1 + 192);
  v31 = llvm::PointerType::get();
  v32 = *(a1 + 192);
  v33 = *v31;
  v54 = v31;
  v55 = v32;
  *&v56 = v32;
  *(&v56 + 1) = v32;
  v34 = llvm::StructType::get();
  v35 = *v29;
  v54 = v29;
  v55 = v49;
  v56 = v49;
  v57 = v34;
  v58 = vextq_s8(*(a1 + 184), *(a1 + 184), 8uLL);
  v36 = llvm::StructType::get();
  result = AGCLLVMBuilder::createAllocaInEntryBlock(a1, v36);
  v38 = result;
  if ((a7 & 1) == 0)
  {
    v39 = *(a1 + 1940);
    v54 = v14;
    v40 = *(a1 + 184);
    v55 = llvm::ConstantInt::get();
    v41 = *(a1 + 184);
    *&v56 = llvm::ConstantInt::get();
    v42 = *(a1 + 176);
    *(&v56 + 1) = llvm::ConstantInt::get();
    v43 = *(a1 + 176);
    v44 = llvm::ConstantInt::get();
    if (v39)
    {
      v45 = 24;
    }

    else
    {
      v45 = 17;
    }

    v57 = v44;
    if (v39)
    {
      v46 = "agx.triangle_test_legacy";
    }

    else
    {
      v46 = "agx.triangle_test";
    }

    v47 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v46, v45, v36, &v54, 5uLL);
    result = llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v47, v38, 0);
  }

  *a6 = 1;
  *(a6 + 8) = v14;
  *(a6 + 16) = v16;
  *(a6 + 24) = v38;
  v48 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildIntersectionQueryAccessor(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, std::string::size_type a8)
{
  v45 = *MEMORY[0x277D85DE8];
  v41 = a5;
  v42 = a6;
  v38 = *a2;
  v39 = *(a2 + 16);
  if (v39)
  {
    llvm::MetadataTracking::track();
  }

  v40 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v38);
  if (v39)
  {
    llvm::MetadataTracking::untrack();
  }

  v15 = *(a1 + 184);
  v16 = llvm::PointerType::get();
  v17 = 4;
  if (a6 < 4)
  {
    v17 = a6;
  }

  v32.__r_.__value_.__r.__words[0] = a5 + v17;
  v32.__r_.__value_.__l.__size_ = a6 - v17;
  llvm::StringRef::str(&__str, &v32);
  v18 = std::string::find(&__str, 46, 0);
  if (v18 != -1)
  {
    std::string::basic_string(&v32, &__str, 0, v18, &v43);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v32;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ == 42 && !memcmp(__str.__r_.__value_.__l.__data_, "get_intersection_params_intersection_query", 0x2AuLL) && llvm::StringRef::find() != -1)
  {
    std::string::append(&__str, "_instancing");
  }

  std::string::basic_string[abi:nn200100]<0>(&v36, "_preCurves");
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0 || __str.__r_.__value_.__l.__size_ != 42)
  {
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0 && __str.__r_.__value_.__l.__size_ == 53 && !memcmp(__str.__r_.__value_.__l.__data_, "get_intersection_params_intersection_query_instancing", 0x35uLL))
    {
      v31 = *(a7 + 12);
      std::operator+<char>();
      if (v31 == 8)
      {
        goto LABEL_50;
      }

      goto LABEL_25;
    }

LABEL_24:
    std::operator+<char>();
    goto LABEL_25;
  }

  if (memcmp(__str.__r_.__value_.__l.__data_, "get_intersection_params_intersection_query", 0x2AuLL))
  {
    goto LABEL_24;
  }

  v19 = *(a7 + 12);
  std::operator+<char>();
  if (v19 == 7)
  {
LABEL_50:
    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v43, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
    }

    else
    {
      v43 = v36;
    }

    goto LABEL_26;
  }

LABEL_25:
  std::string::basic_string[abi:nn200100]<0>(&v43, &unk_20E75F419);
LABEL_26:
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v43;
  }

  else
  {
    v20 = v43.__r_.__value_.__r.__words[0];
  }

  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v43.__r_.__value_.__l.__size_;
  }

  v22 = std::string::append(&v32, v20, size);
  v23 = v22->__r_.__value_.__r.__words[2];
  *__p = *&v22->__r_.__value_.__l.__data_;
  v35 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (v35 >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  if (v35 >= 0)
  {
    v25 = SHIBYTE(v35);
  }

  else
  {
    v25 = __p[1];
  }

  v33 = 257;
  v43.__r_.__value_.__r.__words[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v16, &v32);
  v43.__r_.__value_.__l.__size_ = a8;
  v26 = *(a1 + 176);
  v43.__r_.__value_.__r.__words[2] = llvm::ConstantInt::get();
  v27 = *(a1 + 176);
  v44 = llvm::ConstantInt::get();
  v28 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v24, v25, a7, &v43, 4uLL);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildCommitCurveIntersectionQuery(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v20 = *a2;
  v21 = *(a2 + 16);
  if (v21)
  {
    llvm::MetadataTracking::track();
  }

  v22 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v20);
  if (v21)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 184);
  v7 = llvm::PointerType::get();
  v8 = *(a1 + 168);
  v19 = 257;
  v23[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v7, v18);
  v9 = *(a1 + 200);
  v23[1] = llvm::ConstantInt::get();
  v10 = *(a1 + 176);
  v23[2] = llvm::ConstantInt::get();
  v11 = *(a1 + 176);
  v23[3] = llvm::ConstantInt::get();
  v12 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.get_candidate_curve_distance_intersection_query", 51, v8, v23, 4uLL);
  v15 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v16, (a1 + 8));
  v17 = *(a1 + 104);
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCommitIntersectionQuery(a1, &v15, a3, v12);
  if (v16)
  {
    result = llvm::MetadataTracking::untrack();
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildDeallocateIntersectionQuery(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v13 = *a2;
  v14 = *(a2 + 16);
  if (v14)
  {
    llvm::MetadataTracking::track();
  }

  v15 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v13);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 184);
  v7 = llvm::PointerType::get();
  v8 = *(a1 + 144);
  v12 = 257;
  v16[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v7, v11);
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersection_query.deallocate", 33, v8, v16, 1uLL);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildCommitBoundingBoxIntersectionQuery(uint64_t a1, __int128 *a2, llvm::Type **a3, uint64_t a4)
{
  v9 = *a2;
  v10 = *(a2 + 2);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 6);
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCommitIntersectionQuery(a1, &v9, a3, a4);
  if (v10)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildCommitTriangleIntersectionQuery(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v20 = *a2;
  v21 = *(a2 + 16);
  if (v21)
  {
    llvm::MetadataTracking::track();
  }

  v22 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v20);
  if (v21)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 184);
  v7 = llvm::PointerType::get();
  v8 = *(a1 + 168);
  v19 = 257;
  v23[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v7, v18);
  v9 = *(a1 + 200);
  v23[1] = llvm::ConstantInt::get();
  v10 = *(a1 + 176);
  v23[2] = llvm::ConstantInt::get();
  v11 = *(a1 + 176);
  v23[3] = llvm::ConstantInt::get();
  v12 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.get_candidate_triangle_distance_intersection_query", 54, v8, v23, 4uLL);
  v15 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v16, (a1 + 8));
  v17 = *(a1 + 104);
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::buildCommitIntersectionQuery(a1, &v15, a3, v12);
  if (v16)
  {
    result = llvm::MetadataTracking::untrack();
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildAbortIntersectionQuery(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v13 = *a2;
  v14 = *(a2 + 16);
  if (v14)
  {
    llvm::MetadataTracking::track();
  }

  v15 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v13);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 184);
  v7 = llvm::PointerType::get();
  v8 = *(a1 + 144);
  v12 = 257;
  v16[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v7, v11);
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersection_query.abort", 28, v8, v16, 1uLL);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildNextIntersectionQuery(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Type **a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v47 = *MEMORY[0x277D85DE8];
  v37 = *a2;
  v38 = *(a2 + 16);
  if (v38)
  {
    llvm::MetadataTracking::track();
  }

  v39 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v37);
  if (v38)
  {
    llvm::MetadataTracking::untrack();
  }

  v15 = *(a1 + 184);
  v16 = llvm::PointerType::get();
  v17 = (*(*a1 + 952))(a1);
  v40[0] = "vrid";
  LOWORD(v41) = 259;
  llvm::Value::setName();
  v18 = *(a1 + 200);
  LOWORD(v41) = 257;
  *&v44 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v16, v40);
  v19 = *(a1 + 200);
  *(&v44 + 1) = llvm::ConstantInt::get();
  v20 = *(a1 + 176);
  *&v45 = llvm::ConstantInt::get();
  v21 = *(a1 + 176);
  *(&v45 + 1) = llvm::ConstantInt::get();
  v22 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.get_instance_levels_intersection_query", 42, v18, &v44, 4uLL);
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(&v44, a1, a5, v17, 0x100000000, v22, 1);
  if (a8)
  {
    v23 = (*(*a1 + 1456))(a1, a6);
    v24 = v23;
  }

  else
  {
    if (a6)
    {
      v25 = 6;
    }

    else
    {
      v25 = 5;
    }

    if ((a6 & 0x40) != 0)
    {
      LOBYTE(v23) = 7;
    }

    else
    {
      LOBYTE(v23) = v25;
    }

    if ((a6 & 0x40) != 0)
    {
      v24 = 2;
    }

    else
    {
      v24 = a6 & 1;
    }
  }

  v26 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a5, v17, &v44, v23, 0, 0);
  v27 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a5, v17, &v44, v24, 0, 0);
  v28 = *(a1 + 176);
  v36 = 257;
  v40[0] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v16, v35);
  v40[1] = v26;
  v40[2] = v27;
  v34 = 257;
  v40[3] = AGCLLVMBuilder::CreateLoad(a1, a4, v33);
  v41 = v17;
  v29 = *(a1 + 192);
  v42 = llvm::ConstantInt::get();
  v30 = *(a1 + 184);
  v43 = llvm::ConstantInt::get();
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersection_query.next", 27, v28, v40, 7uLL);
  v32 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildResetIntersectionQuery(uint64_t a1, uint64_t a2, uint64_t a3, llvm::Type **a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v26 = *a2;
  v27 = *(a2 + 16);
  if (v27)
  {
    llvm::MetadataTracking::track();
  }

  v28 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v26);
  if (v27)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 184);
  v9 = llvm::PointerType::get();
  v10 = *(a1 + 144);
  v11 = *a3;
  v25 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v11, v9, v24);
  v30 = *(a3 + 8);
  v31 = *(a3 + 24);
  v12 = *(a3 + 40);
  v13 = *(a1 + 200);
  v23 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v12, v13, v22);
  v14 = *(a3 + 64);
  v33 = *(a3 + 48);
  v34 = v14;
  v35 = *(a3 + 80);
  v15 = *(a3 + 128);
  v16 = *(a3 + 136);
  v36 = *(a3 + 96);
  v37 = v16;
  if (!v15)
  {
    v17 = *(a1 + 176);
    v15 = llvm::ConstantInt::get();
  }

  v38 = v15;
  v21 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a4, v20);
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersection_query.reset", 28, v10, &PointerCast, 0x10uLL);
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildAllocateIntersectionQuery(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v17 = *a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v17);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  (*(*a1 + 1344))(a1, 0, a6 ^ 1u, a4, a5);
  v11 = a1[23];
  v12 = llvm::PointerType::get();
  v13 = a1[25];
  v20[0] = llvm::ConstantInt::get();
  v14 = a1[25];
  v20[1] = llvm::ConstantInt::get();
  result = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersection_query.allocate", 31, v12, v20, 2uLL);
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildGetUnpackedSCSLayout@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  v24 = *a2;
  v25 = *(a2 + 16);
  if (v25)
  {
    llvm::MetadataTracking::track();
  }

  v26 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v24);
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 456);
  TypeByName = llvm::StructType::getTypeByName();
  if (!TypeByName)
  {
    v27[0] = *(a1 + 200);
    v27[1] = v27[0];
    v27[2] = v27[0];
    v27[3] = v27[0];
    v28 = v27[0];
    TypeByName = llvm::StructType::create();
  }

  v8 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.scs.get_unpacked_layout", 27, TypeByName, 0, 0);
  v23 = 0;
  v27[0] = "scs.traversal_depth";
  LOWORD(v28) = 259;
  *a3 = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v8, &v23, 1, v27);
  v22 = 1;
  v20 = "scs.max_instance_levels";
  v21 = 259;
  a3[1] = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v8, &v22, 1, &v20);
  v19 = 2;
  v17 = "scs.num_cliques";
  v18 = 259;
  a3[2] = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v8, &v19, 1, &v17);
  v16 = 3;
  v14 = "scs.per_ray_user_payload_size";
  v15 = 259;
  a3[3] = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v8, &v16, 1, &v14);
  v13 = 4;
  v11 = "scs.per_ray_driver_payload_size";
  v12 = 259;
  result = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v8, &v13, 1, &v11);
  a3[4] = result;
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildIntersectRayEarlyTerminationAllowedFlags(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = a4;
  v11 = *a2;
  v12 = *(a2 + 16);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v11);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = v10;
  v7 = v10;
  v8 = 8;
  v9 = 0;
  operator new();
}

uint64_t std::__function::__func<AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildIntersectRayEarlyTerminationAllowedFlags(AGCLLVMBuilder::InsertPoint,llvm::CallInst *,BOOL,AGCLLVMTargetLowerer::IntersectRayArguments const&)::{lambda(llvm::Value const*)#1},std::allocator<AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildIntersectRayEarlyTerminationAllowedFlags(AGCLLVMBuilder::InsertPoint,llvm::CallInst *,BOOL,AGCLLVMTargetLowerer::IntersectRayArguments const&)::{lambda(llvm::Value const*)#1}>,BOOL ()(llvm::Value const*)>::operator()(uint64_t a1, void **a2)
{
  v3 = *a2;
  llvm::SmallPtrSetImpl<void *>::insert(v24, *(a1 + 8), *a2);
  if (v24[16] != 1)
  {
    return 1;
  }

  v4 = v3[1];
  v5 = 1;
  if (v4)
  {
    while (1)
    {
      v6 = *(v4 + 24);
      v7 = *(v6 + 16);
      if (v6 && v7 == 92)
      {
        if (**(a1 + 16) == 1)
        {
          if (!**(v6 + 64) && (std::function<BOOL ()(llvm::Value const*)>::operator()(*(*(a1 + 24) + 24), v6) & 1) == 0)
          {
            return 0;
          }
        }

        else if (*(v6 + 72) != 1 || **(v6 + 64))
        {
          return 0;
        }
      }

      else if (v6 && v7 == 84)
      {
        v8 = *(v6 - 32);
        if (!v8 || *(v8 + 16) || *(v8 + 24) != *(v6 + 72))
        {
          return 0;
        }

        Name = llvm::Value::getName(*(v6 - 32));
        if (v10 < 0x20 || (*Name == 0x5F7465672E726961 ? (v11 = Name[1] == 0x746E695F65707974) : (v11 = 0), v11 ? (v12 = Name[2] == 0x6F69746365737265) : (v12 = 0), v12 ? (v13 = Name[3] == 0x746C757365725F6ELL) : (v13 = 0), !v13))
        {
          v14 = llvm::Value::getName(v8);
          if (v15 < 0x1F)
          {
            return 0;
          }

          v16 = *v14 == 0x656C65722E726961 && v14[1] == 0x65746E695F657361;
          v17 = v16 && v14[2] == 0x6E6F697463657372;
          if (!v17 || *(v14 + 23) != 0x746C757365725F6ELL)
          {
            return 0;
          }
        }
      }

      else
      {
        v19 = (((v7 - 75) >> 1) | ((v7 - 75) << 7));
        v20 = v19 > 5;
        v21 = (1 << v19) & 0x33;
        v22 = v20 || v21 == 0;
        if (v22 || !std::function<BOOL ()(llvm::Value const*)>::operator()(*(*(a1 + 24) + 24), v6))
        {
          return 0;
        }
      }

      v4 = *(v4 + 8);
      if (!v4)
      {
        return 1;
      }
    }
  }

  return v5;
}

__n128 std::__function::__func<AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildIntersectRayEarlyTerminationAllowedFlags(AGCLLVMBuilder::InsertPoint,llvm::CallInst *,BOOL,AGCLLVMTargetLowerer::IntersectRayArguments const&)::{lambda(llvm::Value const*)#1},std::allocator<AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildIntersectRayEarlyTerminationAllowedFlags(AGCLLVMBuilder::InsertPoint,llvm::CallInst *,BOOL,AGCLLVMTargetLowerer::IntersectRayArguments const&)::{lambda(llvm::Value const*)#1}>,BOOL ()(llvm::Value const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825BCE68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromConfigurationBuffer@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, llvm::Type **a3@<X2>, llvm::Type **a4@<X3>, uint64_t *a5@<X8>)
{
  v47 = *a2;
  v48 = *(a2 + 16);
  if (v48)
  {
    llvm::MetadataTracking::track();
  }

  v49 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v47);
  if (v48)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = *(a1 + 208);
  v11 = llvm::PointerType::get();
  v12 = *(a1 + 200);
  v13 = llvm::PointerType::get();
  v46 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a3, v45);
  v44 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), Load, v11, v43);
  v16 = *(a1 + 208);
  (*(**(a1 + 920) + 1032))();
  v17 = *(a1 + 200);
  v18 = llvm::ConstantInt::get();
  v45[0] = "scs.scs_layout.ptr";
  v46 = 259;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v16, PointerCast, v18, v45);
  v20 = *(a1 + 200);
  v21 = *(*GEP + 2);
  v22 = llvm::PointerType::get();
  v46 = 257;
  v23 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v22, v45);
  v24 = *(a1 + 200);
  v25 = llvm::ConstantInt::get();
  v46 = 257;
  v26 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v24, v23, v25, v45);
  *a5 = AGCLLVMBuilder::CreateLoad(a1, v24, v26, "global_stride");
  v27 = *(a1 + 200);
  v46 = 257;
  llvm::Type::isOpaquePointerTy(*a4);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v13, a4, 0, v45);
  a5[2] = AGCLLVMBuilder::CreateLoad(a1, v27, AlignedLoad, "shader_stride");
  v29 = *(a1 + 200);
  a5[1] = llvm::ConstantInt::get();
  v30 = *(a1 + 200);
  a5[3] = llvm::ConstantInt::get();
  v31 = *(a1 + 208);
  (*(**(a1 + 920) + 1056))();
  v32 = *(a1 + 200);
  v33 = llvm::ConstantInt::get();
  v46 = 257;
  v34 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v31, PointerCast, v33, v45);
  v44 = 257;
  v35 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v34, v13, v43);
  v36 = *(a1 + 200);
  v37 = llvm::ConstantInt::get();
  v46 = 257;
  v38 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v36, v35, v37, v45);
  v44 = 257;
  a5[4] = AGCLLVMBuilder::CreateLoad(a1, v38, v43);
  v39 = *(a1 + 200);
  v40 = llvm::ConstantInt::get();
  v46 = 257;
  v41 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v39, v35, v40, v45);
  v44 = 257;
  result = AGCLLVMBuilder::CreateLoad(a1, v41, v43);
  a5[5] = result;
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildReleaseIntersectPayload(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v6 = *(a2 + 16);
  if (v6)
  {
    llvm::MetadataTracking::track();
  }

  v7 = *(a2 + 24);
  result = AGCLLVMTargetLowerer::SetIP(a1, &v5);
  if (v6)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildReleaseIntersectionResult(uint64_t a1, uint64_t a2)
{
  v5 = *a2;
  v6 = *(a2 + 16);
  if (v6)
  {
    llvm::MetadataTracking::track();
  }

  v7 = *(a2 + 24);
  result = AGCLLVMTargetLowerer::SetIP(a1, &v5);
  if (v6)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildIntersectionResultAccessor(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned __int16 a9)
{
  v88 = *MEMORY[0x277D85DE8];
  v80 = *a2;
  v81 = *(a2 + 16);
  if (v81)
  {
    llvm::MetadataTracking::track();
  }

  v82 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v80);
  if (v81)
  {
    llvm::MetadataTracking::untrack();
  }

  v15 = a1[26];
  LOWORD(v78) = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 47, a3, v15, v77);
  v17 = a1[26];
  v18 = llvm::ConstantInt::get();
  LOWORD(v78) = 257;
  v19 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Cast, v18, v77);
  v20 = a1[24];
  LOWORD(v78) = 257;
  v21 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v19, v20, v77);
  LOWORD(v78) = 257;
  v22 = *Cast;
  v23 = llvm::ConstantInt::get();
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), Cast, v23, v77);
  v25 = a1[26];
  v26 = llvm::ConstantInt::get();
  v87 = 257;
  v27 = llvm::IRBuilderBase::CreateAnd((a1 + 1), LShr, v26, &v85);
  v28 = a1[25];
  LOWORD(v78) = 257;
  v29 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v27, v28, v77);
  LOWORD(v78) = 257;
  v30 = *Cast;
  v31 = llvm::ConstantInt::get();
  v32 = llvm::IRBuilderBase::CreateLShr((a1 + 1), Cast, v31, v77);
  v33 = a1[26];
  v34 = llvm::ConstantInt::get();
  LOWORD(v78) = 257;
  v35 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v32, v34, v77);
  v87 = 257;
  v36 = *v35;
  v37 = llvm::ConstantInt::get();
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 1), v35, v37, &v85);
  v39 = a1[25];
  v84 = 257;
  v77[0] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, Shl, v39, &__str);
  v87 = 257;
  v40 = *v32;
  v41 = llvm::ConstantInt::get();
  v42 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v32, v41, &v85);
  v43 = a1[26];
  v44 = llvm::ConstantInt::get();
  v87 = 257;
  v45 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v42, v44, &v85);
  v46 = a1[25];
  v87 = 257;
  v77[3] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v45, v46, &v85);
  v87 = 257;
  v47 = *v42;
  v48 = llvm::ConstantInt::get();
  v49 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v42, v48, &v85);
  v50 = a1[26];
  v51 = llvm::ConstantInt::get();
  v87 = 257;
  v52 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v49, v51, &v85);
  v53 = a1[25];
  v87 = 257;
  v78 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v52, v53, &v85);
  v87 = 257;
  v54 = *v49;
  v55 = llvm::ConstantInt::get();
  v56 = llvm::IRBuilderBase::CreateLShr((a1 + 1), v49, v55, &v85);
  v57 = a1[26];
  v58 = llvm::ConstantInt::get();
  v87 = 257;
  v59 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v56, v58, &v85);
  v60 = a1[25];
  v87 = 257;
  v79 = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, v59, v60, &v85);
  v87 = 257;
  v61 = *v56;
  v62 = llvm::ConstantInt::get();
  llvm::IRBuilderBase::CreateLShr((a1 + 1), v56, v62, &v85);
  v77[1] = 0;
  v77[2] = 0;
  v63 = (*(*a1 + 1456))(a1, a9);
  v64 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a8, v21, v77, v63, (a9 >> 5) & 1, 0);
  v65 = 4;
  if (a6 < 4)
  {
    v65 = a6;
  }

  v85.__r_.__value_.__r.__words[0] = v65 + a5;
  v85.__r_.__value_.__l.__size_ = a6 - v65;
  llvm::StringRef::str(&__str, &v85);
  v66 = std::string::find(&__str, 46, 0);
  if (v66 != -1)
  {
    std::string::basic_string(&v85, &__str, 0, v66, __p);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = v85;
  }

  v67 = __p;
  std::operator+<char>();
  if (v76 < 0)
  {
    v67 = __p[0];
  }

  if (v76 >= 0)
  {
    v68 = v76;
  }

  else
  {
    v68 = __p[1];
  }

  v85.__r_.__value_.__r.__words[0] = v64;
  v85.__r_.__value_.__l.__size_ = v29;
  (*(*a1 + 1456))(a1, a9);
  v69 = a1[25];
  v85.__r_.__value_.__r.__words[2] = llvm::ConstantInt::get();
  v86 = a4;
  v70 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v67, v68, a7, &v85, 4uLL);
  if (v76 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v71 = *MEMORY[0x277D85DE8];
  return v70;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildIntersectRayForDirectAccess(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v111 = *MEMORY[0x277D85DE8];
  v94 = *a2;
  v95 = *(a2 + 16);
  if (v95)
  {
    llvm::MetadataTracking::track();
  }

  v96 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v94);
  if (v95)
  {
    llvm::MetadataTracking::untrack();
  }

  v13 = (*(*a1 + 952))(a1);
  v99 = "vrid";
  LOWORD(v103) = 259;
  llvm::Value::setName();
  if (*(a3 + 112) == 1)
  {
    if (*(*(a3 + 128) + 16) == 16)
    {
      v14 = *(a3 + 128);
    }

    else
    {
      v14 = 0;
    }

    v15 = (v14 + 24);
    if (*(v14 + 32) >= 0x41u)
    {
      v15 = *v15;
    }

    v16 = *v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = (*(*a1 + 1344))(a1, v16, 0, a6, *(a3 + 140));
  v19 = v18;
  v92 = 0u;
  v93 = 0u;
  v91 = 0u;
  v20 = *(a3 + 140);
  v21 = a1[25];
  v22 = llvm::ConstantInt::get();
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(&v91, a1, a5, v13, v19 | 0x100000000, v22, 1);
  v23 = (*(*a1 + 1456))(a1, a6);
  v90[0] = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a5, v13, &v91, v23, (a6 >> 5) & 1, 0);
  v90[1] = v24;
  v87 = *(a1 + 7);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v88, (a1 + 1));
  v89 = *(a1 + 26);
  v25 = (*(*a1 + 1032))(a1, &v87, a3, a4, v13, v17, v16, v19, v90, a5, a6);
  if (v88)
  {
    llvm::MetadataTracking::untrack();
  }

  if (a7)
  {
    v26 = a1[25];
    v83 = a1[21];
    v27 = a1[23];
    v28 = llvm::PointerType::get();
    v29 = a1[25];
    v84 = v25;
    v86 = a3;
    v30 = a1[23];
    v31 = a1[28];
    v32 = a6;
    v33 = v13;
    v34 = a1[21];
    v35 = llvm::ArrayType::get(a1[34], 4);
    v36 = llvm::ArrayType::get(a1[34], 4);
    v37 = *v26;
    v99 = v26;
    v100 = v83;
    v101 = v26;
    v102 = v26;
    v103 = v28;
    *&v104 = v29;
    *(&v104 + 1) = v29;
    v105 = v30;
    v106 = v31;
    v107 = v30;
    v108 = v34;
    v109 = v35;
    v13 = v33;
    a6 = v32;
    v110 = v36;
    v38 = llvm::StructType::get();
    v99 = v90[0];
    (*(*a1 + 1456))(a1, v32);
    v39 = a1[25];
    v100 = llvm::ConstantInt::get();
    v40 = a1[24];
    v101 = llvm::ConstantInt::get();
    v102 = v13;
    v103 = v84;
    v104 = *(v86 + 144);
    AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersect.ray.result", 24, v38, &v99, 7uLL);
  }

  v41 = a1[23];
  v99 = v90[0];
  (*(*a1 + 1456))(a1, a6);
  v42 = a1[25];
  v100 = llvm::ConstantInt::get();
  v43 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersect.ray.get_core_id", 29, v41, &v99, 2uLL);
  v44 = a1[26];
  LOWORD(v103) = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, v13, v44, &v99);
  v46 = a1[23];
  v47 = llvm::ConstantInt::get();
  LOWORD(v103) = 257;
  v48 = llvm::IRBuilderBase::CreateAnd((a1 + 1), v43, v47, &v99);
  v49 = a1[26];
  v98 = 257;
  v50 = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, v48, v49, v97);
  LOWORD(v103) = 257;
  v51 = *v50;
  v52 = llvm::ConstantInt::get();
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 1), v50, v52, &v99);
  LOWORD(v103) = 257;
  v54 = llvm::IRBuilderBase::CreateOr((a1 + 1), Shl, Cast, &v99);
  v55 = v91;
  LOWORD(v103) = 257;
  v56 = *v91;
  v57 = llvm::ConstantInt::get();
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v55, v57, &v99);
  v59 = a1[26];
  v98 = 257;
  v60 = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, LShr, v59, v97);
  LOWORD(v103) = 257;
  v61 = *v60;
  v62 = llvm::ConstantInt::get();
  v63 = llvm::IRBuilderBase::CreateShl((a1 + 1), v60, v62, &v99);
  LOWORD(v103) = 257;
  v64 = llvm::IRBuilderBase::CreateOr((a1 + 1), v63, v54, &v99);
  v65 = a1[26];
  LOWORD(v103) = 257;
  v66 = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, *(&v92 + 1), v65, &v99);
  LOWORD(v103) = 257;
  v67 = *v66;
  v68 = llvm::ConstantInt::get();
  v69 = llvm::IRBuilderBase::CreateShl((a1 + 1), v66, v68, &v99);
  LOWORD(v103) = 257;
  v70 = llvm::IRBuilderBase::CreateOr((a1 + 1), v69, v64, &v99);
  if (v93)
  {
    v71 = a1[26];
    LOWORD(v103) = 257;
    v72 = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, v93, v71, &v99);
    LOWORD(v103) = 257;
    v73 = *v72;
    v74 = llvm::ConstantInt::get();
    v75 = llvm::IRBuilderBase::CreateShl((a1 + 1), v72, v74, &v99);
    LOWORD(v103) = 257;
    v70 = llvm::IRBuilderBase::CreateOr((a1 + 1), v75, v70, &v99);
  }

  if (*(&v93 + 1))
  {
    v76 = a1[26];
    LOWORD(v103) = 257;
    v77 = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, *(&v93 + 1), v76, &v99);
    LOWORD(v103) = 257;
    v78 = *v77;
    v79 = llvm::ConstantInt::get();
    v80 = llvm::IRBuilderBase::CreateShl((a1 + 1), v77, v79, &v99);
    LOWORD(v103) = 257;
    v70 = llvm::IRBuilderBase::CreateOr((a1 + 1), v80, v70, &v99);
  }

  v81 = *MEMORY[0x277D85DE8];
  return v70;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildIntersectRayWithResults@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v73 = *MEMORY[0x277D85DE8];
  v58 = *a2;
  v59 = *(a2 + 16);
  if (v59)
  {
    llvm::MetadataTracking::track();
  }

  v60 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v58);
  if (v59)
  {
    llvm::MetadataTracking::untrack();
  }

  v13 = (*(*a1 + 952))(a1);
  v61 = "vrid";
  LOWORD(v65) = 259;
  llvm::Value::setName();
  if (*(a3 + 112) == 1)
  {
    if (*(*(a3 + 128) + 16) == 16)
    {
      v14 = *(a3 + 128);
    }

    else
    {
      v14 = 0;
    }

    v15 = (v14 + 24);
    if (*(v14 + 32) >= 0x41u)
    {
      v15 = *v15;
    }

    v16 = *v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = (*(*a1 + 1344))(a1, v16, 0, a6, *(a3 + 140));
  v19 = v18;
  memset(v57, 0, sizeof(v57));
  v20 = *(a3 + 140);
  v21 = a1[25];
  v22 = llvm::ConstantInt::get();
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildPayloadStridesFromSCS(v57, a1, a5, v13, v19 | 0x100000000, v22, 1);
  v23 = (*(*a1 + 1456))(a1, a6);
  v56[0] = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildRayPointers(a1, a5, v13, v57, v23, (a6 >> 5) & 1, 0);
  v56[1] = v24;
  v53 = *(a1 + 7);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v54, (a1 + 1));
  v55 = *(a1 + 26);
  v48 = a6;
  v49 = a3;
  v25 = a4;
  v47 = v13;
  v45 = (*(*a1 + 1032))(a1, &v53, a3, v25, v13, v17, v16, v19, v56, a5, a6);
  if (v54)
  {
    llvm::MetadataTracking::untrack();
  }

  v26 = a1[25];
  v27 = a1[21];
  v28 = a1[23];
  v29 = llvm::PointerType::get();
  v30 = a1[25];
  v31 = a1[23];
  v32 = a1[28];
  v33 = a1[21];
  v34 = llvm::ArrayType::get(a1[34], 4);
  v35 = llvm::ArrayType::get(a1[34], 4);
  v36 = *v26;
  v61 = v26;
  v62 = v27;
  v63 = v26;
  v64 = v26;
  v65 = v29;
  *&v66 = v30;
  *(&v66 + 1) = v30;
  v67 = v31;
  v68 = v32;
  v69 = v31;
  v70 = v33;
  v71 = v34;
  v72 = v35;
  v37 = llvm::StructType::get();
  v61 = v56[0];
  (*(*a1 + 1456))(a1, v48);
  v38 = a1[25];
  v62 = llvm::ConstantInt::get();
  v39 = a1[24];
  v63 = llvm::ConstantInt::get();
  v64 = v47;
  v65 = v45;
  v66 = *(v49 + 144);
  v40 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersect.ray.result", 24, v37, &v61, 7uLL);
  a7[10] = 0;
  a7[11] = 0;
  a7[12] = 0;
  v50[0] = 0;
  LOWORD(v65) = 257;
  *a7 = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  v50[0] = 1;
  LOWORD(v65) = 257;
  a7[1] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  v50[0] = 2;
  LOWORD(v65) = 257;
  a7[2] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  v50[0] = 3;
  LOWORD(v65) = 257;
  a7[3] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  v50[0] = 4;
  LOWORD(v65) = 257;
  a7[4] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  v50[0] = 5;
  LOWORD(v65) = 257;
  a7[5] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  v50[0] = 6;
  LOWORD(v65) = 257;
  a7[6] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  v50[0] = 7;
  LOWORD(v65) = 257;
  a7[7] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  v50[0] = 8;
  LOWORD(v65) = 257;
  a7[8] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  v52 = 9;
  LOWORD(v65) = 257;
  Value = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, &v52, 1, &v61);
  v42 = a1[22];
  v51 = 257;
  a7[9] = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, Value, v42, v50);
  v50[0] = 10;
  LOWORD(v65) = 257;
  a7[10] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  v50[0] = 11;
  LOWORD(v65) = 257;
  a7[11] = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  v50[0] = 12;
  LOWORD(v65) = 257;
  result = llvm::IRBuilderBase::CreateExtractValue((a1 + 1), v40, v50, 1, &v61);
  a7[12] = result;
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildIntersectRay(uint64_t a1, uint64_t a2, __int128 *a3, llvm::Type **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int16 a11)
{
  v69 = *MEMORY[0x277D85DE8];
  v46 = *a2;
  v47 = *(a2 + 16);
  if (v47)
  {
    llvm::MetadataTracking::track();
  }

  v48 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v46);
  if (v47)
  {
    llvm::MetadataTracking::untrack();
  }

  LOWORD(v50) = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a4, v49);
  v49[0] = "bvh_state_words_heap_base";
  LOWORD(v50) = 259;
  llvm::Value::setName();
  *(a3 + 34);
  if (a3[7])
  {
    v17 = *(a3 + 15);
    if (v17 && *(v17 + 16) == 59)
    {
      v18 = 1 << *(v17 + 18);
    }

    llvm::IRBuilderBase::CreateMemCpy(a1 + 8, *(a9 + 8));
  }

  v19 = *(a1 + 176);
  v49[0] = *a9;
  v49[1] = Load;
  v49[2] = a5;
  v20 = *(a1 + 200);
  v49[3] = llvm::ConstantInt::get();
  v21 = *(a1 + 200);
  v50 = llvm::ConstantInt::get();
  v22 = *(a1 + 200);
  v51 = llvm::ConstantInt::get();
  (*(*a1 + 1456))(a1, a11);
  v23 = *(a1 + 200);
  v24 = llvm::ConstantInt::get();
  v25 = a3[1];
  v53 = *a3;
  v54 = v25;
  v26 = *(a3 + 6);
  v27 = *(a3 + 7);
  v52 = v24;
  v55 = v26;
  v28 = *(a1 + 184);
  v29 = llvm::PointerType::get();
  v45 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v27, v29, v44);
  v30 = a3[5];
  v57 = a3[4];
  v58 = v30;
  v59 = a3[6];
  v31 = *(a3 + 4);
  v32 = *(a1 + 200);
  v43 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v31, v32, v42);
  v33 = a3[11];
  v61 = a3[10];
  v62 = v33;
  v34 = *(a3 + 5);
  v63 = *(a3 + 24);
  v64 = v34;
  v65 = a3[15];
  v66 = *(a3 + 32);
  v35 = *(a1 + 192);
  v67 = llvm::ConstantInt::get();
  v36 = *(a1 + 1940);
  v37 = *(a1 + 176);
  v68 = llvm::ConstantInt::get();
  v38 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.intersect.ray", 17, v19, v49, 0x1FuLL);
  if (*(a3 + 112) == 1 && (*(a3 + 264) & 1) == 0)
  {
    v39 = *(a9 + 8);
    llvm::IRBuilderBase::CreateMemCpy(a1 + 8, *(a3 + 15));
  }

  v40 = *MEMORY[0x277D85DE8];
  return v38;
}

uint64_t *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSCSConfiguration@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, llvm::Type **a12, uint64_t a13, llvm::Type **a14, llvm::Type **a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v248 = *MEMORY[0x277D85DE8];
  v242 = *a2;
  v243 = *(a2 + 16);
  if (v243)
  {
    llvm::MetadataTracking::track();
  }

  v244 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v242);
  if (v243)
  {
    llvm::MetadataTracking::untrack();
  }

  v240 = 0u;
  v241 = 0u;
  v239 = 0u;
  v236 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v237, (a1 + 8));
  v238 = *(a1 + 104);
  (*(*a1 + 1080))(&v239, a1, &v236, a12, a13);
  if (v237)
  {
    llvm::MetadataTracking::untrack();
  }

  v226 = a6;
  v24 = *(a1 + 184);
  v25 = llvm::PointerType::get();
  v26 = *(a1 + 200);
  v231 = llvm::PointerType::get();
  v27 = *(a1 + 208);
  v225 = llvm::PointerType::get();
  v28 = *(a1 + 456);
  TypeByName = llvm::StructType::getTypeByName();
  v29 = *(a1 + 184);
  v30 = llvm::PointerType::get();
  v31 = *(a1 + 208);
  v222 = llvm::PointerType::get();
  v224 = a9;
  if ((a19 & 1) == 0)
  {
    v33 = *(a1 + 56);
    v32 = *(a1 + 64);
    v234[0] = "entry.continue";
    v235 = 259;
    llvm::BasicBlock::splitBasicBlock();
    v34 = *(a1 + 72);
    v234[0] = "scs.config";
    v235 = 259;
    v35 = *(v33 + 56);
    operator new();
  }

  v36 = v239;
  v235 = 257;
  v37 = *v239;
  v38 = llvm::ConstantInt::get();
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v36, v38, v234);
  v40 = v239;
  v41 = *(a1 + 200);
  v42 = llvm::ConstantInt::get();
  v235 = 257;
  v43 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v40, v42, v234);
  v44 = *(a1 + 144);
  v246[0] = LShr;
  v45 = a3[3];
  v235 = 257;
  v246[1] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v45, v25, v234);
  v246[2] = v43;
  v46 = a3[5];
  v233 = 257;
  v246[3] = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v46, v30, v232);
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "llvm.agx3.kick.scoped.ray.data.stride.driver.user.data", 54, v44, v246, 4uLL);
  v47 = a3[2];
  v235 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v47, v225, v234);
  v49 = *(a1 + 208);
  v50 = llvm::ConstantInt::get();
  v51 = *(a1 + 208);
  (*(**(a1 + 920) + 888))();
  v52 = *(a1 + 200);
  v53 = llvm::ConstantInt::get();
  v235 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v51, PointerCast, v53, v234);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v50, GEP, 0);
  v55 = *(a1 + 208);
  (*(**(a1 + 920) + 896))();
  v56 = *(a1 + 200);
  v57 = llvm::ConstantInt::get();
  v235 = 257;
  v58 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v55, PointerCast, v57, v234);
  v59 = *(a1 + 208);
  v235 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, a12, v234);
  v233 = 257;
  v61 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), Load, v222, v232);
  (*(**(a1 + 920) + 1032))();
  v62 = *(a1 + 200);
  v63 = llvm::ConstantInt::get();
  v247 = 257;
  v64 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v59, v61, v63, v246);
  v65 = *(a1 + 208);
  v235 = 257;
  llvm::Type::isOpaquePointerTy(*v64);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v65, v64, 0, v234);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), AlignedLoad, v58, 0);
  v235 = 257;
  v67 = AGCLLVMBuilder::CreateLoad(a1, a12, v234);
  v68 = *(a1 + 200);
  v245[0] = llvm::ConstantInt::get();
  v69 = *(a1 + 200);
  v245[1] = llvm::ConstantInt::get();
  v233 = 257;
  llvm::Type::isOpaquePointerTy(*v67);
  v70 = llvm::IRBuilderBase::CreateGEP(a1 + 8, TypeByName, v67, v245, 2, v232);
  v247 = 257;
  v71 = AGCLLVMBuilder::CreateLoad(a1, v70, v246);
  v72 = *(a1 + 208);
  v235 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v71, v72, v234);
  v74 = *(a1 + 208);
  (*(**(a1 + 920) + 952))();
  v75 = *(a1 + 200);
  v76 = llvm::ConstantInt::get();
  v233 = 257;
  v77 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v74, PointerCast, v76, v232);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Cast, v77, 0);
  if (a14)
  {
    v78 = *(a1 + 208);
    (*(**(a1 + 920) + 976))(*(a1 + 920));
    v79 = *(a1 + 200);
    v80 = llvm::ConstantInt::get();
    v235 = 257;
    v81 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v78, PointerCast, v80, v234);
    v233 = 257;
    v82 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v81, v231, v232);
    v235 = 257;
    v83 = AGCLLVMBuilder::CreateLoad(a1, a14, v234);
    v232[0] = 0;
    v234[0] = "user_data_start";
    v235 = 259;
    Value = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v83, v232, 1, v234);
    v232[0] = 1;
    v234[0] = "user_data_end";
    v235 = 259;
    v85 = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v83, v232, 1, v234);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Value, v82, 0);
    v86 = *(a1 + 200);
    v87 = llvm::ConstantInt::get();
    v235 = 257;
    v88 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v86, v82, v87, v234);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v85, v88, 0);
  }

  if (a15)
  {
    v89 = *(a1 + 208);
    (*(**(a1 + 920) + 984))(*(a1 + 920));
    v90 = *(a1 + 200);
    v91 = llvm::ConstantInt::get();
    v235 = 257;
    v92 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v89, PointerCast, v91, v234);
    v233 = 257;
    v93 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v92, v231, v232);
    v235 = 257;
    v94 = AGCLLVMBuilder::CreateLoad(a1, a15, v234);
    v232[0] = 0;
    v234[0] = "driver_data_start";
    v235 = 259;
    v95 = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v94, v232, 1, v234);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v95, v93, 0);
  }

  v96 = *(a1 + 208);
  (*(**(a1 + 920) + 960))(*(a1 + 920));
  v97 = *(a1 + 200);
  v98 = llvm::ConstantInt::get();
  v235 = 257;
  v99 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v96, PointerCast, v98, v234);
  v233 = 257;
  v100 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v99, v231, v232);
  v101 = v241;
  v102 = *(a1 + 200);
  v103 = llvm::ConstantInt::get();
  v235 = 257;
  v104 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v102, v100, v103, v234);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v101, v104, 0);
  v105 = *(&v241 + 1);
  v106 = *(a1 + 200);
  v107 = llvm::ConstantInt::get();
  v235 = 257;
  v108 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v106, v100, v107, v234);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v105, v108, 0);
  v109 = (*(*a1 + 952))(a1);
  v110 = *(a1 + 200);
  v234[0] = "vrid";
  v235 = 259;
  v111 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v109, v110, v234);
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, v111, PointerCast);
  v113 = *(&v239 + 1);
  v114 = *(a1 + 200);
  (*(**(a1 + 920) + 1072))();
  v115 = *(a1 + 200);
  v116 = llvm::ConstantInt::get();
  v235 = 257;
  v117 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v114, PerVridSetDataPtr, v116, v234);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v113, v117, 0);
  v118 = *(&v240 + 1);
  v119 = *(a1 + 200);
  (*(**(a1 + 920) + 1080))();
  v120 = *(a1 + 200);
  v121 = llvm::ConstantInt::get();
  v235 = 257;
  v122 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v119, PerVridSetDataPtr, v121, v234);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v118, v122, 0);
  v123 = v240;
  v124 = *(a1 + 200);
  (*(**(a1 + 920) + 1088))();
  v125 = *(a1 + 200);
  v126 = llvm::ConstantInt::get();
  v235 = 257;
  v127 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v124, PerVridSetDataPtr, v126, v234);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v123, v127, 0);
  v128 = *(a1 + 200);
  v129 = llvm::ConstantInt::get();
  v130 = *(a1 + 200);
  (*(**(a1 + 920) + 1096))();
  v131 = *(a1 + 200);
  v132 = llvm::ConstantInt::get();
  v235 = 257;
  v133 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v130, PerVridSetDataPtr, v132, v234);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v129, v133, 0);
  if (a16)
  {
    v134 = *(a1 + 200);
    (*(**(a1 + 920) + 1104))(*(a1 + 920));
    v135 = *(a1 + 200);
    v136 = llvm::ConstantInt::get();
    v235 = 257;
    v137 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v134, PerVridSetDataPtr, v136, v234);
    v235 = 257;
    v138 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v137, v225, v234);
    v139 = *(a1 + 208);
    v235 = 257;
    v140 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, a16, v139, v234);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v140, v138, 0);
  }

  if (a17)
  {
    v141 = *(a1 + 200);
    (*(**(a1 + 920) + 1120))(*(a1 + 920));
    v142 = *(a1 + 200);
    v143 = llvm::ConstantInt::get();
    v235 = 257;
    v144 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v141, PerVridSetDataPtr, v143, v234);
    v235 = 257;
    v145 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v144, v225, v234);
    v146 = *(a1 + 208);
    v235 = 257;
    v147 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, a17, v146, v234);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v147, v145, 0);
  }

  if (v226)
  {
    v148 = *(a1 + 200);
    (*(**(a1 + 920) + 1112))(*(a1 + 920));
    v149 = *(a1 + 200);
    v150 = llvm::ConstantInt::get();
    v235 = 257;
    v151 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v148, PerVridSetDataPtr, v150, v234);
    v233 = 257;
    v152 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), v151, v225, v232);
    v235 = 257;
    v153 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v226 + 24), v226, 0, 0, v234);
    v154 = *(a1 + 208);
    v233 = 257;
    v155 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v153, v154, v232);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v155, v152, 0);
  }

  v156 = a4[2];
  v235 = 257;
  v157 = AGCLLVMBuilder::CreateLoad(a1, v156, v234);
  v158 = *(a1 + 208);
  v233 = 257;
  v159 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v157, v158, v232);
  v160 = *(a1 + 208);
  (*(**(a1 + 920) + 904))();
  v161 = *(a1 + 200);
  v162 = llvm::ConstantInt::get();
  v247 = 257;
  v163 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v160, PointerCast, v162, v246);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v159, v163, 0);
  v164 = a4[5];
  v235 = 257;
  v165 = AGCLLVMBuilder::CreateLoad(a1, v164, v234);
  v166 = *(a1 + 208);
  v233 = 257;
  v167 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v165, v166, v232);
  v168 = *(a1 + 208);
  (*(**(a1 + 920) + 912))();
  v169 = *(a1 + 200);
  v170 = llvm::ConstantInt::get();
  v247 = 257;
  v171 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v168, PointerCast, v170, v246);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v167, v171, 0);
  v172 = a4[8];
  v235 = 257;
  v173 = AGCLLVMBuilder::CreateLoad(a1, v172, v234);
  v174 = *(a1 + 208);
  v233 = 257;
  v175 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v173, v174, v232);
  v176 = *(a1 + 208);
  (*(**(a1 + 920) + 920))();
  v177 = *(a1 + 200);
  v178 = llvm::ConstantInt::get();
  v247 = 257;
  v179 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v176, PointerCast, v178, v246);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v175, v179, 0);
  v180 = *(a5 + 16);
  v235 = 257;
  v181 = AGCLLVMBuilder::CreateLoad(a1, v180, v234);
  v182 = *(a1 + 208);
  v233 = 257;
  v183 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v181, v182, v232);
  v184 = *(a1 + 208);
  (*(**(a1 + 920) + 928))();
  v185 = *(a1 + 200);
  v186 = llvm::ConstantInt::get();
  v247 = 257;
  v187 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v184, PointerCast, v186, v246);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v183, v187, 0);
  v188 = *(a7 + 16);
  v235 = 257;
  v189 = AGCLLVMBuilder::CreateLoad(a1, v188, v234);
  v190 = *(a1 + 208);
  v233 = 257;
  v191 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v189, v190, v232);
  v192 = *(a1 + 208);
  (*(**(a1 + 920) + 936))();
  v193 = *(a1 + 200);
  v194 = llvm::ConstantInt::get();
  v247 = 257;
  v195 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v192, PointerCast, v194, v246);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v191, v195, 0);
  v196 = *(a8 + 16);
  v235 = 257;
  v197 = AGCLLVMBuilder::CreateLoad(a1, v196, v234);
  v198 = *(a1 + 208);
  v233 = 257;
  v199 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v197, v198, v232);
  v200 = *(a1 + 208);
  (*(**(a1 + 920) + 944))();
  v201 = *(a1 + 200);
  v202 = llvm::ConstantInt::get();
  v247 = 257;
  v203 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v200, PointerCast, v202, v246);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v199, v203, 0);
  v204 = *(a10 + 16);
  v235 = 257;
  v205 = AGCLLVMBuilder::CreateLoad(a1, v204, v234);
  v206 = *(a1 + 208);
  v233 = 257;
  v207 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v205, v206, v232);
  v208 = *(a1 + 208);
  (*(**(a1 + 920) + 1000))();
  v209 = *(a1 + 200);
  v210 = llvm::ConstantInt::get();
  v247 = 257;
  v211 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v208, PointerCast, v210, v246);
  llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v207, v211, 0);
  if (*(a1 + 1946) == 1)
  {
    v212 = *(a11 + 16);
    v235 = 257;
    v213 = AGCLLVMBuilder::CreateLoad(a1, v212, v234);
    v214 = *(a1 + 208);
    v233 = 257;
    v215 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v213, v214, v232);
    v216 = *(a1 + 208);
    (*(**(a1 + 920) + 1008))();
    v217 = *(a1 + 200);
    v218 = llvm::ConstantInt::get();
    v247 = 257;
    v219 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v216, PointerCast, v218, v246);
    llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v215, v219, 0);
  }

  *v224 = *(a1 + 56);
  result = llvm::IRBuilderBase::getCurrentDebugLocation((v224 + 16), (a1 + 8));
  *(v224 + 24) = *(a1 + 104);
  v221 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSCSGOTPointer(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v21 = *a2;
  v22 = *(a2 + 16);
  if (v22)
  {
    llvm::MetadataTracking::track();
  }

  v23 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v21);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 208);
  v7 = llvm::PointerType::get();
  v20 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v7, v19);
  v9 = (*(*a1 + 952))(a1);
  v10 = *(a1 + 200);
  v19[0] = "vrid";
  v20 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v9, v10, v19);
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, Cast, PointerCast);
  (*(**(a1 + 920) + 1112))();
  v13 = *(a1 + 200);
  v14 = llvm::ConstantInt::get();
  v20 = 257;
  GEP = AGCLLVMBuilder::CreateGEP(a1, PerVridSetDataPtr, v14, v19);
  v20 = 257;
  v16 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v7, v19);
  v17 = *(a1 + 208);
  v20 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  return llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v17, v16, 0, v19);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSCSPerEncoderIndirectionTablePointer(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 208);
  v7 = llvm::PointerType::get();
  v17 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v7, v16);
  v9 = *(a1 + 208);
  (*(**(a1 + 920) + 1000))();
  v10 = *(a1 + 200);
  v11 = llvm::ConstantInt::get();
  v17 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v9, PointerCast, v11, v16);
  v17 = 257;
  v13 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v7, v16);
  v14 = *(a1 + 208);
  v17 = 257;
  llvm::Type::isOpaquePointerTy(*v13);
  return llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v14, v13, 0, v16);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSCSDispatchPrivateBufferPointer(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v21 = *a2;
  v22 = *(a2 + 16);
  if (v22)
  {
    llvm::MetadataTracking::track();
  }

  v23 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v21);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 208);
  v7 = llvm::PointerType::get();
  v20 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v7, v19);
  v9 = (*(*a1 + 952))(a1);
  v10 = *(a1 + 200);
  v19[0] = "vrid";
  v20 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v9, v10, v19);
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, Cast, PointerCast);
  (*(**(a1 + 920) + 1120))();
  v13 = *(a1 + 200);
  v14 = llvm::ConstantInt::get();
  v20 = 257;
  GEP = AGCLLVMBuilder::CreateGEP(a1, PerVridSetDataPtr, v14, v19);
  v20 = 257;
  v16 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v7, v19);
  v17 = *(a1 + 208);
  v20 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  return llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v17, v16, 0, v19);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSCSGlobalBindingTablePointer(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v21 = *a2;
  v22 = *(a2 + 16);
  if (v22)
  {
    llvm::MetadataTracking::track();
  }

  v23 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v21);
  if (v22)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 208);
  v7 = llvm::PointerType::get();
  v20 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a3, v7, v19);
  v9 = (*(*a1 + 952))(a1);
  v10 = *(a1 + 200);
  v19[0] = "vrid";
  v20 = 259;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v9, v10, v19);
  PerVridSetDataPtr = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getPerVridSetDataPtr(a1, Cast, PointerCast);
  (*(**(a1 + 920) + 1104))();
  v13 = *(a1 + 200);
  v14 = llvm::ConstantInt::get();
  v20 = 257;
  GEP = AGCLLVMBuilder::CreateGEP(a1, PerVridSetDataPtr, v14, v19);
  v20 = 257;
  v16 = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), GEP, v7, v19);
  v17 = *(a1 + 208);
  v20 = 257;
  llvm::Type::isOpaquePointerTy(*v16);
  return llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v17, v16, 0, v19);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::getRayTraversalDepth(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0x1F)
  {
    v2 = 31;
  }

  else
  {
    v2 = a2;
  }

  v3 = 114 * v2;
  if (v3 >= 0x388)
  {
    v3 = 904;
  }

  return (v3 + 119) & 0x7F8;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::readRayPointerT@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 456);
  TypeByName = llvm::StructType::getTypeByName();
  if (!TypeByName)
  {
    v12[0] = *(a1 + 192);
    v12[1] = v12[0];
    TypeByName = llvm::StructType::create();
  }

  v6 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "agx.read_ray_pointer", 20, TypeByName, 0, 0);
  v11 = 0;
  v13 = 257;
  *a2 = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v6, &v11, 1, v12);
  v10 = 1;
  v9[16] = 257;
  result = llvm::IRBuilderBase::CreateExtractValue(a1 + 8, v6, &v10, 1, v9);
  a2[2] = 0;
  a2[3] = 0;
  a2[1] = result;
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::readRayPointerSR(uint64_t a1)
{
  v2 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, "llvm.agx3.ray.pointer", 21, *(a1 + 192), 0, 0);
  v3 = *(a1 + 200);
  v6 = 257;
  return llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v2, v3, v5);
}

llvm::Type **AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildIntersectionShaderArgument(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5, unsigned int a6)
{
  v45 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 184);
  v13 = 1;
  v14 = llvm::PointerType::get();
  v15 = *(a1 + 184);
  v33 = llvm::PointerType::get();
  v16 = 0;
  switch(a3)
  {
    case 0:
    case 1:
    case 9:
    case 10:
      v16 = *(a1 + 272);
      break;
    case 2:
    case 3:
    case 13:
    case 14:
    case 21:
    case 23:
    case 24:
      v16 = *(a1 + 168);
      break;
    case 4:
    case 5:
    case 6:
    case 16:
    case 17:
    case 22:
    case 27:
      goto LABEL_8;
    case 7:
    case 8:
      if ((a5 & 0x40) != 0)
      {
        v13 = a6;
      }

      else
      {
        v13 = 1;
      }

LABEL_8:
      v16 = *(a1 + 200);
      break;
    case 11:
      v16 = *(a1 + 224);
      break;
    case 12:
    case 15:
      v16 = *(a1 + 184);
      break;
    case 19:
    case 20:
      v16 = *(a1 + 272);
      v13 = 4;
      break;
    case 25:
    case 26:
      v16 = v14;
      break;
    default:
      break;
  }

  v17 = *(*(*(a1 + 56) + 56) + 80);
  if (v17)
  {
    v18 = (v17 - 24);
  }

  else
  {
    v18 = 0;
  }

  FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v18);
  if (FirstInsertionPt)
  {
    v20 = (FirstInsertionPt - 24);
  }

  else
  {
    v20 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), v20);
  v21 = *(a1 + 200);
  v22 = llvm::ConstantInt::get();
  LOWORD(PointerCast) = 257;
  Alloca = llvm::IRBuilderBase::CreateAlloca((a1 + 8), v16, v22, v43);
  v40 = *a2;
  v41 = *(a2 + 16);
  if (v41)
  {
    llvm::MetadataTracking::track();
  }

  v42 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v40);
  if (v41)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a1 + 1940))
  {
    v24 = "agx.get_intersection_shader_argument_legacy";
  }

  else
  {
    v24 = "agx.get_intersection_shader_argument";
  }

  std::string::basic_string[abi:nn200100]<0>(v36, v24);
  v25 = __p;
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getTestResultsFunctionName(__p, v36, a4);
  if (v39 < 0)
  {
    v25 = __p[0];
  }

  if (v39 >= 0)
  {
    v26 = v39;
  }

  else
  {
    v26 = __p[1];
  }

  v27 = *(a1 + 144);
  v28 = *(a4 + 8);
  v43[0] = *(a4 + 24);
  v43[1] = v28;
  v29 = *(a1 + 200);
  v43[2] = llvm::ConstantInt::get();
  v30 = *(a1 + 192);
  v43[3] = llvm::ConstantInt::get();
  v35 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), Alloca, v33, v34);
  AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::callFunction(a1, v25, v26, v27, v43, 5uLL);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }

  if (v13 <= 1)
  {
    LOWORD(PointerCast) = 257;
    Alloca = AGCLLVMBuilder::CreateLoad(a1, Alloca, v43);
  }

  v31 = *MEMORY[0x277D85DE8];
  return Alloca;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::createGPUVAMasks(void *a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildConvertHFP8_Vector(uint64_t a1, uint64_t a2, llvm::Value *a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v119 = *MEMORY[0x277D85DE8];
  v104 = *a2;
  v105 = *(a2 + 16);
  if (v105)
  {
    llvm::MetadataTracking::track();
  }

  v106 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v104);
  if (v105)
  {
    llvm::MetadataTracking::untrack();
  }

  v11 = *(*a3 + 32);
  std::string::basic_string[abi:nn200100]<0>(&v107, "f32");
  v108 = *(a1 + 168);
  std::string::basic_string[abi:nn200100]<0>(v109, "f16");
  v110 = *(a1 + 152);
  std::string::basic_string[abi:nn200100]<0>(v111, "bf16");
  v112 = *(a1 + 160);
  std::string::basic_string[abi:nn200100]<0>(v113, "f8e5m2");
  v114 = *(a1 + 184);
  std::string::basic_string[abi:nn200100]<0>(v115, "f8e4m3");
  v116 = *(a1 + 184);
  std::string::basic_string[abi:nn200100]<0>(v117, "f8e4m3fn");
  v12 = 0;
  v118 = *(a1 + 184);
  v103[0] = 0;
  v103[1] = 0;
  v102 = v103;
  do
  {
    std::__tree<std::__value_type<std::string,llvm::Type *>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::Type *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::Type *>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,llvm::Type *> const&>(&v102, v103, &v107.__r_.__value_.__r.__words[v12]);
    v12 += 4;
  }

  while (v12 != 24);
  for (i = 0; i != -192; i -= 32)
  {
    if (v117[i + 23] < 0)
    {
      operator delete(*&v117[i]);
    }
  }

  if (*(a4 + 23) < 0)
  {
    if (**a4 != 118)
    {
      std::string::__init_copy_ctor_external(&v107, *a4, *(a4 + 8));
      goto LABEL_20;
    }
  }

  else if (*a4 != 118)
  {
    v107 = *a4;
    goto LABEL_20;
  }

  if (v11 <= 0xA)
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  std::string::basic_string(&v107, a4, v14, 0xFFFFFFFFFFFFFFFFLL, v99);
LABEL_20:
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v107;
  if (*(a5 + 23) < 0)
  {
    if (**a5 != 118)
    {
      std::string::__init_copy_ctor_external(&v107, *a5, *(a5 + 8));
      goto LABEL_31;
    }
  }

  else if (*a5 != 118)
  {
    v107 = *a5;
    goto LABEL_31;
  }

  if (v11 <= 0xA)
  {
    v15 = 2;
  }

  else
  {
    v15 = 3;
  }

  std::string::basic_string(&v107, a5, v15, 0xFFFFFFFFFFFFFFFFLL, v99);
LABEL_31:
  if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  *a5 = v107;
  v16 = *std::map<std::string,unsigned short>::at(&v102, a5);
  v17 = llvm::FixedVectorType::get();
  memset(__p, 0, sizeof(__p));
  if (v11 != 1)
  {
    v18 = 0;
    do
    {
      v19 = *(a1 + 200);
      v107.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
      std::vector<llvm::User *>::push_back[abi:nn200100](__p, &v107);
      ++v18;
    }

    while (v11 - 1 != v18);
  }

  v20 = v11 >> 1;
  if (a6)
  {
    v21 = *(a1 + 200);
    v107.__r_.__value_.__r.__words[0] = llvm::ConstantInt::get();
    std::vector<llvm::User *>::push_back[abi:nn200100](__p, &v107);
  }

  v80 = __p[0];
  v22 = llvm::ConstantVector::get();
  v81 = v11;
  if (a6)
  {
    v78 = v22;
    v79 = v17;
    v23 = *(a1 + 192);
    llvm::FixedVectorType::get();
    v24 = llvm::UndefValue::get();
    if (v11 >= 2)
    {
      v25 = 0;
      v26 = 1;
      do
      {
        v27 = *std::map<std::string,unsigned short>::at(&v102, a4);
        llvm::FixedVectorType::get();
        v28 = llvm::UndefValue::get();
        v109[0] = 257;
        v29 = *(a1 + 200);
        v30 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), a3, v30, &v107);
        v100 = 257;
        v32 = *(a1 + 200);
        v33 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v28, Element, v33, v99);
        v109[0] = 257;
        v35 = *(a1 + 200);
        v36 = llvm::ConstantInt::get();
        v37 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), a3, v36, &v107);
        v100 = 257;
        v38 = *(a1 + 200);
        v39 = llvm::ConstantInt::get();
        v40 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v37, v39, v99);
        v96 = *(a1 + 56);
        llvm::IRBuilderBase::getCurrentDebugLocation(&v97, (a1 + 8));
        v98 = *(a1 + 104);
        if (*(a4 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v95, *a4, *(a4 + 8));
        }

        else
        {
          v95 = *a4;
        }

        if (*(a5 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v94, *a5, *(a5 + 8));
        }

        else
        {
          v94 = *a5;
        }

        v41 = (*(*a1 + 768))(a1, &v96, v40, &v95, &v94, 1, 1);
        if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v94.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v95.__r_.__value_.__l.__data_);
        }

        if (v97)
        {
          llvm::MetadataTracking::untrack();
        }

        v109[0] = 257;
        v42 = *(a1 + 200);
        v43 = llvm::ConstantInt::get();
        v24 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v24, v41, v43, &v107);
        ++v25;
        v26 += 2;
      }

      while (v20 != v25);
    }

    if ((v81 & 1) == 0)
    {
      v109[0] = 257;
      Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v24, v79, &v107);
      v45 = v80;
      goto LABEL_89;
    }

    v67 = *std::map<std::string,unsigned short>::at(&v102, a5);
    v68 = llvm::FixedVectorType::get();
    v109[0] = 257;
    v69 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v24, v68, &v107);
    v109[0] = 257;
    Cast = llvm::IRBuilderBase::CreateShuffleVector((a1 + 8), v69, v69, v78, &v107);
    goto LABEL_76;
  }

  ShuffleVector = a3;
  if (v11)
  {
    v109[0] = 257;
    ShuffleVector = llvm::IRBuilderBase::CreateShuffleVector((a1 + 8), a3, a3, v22, &v107);
  }

  v47 = *(a1 + 192);
  v48 = llvm::FixedVectorType::get();
  v109[0] = 257;
  v82 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, ShuffleVector, v48, &v107);
  Cast = llvm::UndefValue::get();
  if (v11 >= 2)
  {
    v49 = 0;
    v50 = 1;
    v51 = v20;
    do
    {
      v109[0] = 257;
      v52 = *(a1 + 200);
      v53 = llvm::ConstantInt::get();
      v54 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v82, v53, &v107);
      v91 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v92, (a1 + 8));
      v93 = *(a1 + 104);
      if (*(a4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v90, *a4, *(a4 + 8));
      }

      else
      {
        v90 = *a4;
      }

      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v89, *a5, *(a5 + 8));
      }

      else
      {
        v89 = *a5;
      }

      v55 = (*(*a1 + 768))(a1, &v91, v54, &v90, &v89, 0, 1);
      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v90.__r_.__value_.__l.__data_);
      }

      if (v92)
      {
        llvm::MetadataTracking::untrack();
      }

      v109[0] = 257;
      v56 = *(a1 + 200);
      v57 = llvm::ConstantInt::get();
      v58 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v55, v57, &v107);
      v100 = 257;
      v59 = *(a1 + 200);
      v60 = llvm::ConstantInt::get();
      v61 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), Cast, v58, v60, v99);
      v109[0] = 257;
      v62 = *(a1 + 200);
      v63 = llvm::ConstantInt::get();
      v64 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v55, v63, &v107);
      v100 = 257;
      v65 = *(a1 + 200);
      v66 = llvm::ConstantInt::get();
      Cast = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v61, v64, v66, v99);
      ++v49;
      v50 += 2;
    }

    while (v51 != v49);
  }

  v45 = v80;
  if (v81)
  {
LABEL_76:
    v109[0] = 257;
    v70 = *(a1 + 200);
    v71 = llvm::ConstantInt::get();
    v72 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), a3, v71, &v107);
    v86 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v87, (a1 + 8));
    v88 = *(a1 + 104);
    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v85, *a4, *(a4 + 8));
    }

    else
    {
      v85 = *a4;
    }

    if (*(a5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v84, *a5, *(a5 + 8));
    }

    else
    {
      v84 = *a5;
    }

    v73 = (*(*a1 + 768))(a1, &v86, v72, &v85, &v84, a6, 0);
    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v85.__r_.__value_.__l.__data_);
    }

    if (v87)
    {
      llvm::MetadataTracking::untrack();
    }

    v109[0] = 257;
    v74 = *(a1 + 200);
    v75 = llvm::ConstantInt::get();
    Cast = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), Cast, v73, v75, &v107);
    v45 = __p[0];
  }

LABEL_89:
  if (v45)
  {
    operator delete(v45);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(v103[0]);
  v76 = *MEMORY[0x277D85DE8];
  return Cast;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildConvertHFP8_F2F(void *a1, uint64_t a2, llvm::Value *Cast, uint64_t *a4, unsigned __int16 *a5, int a6, int a7)
{
  v98 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(&v90, "f8e4m3");
  LOWORD(v93) = 0;
  std::string::basic_string[abi:nn200100]<0>(v94, "f8e4m3fn");
  LOWORD(v95) = 1;
  std::string::basic_string[abi:nn200100]<0>(v96, "f8e5m2");
  v13 = 0;
  LOWORD(v97) = 2;
  v86[0] = 0;
  v86[1] = 0;
  v85 = v86;
  do
  {
    std::__tree<std::__value_type<std::string,unsigned short>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned short>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned short>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,unsigned short> const&>(&v85, v86, (&v90 + v13));
    v13 += 32;
  }

  while (v13 != 96);
  for (i = 0; i != -96; i -= 32)
  {
    if (v96[i + 23] < 0)
    {
      operator delete(*&v96[i]);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&v90, "f32");
  v15 = (a1 + 21);
  v93 = a1[21];
  std::string::basic_string[abi:nn200100]<0>(v94, "f16");
  v95 = a1[19];
  std::string::basic_string[abi:nn200100]<0>(v96, "bf16");
  v16 = 0;
  v97 = a1[20];
  v84[0] = 0;
  v84[1] = 0;
  v83 = v84;
  do
  {
    std::__tree<std::__value_type<std::string,llvm::Type *>,std::__map_value_compare<std::string,std::__value_type<std::string,llvm::Type *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,llvm::Type *>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,llvm::Type *> const&>(&v83, v84, (&v90 + v16));
    v16 += 32;
  }

  while (v16 != 96);
  for (j = 0; j != -96; j -= 32)
  {
    if (v96[j + 23] < 0)
    {
      operator delete(*&v96[j]);
    }
  }

  v80 = *a2;
  v81 = *(a2 + 16);
  if (v81)
  {
    llvm::MetadataTracking::track();
  }

  v82 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v80);
  if (v81)
  {
    llvm::MetadataTracking::untrack();
  }

  v18 = a1[24];
  v19 = llvm::ConstantInt::get();
  v20 = a1[24];
  v21 = llvm::ConstantInt::get();
  v94[0] = 257;
  v23 = llvm::IRBuilderBase::CreateOr((a1 + 1), v21, v19, &v90);
  if (!a6)
  {
    v38 = *std::map<std::string,unsigned short>::at(&v85, a4);
    v39 = a1[24];
    v40 = llvm::ConstantInt::get();
    v94[0] = 257;
    v41 = llvm::IRBuilderBase::CreateOr((a1 + 1), v40, v23, &v90);
    v42 = *(a5 + 23);
    if (v42 < 0)
    {
      if (*(a5 + 1) != 3)
      {
        goto LABEL_38;
      }

      v43 = *a5;
    }

    else
    {
      v43 = a5;
      if (v42 != 3)
      {
        goto LABEL_38;
      }
    }

    v46 = *v43;
    v47 = *(v43 + 2);
    if (v46 == 12646 && v47 == 54)
    {
LABEL_39:
      v49 = *v15;
      if ((a7 & 1) == 0)
      {
        v50 = a1[24];
        v94[0] = 257;
        Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 39, Cast, v50, &v90);
      }

      v51 = &v79;
      std::string::basic_string[abi:nn200100]<0>(&v79, "llvm.agx3.unpack.hfp8.");
      if (v49 == a1[21])
      {
        v52 = "f32";
      }

      else
      {
        v52 = "bf16";
      }

      std::string::append(&v79, v52);
      llvm::FixedVectorType::get();
      __src = a1[24];
      v88 = __src;
      v90 = &v92;
      v91 = 0x200000000;
      llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v90, &__src, &v89);
      if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0 || (v51 = v79.__r_.__value_.__r.__words[0]) != 0)
      {
        strlen(v51);
      }

      llvm::FunctionType::get();
      v53 = a1[54];
      llvm::Module::getOrInsertFunction();
      v55 = v54;
      if (v90 != &v92)
      {
        free(v90);
      }

      __src = v41;
      v88 = Cast;
      v94[0] = 257;
      Element = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v55 + 24), v55, &__src, 2, &v90);
      if (a7)
      {
        v57 = *(a5 + 23);
        if (v57 < 0)
        {
          if (*(a5 + 1) != 3)
          {
            goto LABEL_88;
          }

          a5 = *a5;
        }

        else if (v57 != 3)
        {
          goto LABEL_88;
        }

        if (*a5 != 12646 || *(a5 + 2) != 54)
        {
          goto LABEL_88;
        }

        v73 = a1[19];
        v74 = llvm::FixedVectorType::get();
      }

      else
      {
        v94[0] = 257;
        v58 = a1[25];
        v59 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), Element, v59, &v90);
        v60 = *(a5 + 23);
        if (v60 < 0)
        {
          if (*(a5 + 1) != 3)
          {
            goto LABEL_88;
          }

          a5 = *a5;
        }

        else if (v60 != 3)
        {
          goto LABEL_88;
        }

        if (*a5 != 12646 || *(a5 + 2) != 54)
        {
          goto LABEL_88;
        }

        v74 = a1[19];
      }

      v94[0] = 257;
      FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((a1 + 1), Element, v74, &v90);
      goto LABEL_87;
    }

LABEL_38:
    v15 = std::map<std::string,unsigned short>::at(&v83, a5);
    goto LABEL_39;
  }

  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    Value = AGCEnv::getValue("AGC_HFP8_ENABLE_SATURATE", v22);
    if (Value)
    {
      if (*Value != 48)
      {
        atoi(Value);
      }
    }
  }

  v25 = a1[24];
  v26 = llvm::ConstantInt::get();
  v94[0] = 257;
  v27 = llvm::IRBuilderBase::CreateOr((a1 + 1), v26, v23, &v90);
  v28 = *std::map<std::string,unsigned short>::at(&v85, a5);
  v29 = a1[24];
  v30 = llvm::ConstantInt::get();
  v94[0] = 257;
  v31 = llvm::IRBuilderBase::CreateOr((a1 + 1), v30, v27, &v90);
  if (a7)
  {
    v94[0] = 257;
    v32 = a1[25];
    v33 = llvm::ConstantInt::get();
    v34 = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), Cast, v33, &v90);
    v94[0] = 257;
    v35 = a1[25];
    v36 = llvm::ConstantInt::get();
    FPExt = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), Cast, v36, &v90);
    Cast = v34;
  }

  else
  {
    v44 = *v15;
    FPExt = llvm::ConstantFP::get();
  }

  v45 = *(a4 + 23);
  if (v45 < 0)
  {
    if (a4[1] != 3)
    {
LABEL_62:
      v62 = *v15;
      v94[0] = 257;
      Cast = llvm::IRBuilderBase::CreateFPExt((a1 + 1), Cast, v62, &v90);
      v63 = *v15;
      v94[0] = 257;
      FPExt = llvm::IRBuilderBase::CreateFPExt((a1 + 1), FPExt, v63, &v90);
      goto LABEL_63;
    }

    a4 = *a4;
  }

  else if (v45 != 3)
  {
    goto LABEL_62;
  }

  if (*a4 != 13158 || *(a4 + 2) != 50)
  {
    goto LABEL_62;
  }

LABEL_63:
  v64 = &v79;
  std::string::basic_string[abi:nn200100]<0>(&v79, "llvm.agx3.pack.hfp8");
  v65 = a1[21];
  __src = a1[24];
  v88 = v65;
  v89 = v65;
  v90 = &v92;
  v91 = 0x200000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&v90, &__src, &v90);
  if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0 || (v64 = v79.__r_.__value_.__r.__words[0]) != 0)
  {
    strlen(v64);
  }

  v66 = a1[24];
  llvm::FunctionType::get();
  v67 = a1[54];
  llvm::Module::getOrInsertFunction();
  v69 = v68;
  if (v90 != &v92)
  {
    free(v90);
  }

  __src = v31;
  v88 = Cast;
  v89 = FPExt;
  v94[0] = 257;
  Element = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v69 + 24), v69, &__src, 3, &v90);
  if ((a7 & 1) == 0)
  {
    v70 = a1[23];
    v94[0] = 257;
    FPTrunc = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, Element, v70, &v90);
LABEL_87:
    Element = FPTrunc;
  }

LABEL_88:
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(v84[0]);
  std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::destroy(v86[0]);
  v76 = *MEMORY[0x277D85DE8];
  return Element;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildConvertHFP8_ParseArgTypes@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 1947))
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdYield(uint64_t a1, uint64_t a2, llvm::CmpInst **a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = *a2;
  v18 = *(a2 + 16);
  if (v18)
  {
    llvm::MetadataTracking::track();
  }

  v19 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v17);
  if (v18)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = *(a1 + 200);
  v7 = llvm::ConstantInt::get();
  v16 = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 37, a3, v7, v15);
  v8 = *(a1 + 200);
  llvm::ConstantInt::get();
  v21 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v10 = *(a1 + 192);
  v16 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, Select, v10, v15);
  v12 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, "llvm.agx3.yield", 15, *(a1 + 144), *(a1 + 192));
  v20[0] = Cast;
  v16 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v12 + 24), v12, v20, 1, v15);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = *(a2 - 32);
  if (!v4 || *(v4 + 16) || *(v4 + 24) != *(a2 + 72))
  {
    v4 = 0;
  }

  Name = llvm::Value::getName(v4);
  v62 = v5;
  if (llvm::StringRef::find() == -1)
  {
    if (llvm::StringRef::find() != -1 && ((llvm::CallBase::arg_end(a2) - (a2 + 32 * -(*(a2 + 20) & 0x7FFFFFF))) & 0x1FFFFFFFE0) == 0xA0)
    {
      {
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::order_map = 0u;
        *algn_27C8DB390 = 0u;
        dword_27C8DB3A0 = 1065353216;
        v43 = 48;
        v44 = &dword_277E22068;
        do
        {
          v45 = *v44;
          v44 += 4;
          std::__hash_table<std::__hash_value_type<AIR::MemoryOrder,char const*>,std::__unordered_map_hasher<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::hash<AIR::MemoryOrder>,std::equal_to<AIR::MemoryOrder>,true>,std::__unordered_map_equal<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::equal_to<AIR::MemoryOrder>,std::hash<AIR::MemoryOrder>,true>,std::allocator<std::__hash_value_type<AIR::MemoryOrder,char const*>>>::__emplace_unique_key_args<AIR::MemoryOrder,std::pair<AIR::MemoryOrder const,char const*> const&>(&AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::order_map, v45);
          v43 -= 16;
        }

        while (v43);
        __cxa_atexit(std::unordered_map<AIR::MemoryOrder,char const*>::~unordered_map[abi:nn200100], &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::order_map, &dword_20E4E1000);
      }

      {
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::scope_map = 0u;
        unk_27C8DB3C0 = 0u;
        dword_27C8DB3D0 = 1065353216;
        v46 = 32;
        v47 = &dword_277E22098;
        do
        {
          v48 = *v47;
          v47 += 4;
          std::__hash_table<std::__hash_value_type<AIR::MemoryOrder,char const*>,std::__unordered_map_hasher<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::hash<AIR::MemoryOrder>,std::equal_to<AIR::MemoryOrder>,true>,std::__unordered_map_equal<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::equal_to<AIR::MemoryOrder>,std::hash<AIR::MemoryOrder>,true>,std::allocator<std::__hash_value_type<AIR::MemoryOrder,char const*>>>::__emplace_unique_key_args<AIR::MemoryOrder,std::pair<AIR::MemoryOrder const,char const*> const&>(&AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::scope_map, v48);
          v46 -= 16;
        }

        while (v46);
        __cxa_atexit(std::unordered_map<AIR::MemoryScope,char const*>::~unordered_map[abi:nn200100], &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::scope_map, &dword_20E4E1000);
      }

      {
        AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::volat_map = 0u;
        *algn_27C8DB3F0 = 0u;
        dword_27C8DB400 = 1065353216;
        v49 = 32;
        v50 = &byte_277E220B8;
        do
        {
          v51 = *v50;
          v50 += 16;
          std::__hash_table<std::__hash_value_type<BOOL,char const*>,std::__unordered_map_hasher<BOOL,std::__hash_value_type<BOOL,char const*>,std::hash<BOOL>,std::equal_to<BOOL>,true>,std::__unordered_map_equal<BOOL,std::__hash_value_type<BOOL,char const*>,std::equal_to<BOOL>,std::hash<BOOL>,true>,std::allocator<std::__hash_value_type<BOOL,char const*>>>::__emplace_unique_key_args<BOOL,std::pair<BOOL const,char const*> const&>(&AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::volat_map, v51);
          v49 -= 16;
        }

        while (v49);
        __cxa_atexit(std::unordered_map<BOOL,char const*>::~unordered_map[abi:nn200100], &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::volat_map, &dword_20E4E1000);
      }

      v7 = (a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
      v8 = *v7;
      v9 = v7[8];
      v10 = v7[16];
      v11 = **v7;
      v12 = *(v11 + 8);
      if ((v12 & 0xFE) == 0x12)
      {
        v12 = *(**(v11 + 16) + 8);
      }

      v13 = v7[4];
      v14 = v7[12];
      v15 = v12 & 0xFFFFFF00;
      std::string::basic_string[abi:nn200100]<0>(&v55, "air.simdgroup_atomic.wait.i32.");
      if (v15 == 256)
      {
        v16 = "device.";
      }

      else
      {
        v16 = "threadgroup.";
      }

      v17 = std::string::append(&v55, v16);
      v18 = v17->__r_.__value_.__r.__words[2];
      *&v56.__r_.__value_.__l.__data_ = *&v17->__r_.__value_.__l.__data_;
      v56.__r_.__value_.__r.__words[2] = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      std::unordered_map<BOOL,char const*>::unordered_map(v54, &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::volat_map);
      v19 = *(v10 + 8);
      if (v19 > 0x40)
      {
        v20 = *v10[3];
      }

      else
      {
        v20 = (v10[3] << -v19) >> -v19;
      }

      v21 = std::__hash_table<std::__hash_value_type<BOOL,char const*>,std::__unordered_map_hasher<BOOL,std::__hash_value_type<BOOL,char const*>,std::hash<BOOL>,std::equal_to<BOOL>,true>,std::__unordered_map_equal<BOOL,std::__hash_value_type<BOOL,char const*>,std::equal_to<BOOL>,std::hash<BOOL>,true>,std::allocator<std::__hash_value_type<BOOL,char const*>>>::find<BOOL>(v54[0], v54[1], v20 != 0);
      v22 = std::string::append(&v56, v21[3]);
      v23 = v22->__r_.__value_.__r.__words[2];
      *&v57.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
      v57.__r_.__value_.__r.__words[2] = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      v24 = std::string::append(&v57, ".");
      v25 = v24->__r_.__value_.__r.__words[2];
      *&v58.__r_.__value_.__l.__data_ = *&v24->__r_.__value_.__l.__data_;
      v58.__r_.__value_.__r.__words[2] = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      std::unordered_map<AIR::MemoryOrder,char const*>::unordered_map(v53, &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::order_map);
      v26 = *(v9 + 8);
      if (v26 > 0x40)
      {
        v27 = *v9[3];
      }

      else
      {
        v27 = (v9[3] << -v26) >> -v26;
      }

      v28 = std::__hash_table<std::__hash_value_type<AIR::MemoryOrder,char const*>,std::__unordered_map_hasher<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::hash<AIR::MemoryOrder>,std::equal_to<AIR::MemoryOrder>,true>,std::__unordered_map_equal<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::equal_to<AIR::MemoryOrder>,std::hash<AIR::MemoryOrder>,true>,std::allocator<std::__hash_value_type<AIR::MemoryOrder,char const*>>>::find<AIR::MemoryOrder>(v53[0], v53[1], v27);
      v29 = std::string::append(&v58, v28[3]);
      v30 = v29->__r_.__value_.__r.__words[2];
      *&v65.__r_.__value_.__l.__data_ = *&v29->__r_.__value_.__l.__data_;
      v65.__r_.__value_.__r.__words[2] = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      v31 = std::string::append(&v65, ".");
      v32 = v31->__r_.__value_.__r.__words[2];
      *&v63.__r_.__value_.__l.__data_ = *&v31->__r_.__value_.__l.__data_;
      v63.__r_.__value_.__r.__words[2] = v32;
      v31->__r_.__value_.__l.__size_ = 0;
      v31->__r_.__value_.__r.__words[2] = 0;
      v31->__r_.__value_.__r.__words[0] = 0;
      std::unordered_map<AIR::MemoryOrder,char const*>::unordered_map(v52, &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildSimdgroupAtomicWaitNotify(llvm::CallInst *)::scope_map);
      v33 = *(v14 + 8);
      if (v33 > 0x40)
      {
        v34 = *v14[3];
      }

      else
      {
        v34 = (v14[3] << -v33) >> -v33;
      }

      v35 = std::__hash_table<std::__hash_value_type<AIR::MemoryOrder,char const*>,std::__unordered_map_hasher<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::hash<AIR::MemoryOrder>,std::equal_to<AIR::MemoryOrder>,true>,std::__unordered_map_equal<AIR::MemoryOrder,std::__hash_value_type<AIR::MemoryOrder,char const*>,std::equal_to<AIR::MemoryOrder>,std::hash<AIR::MemoryOrder>,true>,std::allocator<std::__hash_value_type<AIR::MemoryOrder,char const*>>>::find<AIR::MemoryOrder>(v52[0], v52[1], v34);
      v36 = std::string::append(&v63, v35[3]);
      v37 = v36->__r_.__value_.__r.__words[2];
      v59 = *&v36->__r_.__value_.__l.__data_;
      v60 = v37;
      v36->__r_.__value_.__l.__size_ = 0;
      v36->__r_.__value_.__r.__words[2] = 0;
      v36->__r_.__value_.__r.__words[0] = 0;
      std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(v52);
      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(v53);
      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      std::__hash_table<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,llvm::GlobalVariable *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,llvm::GlobalVariable *>>>::~__hash_table(v54);
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v55.__r_.__value_.__l.__data_);
      }

      llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
      v38 = *v13;
      v63.__r_.__value_.__r.__words[0] = *v8;
      v63.__r_.__value_.__l.__size_ = v38;
      llvm::FunctionType::get();
      v39 = *(a1 + 432);
      llvm::Module::getOrInsertFunction();
      v65.__r_.__value_.__r.__words[0] = v8;
      v65.__r_.__value_.__l.__size_ = v13;
      v64 = 257;
      llvm::IRBuilderBase::CreateCall(a1 + 8, *(v40 + 24), v40, &v65, 2, &v63);
      llvm::Value::replaceAllUsesWith();
      llvm::Instruction::eraseFromParent(a2);
      AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::addYieldLoopParameter(a1, "spin_limit");
    }

    v6 = 0;
  }

  else
  {
    llvm::Instruction::eraseFromParent(a2);
    v6 = 1;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v6;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::addYieldLoopParameter(uint64_t a1, char *__s)
{
  {
    std::string::basic_string[abi:nn200100]<0>(&AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::addYieldLoopParameter(char const*,float)::prefix, "translator.agx3.simdgroup_atomic_wait.get_");
    __cxa_atexit(MEMORY[0x277D82640], &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::addYieldLoopParameter(char const*,float)::prefix, &dword_20E4E1000);
  }

  {
    v12 = byte_27C8DB427;
    if (byte_27C8DB427 < 0)
    {
      v12 = qword_27C8DB418;
    }

    AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::addYieldLoopParameter(char const*,float)::prefix_length = v12;
  }

  if (byte_27C8DB427 >= 0)
  {
    v4 = byte_27C8DB427;
  }

  else
  {
    v4 = qword_27C8DB418;
  }

  v5 = strlen(__s);
  v6 = &v15;
  std::string::basic_string[abi:nn200100](&v15, v4 + v5);
  if (v16 < 0)
  {
    v6 = v15;
  }

  if (v4)
  {
    if (byte_27C8DB427 >= 0)
    {
      v7 = &AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::addYieldLoopParameter(char const*,float)::prefix;
    }

    else
    {
      v7 = AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::addYieldLoopParameter(char const*,float)::prefix;
    }

    memmove(v6, v7, v4);
  }

  v8 = v6 + v4;
  if (v5)
  {
    memmove(v8, __s, v5);
  }

  v8[v5] = 0;
  v9 = *(a1 + 168);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  *(inserted + 18) &= 0xC00Fu;
  v11 = *(a1 + 456);
  v13 = "entry";
  v14 = 259;
  operator new();
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildMemCpy2D(uint64_t a1, llvm::Instruction *a2)
{
  v12[12] = *MEMORY[0x277D85DE8];
  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v11[0] = v12;
  v11[1] = 0xC00000000;
  v4 = llvm::CallBase::arg_end(a2) - a2 + 32 * (*(a2 + 5) & 0x7FFFFFF);
  if ((v4 >> 5) >= 1)
  {
    v5 = (v4 >> 5) & 0x7FFFFFFF;
    v6 = a2;
    do
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v11, *(v6 - 4 * (*(a2 + 5) & 0x7FFFFFF)));
      v6 = (v6 + 32);
      --v5;
    }

    while (v5);
  }

  v7 = (*(*a1 + 1968))(a1, v11);
  v8 = *a2;
  v10[16] = 257;
  llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v7, v8, v10);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(a2);
  if (v11[0] != v12)
  {
    free(v11[0]);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildMemCpy1D(uint64_t a1, llvm::Instruction *a2)
{
  v13[5] = *MEMORY[0x277D85DE8];
  llvm::IRBuilderBase::SetInsertPoint((a1 + 8), a2);
  v12[0] = v13;
  v12[1] = 0x500000000;
  v4 = llvm::CallBase::arg_end(a2) - a2 + 32 * (*(a2 + 5) & 0x7FFFFFF);
  if ((v4 >> 5) >= 1)
  {
    v5 = (v4 >> 5) & 0x7FFFFFFF;
    v6 = a2;
    do
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v12, *(v6 - 4 * (*(a2 + 5) & 0x7FFFFFF)));
      v6 = (v6 + 32);
      --v5;
    }

    while (v5);
  }

  v7 = (*(*a1 + 1928))(a1, v12);
  v8 = *a2;
  v11 = 257;
  llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v7, v8, v10);
  llvm::Value::replaceAllUsesWith();
  llvm::Instruction::eraseFromParent(a2);
  if (v12[0] != v13)
  {
    free(v12[0]);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildImageBaseLevelExtract(unsigned int **a1, uint64_t a2, llvm::Value *a3, uint64_t a4)
{
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[25];
  v9 = a1[26];
  v10 = llvm::ConstantInt::get();
  v17 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v9, a3, v10, v16);
  v15[16] = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v9, GEP, 0, v15);
  v13 = (*(*a1 + 248))(a1, AlignedLoad);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, v13, a4, 0);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildImageMipCountExtract(unsigned int **a1, uint64_t a2, llvm::Value *a3, uint64_t a4)
{
  v24 = *a2;
  v25 = *(a2 + 16);
  if (v25)
  {
    llvm::MetadataTracking::track();
  }

  v26 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v24);
  if (v25)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[25];
  v9 = a1[26];
  v10 = llvm::ConstantInt::get();
  v23 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v9, a3, v10, v22);
  v21 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a1 + 1, v9, GEP, 0, v20);
  v13 = (*(*a1 + 248))(a1, AlignedLoad);
  v14 = (*(*a1 + 249))(a1, AlignedLoad);
  v23 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((a1 + 1), v14, v13, v22);
  v16 = a1[25];
  v17 = llvm::ConstantInt::get();
  v21 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 1), Sub, v17, v20);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, Add, a4, 0);
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::getVertexInputCall(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *a2;
  v12 = *(a2 + 16);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v11);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = (*(*a1 + 456))(a1, a4);
  v10 = 257;
  return llvm::IRBuilderBase::CreateCall(a1 + 8, *(v7 + 24), v7, 0, 0, v9);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::getVertexInputIntrinsic(uint64_t a1, int a2)
{
  if (a2 <= 4)
  {
    if ((a2 - 1) >= 2 && (a2 - 3) >= 2)
    {
      return 0;
    }

LABEL_14:
    v2 = 200;
    goto LABEL_15;
  }

  if (a2 <= 6)
  {
    if (a2 == 5)
    {
      goto LABEL_14;
    }

LABEL_13:
    v2 = 168;
    goto LABEL_15;
  }

  switch(a2)
  {
    case 7:
      goto LABEL_13;
    case 8:
      goto LABEL_14;
    case 9:
      v2 = 192;
LABEL_15:
      v3 = *(a1 + v2);
      return AGCLLVMBuilder::getOrInsertFunction<>(a1);
  }

  return 0;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildMeshVaryingWrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, llvm::Type **a5)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = *(a1 + 184);
  v11 = llvm::PointerType::get();
  v17 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a5, v11, v16);
  v13 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(a1, "llvm.agx3.mesh.varying.write", 28, *(a1 + 144), *(a1 + 192), *(a1 + 192), v11);
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = PointerCast;
  v17 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v13 + 24), v13, v21, 3, v16);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildMeshPrimattrWrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, llvm::Type **a5)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v18 = *a2;
  v19 = *(a2 + 16);
  if (v19)
  {
    llvm::MetadataTracking::track();
  }

  v20 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v18);
  if (v19)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = *(a1 + 184);
  v11 = llvm::PointerType::get();
  v17 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a5, v11, v16);
  v13 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(a1, "llvm.agx3.mesh.primattr.write", 29, *(a1 + 144), *(a1 + 192), *(a1 + 192), v11);
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = PointerCast;
  v17 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v13 + 24), v13, v21, 3, v16);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildMeshIndexWrite(uint64_t a1, uint64_t a2, uint64_t a3, llvm::Type **a4)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v16 = *a2;
  v17 = *(a2 + 16);
  if (v17)
  {
    llvm::MetadataTracking::track();
  }

  v18 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v16);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 184);
  v9 = llvm::PointerType::get();
  v15 = 257;
  PointerCast = llvm::IRBuilderBase::CreatePointerCast((a1 + 8), a4, v9, v14);
  v11 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, "llvm.agx3.mesh.index.write", 26, *(a1 + 144), *(a1 + 192), v9);
  v19[0] = a3;
  v19[1] = PointerCast;
  v15 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v11 + 24), v11, v19, 2, v14);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildWaitFence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v11 = *a2;
  v12 = *(a2 + 16);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v11);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, "llvm.agx3.wait.fence", 20, *(a1 + 144), *(a1 + 192));
  v14[0] = a3;
  v10 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v6 + 24), v6, v14, 1, v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildAllocateUVB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v13 = *a2;
  v14 = *(a2 + 16);
  if (v14)
  {
    llvm::MetadataTracking::track();
  }

  v15 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v13);
  if (v14)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, "llvm.agx3.allocate.uvb", 22, *(a1 + 144), *(a1 + 192), *(a1 + 192));
  v16[0] = a3;
  v16[1] = a4;
  v12 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v8 + 24), v8, v16, 2, v11);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildGetMeshPrimitivePointer(uint64_t a1, uint64_t a2)
{
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  v4 = *(a1 + 184);
  llvm::PointerType::get();
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v8 = 257;
  return llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v7);
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildGetPayloadPointer(uint64_t a1, uint64_t a2)
{
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  v4 = *(a1 + 184);
  llvm::PointerType::get();
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v8 = 257;
  return llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v7);
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildEnableAllThreads(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 144);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v9 = *a2;
  v10 = *(a2 + 16);
  if (v10)
  {
    llvm::MetadataTracking::track();
  }

  v11 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v9);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = 257;
  return llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v7);
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildWriteChildcount(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, "llvm.agx3.object.childcount.write", 33, *(a1 + 144), *(a1 + 200));
  v11 = *a2;
  v12 = *(a2 + 16);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v11);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  v14[0] = a3;
  v10 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v6 + 24), v6, v14, 1, v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildStoreChildcount(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 336);
  v9 = llvm::PointerType::get();
  v10 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, "llvm.agx3.object.childcount.store", 33, *(a1 + 144), v8, v9);
  v18[0] = a4;
  v18[1] = a3;
  v14 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v10 + 24), v10, v18, 2, v13);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void AGCLLVMGen6TargetLowerer<RaytracingConstantsGen2>::buildEmitpix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, AGCLLVMGen3TargetLowerer *a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v94[16] = *MEMORY[0x277D85DE8];
  v87 = *a2;
  v88 = *(a2 + 16);
  if (v88)
  {
    llvm::MetadataTracking::track();
  }

  v89 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v87);
  if (v88)
  {
    llvm::MetadataTracking::untrack();
  }

  *__s = 0;
  v85 = 0;
  v86 = 0;
  v93[0] = v94;
  v93[1] = 0x1000000000;
  v90 = v92;
  v91 = 0x1000000000;
  if (*(a1 + 1948) == 1 && *(a1 + 1949) == 1)
  {
    *(a1 + 1950);
  }

  AGCLLVMGen3TargetLowerer::getUSCFormatFromState(a6, a7);
  v17 = *(a1 + 192);
  v18 = llvm::ConstantInt::get();
  v81 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v82, (a1 + 8));
  v83 = *(a1 + 104);
  v19 = (*(*a1 + 1680))(a1, &v81, v18, a10);
  if (v82)
  {
    llvm::MetadataTracking::untrack();
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v93, *(a1 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v90, v19);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v93, *(a1 + 192));
  v20 = *(a1 + 192);
  v80 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, a9, v20, v79);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v90, Cast);
  v22 = *(a1 + 200);
  v23 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v93, v23);
  v24 = *(a1 + 200);
  v25 = llvm::PointerType::get();
  v80 = 257;
  v26 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a3, v25, v79);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v90, v26);
  v78 = 0;
  (*(*a1 + 1736))(__s, a1, a8, &v78);
  v27 = *(a1 + 184);
  v28 = llvm::PointerType::get();
  v80 = 257;
  v29 = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, a4, v28, v79);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v93, v28);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v90, v29);
  v30 = *(a1 + 200);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v32 = *(a1 + 200);
  v33 = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v34 = *(a1 + 200);
  v35 = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v36 = *(a1 + 200);
  v37 = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v80 = 257;
  v38 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v33 + 24), v33, 0, 0, v79);
  v77 = 257;
  v39 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v76);
  v75 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((a1 + 8), v38, v39, v74);
  v80 = 257;
  v41 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v37 + 24), v37, 0, 0, v79);
  v77 = 257;
  v42 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v35 + 24), v35, 0, 0, v76);
  v75 = 257;
  v43 = llvm::IRBuilderBase::CreateMul((a1 + 8), v41, v42, v74);
  v44 = 0;
  if ((v78 - 1) > 1)
  {
    goto LABEL_15;
  }

  if (*(a1 + 1728))
  {
    v45 = strlen(*(a1 + 1728));
  }

  v46 = *(a1 + 200);
  v47 = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v80 = 257;
  v44 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v47 + 24), v47, 0, 0, v79);
  if (v78 == 2)
  {
    v48 = *(a1 + 336);
    v49 = llvm::UndefValue::get();
    v80 = 257;
    v50 = *(a1 + 200);
    v51 = llvm::ConstantInt::get();
    InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v49, Mul, v51, v79);
    v80 = 257;
    v53 = *(a1 + 200);
    v54 = llvm::ConstantInt::get();
    v55 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v43, v54, v79);
    v80 = 257;
    v56 = *(a1 + 200);
    v57 = llvm::ConstantInt::get();
    v58 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v55, v44, v57, v79);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v93, *(a1 + 336));
    v59 = v58;
  }

  else
  {
LABEL_15:
    v60 = *(a1 + 248);
    v61 = llvm::UndefValue::get();
    v80 = 257;
    v62 = *(a1 + 200);
    v63 = llvm::ConstantInt::get();
    v64 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v61, Mul, v63, v79);
    v80 = 257;
    v65 = *(a1 + 200);
    v66 = llvm::ConstantInt::get();
    v67 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v64, v43, v66, v79);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v93, *(a1 + 248));
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v90, v67);
    if (!v44)
    {
      goto LABEL_18;
    }

    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v93, *(a1 + 192));
    v68 = *(a1 + 192);
    v80 = 257;
    v59 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v44, v68, v79);
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v90, v59);
LABEL_18:
  v69 = *(a1 + 144);
  llvm::FunctionType::get();
  if ((SHIBYTE(v86) & 0x80000000) == 0)
  {
    v70 = __s;
LABEL_21:
    strlen(v70);
    goto LABEL_22;
  }

  v70 = *__s;
  if (*__s)
  {
    goto LABEL_21;
  }

LABEL_22:
  v71 = *(a1 + 432);
  llvm::Module::getOrInsertFunction();
  v80 = 257;
  llvm::IRBuilderBase::CreateCall(a1 + 8, *(v72 + 24), v72, v90, v91, v79);
  if (v90 != v92)
  {
    free(v90);
  }

  if (v93[0] != v94)
  {
    free(v93[0]);
  }

  if (SHIBYTE(v86) < 0)
  {
    operator delete(*__s);
  }

  v73 = *MEMORY[0x277D85DE8];
}

void AGCLLVMUserIntersectionShaderArray<RaytracingConstantsGen2>::~AGCLLVMUserIntersectionShaderArray(AGCLLVMObjectArray *a1)
{
  AGCLLVMObjectArray::~AGCLLVMObjectArray(a1);

  JUMPOUT(0x20F331DC0);
}

uint64_t AGCLLVMHAL300TargetLowerer::getRayCoreElementType(AGCLLVMHAL300TargetLowerer *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *(this + 21);
  v5 = *(this + 25);
  v1 = *(this + 57);
  result = llvm::StructType::create();
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMHAL300TargetLowerer::buildCoordinateDewarp(unsigned int **a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *a2;
  v13 = *(a2 + 2);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 6);
  v10 = AGCLLVMGen5TargetLowerer::buildCoordinateDewarpImpl(a1, &v12, a3, a4, a5);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v10;
}

uint64_t AGCLLVMHAL300TargetLowerer::buildCoordinateWarp(unsigned int **a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *a2;
  v13 = *(a2 + 2);
  if (v13)
  {
    llvm::MetadataTracking::track();
  }

  v14 = *(a2 + 6);
  v10 = AGCLLVMGen5TargetLowerer::buildCoordinateWarpImpl(a1, &v12, a3, a4, a5);
  if (v13)
  {
    llvm::MetadataTracking::untrack();
  }

  return v10;
}

uint64_t AGCLLVMHAL300TargetLowerer::getFreeSpaceInRayCore(AGCLLVMHAL300TargetLowerer *this, int a2)
{
  if (a2 == 5)
  {
    v2 = 28;
  }

  else
  {
    v2 = 0;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 28;
  }
}

llvm::Value *AGCLLVMHAL300TargetLowerer::buildDisableAtomicSmashingIntrinsic(uint64_t a1, uint64_t a2, void *a3, llvm::Type *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v15 = *a2;
  v16 = *(a2 + 16);
  if (v16)
  {
    llvm::MetadataTracking::track();
  }

  v17 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v15);
  if (v16)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *a3;
  if (llvm::Type::isIntegerTy(a4))
  {
    v9 = *(a1 + 432);
    v19 = v8;
    v20 = v8;
  }

  else if (llvm::Type::isIntegerTy(a4))
  {
    v10 = *(a1 + 432);
    v19 = v8;
    v20 = v8;
  }

  else
  {
    if (*(a4 + 8) != 2)
    {
      Declaration = 0;
      goto LABEL_12;
    }

    v11 = *(a1 + 432);
    v19 = v8;
    v20 = v8;
  }

  Declaration = llvm::Intrinsic::getDeclaration();
LABEL_12:
  v21 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(Declaration + 24), Declaration, &v18, 1, &v19);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void *MarkInvariants::addSeed(void *this, llvm::Value *a2, int a3)
{
  if (*(a2 + 16) <= 0x1Bu)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
  }

  if (v3)
  {
    v5 = this;
    v7 = this + 4;
    v6 = this[4];
    if (!v6)
    {
      goto LABEL_13;
    }

    v8 = this + 4;
    do
    {
      v9 = v6[4];
      v10 = v9 >= v3;
      v11 = v9 < v3;
      if (v10)
      {
        v8 = v6;
      }

      v6 = v6[v11];
    }

    while (v6);
    if (v8 == v7 || v3 < v8[4])
    {
LABEL_13:
      v13 = this[1];
      v12 = this[2];
      if (v13 >= v12)
      {
        v15 = *this;
        v16 = v13 - *this;
        v17 = v16 >> 4;
        v18 = (v16 >> 4) + 1;
        if (v18 >> 60)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v19 = v12 - v15;
        if (v19 >> 3 > v18)
        {
          v18 = v19 >> 3;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF0)
        {
          v20 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          if (!(v20 >> 60))
          {
            operator new();
          }

          std::string::__throw_length_error[abi:nn200100]();
        }

        v21 = 16 * v17;
        *v21 = v3;
        *(v21 + 8) = a3;
        v14 = 16 * v17 + 16;
        v22 = (v21 - 16 * (v16 >> 4));
        memcpy(v22, v15, v16);
        *v5 = v22;
        v5[1] = v14;
        v5[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v13 = v3;
        *(v13 + 8) = a3;
        v14 = v13 + 16;
      }

      v5[1] = v14;
      return std::__tree<llvm::Function *>::__emplace_unique_key_args<llvm::Function *,llvm::Function * const&>((v7 - 1), v3);
    }
  }

  return this;
}

uint64_t MarkInvariants::markInvariant(MarkInvariants *this, llvm::Type **a2)
{
  v147 = *MEMORY[0x277D85DE8];
  v133[0] = 0;
  v133[1] = 0;
  v131[1] = 0;
  v132 = v133;
  v130 = v131;
  v131[0] = 0;
  v2 = *(this + 1);
  if (*this != v2)
  {
    v4 = (this + 32);
    while (1)
    {
      v7 = *(v2 - 16);
      v5 = v2 - 16;
      v6 = v7;
      v8 = *(v5 + 8);
      *(this + 1) = v5;
      if (llvm::FPMathOperator::classof(v7))
      {
        llvm::Instruction::setFast(v6);
      }

      if (*(this + 56) != 1 || *(v6 + 16) != 42)
      {
        break;
      }

      v9 = *(v6 + 20);
      if ((v9 & 0x40000000) != 0)
      {
        v10 = *(v6 - 8);
      }

      else
      {
        v10 = (v6 - 32 * (v9 & 0x7FFFFFF));
      }

      v11 = *v10;
      v12 = v10[4];
      v13 = *(v11 + 16);
      if (v11 && v13 == 46)
      {
        v14 = *(v11 + 20);
        if ((v14 & 0x40000000) != 0)
        {
          v15 = *(v11 - 8);
        }

        else
        {
          v15 = (v11 - 32 * (v14 & 0x7FFFFFF));
        }

        InsertElement = *v15;
        v22 = v15[4];
        v11 = v12;
        if (!*v15)
        {
          break;
        }
      }

      else
      {
        v16 = *(v12 + 16);
        if (v16 != 46 || v12 == 0)
        {
          if (v11 && v13 == 90)
          {
            v18 = v11;
            v11 = v12;
          }

          else
          {
            v23 = v16 != 90 || v12 == 0;
            v18 = v12;
            if (v23)
            {
              break;
            }
          }

          *v144 = 0u;
          v145 = 0u;
          llvm::IRBuilderBase::SetInsertPoint((a2 + 1), v6);
          v24 = AGCLLVMBuilder::unboxVector(a2, v18, v144);
          v25 = v24;
          v125 = v11;
          if (!v24)
          {
            goto LABEL_37;
          }

          v26 = v24;
          v27 = 1;
          v28 = v144;
          do
          {
            v29 = *v28;
            if (*v28)
            {
              LOBYTE(v29) = *(v29 + 16) == 46;
            }

            v27 &= v29;
            ++v28;
            --v26;
          }

          while (v26);
          if ((v27 & 1) == 0)
          {
            v22 = 0;
            InsertElement = 0;
          }

          else
          {
LABEL_37:
            v30 = *v6;
            InsertElement = llvm::UndefValue::get();
            v31 = *v6;
            v22 = llvm::UndefValue::get();
            if (v25)
            {
              v33 = 0;
              v126 = v25;
              do
              {
                v34 = v144[v33];
                v35 = *(v34 + 5);
                if ((v35 & 0x40000000) != 0)
                {
                  v36 = *(v34 - 1);
                }

                else
                {
                  v36 = (v34 - 32 * (v35 & 0x7FFFFFF));
                }

                v37 = *v36;
                llvm::Type::getInt32Ty(a2[9], v32);
                v38 = llvm::ConstantInt::get();
                v137 = 257;
                InsertElement = llvm::IRBuilderBase::CreateInsertElement((a2 + 1), InsertElement, v37, v38, v134);
                v40 = *(v34 + 5);
                if ((v40 & 0x40000000) != 0)
                {
                  v41 = *(v34 - 1);
                }

                else
                {
                  v41 = v34 - 32 * (v40 & 0x7FFFFFF);
                }

                v42 = *(v41 + 4);
                llvm::Type::getInt32Ty(a2[9], v39);
                v43 = llvm::ConstantInt::get();
                v137 = 257;
                v22 = llvm::IRBuilderBase::CreateInsertElement((a2 + 1), v22, v42, v43, v134);
                ++v33;
              }

              while (v126 != v33);
            }
          }

          v11 = v125;
          if (!InsertElement)
          {
            break;
          }
        }

        else
        {
          v19 = *(v12 + 20);
          if ((v19 & 0x40000000) != 0)
          {
            v20 = *(v12 - 8);
          }

          else
          {
            v20 = (v12 - 32 * (v19 & 0x7FFFFFF));
          }

          InsertElement = *v20;
          v22 = v20[4];
          if (!*v20)
          {
            break;
          }
        }
      }

      if (!v22 || !v11)
      {
        break;
      }

      v44 = *v6;
      if ((*(*v6 + 8) & 0xFE) == 0x12)
      {
        v45 = *(v44 + 32) - 1;
      }

      else
      {
        v45 = 0;
      }

      std::string::basic_string[abi:nn200100]<0>(v134, ".");
      std::string::basic_string[abi:nn200100]<0>(&v136, ".v2");
      std::string::basic_string[abi:nn200100]<0>(v139, ".v3");
      std::string::basic_string[abi:nn200100]<0>(v140, ".v4");
      std::string::basic_string[abi:nn200100]<0>(&v129, "air.fma");
      v84 = &v134[3 * v45];
      v85 = *(v84 + 23);
      if (v85 >= 0)
      {
        v86 = &v134[3 * v45];
      }

      else
      {
        v86 = *v84;
      }

      if (v85 >= 0)
      {
        v87 = *(v84 + 23);
      }

      else
      {
        v87 = v84[1];
      }

      std::string::append(&v129, v86, v87);
      if ((*(v44 + 8) & 0xFE) == 0x12)
      {
        v88 = *(**(v44 + 16) + 8);
      }

      else
      {
        v88 = *(v44 + 8);
      }

      if (v88 == 2)
      {
        v89 = ".f32";
      }

      else
      {
        v89 = ".f16";
      }

      std::string::append(&v129, v89);
      v127 = *(this + 6);
      __src = v44;
      v142 = v44;
      v143 = v44;
      v144[0] = &v145;
      v144[1] = 0x300000000;
      llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v144, &__src, v144);
      llvm::FunctionType::get();
      llvm::Module::getOrInsertFunction();
      v91 = v90;
      if (v144[0] != &v145)
      {
        free(v144[0]);
      }

      llvm::IRBuilderBase::SetInsertPoint((a2 + 1), v6);
      __src = InsertElement;
      v142 = v22;
      v143 = v11;
      v146 = 257;
      v46 = llvm::IRBuilderBase::CreateCall((a2 + 1), *(v91 + 24), v91, &__src, 3, v144);
      llvm::Value::replaceAllUsesWith();
      llvm::Instruction::eraseFromParent(v6);
      if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v129.__r_.__value_.__l.__data_);
      }

      for (i = 0; i != -96; i -= 24)
      {
        if (v140[i + 23] < 0)
        {
          operator delete(*&v140[i]);
        }
      }

LABEL_57:
      v47 = *(v46 + 16);
      if (v46 && v47 == 60)
      {
        v48 = **(v46 - 4);
        v49 = *(v48 + 8);
        if ((v49 & 0xFE) == 0x12)
        {
          v49 = *(**(v48 + 16) + 8);
        }

        v50 = v49 >> 8;
        LODWORD(v134[0]) = v49 >> 8;
        v51 = v133[0];
        if (!v133[0])
        {
          goto LABEL_70;
        }

        v52 = v133;
        do
        {
          v53 = v51;
          v54 = v52;
          v55 = *(v51 + 7);
          if (v55 >= v50)
          {
            v52 = v51;
          }

          v51 = v51[v55 < v50];
        }

        while (v51);
        if (v52 == v133)
        {
          goto LABEL_70;
        }

        if (v55 < v50)
        {
          v53 = v54;
        }

        if (v50 < *(v53 + 7))
        {
LABEL_70:
          v56 = *(this + 6);
          v57 = v56 + 24;
          for (j = *(v56 + 32); j != v57; j = *(j + 8))
          {
            v59 = j - 56;
            if (!j)
            {
              v59 = 0;
            }

            v60 = v59 + 72;
            v61 = *(v59 + 80);
            if (v61 == v59 + 72)
            {
              v63 = 0;
            }

            else
            {
              do
              {
                v62 = v61 - 24;
                if (!v61)
                {
                  v62 = 0;
                }

                v63 = *(v62 + 48);
                if (v63 != v62 + 40)
                {
                  break;
                }

                v61 = *(v61 + 8);
              }

              while (v61 != v60);
            }

            while (v61 != v60)
            {
              if (v63 && *(v63 - 8) == 61)
              {
                v64 = **(v63 - 56);
                v65 = *(v64 + 8);
                if ((v65 & 0xFE) == 0x12)
                {
                  v65 = *(**(v64 + 16) + 8);
                }

                if (v50 == v65 >> 8)
                {
                  MarkInvariants::addSeed(this, *(v63 - 88), 0);
                }
              }

              v63 = *(v63 + 8);
              v66 = v61 - 24;
              if (!v61)
              {
                v66 = 0;
              }

              while (v63 == v66 + 40)
              {
                v61 = *(v61 + 8);
                if (v61 == v60)
                {
                  break;
                }

                v66 = v61 - 24;
                if (!v61)
                {
                  v66 = 0;
                }

                v63 = *(v66 + 48);
              }
            }
          }

          std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v132, v50);
        }

        goto LABEL_102;
      }

      if (v46 && v47 == 92)
      {
        if (*(v46 + 18) != 1)
        {
          goto LABEL_213;
        }

        v67 = **(v46 + 8);
        v68 = *(v46 - 4);
        v69 = this;
LABEL_100:
        MarkInvariants::addSeed(v69, v68, v67);
        goto LABEL_102;
      }

      if (!v46 || v47 != 93)
      {
        if (!v46 || v47 != 84)
        {
          v81 = *(v46 + 5);
          if ((v81 & 0x40000000) != 0)
          {
            v83 = *(v46 - 1);
            v82 = v81 & 0x7FFFFFF;
            if (!v82)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v82 = v81 & 0x7FFFFFF;
            v83 = (v46 - 32 * v82);
            if (!v82)
            {
              goto LABEL_102;
            }
          }

          v109 = 32 * v82;
          do
          {
            v110 = *v83;
            v83 += 4;
            MarkInvariants::addSeed(this, v110, v8);
            v109 -= 32;
          }

          while (v109);
          goto LABEL_102;
        }

        v77 = *(v46 - 4);
        if (!v77 || *(v77 + 16) || *(v77 + 24) != *(v46 + 9))
        {
LABEL_213:
          v122 = 0;
          goto LABEL_214;
        }

        v134[0] = *(v46 - 4);
        if (llvm::GlobalValue::isDeclaration(v77))
        {
          v78 = *(v46 + 5) & 0x7FFFFFF;
          if (v78)
          {
            v79 = -32 * v78;
            do
            {
              MarkInvariants::addSeed(this, *(v46 + v79), v8);
              v79 += 32;
            }

            while (v79);
          }
        }

        else
        {
          std::__tree<llvm::Function *>::__emplace_unique_key_args<llvm::Function *,llvm::Function * const&>(&v130, v77);
          v111 = v77 + 72;
          for (k = *(v77 + 80); k != v111; k = *(k + 8))
          {
            v113 = k - 24;
            if (!k)
            {
              v113 = 0;
            }

            v114 = *(v113 + 40);
            v115 = v114 - 24;
            if (v114)
            {
              v116 = v114 - 24;
            }

            else
            {
              v116 = 0;
            }

            v117 = *(v116 + 16) - 40;
            if (v117 >= 0xFFFFFFF5)
            {
              v118 = v114 - 24;
            }

            else
            {
              v118 = 0;
            }

            v119 = *(v118 + 16) == 29 && v117 >= 0xFFFFFFF5;
            if (v119)
            {
              v120 = *(v114 - 4) & 0x7FFFFFF;
              if (v120)
              {
                v121 = *(v115 - 32 * v120);
              }

              else
              {
                v121 = 0;
              }

              MarkInvariants::addSeed(this, v121, v8);
            }
          }
        }

LABEL_102:
        v70 = v131[0];
        if (!v131[0])
        {
          goto LABEL_186;
        }

        v71 = *(*(v46 + 5) + 56);
        v72 = v131;
        do
        {
          v73 = v70;
          v74 = v72;
          v75 = v70[4];
          if (v75 >= v71)
          {
            v72 = v70;
          }

          v70 = v70[v75 < v71];
        }

        while (v70);
        if (v72 == v131)
        {
          goto LABEL_186;
        }

        if (v75 < v71)
        {
          v73 = v74;
        }

        if (v71 < v73[4])
        {
          goto LABEL_186;
        }

        v135 = 128;
        v134[0] = MEMORY[0x20F330650](6144, 8);
        llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::initEmpty(v134);
        LOBYTE(v136) = 0;
        v139[0] = 0;
        if ((*(v71 + 18) & 1) == 0)
        {
          v76 = *(v71 + 88);
          goto LABEL_129;
        }

        llvm::Function::BuildLazyArguments(v71);
        v76 = *(v71 + 88);
        if (*(v71 + 18))
        {
          llvm::Function::BuildLazyArguments(v71);
          v80 = *(v71 + 88);
        }

        else
        {
LABEL_129:
          v80 = v76;
        }

        v93 = (v80 + 40 * *(v71 + 96));
        if (v76 != v93)
        {
          v94 = 0;
          do
          {
            *llvm::ValueMap<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::operator[](v134, v76) = v94;
            v76 = (v76 + 40);
            ++v94;
          }

          while (v76 != v93);
        }

        v95 = *(v46 + 5);
        if ((v95 & 0x40000000) != 0)
        {
          v97 = *(v46 - 1);
          v96 = v95 & 0x7FFFFFF;
        }

        else
        {
          v96 = v95 & 0x7FFFFFF;
          v97 = (v46 - 32 * v96);
        }

        if (v96)
        {
          v98 = &v97[4 * v96];
          do
          {
            v99 = *v97;
            v144[0] = 0;
            v100 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::Instruction *>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::Instruction *,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>>(v134[0], v135, v99, v144);
            v101 = v144[0];
            if (v100)
            {
              v102 = v144[0] == (v134[0] + 48 * v135);
            }

            else
            {
              v102 = 1;
            }

            if (!v102)
            {
              for (m = *(v71 + 8); m; m = *(m + 8))
              {
                v104 = *(m + 24);
                if (*(v104 + 16) != 84)
                {
                  v104 = 0;
                }

                v105 = *v4;
                if (*v4)
                {
                  v106 = v4;
                  do
                  {
                    v107 = v105[4];
                    v119 = v107 >= v104;
                    v108 = v107 < v104;
                    if (v119)
                    {
                      v106 = v105;
                    }

                    v105 = v105[v108];
                  }

                  while (v105);
                  if (v106 != v4 && v104 >= v106[4])
                  {
                    MarkInvariants::addSeed(this, *(v104 - 32 * (*(v104 + 20) & 0x7FFFFFF) + 32 * *(v101 + 10)), v8);
                  }
                }
              }
            }

            v97 += 4;
          }

          while (v97 != v98);
        }

        if (v139[0] == 1)
        {
          llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(&v136);
          llvm::deallocate_buffer(v136, (16 * v138));
          v139[0] = 0;
        }

        llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>,llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,unsigned int,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,unsigned int>>::destroyAll(v134);
        llvm::deallocate_buffer(v134[0], (48 * v135));
        goto LABEL_186;
      }

      if (*(v46 + 18) != 1)
      {
        goto LABEL_213;
      }

      if (**(v46 + 8) == v8)
      {
        v68 = *(v46 - 4);
        v69 = this;
        v67 = 0;
        goto LABEL_100;
      }

      MarkInvariants::addSeed(this, *(v46 - 8), v8);
LABEL_186:
      v2 = *(this + 1);
      if (*this == v2)
      {
        goto LABEL_212;
      }
    }

    v46 = v6;
    goto LABEL_57;
  }

LABEL_212:
  v122 = 1;
LABEL_214:
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v131[0]);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v133[0]);
  v123 = *MEMORY[0x277D85DE8];
  return v122;
}

uint64_t AGCBitcodeModuleAccessor::updateHashWithModule(AGCBitcodeModuleAccessor *this, llvm::SHA256 *a2)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  return llvm::SHA256::update();
}

void *AGCBitcodeModuleAccessor::release@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v3 = this;
  v5 = this[4];
  if (!v5)
  {
    this = AGCBitcodeModuleAccessor::deserializeModule(&v7, this);
    v5 = v7;
    if (v7)
    {
      v6 = *(a2 + 8) | 1;
      goto LABEL_5;
    }

    v5 = v3[4];
  }

  v3[4] = 0;
  v6 = *(a2 + 8) & 0xFE;
LABEL_5:
  *(a2 + 8) = v6;
  *a2 = v5;
  return this;
}

uint64_t AGCBitcodeModuleAccessor::deserializeModule(AGCBitcodeModuleAccessor *this, llvm::LLVMContext *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  if (*(a2 + 3))
  {
    v6 = strlen(*(a2 + 3));
  }

  llvm::MemoryBuffer::getMemBuffer();
  llvm::MemoryBufferRef::MemoryBufferRef();
  llvm::parseBitcodeFile();
  if (v13)
  {
    v7 = v12;
    v12 = 0;
  }

  else
  {
    v8 = v12;
    v12 = 0;
    std::unique_ptr<llvm::Module>::reset[abi:nn200100](a2 + 4, v8);
    v7 = 0;
  }

  *this = v7;
  llvm::Expected<std::unique_ptr<llvm::Module>>::~Expected(&v12);
  result = v11;
  if (v11)
  {
    result = (*(*v11 + 8))();
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::unique_ptr<llvm::Module>::reset[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MEMORY[0x20F330EC0]();

    JUMPOUT(0x20F331DC0);
  }

  return result;
}

void *AGCBitcodeModuleAccessor::get@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v4 = this[4];
  if (!v4)
  {
    v6 = this;
    this = AGCBitcodeModuleAccessor::deserializeModule(&v7, this);
    v4 = v7;
    if (v7)
    {
      v5 = *(a2 + 8) | 1;
      goto LABEL_5;
    }

    v4 = v6[4];
  }

  v5 = *(a2 + 8) & 0xFE;
LABEL_5:
  *(a2 + 8) = v5;
  *a2 = v4;
  return this;
}

void AGCBitcodeModuleAccessor::~AGCBitcodeModuleAccessor(AGCBitcodeModuleAccessor *this)
{
  *this = &unk_2825BDFC0;
  std::unique_ptr<llvm::Module>::reset[abi:nn200100](this + 4, 0);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BDFC0;
  std::unique_ptr<llvm::Module>::reset[abi:nn200100](this + 4, 0);
}

void AGCLLVMModuleAccessor::updateHashWithModule(AGCLLVMModuleAccessor *this, llvm::SHA256 *a2)
{
  v15[1] = 0;
  v15[2] = 0;
  v15[0] = &v16;
  v7 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 1;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v6 = MEMORY[0x277D82200] + 16;
  v14 = v15;
  llvm::raw_ostream::SetUnbuffered(&v6);
  v3 = *(this + 1);
  llvm::WriteBitcodeToFile();
  v4 = *v14;
  v5 = v14[1];
  llvm::SHA256::update();
  llvm::raw_ostream::~raw_ostream(&v6);
  if (v15[0] != &v16)
  {
    free(v15[0]);
  }
}

uint64_t AGCLLVMModuleAccessor::release@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *(result + 8) = 0;
  *(a2 + 8) &= ~1u;
  *a2 = v2;
  return result;
}

uint64_t AGCLLVMModuleAccessor::get@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) &= ~1u;
  *a2 = *(result + 8);
  return result;
}

uint64_t std::function<void ()(unsigned int,llvm::StringRef)>::operator()(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  v6 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, v7);
  }

  v5 = std::__throw_bad_function_call[abi:nn200100]();
  return std::__function::__value_func<void ()(unsigned int,llvm::StringRef)>::~__value_func[abi:nn200100](v5);
}

uint64_t std::__function::__value_func<void ()(unsigned int,llvm::StringRef)>::~__value_func[abi:nn200100](uint64_t a1)
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

void std::__function::__func<AGCCompilationContext::AGCCompilationContext(char const*,unsigned long)::$_1,std::allocator<AGCCompilationContext::AGCCompilationContext(char const*,unsigned long)::$_1>,void ()(unsigned int,llvm::StringRef)>::operator()(uint64_t a1, int *a2, unsigned __int8 **a3)
{
  v50[2] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  if (*a2 <= 62)
  {
    switch(v3)
    {
      case '<':
        *v5 = (*(v4 + 3) & 0x4000000) != 0;
        *(v5 + 1) = v4[13] & 1;
        *(v5 + 2) = (*(v4 + 3) & 0x10000000) != 0;
        *(v5 + 6) = (*(v4 + 3) & 0x20000000) != 0;
        *(v5 + 8) = (*(v4 + 3) & 0x40000000) != 0;
        *(v5 + 9) = (*(v4 + 4) & 0x800000) != 0;
        *(v5 + 10) = v4[19] & 1;
        *(v5 + 11) = (*(v4 + 4) & 0x8000000) != 0;
        *(v5 + 3) = (*(v4 + 2) & 0x20000000000) != 0;
        *(v5 + 4) = (*(v4 + 2) & 0x40000000000) != 0;
        *(v5 + 5) = (*(v4 + 2) & 0x80000000000) != 0;
        *(v5 + 16) = v4[12] & 1;
        *(v5 + 17) = (v4[12] & 2) != 0;
        *(v5 + 18) = (v4[12] & 8) != 0;
        *(v5 + 19) = (*(v4 + 4) & 0x4000000) != 0;
        v9 = *(a1 + 16);
        if (*(v9 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v48, *v9, *(v9 + 8));
        }

        else
        {
          v48 = *v9;
        }

        if (*(v9 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&v47, *(v9 + 24), *(v9 + 32));
        }

        else
        {
          v47 = *(v9 + 24);
        }

        v13 = *(v9 + 48);
        v50[0] = v48.__r_.__value_.__l.__size_;
        v14 = v48.__r_.__value_.__r.__words[0];
        *(v50 + 7) = *(&v48.__r_.__value_.__r.__words[1] + 7);
        v15 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
        v49[0] = v47.__r_.__value_.__l.__size_;
        v16 = v47.__r_.__value_.__r.__words[0];
        *(v49 + 7) = *(&v47.__r_.__value_.__r.__words[1] + 7);
        v17 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
        if (*(v5 + 232) == 1)
        {
          if (*(v5 + 199) < 0)
          {
            operator delete(*(v5 + 176));
          }

          v18 = v50[0];
          *(v5 + 176) = v14;
          *(v5 + 184) = v18;
          *(v5 + 191) = *(v50 + 7);
          *(v5 + 199) = v15;
          if (*(v5 + 223) < 0)
          {
            operator delete(*(v5 + 200));
          }

          v19 = v49[0];
          *(v5 + 200) = v16;
          *(v5 + 208) = v19;
          *(v5 + 215) = *(v49 + 7);
          *(v5 + 223) = v17;
          *(v5 + 224) = v13;
        }

        else
        {
          v20 = v50[0];
          *(v5 + 176) = v48.__r_.__value_.__r.__words[0];
          *(v5 + 184) = v20;
          *(v5 + 191) = *(v50 + 7);
          *(v5 + 199) = v15;
          v21 = v49[0];
          *(v5 + 200) = v16;
          *(v5 + 208) = v21;
          *(v5 + 215) = *(v49 + 7);
          *(v5 + 223) = v17;
          *(v5 + 224) = v13;
          *(v5 + 232) = 1;
        }

        break;
      case '=':
        *v5 = (*(v4 + 3) & 0x4000000) != 0;
        *(v5 + 1) = v4[13] & 1;
        *(v5 + 2) = (*(v4 + 3) & 0x10000000) != 0;
        *(v5 + 6) = (*(v4 + 3) & 0x20000000) != 0;
        *(v5 + 8) = (*(v4 + 3) & 0x40000000) != 0;
        *(v5 + 3) = (*(v4 + 4) & 0x80) != 0;
        *(v5 + 4) = v4[17] & 1;
        *(v5 + 5) = (*(v4 + 4) & 0x200) != 0;
        *(v5 + 16) = v4[12] & 1;
        *(v5 + 17) = (v4[12] & 2) != 0;
        *(v5 + 18) = (v4[12] & 8) != 0;
        v12 = (v4[16] >> 1) & 1 | (((v4[16] >> 2) & 1) << 8);
        if ((*(v5 + 242) & 1) == 0)
        {
          *(v5 + 242) = 1;
        }

        *(v5 + 240) = v12;
        break;
      case '>':
        *v5 = (*(v4 + 3) & 0x4000000) != 0;
        *(v5 + 1) = v4[13] & 1;
        *(v5 + 2) = (*(v4 + 3) & 0x10000000) != 0;
        *(v5 + 6) = (*(v4 + 3) & 0x20000000) != 0;
        *(v5 + 8) = (*(v4 + 3) & 0x40000000) != 0;
        *(v5 + 3) = (*(v4 + 4) & 0x200) != 0;
        *(v5 + 4) = (*(v4 + 4) & 0x400) != 0;
        *(v5 + 5) = (*(v4 + 4) & 0x800) != 0;
        *(v5 + 16) = v4[12] & 1;
        *(v5 + 17) = (v4[12] & 2) != 0;
        *(v5 + 18) = (v4[12] & 8) != 0;
        v6 = *(a1 + 16);
        v7 = *(v4 + 4);
        if (*(v6 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v48, *v6, *(v6 + 8));
        }

        else
        {
          v48 = *v6;
        }

        v35 = v7 & 0x100 | (v7 >> 7) & 1;
        if (*(v6 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&v47, *(v6 + 24), *(v6 + 32));
        }

        else
        {
          v47 = *(v6 + 24);
        }

        v36 = *(v6 + 48);
        v50[0] = v48.__r_.__value_.__l.__size_;
        v37 = v48.__r_.__value_.__r.__words[0];
        *(v50 + 7) = *(&v48.__r_.__value_.__r.__words[1] + 7);
        v38 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
        v49[0] = v47.__r_.__value_.__l.__size_;
        v39 = v47.__r_.__value_.__r.__words[0];
        *(v49 + 7) = *(&v47.__r_.__value_.__r.__words[1] + 7);
        v40 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
        v41 = *(v5 + 88);
        *(v5 + 24) = v35;
        if (v41 == 1)
        {
          if (*(v5 + 55) < 0)
          {
            operator delete(*(v5 + 32));
          }

          v42 = v50[0];
          *(v5 + 32) = v37;
          *(v5 + 40) = v42;
          *(v5 + 47) = *(v50 + 7);
          *(v5 + 55) = v38;
          if (*(v5 + 79) < 0)
          {
            operator delete(*(v5 + 56));
          }

          v43 = v49[0];
          *(v5 + 56) = v39;
          *(v5 + 64) = v43;
          *(v5 + 71) = *(v49 + 7);
          *(v5 + 79) = v40;
          *(v5 + 80) = v36;
        }

        else
        {
          v44 = v50[0];
          *(v5 + 32) = v37;
          *(v5 + 40) = v44;
          *(v5 + 47) = *(v50 + 7);
          *(v5 + 55) = v38;
          v45 = v49[0];
          *(v5 + 56) = v39;
          *(v5 + 64) = v45;
          *(v5 + 71) = *(v49 + 7);
          *(v5 + 79) = v40;
          *(v5 + 80) = v36;
          *(v5 + 88) = 1;
        }

        break;
    }
  }

  else
  {
    if (v3 > 78)
    {
      if (v3 == 79)
      {
        *v5 = (*v4 & 0x4000000) != 0;
        *(v5 + 1) = v4[1] & 1;
        *(v5 + 2) = (*v4 & 0x10000000) != 0;
        *(v5 + 6) = (*v4 & 0x20000000) != 0;
        *(v5 + 8) = (*v4 & 0x40000000) != 0;
        *(v5 + 4) = (v4[4] & 2) != 0;
        *(v5 + 5) = (v4[4] & 4) != 0;
        *(v5 + 16) = *v4 & 1;
        *(v5 + 17) = (*v4 & 2) != 0;
        v8 = (*v4 >> 3) & 1;
      }

      else
      {
        if (v3 != 84)
        {
          goto LABEL_56;
        }

        *(v5 + 3) = (*v4 & 0x40000) != 0;
        *(v5 + 4) = (*v4 & 0x200000) != 0;
        *(v5 + 5) = (*v4 & 0x400000) != 0;
        *(v5 + 16) = (*v4 & 8) != 0;
        *(v5 + 17) = (*v4 & 0x10) != 0;
        v8 = (*v4 >> 5) & 1;
      }

      *(v5 + 18) = v8;
      goto LABEL_56;
    }

    if (v3 == 63)
    {
      *v5 = (*(v4 + 15) & 0x4000000) != 0;
      *(v5 + 1) = v4[61] & 1;
      *(v5 + 2) = (*(v4 + 15) & 0x10000000) != 0;
      *(v5 + 6) = (*(v4 + 15) & 0x20000000) != 0;
      *(v5 + 8) = (*(v4 + 15) & 0x40000000) != 0;
      *(v5 + 12) = (v4[68] & 8) != 0;
      *(v5 + 3) = (*(v4 + 17) & 0x800) != 0;
      *(v5 + 4) = (*(v4 + 17) & 0x1000) != 0;
      *(v5 + 5) = (*(v4 + 17) & 0x2000) != 0;
      *(v5 + 16) = v4[60] & 1;
      *(v5 + 17) = (v4[60] & 2) != 0;
      *(v5 + 18) = (v4[60] & 8) != 0;
      *(v5 + 19) = (*(v4 + 17) & 0x80) != 0;
      v10 = *(a1 + 16);
      v11 = v4[69] & 1;
      if (*(v10 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v48, *v10, *(v10 + 8));
      }

      else
      {
        v48 = *v10;
      }

      if (*(v10 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v47, *(v10 + 24), *(v10 + 32));
      }

      else
      {
        v47 = *(v10 + 24);
      }

      v50[0] = v48.__r_.__value_.__l.__size_;
      v22 = v48.__r_.__value_.__r.__words[0];
      *(v50 + 7) = *(&v48.__r_.__value_.__r.__words[1] + 7);
      v23 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
      v49[0] = v47.__r_.__value_.__l.__size_;
      v24 = v47.__r_.__value_.__r.__words[0];
      *(v49 + 7) = *(&v47.__r_.__value_.__r.__words[1] + 7);
      v25 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
      v26 = *(v4 + 17);
      v27 = v26 >> 14;
      v28 = (*v4 >> 20) & 7;
      v29 = HIWORD(v26) & 1;
      v30 = *(v5 + 168);
      *(v5 + 96) = v11;
      if (v30 == 1)
      {
        if (*(v5 + 127) < 0)
        {
          operator delete(*(v5 + 104));
        }

        v31 = v50[0];
        *(v5 + 104) = v22;
        *(v5 + 112) = v31;
        *(v5 + 119) = *(v50 + 7);
        *(v5 + 127) = v23;
        if (*(v5 + 151) < 0)
        {
          operator delete(*(v5 + 128));
        }

        v32 = v49[0];
        *(v5 + 128) = v24;
        *(v5 + 136) = v32;
        *(v5 + 143) = *(v49 + 7);
        *(v5 + 151) = v25;
        *(v5 + 152) = v27;
        *(v5 + 156) = v28;
        *(v5 + 160) = v29;
      }

      else
      {
        v33 = v50[0];
        *(v5 + 104) = v22;
        *(v5 + 112) = v33;
        *(v5 + 119) = *(v50 + 7);
        *(v5 + 127) = v23;
        v34 = v49[0];
        *(v5 + 128) = v24;
        *(v5 + 136) = v34;
        *(v5 + 143) = *(v49 + 7);
        *(v5 + 151) = v25;
        *(v5 + 152) = v27;
        *(v5 + 156) = v28;
        *(v5 + 160) = v29;
        *(v5 + 168) = 1;
      }
    }

    else if (v3 == 78)
    {
      *v5 = (*(v4 + 3) & 0x4000000) != 0;
      *(v5 + 1) = v4[13] & 1;
      *(v5 + 2) = (*(v4 + 3) & 0x10000000) != 0;
      *(v5 + 6) = (*(v4 + 3) & 0x20000000) != 0;
      *(v5 + 8) = (*(v4 + 3) & 0x40000000) != 0;
      *(v5 + 13) = (v4[16] & 4) != 0;
      *(v5 + 14) = (v4[16] & 0x40) != 0;
      *(v5 + 15) = (*(v4 + 4) & 0x80) != 0;
      *(v5 + 3) = (*(v4 + 4) & 0x800) != 0;
      *(v5 + 4) = (*(v4 + 4) & 0x1000) != 0;
      *(v5 + 5) = (*(v4 + 4) & 0x2000) != 0;
      *(v5 + 16) = v4[12] & 1;
      *(v5 + 17) = (v4[12] & 2) != 0;
      *(v5 + 18) = (v4[12] & 8) != 0;
      *(v5 + 19) = v4[17] & 1;
    }
  }

LABEL_56:
  v46 = *MEMORY[0x277D85DE8];
}

__n128 std::__function::__func<AGCCompilationContext::AGCCompilationContext(char const*,unsigned long)::$_1,std::allocator<AGCCompilationContext::AGCCompilationContext(char const*,unsigned long)::$_1>,void ()(unsigned int,llvm::StringRef)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2825BE858;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double std::__function::__func<AGCCompilationContext::AGCCompilationContext(char const*,unsigned long)::$_0,std::allocator<AGCCompilationContext::AGCCompilationContext(char const*,unsigned long)::$_0>,void ()(unsigned int,llvm::StringRef)>::operator()(uint64_t a1, int *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 8);
  if (v4 == 76)
  {
    std::string::basic_string[abi:nn200100](&__dst, v5, v6);
    v9 = *(a1 + 8);
    if (*(v9 + 47) < 0)
    {
      operator delete(*(v9 + 24));
    }

    *&v8 = __dst;
    *(v9 + 24) = __dst;
    *(v9 + 40) = v12;
  }

  else if (v4 == 75)
  {
    std::string::basic_string[abi:nn200100](&__dst, v5, v6);
    v7 = *(a1 + 8);
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    v8 = __dst;
    *(v7 + 16) = v12;
    *v7 = v8;
  }

  return *&v8;
}

uint64_t std::__function::__func<AGCCompilationContext::AGCCompilationContext(char const*,unsigned long)::$_0,std::allocator<AGCCompilationContext::AGCCompilationContext(char const*,unsigned long)::$_0>,void ()(unsigned int,llvm::StringRef)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BE810;
  a2[1] = v2;
  return result;
}

uint64_t AIRNTDispose(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 87) < 0)
    {
      operator delete(*(result + 64));
    }

    v2 = *(v1 + 40);
    if (v2)
    {
      do
      {
        v3 = *v2;
        std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v2[4]);
        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

    v4 = *(v1 + 24);
    *(v1 + 24) = 0;
    if (v4)
    {
      operator delete(v4);
    }

    std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(v1 + 8));

    JUMPOUT(0x20F331DC0);
  }

  return result;
}

uint64_t AIRNTDisposeCompilationContext(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 232) == 1)
    {
      if (*(result + 223) < 0)
      {
        operator delete(*(result + 200));
      }

      if (*(v1 + 199) < 0)
      {
        operator delete(*(v1 + 176));
      }
    }

    if (*(v1 + 168) == 1)
    {
      if (*(v1 + 151) < 0)
      {
        operator delete(*(v1 + 128));
      }

      if (*(v1 + 127) < 0)
      {
        operator delete(*(v1 + 104));
      }
    }

    if (*(v1 + 88) == 1)
    {
      if (*(v1 + 79) < 0)
      {
        operator delete(*(v1 + 56));
      }

      if (*(v1 + 55) < 0)
      {
        operator delete(*(v1 + 32));
      }
    }

    JUMPOUT(0x20F331DC0);
  }

  return result;
}

void AIRNTGetVersion(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  *a2 = 2;
  *a3 = 0;
  *a4 = 1;
}

uint64_t AIRNTGetDefaultArch(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  GetAGCActiveTargets();
  result = AGCTarget::TargetArchToCPUSubtypeImpl(*GetAGCActiveTargets(void)::active_impls);
  *a2 = 16777235;
  *a3 = result;
  return result;
}

void AIRNTGetSupportedArchs(uint64_t a1, void **a2, void *a3, void *a4)
{
  v16 = 0;
  v17 = 0;
  v15 = &v16;
  std::set<unsigned int>::insert[abi:nn200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(&v15, *a1, (a1 + 8));
  *a2 = malloc_type_malloc(4 * v17, 0x100004052888210uLL);
  v7 = malloc_type_malloc(4 * v17, 0x100004052888210uLL);
  *a3 = v7;
  v8 = v15;
  if (v15 == &v16)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = *a2;
    do
    {
      v11 = *(v8 + 7);
      v10[v9] = 16777235;
      v7[v9] = v11;
      v12 = v8[1];
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
          v13 = v8[2];
          v14 = *v13 == v8;
          v8 = v13;
        }

        while (!v14);
      }

      ++v9;
      v8 = v13;
    }

    while (v13 != &v16);
    v9 = v9;
  }

  *a4 = v9;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v16);
}

void *std::set<unsigned int>::insert[abi:nn200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v3 = a2;
    do
    {
      v4 = result[1];
      v5 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_9;
      }

      v6 = result[1];
      v7 = result + 1;
      if (v4)
      {
        do
        {
          v5 = v6;
          v6 = v6[1];
        }

        while (v6);
      }

      else
      {
        do
        {
          v5 = v7[2];
          v8 = *v5 == v7;
          v7 = v5;
        }

        while (v8);
      }

      v9 = *(v3 + 7);
      if (*(v5 + 7) < v9)
      {
LABEL_9:
        if (v4)
        {
          v10 = v5 + 1;
        }

        else
        {
          v10 = result + 1;
        }
      }

      else
      {
        v10 = result + 1;
        if (v4)
        {
          v10 = result + 1;
          while (1)
          {
            while (1)
            {
              v13 = v4;
              v14 = *(v4 + 28);
              if (v9 >= v14)
              {
                break;
              }

              v4 = *v13;
              v10 = v13;
              if (!*v13)
              {
                goto LABEL_13;
              }
            }

            if (v14 >= v9)
            {
              break;
            }

            v10 = v13 + 1;
            v4 = v13[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v10)
      {
LABEL_13:
        operator new();
      }

      v11 = v3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v3[2];
          v8 = *v12 == v3;
          v3 = v12;
        }

        while (!v8);
      }

      v3 = v12;
    }

    while (v12 != a3);
  }

  return result;
}

void AIRNTGetSupportedImpls(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, void *a5)
{
  v17 = a3;
  v7 = std::__hash_table<std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 24), a3);
  v15 = 0;
  v16 = 0;
  v14 = &v15;
  std::set<unsigned int>::insert[abi:nn200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(&v14, v7[3], v7 + 4);
  v8 = malloc_type_malloc(4 * v16, 0x100004052888210uLL);
  *a4 = v8;
  v9 = v14;
  if (v14 == &v15)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v8[v10] = *(v9 + 7);
      v11 = v9[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v9[2];
          v13 = *v12 == v9;
          v9 = v12;
        }

        while (!v13);
      }

      ++v10;
      v9 = v12;
    }

    while (v12 != &v15);
    v10 = v10;
  }

  *a5 = v10;
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v15);
}

uint64_t AIRNTSupportsArch(uint64_t a1, int a2, unsigned int a3)
{
  if (a2 != 16777235)
  {
    return 0;
  }

  v20[0] = 0;
  v20[1] = 0;
  v19 = v20;
  std::set<unsigned int>::insert[abi:nn200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(&v19, *a1, (a1 + 8));
  v5 = v19;
  if (v19 == v20)
  {
LABEL_18:
    v15 = 0;
  }

  else
  {
    while (1)
    {
      v21 = *(v5 + 7);
      v22 = &v21;
      v6 = std::__hash_table<std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 24), v21);
      v18[0] = 0;
      v18[1] = 0;
      v17 = v18;
      std::set<unsigned int>::insert[abi:nn200100]<std::__tree_const_iterator<unsigned int,std::__tree_node<unsigned int,void *> *,long>>(&v17, v6[3], v6 + 4);
      if (v18[0])
      {
        v7 = v18;
        v8 = v18[0];
        do
        {
          v9 = v8;
          v10 = v7;
          v11 = *(v8 + 7);
          if (v11 >= a3)
          {
            v7 = v8;
          }

          v8 = v8[v11 < a3];
        }

        while (v8);
        if (v7 != v18)
        {
          if (v11 < a3)
          {
            v9 = v10;
          }

          if (*(v9 + 7) <= a3)
          {
            break;
          }
        }
      }

      std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v18[0]);
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
      if (v13 == v20)
      {
        goto LABEL_18;
      }
    }

    std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v18[0]);
    v15 = 1;
  }

  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v20[0]);
  return v15;
}

BOOL AIRNTSupportsTarget(uint64_t a1, int a2, AGCTarget *a3, int a4, __int16 a5, __int16 a6, __int16 a7)
{
  if (a2 != 16777235)
  {
    return 0;
  }

  v9 = ((16 * a6) | (a5 << 8) | a7);
  result = pluginSupportsOSVersion(a4 | (v9 << 32));
  if (!result)
  {
    return result;
  }

  v13 = AGCTarget::CPUSubtypeToTargetArch(a3, v11, v12);
  result = 0;
  if (a4 <= 2)
  {
    if (a4 != 1)
    {
      if (a4 == 2)
      {
        result = 0;
        switch(v13)
        {
          case 0xEu:
          case 0x10u:
          case 0x11u:
          case 0x16u:
            return v9 > 0xFFF;
          case 0x12u:
            return v9 >> 4 > 0x100;
          case 0x13u:
          case 0x15u:
          case 0x18u:
          case 0x22u:
          case 0x23u:
          case 0x26u:
            return v9 != 0;
          case 0x1Fu:
            return v9 >> 8 > 0x10;
          case 0x20u:
            return v9 >> 4 > 0x114;
          default:
            return result;
        }
      }

      return result;
    }

    if (v13 > 0x17u)
    {
      if (v13 <= 0x1Au)
      {
        if (v13 == 24)
        {
          return v9 > 0xD4F;
        }

        v18 = v9 > 0xCFF;
        v19 = v13 == 25;
        return v19 && v18;
      }

      if (v13 != 27)
      {
        if (v13 == 32)
        {
          return v9 != 0;
        }

        v18 = v9 != 0;
        v19 = v13 == 35;
        return v19 && v18;
      }
    }

    else
    {
      if (v13 > 0x12u)
      {
        if (v13 != 19 && v13 != 20)
        {
          v18 = v9 > 0xD3F;
          v19 = v13 == 21;
          return v19 && v18;
        }

        return v9 > 0xCFF;
      }

      if (v13 != 16)
      {
        v18 = v9 > 0xCFF;
        v19 = v13 == 18;
        return v19 && v18;
      }
    }

    return v9 > 0xCFF;
  }

  if (a4 == 3)
  {
    if (v13 != 34)
    {
      v14 = v9 > 0xFFF;
      v15 = v13 == 17;
      return v15 && v14;
    }

    return v9 != 0;
  }

  if (a4 != 4)
  {
    if (a4 != 11)
    {
      return result;
    }

    if (v13 != 35)
    {
      v14 = v9 > 0xFF;
      v15 = v13 == 18;
      return v15 && v14;
    }

    return v9 != 0;
  }

  return v9 > 0x9FF && v13 == 22;
}

BOOL pluginSupportsOSVersion(uint64_t a1)
{
  v1 = WORD2(a1) - 4864;
  v2 = v1 < 0x800;
  v3 = WORD2(a1) - 3072 < 0xF00;
  v4 = (WORD2(a1) - 768) >> 11 < 3;
  if (a1 != 11)
  {
    v4 = 0;
  }

  if (a1 != 4)
  {
    v3 = v4;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v5 = WORD2(a1) - 4096 < 0xB00;
  v6 = v1 < 0x800;
  if (a1 != 2)
  {
    v6 = 0;
  }

  if (a1 != 1)
  {
    v5 = v6;
  }

  if (a1 <= 2)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

BOOL AIRNTParseCommandLineOptions(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  if (a3 >= 2)
  {
    v4 = 0;
    v7 = a3 - 1;
    v8 = (a2 + 8);
    v9 = 2;
    while (1)
    {
      v10 = *v8;
      v24.n128_u64[0] = v10;
      if (!v10)
      {
        break;
      }

      v11 = strlen(v10);
      v24.n128_u64[1] = v11;
      if (v11 < 6)
      {
        goto LABEL_14;
      }

      if (*v10 != 1885564205 || *(v10 + 4) != 15733)
      {
        goto LABEL_14;
      }

      LOBYTE(v25[0]) = 61;
      v13 = llvm::StringRef::split(&v20, &v24, v25, 1);
      MEMORY[0x20F331AB0](a1 + 64, v21, v22, v13);
      v4 = v9++ >= a3;
      ++v8;
      if (!--v7)
      {
        return 1;
      }
    }

    v11 = 0;
    v24.n128_u64[1] = 0;
LABEL_14:
    v23 = 1283;
    v20.n128_u64[0] = "Unsupported translator option: ";
    v21 = v10;
    v22 = v11;
    llvm::Twine::str(v25, &v20);
    v15 = v26;
    v16 = v25[0];
    if (v26 >= 0)
    {
      v17 = v25;
    }

    else
    {
      v17 = v25[0];
    }

    AGCError::logError(a4, v17, v14);
    if (v15 < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    return 1;
  }

  return v4;
}

char *AGCError::logError(char *this, char **a2, const char *a3)
{
  v3 = this;
  if (a2 && *a2)
  {
    if (!this)
    {
      return this;
    }

    v4 = a2;
  }

  else
  {
    if (!this)
    {
      return this;
    }

    v4 = "Internal compiler error.";
  }

  this = strdup(v4);
  *v3 = this;
  return this;
}

uint64_t AIRNTEmitAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  std::string::basic_string[abi:nn200100]<0>(&v18, "[AGX] Plugin interface not implemented: ");
  v11 = std::string::append(&v18, "AIRNTEmitAssembly");
  v13 = v11->__r_.__value_.__r.__words[2];
  v19 = *&v11->__r_.__value_.__l.__data_;
  v20 = v13;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v14 = SHIBYTE(v20);
  v15 = v19;
  if (v20 >= 0)
  {
    v16 = &v19;
  }

  else
  {
    v16 = v19;
  }

  AGCError::logError(a11, v16, v12);
  if (v14 < 0)
  {
    operator delete(v15);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return 0;
}

uint64_t AIRNTEmitObject(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  std::string::basic_string[abi:nn200100]<0>(&v18, "[AGX] Plugin interface not implemented: ");
  v11 = std::string::append(&v18, "AIRNTEmitObject");
  v13 = v11->__r_.__value_.__r.__words[2];
  v19 = *&v11->__r_.__value_.__l.__data_;
  v20 = v13;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v14 = SHIBYTE(v20);
  v15 = v19;
  if (v20 >= 0)
  {
    v16 = &v19;
  }

  else
  {
    v16 = v19;
  }

  AGCError::logError(a11, v16, v12);
  if (v14 < 0)
  {
    operator delete(v15);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return 0;
}

uint64_t AIRNTEmitDylibImage(int a1, uint64_t a2, const char *a3, int a4, int a5, AGCTarget *this, int a7, int a8, uint64_t a9, uint64_t a10, char *a11)
{
  v11 = this;
  v27 = *MEMORY[0x277D85DE8];
  v14 = AGCTarget::CPUSubtypeToTargetArch(this, a2, a3);
  if (v14)
  {
    TargetContext = AGCNativeTranslator::getTargetContext(v14);
    (*(**TargetContext + 80))(&v24);
    AGCModule<AGX::Impl::DynamicLibraryKey>::AGCModule(&v25, a2, a3, &v24);
  }

  std::to_string(&v24, v11);
  v16 = std::string::insert(&v24, 0, "Unknown AGC target for CPU subtype: ");
  v18 = v16->__r_.__value_.__r.__words[2];
  v25 = *&v16->__r_.__value_.__l.__data_;
  v26 = v18;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v19 = SHIBYTE(v26);
  v20 = v25;
  if (v26 >= 0)
  {
    v21 = &v25;
  }

  else
  {
    v21 = v25;
  }

  AGCError::logError(a11, v21, v17);
  if (v19 < 0)
  {
    operator delete(v20);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v22 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t AGCNativeTranslator::getTargetContext(unsigned int a1)
{
  {
    AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts = 0u;
    *&qword_27C8DB7A0 = 0u;
    dword_27C8DB7B0 = 1065353216;
    __cxa_atexit(std::unordered_map<AGCTargetArch,std::unique_ptr<AGCTargetContext>>::~unordered_map[abi:nn200100], &AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts, &dword_20E4E1000);
  }

  {
    __cxa_atexit(MEMORY[0x277D82690], &AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContextsMutex, &dword_20E4E1000);
  }

  std::mutex::lock(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContextsMutex);
  if (!*(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1))
  {
    goto LABEL_19;
  }

  v2 = vcnt_s8(*(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 8));
  v2.i16[0] = vaddlv_u8(v2);
  if (v2.u32[0] > 1uLL)
  {
    v3 = a1;
    if (*(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1) <= a1)
    {
      v3 = a1 % DWORD2(AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts);
    }
  }

  else
  {
    v3 = (DWORD2(AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts) - 1) & a1;
  }

  v4 = *(AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 8 * v3);
  if (!v4 || (v5 = *v4) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v6 = v5[1];
    if (v6 == a1)
    {
      break;
    }

    if (v2.u32[0] > 1uLL)
    {
      if (v6 >= *(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1))
      {
        v6 %= *(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1);
      }
    }

    else
    {
      v6 &= *(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1) - 1;
    }

    if (v6 != v3)
    {
      goto LABEL_19;
    }

LABEL_18:
    v5 = *v5;
    if (!v5)
    {
      goto LABEL_19;
    }
  }

  if (*(v5 + 4) != a1)
  {
    goto LABEL_18;
  }

  if (!*(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1))
  {
    goto LABEL_37;
  }

  v7 = vcnt_s8(*(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 8));
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = a1;
    if (*(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1) <= a1)
    {
      v8 = a1 % DWORD2(AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts);
    }
  }

  else
  {
    v8 = (DWORD2(AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts) - 1) & a1;
  }

  v9 = *(AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_37:
    operator new();
  }

  while (2)
  {
    v11 = v10[1];
    if (v11 != a1)
    {
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1))
        {
          v11 %= *(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1);
        }
      }

      else
      {
        v11 &= *(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1) - 1;
      }

      if (v11 != v8)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    if (*(v10 + 4) != a1)
    {
LABEL_36:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_37;
      }

      continue;
    }

    break;
  }

  v12 = v10[3];
  std::mutex::unlock(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContextsMutex);
  return v12;
}

void AGCModule<AGX::Impl::DynamicLibraryKey>::AGCModule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_2825BE060;
  *(a1 + 8) = &unk_2825BE090;
  *(a1 + 16) = *(a4 + 8);
  std::vector<unsigned int>::vector[abi:nn200100]((a1 + 24), (a4 + 16));
  *(a1 + 8) = &unk_2825BF6F0;
  *(a1 + 48) = *(a4 + 40);
  MEMORY[0x20F32FFB0](a1 + 56);
  operator new();
}

uint64_t AGCModule<AGX::Impl::DynamicLibraryKey>::compileLLVMObject(uint64_t a1, unsigned int a2, void *a3, void *a4, char *a5)
{
  v68 = *MEMORY[0x277D85DE8];
  mach_absolute_time();
  v11 = *AGCPerThreadContext::getTargetContext(a2);
  if (!v11)
  {
    v22 = "Failed to initialize AGX backend for target architecture.";
LABEL_46:
    AGCError::logError(a5, v22, v10);
LABEL_47:
    v38 = 0;
    goto LABEL_77;
  }

  *(v11 + 1953) = 0;
  v12 = *(a1 + 64);
  if (v12)
  {
    (*(*v12 + 24))(&v63);
    if (BYTE8(v63))
    {
      v13 = v63;
      *&v63 = 0;
      v60 = v13;
      llvm::toString(v65, &v60);
      v14 = std::string::insert(v65, 0, "Error parsing bitcode file: ");
      v16 = v14->__r_.__value_.__r.__words[2];
      *c.count = *&v14->__r_.__value_.__l.__data_;
      *&c.hash[2] = v16;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v17 = SHIBYTE(c.hash[3]);
      v18 = *c.count;
      if ((c.hash[3] & 0x80000000) == 0)
      {
        p_c = &c;
      }

      else
      {
        p_c = *c.count;
      }

      AGCError::logError(a5, p_c, v15);
      if (v17 < 0)
      {
        operator delete(v18);
      }

      if ((v65[23] & 0x80000000) != 0)
      {
        operator delete(*v65);
      }

      if (v60)
      {
        (*(*v60 + 8))(v60);
      }

      v20 = 0;
      v21 = 0;
    }

    else
    {
      v20 = v63;
      v66 = 260;
      *v65 = v63 + 216;
      MEMORY[0x20F330F20](&c, v65);
      if (c.hash[4] == 49 && c.hash[6] == 1 && (AGCOSVersion::AGCOSVersion(v65, &c), pluginSupportsOSVersion(*v65)) && ((llvm::Triple::getEnvironmentName(&c), !v23) || c.wbuf[0] == 21))
      {
        AGCTargetOS::AGCTargetOS(v65, &c);
        v21 = 1;
      }

      else
      {
        std::operator+<char>();
        v25 = v65[23];
        v26 = *v65;
        if (v65[23] >= 0)
        {
          v27 = v65;
        }

        else
        {
          v27 = *v65;
        }

        AGCError::logError(a5, v27, v24);
        if (v25 < 0)
        {
          operator delete(v26);
        }

        v21 = 0;
      }

      if (SHIBYTE(c.hash[3]) < 0)
      {
        operator delete(*c.count);
      }
    }

    if (BYTE8(v63))
    {
      v28 = v63;
      *&v63 = 0;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }
    }

    if (!v21)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v20 = 0;
  }

  v29 = (**a1)(a1, v11, a1 + 56, v20);
  if (!v29)
  {
    v22 = "Cannot create AGC LLVM object.";
    goto LABEL_46;
  }

  v31 = v29;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v30)) != 0 && *Value != 48 && (v33 = atoi(Value), v33))
  {
    AGCPrinterFactory::Get(v33);
    v34 = (*(*v31 + 48))(v31);
    std::string::basic_string[abi:nn200100]<0>(v58, v34);
    (*(*v31 + 40))(__p, v31);
    if (*(a1 + 104) == 1)
    {
      v35 = *(a1 + 88);
      v63 = *(a1 + 72);
      v64 = v35;
    }

    else
    {
      llvm::SHA256::SHA256(&v61);
      v50 = *(a1 + 64);
      if (v50)
      {
        (*(*v50 + 32))(v50, &v61);
      }

      memset(v65, 0, sizeof(v65));
      CC_SHA256_Init(&c);
      (**(a1 + 8))(a1 + 8, &c);
      CC_SHA256_Final(v65, &c);
      llvm::SHA256::update();
      llvm::SHA256::final(&c, &v61);
      v51 = *(a1 + 104);
      v52 = *&c.hash[2];
      *(a1 + 72) = *c.count;
      *(a1 + 88) = v52;
      if ((v51 & 1) == 0)
      {
        *(a1 + 104) = 1;
      }

      v53 = *(a1 + 88);
      v63 = *(a1 + 72);
      v64 = v53;
      llvm::SHA256::~SHA256(&v61);
    }

    *c.count = v63;
    *&c.hash[2] = v64;
    LOBYTE(c.hash[6]) = 1;
    AGCPrinterFactory::createObjectPrinter(v65, 0, v58, __p, &c);
    v37 = *v65;
    if (v57 < 0)
    {
      operator delete(__p[0]);
    }

    if (v59 < 0)
    {
      operator delete(v58[0]);
    }

    v36 = v37;
  }

  else
  {
    v36 = 0;
    v37 = *(v11 + 2032);
  }

  (*(*v31 + 64))(v31, v37);
  if ((*(*v31 + 16))(v31))
  {
    memset(&c, 0, 32);
    v61 = 0;
    v62[0] = &unk_2825BE8E8;
    v62[1] = a1;
    v62[3] = v62;
    *&v63 = 0;
    v38 = (*(*v31 + 24))(v31, &v63, &v61, &c, v62);
    std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](v62);
    if (v38)
    {
      *a3 = v63;
      *a4 = v61;
    }

    else
    {
      std::string::basic_string[abi:nn200100]<0>(v65, "Error occurred composing compiler reply.");
      if ((v65[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v54, *v65, *&v65[8]);
      }

      else
      {
        v54 = *v65;
      }

      v42 = &v54;
      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = v54.__r_.__value_.__r.__words[0];
      }

      AGCTargetPrinter::printMessage(*(v31 + 1696), "** Compilation failed with error: %s **", v42);
      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }

      v44 = v65[23];
      v45 = *v65;
      if (v65[23] >= 0)
      {
        v46 = v65;
      }

      else
      {
        v46 = *v65;
      }

      AGCError::logError(a5, v46, v43);
      if (v44 < 0)
      {
        operator delete(v45);
      }
    }
  }

  else
  {
    if (*(v31 + 1679) < 0)
    {
      std::string::__init_copy_ctor_external(&v55, *(v31 + 1656), *(v31 + 1664));
    }

    else
    {
      v55 = *(v31 + 1656);
    }

    v39 = &v55;
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v39 = v55.__r_.__value_.__r.__words[0];
    }

    AGCTargetPrinter::printMessage(*(v31 + 1696), "** Compilation failed with error: %s **", v39);
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (*(v31 + 1679) >= 0)
    {
      v41 = (v31 + 1656);
    }

    else
    {
      v41 = *(v31 + 1656);
    }

    AGCError::logError(a5, v41, v40);
    v38 = 0;
  }

  if (v36)
  {
    v47 = *v36;
    if (*v36 && v47 != MEMORY[0x277D82670])
    {
      (*(*v47 + 8))(v47);
      *v36 = 0;
    }

    MEMORY[0x20F331DC0](v36, 0x1020C409DFBF432);
  }

  (*(*v31 + 8))(v31);
LABEL_77:
  v48 = *MEMORY[0x277D85DE8];
  return v38;
}

void ProgramKey<(_AGCStreamToken)8,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

uint64_t AGCPerThreadContext::getTargetContext(unsigned int a1)
{
  v13 = *MEMORY[0x277D85DE8];
  {
    v12 = AGCPerThreadContext::getTargetContext(AGCTargetArch)::target_contexts(&AGCPerThreadContext::getTargetContext(AGCTargetArch)::target_contexts);
    *v12 = 0u;
    v12[1] = 0u;
    *(v12 + 8) = 1065353216;
    _tlv_atexit(std::unordered_map<AGCTargetArch,std::unique_ptr<AGCPerThreadPerTargetContext>>::~unordered_map[abi:nn200100], v12);
  }

  v3 = AGCPerThreadContext::getTargetContext(AGCTargetArch)::target_contexts(&AGCPerThreadContext::getTargetContext(AGCTargetArch)::target_contexts);
  v4 = v3[1];
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = a1;
    if (v4 <= a1)
    {
      v6 = a1 % v4;
    }
  }

  else
  {
    v6 = (v4 - 1) & a1;
  }

  v7 = *(*v3 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == a1)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= v4)
      {
        v9 %= v4;
      }
    }

    else
    {
      v9 &= v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_19;
    }

LABEL_18:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_19;
    }
  }

  if (*(v8 + 4) != a1)
  {
    goto LABEL_18;
  }

  result = v8[3];
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void llvm::toString(std::string *this, void **a2)
{
  v61[6] = *MEMORY[0x277D85DE8];
  v3 = v61;
  v59 = v61;
  v60 = 0x200000000;
  v4 = *a2;
  *a2 = 0;
  v51 = &v59;
  if (!v4)
  {
    v52 = 0;
    goto LABEL_54;
  }

  if (!(*(*v4 + 48))(v4, MEMORY[0x277D821A8]))
  {
    v58[0] = v4;
    llvm::handleErrorImpl<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v52, v58, &v51);
    if (v58[0])
    {
      (*(*v58[0] + 8))(v58[0]);
    }

    goto LABEL_54;
  }

  v52 = 0;
  v5 = v4[1];
  v6 = v4[2];
  if (v5 == v6)
  {
    goto LABEL_50;
  }

  v7 = 0;
  v8 = MEMORY[0x277D821A8];
  do
  {
    v9 = *v5;
    *v5 = 0;
    v53 = v9;
    llvm::handleErrorImpl<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(v54, &v53, &v51);
    v10 = v54[0];
    if (!v7)
    {
      goto LABEL_45;
    }

    if (v54[0])
    {
      v11 = (*(*v7 + 48))(v7, v8);
      v10 = v54[0];
      if (!v11)
      {
        if (!v54[0] || !(*(*v54[0] + 48))(v54[0], v8))
        {
          operator new();
        }

        v15 = v10[1];
        v14 = v10[2];
        v16 = v10[3];
        if (v14 >= v16)
        {
          v20 = ((v14 - v15) >> 3) + 1;
          if (!(v20 >> 61))
          {
            v21 = v16 - v15;
            if (v21 >> 2 > v20)
            {
              v20 = v21 >> 2;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFF8)
            {
              v22 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v20;
            }

            v57 = (v10 + 1);
            if (v22)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(v22);
            }

            v54[3] = 0;
            v55 = 0uLL;
            v56 = 0;
            v58[4] = v57;
            std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(1uLL);
          }

          std::string::__throw_length_error[abi:nn200100]();
        }

        if (v15 == v14)
        {
          *v14 = v7;
          v10[2] = v14 + 8;
        }

        else
        {
          v17 = v14 - 8;
          v50 = v3;
          if (v14 < 8)
          {
            v19 = v10[2];
          }

          else
          {
            v18 = *v17;
            *v17 = 0;
            *v14 = v18;
            v19 = v14 + 8;
          }

          v10[2] = v19;
          if (v14 != v15 + 8)
          {
            v23 = v14 - v15;
            v24 = v15 - 16;
            do
            {
              v25 = *&v24[v23];
              *&v24[v23] = 0;
              v26 = *v17;
              *v17 = v25;
              if (v26)
              {
                (*(*v26 + 8))(v26);
              }

              v17 -= 8;
              v23 -= 8;
            }

            while (v23 != 8);
          }

          v27 = *v15;
          *v15 = v7;
          if (v27)
          {
            (*(*v27 + 8))(v27);
          }

          v3 = v50;
          v8 = MEMORY[0x277D821A8];
        }

LABEL_45:
        v54[0] = 0;
        v7 = v10;
        goto LABEL_46;
      }

      if (v54[0] && (*(*v54[0] + 48))(v54[0], v8))
      {
        v54[0] = 0;
        v13 = v10[1];
        v12 = v10[2];
        while (v13 != v12)
        {
          std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:nn200100]((v7 + 1), v13++);
        }

        (*(*v10 + 8))(v10);
      }

      else
      {
        v58[0] = v10;
        v54[0] = 0;
        std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:nn200100]((v7 + 1), v58);
        if (v58[0])
        {
          (*(*v58[0] + 8))(v58[0]);
        }
      }

      if (v54[0])
      {
        (*(*v54[0] + 8))(v54[0]);
      }
    }

LABEL_46:
    v28 = v53;
    v53 = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    ++v5;
  }

  while (v5 != v6);
  v52 = v7;
LABEL_50:
  (*(*v4 + 8))(v4);
LABEL_54:
  v29 = v59;
  v30 = v60;
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  this->__r_.__value_.__r.__words[0] = 0;
  if (v30)
  {
    v31 = 24 * v30;
    v32 = v30 - 1;
    v33 = v29 + 23;
    v34 = 24 * v30;
    do
    {
      v35 = *v33;
      if (v35 < 0)
      {
        v35 = *(v33 - 15);
      }

      v32 += v35;
      v33 += 24;
      v34 -= 24;
    }

    while (v34);
    std::string::reserve(this, v32);
    v36 = v29[23];
    if (v36 >= 0)
    {
      v37 = v29;
    }

    else
    {
      v37 = *v29;
    }

    if (v36 >= 0)
    {
      v38 = v29[23];
    }

    else
    {
      v38 = *(v29 + 1);
    }

    std::string::append(this, v37, v38);
    if (v30 != 1)
    {
      v39 = v29 + 24;
      v40 = v31 - 24;
      do
      {
        std::string::append(this, "\n", 1uLL);
        v41 = v39[23];
        if (v41 >= 0)
        {
          v42 = v39;
        }

        else
        {
          v42 = *v39;
        }

        if (v41 >= 0)
        {
          v43 = v39[23];
        }

        else
        {
          v43 = *(v39 + 1);
        }

        std::string::append(this, v42, v43);
        v39 += 24;
        v40 -= 24;
      }

      while (v40);
    }
  }

  v44 = v59;
  if (v60)
  {
    v45 = v59 + 24 * v60 - 1;
    v46 = -24 * v60;
    v47 = v45;
    do
    {
      v48 = *v47;
      v47 -= 24;
      if (v48 < 0)
      {
        operator delete(*(v45 - 23));
      }

      v45 = v47;
      v46 += 24;
    }

    while (v46);
    v44 = v59;
  }

  if (v44 != v3)
  {
    free(v44);
  }

  v49 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__func<AGCModule<AGX::Impl::DynamicLibraryKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::Impl::DynamicLibraryKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BE8E8;
  a2[1] = v2;
  return result;
}

void AGCOSVersion::AGCOSVersion(AGCOSVersion *this, const llvm::Triple *a2)
{
  *this = 0;
  OSVersion = llvm::Triple::getOSVersion(a2);
  v6 = (OSVersion >> 28) & 0xFFF0;
  if (v5 < 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (OSVersion >= 0)
  {
    LOWORD(v6) = 0;
  }

  *(this + 2) = v7 | (OSVersion << 8) | v6;
  v8 = *(a2 + 9);
  if (v8 <= 27)
  {
    if (v8 == 7)
    {
      v9 = 2;
    }

    else
    {
      if (v8 != 11)
      {
        return;
      }

      v9 = 1;
    }
  }

  else
  {
    switch(v8)
    {
      case 33:
        v9 = 11;
        break;
      case 29:
        v9 = 4;
        break;
      case 28:
        v9 = 3;
        break;
      default:
        return;
    }
  }

  *this = v9;
}

uint64_t llvm::handleErrorImpl<llvm::toString(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(void *a1, void *a2, uint64_t *a3)
{
  result = (*(**a2 + 48))(*a2, MEMORY[0x277D81FF0]);
  v7 = *a2;
  *a2 = 0;
  if (result)
  {
    v8 = *a3;
    (*(*v7 + 24))(&__p, v7);
    v9 = *(v8 + 8);
    v10 = *v8;
    if (v9 >= *(v8 + 12))
    {
      if (v10 > &__p || v10 + 24 * v9 <= &__p)
      {
        llvm::SmallVectorTemplateBase<std::string,false>::grow();
      }

      llvm::SmallVectorTemplateBase<std::string,false>::grow();
    }

    v11 = v10 + 24 * *(v8 + 8);
    v12 = __p;
    *(v11 + 16) = v14;
    *v11 = v12;
    v14 = 0;
    __p = 0uLL;
    ++*(v8 + 8);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    *a1 = 0;
    return (*(*v7 + 8))(v7);
  }

  else
  {
    *a1 = v7;
  }

  return result;
}

uint64_t std::vector<std::unique_ptr<llvm::ErrorInfoBase>>::push_back[abi:nn200100](uint64_t result, uint64_t *a2)
{
  v3 = result;
  v5 = *(result + 8);
  v4 = *(result + 16);
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v17[4] = v3;
    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(v12);
    }

    v13 = (8 * (v9 >> 3));
    v14 = *a2;
    *a2 = 0;
    *v13 = v14;
    v7 = v13 + 1;
    memcpy(0, v8, v9);
    v15 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v16 = v3[2];
    v3[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(v17);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<llvm::ErrorInfoBase>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::unique_ptr<AGCPerThreadPerTargetContext>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::unique_ptr<AGCCompilationResultCache>::reset[abi:nn200100]((v2 + 8), 0);
    std::unique_ptr<AGCLLVMCtx>::reset[abi:nn200100](v2, 0);
    MEMORY[0x20F331DC0](v2, 0x20C40A4A59CD2);
  }

  return a1;
}

uint64_t *std::unique_ptr<AGCCompilationResultCache>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>,std::__map_value_compare<std::array<unsigned char,32ul>,std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>,std::less<std::array<unsigned char,32ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>>>::destroy(*(v2 + 8));

    JUMPOUT(0x20F331DC0);
  }

  return result;
}

AGCLLVMCtx *std::unique_ptr<AGCLLVMCtx>::reset[abi:nn200100](AGCLLVMCtx **a1, AGCLLVMCtx *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    AGCLLVMCtx::~AGCLLVMCtx(result);

    JUMPOUT(0x20F331DC0);
  }

  return result;
}

void std::__tree<std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>,std::__map_value_compare<std::array<unsigned char,32ul>,std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>,std::less<std::array<unsigned char,32ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>,std::__map_value_compare<std::array<unsigned char,32ul>,std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>,std::less<std::array<unsigned char,32ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>>>::destroy(*a1);
    std::__tree<std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>,std::__map_value_compare<std::array<unsigned char,32ul>,std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>,std::less<std::array<unsigned char,32ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,32ul>,AGCManagedCompilationResult>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 8);
    if (v2)
    {
      free(v2);
    }

    if (a1[183] < 0)
    {
      operator delete(*(a1 + 20));
    }

    if (a1[159] < 0)
    {
      operator delete(*(a1 + 17));
    }

    if (a1[127] < 0)
    {
      operator delete(*(a1 + 13));
    }

    if (a1[103] < 0)
    {
      operator delete(*(a1 + 10));
    }

    operator delete(a1);
  }
}

uint64_t std::unordered_map<AGCTargetArch,std::unique_ptr<AGCPerThreadPerTargetContext>>::~unordered_map[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::unique_ptr<AGCPerThreadPerTargetContext>::~unique_ptr[abi:nn200100](v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::vector<unsigned int>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<unsigned int>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 2);
  }

  return result;
}

void AGX::Impl::DynamicLibraryKey::serialize(AGX::Impl::DynamicLibraryKey *this, std::vector<unsigned int>::pointer *a2, unint64_t *a3)
{
  v5 = (this + 16);
  *(this + 3) = *(this + 2);
  v9 = *(this + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](this + 16, &v9);
  v6 = v5->__end_ - v5->__begin_;
  std::vector<unsigned int>::resize(v5, (v6 >> 2) + 4);
  v7 = v5->__begin_ + v6;
  *v7 = ((LODWORD(v5->__end_) - v5->__begin_) >> 2 << 8) | 0x4F;
  *(v7 + 4) = v5[1].__begin_;
  v10 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v10);
  begin = v5->__begin_;
  *a2 = v5->__begin_;
  *a3 = v5->__end_ - begin;
}

void std::default_delete<AGCTargetContext>::operator()[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x20F331DC0);
}

void std::__hash_table<std::__hash_value_type<AGCTargetArch,std::unique_ptr<AGCTargetContext>>,std::__unordered_map_hasher<AGCTargetArch,std::__hash_value_type<AGCTargetArch,std::unique_ptr<AGCTargetContext>>,std::hash<AGCTargetArch>,std::equal_to<AGCTargetArch>,true>,std::__unordered_map_equal<AGCTargetArch,std::__hash_value_type<AGCTargetArch,std::unique_ptr<AGCTargetContext>>,std::equal_to<AGCTargetArch>,std::hash<AGCTargetArch>,true>,std::allocator<std::__hash_value_type<AGCTargetArch,std::unique_ptr<AGCTargetContext>>>>::__rehash<true>(size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v2 = *(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1);
  if (prime > *(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1))
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  if (prime < *(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1))
  {
    v3 = vcvtps_u32_f32(qword_27C8DB7A8 / *&dword_27C8DB7B0);
    if (*(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1) < 3uLL || (v4 = vcnt_s8(*(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 8)), v4.i16[0] = vaddlv_u8(v4), v4.u32[0] > 1uLL))
    {
      v3 = std::__next_prime(v3);
    }

    else
    {
      v5 = 1 << -__clz(v3 - 1);
      if (v3 >= 2)
      {
        v3 = v5;
      }
    }

    if (prime <= v3)
    {
      prime = v3;
    }

    if (prime < v2)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v6 = AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts;
      *&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts = 0;
      if (v6)
      {
        operator delete(v6);
      }

      *(&AGCNativeTranslator::getTargetContext(AGCTargetArch)::agcTargetContexts + 1) = 0;
    }
  }
}

uint64_t std::unordered_map<AGCTargetArch,std::unique_ptr<AGCTargetContext>>::~unordered_map[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        std::default_delete<AGCTargetContext>::operator()[abi:nn200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t AIRNTEmitExecutableImage(int a1, uint64_t a2, const char *a3, int a4, int a5, AGCTarget *this, Air::FunctionScript *a7, int a8, uint64_t a9, uint64_t a10, char *a11)
{
  v12 = this;
  v44[8] = *MEMORY[0x277D85DE8];
  v15 = AGCTarget::CPUSubtypeToTargetArch(this, a2, a3);
  if (v15)
  {
    v16 = v15;
    v17 = *AGCNativeTranslator::getTargetContext(v15);
    v18 = Air::FunctionScript::function_as_visible(a7);
    if (v18)
    {
      (*(*v17 + 64))(&v32, v17, v18);
      goto LABEL_4;
    }

    v25 = Air::FunctionScript::function_as_intersection(a7);
    if (v25)
    {
      v27 = v25;
      v28 = AGCTarget::Get(v16);
      if (!((*v28)[3])(v28))
      {
        (*(*v17 + 88))(&v32, v17, v27);
        *&v37 = &unk_2825BE100;
        *(&v37 + 1) = &unk_2825BE130;
        LODWORD(v38) = v32.__r_.__value_.__r.__words[1];
        v40 = 0;
        v41 = 0;
        __p = 0;
        v31 = v33 - v32.__r_.__value_.__r.__words[2];
        if (v33 != v32.__r_.__value_.__r.__words[2])
        {
          if (!((v31 >> 2) >> 62))
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v31 >> 2);
          }

          std::string::__throw_length_error[abi:nn200100]();
        }

        *(&v37 + 1) = &unk_2825BF730;
        v42 = v34;
        memset(v43, 0, sizeof(v43));
        if (v36 != v35)
        {
          std::vector<MTLUINT256_t>::__vallocate[abi:nn200100](v43, (v36 - v35) >> 5);
        }

        MEMORY[0x20F32FFB0](v44);
        operator new();
      }

      (*(*v17 + 72))(&v32, v17, v27);
LABEL_4:
      AGCModule<AGX::Impl::DynamicLibraryKey>::AGCModule(&v37, a2, a3, &v32);
    }

    AGCError::logError(a11, "Unsupported function script.", v26);
  }

  else
  {
    std::to_string(&v32, v12);
    v19 = std::string::insert(&v32, 0, "Unknown AGC target for CPU subtype: ");
    v21 = v19->__r_.__value_.__r.__words[2];
    v37 = *&v19->__r_.__value_.__l.__data_;
    v38 = v21;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v22 = SHIBYTE(v38);
    v23 = v37;
    if (v38 >= 0)
    {
      v24 = &v37;
    }

    else
    {
      v24 = v37;
    }

    AGCError::logError(a11, v24, v20);
    if (v22 < 0)
    {
      operator delete(v23);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t Air::FunctionScript::function_as_visible(Air::FunctionScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 5) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t Air::FunctionScript::function_as_intersection(Air::FunctionScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 6) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AGCModule<AGX::Impl::UserIntersectionProgramKey>::compileLLVMObject(uint64_t a1, unsigned int a2, void *a3, void *a4, char *a5)
{
  v68 = *MEMORY[0x277D85DE8];
  mach_absolute_time();
  v11 = *AGCPerThreadContext::getTargetContext(a2);
  if (!v11)
  {
    v22 = "Failed to initialize AGX backend for target architecture.";
LABEL_46:
    AGCError::logError(a5, v22, v10);
LABEL_47:
    v38 = 0;
    goto LABEL_77;
  }

  *(v11 + 1953) = 0;
  v12 = *(a1 + 88);
  if (v12)
  {
    (*(*v12 + 24))(&v63);
    if (BYTE8(v63))
    {
      v13 = v63;
      *&v63 = 0;
      v60 = v13;
      llvm::toString(v65, &v60);
      v14 = std::string::insert(v65, 0, "Error parsing bitcode file: ");
      v16 = v14->__r_.__value_.__r.__words[2];
      *c.count = *&v14->__r_.__value_.__l.__data_;
      *&c.hash[2] = v16;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v17 = SHIBYTE(c.hash[3]);
      v18 = *c.count;
      if ((c.hash[3] & 0x80000000) == 0)
      {
        p_c = &c;
      }

      else
      {
        p_c = *c.count;
      }

      AGCError::logError(a5, p_c, v15);
      if (v17 < 0)
      {
        operator delete(v18);
      }

      if ((v65[23] & 0x80000000) != 0)
      {
        operator delete(*v65);
      }

      if (v60)
      {
        (*(*v60 + 8))(v60);
      }

      v20 = 0;
      v21 = 0;
    }

    else
    {
      v20 = v63;
      v66 = 260;
      *v65 = v63 + 216;
      MEMORY[0x20F330F20](&c, v65);
      if (c.hash[4] == 49 && c.hash[6] == 1 && (AGCOSVersion::AGCOSVersion(v65, &c), pluginSupportsOSVersion(*v65)) && ((llvm::Triple::getEnvironmentName(&c), !v23) || c.wbuf[0] == 21))
      {
        AGCTargetOS::AGCTargetOS(v65, &c);
        v21 = 1;
      }

      else
      {
        std::operator+<char>();
        v25 = v65[23];
        v26 = *v65;
        if (v65[23] >= 0)
        {
          v27 = v65;
        }

        else
        {
          v27 = *v65;
        }

        AGCError::logError(a5, v27, v24);
        if (v25 < 0)
        {
          operator delete(v26);
        }

        v21 = 0;
      }

      if (SHIBYTE(c.hash[3]) < 0)
      {
        operator delete(*c.count);
      }
    }

    if (BYTE8(v63))
    {
      v28 = v63;
      *&v63 = 0;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }
    }

    if (!v21)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v20 = 0;
  }

  v29 = (**a1)(a1, v11, a1 + 80, v20);
  if (!v29)
  {
    v22 = "Cannot create AGC LLVM object.";
    goto LABEL_46;
  }

  v31 = v29;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v30)) != 0 && *Value != 48 && (v33 = atoi(Value), v33))
  {
    AGCPrinterFactory::Get(v33);
    v34 = (*(*v31 + 48))(v31);
    std::string::basic_string[abi:nn200100]<0>(v58, v34);
    (*(*v31 + 40))(__p, v31);
    if (*(a1 + 128) == 1)
    {
      v35 = *(a1 + 112);
      v63 = *(a1 + 96);
      v64 = v35;
    }

    else
    {
      llvm::SHA256::SHA256(&v61);
      v50 = *(a1 + 88);
      if (v50)
      {
        (*(*v50 + 32))(v50, &v61);
      }

      memset(v65, 0, sizeof(v65));
      CC_SHA256_Init(&c);
      (**(a1 + 8))(a1 + 8, &c);
      CC_SHA256_Final(v65, &c);
      llvm::SHA256::update();
      llvm::SHA256::final(&c, &v61);
      v51 = *(a1 + 128);
      v52 = *&c.hash[2];
      *(a1 + 96) = *c.count;
      *(a1 + 112) = v52;
      if ((v51 & 1) == 0)
      {
        *(a1 + 128) = 1;
      }

      v53 = *(a1 + 112);
      v63 = *(a1 + 96);
      v64 = v53;
      llvm::SHA256::~SHA256(&v61);
    }

    *c.count = v63;
    *&c.hash[2] = v64;
    LOBYTE(c.hash[6]) = 1;
    AGCPrinterFactory::createObjectPrinter(v65, 0, v58, __p, &c);
    v37 = *v65;
    if (v57 < 0)
    {
      operator delete(__p[0]);
    }

    if (v59 < 0)
    {
      operator delete(v58[0]);
    }

    v36 = v37;
  }

  else
  {
    v36 = 0;
    v37 = *(v11 + 2032);
  }

  (*(*v31 + 64))(v31, v37);
  if ((*(*v31 + 16))(v31))
  {
    memset(&c, 0, 32);
    v61 = 0;
    v62[0] = &unk_2825BE930;
    v62[1] = a1;
    v62[3] = v62;
    *&v63 = 0;
    v38 = (*(*v31 + 24))(v31, &v63, &v61, &c, v62);
    std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](v62);
    if (v38)
    {
      *a3 = v63;
      *a4 = v61;
    }

    else
    {
      std::string::basic_string[abi:nn200100]<0>(v65, "Error occurred composing compiler reply.");
      if ((v65[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v54, *v65, *&v65[8]);
      }

      else
      {
        v54 = *v65;
      }

      v42 = &v54;
      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = v54.__r_.__value_.__r.__words[0];
      }

      AGCTargetPrinter::printMessage(*(v31 + 1696), "** Compilation failed with error: %s **", v42);
      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v54.__r_.__value_.__l.__data_);
      }

      v44 = v65[23];
      v45 = *v65;
      if (v65[23] >= 0)
      {
        v46 = v65;
      }

      else
      {
        v46 = *v65;
      }

      AGCError::logError(a5, v46, v43);
      if (v44 < 0)
      {
        operator delete(v45);
      }
    }
  }

  else
  {
    if (*(v31 + 1679) < 0)
    {
      std::string::__init_copy_ctor_external(&v55, *(v31 + 1656), *(v31 + 1664));
    }

    else
    {
      v55 = *(v31 + 1656);
    }

    v39 = &v55;
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v39 = v55.__r_.__value_.__r.__words[0];
    }

    AGCTargetPrinter::printMessage(*(v31 + 1696), "** Compilation failed with error: %s **", v39);
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (*(v31 + 1679) >= 0)
    {
      v41 = (v31 + 1656);
    }

    else
    {
      v41 = *(v31 + 1656);
    }

    AGCError::logError(a5, v41, v40);
    v38 = 0;
  }

  if (v36)
  {
    v47 = *v36;
    if (*v36 && v47 != MEMORY[0x277D82670])
    {
      (*(*v47 + 8))(v47);
      *v36 = 0;
    }

    MEMORY[0x20F331DC0](v36, 0x1020C409DFBF432);
  }

  (*(*v31 + 8))(v31);
LABEL_77:
  v48 = *MEMORY[0x277D85DE8];
  return v38;
}

void ProgramKey<(_AGCStreamToken)7,(AGX::DriverShaderCompilationMode)0>::serialize(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = (a1 + 16);
  *(a1 + 24) = *(a1 + 16);
  v7 = *(a1 + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](a1 + 16, &v7);
  v8 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v8);
  v6 = *v5;
  *a2 = *v5;
  *a3 = v5[1] - v6;
}

void AGX::Impl::UserIntersectionProgramKey::serialize(AGX::Impl::UserIntersectionProgramKey *this, std::vector<unsigned int>::pointer *a2, unint64_t *a3)
{
  v5 = (this + 16);
  *(this + 3) = *(this + 2);
  v9 = *(this + 8) | 0x100;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](this + 16, &v9);
  v6 = v5->__end_ - v5->__begin_;
  std::vector<unsigned int>::resize(v5, (v6 >> 2) + 2);
  v7 = (v5->__begin_ + v6);
  *v7 = ((LODWORD(v5->__end_) - v5->__begin_) >> 2 << 8) | 0x54;
  v7[1] = v5[1].__begin_;
  v10 = 96;
  std::vector<flatbuffers::Offset<AGCCodeTranslator::VertexShaderOutIterator>>::push_back[abi:nn200100](v5, &v10);
  begin = v5->__begin_;
  *a2 = v5->__begin_;
  *a3 = v5->__end_ - begin;
}

uint64_t std::__function::__func<AGCModule<AGX::Impl::UserIntersectionProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1},std::allocator<AGCModule<AGX::Impl::UserIntersectionProgramKey>::compileLLVMObject(AGCTargetContext *,char **,unsigned long *,char **,char **,unsigned long *)::{lambda(AGCDeserializedReply const&)#1}>,void ()(AGCDeserializedReply const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2825BE930;
  a2[1] = v2;
  return result;
}

void *std::vector<MTLUINT256_t>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<MTLUINT256_t>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 5);
  }

  return result;
}

void std::vector<MTLUINT256_t>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t AIRNTEmitBuiltinExecutableImage(int a1, unsigned int a2, AGCTarget *this, int *a4, uint64_t a5, void *a6, void *a7, char *a8)
{
  v12 = this;
  v193 = *MEMORY[0x277D85DE8];
  v13 = AGCTarget::CPUSubtypeToTargetArch(this, a2, this);
  if (!v13)
  {
    std::to_string(&v184, v12);
    v25 = std::string::insert(&v184, 0, "Unknown AGC target for CPU subtype: ");
    v27 = v25->__r_.__value_.__r.__words[2];
    v171 = *&v25->__r_.__value_.__l.__data_;
    v172 = v27;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    v28 = SHIBYTE(v172);
    v29 = v171;
    if (v172 >= 0)
    {
      v30 = &v171;
    }

    else
    {
      v30 = v171;
    }

    AGCError::logError(a8, v30, v26);
    if (v28 < 0)
    {
      operator delete(v29);
    }

    if (SHIBYTE(v184.hash[3]) < 0)
    {
      operator delete(*v184.count);
    }

    goto LABEL_56;
  }

  v14 = v13;
  TargetContext = AGCNativeTranslator::getTargetContext(v13);
  v16 = *AGCNativeTranslator::getTargetContext(v14);
  if (!v16)
  {
    v31 = "AGX key factory does not exist for target architecture.";
LABEL_55:
    AGCError::logError(a8, v31, v17);
LABEL_56:
    v42 = 0;
    goto LABEL_57;
  }

  v18 = (a4 - *a4);
  v19 = *v18;
  if (v19 < 9 || !v18[4])
  {
    goto LABEL_54;
  }

  v20 = v19 >= 0xB && *(a4 + v18[4]) == 1;
  if (v20 && v18[5])
  {
    v21 = (a4 + v18[5] + *(a4 + v18[5]));
    v22 = (v21 - *v21);
    if (*v22 >= 5u)
    {
      v23 = v22[2];
      if (v23)
      {
        v24 = v21 + v23 + *(v21 + v23);
      }
    }

    (*(*v16 + 96))(&v187);
    v162 = *&v187.hash[2];
    v54 = *&v187.hash[2];
    memset(&v187.hash[2], 0, 24);
    *&v171 = &unk_2825BE1E0;
    *(&v171 + 1) = &unk_2825BE170;
    LODWORD(v172) = v187.hash[0];
    v173 = 0;
    v174 = 0;
    v175 = 0;
    v55 = *(&v54 + 1) - v54;
    if (*(&v54 + 1) != v54)
    {
      if (!((v55 >> 2) >> 62))
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v55 >> 2);
      }

      goto LABEL_332;
    }

    *(&v171 + 1) = &unk_2825BF770;
    v176 = *v187.wbuf;
    *v177 = *&v187.wbuf[4];
    *&v177[16] = *&v187.wbuf[8];
    MEMORY[0x20F32FFB0](&v177[32]);
    *&v177[40] = 0;
    LOBYTE(v178) = 0;
    LOBYTE(v180) = 0;
    *&v171 = &unk_2825BE1B0;
    if (v162)
    {
      operator delete(v162);
    }

    v56 = *(TargetContext + 8);
    mach_absolute_time();
    v42 = *AGCPerThreadContext::getTargetContext(v56);
    if (!v42)
    {
      AGCError::logError(a8, "Failed to initialize AGX backend for target architecture.", v57);
LABEL_226:
      v137 = *&v177[40];
      *&v171 = &unk_2825BE1E0;
      *&v177[40] = 0;
      if (v137)
      {
        (*(*v137 + 8))(v137);
      }

      llvm::LLVMContext::~LLVMContext(&v177[32]);
      *(&v171 + 1) = &unk_2825BE170;
      if (v173)
      {
        v174 = v173;
        operator delete(v173);
      }

      v138 = &unk_2825BE170;
      goto LABEL_231;
    }

    *(v42 + 1953) = 0;
    if (*&v177[40])
    {
      (*(**&v177[40] + 24))(&v188);
      if (BYTE8(v188))
      {
        v58 = v188;
        *&v188 = 0;
        v170 = v58;
        llvm::toString(&v190, &v170);
        v59 = std::string::insert(&v190, 0, "Error parsing bitcode file: ");
        v61 = v59->__r_.__value_.__r.__words[2];
        *v184.count = *&v59->__r_.__value_.__l.__data_;
        *&v184.hash[2] = v61;
        v59->__r_.__value_.__l.__size_ = 0;
        v59->__r_.__value_.__r.__words[2] = 0;
        v59->__r_.__value_.__r.__words[0] = 0;
        v62 = SHIBYTE(v184.hash[3]);
        v63 = *v184.count;
        if ((v184.hash[3] & 0x80000000) == 0)
        {
          v64 = &v184;
        }

        else
        {
          v64 = *v184.count;
        }

        AGCError::logError(a8, v64, v60);
        if (v62 < 0)
        {
          operator delete(v63);
        }

        if (SBYTE7(v191) < 0)
        {
          operator delete(v190);
        }

        if (v170)
        {
          (*(*v170 + 8))(v170);
        }

        v65 = 0;
        v66 = 0;
      }

      else
      {
        v65 = v188;
        v192 = 260;
        *&v190 = v188 + 216;
        MEMORY[0x20F330F20](&v184, &v190);
        if (v184.hash[4] == 49 && v184.hash[6] == 1 && (AGCOSVersion::AGCOSVersion(&v190, &v184), pluginSupportsOSVersion(v190)) && ((llvm::Triple::getEnvironmentName(&v184), !v80) || v184.wbuf[0] == 21))
        {
          AGCTargetOS::AGCTargetOS(&v190, &v184);
          v66 = 1;
        }

        else
        {
          std::operator+<char>();
          v82 = SBYTE7(v191);
          v83 = v190;
          if ((SBYTE7(v191) & 0x80u) == 0)
          {
            v84 = &v190;
          }

          else
          {
            v84 = v190;
          }

          AGCError::logError(a8, v84, v81);
          if (v82 < 0)
          {
            operator delete(v83);
          }

          v66 = 0;
        }

        if (SHIBYTE(v184.hash[3]) < 0)
        {
          operator delete(*v184.count);
        }
      }

      if (BYTE8(v188))
      {
        v85 = v188;
        *&v188 = 0;
        if (v85)
        {
          (*(*v85 + 8))(v85);
        }
      }

      if (!v66)
      {
LABEL_127:
        v42 = 0;
        goto LABEL_226;
      }
    }

    else
    {
      v65 = 0;
    }

    v86 = (*v171)(&v171, v42, &v177[32], v65);
    if (v86)
    {
      v89 = v86;
      {
        AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      }

      if (AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v87)) != 0 && *Value != 48 && (v91 = atoi(Value), v91))
      {
        AGCPrinterFactory::Get(v91);
        v92 = (*(*v89 + 48))(v89);
        std::string::basic_string[abi:nn200100]<0>(v168, v92);
        (*(*v89 + 40))(v166, v89);
        if (v180 == 1)
        {
          v188 = v178;
          v189 = v179;
        }

        else
        {
          llvm::SHA256::SHA256(&v163);
          if (*&v177[40])
          {
            (*(**&v177[40] + 32))(*&v177[40], &v163);
          }

          v190 = 0u;
          v191 = 0u;
          CC_SHA256_Init(&v184);
          (**(&v171 + 1))(&v171 + 8, &v184);
          CC_SHA256_Final(&v190, &v184);
          llvm::SHA256::update();
          llvm::SHA256::final(&v184, &v163);
          v178 = *v184.count;
          v179 = *&v184.hash[2];
          if ((v180 & 1) == 0)
          {
            LOBYTE(v180) = 1;
          }

          v188 = v178;
          v189 = v179;
          llvm::SHA256::~SHA256(&v163);
        }

        *v184.count = v188;
        *&v184.hash[2] = v189;
        LOBYTE(v184.hash[6]) = 1;
        AGCPrinterFactory::createObjectPrinter(&v190, 0, v168, v166, &v184);
        v94 = v190;
        if (v167 < 0)
        {
          operator delete(v166[0]);
        }

        if (v169 < 0)
        {
          operator delete(v168[0]);
        }

        v93 = v94;
      }

      else
      {
        v93 = 0;
        v94 = *(v42 + 2032);
      }

      (*(*v89 + 64))(v89, v94);
      if ((*(*v89 + 16))(v89))
      {
        v164 = 0;
        v165 = 0;
        memset(&v184, 0, 32);
        *&v190 = &unk_2825BE978;
        *(&v190 + 1) = &v171;
        *(&v191 + 1) = &v190;
        v42 = (*(*v89 + 24))(v89, &v165, &v164, &v184, &v190);
        std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](&v190);
        if (v42)
        {
          v95 = v164;
          *a6 = v165;
          *a7 = v95;
        }

        else
        {
          std::string::basic_string[abi:nn200100]<0>(&v188, "Error occurred composing compiler reply.");
          if (SBYTE7(v189) < 0)
          {
            std::string::__init_copy_ctor_external(&v163, v188, *(&v188 + 1));
          }

          else
          {
            *&v163.__r_.__value_.__l.__data_ = v188;
            v163.__r_.__value_.__r.__words[2] = v189;
          }

          v131 = &v163;
          if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v131 = v163.__r_.__value_.__r.__words[0];
          }

          AGCTargetPrinter::printMessage(*(v89 + 1696), "** Compilation failed with error: %s **", v131);
          if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v163.__r_.__value_.__l.__data_);
          }

          v133 = SBYTE7(v189);
          v134 = v188;
          if ((SBYTE7(v189) & 0x80u) == 0)
          {
            v135 = &v188;
          }

          else
          {
            v135 = v188;
          }

          AGCError::logError(a8, v135, v132);
          if (v133 < 0)
          {
            operator delete(v134);
          }
        }
      }

      else
      {
        if (*(v89 + 1679) < 0)
        {
          std::string::__init_copy_ctor_external(&v184, *(v89 + 1656), *(v89 + 1664));
        }

        else
        {
          *v184.count = *(v89 + 1656);
          *&v184.hash[2] = *(v89 + 1672);
        }

        v112 = &v184;
        if ((v184.hash[3] & 0x80000000) != 0)
        {
          v112 = *v184.count;
        }

        AGCTargetPrinter::printMessage(*(v89 + 1696), "** Compilation failed with error: %s **", v112);
        if (SHIBYTE(v184.hash[3]) < 0)
        {
          operator delete(*v184.count);
        }

        if (*(v89 + 1679) >= 0)
        {
          v114 = (v89 + 1656);
        }

        else
        {
          v114 = *(v89 + 1656);
        }

        AGCError::logError(a8, v114, v113);
        v42 = 0;
      }

      if (v93)
      {
        v136 = *v93;
        if (*v93 && v136 != MEMORY[0x277D82670])
        {
          (*(*v136 + 8))(v136);
          *v93 = 0;
        }

        MEMORY[0x20F331DC0](v93, 0x1020C409DFBF432);
      }

      (*(*v89 + 8))(v89);
      goto LABEL_226;
    }

    AGCError::logError(a8, "Cannot create AGC LLVM object.", v88);
    goto LABEL_127;
  }

  if (!v18[4])
  {
LABEL_54:
    v31 = "Unsupported driver shader script.";
    goto LABEL_55;
  }

  v32 = v19 >= 0xB && *(a4 + v18[4]) == 2;
  if (!v32 || !v18[5])
  {
    if (v18[4])
    {
      if (v19 >= 0xB && *(a4 + v18[4]) == 3)
      {
        v37 = v18[5];
        if (v37)
        {
          v38 = *(a4 + v37);
          (*(*v16 + 112))(&v187);
          *__p = *&v187.hash[2];
          memset(&v187.hash[2], 0, 24);
          *&v171 = &unk_2825BE2E0;
          *(&v171 + 1) = &unk_2825BE270;
          LODWORD(v172) = v187.hash[0];
          v174 = 0;
          v175 = 0;
          v173 = 0;
          v39 = __p[1] - __p[0];
          if (__p[1] != __p[0])
          {
            if (!((v39 >> 2) >> 62))
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v39 >> 2);
            }

            goto LABEL_332;
          }

          *(&v171 + 1) = &unk_2825BF830;
          LODWORD(v176) = v187.wbuf[0];
          MEMORY[0x20F32FFB0](&v176 + 8);
          *v177 = 0;
          v177[8] = 0;
          v177[40] = 0;
          *&v171 = &unk_2825BE2B0;
          if (__p[0])
          {
            operator delete(__p[0]);
          }

          v40 = *(TargetContext + 8);
          mach_absolute_time();
          v42 = *AGCPerThreadContext::getTargetContext(v40);
          if (!v42)
          {
            AGCError::logError(a8, "Failed to initialize AGX backend for target architecture.", v41);
LABEL_316:
            v159 = *v177;
            *&v171 = &unk_2825BE2E0;
            *v177 = 0;
            if (v159)
            {
              (*(*v159 + 8))(v159);
            }

            llvm::LLVMContext::~LLVMContext((&v176 + 8));
            *(&v171 + 1) = &unk_2825BE270;
            if (v173)
            {
              v174 = v173;
              operator delete(v173);
            }

            v138 = &unk_2825BE270;
LABEL_231:
            *v187.count = v138;
            v139 = *&v187.hash[2];
            if (*&v187.hash[2])
            {
              *&v187.hash[4] = *&v187.hash[2];
LABEL_279:
              operator delete(v139);
              goto LABEL_57;
            }

            goto LABEL_57;
          }

          *(v42 + 1953) = 0;
          if (*v177)
          {
            (*(**v177 + 24))(&v188);
            if (BYTE8(v188))
            {
              v43 = v188;
              *&v188 = 0;
              v170 = v43;
              llvm::toString(&v190, &v170);
              v44 = std::string::insert(&v190, 0, "Error parsing bitcode file: ");
              v46 = v44->__r_.__value_.__r.__words[2];
              *v184.count = *&v44->__r_.__value_.__l.__data_;
              *&v184.hash[2] = v46;
              v44->__r_.__value_.__l.__size_ = 0;
              v44->__r_.__value_.__r.__words[2] = 0;
              v44->__r_.__value_.__r.__words[0] = 0;
              v47 = SHIBYTE(v184.hash[3]);
              v48 = *v184.count;
              if ((v184.hash[3] & 0x80000000) == 0)
              {
                v49 = &v184;
              }

              else
              {
                v49 = *v184.count;
              }

              AGCError::logError(a8, v49, v45);
              if (v47 < 0)
              {
                operator delete(v48);
              }

              if (SBYTE7(v191) < 0)
              {
                operator delete(v190);
              }

              if (v170)
              {
                (*(*v170 + 8))(v170);
              }

              v50 = 0;
              v51 = 0;
            }

            else
            {
              v50 = v188;
              v192 = 260;
              *&v190 = v188 + 216;
              MEMORY[0x20F330F20](&v184, &v190);
              if (v184.hash[4] == 49 && v184.hash[6] == 1 && (AGCOSVersion::AGCOSVersion(&v190, &v184), pluginSupportsOSVersion(v190)) && ((llvm::Triple::getEnvironmentName(&v184), !v115) || v184.wbuf[0] == 21))
              {
                AGCTargetOS::AGCTargetOS(&v190, &v184);
                v51 = 1;
              }

              else
              {
                std::operator+<char>();
                v117 = SBYTE7(v191);
                v118 = v190;
                if ((SBYTE7(v191) & 0x80u) == 0)
                {
                  v119 = &v190;
                }

                else
                {
                  v119 = v190;
                }

                AGCError::logError(a8, v119, v116);
                if (v117 < 0)
                {
                  operator delete(v118);
                }

                v51 = 0;
              }

              if (SHIBYTE(v184.hash[3]) < 0)
              {
                operator delete(*v184.count);
              }
            }

            if (BYTE8(v188))
            {
              v120 = v188;
              *&v188 = 0;
              if (v120)
              {
                (*(*v120 + 8))(v120);
              }
            }

            if (!v51)
            {
LABEL_207:
              v42 = 0;
              goto LABEL_316;
            }
          }

          else
          {
            v50 = 0;
          }

          v121 = (*v171)(&v171, v42, &v176 + 8, v50);
          if (v121)
          {
            v124 = v121;
            {
              AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
            }

            if (AGCEnv::isEnabled(void)::is_internal == 1 && (v125 = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v122)) != 0 && *v125 != 48 && (v126 = atoi(v125), v126))
            {
              AGCPrinterFactory::Get(v126);
              v127 = (*(*v124 + 48))(v124);
              std::string::basic_string[abi:nn200100]<0>(v168, v127);
              (*(*v124 + 40))(v166, v124);
              if (v177[40] == 1)
              {
                v188 = *&v177[8];
                v189 = *&v177[24];
              }

              else
              {
                llvm::SHA256::SHA256(&v163);
                if (*v177)
                {
                  (*(**v177 + 32))(*v177, &v163);
                }

                v190 = 0u;
                v191 = 0u;
                CC_SHA256_Init(&v184);
                (**(&v171 + 1))(&v171 + 8, &v184);
                CC_SHA256_Final(&v190, &v184);
                llvm::SHA256::update();
                llvm::SHA256::final(&v184, &v163);
                *&v177[8] = *v184.count;
                *&v177[24] = *&v184.hash[2];
                if ((v177[40] & 1) == 0)
                {
                  v177[40] = 1;
                }

                v188 = *&v177[8];
                v189 = *&v177[24];
                llvm::SHA256::~SHA256(&v163);
              }

              *v184.count = v188;
              *&v184.hash[2] = v189;
              LOBYTE(v184.hash[6]) = 1;
              AGCPrinterFactory::createObjectPrinter(&v190, 0, v168, v166, &v184);
              v129 = v190;
              if (v167 < 0)
              {
                operator delete(v166[0]);
              }

              if (v169 < 0)
              {
                operator delete(v168[0]);
              }

              v128 = v129;
            }

            else
            {
              v128 = 0;
              v129 = *(v42 + 2032);
            }

            (*(*v124 + 64))(v124, v129);
            if ((*(*v124 + 16))(v124))
            {
              v164 = 0;
              v165 = 0;
              memset(&v184, 0, 32);
              *&v190 = &unk_2825BEA08;
              *(&v190 + 1) = &v171;
              *(&v191 + 1) = &v190;
              v42 = (*(*v124 + 24))(v124, &v165, &v164, &v184, &v190);
              std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](&v190);
              if (v42)
              {
                v130 = v164;
                *a6 = v165;
                *a7 = v130;
              }

              else
              {
                std::string::basic_string[abi:nn200100]<0>(&v188, "Error occurred composing compiler reply.");
                if (SBYTE7(v189) < 0)
                {
                  std::string::__init_copy_ctor_external(&v163, v188, *(&v188 + 1));
                }

                else
                {
                  *&v163.__r_.__value_.__l.__data_ = v188;
                  v163.__r_.__value_.__r.__words[2] = v189;
                }

                v153 = &v163;
                if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v153 = v163.__r_.__value_.__r.__words[0];
                }

                AGCTargetPrinter::printMessage(*(v124 + 1696), "** Compilation failed with error: %s **", v153);
                if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v163.__r_.__value_.__l.__data_);
                }

                v155 = SBYTE7(v189);
                v156 = v188;
                if ((SBYTE7(v189) & 0x80u) == 0)
                {
                  v157 = &v188;
                }

                else
                {
                  v157 = v188;
                }

                AGCError::logError(a8, v157, v154);
                if (v155 < 0)
                {
                  operator delete(v156);
                }
              }
            }

            else
            {
              if (*(v124 + 1679) < 0)
              {
                std::string::__init_copy_ctor_external(&v184, *(v124 + 1656), *(v124 + 1664));
              }

              else
              {
                *v184.count = *(v124 + 1656);
                *&v184.hash[2] = *(v124 + 1672);
              }

              v150 = &v184;
              if ((v184.hash[3] & 0x80000000) != 0)
              {
                v150 = *v184.count;
              }

              AGCTargetPrinter::printMessage(*(v124 + 1696), "** Compilation failed with error: %s **", v150);
              if (SHIBYTE(v184.hash[3]) < 0)
              {
                operator delete(*v184.count);
              }

              if (*(v124 + 1679) >= 0)
              {
                v152 = (v124 + 1656);
              }

              else
              {
                v152 = *(v124 + 1656);
              }

              AGCError::logError(a8, v152, v151);
              v42 = 0;
            }

            if (v128)
            {
              v158 = *v128;
              if (*v128 && v158 != MEMORY[0x277D82670])
              {
                (*(*v158 + 8))(v158);
                *v128 = 0;
              }

              MEMORY[0x20F331DC0](v128, 0x1020C409DFBF432);
            }

            (*(*v124 + 8))(v124);
            goto LABEL_316;
          }

          AGCError::logError(a8, "Cannot create AGC LLVM object.", v123);
          goto LABEL_207;
        }
      }
    }

    goto LABEL_54;
  }

  v33 = (a4 + v18[5] + *(a4 + v18[5]));
  v34 = (v33 - *v33);
  if (*v34 >= 5u)
  {
    v35 = v34[2];
    if (v35)
    {
      v36 = v33 + v35 + *(v33 + v35);
    }
  }

  (*(*v16 + 104))(&v184);
  v161 = *&v184.hash[2];
  v67 = *&v184.hash[2];
  memset(&v184.hash[2], 0, 24);
  *&v171 = &unk_2825BE240;
  *(&v171 + 1) = &unk_2825BF7F0;
  LODWORD(v172) = v184.hash[0];
  v174 = 0;
  v175 = 0;
  v173 = 0;
  v68 = *(&v67 + 1) - v67;
  if (*(&v67 + 1) != v67)
  {
    if (!((v68 >> 2) >> 62))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(v68 >> 2);
    }

LABEL_332:
    std::string::__throw_length_error[abi:nn200100]();
  }

  *&v177[16] = *&v184.wbuf[8];
  *&v177[32] = *&v184.wbuf[12];
  v178 = v185;
  *(&v171 + 1) = &unk_2825BF7B0;
  *&v179 = v186;
  v176 = *v184.wbuf;
  *v177 = *&v184.wbuf[4];
  MEMORY[0x20F32FFB0](&v179 + 8);
  v180 = 0;
  LOBYTE(v181) = 0;
  v183 = 0;
  *&v171 = &unk_2825BE210;
  if (v161)
  {
    operator delete(v161);
  }

  v69 = *(TargetContext + 8);
  mach_absolute_time();
  v42 = *AGCPerThreadContext::getTargetContext(v69);
  if (!v42)
  {
    AGCError::logError(a8, "Failed to initialize AGX backend for target architecture.", v70);
    goto LABEL_273;
  }

  *(v42 + 1953) = 0;
  if (v180)
  {
    (*(*v180 + 24))(&v188);
    if (BYTE8(v188))
    {
      v71 = v188;
      *&v188 = 0;
      v170 = v71;
      llvm::toString(&v190, &v170);
      v72 = std::string::insert(&v190, 0, "Error parsing bitcode file: ");
      v74 = v72->__r_.__value_.__r.__words[2];
      *v187.count = *&v72->__r_.__value_.__l.__data_;
      *&v187.hash[2] = v74;
      v72->__r_.__value_.__l.__size_ = 0;
      v72->__r_.__value_.__r.__words[2] = 0;
      v72->__r_.__value_.__r.__words[0] = 0;
      v75 = SHIBYTE(v187.hash[3]);
      v76 = *v187.count;
      if ((v187.hash[3] & 0x80000000) == 0)
      {
        v77 = &v187;
      }

      else
      {
        v77 = *v187.count;
      }

      AGCError::logError(a8, v77, v73);
      if (v75 < 0)
      {
        operator delete(v76);
      }

      if (SBYTE7(v191) < 0)
      {
        operator delete(v190);
      }

      if (v170)
      {
        (*(*v170 + 8))(v170);
      }

      v78 = 0;
      v79 = 0;
    }

    else
    {
      v78 = v188;
      v192 = 260;
      *&v190 = v188 + 216;
      MEMORY[0x20F330F20](&v187, &v190);
      if (v187.hash[4] == 49 && v187.hash[6] == 1 && (AGCOSVersion::AGCOSVersion(&v190, &v187), pluginSupportsOSVersion(v190)) && ((llvm::Triple::getEnvironmentName(&v187), !v96) || v187.wbuf[0] == 21))
      {
        AGCTargetOS::AGCTargetOS(&v190, &v187);
        v79 = 1;
      }

      else
      {
        std::operator+<char>();
        v98 = SBYTE7(v191);
        v99 = v190;
        if ((SBYTE7(v191) & 0x80u) == 0)
        {
          v100 = &v190;
        }

        else
        {
          v100 = v190;
        }

        AGCError::logError(a8, v100, v97);
        if (v98 < 0)
        {
          operator delete(v99);
        }

        v79 = 0;
      }

      if (SHIBYTE(v187.hash[3]) < 0)
      {
        operator delete(*v187.count);
      }
    }

    if (BYTE8(v188))
    {
      v101 = v188;
      *&v188 = 0;
      if (v101)
      {
        (*(*v101 + 8))(v101);
      }
    }

    if (!v79)
    {
      goto LABEL_161;
    }
  }

  else
  {
    v78 = 0;
  }

  v102 = (*v171)(&v171, v42, &v179 + 8, v78);
  if (!v102)
  {
    AGCError::logError(a8, "Cannot create AGC LLVM object.", v104);
LABEL_161:
    v42 = 0;
    goto LABEL_273;
  }

  v105 = v102;
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1 && (v106 = AGCEnv::getValue("AGC_ENABLE_PER_OBJECT_STATUS_FILE", v103)) != 0 && *v106 != 48 && (v107 = atoi(v106), v107))
  {
    AGCPrinterFactory::Get(v107);
    v108 = (*(*v105 + 48))(v105);
    std::string::basic_string[abi:nn200100]<0>(v168, v108);
    (*(*v105 + 40))(v166, v105);
    if (v183 == 1)
    {
      v188 = v181;
      v189 = v182;
    }

    else
    {
      llvm::SHA256::SHA256(&v163);
      if (v180)
      {
        (*(*v180 + 32))(v180, &v163);
      }

      v190 = 0u;
      v191 = 0u;
      CC_SHA256_Init(&v187);
      (**(&v171 + 1))(&v171 + 8, &v187);
      CC_SHA256_Final(&v190, &v187);
      llvm::SHA256::update();
      llvm::SHA256::final(&v187, &v163);
      v181 = *v187.count;
      v182 = *&v187.hash[2];
      if ((v183 & 1) == 0)
      {
        v183 = 1;
      }

      v188 = v181;
      v189 = v182;
      llvm::SHA256::~SHA256(&v163);
    }

    *v187.count = v188;
    *&v187.hash[2] = v189;
    LOBYTE(v187.hash[6]) = 1;
    AGCPrinterFactory::createObjectPrinter(&v190, 0, v168, v166, &v187);
    v110 = v190;
    if (v167 < 0)
    {
      operator delete(v166[0]);
    }

    if (v169 < 0)
    {
      operator delete(v168[0]);
    }

    v109 = v110;
  }

  else
  {
    v109 = 0;
    v110 = *(v42 + 2032);
  }

  (*(*v105 + 64))(v105, v110);
  if ((*(*v105 + 16))(v105))
  {
    v164 = 0;
    v165 = 0;
    memset(&v187, 0, 32);
    *&v190 = &unk_2825BE9C0;
    *(&v190 + 1) = &v171;
    *(&v191 + 1) = &v190;
    v42 = (*(*v105 + 24))(v105, &v165, &v164, &v187, &v190);
    std::__function::__value_func<void ()(AGCDeserializedReply const&)>::~__value_func[abi:nn200100](&v190);
    if (v42)
    {
      v111 = v164;
      *a6 = v165;
      *a7 = v111;
    }

    else
    {
      std::string::basic_string[abi:nn200100]<0>(&v188, "Error occurred composing compiler reply.");
      if (SBYTE7(v189) < 0)
      {
        std::string::__init_copy_ctor_external(&v163, v188, *(&v188 + 1));
      }

      else
      {
        *&v163.__r_.__value_.__l.__data_ = v188;
        v163.__r_.__value_.__r.__words[2] = v189;
      }

      v143 = &v163;
      if ((v163.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v143 = v163.__r_.__value_.__r.__words[0];
      }

      AGCTargetPrinter::printMessage(*(v105 + 1696), "** Compilation failed with error: %s **", v143);
      if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v163.__r_.__value_.__l.__data_);
      }

      v145 = SBYTE7(v189);
      v146 = v188;
      if ((SBYTE7(v189) & 0x80u) == 0)
      {
        v147 = &v188;
      }

      else
      {
        v147 = v188;
      }

      AGCError::logError(a8, v147, v144);
      if (v145 < 0)
      {
        operator delete(v146);
      }
    }
  }

  else
  {
    if (*(v105 + 1679) < 0)
    {
      std::string::__init_copy_ctor_external(&v187, *(v105 + 1656), *(v105 + 1664));
    }

    else
    {
      *v187.count = *(v105 + 1656);
      *&v187.hash[2] = *(v105 + 1672);
    }

    v140 = &v187;
    if ((v187.hash[3] & 0x80000000) != 0)
    {
      v140 = *v187.count;
    }

    AGCTargetPrinter::printMessage(*(v105 + 1696), "** Compilation failed with error: %s **", v140);
    if (SHIBYTE(v187.hash[3]) < 0)
    {
      operator delete(*v187.count);
    }

    if (*(v105 + 1679) >= 0)
    {
      v142 = (v105 + 1656);
    }

    else
    {
      v142 = *(v105 + 1656);
    }

    AGCError::logError(a8, v142, v141);
    v42 = 0;
  }

  if (v109)
  {
    v148 = *v109;
    if (*v109 && v148 != MEMORY[0x277D82670])
    {
      (*(*v148 + 8))(v148);
      *v109 = 0;
    }

    MEMORY[0x20F331DC0](v109, 0x1020C409DFBF432);
  }

  (*(*v105 + 8))(v105);
LABEL_273:
  v149 = v180;
  *&v171 = &unk_2825BE240;
  v180 = 0;
  if (v149)
  {
    (*(*v149 + 8))(v149);
  }

  llvm::LLVMContext::~LLVMContext((&v179 + 8));
  *(&v171 + 1) = &unk_2825BF7F0;
  if (v173)
  {
    v174 = v173;
    operator delete(v173);
  }

  *v184.count = &unk_2825BF7F0;
  v139 = *&v184.hash[2];
  if (*&v184.hash[2])
  {
    *&v184.hash[4] = *&v184.hash[2];
    goto LABEL_279;
  }

LABEL_57:
  v52 = *MEMORY[0x277D85DE8];
  return v42;
}