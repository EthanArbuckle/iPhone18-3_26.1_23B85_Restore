BOOL AGCLLVMGen2TargetLowerer::isImageBlockWrite(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 2064);
  if (!v3)
  {
    return 1;
  }

  v6 = strlen(*(a1 + 2064));
  if (a3 < v6)
  {
    return 0;
  }

  return !v6 || memcmp(a2, v3, v6) == 0;
}

BOOL AGCLLVMGen2TargetLowerer::isTextureWriteFunction(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 2056);
  if (!v3)
  {
    return 1;
  }

  v7 = strlen(*(a1 + 2056));
  if (a3 >= v7 && (!v7 || !memcmp(a2, v3, v7)))
  {
    return 1;
  }

  v8 = *(a1 + 2064);
  if (!v8)
  {
    return 1;
  }

  v9 = strlen(v8);
  if (a3 < v9)
  {
    return 0;
  }

  return !v9 || memcmp(a2, v8, v9) == 0;
}

uint64_t AGCLLVMG13TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v89 = *a2;
  v90 = *(a2 + 16);
  if (v90)
  {
    llvm::MetadataTracking::track();
  }

  v91 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v89);
  if (v90)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v88 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v87);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v88 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v87);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v86 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v85);
  v16 = *(a1 + 200);
  v84 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v83);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v82 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v19, v81);
  v21 = *(a1 + 200);
  v80 = 257;
  v22 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v21, v79);
  v23 = *(a1 + 200);
  v24 = llvm::ConstantInt::get();
  v88 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v22, v24, v87);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v26 = *(a1 + 208);
    v27 = llvm::ConstantInt::get();
    v88 = 257;
    v28 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v27, v87);
    v29 = *(a1 + 208);
    v30 = llvm::ConstantInt::get();
    v86 = 257;
    v31 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v28, v30, v85);
    v32 = *(a1 + 200);
    v84 = 257;
    v33 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v31, v32, v83);
    v34 = *(a1 + 200);
    v35 = llvm::ConstantInt::get();
    v82 = 257;
    v36 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v33, v35, v81);
    v37 = *(a1 + 208);
    v38 = llvm::ConstantInt::get();
    v88 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v87);
    v40 = *(a1 + 208);
    v41 = llvm::ConstantInt::get();
    v86 = 257;
    v42 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v41, v85);
    v43 = *(a1 + 200);
    v84 = 257;
    v44 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v42, v43, v83);
    v45 = *(a1 + 200);
    v46 = llvm::ConstantInt::get();
    v82 = 257;
    v47 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v44, v46, v81);
    v48 = *(a1 + 208);
    v49 = llvm::ConstantInt::get();
    v88 = 257;
    v50 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v49, v87);
    v51 = *(a1 + 208);
    v52 = llvm::ConstantInt::get();
    v86 = 257;
    v53 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v50, v52, v85);
    v54 = *(a1 + 200);
    v84 = 257;
    v55 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v53, v54, v83);
    v56 = *(a1 + 200);
    v57 = llvm::ConstantInt::get();
    v82 = 257;
    v58 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v55, v57, v81);
    v59 = *(a1 + 208);
    v60 = llvm::ConstantInt::get();
    v88 = 257;
    v61 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v60, v87);
    v62 = *(a1 + 208);
    v63 = llvm::ConstantInt::get();
    v86 = 257;
    v64 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v61, v63, v85);
    v65 = *(a1 + 200);
    v84 = 257;
    v66 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v64, v65, v83);
    v67 = *(a1 + 200);
    v68 = llvm::ConstantInt::get();
    v82 = 257;
    v69 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v66, v68, v81);
    v88 = 257;
    v70 = llvm::IRBuilderBase::CreateOr((a1 + 8), v47, v58, v87);
    v88 = 257;
    v71 = llvm::IRBuilderBase::CreateOr((a1 + 8), v70, v69, v87);
    v87[0] = "is_float16_texture";
    v88 = 259;
    v72 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v36, v71, v87);
    v73 = *(a1 + 200);
    v86 = 257;
    v74 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v72, v73, v85);
    v75 = *(a1 + 200);
    v76 = llvm::ConstantInt::get();
    v88 = 257;
    v77 = llvm::IRBuilderBase::CreateShl((a1 + 8), v74, v76, v87);
    v86 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v77, v85);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
}

uint64_t AGCLLVMG13TargetLowerer::buildImageBaseLevelExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v25 = *a2;
  v26 = *(a2 + 16);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v25);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v24 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v23);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v24 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v23);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v22 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v21);
  v16 = *(a1 + 200);
  v20 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v19);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Cast, a4, 0);
}

uint64_t AGCLLVMG13TargetLowerer::buildImageSampleCountExtract(void *a1, uint64_t a2, llvm::Value *a3, uint64_t a4)
{
  v31 = *a2;
  v32 = *(a2 + 16);
  if (v32)
  {
    llvm::MetadataTracking::track();
  }

  v33 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v31);
  if (v32)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[25];
  v9 = a1[26];
  v10 = llvm::ConstantInt::get();
  v30 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v9, a3, v10, v29);
  v28 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, GEP, v27);
  v13 = a1[26];
  v14 = llvm::ConstantInt::get();
  v30 = 257;
  v15 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Load, v14, v29);
  v16 = a1[26];
  v17 = llvm::ConstantInt::get();
  v28 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v15, v17, v27);
  v19 = a1[25];
  v26 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, LShr, v19, v25);
  v21 = a1[25];
  v22 = llvm::ConstantInt::get();
  v30 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 1), v22, Cast, v29);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, Shl, a4, 0);
}

uint64_t AGCLLVMG13TargetLowerer::buildImageMipCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
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

  v8 = *(a1 + 208);
  v36 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v35);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v36 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v35);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v34 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v33);
  v16 = *(a1 + 200);
  v32 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v31);
  v18 = *(a1 + 208);
  v19 = llvm::ConstantInt::get();
  v36 = 257;
  v20 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v19, v35);
  v21 = *(a1 + 208);
  v22 = llvm::ConstantInt::get();
  v34 = 257;
  v23 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v20, v22, v33);
  v24 = *(a1 + 200);
  v32 = 257;
  v25 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v23, v24, v31);
  v36 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), Cast, v25, v35);
  v27 = *(a1 + 200);
  v28 = llvm::ConstantInt::get();
  v34 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Sub, v28, v33);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Add, a4, 0);
}

uint64_t AGCLLVMG13TargetLowerer::buildImageDimensionsExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v120 = *a2;
  v121 = *(a2 + 16);
  if (v121)
  {
    llvm::MetadataTracking::track();
  }

  v122 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v120);
  if (v121)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v119 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v118);
  v10 = *(a1 + 200);
  v11 = *(a1 + 208);
  v12 = llvm::ConstantInt::get();
  v119 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v11, a3, v12, v118);
  v117 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, GEP, v116);
  v15 = *(a1 + 200);
  v16 = *(a1 + 208);
  v17 = llvm::ConstantInt::get();
  v119 = 257;
  v18 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v16, a3, v17, v118);
  v117 = 257;
  v19 = AGCLLVMBuilder::CreateLoad(a1, v18, v116);
  v20 = *(a1 + 208);
  v21 = llvm::ConstantInt::get();
  v119 = 257;
  v22 = llvm::IRBuilderBase::CreateAnd((a1 + 8), Load, v21, v118);
  v23 = *(a1 + 208);
  v24 = llvm::ConstantInt::get();
  v117 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v22, v24, v116);
  v26 = *(a1 + 200);
  v115 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v26, v114);
  v28 = *(a1 + 200);
  v29 = llvm::ConstantInt::get();
  v113 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Cast, v29, v112);
  v31 = *(a1 + 208);
  v32 = llvm::ConstantInt::get();
  v119 = 257;
  v33 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v32, v118);
  v34 = *(a1 + 208);
  v35 = llvm::ConstantInt::get();
  v117 = 257;
  v36 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v33, v35, v116);
  v37 = *(a1 + 200);
  v115 = 257;
  v38 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v36, v37, v114);
  v39 = *(a1 + 208);
  v40 = llvm::ConstantInt::get();
  v119 = 257;
  v41 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v40, v118);
  v42 = *(a1 + 208);
  v43 = llvm::ConstantInt::get();
  v117 = 257;
  v44 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v41, v43, v116);
  v45 = *(a1 + 200);
  v115 = 257;
  v46 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v44, v45, v114);
  v47 = *(a1 + 200);
  v48 = llvm::ConstantInt::get();
  v113 = 257;
  v49 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v46, v48, v112);
  v50 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v49, v38);
  v51 = *(a1 + 208);
  v52 = llvm::ConstantInt::get();
  v119 = 257;
  v53 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v52, v118);
  v54 = *(a1 + 208);
  v55 = llvm::ConstantInt::get();
  v117 = 257;
  v56 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v53, v55, v116);
  v57 = *(a1 + 200);
  v115 = 257;
  v58 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v56, v57, v114);
  v59 = *(a1 + 200);
  v60 = llvm::ConstantInt::get();
  v113 = 257;
  v61 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v58, v60, v112);
  v62 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v61, v38);
  v63 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, v38);
  v64 = *(a1 + 208);
  v65 = llvm::ConstantInt::get();
  v119 = 257;
  v66 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v19, v65, v118);
  v67 = *(a1 + 208);
  v68 = llvm::ConstantInt::get();
  v117 = 257;
  v69 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v66, v68, v116);
  v70 = *(a1 + 200);
  v115 = 257;
  v71 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v69, v70, v114);
  v72 = *(a1 + 200);
  v73 = llvm::ConstantInt::get();
  v113 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 8), v71, v73, v112);
  v74 = *(a1 + 208);
  v75 = llvm::ConstantInt::get();
  v119 = 257;
  v76 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v75, v118);
  v77 = *(a1 + 208);
  v78 = llvm::ConstantInt::get();
  v117 = 257;
  v79 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v76, v78, v116);
  v80 = *(a1 + 200);
  v115 = 257;
  v81 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v79, v80, v114);
  v82 = *(a1 + 208);
  v83 = llvm::ConstantInt::get();
  v119 = 257;
  v84 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v83, v118);
  v85 = *(a1 + 208);
  v86 = llvm::ConstantInt::get();
  v117 = 257;
  v87 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v84, v86, v116);
  v88 = *(a1 + 200);
  v115 = 257;
  v89 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v87, v88, v114);
  v90 = *(a1 + 200);
  v91 = llvm::ConstantInt::get();
  v119 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v81, v91, v118);
  v93 = *(a1 + 200);
  v94 = llvm::ConstantInt::get();
  v117 = 257;
  v95 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v89, v94, v116);
  v115 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 8), ICmp, v95, v114);
  v119 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(*(a1 + 336), v97);
  v119 = 257;
  v99 = *(a1 + 200);
  v100 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), NullValue, v50, v100, v118);
  v119 = 257;
  v102 = *(a1 + 200);
  v103 = llvm::ConstantInt::get();
  v104 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v62, v103, v118);
  v119 = 257;
  v105 = *(a1 + 200);
  v106 = llvm::ConstantInt::get();
  v107 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v104, v63, v106, v118);
  v119 = 257;
  v108 = *(a1 + 200);
  v109 = llvm::ConstantInt::get();
  v110 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v107, Select, v109, v118);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v110, a4, 0);
}

void AGCLLVMGen3TargetLowerer::printAsm(AGCLLVMGen3TargetLowerer *this, const unsigned __int8 *a2, uint64_t a3, const AGCLLVMObject *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = (*(*a4 + 48))(a4);
  snprintf(__str, 0x80uLL, "%s shader %u (driver disassembler)", v7, *(a4 + 1272));
  AGCTargetPrinter::printMessage(*(a4 + 212), "------ Start USC %s -------\n", __str);
  v8 = *(a4 + 212);
  if (AGCTargetPrinter::isValidToPrintMessage(v8))
  {
    printHexDump(*v8, a2, a3, 0x10u, "0x", 1);
  }

  AGCTargetPrinter::printMessage(*(a4 + 212), "\n------- End USC %s --------\n", __str);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t AGCLLVMGen3TargetLowerer::getVertexInputCall(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
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

  (*(*a1 + 448))(a1, a3, a4);
  v8 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, "agc.read_vi.f32", 15, a1[21], a1[25]);
  v9 = a1[25];
  v15[0] = llvm::ConstantInt::get();
  v18 = 257;
  v10 = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v8 + 24), v8, v15, 1, v17);
  if (a4 == 9)
  {
    v11 = a1[25];
    v18 = 257;
    Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 49, v10, v11, v17);
    v13 = a1[24];
    v16 = 257;
    return llvm::IRBuilderBase::CreateCast((a1 + 1), 38, Cast, v13, v15);
  }

  return v10;
}

uint64_t AGCLLVMGen4TargetLowerer::getVertexInputRegister(uint64_t a1, _DWORD *a2, int a3)
{
  if ((a3 - 1) > 8)
  {
    return 0;
  }

  result = dword_20E715E84[a3 - 1];
  if (*a2 <= result)
  {
    *a2 = result + 1;
  }

  return result;
}

uint64_t AGCLLVMGen3TargetLowerer::setLoadStoreCacheControl()
{
  llvm::Function::addFnAttr();
  llvm::Function::addFnAttr();
  llvm::Function::addFnAttr();

  return llvm::Function::addFnAttr();
}

uint64_t AGCLLVMGen2TargetLowerer::forceWritethroughForStores(AGCLLVMGen2TargetLowerer *this, llvm::Function *a2)
{
  llvm::Function::addFnAttr();

  return llvm::Function::addFnAttr();
}

void AGCLLVMG13TargetLowerer::~AGCLLVMG13TargetLowerer(AGCLLVMG13TargetLowerer *this)
{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

void AGCLLVMG14TargetConfig::~AGCLLVMG14TargetConfig(AGCLLVMG14TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);
}

uint64_t AGCLLVMG14TargetLowerer::getF16FormatInfo(uint64_t a1, int a2, uint64_t a3, int a4, char a5, int a6)
{
  v6 = *(a3 + 8) & 0xFE;
  if (a6)
  {
    v7 = a3;
    if (v6 == 18)
    {
      v7 = **(a3 + 16);
    }

    if (a2 == 1)
    {
      v8 = 3;
    }

    else
    {
      v8 = a2;
    }

    if (a2 == 12)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    if (a2 == 13)
    {
      v10 = 15;
    }

    else
    {
      v10 = v9;
    }

    if (a5)
    {
      v10 = a2;
    }

    if (v7 == *(a1 + 168) && a4 != 0)
    {
      a2 = v10;
    }
  }

  if (v6 == 18)
  {
    a3 = **(a3 + 16);
  }

  v13 = a2 == 1 && a3 == *(a1 + 168);
  return v13 | (a2 << 16);
}

void AGCLLVMG14TargetLowerer::createGPUVAMasks(int *a1@<X1>, int a2@<W2>, void *a3@<X8>)
{
  a3[1] = 0;
  v6 = a3 + 1;
  a3[2] = 0;
  *a3 = a3 + 1;
  v7 = *a1;
  v8 = *(a1 - v7);
  if (v8 < 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a1 - v7 + 4);
    if (*(a1 - v7 + 4))
    {
      v9 = (v9 + a1 + *(v9 + a1));
    }
  }

  v10 = *(v9 - *v9 + 12);
  v11 = *(v9 + v10);
  v12 = (v9 + v10 + v11);
  v13 = *v12;
  if (v13)
  {
    v14 = 0;
    v15 = 4 * v13;
    if (a2)
    {
      v16 = -524484864;
    }

    else
    {
      v16 = 65280;
    }

    v17 = v9 + v10 + v11;
    do
    {
      v18 = v12[v14 / 4 + 1];
      v19 = &v17[v14 + v18 - *(&v12[v14 / 4 + 1] + v18)];
      if (*(v19 + 2) >= 7u && (v20 = *(v19 + 5)) != 0)
      {
        v21 = *&v17[v14 + 4 + v18 + v20];
      }

      else
      {
        v21 = 0;
      }

      v68 = v21;
      v69 = &v68;
      *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, v21) + 8) = v16;
      v14 += 4;
    }

    while (v15 != v14);
    v22 = *a1;
    v23 = -v22;
    v8 = *(a1 - v22);
  }

  else
  {
    v23 = -v7;
  }

  v24 = a1 + v23;
  if (v8 < 5)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v24 + 2);
    if (*(v24 + 2))
    {
      v25 = (v25 + a1 + *(v25 + a1));
    }
  }

  v26 = (v25 + *(v25 - *v25 + 8));
  v27 = (v26 + *v26);
  v28 = *v27;
  if (v28)
  {
    v29 = 0;
    v30 = 4 * v28;
    while (1)
    {
      v31 = v27[v29 / 4 + 1];
      v32 = v31 - *(&v27[v29 / 4 + 1] + v31);
      v33 = &v27[v29 / 4] + v32;
      v34 = *(v33 + 2);
      if (v34 < 5)
      {
        break;
      }

      v35 = *(v33 + 4);
      if (!v35)
      {
        v37 = v27 + v31 + v29 + 4;
        v38 = &v27[v29 / 4] + v32;
LABEL_30:
        v39 = v38 + 4;
        if (v34 >= 0xB)
        {
          v40 = *(v39 + 5);
          if (v40)
          {
            v36 = *(v37 + v40);
            goto LABEL_34;
          }
        }

        break;
      }

      if (!*(&v27[v29 / 4 + 1] + v31 + v35))
      {
        v37 = v27 + v31 + v29 + 4;
        v38 = &v27[v29 / 4] + v32;
        goto LABEL_30;
      }

      v29 += 4;
      if (v30 == v29)
      {
        goto LABEL_27;
      }
    }

    v36 = 0;
  }

  else
  {
LABEL_27:
    v36 = -1;
  }

LABEL_34:
  if (v8 < 5)
  {
    v41 = 0;
  }

  else
  {
    v41 = *(v24 + 2);
    if (*(v24 + 2))
    {
      v41 = (v41 + a1 + *(v41 + a1));
    }
  }

  v42 = (v41 + *(v41 - *v41 + 24));
  v43 = (v42 + *v42);
  v44 = *v43;
  if (v44)
  {
    v45 = &v43[v44];
    do
    {
      v46 = v43[1];
      v47 = (++v43 + v46);
      v48 = (v47 - *v47);
      v49 = *v48;
      if (v49 >= 5 && v48[2] && *(v47 + v48[2]) == 110)
      {
        if (v49 >= 7 && (v50 = v48[3]) != 0)
        {
          v51 = *(v47 + v50);
        }

        else
        {
          v51 = 0;
        }

        v68 = v51;
        v52 = (v47 - *v47);
        if (*v52 >= 9u && (v53 = v52[4]) != 0)
        {
          v54 = *(v47 + v53);
        }

        else
        {
          v54 = 0;
        }

        v55 = *v6;
        if (*v6)
        {
          v56 = v6;
          do
          {
            v57 = *(v55 + 28);
            v58 = v57 >= v51;
            v59 = v57 < v51;
            if (v58)
            {
              v56 = v55;
            }

            v55 = *(v55 + 8 * v59);
          }

          while (v55);
          if (v56 != v6 && v51 >= *(v56 + 7))
          {
            v60 = v54 + v36;
            v61 = (v60 << 7) & 0x7F00;
            v62 = (v60 >> 1) ^ ((v60 >> 1) >> 4);
            v63 = (v61 & 0xFFFF7FFF | (((v62 ^ (v62 >> 2) ^ ((v62 ^ (v62 >> 2)) >> 1)) & 1) << 15)) ^ 0x8000;
            if (a2)
            {
              v64 = 0;
              v65 = v63 | 0xBC0000;
              v66 = v65 >> 8;
              v67 = 43;
              do
              {
                v66 ^= ((v66 >> v64 << 31) >> 31) & v67;
                v67 *= 2;
                ++v64;
              }

              while (v64 != 19);
              v63 = v65 & 0x7FFFFFF | ((v66 >> 19) << 27);
            }

            v69 = &v68;
            *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, v51) + 8) = v63;
          }
        }
      }
    }

    while (v43 != v45);
  }
}

uint64_t AGCLLVMG14TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v89 = *a2;
  v90 = *(a2 + 16);
  if (v90)
  {
    llvm::MetadataTracking::track();
  }

  v91 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v89);
  if (v90)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v88 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v87);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v88 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v87);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v86 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v85);
  v16 = *(a1 + 200);
  v84 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v83);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v82 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v19, v81);
  v21 = *(a1 + 200);
  v80 = 257;
  v22 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v21, v79);
  v23 = *(a1 + 200);
  v24 = llvm::ConstantInt::get();
  v88 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v22, v24, v87);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v26 = *(a1 + 208);
    v27 = llvm::ConstantInt::get();
    v88 = 257;
    v28 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v27, v87);
    v29 = *(a1 + 208);
    v30 = llvm::ConstantInt::get();
    v86 = 257;
    v31 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v28, v30, v85);
    v32 = *(a1 + 200);
    v84 = 257;
    v33 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v31, v32, v83);
    v34 = *(a1 + 200);
    v35 = llvm::ConstantInt::get();
    v82 = 257;
    v36 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v33, v35, v81);
    v37 = *(a1 + 208);
    v38 = llvm::ConstantInt::get();
    v88 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v87);
    v40 = *(a1 + 208);
    v41 = llvm::ConstantInt::get();
    v86 = 257;
    v42 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v41, v85);
    v43 = *(a1 + 200);
    v84 = 257;
    v44 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v42, v43, v83);
    v45 = *(a1 + 200);
    v46 = llvm::ConstantInt::get();
    v82 = 257;
    v47 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v44, v46, v81);
    v48 = *(a1 + 208);
    v49 = llvm::ConstantInt::get();
    v88 = 257;
    v50 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v49, v87);
    v51 = *(a1 + 208);
    v52 = llvm::ConstantInt::get();
    v86 = 257;
    v53 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v50, v52, v85);
    v54 = *(a1 + 200);
    v84 = 257;
    v55 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v53, v54, v83);
    v56 = *(a1 + 200);
    v57 = llvm::ConstantInt::get();
    v82 = 257;
    v58 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v55, v57, v81);
    v59 = *(a1 + 208);
    v60 = llvm::ConstantInt::get();
    v88 = 257;
    v61 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v60, v87);
    v62 = *(a1 + 208);
    v63 = llvm::ConstantInt::get();
    v86 = 257;
    v64 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v61, v63, v85);
    v65 = *(a1 + 200);
    v84 = 257;
    v66 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v64, v65, v83);
    v67 = *(a1 + 200);
    v68 = llvm::ConstantInt::get();
    v82 = 257;
    v69 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v66, v68, v81);
    v88 = 257;
    v70 = llvm::IRBuilderBase::CreateOr((a1 + 8), v47, v58, v87);
    v88 = 257;
    v71 = llvm::IRBuilderBase::CreateOr((a1 + 8), v70, v69, v87);
    v87[0] = "is_float16_texture";
    v88 = 259;
    v72 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v36, v71, v87);
    v73 = *(a1 + 200);
    v86 = 257;
    v74 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v72, v73, v85);
    v75 = *(a1 + 200);
    v76 = llvm::ConstantInt::get();
    v88 = 257;
    v77 = llvm::IRBuilderBase::CreateShl((a1 + 8), v74, v76, v87);
    v86 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v77, v85);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
}

uint64_t AGCLLVMG14TargetLowerer::buildImageBaseLevelExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v25 = *a2;
  v26 = *(a2 + 16);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v25);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v24 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v23);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v24 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v23);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v22 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v21);
  v16 = *(a1 + 200);
  v20 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v19);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Cast, a4, 0);
}

uint64_t AGCLLVMG14TargetLowerer::buildImageSampleCountExtract(void *a1, uint64_t a2, llvm::Value *a3, uint64_t a4)
{
  v31 = *a2;
  v32 = *(a2 + 16);
  if (v32)
  {
    llvm::MetadataTracking::track();
  }

  v33 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v31);
  if (v32)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[25];
  v9 = a1[26];
  v10 = llvm::ConstantInt::get();
  v30 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v9, a3, v10, v29);
  v28 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, GEP, v27);
  v13 = a1[26];
  v14 = llvm::ConstantInt::get();
  v30 = 257;
  v15 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Load, v14, v29);
  v16 = a1[26];
  v17 = llvm::ConstantInt::get();
  v28 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v15, v17, v27);
  v19 = a1[25];
  v26 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, LShr, v19, v25);
  v21 = a1[25];
  v22 = llvm::ConstantInt::get();
  v30 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 1), v22, Cast, v29);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, Shl, a4, 0);
}

uint64_t AGCLLVMG14TargetLowerer::buildImageMipCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
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

  v8 = *(a1 + 208);
  v36 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v35);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v36 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v35);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v34 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v33);
  v16 = *(a1 + 200);
  v32 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v31);
  v18 = *(a1 + 208);
  v19 = llvm::ConstantInt::get();
  v36 = 257;
  v20 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v19, v35);
  v21 = *(a1 + 208);
  v22 = llvm::ConstantInt::get();
  v34 = 257;
  v23 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v20, v22, v33);
  v24 = *(a1 + 200);
  v32 = 257;
  v25 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v23, v24, v31);
  v36 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), Cast, v25, v35);
  v27 = *(a1 + 200);
  v28 = llvm::ConstantInt::get();
  v34 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Sub, v28, v33);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Add, a4, 0);
}

uint64_t AGCLLVMG14TargetLowerer::buildImageDimensionsExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v120 = *a2;
  v121 = *(a2 + 16);
  if (v121)
  {
    llvm::MetadataTracking::track();
  }

  v122 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v120);
  if (v121)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v119 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v118);
  v10 = *(a1 + 200);
  v11 = *(a1 + 208);
  v12 = llvm::ConstantInt::get();
  v119 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v11, a3, v12, v118);
  v117 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v14 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v11, GEP, 0, v116);
  v15 = *(a1 + 200);
  v16 = *(a1 + 208);
  v17 = llvm::ConstantInt::get();
  v119 = 257;
  v18 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v16, a3, v17, v118);
  v117 = 257;
  llvm::Type::isOpaquePointerTy(*v18);
  v19 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v16, v18, 0, v116);
  v20 = *(a1 + 208);
  v21 = llvm::ConstantInt::get();
  v119 = 257;
  v22 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v14, v21, v118);
  v23 = *(a1 + 208);
  v24 = llvm::ConstantInt::get();
  v117 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v22, v24, v116);
  v26 = *(a1 + 200);
  v115 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v26, v114);
  v28 = *(a1 + 200);
  v29 = llvm::ConstantInt::get();
  v113 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Cast, v29, v112);
  v31 = *(a1 + 208);
  v32 = llvm::ConstantInt::get();
  v119 = 257;
  v33 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v32, v118);
  v34 = *(a1 + 208);
  v35 = llvm::ConstantInt::get();
  v117 = 257;
  v36 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v33, v35, v116);
  v37 = *(a1 + 200);
  v115 = 257;
  v38 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v36, v37, v114);
  v39 = *(a1 + 208);
  v40 = llvm::ConstantInt::get();
  v119 = 257;
  v41 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v40, v118);
  v42 = *(a1 + 208);
  v43 = llvm::ConstantInt::get();
  v117 = 257;
  v44 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v41, v43, v116);
  v45 = *(a1 + 200);
  v115 = 257;
  v46 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v44, v45, v114);
  v47 = *(a1 + 200);
  v48 = llvm::ConstantInt::get();
  v113 = 257;
  v49 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v46, v48, v112);
  v50 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v49, v38);
  v51 = *(a1 + 208);
  v52 = llvm::ConstantInt::get();
  v119 = 257;
  v53 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v52, v118);
  v54 = *(a1 + 208);
  v55 = llvm::ConstantInt::get();
  v117 = 257;
  v56 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v53, v55, v116);
  v57 = *(a1 + 200);
  v115 = 257;
  v58 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v56, v57, v114);
  v59 = *(a1 + 200);
  v60 = llvm::ConstantInt::get();
  v113 = 257;
  v61 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v58, v60, v112);
  v62 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v61, v38);
  v63 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, v38);
  v64 = *(a1 + 208);
  v65 = llvm::ConstantInt::get();
  v119 = 257;
  v66 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v19, v65, v118);
  v67 = *(a1 + 208);
  v68 = llvm::ConstantInt::get();
  v117 = 257;
  v69 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v66, v68, v116);
  v70 = *(a1 + 200);
  v115 = 257;
  v71 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v69, v70, v114);
  v72 = *(a1 + 200);
  v73 = llvm::ConstantInt::get();
  v113 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 8), v71, v73, v112);
  v74 = *(a1 + 208);
  v75 = llvm::ConstantInt::get();
  v119 = 257;
  v76 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v75, v118);
  v77 = *(a1 + 208);
  v78 = llvm::ConstantInt::get();
  v117 = 257;
  v79 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v76, v78, v116);
  v80 = *(a1 + 200);
  v115 = 257;
  v81 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v79, v80, v114);
  v82 = *(a1 + 208);
  v83 = llvm::ConstantInt::get();
  v119 = 257;
  v84 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v83, v118);
  v85 = *(a1 + 208);
  v86 = llvm::ConstantInt::get();
  v117 = 257;
  v87 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v84, v86, v116);
  v88 = *(a1 + 200);
  v115 = 257;
  v89 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v87, v88, v114);
  v90 = *(a1 + 200);
  v91 = llvm::ConstantInt::get();
  v119 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v81, v91, v118);
  v93 = *(a1 + 200);
  v94 = llvm::ConstantInt::get();
  v117 = 257;
  v95 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v89, v94, v116);
  v115 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 8), ICmp, v95, v114);
  v119 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(*(a1 + 336), v97);
  v119 = 257;
  v99 = *(a1 + 200);
  v100 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), NullValue, v50, v100, v118);
  v119 = 257;
  v102 = *(a1 + 200);
  v103 = llvm::ConstantInt::get();
  v104 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v62, v103, v118);
  v119 = 257;
  v105 = *(a1 + 200);
  v106 = llvm::ConstantInt::get();
  v107 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v104, v63, v106, v118);
  v119 = 257;
  v108 = *(a1 + 200);
  v109 = llvm::ConstantInt::get();
  v110 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v107, Select, v109, v118);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v110, a4, 0);
}

void AGCLLVMG14TargetLowerer::~AGCLLVMG14TargetLowerer(AGCLLVMG14TargetLowerer *this)
{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

uint64_t *AGCLLVMCreateG14TargetConfig(int a1)
{
  {
    v3 = a1;
    a1 = v3;
    if (v4)
    {
      AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14pA0, 65553);
      AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14pA0 = &unk_2825B0C88;
      dword_27C8D8524 = 64;
      __cxa_atexit(AGCLLVMG14TargetConfig::~AGCLLVMG14TargetConfig, &AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14pA0, &dword_20E4E1000);
      a1 = v3;
    }
  }

  {
    v5 = a1;
    a1 = v5;
    if (v6)
    {
      AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14pB0, 196625);
      AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14pB0 = &unk_2825B0C88;
      dword_27C8D849C = 64;
      __cxa_atexit(AGCLLVMG14TargetConfig::~AGCLLVMG14TargetConfig, &AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14pB0, &dword_20E4E1000);
      a1 = v5;
    }
  }

  {
    v7 = a1;
    a1 = v7;
    if (v8)
    {
      AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14gA0, 65554);
      AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14gA0 = &unk_2825B0C88;
      dword_27C8D8634 = 64;
      __cxa_atexit(AGCLLVMG14TargetConfig::~AGCLLVMG14TargetConfig, &AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14gA0, &dword_20E4E1000);
      a1 = v7;
    }
  }

  {
    v9 = a1;
    a1 = v9;
    if (v10)
    {
      AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14gB0, 196626);
      AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14gB0 = &unk_2825B0C88;
      dword_27C8D85AC = 64;
      __cxa_atexit(AGCLLVMG14TargetConfig::~AGCLLVMG14TargetConfig, &AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14gB0, &dword_20E4E1000);
      a1 = v9;
    }
  }

  v1 = &AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14pA0;
  if (a1 == 196625)
  {
    v1 = &AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14pB0;
  }

  if (a1 == 196626)
  {
    v1 = &AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14gB0;
  }

  if (a1 == 65554)
  {
    return &AGCLLVMCreateG14TargetConfig(AGCTargetArch)::g14gA0;
  }

  else
  {
    return v1;
  }
}

void AGCLLVMG14XTargetConfig::~AGCLLVMG14XTargetConfig(AGCLLVMG14XTargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);
}

uint64_t AGCLLVMG14XTargetLowerer::getF16FormatInfo(uint64_t a1, int a2, uint64_t a3, int a4, char a5, int a6)
{
  v6 = *(a3 + 8) & 0xFE;
  if (a6)
  {
    v7 = a3;
    if (v6 == 18)
    {
      v7 = **(a3 + 16);
    }

    if (a2 == 1)
    {
      v8 = 3;
    }

    else
    {
      v8 = a2;
    }

    if (a2 == 12)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    if (a2 == 13)
    {
      v10 = 15;
    }

    else
    {
      v10 = v9;
    }

    if (a5)
    {
      v10 = a2;
    }

    if (v7 == *(a1 + 168) && a4 != 0)
    {
      a2 = v10;
    }
  }

  if (v6 == 18)
  {
    a3 = **(a3 + 16);
  }

  v13 = a2 == 1 && a3 == *(a1 + 168);
  return v13 | (a2 << 16);
}

void AGCLLVMG14XTargetLowerer::createGPUVAMasks(int *a1@<X1>, int a2@<W2>, void *a3@<X8>)
{
  a3[1] = 0;
  v6 = a3 + 1;
  a3[2] = 0;
  *a3 = a3 + 1;
  v7 = *a1;
  v8 = *(a1 - v7);
  if (v8 < 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a1 - v7 + 4);
    if (*(a1 - v7 + 4))
    {
      v9 = (v9 + a1 + *(v9 + a1));
    }
  }

  v10 = *(v9 - *v9 + 12);
  v11 = *(v9 + v10);
  v12 = (v9 + v10 + v11);
  v13 = *v12;
  if (v13)
  {
    v14 = 0;
    v15 = 4 * v13;
    if (a2)
    {
      v16 = -524484864;
    }

    else
    {
      v16 = 65280;
    }

    v17 = v9 + v10 + v11;
    do
    {
      v18 = v12[v14 / 4 + 1];
      v19 = &v17[v14 + v18 - *(&v12[v14 / 4 + 1] + v18)];
      if (*(v19 + 2) >= 7u && (v20 = *(v19 + 5)) != 0)
      {
        v21 = *&v17[v14 + 4 + v18 + v20];
      }

      else
      {
        v21 = 0;
      }

      v68 = v21;
      v69 = &v68;
      *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, v21) + 8) = v16;
      v14 += 4;
    }

    while (v15 != v14);
    v22 = *a1;
    v23 = -v22;
    v8 = *(a1 - v22);
  }

  else
  {
    v23 = -v7;
  }

  v24 = a1 + v23;
  if (v8 < 5)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v24 + 2);
    if (*(v24 + 2))
    {
      v25 = (v25 + a1 + *(v25 + a1));
    }
  }

  v26 = (v25 + *(v25 - *v25 + 8));
  v27 = (v26 + *v26);
  v28 = *v27;
  if (v28)
  {
    v29 = 0;
    v30 = 4 * v28;
    while (1)
    {
      v31 = v27[v29 / 4 + 1];
      v32 = v31 - *(&v27[v29 / 4 + 1] + v31);
      v33 = &v27[v29 / 4] + v32;
      v34 = *(v33 + 2);
      if (v34 < 5)
      {
        break;
      }

      v35 = *(v33 + 4);
      if (!v35)
      {
        v37 = v27 + v31 + v29 + 4;
        v38 = &v27[v29 / 4] + v32;
LABEL_30:
        v39 = v38 + 4;
        if (v34 >= 0xB)
        {
          v40 = *(v39 + 5);
          if (v40)
          {
            v36 = *(v37 + v40);
            goto LABEL_34;
          }
        }

        break;
      }

      if (!*(&v27[v29 / 4 + 1] + v31 + v35))
      {
        v37 = v27 + v31 + v29 + 4;
        v38 = &v27[v29 / 4] + v32;
        goto LABEL_30;
      }

      v29 += 4;
      if (v30 == v29)
      {
        goto LABEL_27;
      }
    }

    v36 = 0;
  }

  else
  {
LABEL_27:
    v36 = -1;
  }

LABEL_34:
  if (v8 < 5)
  {
    v41 = 0;
  }

  else
  {
    v41 = *(v24 + 2);
    if (*(v24 + 2))
    {
      v41 = (v41 + a1 + *(v41 + a1));
    }
  }

  v42 = (v41 + *(v41 - *v41 + 24));
  v43 = (v42 + *v42);
  v44 = *v43;
  if (v44)
  {
    v45 = &v43[v44];
    do
    {
      v46 = v43[1];
      v47 = (++v43 + v46);
      v48 = (v47 - *v47);
      v49 = *v48;
      if (v49 >= 5 && v48[2] && *(v47 + v48[2]) == 110)
      {
        if (v49 >= 7 && (v50 = v48[3]) != 0)
        {
          v51 = *(v47 + v50);
        }

        else
        {
          v51 = 0;
        }

        v68 = v51;
        v52 = (v47 - *v47);
        if (*v52 >= 9u && (v53 = v52[4]) != 0)
        {
          v54 = *(v47 + v53);
        }

        else
        {
          v54 = 0;
        }

        v55 = *v6;
        if (*v6)
        {
          v56 = v6;
          do
          {
            v57 = *(v55 + 28);
            v58 = v57 >= v51;
            v59 = v57 < v51;
            if (v58)
            {
              v56 = v55;
            }

            v55 = *(v55 + 8 * v59);
          }

          while (v55);
          if (v56 != v6 && v51 >= *(v56 + 7))
          {
            v60 = v54 + v36;
            v61 = (v60 << 7) & 0x7F00;
            v62 = (v60 >> 1) ^ ((v60 >> 1) >> 4);
            v63 = (v61 & 0xFFFF7FFF | (((v62 ^ (v62 >> 2) ^ ((v62 ^ (v62 >> 2)) >> 1)) & 1) << 15)) ^ 0x8000;
            if (a2)
            {
              v64 = 0;
              v65 = v63 | 0xBC0000;
              v66 = v65 >> 8;
              v67 = 43;
              do
              {
                v66 ^= ((v66 >> v64 << 31) >> 31) & v67;
                v67 *= 2;
                ++v64;
              }

              while (v64 != 19);
              v63 = v65 & 0x7FFFFFF | ((v66 >> 19) << 27);
            }

            v69 = &v68;
            *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, v51) + 8) = v63;
          }
        }
      }
    }

    while (v43 != v45);
  }
}

uint64_t AGCLLVMG14XTargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v89 = *a2;
  v90 = *(a2 + 16);
  if (v90)
  {
    llvm::MetadataTracking::track();
  }

  v91 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v89);
  if (v90)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v88 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v87);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v88 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v87);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v86 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v85);
  v16 = *(a1 + 200);
  v84 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v83);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v82 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v19, v81);
  v21 = *(a1 + 200);
  v80 = 257;
  v22 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v21, v79);
  v23 = *(a1 + 200);
  v24 = llvm::ConstantInt::get();
  v88 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v22, v24, v87);
  result = llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v27 = *(a1 + 208);
    v28 = llvm::ConstantInt::get();
    v88 = 257;
    v29 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v28, v87);
    v30 = *(a1 + 208);
    v31 = llvm::ConstantInt::get();
    v86 = 257;
    v32 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v29, v31, v85);
    v33 = *(a1 + 200);
    v84 = 257;
    v34 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v32, v33, v83);
    v35 = *(a1 + 200);
    v36 = llvm::ConstantInt::get();
    v82 = 257;
    v37 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v34, v36, v81);
    v38 = *(a1 + 208);
    v39 = llvm::ConstantInt::get();
    v88 = 257;
    v40 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v39, v87);
    v41 = *(a1 + 208);
    v42 = llvm::ConstantInt::get();
    v86 = 257;
    v43 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v40, v42, v85);
    v44 = *(a1 + 200);
    v84 = 257;
    v45 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v43, v44, v83);
    v46 = *(a1 + 200);
    v47 = llvm::ConstantInt::get();
    v82 = 257;
    v48 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v45, v47, v81);
    v49 = *(a1 + 208);
    v50 = llvm::ConstantInt::get();
    v88 = 257;
    v51 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v50, v87);
    v52 = *(a1 + 208);
    v53 = llvm::ConstantInt::get();
    v86 = 257;
    v54 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v51, v53, v85);
    v55 = *(a1 + 200);
    v84 = 257;
    v56 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v54, v55, v83);
    v57 = *(a1 + 200);
    v58 = llvm::ConstantInt::get();
    v82 = 257;
    v59 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v56, v58, v81);
    v60 = *(a1 + 208);
    v61 = llvm::ConstantInt::get();
    v88 = 257;
    v62 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v61, v87);
    v63 = *(a1 + 208);
    v64 = llvm::ConstantInt::get();
    v86 = 257;
    v65 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v62, v64, v85);
    v66 = *(a1 + 200);
    v84 = 257;
    v67 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v65, v66, v83);
    v68 = *(a1 + 200);
    v69 = llvm::ConstantInt::get();
    v82 = 257;
    v70 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v67, v69, v81);
    v88 = 257;
    v71 = llvm::IRBuilderBase::CreateOr((a1 + 8), v48, v59, v87);
    v88 = 257;
    v72 = llvm::IRBuilderBase::CreateOr((a1 + 8), v71, v70, v87);
    v87[0] = "is_float16_texture";
    v88 = 259;
    v73 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v37, v72, v87);
    v74 = *(a1 + 200);
    v86 = 257;
    v75 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v73, v74, v85);
    v76 = *(a1 + 200);
    v77 = llvm::ConstantInt::get();
    v88 = 257;
    v78 = llvm::IRBuilderBase::CreateShl((a1 + 8), v75, v77, v87);
    return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v78, a4, 0);
  }

  return result;
}

uint64_t AGCLLVMG14XTargetLowerer::buildImageBaseLevelExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v25 = *a2;
  v26 = *(a2 + 16);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v25);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v24 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v23);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v24 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v23);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v22 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v21);
  v16 = *(a1 + 200);
  v20 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v19);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Cast, a4, 0);
}

uint64_t AGCLLVMG14XTargetLowerer::buildImageSampleCountExtract(void *a1, uint64_t a2, llvm::Value *a3, uint64_t a4)
{
  v31 = *a2;
  v32 = *(a2 + 16);
  if (v32)
  {
    llvm::MetadataTracking::track();
  }

  v33 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v31);
  if (v32)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[25];
  v9 = a1[26];
  v10 = llvm::ConstantInt::get();
  v30 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v9, a3, v10, v29);
  v28 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, GEP, v27);
  v13 = a1[26];
  v14 = llvm::ConstantInt::get();
  v30 = 257;
  v15 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Load, v14, v29);
  v16 = a1[26];
  v17 = llvm::ConstantInt::get();
  v28 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v15, v17, v27);
  v19 = a1[25];
  v26 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, LShr, v19, v25);
  v21 = a1[25];
  v22 = llvm::ConstantInt::get();
  v30 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 1), v22, Cast, v29);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, Shl, a4, 0);
}

uint64_t AGCLLVMG14XTargetLowerer::buildImageMipCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
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

  v8 = *(a1 + 208);
  v36 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v35);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v36 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v35);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v34 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v33);
  v16 = *(a1 + 200);
  v32 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v31);
  v18 = *(a1 + 208);
  v19 = llvm::ConstantInt::get();
  v36 = 257;
  v20 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v19, v35);
  v21 = *(a1 + 208);
  v22 = llvm::ConstantInt::get();
  v34 = 257;
  v23 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v20, v22, v33);
  v24 = *(a1 + 200);
  v32 = 257;
  v25 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v23, v24, v31);
  v36 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), Cast, v25, v35);
  v27 = *(a1 + 200);
  v28 = llvm::ConstantInt::get();
  v34 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Sub, v28, v33);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Add, a4, 0);
}

uint64_t AGCLLVMG14XTargetLowerer::buildImageDimensionsExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v120 = *a2;
  v121 = *(a2 + 16);
  if (v121)
  {
    llvm::MetadataTracking::track();
  }

  v122 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v120);
  if (v121)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v119 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v118);
  v10 = *(a1 + 200);
  v11 = *(a1 + 208);
  v12 = llvm::ConstantInt::get();
  v119 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v11, a3, v12, v118);
  v117 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v14 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v11, GEP, 0, v116);
  v15 = *(a1 + 200);
  v16 = *(a1 + 208);
  v17 = llvm::ConstantInt::get();
  v119 = 257;
  v18 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v16, a3, v17, v118);
  v117 = 257;
  llvm::Type::isOpaquePointerTy(*v18);
  v19 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v16, v18, 0, v116);
  v20 = *(a1 + 208);
  v21 = llvm::ConstantInt::get();
  v119 = 257;
  v22 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v14, v21, v118);
  v23 = *(a1 + 208);
  v24 = llvm::ConstantInt::get();
  v117 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v22, v24, v116);
  v26 = *(a1 + 200);
  v115 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v26, v114);
  v28 = *(a1 + 200);
  v29 = llvm::ConstantInt::get();
  v113 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Cast, v29, v112);
  v31 = *(a1 + 208);
  v32 = llvm::ConstantInt::get();
  v119 = 257;
  v33 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v32, v118);
  v34 = *(a1 + 208);
  v35 = llvm::ConstantInt::get();
  v117 = 257;
  v36 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v33, v35, v116);
  v37 = *(a1 + 200);
  v115 = 257;
  v38 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v36, v37, v114);
  v39 = *(a1 + 208);
  v40 = llvm::ConstantInt::get();
  v119 = 257;
  v41 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v40, v118);
  v42 = *(a1 + 208);
  v43 = llvm::ConstantInt::get();
  v117 = 257;
  v44 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v41, v43, v116);
  v45 = *(a1 + 200);
  v115 = 257;
  v46 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v44, v45, v114);
  v47 = *(a1 + 200);
  v48 = llvm::ConstantInt::get();
  v113 = 257;
  v49 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v46, v48, v112);
  v50 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v49, v38);
  v51 = *(a1 + 208);
  v52 = llvm::ConstantInt::get();
  v119 = 257;
  v53 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v52, v118);
  v54 = *(a1 + 208);
  v55 = llvm::ConstantInt::get();
  v117 = 257;
  v56 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v53, v55, v116);
  v57 = *(a1 + 200);
  v115 = 257;
  v58 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v56, v57, v114);
  v59 = *(a1 + 200);
  v60 = llvm::ConstantInt::get();
  v113 = 257;
  v61 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v58, v60, v112);
  v62 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v61, v38);
  v63 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, v38);
  v64 = *(a1 + 208);
  v65 = llvm::ConstantInt::get();
  v119 = 257;
  v66 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v19, v65, v118);
  v67 = *(a1 + 208);
  v68 = llvm::ConstantInt::get();
  v117 = 257;
  v69 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v66, v68, v116);
  v70 = *(a1 + 200);
  v115 = 257;
  v71 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v69, v70, v114);
  v72 = *(a1 + 200);
  v73 = llvm::ConstantInt::get();
  v113 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 8), v71, v73, v112);
  v74 = *(a1 + 208);
  v75 = llvm::ConstantInt::get();
  v119 = 257;
  v76 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v75, v118);
  v77 = *(a1 + 208);
  v78 = llvm::ConstantInt::get();
  v117 = 257;
  v79 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v76, v78, v116);
  v80 = *(a1 + 200);
  v115 = 257;
  v81 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v79, v80, v114);
  v82 = *(a1 + 208);
  v83 = llvm::ConstantInt::get();
  v119 = 257;
  v84 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v83, v118);
  v85 = *(a1 + 208);
  v86 = llvm::ConstantInt::get();
  v117 = 257;
  v87 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v84, v86, v116);
  v88 = *(a1 + 200);
  v115 = 257;
  v89 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v87, v88, v114);
  v90 = *(a1 + 200);
  v91 = llvm::ConstantInt::get();
  v119 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v81, v91, v118);
  v93 = *(a1 + 200);
  v94 = llvm::ConstantInt::get();
  v117 = 257;
  v95 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v89, v94, v116);
  v115 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 8), ICmp, v95, v114);
  v119 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(*(a1 + 336), v97);
  v119 = 257;
  v99 = *(a1 + 200);
  v100 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), NullValue, v50, v100, v118);
  v119 = 257;
  v102 = *(a1 + 200);
  v103 = llvm::ConstantInt::get();
  v104 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v62, v103, v118);
  v119 = 257;
  v105 = *(a1 + 200);
  v106 = llvm::ConstantInt::get();
  v107 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v104, v63, v106, v118);
  v119 = 257;
  v108 = *(a1 + 200);
  v109 = llvm::ConstantInt::get();
  v110 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v107, Select, v109, v118);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v110, a4, 0);
}

void AGCLLVMG14XTargetLowerer::~AGCLLVMG14XTargetLowerer(AGCLLVMG14XTargetLowerer *this)
{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

uint64_t *AGCLLVMCreateG15TargetConfig(int a1)
{
  {
    v3 = a1;
    a1 = v3;
    if (v4)
    {
      AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15pB0, 196630);
      AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15pB0 = &unk_2825B40F0;
      dword_27C8DB09C = 64;
      __cxa_atexit(AGCLLVMG15PB0TargetConfig::~AGCLLVMG15PB0TargetConfig, &AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15pB0, &dword_20E4E1000);
      a1 = v3;
    }
  }

  {
    v5 = a1;
    a1 = v5;
    if (v6)
    {
      AGCLLVMG15GA0TargetConfig::AGCLLVMG15GA0TargetConfig();
      __cxa_atexit(AGCLLVMG15GA0TargetConfig::~AGCLLVMG15GA0TargetConfig, &AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15gA0, &dword_20E4E1000);
      a1 = v5;
    }
  }

  {
    v7 = a1;
    a1 = v7;
    if (v8)
    {
      AGCLLVMG15GB0TargetConfig::AGCLLVMG15GB0TargetConfig();
      __cxa_atexit(AGCLLVMG15GB0TargetConfig::~AGCLLVMG15GB0TargetConfig, &AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15gB0, &dword_20E4E1000);
      a1 = v7;
    }
  }

  {
    v9 = a1;
    a1 = v9;
    if (v10)
    {
      AGCLLVMG15GC0TargetConfig::AGCLLVMG15GC0TargetConfig();
      __cxa_atexit(AGCLLVMG15GC0TargetConfig::~AGCLLVMG15GC0TargetConfig, &AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15gC0, &dword_20E4E1000);
      a1 = v9;
    }
  }

  v1 = &AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15pB0;
  if (a1 == 65560)
  {
    v1 = &AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15gA0;
  }

  if (a1 == 196632)
  {
    v1 = &AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15gB0;
  }

  if (a1 == 327704)
  {
    return &AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15gC0;
  }

  else
  {
    return v1;
  }
}

void AGCLLVMG15GC0TargetConfig::~AGCLLVMG15GC0TargetConfig(AGCLLVMG15GC0TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMG15GB0TargetConfig::~AGCLLVMG15GB0TargetConfig(AGCLLVMG15GB0TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMG15GA0TargetConfig::~AGCLLVMG15GA0TargetConfig(AGCLLVMG15GA0TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMG15PB0TargetConfig::~AGCLLVMG15PB0TargetConfig(AGCLLVMG15PB0TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);

  JUMPOUT(0x20F331DC0);
}

uint64_t AGCLLVMG15GA0TargetLowerer::extractMaxLevel(AGCLLVMG15GA0TargetLowerer *this, llvm::Value *a2)
{
  v4 = *(this + 26);
  v5 = llvm::ConstantInt::get();
  v14 = 257;
  v6 = llvm::IRBuilderBase::CreateAnd((this + 8), a2, v5, v13);
  v7 = *(this + 26);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 8), v6, v8, v13);
  v10 = *(this + 25);
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 38, LShr, v10, v12);
}

uint64_t AGCLLVMG15GA0TargetLowerer::extractBaseLevel(AGCLLVMG15GA0TargetLowerer *this, llvm::Value *a2)
{
  v4 = *(this + 26);
  v5 = llvm::ConstantInt::get();
  v14 = 257;
  v6 = llvm::IRBuilderBase::CreateAnd((this + 8), a2, v5, v13);
  v7 = *(this + 26);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 8), v6, v8, v13);
  v10 = *(this + 25);
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 38, LShr, v10, v12);
}

uint64_t AGCLLVMG15GA0TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v89 = *a2;
  v90 = *(a2 + 16);
  if (v90)
  {
    llvm::MetadataTracking::track();
  }

  v91 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v89);
  if (v90)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v88 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v87);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v88 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v87);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v86 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v85);
  v16 = *(a1 + 200);
  v84 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v83);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v82 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v19, v81);
  v21 = *(a1 + 200);
  v80 = 257;
  v22 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v21, v79);
  v23 = *(a1 + 200);
  v24 = llvm::ConstantInt::get();
  v88 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v22, v24, v87);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v26 = *(a1 + 208);
    v27 = llvm::ConstantInt::get();
    v88 = 257;
    v28 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v27, v87);
    v29 = *(a1 + 208);
    v30 = llvm::ConstantInt::get();
    v86 = 257;
    v31 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v28, v30, v85);
    v32 = *(a1 + 200);
    v84 = 257;
    v33 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v31, v32, v83);
    v34 = *(a1 + 200);
    v35 = llvm::ConstantInt::get();
    v82 = 257;
    v36 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v33, v35, v81);
    v37 = *(a1 + 208);
    v38 = llvm::ConstantInt::get();
    v88 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v87);
    v40 = *(a1 + 208);
    v41 = llvm::ConstantInt::get();
    v86 = 257;
    v42 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v41, v85);
    v43 = *(a1 + 200);
    v84 = 257;
    v44 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v42, v43, v83);
    v45 = *(a1 + 200);
    v46 = llvm::ConstantInt::get();
    v82 = 257;
    v47 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v44, v46, v81);
    v48 = *(a1 + 208);
    v49 = llvm::ConstantInt::get();
    v88 = 257;
    v50 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v49, v87);
    v51 = *(a1 + 208);
    v52 = llvm::ConstantInt::get();
    v86 = 257;
    v53 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v50, v52, v85);
    v54 = *(a1 + 200);
    v84 = 257;
    v55 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v53, v54, v83);
    v56 = *(a1 + 200);
    v57 = llvm::ConstantInt::get();
    v82 = 257;
    v58 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v55, v57, v81);
    v59 = *(a1 + 208);
    v60 = llvm::ConstantInt::get();
    v88 = 257;
    v61 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v60, v87);
    v62 = *(a1 + 208);
    v63 = llvm::ConstantInt::get();
    v86 = 257;
    v64 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v61, v63, v85);
    v65 = *(a1 + 200);
    v84 = 257;
    v66 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v64, v65, v83);
    v67 = *(a1 + 200);
    v68 = llvm::ConstantInt::get();
    v82 = 257;
    v69 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v66, v68, v81);
    v88 = 257;
    v70 = llvm::IRBuilderBase::CreateOr((a1 + 8), v47, v58, v87);
    v88 = 257;
    v71 = llvm::IRBuilderBase::CreateOr((a1 + 8), v70, v69, v87);
    v87[0] = "is_float16_texture";
    v88 = 259;
    v72 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v36, v71, v87);
    v73 = *(a1 + 200);
    v86 = 257;
    v74 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v72, v73, v85);
    v75 = *(a1 + 200);
    v76 = llvm::ConstantInt::get();
    v88 = 257;
    v77 = llvm::IRBuilderBase::CreateShl((a1 + 8), v74, v76, v87);
    v86 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v77, v85);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
}

uint64_t AGCLLVMG15GA0TargetLowerer::buildImageSampleCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v28 = *a2;
  v29 = *(a2 + 16);
  if (v29)
  {
    llvm::MetadataTracking::track();
  }

  v30 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v28);
  if (v29)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v27 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v26);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v27 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v26);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v25 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v24);
  v16 = *(a1 + 200);
  v23 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v22);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v27 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, Cast, v26);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
}

uint64_t AGCLLVMG15GA0TargetLowerer::buildImageDimensionsExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v124 = *a2;
  v125 = *(a2 + 16);
  if (v125)
  {
    llvm::MetadataTracking::track();
  }

  v126 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v124);
  if (v125)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v123 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v122);
  v10 = *(a1 + 200);
  v11 = *(a1 + 208);
  v12 = llvm::ConstantInt::get();
  v123 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v11, a3, v12, v122);
  v121 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v14 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v11, GEP, 0, v120);
  v15 = *(a1 + 200);
  v16 = *(a1 + 208);
  v17 = llvm::ConstantInt::get();
  v123 = 257;
  v18 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v16, a3, v17, v122);
  v121 = 257;
  llvm::Type::isOpaquePointerTy(*v18);
  v19 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v16, v18, 0, v120);
  v20 = *(a1 + 208);
  v21 = llvm::ConstantInt::get();
  v123 = 257;
  v22 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v14, v21, v122);
  v23 = *(a1 + 208);
  v24 = llvm::ConstantInt::get();
  v121 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v22, v24, v120);
  v26 = *(a1 + 200);
  v119 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v26, v118);
  v28 = *(a1 + 200);
  v29 = llvm::ConstantInt::get();
  v117 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Cast, v29, v116);
  (*(*a1 + 1984))(a1, v19);
  v31 = *(a1 + 208);
  v32 = llvm::ConstantInt::get();
  v123 = 257;
  v33 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v32, v122);
  v34 = *(a1 + 208);
  v35 = llvm::ConstantInt::get();
  v121 = 257;
  v36 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v33, v35, v120);
  v37 = *(a1 + 200);
  v119 = 257;
  v38 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v36, v37, v118);
  v39 = *(a1 + 200);
  v40 = llvm::ConstantInt::get();
  v117 = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v38, v40, v116);
  v41 = *(a1 + 200);
  llvm::ConstantInt::get();
  v123 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v43 = *(a1 + 208);
  v44 = llvm::ConstantInt::get();
  v123 = 257;
  v45 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v44, v122);
  v46 = *(a1 + 208);
  v47 = llvm::ConstantInt::get();
  v121 = 257;
  v48 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v45, v47, v120);
  v49 = *(a1 + 200);
  v119 = 257;
  v50 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v48, v49, v118);
  v51 = *(a1 + 200);
  v52 = llvm::ConstantInt::get();
  v117 = 257;
  v53 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v50, v52, v116);
  v54 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v53, Select);
  v55 = *(a1 + 208);
  v56 = llvm::ConstantInt::get();
  v123 = 257;
  v57 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v56, v122);
  v58 = *(a1 + 208);
  v59 = llvm::ConstantInt::get();
  v121 = 257;
  v60 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v57, v59, v120);
  v61 = *(a1 + 200);
  v119 = 257;
  v62 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v60, v61, v118);
  v63 = *(a1 + 200);
  v64 = llvm::ConstantInt::get();
  v117 = 257;
  v65 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v62, v64, v116);
  v66 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v65, Select);
  v67 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, Select);
  v68 = *(a1 + 208);
  v69 = llvm::ConstantInt::get();
  v123 = 257;
  v70 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v19, v69, v122);
  v71 = *(a1 + 208);
  v72 = llvm::ConstantInt::get();
  v121 = 257;
  v73 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v70, v72, v120);
  v74 = *(a1 + 200);
  v119 = 257;
  v75 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v73, v74, v118);
  v76 = *(a1 + 200);
  v77 = llvm::ConstantInt::get();
  v117 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 8), v75, v77, v116);
  v78 = *(a1 + 208);
  v79 = llvm::ConstantInt::get();
  v123 = 257;
  v80 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v79, v122);
  v81 = *(a1 + 208);
  v82 = llvm::ConstantInt::get();
  v121 = 257;
  v83 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v80, v82, v120);
  v84 = *(a1 + 200);
  v119 = 257;
  v85 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v83, v84, v118);
  v86 = *(a1 + 208);
  v87 = llvm::ConstantInt::get();
  v123 = 257;
  v88 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v87, v122);
  v89 = *(a1 + 208);
  v90 = llvm::ConstantInt::get();
  v121 = 257;
  v91 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v88, v90, v120);
  v92 = *(a1 + 200);
  v119 = 257;
  v93 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v91, v92, v118);
  v94 = *(a1 + 200);
  v95 = llvm::ConstantInt::get();
  v123 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v85, v95, v122);
  v97 = *(a1 + 200);
  v98 = llvm::ConstantInt::get();
  v121 = 257;
  v99 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v93, v98, v120);
  v119 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 8), ICmp, v99, v118);
  v123 = 257;
  v100 = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(*(a1 + 336), v101);
  v123 = 257;
  v103 = *(a1 + 200);
  v104 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), NullValue, v54, v104, v122);
  v123 = 257;
  v106 = *(a1 + 200);
  v107 = llvm::ConstantInt::get();
  v108 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v66, v107, v122);
  v123 = 257;
  v109 = *(a1 + 200);
  v110 = llvm::ConstantInt::get();
  v111 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v108, v67, v110, v122);
  v123 = 257;
  v112 = *(a1 + 200);
  v113 = llvm::ConstantInt::get();
  v114 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v111, v100, v113, v122);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v114, a4, 0);
}

void AGCLLVMG15GA0TargetLowerer::~AGCLLVMG15GA0TargetLowerer(AGCLLVMG15GA0TargetLowerer *this)
{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

void AGCLLVMG15GA0TargetConfig::AGCLLVMG15GA0TargetConfig()
{
  AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15gA0, 65560);
  *(v0 + 60) = 0;
  *(v0 + 49) = 0;
  *v0 = &unk_2825B2608;
  *(v0 + 8) = "agx3-apple-ios";
}

uint64_t AGCLLVMG15GB0TargetLowerer::extractMaxLevel(AGCLLVMG15GB0TargetLowerer *this, llvm::Value *a2)
{
  v4 = *(this + 26);
  v5 = llvm::ConstantInt::get();
  v14 = 257;
  v6 = llvm::IRBuilderBase::CreateAnd((this + 8), a2, v5, v13);
  v7 = *(this + 26);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 8), v6, v8, v13);
  v10 = *(this + 25);
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 38, LShr, v10, v12);
}

uint64_t AGCLLVMG15GB0TargetLowerer::extractBaseLevel(AGCLLVMG15GB0TargetLowerer *this, llvm::Value *a2)
{
  v4 = *(this + 26);
  v5 = llvm::ConstantInt::get();
  v14 = 257;
  v6 = llvm::IRBuilderBase::CreateAnd((this + 8), a2, v5, v13);
  v7 = *(this + 26);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 8), v6, v8, v13);
  v10 = *(this + 25);
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 38, LShr, v10, v12);
}

uint64_t AGCLLVMG15GB0TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v89 = *a2;
  v90 = *(a2 + 16);
  if (v90)
  {
    llvm::MetadataTracking::track();
  }

  v91 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v89);
  if (v90)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v88 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v87);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v88 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v87);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v86 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v85);
  v16 = *(a1 + 200);
  v84 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v83);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v82 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v19, v81);
  v21 = *(a1 + 200);
  v80 = 257;
  v22 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v21, v79);
  v23 = *(a1 + 200);
  v24 = llvm::ConstantInt::get();
  v88 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v22, v24, v87);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v26 = *(a1 + 208);
    v27 = llvm::ConstantInt::get();
    v88 = 257;
    v28 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v27, v87);
    v29 = *(a1 + 208);
    v30 = llvm::ConstantInt::get();
    v86 = 257;
    v31 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v28, v30, v85);
    v32 = *(a1 + 200);
    v84 = 257;
    v33 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v31, v32, v83);
    v34 = *(a1 + 200);
    v35 = llvm::ConstantInt::get();
    v82 = 257;
    v36 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v33, v35, v81);
    v37 = *(a1 + 208);
    v38 = llvm::ConstantInt::get();
    v88 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v87);
    v40 = *(a1 + 208);
    v41 = llvm::ConstantInt::get();
    v86 = 257;
    v42 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v41, v85);
    v43 = *(a1 + 200);
    v84 = 257;
    v44 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v42, v43, v83);
    v45 = *(a1 + 200);
    v46 = llvm::ConstantInt::get();
    v82 = 257;
    v47 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v44, v46, v81);
    v48 = *(a1 + 208);
    v49 = llvm::ConstantInt::get();
    v88 = 257;
    v50 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v49, v87);
    v51 = *(a1 + 208);
    v52 = llvm::ConstantInt::get();
    v86 = 257;
    v53 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v50, v52, v85);
    v54 = *(a1 + 200);
    v84 = 257;
    v55 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v53, v54, v83);
    v56 = *(a1 + 200);
    v57 = llvm::ConstantInt::get();
    v82 = 257;
    v58 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v55, v57, v81);
    v59 = *(a1 + 208);
    v60 = llvm::ConstantInt::get();
    v88 = 257;
    v61 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v60, v87);
    v62 = *(a1 + 208);
    v63 = llvm::ConstantInt::get();
    v86 = 257;
    v64 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v61, v63, v85);
    v65 = *(a1 + 200);
    v84 = 257;
    v66 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v64, v65, v83);
    v67 = *(a1 + 200);
    v68 = llvm::ConstantInt::get();
    v82 = 257;
    v69 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v66, v68, v81);
    v88 = 257;
    v70 = llvm::IRBuilderBase::CreateOr((a1 + 8), v47, v58, v87);
    v88 = 257;
    v71 = llvm::IRBuilderBase::CreateOr((a1 + 8), v70, v69, v87);
    v87[0] = "is_float16_texture";
    v88 = 259;
    v72 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v36, v71, v87);
    v73 = *(a1 + 200);
    v86 = 257;
    v74 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v72, v73, v85);
    v75 = *(a1 + 200);
    v76 = llvm::ConstantInt::get();
    v88 = 257;
    v77 = llvm::IRBuilderBase::CreateShl((a1 + 8), v74, v76, v87);
    v86 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v77, v85);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
}

uint64_t AGCLLVMG15GB0TargetLowerer::buildImageSampleCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v28 = *a2;
  v29 = *(a2 + 16);
  if (v29)
  {
    llvm::MetadataTracking::track();
  }

  v30 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v28);
  if (v29)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v27 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v26);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v27 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v26);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v25 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v24);
  v16 = *(a1 + 200);
  v23 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v22);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v27 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, Cast, v26);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
}

uint64_t AGCLLVMG15GB0TargetLowerer::buildImageDimensionsExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v124 = *a2;
  v125 = *(a2 + 16);
  if (v125)
  {
    llvm::MetadataTracking::track();
  }

  v126 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v124);
  if (v125)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v123 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v122);
  v10 = *(a1 + 200);
  v11 = *(a1 + 208);
  v12 = llvm::ConstantInt::get();
  v123 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v11, a3, v12, v122);
  v121 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v14 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v11, GEP, 0, v120);
  v15 = *(a1 + 200);
  v16 = *(a1 + 208);
  v17 = llvm::ConstantInt::get();
  v123 = 257;
  v18 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v16, a3, v17, v122);
  v121 = 257;
  llvm::Type::isOpaquePointerTy(*v18);
  v19 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v16, v18, 0, v120);
  v20 = *(a1 + 208);
  v21 = llvm::ConstantInt::get();
  v123 = 257;
  v22 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v14, v21, v122);
  v23 = *(a1 + 208);
  v24 = llvm::ConstantInt::get();
  v121 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v22, v24, v120);
  v26 = *(a1 + 200);
  v119 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v26, v118);
  v28 = *(a1 + 200);
  v29 = llvm::ConstantInt::get();
  v117 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Cast, v29, v116);
  (*(*a1 + 1984))(a1, v19);
  v31 = *(a1 + 208);
  v32 = llvm::ConstantInt::get();
  v123 = 257;
  v33 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v32, v122);
  v34 = *(a1 + 208);
  v35 = llvm::ConstantInt::get();
  v121 = 257;
  v36 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v33, v35, v120);
  v37 = *(a1 + 200);
  v119 = 257;
  v38 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v36, v37, v118);
  v39 = *(a1 + 200);
  v40 = llvm::ConstantInt::get();
  v117 = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v38, v40, v116);
  v41 = *(a1 + 200);
  llvm::ConstantInt::get();
  v123 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v43 = *(a1 + 208);
  v44 = llvm::ConstantInt::get();
  v123 = 257;
  v45 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v44, v122);
  v46 = *(a1 + 208);
  v47 = llvm::ConstantInt::get();
  v121 = 257;
  v48 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v45, v47, v120);
  v49 = *(a1 + 200);
  v119 = 257;
  v50 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v48, v49, v118);
  v51 = *(a1 + 200);
  v52 = llvm::ConstantInt::get();
  v117 = 257;
  v53 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v50, v52, v116);
  v54 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v53, Select);
  v55 = *(a1 + 208);
  v56 = llvm::ConstantInt::get();
  v123 = 257;
  v57 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v56, v122);
  v58 = *(a1 + 208);
  v59 = llvm::ConstantInt::get();
  v121 = 257;
  v60 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v57, v59, v120);
  v61 = *(a1 + 200);
  v119 = 257;
  v62 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v60, v61, v118);
  v63 = *(a1 + 200);
  v64 = llvm::ConstantInt::get();
  v117 = 257;
  v65 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v62, v64, v116);
  v66 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v65, Select);
  v67 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, Select);
  v68 = *(a1 + 208);
  v69 = llvm::ConstantInt::get();
  v123 = 257;
  v70 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v19, v69, v122);
  v71 = *(a1 + 208);
  v72 = llvm::ConstantInt::get();
  v121 = 257;
  v73 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v70, v72, v120);
  v74 = *(a1 + 200);
  v119 = 257;
  v75 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v73, v74, v118);
  v76 = *(a1 + 200);
  v77 = llvm::ConstantInt::get();
  v117 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 8), v75, v77, v116);
  v78 = *(a1 + 208);
  v79 = llvm::ConstantInt::get();
  v123 = 257;
  v80 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v79, v122);
  v81 = *(a1 + 208);
  v82 = llvm::ConstantInt::get();
  v121 = 257;
  v83 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v80, v82, v120);
  v84 = *(a1 + 200);
  v119 = 257;
  v85 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v83, v84, v118);
  v86 = *(a1 + 208);
  v87 = llvm::ConstantInt::get();
  v123 = 257;
  v88 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v87, v122);
  v89 = *(a1 + 208);
  v90 = llvm::ConstantInt::get();
  v121 = 257;
  v91 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v88, v90, v120);
  v92 = *(a1 + 200);
  v119 = 257;
  v93 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v91, v92, v118);
  v94 = *(a1 + 200);
  v95 = llvm::ConstantInt::get();
  v123 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v85, v95, v122);
  v97 = *(a1 + 200);
  v98 = llvm::ConstantInt::get();
  v121 = 257;
  v99 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v93, v98, v120);
  v119 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 8), ICmp, v99, v118);
  v123 = 257;
  v100 = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(*(a1 + 336), v101);
  v123 = 257;
  v103 = *(a1 + 200);
  v104 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), NullValue, v54, v104, v122);
  v123 = 257;
  v106 = *(a1 + 200);
  v107 = llvm::ConstantInt::get();
  v108 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v66, v107, v122);
  v123 = 257;
  v109 = *(a1 + 200);
  v110 = llvm::ConstantInt::get();
  v111 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v108, v67, v110, v122);
  v123 = 257;
  v112 = *(a1 + 200);
  v113 = llvm::ConstantInt::get();
  v114 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v111, v100, v113, v122);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v114, a4, 0);
}

void AGCLLVMG15GB0TargetLowerer::~AGCLLVMG15GB0TargetLowerer(AGCLLVMG15GB0TargetLowerer *this)
{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

void AGCLLVMG15GB0TargetConfig::AGCLLVMG15GB0TargetConfig()
{
  AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15gB0, 196632);
  *(v0 + 60) = 0;
  *(v0 + 49) = 0;
  *v0 = &unk_2825B2F00;
  *(v0 + 8) = "agx3-apple-ios";
}

uint64_t AGCLLVMG15GC0TargetLowerer::extractMaxLevel(AGCLLVMG15GC0TargetLowerer *this, llvm::Value *a2)
{
  v4 = *(this + 26);
  v5 = llvm::ConstantInt::get();
  v14 = 257;
  v6 = llvm::IRBuilderBase::CreateAnd((this + 8), a2, v5, v13);
  v7 = *(this + 26);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 8), v6, v8, v13);
  v10 = *(this + 25);
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 38, LShr, v10, v12);
}

uint64_t AGCLLVMG15GC0TargetLowerer::extractBaseLevel(AGCLLVMG15GC0TargetLowerer *this, llvm::Value *a2)
{
  v4 = *(this + 26);
  v5 = llvm::ConstantInt::get();
  v14 = 257;
  v6 = llvm::IRBuilderBase::CreateAnd((this + 8), a2, v5, v13);
  v7 = *(this + 26);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 8), v6, v8, v13);
  v10 = *(this + 25);
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 38, LShr, v10, v12);
}

uint64_t AGCLLVMG15GC0TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v89 = *a2;
  v90 = *(a2 + 16);
  if (v90)
  {
    llvm::MetadataTracking::track();
  }

  v91 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v89);
  if (v90)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v88 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v87);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v88 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v87);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v86 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v85);
  v16 = *(a1 + 200);
  v84 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v83);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v82 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v19, v81);
  v21 = *(a1 + 200);
  v80 = 257;
  v22 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v21, v79);
  v23 = *(a1 + 200);
  v24 = llvm::ConstantInt::get();
  v88 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v22, v24, v87);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v26 = *(a1 + 208);
    v27 = llvm::ConstantInt::get();
    v88 = 257;
    v28 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v27, v87);
    v29 = *(a1 + 208);
    v30 = llvm::ConstantInt::get();
    v86 = 257;
    v31 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v28, v30, v85);
    v32 = *(a1 + 200);
    v84 = 257;
    v33 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v31, v32, v83);
    v34 = *(a1 + 200);
    v35 = llvm::ConstantInt::get();
    v82 = 257;
    v36 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v33, v35, v81);
    v37 = *(a1 + 208);
    v38 = llvm::ConstantInt::get();
    v88 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v87);
    v40 = *(a1 + 208);
    v41 = llvm::ConstantInt::get();
    v86 = 257;
    v42 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v41, v85);
    v43 = *(a1 + 200);
    v84 = 257;
    v44 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v42, v43, v83);
    v45 = *(a1 + 200);
    v46 = llvm::ConstantInt::get();
    v82 = 257;
    v47 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v44, v46, v81);
    v48 = *(a1 + 208);
    v49 = llvm::ConstantInt::get();
    v88 = 257;
    v50 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v49, v87);
    v51 = *(a1 + 208);
    v52 = llvm::ConstantInt::get();
    v86 = 257;
    v53 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v50, v52, v85);
    v54 = *(a1 + 200);
    v84 = 257;
    v55 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v53, v54, v83);
    v56 = *(a1 + 200);
    v57 = llvm::ConstantInt::get();
    v82 = 257;
    v58 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v55, v57, v81);
    v59 = *(a1 + 208);
    v60 = llvm::ConstantInt::get();
    v88 = 257;
    v61 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v60, v87);
    v62 = *(a1 + 208);
    v63 = llvm::ConstantInt::get();
    v86 = 257;
    v64 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v61, v63, v85);
    v65 = *(a1 + 200);
    v84 = 257;
    v66 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v64, v65, v83);
    v67 = *(a1 + 200);
    v68 = llvm::ConstantInt::get();
    v82 = 257;
    v69 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v66, v68, v81);
    v88 = 257;
    v70 = llvm::IRBuilderBase::CreateOr((a1 + 8), v47, v58, v87);
    v88 = 257;
    v71 = llvm::IRBuilderBase::CreateOr((a1 + 8), v70, v69, v87);
    v87[0] = "is_float16_texture";
    v88 = 259;
    v72 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v36, v71, v87);
    v73 = *(a1 + 200);
    v86 = 257;
    v74 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v72, v73, v85);
    v75 = *(a1 + 200);
    v76 = llvm::ConstantInt::get();
    v88 = 257;
    v77 = llvm::IRBuilderBase::CreateShl((a1 + 8), v74, v76, v87);
    v86 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v77, v85);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
}

uint64_t AGCLLVMG15GC0TargetLowerer::buildImageSampleCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v28 = *a2;
  v29 = *(a2 + 16);
  if (v29)
  {
    llvm::MetadataTracking::track();
  }

  v30 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v28);
  if (v29)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v27 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v26);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v27 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v26);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v25 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v24);
  v16 = *(a1 + 200);
  v23 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v22);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v27 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, Cast, v26);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
}

uint64_t AGCLLVMG15GC0TargetLowerer::buildImageDimensionsExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v124 = *a2;
  v125 = *(a2 + 16);
  if (v125)
  {
    llvm::MetadataTracking::track();
  }

  v126 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v124);
  if (v125)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v123 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v122);
  v10 = *(a1 + 200);
  v11 = *(a1 + 208);
  v12 = llvm::ConstantInt::get();
  v123 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v11, a3, v12, v122);
  v121 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v14 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v11, GEP, 0, v120);
  v15 = *(a1 + 200);
  v16 = *(a1 + 208);
  v17 = llvm::ConstantInt::get();
  v123 = 257;
  v18 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v16, a3, v17, v122);
  v121 = 257;
  llvm::Type::isOpaquePointerTy(*v18);
  v19 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v16, v18, 0, v120);
  v20 = *(a1 + 208);
  v21 = llvm::ConstantInt::get();
  v123 = 257;
  v22 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v14, v21, v122);
  v23 = *(a1 + 208);
  v24 = llvm::ConstantInt::get();
  v121 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v22, v24, v120);
  v26 = *(a1 + 200);
  v119 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v26, v118);
  v28 = *(a1 + 200);
  v29 = llvm::ConstantInt::get();
  v117 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Cast, v29, v116);
  (*(*a1 + 1984))(a1, v19);
  v31 = *(a1 + 208);
  v32 = llvm::ConstantInt::get();
  v123 = 257;
  v33 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v32, v122);
  v34 = *(a1 + 208);
  v35 = llvm::ConstantInt::get();
  v121 = 257;
  v36 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v33, v35, v120);
  v37 = *(a1 + 200);
  v119 = 257;
  v38 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v36, v37, v118);
  v39 = *(a1 + 200);
  v40 = llvm::ConstantInt::get();
  v117 = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v38, v40, v116);
  v41 = *(a1 + 200);
  llvm::ConstantInt::get();
  v123 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v43 = *(a1 + 208);
  v44 = llvm::ConstantInt::get();
  v123 = 257;
  v45 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v44, v122);
  v46 = *(a1 + 208);
  v47 = llvm::ConstantInt::get();
  v121 = 257;
  v48 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v45, v47, v120);
  v49 = *(a1 + 200);
  v119 = 257;
  v50 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v48, v49, v118);
  v51 = *(a1 + 200);
  v52 = llvm::ConstantInt::get();
  v117 = 257;
  v53 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v50, v52, v116);
  v54 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v53, Select);
  v55 = *(a1 + 208);
  v56 = llvm::ConstantInt::get();
  v123 = 257;
  v57 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v56, v122);
  v58 = *(a1 + 208);
  v59 = llvm::ConstantInt::get();
  v121 = 257;
  v60 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v57, v59, v120);
  v61 = *(a1 + 200);
  v119 = 257;
  v62 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v60, v61, v118);
  v63 = *(a1 + 200);
  v64 = llvm::ConstantInt::get();
  v117 = 257;
  v65 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v62, v64, v116);
  v66 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v65, Select);
  v67 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, Select);
  v68 = *(a1 + 208);
  v69 = llvm::ConstantInt::get();
  v123 = 257;
  v70 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v19, v69, v122);
  v71 = *(a1 + 208);
  v72 = llvm::ConstantInt::get();
  v121 = 257;
  v73 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v70, v72, v120);
  v74 = *(a1 + 200);
  v119 = 257;
  v75 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v73, v74, v118);
  v76 = *(a1 + 200);
  v77 = llvm::ConstantInt::get();
  v117 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 8), v75, v77, v116);
  v78 = *(a1 + 208);
  v79 = llvm::ConstantInt::get();
  v123 = 257;
  v80 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v79, v122);
  v81 = *(a1 + 208);
  v82 = llvm::ConstantInt::get();
  v121 = 257;
  v83 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v80, v82, v120);
  v84 = *(a1 + 200);
  v119 = 257;
  v85 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v83, v84, v118);
  v86 = *(a1 + 208);
  v87 = llvm::ConstantInt::get();
  v123 = 257;
  v88 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v87, v122);
  v89 = *(a1 + 208);
  v90 = llvm::ConstantInt::get();
  v121 = 257;
  v91 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v88, v90, v120);
  v92 = *(a1 + 200);
  v119 = 257;
  v93 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v91, v92, v118);
  v94 = *(a1 + 200);
  v95 = llvm::ConstantInt::get();
  v123 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v85, v95, v122);
  v97 = *(a1 + 200);
  v98 = llvm::ConstantInt::get();
  v121 = 257;
  v99 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v93, v98, v120);
  v119 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 8), ICmp, v99, v118);
  v123 = 257;
  v100 = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(*(a1 + 336), v101);
  v123 = 257;
  v103 = *(a1 + 200);
  v104 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), NullValue, v54, v104, v122);
  v123 = 257;
  v106 = *(a1 + 200);
  v107 = llvm::ConstantInt::get();
  v108 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v66, v107, v122);
  v123 = 257;
  v109 = *(a1 + 200);
  v110 = llvm::ConstantInt::get();
  v111 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v108, v67, v110, v122);
  v123 = 257;
  v112 = *(a1 + 200);
  v113 = llvm::ConstantInt::get();
  v114 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v111, v100, v113, v122);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v114, a4, 0);
}

void AGCLLVMG15GC0TargetLowerer::~AGCLLVMG15GC0TargetLowerer(AGCLLVMG15GC0TargetLowerer *this)
{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

void AGCLLVMG15GC0TargetConfig::AGCLLVMG15GC0TargetConfig()
{
  AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG15TargetConfig(AGCTargetArch)::g15gC0, 327704);
  *(v0 + 60) = 0;
  *(v0 + 49) = 0;
  *v0 = &unk_2825B37F8;
  *(v0 + 8) = "agx3-apple-ios";
}

uint64_t AGCLLVMG15PB0TargetLowerer::getF16FormatInfo(uint64_t a1, int a2, uint64_t a3, int a4, char a5, int a6)
{
  v6 = *(a3 + 8) & 0xFE;
  if (a6)
  {
    v7 = a3;
    if (v6 == 18)
    {
      v7 = **(a3 + 16);
    }

    if (a2 == 1)
    {
      v8 = 3;
    }

    else
    {
      v8 = a2;
    }

    if (a2 == 12)
    {
      v9 = 16;
    }

    else
    {
      v9 = v8;
    }

    if (a2 == 13)
    {
      v10 = 15;
    }

    else
    {
      v10 = v9;
    }

    if (a5)
    {
      v10 = a2;
    }

    if (v7 == *(a1 + 168) && a4 != 0)
    {
      a2 = v10;
    }
  }

  if (v6 == 18)
  {
    a3 = **(a3 + 16);
  }

  v13 = a2 == 1 && a3 == *(a1 + 168);
  return v13 | (a2 << 16);
}

void AGCLLVMG15PB0TargetLowerer::createGPUVAMasks(int *a1@<X1>, int a2@<W2>, void *a3@<X8>)
{
  a3[1] = 0;
  v6 = a3 + 1;
  a3[2] = 0;
  *a3 = a3 + 1;
  v7 = *a1;
  v8 = *(a1 - v7);
  if (v8 < 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a1 - v7 + 4);
    if (*(a1 - v7 + 4))
    {
      v9 = (v9 + a1 + *(v9 + a1));
    }
  }

  v10 = *(v9 - *v9 + 12);
  v11 = *(v9 + v10);
  v12 = (v9 + v10 + v11);
  v13 = *v12;
  if (v13)
  {
    v14 = 0;
    v15 = 4 * v13;
    if (a2)
    {
      v16 = -524484864;
    }

    else
    {
      v16 = 65280;
    }

    v17 = v9 + v10 + v11;
    do
    {
      v18 = v12[v14 / 4 + 1];
      v19 = &v17[v14 + v18 - *(&v12[v14 / 4 + 1] + v18)];
      if (*(v19 + 2) >= 7u && (v20 = *(v19 + 5)) != 0)
      {
        v21 = *&v17[v14 + 4 + v18 + v20];
      }

      else
      {
        v21 = 0;
      }

      v68 = v21;
      v69 = &v68;
      *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, v21) + 8) = v16;
      v14 += 4;
    }

    while (v15 != v14);
    v22 = *a1;
    v23 = -v22;
    v8 = *(a1 - v22);
  }

  else
  {
    v23 = -v7;
  }

  v24 = a1 + v23;
  if (v8 < 5)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(v24 + 2);
    if (*(v24 + 2))
    {
      v25 = (v25 + a1 + *(v25 + a1));
    }
  }

  v26 = (v25 + *(v25 - *v25 + 8));
  v27 = (v26 + *v26);
  v28 = *v27;
  if (v28)
  {
    v29 = 0;
    v30 = 4 * v28;
    while (1)
    {
      v31 = v27[v29 / 4 + 1];
      v32 = v31 - *(&v27[v29 / 4 + 1] + v31);
      v33 = &v27[v29 / 4] + v32;
      v34 = *(v33 + 2);
      if (v34 < 5)
      {
        break;
      }

      v35 = *(v33 + 4);
      if (!v35)
      {
        v37 = v27 + v31 + v29 + 4;
        v38 = &v27[v29 / 4] + v32;
LABEL_30:
        v39 = v38 + 4;
        if (v34 >= 0xB)
        {
          v40 = *(v39 + 5);
          if (v40)
          {
            v36 = *(v37 + v40);
            goto LABEL_34;
          }
        }

        break;
      }

      if (!*(&v27[v29 / 4 + 1] + v31 + v35))
      {
        v37 = v27 + v31 + v29 + 4;
        v38 = &v27[v29 / 4] + v32;
        goto LABEL_30;
      }

      v29 += 4;
      if (v30 == v29)
      {
        goto LABEL_27;
      }
    }

    v36 = 0;
  }

  else
  {
LABEL_27:
    v36 = -1;
  }

LABEL_34:
  if (v8 < 5)
  {
    v41 = 0;
  }

  else
  {
    v41 = *(v24 + 2);
    if (*(v24 + 2))
    {
      v41 = (v41 + a1 + *(v41 + a1));
    }
  }

  v42 = (v41 + *(v41 - *v41 + 24));
  v43 = (v42 + *v42);
  v44 = *v43;
  if (v44)
  {
    v45 = &v43[v44];
    do
    {
      v46 = v43[1];
      v47 = (++v43 + v46);
      v48 = (v47 - *v47);
      v49 = *v48;
      if (v49 >= 5 && v48[2] && *(v47 + v48[2]) == 110)
      {
        if (v49 >= 7 && (v50 = v48[3]) != 0)
        {
          v51 = *(v47 + v50);
        }

        else
        {
          v51 = 0;
        }

        v68 = v51;
        v52 = (v47 - *v47);
        if (*v52 >= 9u && (v53 = v52[4]) != 0)
        {
          v54 = *(v47 + v53);
        }

        else
        {
          v54 = 0;
        }

        v55 = *v6;
        if (*v6)
        {
          v56 = v6;
          do
          {
            v57 = *(v55 + 28);
            v58 = v57 >= v51;
            v59 = v57 < v51;
            if (v58)
            {
              v56 = v55;
            }

            v55 = *(v55 + 8 * v59);
          }

          while (v55);
          if (v56 != v6 && v51 >= *(v56 + 7))
          {
            v60 = v54 + v36;
            v61 = (v60 << 7) & 0x7F00;
            v62 = (v60 >> 1) ^ ((v60 >> 1) >> 4);
            v63 = (v61 & 0xFFFF7FFF | (((v62 ^ (v62 >> 2) ^ ((v62 ^ (v62 >> 2)) >> 1)) & 1) << 15)) ^ 0x8000;
            if (a2)
            {
              v64 = 0;
              v65 = v63 | 0xBC0000;
              v66 = v65 >> 8;
              v67 = 43;
              do
              {
                v66 ^= ((v66 >> v64 << 31) >> 31) & v67;
                v67 *= 2;
                ++v64;
              }

              while (v64 != 19);
              v63 = v65 & 0x7FFFFFF | ((v66 >> 19) << 27);
            }

            v69 = &v68;
            *(std::__tree<std::__value_type<unsigned int,unsigned int>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned int>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, v51) + 8) = v63;
          }
        }
      }
    }

    while (v43 != v45);
  }
}

uint64_t AGCLLVMG15PB0TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v89 = *a2;
  v90 = *(a2 + 16);
  if (v90)
  {
    llvm::MetadataTracking::track();
  }

  v91 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v89);
  if (v90)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v88 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v87);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v88 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v87);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v86 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v85);
  v16 = *(a1 + 200);
  v84 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v83);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v82 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v19, v81);
  v21 = *(a1 + 200);
  v80 = 257;
  v22 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v21, v79);
  v23 = *(a1 + 200);
  v24 = llvm::ConstantInt::get();
  v88 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v22, v24, v87);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v26 = *(a1 + 208);
    v27 = llvm::ConstantInt::get();
    v88 = 257;
    v28 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v27, v87);
    v29 = *(a1 + 208);
    v30 = llvm::ConstantInt::get();
    v86 = 257;
    v31 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v28, v30, v85);
    v32 = *(a1 + 200);
    v84 = 257;
    v33 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v31, v32, v83);
    v34 = *(a1 + 200);
    v35 = llvm::ConstantInt::get();
    v82 = 257;
    v36 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v33, v35, v81);
    v37 = *(a1 + 208);
    v38 = llvm::ConstantInt::get();
    v88 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v87);
    v40 = *(a1 + 208);
    v41 = llvm::ConstantInt::get();
    v86 = 257;
    v42 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v41, v85);
    v43 = *(a1 + 200);
    v84 = 257;
    v44 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v42, v43, v83);
    v45 = *(a1 + 200);
    v46 = llvm::ConstantInt::get();
    v82 = 257;
    v47 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v44, v46, v81);
    v48 = *(a1 + 208);
    v49 = llvm::ConstantInt::get();
    v88 = 257;
    v50 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v49, v87);
    v51 = *(a1 + 208);
    v52 = llvm::ConstantInt::get();
    v86 = 257;
    v53 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v50, v52, v85);
    v54 = *(a1 + 200);
    v84 = 257;
    v55 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v53, v54, v83);
    v56 = *(a1 + 200);
    v57 = llvm::ConstantInt::get();
    v82 = 257;
    v58 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v55, v57, v81);
    v59 = *(a1 + 208);
    v60 = llvm::ConstantInt::get();
    v88 = 257;
    v61 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v60, v87);
    v62 = *(a1 + 208);
    v63 = llvm::ConstantInt::get();
    v86 = 257;
    v64 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v61, v63, v85);
    v65 = *(a1 + 200);
    v84 = 257;
    v66 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v64, v65, v83);
    v67 = *(a1 + 200);
    v68 = llvm::ConstantInt::get();
    v82 = 257;
    v69 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v66, v68, v81);
    v88 = 257;
    v70 = llvm::IRBuilderBase::CreateOr((a1 + 8), v47, v58, v87);
    v88 = 257;
    v71 = llvm::IRBuilderBase::CreateOr((a1 + 8), v70, v69, v87);
    v87[0] = "is_float16_texture";
    v88 = 259;
    v72 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v36, v71, v87);
    v73 = *(a1 + 200);
    v86 = 257;
    v74 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v72, v73, v85);
    v75 = *(a1 + 200);
    v76 = llvm::ConstantInt::get();
    v88 = 257;
    v77 = llvm::IRBuilderBase::CreateShl((a1 + 8), v74, v76, v87);
    v86 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v77, v85);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
}

uint64_t AGCLLVMG15PB0TargetLowerer::buildImageBaseLevelExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v25 = *a2;
  v26 = *(a2 + 16);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v25);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v24 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v23);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v24 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v23);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v22 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v21);
  v16 = *(a1 + 200);
  v20 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v19);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Cast, a4, 0);
}

uint64_t AGCLLVMG15PB0TargetLowerer::buildImageSampleCountExtract(void *a1, uint64_t a2, llvm::Value *a3, uint64_t a4)
{
  v31 = *a2;
  v32 = *(a2 + 16);
  if (v32)
  {
    llvm::MetadataTracking::track();
  }

  v33 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v31);
  if (v32)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = a1[25];
  v9 = a1[26];
  v10 = llvm::ConstantInt::get();
  v30 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 1), v9, a3, v10, v29);
  v28 = 257;
  Load = AGCLLVMBuilder::CreateLoad(a1, GEP, v27);
  v13 = a1[26];
  v14 = llvm::ConstantInt::get();
  v30 = 257;
  v15 = llvm::IRBuilderBase::CreateAnd((a1 + 1), Load, v14, v29);
  v16 = a1[26];
  v17 = llvm::ConstantInt::get();
  v28 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 1), v15, v17, v27);
  v19 = a1[25];
  v26 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((a1 + 1), 38, LShr, v19, v25);
  v21 = a1[25];
  v22 = llvm::ConstantInt::get();
  v30 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 1), v22, Cast, v29);
  return llvm::IRBuilderBase::CreateAlignedStore(a1 + 1, Shl, a4, 0);
}

uint64_t AGCLLVMG15PB0TargetLowerer::buildImageMipCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
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

  v8 = *(a1 + 208);
  v36 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v35);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v36 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v35);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v34 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v33);
  v16 = *(a1 + 200);
  v32 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v31);
  v18 = *(a1 + 208);
  v19 = llvm::ConstantInt::get();
  v36 = 257;
  v20 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v19, v35);
  v21 = *(a1 + 208);
  v22 = llvm::ConstantInt::get();
  v34 = 257;
  v23 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v20, v22, v33);
  v24 = *(a1 + 200);
  v32 = 257;
  v25 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v23, v24, v31);
  v36 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((a1 + 8), Cast, v25, v35);
  v27 = *(a1 + 200);
  v28 = llvm::ConstantInt::get();
  v34 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Sub, v28, v33);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Add, a4, 0);
}

uint64_t AGCLLVMG15PB0TargetLowerer::buildImageDimensionsExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v120 = *a2;
  v121 = *(a2 + 16);
  if (v121)
  {
    llvm::MetadataTracking::track();
  }

  v122 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v120);
  if (v121)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v119 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v118);
  v10 = *(a1 + 200);
  v11 = *(a1 + 208);
  v12 = llvm::ConstantInt::get();
  v119 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v11, a3, v12, v118);
  v117 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v14 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v11, GEP, 0, v116);
  v15 = *(a1 + 200);
  v16 = *(a1 + 208);
  v17 = llvm::ConstantInt::get();
  v119 = 257;
  v18 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v16, a3, v17, v118);
  v117 = 257;
  llvm::Type::isOpaquePointerTy(*v18);
  v19 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v16, v18, 0, v116);
  v20 = *(a1 + 208);
  v21 = llvm::ConstantInt::get();
  v119 = 257;
  v22 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v14, v21, v118);
  v23 = *(a1 + 208);
  v24 = llvm::ConstantInt::get();
  v117 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v22, v24, v116);
  v26 = *(a1 + 200);
  v115 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v26, v114);
  v28 = *(a1 + 200);
  v29 = llvm::ConstantInt::get();
  v113 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Cast, v29, v112);
  v31 = *(a1 + 208);
  v32 = llvm::ConstantInt::get();
  v119 = 257;
  v33 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v32, v118);
  v34 = *(a1 + 208);
  v35 = llvm::ConstantInt::get();
  v117 = 257;
  v36 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v33, v35, v116);
  v37 = *(a1 + 200);
  v115 = 257;
  v38 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v36, v37, v114);
  v39 = *(a1 + 208);
  v40 = llvm::ConstantInt::get();
  v119 = 257;
  v41 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v40, v118);
  v42 = *(a1 + 208);
  v43 = llvm::ConstantInt::get();
  v117 = 257;
  v44 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v41, v43, v116);
  v45 = *(a1 + 200);
  v115 = 257;
  v46 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v44, v45, v114);
  v47 = *(a1 + 200);
  v48 = llvm::ConstantInt::get();
  v113 = 257;
  v49 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v46, v48, v112);
  v50 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v49, v38);
  v51 = *(a1 + 208);
  v52 = llvm::ConstantInt::get();
  v119 = 257;
  v53 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v52, v118);
  v54 = *(a1 + 208);
  v55 = llvm::ConstantInt::get();
  v117 = 257;
  v56 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v53, v55, v116);
  v57 = *(a1 + 200);
  v115 = 257;
  v58 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v56, v57, v114);
  v59 = *(a1 + 200);
  v60 = llvm::ConstantInt::get();
  v113 = 257;
  v61 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v58, v60, v112);
  v62 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v61, v38);
  v63 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, v38);
  v64 = *(a1 + 208);
  v65 = llvm::ConstantInt::get();
  v119 = 257;
  v66 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v19, v65, v118);
  v67 = *(a1 + 208);
  v68 = llvm::ConstantInt::get();
  v117 = 257;
  v69 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v66, v68, v116);
  v70 = *(a1 + 200);
  v115 = 257;
  v71 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v69, v70, v114);
  v72 = *(a1 + 200);
  v73 = llvm::ConstantInt::get();
  v113 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 8), v71, v73, v112);
  v74 = *(a1 + 208);
  v75 = llvm::ConstantInt::get();
  v119 = 257;
  v76 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v75, v118);
  v77 = *(a1 + 208);
  v78 = llvm::ConstantInt::get();
  v117 = 257;
  v79 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v76, v78, v116);
  v80 = *(a1 + 200);
  v115 = 257;
  v81 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v79, v80, v114);
  v82 = *(a1 + 208);
  v83 = llvm::ConstantInt::get();
  v119 = 257;
  v84 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v83, v118);
  v85 = *(a1 + 208);
  v86 = llvm::ConstantInt::get();
  v117 = 257;
  v87 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v84, v86, v116);
  v88 = *(a1 + 200);
  v115 = 257;
  v89 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v87, v88, v114);
  v90 = *(a1 + 200);
  v91 = llvm::ConstantInt::get();
  v119 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v81, v91, v118);
  v93 = *(a1 + 200);
  v94 = llvm::ConstantInt::get();
  v117 = 257;
  v95 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v89, v94, v116);
  v115 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 8), ICmp, v95, v114);
  v119 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(*(a1 + 336), v97);
  v119 = 257;
  v99 = *(a1 + 200);
  v100 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), NullValue, v50, v100, v118);
  v119 = 257;
  v102 = *(a1 + 200);
  v103 = llvm::ConstantInt::get();
  v104 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v62, v103, v118);
  v119 = 257;
  v105 = *(a1 + 200);
  v106 = llvm::ConstantInt::get();
  v107 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v104, v63, v106, v118);
  v119 = 257;
  v108 = *(a1 + 200);
  v109 = llvm::ConstantInt::get();
  v110 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v107, Select, v109, v118);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v110, a4, 0);
}

void AGCLLVMG15PB0TargetLowerer::~AGCLLVMG15PB0TargetLowerer(AGCLLVMG15PB0TargetLowerer *this)
{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

void AGCLLVMG16PB0TargetConfig::~AGCLLVMG16PB0TargetConfig(AGCLLVMG16PB0TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMG16PA0TargetConfig::~AGCLLVMG16PA0TargetConfig(AGCLLVMG16PA0TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMG16GA0TargetConfig::~AGCLLVMG16GA0TargetConfig(AGCLLVMG16GA0TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);
}

uint64_t AGCLLVMG16GA0TargetLowerer::extractMaxLevel(AGCLLVMG16GA0TargetLowerer *this, llvm::Value *a2)
{
  v4 = *(this + 26);
  v5 = llvm::ConstantInt::get();
  v14 = 257;
  v6 = llvm::IRBuilderBase::CreateAnd((this + 8), a2, v5, v13);
  v7 = *(this + 26);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 8), v6, v8, v13);
  v10 = *(this + 25);
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 38, LShr, v10, v12);
}

uint64_t AGCLLVMG16GA0TargetLowerer::extractBaseLevel(AGCLLVMG16GA0TargetLowerer *this, llvm::Value *a2)
{
  v4 = *(this + 26);
  v5 = llvm::ConstantInt::get();
  v14 = 257;
  v6 = llvm::IRBuilderBase::CreateAnd((this + 8), a2, v5, v13);
  v7 = *(this + 26);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 8), v6, v8, v13);
  v10 = *(this + 25);
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 38, LShr, v10, v12);
}

uint64_t AGCLLVMG16GA0TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v89 = *a2;
  v90 = *(a2 + 16);
  if (v90)
  {
    llvm::MetadataTracking::track();
  }

  v91 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v89);
  if (v90)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v88 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v87);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v88 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v87);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v86 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v85);
  v16 = *(a1 + 200);
  v84 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v83);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v82 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v19, v81);
  v21 = *(a1 + 200);
  v80 = 257;
  v22 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v21, v79);
  v23 = *(a1 + 200);
  v24 = llvm::ConstantInt::get();
  v88 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v22, v24, v87);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v26 = *(a1 + 208);
    v27 = llvm::ConstantInt::get();
    v88 = 257;
    v28 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v27, v87);
    v29 = *(a1 + 208);
    v30 = llvm::ConstantInt::get();
    v86 = 257;
    v31 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v28, v30, v85);
    v32 = *(a1 + 200);
    v84 = 257;
    v33 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v31, v32, v83);
    v34 = *(a1 + 200);
    v35 = llvm::ConstantInt::get();
    v82 = 257;
    v36 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v33, v35, v81);
    v37 = *(a1 + 208);
    v38 = llvm::ConstantInt::get();
    v88 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v87);
    v40 = *(a1 + 208);
    v41 = llvm::ConstantInt::get();
    v86 = 257;
    v42 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v41, v85);
    v43 = *(a1 + 200);
    v84 = 257;
    v44 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v42, v43, v83);
    v45 = *(a1 + 200);
    v46 = llvm::ConstantInt::get();
    v82 = 257;
    v47 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v44, v46, v81);
    v48 = *(a1 + 208);
    v49 = llvm::ConstantInt::get();
    v88 = 257;
    v50 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v49, v87);
    v51 = *(a1 + 208);
    v52 = llvm::ConstantInt::get();
    v86 = 257;
    v53 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v50, v52, v85);
    v54 = *(a1 + 200);
    v84 = 257;
    v55 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v53, v54, v83);
    v56 = *(a1 + 200);
    v57 = llvm::ConstantInt::get();
    v82 = 257;
    v58 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v55, v57, v81);
    v59 = *(a1 + 208);
    v60 = llvm::ConstantInt::get();
    v88 = 257;
    v61 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v60, v87);
    v62 = *(a1 + 208);
    v63 = llvm::ConstantInt::get();
    v86 = 257;
    v64 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v61, v63, v85);
    v65 = *(a1 + 200);
    v84 = 257;
    v66 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v64, v65, v83);
    v67 = *(a1 + 200);
    v68 = llvm::ConstantInt::get();
    v82 = 257;
    v69 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v66, v68, v81);
    v88 = 257;
    v70 = llvm::IRBuilderBase::CreateOr((a1 + 8), v47, v58, v87);
    v88 = 257;
    v71 = llvm::IRBuilderBase::CreateOr((a1 + 8), v70, v69, v87);
    v87[0] = "is_float16_texture";
    v88 = 259;
    v72 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v36, v71, v87);
    v73 = *(a1 + 200);
    v86 = 257;
    v74 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v72, v73, v85);
    v75 = *(a1 + 200);
    v76 = llvm::ConstantInt::get();
    v88 = 257;
    v77 = llvm::IRBuilderBase::CreateShl((a1 + 8), v74, v76, v87);
    v86 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v77, v85);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
}

uint64_t AGCLLVMG16GA0TargetLowerer::buildImageSampleCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v28 = *a2;
  v29 = *(a2 + 16);
  if (v29)
  {
    llvm::MetadataTracking::track();
  }

  v30 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v28);
  if (v29)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v27 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v26);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v27 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v26);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v25 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v24);
  v16 = *(a1 + 200);
  v23 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v22);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v27 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, Cast, v26);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
}

uint64_t AGCLLVMG16GA0TargetLowerer::buildImageDimensionsExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v124 = *a2;
  v125 = *(a2 + 16);
  if (v125)
  {
    llvm::MetadataTracking::track();
  }

  v126 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v124);
  if (v125)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v123 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v122);
  v10 = *(a1 + 200);
  v11 = *(a1 + 208);
  v12 = llvm::ConstantInt::get();
  v123 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v11, a3, v12, v122);
  v121 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v14 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v11, GEP, 0, v120);
  v15 = *(a1 + 200);
  v16 = *(a1 + 208);
  v17 = llvm::ConstantInt::get();
  v123 = 257;
  v18 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v16, a3, v17, v122);
  v121 = 257;
  llvm::Type::isOpaquePointerTy(*v18);
  v19 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v16, v18, 0, v120);
  v20 = *(a1 + 208);
  v21 = llvm::ConstantInt::get();
  v123 = 257;
  v22 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v14, v21, v122);
  v23 = *(a1 + 208);
  v24 = llvm::ConstantInt::get();
  v121 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v22, v24, v120);
  v26 = *(a1 + 200);
  v119 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v26, v118);
  v28 = *(a1 + 200);
  v29 = llvm::ConstantInt::get();
  v117 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Cast, v29, v116);
  (*(*a1 + 1984))(a1, v19);
  v31 = *(a1 + 208);
  v32 = llvm::ConstantInt::get();
  v123 = 257;
  v33 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v32, v122);
  v34 = *(a1 + 208);
  v35 = llvm::ConstantInt::get();
  v121 = 257;
  v36 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v33, v35, v120);
  v37 = *(a1 + 200);
  v119 = 257;
  v38 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v36, v37, v118);
  v39 = *(a1 + 200);
  v40 = llvm::ConstantInt::get();
  v117 = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v38, v40, v116);
  v41 = *(a1 + 200);
  llvm::ConstantInt::get();
  v123 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v43 = *(a1 + 208);
  v44 = llvm::ConstantInt::get();
  v123 = 257;
  v45 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v44, v122);
  v46 = *(a1 + 208);
  v47 = llvm::ConstantInt::get();
  v121 = 257;
  v48 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v45, v47, v120);
  v49 = *(a1 + 200);
  v119 = 257;
  v50 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v48, v49, v118);
  v51 = *(a1 + 200);
  v52 = llvm::ConstantInt::get();
  v117 = 257;
  v53 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v50, v52, v116);
  v54 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v53, Select);
  v55 = *(a1 + 208);
  v56 = llvm::ConstantInt::get();
  v123 = 257;
  v57 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v56, v122);
  v58 = *(a1 + 208);
  v59 = llvm::ConstantInt::get();
  v121 = 257;
  v60 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v57, v59, v120);
  v61 = *(a1 + 200);
  v119 = 257;
  v62 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v60, v61, v118);
  v63 = *(a1 + 200);
  v64 = llvm::ConstantInt::get();
  v117 = 257;
  v65 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v62, v64, v116);
  v66 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v65, Select);
  v67 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, Select);
  v68 = *(a1 + 208);
  v69 = llvm::ConstantInt::get();
  v123 = 257;
  v70 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v19, v69, v122);
  v71 = *(a1 + 208);
  v72 = llvm::ConstantInt::get();
  v121 = 257;
  v73 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v70, v72, v120);
  v74 = *(a1 + 200);
  v119 = 257;
  v75 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v73, v74, v118);
  v76 = *(a1 + 200);
  v77 = llvm::ConstantInt::get();
  v117 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 8), v75, v77, v116);
  v78 = *(a1 + 208);
  v79 = llvm::ConstantInt::get();
  v123 = 257;
  v80 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v79, v122);
  v81 = *(a1 + 208);
  v82 = llvm::ConstantInt::get();
  v121 = 257;
  v83 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v80, v82, v120);
  v84 = *(a1 + 200);
  v119 = 257;
  v85 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v83, v84, v118);
  v86 = *(a1 + 208);
  v87 = llvm::ConstantInt::get();
  v123 = 257;
  v88 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v87, v122);
  v89 = *(a1 + 208);
  v90 = llvm::ConstantInt::get();
  v121 = 257;
  v91 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v88, v90, v120);
  v92 = *(a1 + 200);
  v119 = 257;
  v93 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v91, v92, v118);
  v94 = *(a1 + 200);
  v95 = llvm::ConstantInt::get();
  v123 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v85, v95, v122);
  v97 = *(a1 + 200);
  v98 = llvm::ConstantInt::get();
  v121 = 257;
  v99 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v93, v98, v120);
  v119 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 8), ICmp, v99, v118);
  v123 = 257;
  v100 = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(*(a1 + 336), v101);
  v123 = 257;
  v103 = *(a1 + 200);
  v104 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), NullValue, v54, v104, v122);
  v123 = 257;
  v106 = *(a1 + 200);
  v107 = llvm::ConstantInt::get();
  v108 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v66, v107, v122);
  v123 = 257;
  v109 = *(a1 + 200);
  v110 = llvm::ConstantInt::get();
  v111 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v108, v67, v110, v122);
  v123 = 257;
  v112 = *(a1 + 200);
  v113 = llvm::ConstantInt::get();
  v114 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v111, v100, v113, v122);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v114, a4, 0);
}

void AGCLLVMG16GA0TargetLowerer::~AGCLLVMG16GA0TargetLowerer(AGCLLVMG16GA0TargetLowerer *this)
{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

void AGCLLVMG16GA0TargetConfig::AGCLLVMG16GA0TargetConfig()
{
  AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateHAL200TargetConfig(AGCTargetArch)::g16g_a0, 65568);
  *(v0 + 60) = 0;
  *(v0 + 49) = 0;
  *v0 = &unk_2825B51A0;
  *(v0 + 8) = "agx3-apple-ios";
}

void AGCLLVMG16GB0TargetConfig::~AGCLLVMG16GB0TargetConfig(AGCLLVMG16GB0TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);
}

uint64_t AGCLLVMG16GB0TargetLowerer::extractMaxLevel(AGCLLVMG16GB0TargetLowerer *this, llvm::Value *a2)
{
  v4 = *(this + 26);
  v5 = llvm::ConstantInt::get();
  v14 = 257;
  v6 = llvm::IRBuilderBase::CreateAnd((this + 8), a2, v5, v13);
  v7 = *(this + 26);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 8), v6, v8, v13);
  v10 = *(this + 25);
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 38, LShr, v10, v12);
}

uint64_t AGCLLVMG16GB0TargetLowerer::extractBaseLevel(AGCLLVMG16GB0TargetLowerer *this, llvm::Value *a2)
{
  v4 = *(this + 26);
  v5 = llvm::ConstantInt::get();
  v14 = 257;
  v6 = llvm::IRBuilderBase::CreateAnd((this + 8), a2, v5, v13);
  v7 = *(this + 26);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 8), v6, v8, v13);
  v10 = *(this + 25);
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 38, LShr, v10, v12);
}

uint64_t AGCLLVMG16GB0TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v89 = *a2;
  v90 = *(a2 + 16);
  if (v90)
  {
    llvm::MetadataTracking::track();
  }

  v91 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v89);
  if (v90)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v88 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v87);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v88 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v87);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v86 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v85);
  v16 = *(a1 + 200);
  v84 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v83);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v82 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v19, v81);
  v21 = *(a1 + 200);
  v80 = 257;
  v22 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v21, v79);
  v23 = *(a1 + 200);
  v24 = llvm::ConstantInt::get();
  v88 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v22, v24, v87);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v26 = *(a1 + 208);
    v27 = llvm::ConstantInt::get();
    v88 = 257;
    v28 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v27, v87);
    v29 = *(a1 + 208);
    v30 = llvm::ConstantInt::get();
    v86 = 257;
    v31 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v28, v30, v85);
    v32 = *(a1 + 200);
    v84 = 257;
    v33 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v31, v32, v83);
    v34 = *(a1 + 200);
    v35 = llvm::ConstantInt::get();
    v82 = 257;
    v36 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v33, v35, v81);
    v37 = *(a1 + 208);
    v38 = llvm::ConstantInt::get();
    v88 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v87);
    v40 = *(a1 + 208);
    v41 = llvm::ConstantInt::get();
    v86 = 257;
    v42 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v41, v85);
    v43 = *(a1 + 200);
    v84 = 257;
    v44 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v42, v43, v83);
    v45 = *(a1 + 200);
    v46 = llvm::ConstantInt::get();
    v82 = 257;
    v47 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v44, v46, v81);
    v48 = *(a1 + 208);
    v49 = llvm::ConstantInt::get();
    v88 = 257;
    v50 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v49, v87);
    v51 = *(a1 + 208);
    v52 = llvm::ConstantInt::get();
    v86 = 257;
    v53 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v50, v52, v85);
    v54 = *(a1 + 200);
    v84 = 257;
    v55 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v53, v54, v83);
    v56 = *(a1 + 200);
    v57 = llvm::ConstantInt::get();
    v82 = 257;
    v58 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v55, v57, v81);
    v59 = *(a1 + 208);
    v60 = llvm::ConstantInt::get();
    v88 = 257;
    v61 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v60, v87);
    v62 = *(a1 + 208);
    v63 = llvm::ConstantInt::get();
    v86 = 257;
    v64 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v61, v63, v85);
    v65 = *(a1 + 200);
    v84 = 257;
    v66 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v64, v65, v83);
    v67 = *(a1 + 200);
    v68 = llvm::ConstantInt::get();
    v82 = 257;
    v69 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v66, v68, v81);
    v88 = 257;
    v70 = llvm::IRBuilderBase::CreateOr((a1 + 8), v47, v58, v87);
    v88 = 257;
    v71 = llvm::IRBuilderBase::CreateOr((a1 + 8), v70, v69, v87);
    v87[0] = "is_float16_texture";
    v88 = 259;
    v72 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v36, v71, v87);
    v73 = *(a1 + 200);
    v86 = 257;
    v74 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v72, v73, v85);
    v75 = *(a1 + 200);
    v76 = llvm::ConstantInt::get();
    v88 = 257;
    v77 = llvm::IRBuilderBase::CreateShl((a1 + 8), v74, v76, v87);
    v86 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v77, v85);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
}

uint64_t AGCLLVMG16GB0TargetLowerer::buildImageSampleCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v28 = *a2;
  v29 = *(a2 + 16);
  if (v29)
  {
    llvm::MetadataTracking::track();
  }

  v30 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v28);
  if (v29)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v27 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v26);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v27 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v26);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v25 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v24);
  v16 = *(a1 + 200);
  v23 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v22);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v27 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, Cast, v26);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
}

uint64_t AGCLLVMG16GB0TargetLowerer::buildImageDimensionsExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v124 = *a2;
  v125 = *(a2 + 16);
  if (v125)
  {
    llvm::MetadataTracking::track();
  }

  v126 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v124);
  if (v125)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v123 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v122);
  v10 = *(a1 + 200);
  v11 = *(a1 + 208);
  v12 = llvm::ConstantInt::get();
  v123 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v11, a3, v12, v122);
  v121 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v14 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v11, GEP, 0, v120);
  v15 = *(a1 + 200);
  v16 = *(a1 + 208);
  v17 = llvm::ConstantInt::get();
  v123 = 257;
  v18 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v16, a3, v17, v122);
  v121 = 257;
  llvm::Type::isOpaquePointerTy(*v18);
  v19 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v16, v18, 0, v120);
  v20 = *(a1 + 208);
  v21 = llvm::ConstantInt::get();
  v123 = 257;
  v22 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v14, v21, v122);
  v23 = *(a1 + 208);
  v24 = llvm::ConstantInt::get();
  v121 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v22, v24, v120);
  v26 = *(a1 + 200);
  v119 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v26, v118);
  v28 = *(a1 + 200);
  v29 = llvm::ConstantInt::get();
  v117 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Cast, v29, v116);
  (*(*a1 + 1984))(a1, v19);
  v31 = *(a1 + 208);
  v32 = llvm::ConstantInt::get();
  v123 = 257;
  v33 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v32, v122);
  v34 = *(a1 + 208);
  v35 = llvm::ConstantInt::get();
  v121 = 257;
  v36 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v33, v35, v120);
  v37 = *(a1 + 200);
  v119 = 257;
  v38 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v36, v37, v118);
  v39 = *(a1 + 200);
  v40 = llvm::ConstantInt::get();
  v117 = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v38, v40, v116);
  v41 = *(a1 + 200);
  llvm::ConstantInt::get();
  v123 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v43 = *(a1 + 208);
  v44 = llvm::ConstantInt::get();
  v123 = 257;
  v45 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v44, v122);
  v46 = *(a1 + 208);
  v47 = llvm::ConstantInt::get();
  v121 = 257;
  v48 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v45, v47, v120);
  v49 = *(a1 + 200);
  v119 = 257;
  v50 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v48, v49, v118);
  v51 = *(a1 + 200);
  v52 = llvm::ConstantInt::get();
  v117 = 257;
  v53 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v50, v52, v116);
  v54 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v53, Select);
  v55 = *(a1 + 208);
  v56 = llvm::ConstantInt::get();
  v123 = 257;
  v57 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v56, v122);
  v58 = *(a1 + 208);
  v59 = llvm::ConstantInt::get();
  v121 = 257;
  v60 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v57, v59, v120);
  v61 = *(a1 + 200);
  v119 = 257;
  v62 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v60, v61, v118);
  v63 = *(a1 + 200);
  v64 = llvm::ConstantInt::get();
  v117 = 257;
  v65 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v62, v64, v116);
  v66 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v65, Select);
  v67 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, Select);
  v68 = *(a1 + 208);
  v69 = llvm::ConstantInt::get();
  v123 = 257;
  v70 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v19, v69, v122);
  v71 = *(a1 + 208);
  v72 = llvm::ConstantInt::get();
  v121 = 257;
  v73 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v70, v72, v120);
  v74 = *(a1 + 200);
  v119 = 257;
  v75 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v73, v74, v118);
  v76 = *(a1 + 200);
  v77 = llvm::ConstantInt::get();
  v117 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 8), v75, v77, v116);
  v78 = *(a1 + 208);
  v79 = llvm::ConstantInt::get();
  v123 = 257;
  v80 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v79, v122);
  v81 = *(a1 + 208);
  v82 = llvm::ConstantInt::get();
  v121 = 257;
  v83 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v80, v82, v120);
  v84 = *(a1 + 200);
  v119 = 257;
  v85 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v83, v84, v118);
  v86 = *(a1 + 208);
  v87 = llvm::ConstantInt::get();
  v123 = 257;
  v88 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v87, v122);
  v89 = *(a1 + 208);
  v90 = llvm::ConstantInt::get();
  v121 = 257;
  v91 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v88, v90, v120);
  v92 = *(a1 + 200);
  v119 = 257;
  v93 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v91, v92, v118);
  v94 = *(a1 + 200);
  v95 = llvm::ConstantInt::get();
  v123 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v85, v95, v122);
  v97 = *(a1 + 200);
  v98 = llvm::ConstantInt::get();
  v121 = 257;
  v99 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v93, v98, v120);
  v119 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 8), ICmp, v99, v118);
  v123 = 257;
  v100 = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(*(a1 + 336), v101);
  v123 = 257;
  v103 = *(a1 + 200);
  v104 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), NullValue, v54, v104, v122);
  v123 = 257;
  v106 = *(a1 + 200);
  v107 = llvm::ConstantInt::get();
  v108 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v66, v107, v122);
  v123 = 257;
  v109 = *(a1 + 200);
  v110 = llvm::ConstantInt::get();
  v111 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v108, v67, v110, v122);
  v123 = 257;
  v112 = *(a1 + 200);
  v113 = llvm::ConstantInt::get();
  v114 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v111, v100, v113, v122);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v114, a4, 0);
}

void AGCLLVMG16GB0TargetLowerer::~AGCLLVMG16GB0TargetLowerer(AGCLLVMG16GB0TargetLowerer *this)
{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

void AGCLLVMG16GB0TargetConfig::AGCLLVMG16GB0TargetConfig()
{
  AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateHAL200TargetConfig(AGCTargetArch)::g16g_b0, 196640);
  *(v0 + 60) = 0;
  *(v0 + 49) = 0;
  *v0 = &unk_2825B5A98;
  *(v0 + 8) = "agx3-apple-ios";
}

uint64_t AGCLLVMG16PA0TargetLowerer::extractMaxLevel(AGCLLVMG16PA0TargetLowerer *this, llvm::Value *a2)
{
  v4 = *(this + 26);
  v5 = llvm::ConstantInt::get();
  v14 = 257;
  v6 = llvm::IRBuilderBase::CreateAnd((this + 8), a2, v5, v13);
  v7 = *(this + 26);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 8), v6, v8, v13);
  v10 = *(this + 25);
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 38, LShr, v10, v12);
}

uint64_t AGCLLVMG16PA0TargetLowerer::extractBaseLevel(AGCLLVMG16PA0TargetLowerer *this, llvm::Value *a2)
{
  v4 = *(this + 26);
  v5 = llvm::ConstantInt::get();
  v14 = 257;
  v6 = llvm::IRBuilderBase::CreateAnd((this + 8), a2, v5, v13);
  v7 = *(this + 26);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 8), v6, v8, v13);
  v10 = *(this + 25);
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 38, LShr, v10, v12);
}

uint64_t AGCLLVMG16PA0TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v89 = *a2;
  v90 = *(a2 + 16);
  if (v90)
  {
    llvm::MetadataTracking::track();
  }

  v91 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v89);
  if (v90)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v88 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v87);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v88 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v87);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v86 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v85);
  v16 = *(a1 + 200);
  v84 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v83);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v82 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v19, v81);
  v21 = *(a1 + 200);
  v80 = 257;
  v22 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v21, v79);
  v23 = *(a1 + 200);
  v24 = llvm::ConstantInt::get();
  v88 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v22, v24, v87);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v26 = *(a1 + 208);
    v27 = llvm::ConstantInt::get();
    v88 = 257;
    v28 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v27, v87);
    v29 = *(a1 + 208);
    v30 = llvm::ConstantInt::get();
    v86 = 257;
    v31 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v28, v30, v85);
    v32 = *(a1 + 200);
    v84 = 257;
    v33 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v31, v32, v83);
    v34 = *(a1 + 200);
    v35 = llvm::ConstantInt::get();
    v82 = 257;
    v36 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v33, v35, v81);
    v37 = *(a1 + 208);
    v38 = llvm::ConstantInt::get();
    v88 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v87);
    v40 = *(a1 + 208);
    v41 = llvm::ConstantInt::get();
    v86 = 257;
    v42 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v41, v85);
    v43 = *(a1 + 200);
    v84 = 257;
    v44 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v42, v43, v83);
    v45 = *(a1 + 200);
    v46 = llvm::ConstantInt::get();
    v82 = 257;
    v47 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v44, v46, v81);
    v48 = *(a1 + 208);
    v49 = llvm::ConstantInt::get();
    v88 = 257;
    v50 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v49, v87);
    v51 = *(a1 + 208);
    v52 = llvm::ConstantInt::get();
    v86 = 257;
    v53 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v50, v52, v85);
    v54 = *(a1 + 200);
    v84 = 257;
    v55 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v53, v54, v83);
    v56 = *(a1 + 200);
    v57 = llvm::ConstantInt::get();
    v82 = 257;
    v58 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v55, v57, v81);
    v59 = *(a1 + 208);
    v60 = llvm::ConstantInt::get();
    v88 = 257;
    v61 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v60, v87);
    v62 = *(a1 + 208);
    v63 = llvm::ConstantInt::get();
    v86 = 257;
    v64 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v61, v63, v85);
    v65 = *(a1 + 200);
    v84 = 257;
    v66 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v64, v65, v83);
    v67 = *(a1 + 200);
    v68 = llvm::ConstantInt::get();
    v82 = 257;
    v69 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v66, v68, v81);
    v88 = 257;
    v70 = llvm::IRBuilderBase::CreateOr((a1 + 8), v47, v58, v87);
    v88 = 257;
    v71 = llvm::IRBuilderBase::CreateOr((a1 + 8), v70, v69, v87);
    v87[0] = "is_float16_texture";
    v88 = 259;
    v72 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v36, v71, v87);
    v73 = *(a1 + 200);
    v86 = 257;
    v74 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v72, v73, v85);
    v75 = *(a1 + 200);
    v76 = llvm::ConstantInt::get();
    v88 = 257;
    v77 = llvm::IRBuilderBase::CreateShl((a1 + 8), v74, v76, v87);
    v86 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v77, v85);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
}

uint64_t AGCLLVMG16PA0TargetLowerer::buildImageSampleCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v28 = *a2;
  v29 = *(a2 + 16);
  if (v29)
  {
    llvm::MetadataTracking::track();
  }

  v30 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v28);
  if (v29)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v27 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v26);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v27 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v26);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v25 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v24);
  v16 = *(a1 + 200);
  v23 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v22);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v27 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, Cast, v26);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
}

uint64_t AGCLLVMG16PA0TargetLowerer::buildImageDimensionsExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v124 = *a2;
  v125 = *(a2 + 16);
  if (v125)
  {
    llvm::MetadataTracking::track();
  }

  v126 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v124);
  if (v125)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v123 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v122);
  v10 = *(a1 + 200);
  v11 = *(a1 + 208);
  v12 = llvm::ConstantInt::get();
  v123 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v11, a3, v12, v122);
  v121 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v14 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v11, GEP, 0, v120);
  v15 = *(a1 + 200);
  v16 = *(a1 + 208);
  v17 = llvm::ConstantInt::get();
  v123 = 257;
  v18 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v16, a3, v17, v122);
  v121 = 257;
  llvm::Type::isOpaquePointerTy(*v18);
  v19 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v16, v18, 0, v120);
  v20 = *(a1 + 208);
  v21 = llvm::ConstantInt::get();
  v123 = 257;
  v22 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v14, v21, v122);
  v23 = *(a1 + 208);
  v24 = llvm::ConstantInt::get();
  v121 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v22, v24, v120);
  v26 = *(a1 + 200);
  v119 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v26, v118);
  v28 = *(a1 + 200);
  v29 = llvm::ConstantInt::get();
  v117 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Cast, v29, v116);
  (*(*a1 + 1984))(a1, v19);
  v31 = *(a1 + 208);
  v32 = llvm::ConstantInt::get();
  v123 = 257;
  v33 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v32, v122);
  v34 = *(a1 + 208);
  v35 = llvm::ConstantInt::get();
  v121 = 257;
  v36 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v33, v35, v120);
  v37 = *(a1 + 200);
  v119 = 257;
  v38 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v36, v37, v118);
  v39 = *(a1 + 200);
  v40 = llvm::ConstantInt::get();
  v117 = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v38, v40, v116);
  v41 = *(a1 + 200);
  llvm::ConstantInt::get();
  v123 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v43 = *(a1 + 208);
  v44 = llvm::ConstantInt::get();
  v123 = 257;
  v45 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v44, v122);
  v46 = *(a1 + 208);
  v47 = llvm::ConstantInt::get();
  v121 = 257;
  v48 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v45, v47, v120);
  v49 = *(a1 + 200);
  v119 = 257;
  v50 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v48, v49, v118);
  v51 = *(a1 + 200);
  v52 = llvm::ConstantInt::get();
  v117 = 257;
  v53 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v50, v52, v116);
  v54 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v53, Select);
  v55 = *(a1 + 208);
  v56 = llvm::ConstantInt::get();
  v123 = 257;
  v57 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v56, v122);
  v58 = *(a1 + 208);
  v59 = llvm::ConstantInt::get();
  v121 = 257;
  v60 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v57, v59, v120);
  v61 = *(a1 + 200);
  v119 = 257;
  v62 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v60, v61, v118);
  v63 = *(a1 + 200);
  v64 = llvm::ConstantInt::get();
  v117 = 257;
  v65 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v62, v64, v116);
  v66 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v65, Select);
  v67 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, Select);
  v68 = *(a1 + 208);
  v69 = llvm::ConstantInt::get();
  v123 = 257;
  v70 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v19, v69, v122);
  v71 = *(a1 + 208);
  v72 = llvm::ConstantInt::get();
  v121 = 257;
  v73 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v70, v72, v120);
  v74 = *(a1 + 200);
  v119 = 257;
  v75 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v73, v74, v118);
  v76 = *(a1 + 200);
  v77 = llvm::ConstantInt::get();
  v117 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 8), v75, v77, v116);
  v78 = *(a1 + 208);
  v79 = llvm::ConstantInt::get();
  v123 = 257;
  v80 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v79, v122);
  v81 = *(a1 + 208);
  v82 = llvm::ConstantInt::get();
  v121 = 257;
  v83 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v80, v82, v120);
  v84 = *(a1 + 200);
  v119 = 257;
  v85 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v83, v84, v118);
  v86 = *(a1 + 208);
  v87 = llvm::ConstantInt::get();
  v123 = 257;
  v88 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v87, v122);
  v89 = *(a1 + 208);
  v90 = llvm::ConstantInt::get();
  v121 = 257;
  v91 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v88, v90, v120);
  v92 = *(a1 + 200);
  v119 = 257;
  v93 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v91, v92, v118);
  v94 = *(a1 + 200);
  v95 = llvm::ConstantInt::get();
  v123 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v85, v95, v122);
  v97 = *(a1 + 200);
  v98 = llvm::ConstantInt::get();
  v121 = 257;
  v99 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v93, v98, v120);
  v119 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 8), ICmp, v99, v118);
  v123 = 257;
  v100 = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(*(a1 + 336), v101);
  v123 = 257;
  v103 = *(a1 + 200);
  v104 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), NullValue, v54, v104, v122);
  v123 = 257;
  v106 = *(a1 + 200);
  v107 = llvm::ConstantInt::get();
  v108 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v66, v107, v122);
  v123 = 257;
  v109 = *(a1 + 200);
  v110 = llvm::ConstantInt::get();
  v111 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v108, v67, v110, v122);
  v123 = 257;
  v112 = *(a1 + 200);
  v113 = llvm::ConstantInt::get();
  v114 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v111, v100, v113, v122);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v114, a4, 0);
}

void AGCLLVMG16PA0TargetLowerer::~AGCLLVMG16PA0TargetLowerer(AGCLLVMG16PA0TargetLowerer *this)
{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

uint64_t AGCLLVMG16PB0TargetLowerer::extractMaxLevel(AGCLLVMG16PB0TargetLowerer *this, llvm::Value *a2)
{
  v4 = *(this + 26);
  v5 = llvm::ConstantInt::get();
  v14 = 257;
  v6 = llvm::IRBuilderBase::CreateAnd((this + 8), a2, v5, v13);
  v7 = *(this + 26);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 8), v6, v8, v13);
  v10 = *(this + 25);
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 38, LShr, v10, v12);
}

uint64_t AGCLLVMG16PB0TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v89 = *a2;
  v90 = *(a2 + 16);
  if (v90)
  {
    llvm::MetadataTracking::track();
  }

  v91 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v89);
  if (v90)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v88 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v87);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v88 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v87);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v86 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v85);
  v16 = *(a1 + 200);
  v84 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v83);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v82 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v19, v81);
  v21 = *(a1 + 200);
  v80 = 257;
  v22 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v21, v79);
  v23 = *(a1 + 200);
  v24 = llvm::ConstantInt::get();
  v88 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v22, v24, v87);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v26 = *(a1 + 208);
    v27 = llvm::ConstantInt::get();
    v88 = 257;
    v28 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v27, v87);
    v29 = *(a1 + 208);
    v30 = llvm::ConstantInt::get();
    v86 = 257;
    v31 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v28, v30, v85);
    v32 = *(a1 + 200);
    v84 = 257;
    v33 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v31, v32, v83);
    v34 = *(a1 + 200);
    v35 = llvm::ConstantInt::get();
    v82 = 257;
    v36 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v33, v35, v81);
    v37 = *(a1 + 208);
    v38 = llvm::ConstantInt::get();
    v88 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v87);
    v40 = *(a1 + 208);
    v41 = llvm::ConstantInt::get();
    v86 = 257;
    v42 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v41, v85);
    v43 = *(a1 + 200);
    v84 = 257;
    v44 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v42, v43, v83);
    v45 = *(a1 + 200);
    v46 = llvm::ConstantInt::get();
    v82 = 257;
    v47 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v44, v46, v81);
    v48 = *(a1 + 208);
    v49 = llvm::ConstantInt::get();
    v88 = 257;
    v50 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v49, v87);
    v51 = *(a1 + 208);
    v52 = llvm::ConstantInt::get();
    v86 = 257;
    v53 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v50, v52, v85);
    v54 = *(a1 + 200);
    v84 = 257;
    v55 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v53, v54, v83);
    v56 = *(a1 + 200);
    v57 = llvm::ConstantInt::get();
    v82 = 257;
    v58 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v55, v57, v81);
    v59 = *(a1 + 208);
    v60 = llvm::ConstantInt::get();
    v88 = 257;
    v61 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v60, v87);
    v62 = *(a1 + 208);
    v63 = llvm::ConstantInt::get();
    v86 = 257;
    v64 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v61, v63, v85);
    v65 = *(a1 + 200);
    v84 = 257;
    v66 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v64, v65, v83);
    v67 = *(a1 + 200);
    v68 = llvm::ConstantInt::get();
    v82 = 257;
    v69 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v66, v68, v81);
    v88 = 257;
    v70 = llvm::IRBuilderBase::CreateOr((a1 + 8), v47, v58, v87);
    v88 = 257;
    v71 = llvm::IRBuilderBase::CreateOr((a1 + 8), v70, v69, v87);
    v87[0] = "is_float16_texture";
    v88 = 259;
    v72 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v36, v71, v87);
    v73 = *(a1 + 200);
    v86 = 257;
    v74 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v72, v73, v85);
    v75 = *(a1 + 200);
    v76 = llvm::ConstantInt::get();
    v88 = 257;
    v77 = llvm::IRBuilderBase::CreateShl((a1 + 8), v74, v76, v87);
    v86 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v77, v85);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
}

uint64_t AGCLLVMG16PB0TargetLowerer::buildImageSampleCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v28 = *a2;
  v29 = *(a2 + 16);
  if (v29)
  {
    llvm::MetadataTracking::track();
  }

  v30 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v28);
  if (v29)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v27 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v26);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v27 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v26);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v25 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v24);
  v16 = *(a1 + 200);
  v23 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v22);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v27 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, Cast, v26);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
}

void AGCLLVMG17GA0TargetConfig::~AGCLLVMG17GA0TargetConfig(AGCLLVMG17GA0TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);
}

uint64_t AGCLLVMG17GA0TargetLowerer::extractMaxLevel(AGCLLVMG17GA0TargetLowerer *this, llvm::Value *a2)
{
  v4 = *(this + 26);
  v5 = llvm::ConstantInt::get();
  v14 = 257;
  v6 = llvm::IRBuilderBase::CreateAnd((this + 8), a2, v5, v13);
  v7 = *(this + 26);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 8), v6, v8, v13);
  v10 = *(this + 25);
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 38, LShr, v10, v12);
}

uint64_t AGCLLVMG17GA0TargetLowerer::extractBaseLevel(AGCLLVMG17GA0TargetLowerer *this, llvm::Value *a2)
{
  v4 = *(this + 26);
  v5 = llvm::ConstantInt::get();
  v14 = 257;
  v6 = llvm::IRBuilderBase::CreateAnd((this + 8), a2, v5, v13);
  v7 = *(this + 26);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 8), v6, v8, v13);
  v10 = *(this + 25);
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 38, LShr, v10, v12);
}

uint64_t AGCLLVMG17GA0TargetLowerer::buildTextureOOBReadSWWA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, int a7, int a8)
{
  v48 = *a2;
  v49 = *(a2 + 16);
  if (v49)
  {
    llvm::MetadataTracking::track();
  }

  v50 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v48);
  if (v49)
  {
    llvm::MetadataTracking::untrack();
  }

  v14 = *(a1 + 176);
  v15 = llvm::ConstantInt::get();
  v16 = a5[21];
  if (v16)
  {
    v17 = *v16;
    v18 = llvm::ConstantInt::get();
    v47 = 257;
    ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v16, v18, v46);
    v45 = 257;
    v15 = llvm::IRBuilderBase::CreateOr((a1 + 8), v15, ICmp, v44);
  }

  if (a6)
  {
    v20 = a5[19];
    v21 = *v20;
    v22 = llvm::ConstantInt::get();
    v47 = 257;
    v23 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v20, v22, v46);
    v45 = 257;
    v15 = llvm::IRBuilderBase::CreateOr((a1 + 8), v15, v23, v44);
  }

  if (a7)
  {
    v24 = a5[29];
    v25 = *v24;
    v26 = llvm::ConstantInt::get();
    v47 = 257;
    v27 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v24, v26, v46);
    v45 = 257;
    v15 = llvm::IRBuilderBase::CreateOr((a1 + 8), v15, v27, v44);
  }

  if (a8)
  {
    v28 = a5[27];
    v29 = *v28;
    v30 = llvm::ConstantInt::get();
    v47 = 257;
    v31 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v28, v30, v46);
    v45 = 257;
    llvm::IRBuilderBase::CreateOr((a1 + 8), v15, v31, v44);
  }

  v46[0] = 0x7FFF0000000;
  std::__count_BOOL[abi:nn200100]<true,std::__bitset<1ul,64ul>,true>(v46, 0);
  v32 = a5[17];
  if ((*(*v32 + 8) & 0xFE) == 0x12)
  {
    v47 = 257;
    v33 = *(a1 + 200);
    v34 = llvm::ConstantInt::get();
    llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v32, v34, v46);
    v35 = a5[17];
    v36 = *v35;
    if ((*(*v35 + 8) & 0xFE) == 0x12)
    {
      v36 = **(v36 + 16);
    }

    if (v36 != *(a1 + 200))
    {
      v37 = *(a1 + 192);
    }

    llvm::ConstantInt::get();
    v47 = 257;
    Select = llvm::IRBuilderBase::CreateSelect();
    v45 = 257;
    v39 = *(a1 + 200);
    v40 = llvm::ConstantInt::get();
    result = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v35, Select, v40, v44);
  }

  else
  {
    if (*v32 != *(a1 + 200))
    {
      v42 = *(a1 + 192);
    }

    llvm::ConstantInt::get();
    v43 = a5[17];
    v47 = 257;
    result = llvm::IRBuilderBase::CreateSelect();
  }

  a5[17] = result;
  return result;
}

uint64_t std::__count_BOOL[abi:nn200100]<true,std::__bitset<1ul,64ul>,true>(unint64_t *a1, unsigned int a2)
{
  v2 = a2;
  if (!a2)
  {
    goto LABEL_7;
  }

  v3 = 64;
  v4 = 64 - a2;
  if (v4 < 0x40)
  {
    v3 = 64 - a2;
  }

  v5 = *a1++;
  v6 = vcnt_s8(((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v3)) & (-1 << a2) & v5));
  v6.i16[0] = vaddlv_u8(v6);
  v2 = v6.u32[0];
  if (!v4)
  {
LABEL_7:
    v7 = *a1;
    goto LABEL_8;
  }

  if (v4 <= 0x3F)
  {
    v7 = *a1 & (0xFFFFFFFFFFFFFFFFLL >> v3);
LABEL_8:
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    v2 += v8.u32[0];
  }

  return v2;
}

uint64_t AGCLLVMG17GA0TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v89 = *a2;
  v90 = *(a2 + 16);
  if (v90)
  {
    llvm::MetadataTracking::track();
  }

  v91 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v89);
  if (v90)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v88 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v87);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v88 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v87);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v86 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v85);
  v16 = *(a1 + 200);
  v84 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v83);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v82 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v19, v81);
  v21 = *(a1 + 200);
  v80 = 257;
  v22 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v21, v79);
  v23 = *(a1 + 200);
  v24 = llvm::ConstantInt::get();
  v88 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v22, v24, v87);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v26 = *(a1 + 208);
    v27 = llvm::ConstantInt::get();
    v88 = 257;
    v28 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v27, v87);
    v29 = *(a1 + 208);
    v30 = llvm::ConstantInt::get();
    v86 = 257;
    v31 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v28, v30, v85);
    v32 = *(a1 + 200);
    v84 = 257;
    v33 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v31, v32, v83);
    v34 = *(a1 + 200);
    v35 = llvm::ConstantInt::get();
    v82 = 257;
    v36 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v33, v35, v81);
    v37 = *(a1 + 208);
    v38 = llvm::ConstantInt::get();
    v88 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v87);
    v40 = *(a1 + 208);
    v41 = llvm::ConstantInt::get();
    v86 = 257;
    v42 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v41, v85);
    v43 = *(a1 + 200);
    v84 = 257;
    v44 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v42, v43, v83);
    v45 = *(a1 + 200);
    v46 = llvm::ConstantInt::get();
    v82 = 257;
    v47 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v44, v46, v81);
    v48 = *(a1 + 208);
    v49 = llvm::ConstantInt::get();
    v88 = 257;
    v50 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v49, v87);
    v51 = *(a1 + 208);
    v52 = llvm::ConstantInt::get();
    v86 = 257;
    v53 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v50, v52, v85);
    v54 = *(a1 + 200);
    v84 = 257;
    v55 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v53, v54, v83);
    v56 = *(a1 + 200);
    v57 = llvm::ConstantInt::get();
    v82 = 257;
    v58 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v55, v57, v81);
    v59 = *(a1 + 208);
    v60 = llvm::ConstantInt::get();
    v88 = 257;
    v61 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v60, v87);
    v62 = *(a1 + 208);
    v63 = llvm::ConstantInt::get();
    v86 = 257;
    v64 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v61, v63, v85);
    v65 = *(a1 + 200);
    v84 = 257;
    v66 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v64, v65, v83);
    v67 = *(a1 + 200);
    v68 = llvm::ConstantInt::get();
    v82 = 257;
    v69 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v66, v68, v81);
    v88 = 257;
    v70 = llvm::IRBuilderBase::CreateOr((a1 + 8), v47, v58, v87);
    v88 = 257;
    v71 = llvm::IRBuilderBase::CreateOr((a1 + 8), v70, v69, v87);
    v87[0] = "is_float16_texture";
    v88 = 259;
    v72 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v36, v71, v87);
    v73 = *(a1 + 200);
    v86 = 257;
    v74 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v72, v73, v85);
    v75 = *(a1 + 200);
    v76 = llvm::ConstantInt::get();
    v88 = 257;
    v77 = llvm::IRBuilderBase::CreateShl((a1 + 8), v74, v76, v87);
    v86 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v77, v85);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
}

uint64_t AGCLLVMG17GA0TargetLowerer::buildImageSampleCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v28 = *a2;
  v29 = *(a2 + 16);
  if (v29)
  {
    llvm::MetadataTracking::track();
  }

  v30 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v28);
  if (v29)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v27 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v26);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v27 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v26);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v25 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v24);
  v16 = *(a1 + 200);
  v23 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v22);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v27 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, Cast, v26);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
}

uint64_t AGCLLVMG17GA0TargetLowerer::buildImageDimensionsExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v124 = *a2;
  v125 = *(a2 + 16);
  if (v125)
  {
    llvm::MetadataTracking::track();
  }

  v126 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v124);
  if (v125)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v123 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v122);
  v10 = *(a1 + 200);
  v11 = *(a1 + 208);
  v12 = llvm::ConstantInt::get();
  v123 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v11, a3, v12, v122);
  v121 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v14 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v11, GEP, 0, v120);
  v15 = *(a1 + 200);
  v16 = *(a1 + 208);
  v17 = llvm::ConstantInt::get();
  v123 = 257;
  v18 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v16, a3, v17, v122);
  v121 = 257;
  llvm::Type::isOpaquePointerTy(*v18);
  v19 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v16, v18, 0, v120);
  v20 = *(a1 + 208);
  v21 = llvm::ConstantInt::get();
  v123 = 257;
  v22 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v14, v21, v122);
  v23 = *(a1 + 208);
  v24 = llvm::ConstantInt::get();
  v121 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v22, v24, v120);
  v26 = *(a1 + 200);
  v119 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v26, v118);
  v28 = *(a1 + 200);
  v29 = llvm::ConstantInt::get();
  v117 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Cast, v29, v116);
  (*(*a1 + 1984))(a1, v19);
  v31 = *(a1 + 208);
  v32 = llvm::ConstantInt::get();
  v123 = 257;
  v33 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v32, v122);
  v34 = *(a1 + 208);
  v35 = llvm::ConstantInt::get();
  v121 = 257;
  v36 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v33, v35, v120);
  v37 = *(a1 + 200);
  v119 = 257;
  v38 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v36, v37, v118);
  v39 = *(a1 + 200);
  v40 = llvm::ConstantInt::get();
  v117 = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v38, v40, v116);
  v41 = *(a1 + 200);
  llvm::ConstantInt::get();
  v123 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v43 = *(a1 + 208);
  v44 = llvm::ConstantInt::get();
  v123 = 257;
  v45 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v44, v122);
  v46 = *(a1 + 208);
  v47 = llvm::ConstantInt::get();
  v121 = 257;
  v48 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v45, v47, v120);
  v49 = *(a1 + 200);
  v119 = 257;
  v50 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v48, v49, v118);
  v51 = *(a1 + 200);
  v52 = llvm::ConstantInt::get();
  v117 = 257;
  v53 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v50, v52, v116);
  v54 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v53, Select);
  v55 = *(a1 + 208);
  v56 = llvm::ConstantInt::get();
  v123 = 257;
  v57 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v56, v122);
  v58 = *(a1 + 208);
  v59 = llvm::ConstantInt::get();
  v121 = 257;
  v60 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v57, v59, v120);
  v61 = *(a1 + 200);
  v119 = 257;
  v62 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v60, v61, v118);
  v63 = *(a1 + 200);
  v64 = llvm::ConstantInt::get();
  v117 = 257;
  v65 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v62, v64, v116);
  v66 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v65, Select);
  v67 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, Select);
  v68 = *(a1 + 208);
  v69 = llvm::ConstantInt::get();
  v123 = 257;
  v70 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v19, v69, v122);
  v71 = *(a1 + 208);
  v72 = llvm::ConstantInt::get();
  v121 = 257;
  v73 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v70, v72, v120);
  v74 = *(a1 + 200);
  v119 = 257;
  v75 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v73, v74, v118);
  v76 = *(a1 + 200);
  v77 = llvm::ConstantInt::get();
  v117 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 8), v75, v77, v116);
  v78 = *(a1 + 208);
  v79 = llvm::ConstantInt::get();
  v123 = 257;
  v80 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v79, v122);
  v81 = *(a1 + 208);
  v82 = llvm::ConstantInt::get();
  v121 = 257;
  v83 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v80, v82, v120);
  v84 = *(a1 + 200);
  v119 = 257;
  v85 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v83, v84, v118);
  v86 = *(a1 + 208);
  v87 = llvm::ConstantInt::get();
  v123 = 257;
  v88 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v87, v122);
  v89 = *(a1 + 208);
  v90 = llvm::ConstantInt::get();
  v121 = 257;
  v91 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v88, v90, v120);
  v92 = *(a1 + 200);
  v119 = 257;
  v93 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v91, v92, v118);
  v94 = *(a1 + 200);
  v95 = llvm::ConstantInt::get();
  v123 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v85, v95, v122);
  v97 = *(a1 + 200);
  v98 = llvm::ConstantInt::get();
  v121 = 257;
  v99 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v93, v98, v120);
  v119 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 8), ICmp, v99, v118);
  v123 = 257;
  v100 = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(*(a1 + 336), v101);
  v123 = 257;
  v103 = *(a1 + 200);
  v104 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), NullValue, v54, v104, v122);
  v123 = 257;
  v106 = *(a1 + 200);
  v107 = llvm::ConstantInt::get();
  v108 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v66, v107, v122);
  v123 = 257;
  v109 = *(a1 + 200);
  v110 = llvm::ConstantInt::get();
  v111 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v108, v67, v110, v122);
  v123 = 257;
  v112 = *(a1 + 200);
  v113 = llvm::ConstantInt::get();
  v114 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v111, v100, v113, v122);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v114, a4, 0);
}

void AGCLLVMG17GA0TargetLowerer::~AGCLLVMG17GA0TargetLowerer(AGCLLVMG17GA0TargetLowerer *this)
{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

void AGCLLVMG17GA0TargetConfig::AGCLLVMG17GA0TargetConfig()
{
  AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateHAL300TargetConfig(AGCTargetArch)::g17g_a0, 65571);
  *(v0 + 60) = 0;
  *(v0 + 49) = 0;
  *v0 = &unk_2825B7580;
  *(v0 + 8) = "agx3-apple-ios";
}

void AGCLLVMG17PA0TargetConfig::~AGCLLVMG17PA0TargetConfig(AGCLLVMG17PA0TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);
}

uint64_t AGCLLVMG17PA0TargetLowerer::extractMaxLevel(AGCLLVMG17PA0TargetLowerer *this, llvm::Value *a2)
{
  v4 = *(this + 26);
  v5 = llvm::ConstantInt::get();
  v14 = 257;
  v6 = llvm::IRBuilderBase::CreateAnd((this + 8), a2, v5, v13);
  v7 = *(this + 26);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 8), v6, v8, v13);
  v10 = *(this + 25);
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 38, LShr, v10, v12);
}

uint64_t AGCLLVMG17PA0TargetLowerer::extractBaseLevel(AGCLLVMG17PA0TargetLowerer *this, llvm::Value *a2)
{
  v4 = *(this + 26);
  v5 = llvm::ConstantInt::get();
  v14 = 257;
  v6 = llvm::IRBuilderBase::CreateAnd((this + 8), a2, v5, v13);
  v7 = *(this + 26);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 8), v6, v8, v13);
  v10 = *(this + 25);
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 38, LShr, v10, v12);
}

uint64_t AGCLLVMG17PA0TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v89 = *a2;
  v90 = *(a2 + 16);
  if (v90)
  {
    llvm::MetadataTracking::track();
  }

  v91 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v89);
  if (v90)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v88 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v87);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v88 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v87);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v86 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v85);
  v16 = *(a1 + 200);
  v84 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v83);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v82 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v19, v81);
  v21 = *(a1 + 200);
  v80 = 257;
  v22 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v21, v79);
  v23 = *(a1 + 200);
  v24 = llvm::ConstantInt::get();
  v88 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v22, v24, v87);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v26 = *(a1 + 208);
    v27 = llvm::ConstantInt::get();
    v88 = 257;
    v28 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v27, v87);
    v29 = *(a1 + 208);
    v30 = llvm::ConstantInt::get();
    v86 = 257;
    v31 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v28, v30, v85);
    v32 = *(a1 + 200);
    v84 = 257;
    v33 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v31, v32, v83);
    v34 = *(a1 + 200);
    v35 = llvm::ConstantInt::get();
    v82 = 257;
    v36 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v33, v35, v81);
    v37 = *(a1 + 208);
    v38 = llvm::ConstantInt::get();
    v88 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v87);
    v40 = *(a1 + 208);
    v41 = llvm::ConstantInt::get();
    v86 = 257;
    v42 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v41, v85);
    v43 = *(a1 + 200);
    v84 = 257;
    v44 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v42, v43, v83);
    v45 = *(a1 + 200);
    v46 = llvm::ConstantInt::get();
    v82 = 257;
    v47 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v44, v46, v81);
    v48 = *(a1 + 208);
    v49 = llvm::ConstantInt::get();
    v88 = 257;
    v50 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v49, v87);
    v51 = *(a1 + 208);
    v52 = llvm::ConstantInt::get();
    v86 = 257;
    v53 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v50, v52, v85);
    v54 = *(a1 + 200);
    v84 = 257;
    v55 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v53, v54, v83);
    v56 = *(a1 + 200);
    v57 = llvm::ConstantInt::get();
    v82 = 257;
    v58 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v55, v57, v81);
    v59 = *(a1 + 208);
    v60 = llvm::ConstantInt::get();
    v88 = 257;
    v61 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v60, v87);
    v62 = *(a1 + 208);
    v63 = llvm::ConstantInt::get();
    v86 = 257;
    v64 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v61, v63, v85);
    v65 = *(a1 + 200);
    v84 = 257;
    v66 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v64, v65, v83);
    v67 = *(a1 + 200);
    v68 = llvm::ConstantInt::get();
    v82 = 257;
    v69 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v66, v68, v81);
    v88 = 257;
    v70 = llvm::IRBuilderBase::CreateOr((a1 + 8), v47, v58, v87);
    v88 = 257;
    v71 = llvm::IRBuilderBase::CreateOr((a1 + 8), v70, v69, v87);
    v87[0] = "is_float16_texture";
    v88 = 259;
    v72 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v36, v71, v87);
    v73 = *(a1 + 200);
    v86 = 257;
    v74 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v72, v73, v85);
    v75 = *(a1 + 200);
    v76 = llvm::ConstantInt::get();
    v88 = 257;
    v77 = llvm::IRBuilderBase::CreateShl((a1 + 8), v74, v76, v87);
    v86 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v77, v85);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
}

uint64_t AGCLLVMG17PA0TargetLowerer::buildImageSampleCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v28 = *a2;
  v29 = *(a2 + 16);
  if (v29)
  {
    llvm::MetadataTracking::track();
  }

  v30 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v28);
  if (v29)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v27 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v26);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v27 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v26);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v25 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v24);
  v16 = *(a1 + 200);
  v23 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v22);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v27 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, Cast, v26);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
}

uint64_t AGCLLVMG17PA0TargetLowerer::buildImageDimensionsExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v124 = *a2;
  v125 = *(a2 + 16);
  if (v125)
  {
    llvm::MetadataTracking::track();
  }

  v126 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v124);
  if (v125)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v123 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v122);
  v10 = *(a1 + 200);
  v11 = *(a1 + 208);
  v12 = llvm::ConstantInt::get();
  v123 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v11, a3, v12, v122);
  v121 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v14 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v11, GEP, 0, v120);
  v15 = *(a1 + 200);
  v16 = *(a1 + 208);
  v17 = llvm::ConstantInt::get();
  v123 = 257;
  v18 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v16, a3, v17, v122);
  v121 = 257;
  llvm::Type::isOpaquePointerTy(*v18);
  v19 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v16, v18, 0, v120);
  v20 = *(a1 + 208);
  v21 = llvm::ConstantInt::get();
  v123 = 257;
  v22 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v14, v21, v122);
  v23 = *(a1 + 208);
  v24 = llvm::ConstantInt::get();
  v121 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v22, v24, v120);
  v26 = *(a1 + 200);
  v119 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v26, v118);
  v28 = *(a1 + 200);
  v29 = llvm::ConstantInt::get();
  v117 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Cast, v29, v116);
  (*(*a1 + 1984))(a1, v19);
  v31 = *(a1 + 208);
  v32 = llvm::ConstantInt::get();
  v123 = 257;
  v33 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v32, v122);
  v34 = *(a1 + 208);
  v35 = llvm::ConstantInt::get();
  v121 = 257;
  v36 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v33, v35, v120);
  v37 = *(a1 + 200);
  v119 = 257;
  v38 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v36, v37, v118);
  v39 = *(a1 + 200);
  v40 = llvm::ConstantInt::get();
  v117 = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v38, v40, v116);
  v41 = *(a1 + 200);
  llvm::ConstantInt::get();
  v123 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v43 = *(a1 + 208);
  v44 = llvm::ConstantInt::get();
  v123 = 257;
  v45 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v44, v122);
  v46 = *(a1 + 208);
  v47 = llvm::ConstantInt::get();
  v121 = 257;
  v48 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v45, v47, v120);
  v49 = *(a1 + 200);
  v119 = 257;
  v50 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v48, v49, v118);
  v51 = *(a1 + 200);
  v52 = llvm::ConstantInt::get();
  v117 = 257;
  v53 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v50, v52, v116);
  v54 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v53, Select);
  v55 = *(a1 + 208);
  v56 = llvm::ConstantInt::get();
  v123 = 257;
  v57 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v56, v122);
  v58 = *(a1 + 208);
  v59 = llvm::ConstantInt::get();
  v121 = 257;
  v60 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v57, v59, v120);
  v61 = *(a1 + 200);
  v119 = 257;
  v62 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v60, v61, v118);
  v63 = *(a1 + 200);
  v64 = llvm::ConstantInt::get();
  v117 = 257;
  v65 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v62, v64, v116);
  v66 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v65, Select);
  v67 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, Select);
  v68 = *(a1 + 208);
  v69 = llvm::ConstantInt::get();
  v123 = 257;
  v70 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v19, v69, v122);
  v71 = *(a1 + 208);
  v72 = llvm::ConstantInt::get();
  v121 = 257;
  v73 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v70, v72, v120);
  v74 = *(a1 + 200);
  v119 = 257;
  v75 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v73, v74, v118);
  v76 = *(a1 + 200);
  v77 = llvm::ConstantInt::get();
  v117 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 8), v75, v77, v116);
  v78 = *(a1 + 208);
  v79 = llvm::ConstantInt::get();
  v123 = 257;
  v80 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v79, v122);
  v81 = *(a1 + 208);
  v82 = llvm::ConstantInt::get();
  v121 = 257;
  v83 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v80, v82, v120);
  v84 = *(a1 + 200);
  v119 = 257;
  v85 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v83, v84, v118);
  v86 = *(a1 + 208);
  v87 = llvm::ConstantInt::get();
  v123 = 257;
  v88 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v87, v122);
  v89 = *(a1 + 208);
  v90 = llvm::ConstantInt::get();
  v121 = 257;
  v91 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v88, v90, v120);
  v92 = *(a1 + 200);
  v119 = 257;
  v93 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v91, v92, v118);
  v94 = *(a1 + 200);
  v95 = llvm::ConstantInt::get();
  v123 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v85, v95, v122);
  v97 = *(a1 + 200);
  v98 = llvm::ConstantInt::get();
  v121 = 257;
  v99 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v93, v98, v120);
  v119 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 8), ICmp, v99, v118);
  v123 = 257;
  v100 = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(*(a1 + 336), v101);
  v123 = 257;
  v103 = *(a1 + 200);
  v104 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), NullValue, v54, v104, v122);
  v123 = 257;
  v106 = *(a1 + 200);
  v107 = llvm::ConstantInt::get();
  v108 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v66, v107, v122);
  v123 = 257;
  v109 = *(a1 + 200);
  v110 = llvm::ConstantInt::get();
  v111 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v108, v67, v110, v122);
  v123 = 257;
  v112 = *(a1 + 200);
  v113 = llvm::ConstantInt::get();
  v114 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v111, v100, v113, v122);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v114, a4, 0);
}

void AGCLLVMG17PA0TargetLowerer::~AGCLLVMG17PA0TargetLowerer(AGCLLVMG17PA0TargetLowerer *this)
{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

void AGCLLVMG17PA0TargetConfig::AGCLLVMG17PA0TargetConfig()
{
  AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateHAL200TargetConfig(AGCTargetArch)::g17p_a0, 65570);
  *(v0 + 60) = 0;
  *(v0 + 49) = 0;
  *v0 = &unk_2825B7E78;
  *(v0 + 8) = "agx3-apple-ios";
}

void AGCLLVMG18PA0TargetConfig::~AGCLLVMG18PA0TargetConfig(AGCLLVMG18PA0TargetConfig *this)
{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825B0280;
  v1 = (this + 64);
  std::mutex::~mutex((this + 72));
  std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](v1, 0);
}

uint64_t AGCLLVMG18PA0TargetLowerer::extractMaxLevel(AGCLLVMG18PA0TargetLowerer *this, llvm::Value *a2)
{
  v4 = *(this + 26);
  v5 = llvm::ConstantInt::get();
  v14 = 257;
  v6 = llvm::IRBuilderBase::CreateAnd((this + 8), a2, v5, v13);
  v7 = *(this + 26);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 8), v6, v8, v13);
  v10 = *(this + 25);
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 38, LShr, v10, v12);
}

uint64_t AGCLLVMG18PA0TargetLowerer::extractBaseLevel(AGCLLVMG18PA0TargetLowerer *this, llvm::Value *a2)
{
  v4 = *(this + 26);
  v5 = llvm::ConstantInt::get();
  v14 = 257;
  v6 = llvm::IRBuilderBase::CreateAnd((this + 8), a2, v5, v13);
  v7 = *(this + 26);
  v8 = llvm::ConstantInt::get();
  v14 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((this + 8), v6, v8, v13);
  v10 = *(this + 25);
  v12[16] = 257;
  return llvm::IRBuilderBase::CreateCast(this + 8, 38, LShr, v10, v12);
}

uint64_t AGCLLVMG18PA0TargetLowerer::buildTextureOOBReadSWWA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, int a7, int a8)
{
  v48 = *a2;
  v49 = *(a2 + 16);
  if (v49)
  {
    llvm::MetadataTracking::track();
  }

  v50 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v48);
  if (v49)
  {
    llvm::MetadataTracking::untrack();
  }

  v14 = *(a1 + 176);
  v15 = llvm::ConstantInt::get();
  v16 = a5[21];
  if (v16)
  {
    v17 = *v16;
    v18 = llvm::ConstantInt::get();
    v47 = 257;
    ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v16, v18, v46);
    v45 = 257;
    v15 = llvm::IRBuilderBase::CreateOr((a1 + 8), v15, ICmp, v44);
  }

  if (a6)
  {
    v20 = a5[19];
    v21 = *v20;
    v22 = llvm::ConstantInt::get();
    v47 = 257;
    v23 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v20, v22, v46);
    v45 = 257;
    v15 = llvm::IRBuilderBase::CreateOr((a1 + 8), v15, v23, v44);
  }

  if (a7)
  {
    v24 = a5[29];
    v25 = *v24;
    v26 = llvm::ConstantInt::get();
    v47 = 257;
    v27 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v24, v26, v46);
    v45 = 257;
    v15 = llvm::IRBuilderBase::CreateOr((a1 + 8), v15, v27, v44);
  }

  if (a8)
  {
    v28 = a5[27];
    v29 = *v28;
    v30 = llvm::ConstantInt::get();
    v47 = 257;
    v31 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 34, v28, v30, v46);
    v45 = 257;
    llvm::IRBuilderBase::CreateOr((a1 + 8), v15, v31, v44);
  }

  v46[0] = 0x7FFF0000000;
  std::__count_BOOL[abi:nn200100]<true,std::__bitset<1ul,64ul>,true>(v46, 0);
  v32 = a5[17];
  if ((*(*v32 + 8) & 0xFE) == 0x12)
  {
    v47 = 257;
    v33 = *(a1 + 200);
    v34 = llvm::ConstantInt::get();
    llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v32, v34, v46);
    v35 = a5[17];
    v36 = *v35;
    if ((*(*v35 + 8) & 0xFE) == 0x12)
    {
      v36 = **(v36 + 16);
    }

    if (v36 != *(a1 + 200))
    {
      v37 = *(a1 + 192);
    }

    llvm::ConstantInt::get();
    v47 = 257;
    Select = llvm::IRBuilderBase::CreateSelect();
    v45 = 257;
    v39 = *(a1 + 200);
    v40 = llvm::ConstantInt::get();
    result = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v35, Select, v40, v44);
  }

  else
  {
    if (*v32 != *(a1 + 200))
    {
      v42 = *(a1 + 192);
    }

    llvm::ConstantInt::get();
    v43 = a5[17];
    v47 = 257;
    result = llvm::IRBuilderBase::CreateSelect();
  }

  a5[17] = result;
  return result;
}

uint64_t AGCLLVMG18PA0TargetLowerer::buildImagePackFormatExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v89 = *a2;
  v90 = *(a2 + 16);
  if (v90)
  {
    llvm::MetadataTracking::track();
  }

  v91 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v89);
  if (v90)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v88 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v87);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v88 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v87);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v86 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v85);
  v16 = *(a1 + 200);
  v84 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v83);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v82 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, Cast, v19, v81);
  v21 = *(a1 + 200);
  v80 = 257;
  v22 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, ICmp, v21, v79);
  v23 = *(a1 + 200);
  v24 = llvm::ConstantInt::get();
  v88 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v22, v24, v87);
  if ((*(a1 + 1889) & 1) == 0)
  {
    v26 = *(a1 + 208);
    v27 = llvm::ConstantInt::get();
    v88 = 257;
    v28 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v27, v87);
    v29 = *(a1 + 208);
    v30 = llvm::ConstantInt::get();
    v86 = 257;
    v31 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v28, v30, v85);
    v32 = *(a1 + 200);
    v84 = 257;
    v33 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v31, v32, v83);
    v34 = *(a1 + 200);
    v35 = llvm::ConstantInt::get();
    v82 = 257;
    v36 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v33, v35, v81);
    v37 = *(a1 + 208);
    v38 = llvm::ConstantInt::get();
    v88 = 257;
    v39 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v38, v87);
    v40 = *(a1 + 208);
    v41 = llvm::ConstantInt::get();
    v86 = 257;
    v42 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v39, v41, v85);
    v43 = *(a1 + 200);
    v84 = 257;
    v44 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v42, v43, v83);
    v45 = *(a1 + 200);
    v46 = llvm::ConstantInt::get();
    v82 = 257;
    v47 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v44, v46, v81);
    v48 = *(a1 + 208);
    v49 = llvm::ConstantInt::get();
    v88 = 257;
    v50 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v49, v87);
    v51 = *(a1 + 208);
    v52 = llvm::ConstantInt::get();
    v86 = 257;
    v53 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v50, v52, v85);
    v54 = *(a1 + 200);
    v84 = 257;
    v55 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v53, v54, v83);
    v56 = *(a1 + 200);
    v57 = llvm::ConstantInt::get();
    v82 = 257;
    v58 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v55, v57, v81);
    v59 = *(a1 + 208);
    v60 = llvm::ConstantInt::get();
    v88 = 257;
    v61 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v60, v87);
    v62 = *(a1 + 208);
    v63 = llvm::ConstantInt::get();
    v86 = 257;
    v64 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v61, v63, v85);
    v65 = *(a1 + 200);
    v84 = 257;
    v66 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v64, v65, v83);
    v67 = *(a1 + 200);
    v68 = llvm::ConstantInt::get();
    v82 = 257;
    v69 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v66, v68, v81);
    v88 = 257;
    v70 = llvm::IRBuilderBase::CreateOr((a1 + 8), v47, v58, v87);
    v88 = 257;
    v71 = llvm::IRBuilderBase::CreateOr((a1 + 8), v70, v69, v87);
    v87[0] = "is_float16_texture";
    v88 = 259;
    v72 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v36, v71, v87);
    v73 = *(a1 + 200);
    v86 = 257;
    v74 = llvm::IRBuilderBase::CreateCast(a1 + 8, 39, v72, v73, v85);
    v75 = *(a1 + 200);
    v76 = llvm::ConstantInt::get();
    v88 = 257;
    v77 = llvm::IRBuilderBase::CreateShl((a1 + 8), v74, v76, v87);
    v86 = 257;
    Shl = llvm::IRBuilderBase::CreateOr((a1 + 8), Shl, v77, v85);
  }

  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
}

uint64_t AGCLLVMG18PA0TargetLowerer::buildImageSampleCountExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v28 = *a2;
  v29 = *(a2 + 16);
  if (v29)
  {
    llvm::MetadataTracking::track();
  }

  v30 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v28);
  if (v29)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v27 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v26);
  v10 = *(a1 + 208);
  v11 = llvm::ConstantInt::get();
  v27 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v11, v26);
  v13 = *(a1 + 208);
  v14 = llvm::ConstantInt::get();
  v25 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v12, v14, v24);
  v16 = *(a1 + 200);
  v23 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v16, v22);
  v18 = *(a1 + 200);
  v19 = llvm::ConstantInt::get();
  v27 = 257;
  Shl = llvm::IRBuilderBase::CreateShl((a1 + 8), v19, Cast, v26);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), Shl, a4, 0);
}

uint64_t AGCLLVMG18PA0TargetLowerer::buildImageDimensionsExtract(uint64_t a1, uint64_t a2, llvm::Type **a3, uint64_t a4)
{
  v124 = *a2;
  v125 = *(a2 + 16);
  if (v125)
  {
    llvm::MetadataTracking::track();
  }

  v126 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v124);
  if (v125)
  {
    llvm::MetadataTracking::untrack();
  }

  v8 = *(a1 + 208);
  v123 = 257;
  llvm::Type::isOpaquePointerTy(*a3);
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v8, a3, 0, v122);
  v10 = *(a1 + 200);
  v11 = *(a1 + 208);
  v12 = llvm::ConstantInt::get();
  v123 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((a1 + 8), v11, a3, v12, v122);
  v121 = 257;
  llvm::Type::isOpaquePointerTy(*GEP);
  v14 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v11, GEP, 0, v120);
  v15 = *(a1 + 200);
  v16 = *(a1 + 208);
  v17 = llvm::ConstantInt::get();
  v123 = 257;
  v18 = llvm::IRBuilderBase::CreateGEP((a1 + 8), v16, a3, v17, v122);
  v121 = 257;
  llvm::Type::isOpaquePointerTy(*v18);
  v19 = llvm::IRBuilderBase::CreateAlignedLoad((a1 + 8), v16, v18, 0, v120);
  v20 = *(a1 + 208);
  v21 = llvm::ConstantInt::get();
  v123 = 257;
  v22 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v14, v21, v122);
  v23 = *(a1 + 208);
  v24 = llvm::ConstantInt::get();
  v121 = 257;
  LShr = llvm::IRBuilderBase::CreateLShr((a1 + 8), v22, v24, v120);
  v26 = *(a1 + 200);
  v119 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, LShr, v26, v118);
  v28 = *(a1 + 200);
  v29 = llvm::ConstantInt::get();
  v117 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((a1 + 8), Cast, v29, v116);
  (*(*a1 + 1984))(a1, v19);
  v31 = *(a1 + 208);
  v32 = llvm::ConstantInt::get();
  v123 = 257;
  v33 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v32, v122);
  v34 = *(a1 + 208);
  v35 = llvm::ConstantInt::get();
  v121 = 257;
  v36 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v33, v35, v120);
  v37 = *(a1 + 200);
  v119 = 257;
  v38 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v36, v37, v118);
  v39 = *(a1 + 200);
  v40 = llvm::ConstantInt::get();
  v117 = 257;
  llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v38, v40, v116);
  v41 = *(a1 + 200);
  llvm::ConstantInt::get();
  v123 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v43 = *(a1 + 208);
  v44 = llvm::ConstantInt::get();
  v123 = 257;
  v45 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v44, v122);
  v46 = *(a1 + 208);
  v47 = llvm::ConstantInt::get();
  v121 = 257;
  v48 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v45, v47, v120);
  v49 = *(a1 + 200);
  v119 = 257;
  v50 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v48, v49, v118);
  v51 = *(a1 + 200);
  v52 = llvm::ConstantInt::get();
  v117 = 257;
  v53 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v50, v52, v116);
  v54 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v53, Select);
  v55 = *(a1 + 208);
  v56 = llvm::ConstantInt::get();
  v123 = 257;
  v57 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v56, v122);
  v58 = *(a1 + 208);
  v59 = llvm::ConstantInt::get();
  v121 = 257;
  v60 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v57, v59, v120);
  v61 = *(a1 + 200);
  v119 = 257;
  v62 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v60, v61, v118);
  v63 = *(a1 + 200);
  v64 = llvm::ConstantInt::get();
  v117 = 257;
  v65 = llvm::IRBuilderBase::CreateAdd((a1 + 8), v62, v64, v116);
  v66 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, v65, Select);
  v67 = AGCLLVMGen5TargetLowerer::adjustToMip(a1, Add, Select);
  v68 = *(a1 + 208);
  v69 = llvm::ConstantInt::get();
  v123 = 257;
  v70 = llvm::IRBuilderBase::CreateAnd((a1 + 8), v19, v69, v122);
  v71 = *(a1 + 208);
  v72 = llvm::ConstantInt::get();
  v121 = 257;
  v73 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v70, v72, v120);
  v74 = *(a1 + 200);
  v119 = 257;
  v75 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v73, v74, v118);
  v76 = *(a1 + 200);
  v77 = llvm::ConstantInt::get();
  v117 = 257;
  llvm::IRBuilderBase::CreateAdd((a1 + 8), v75, v77, v116);
  v78 = *(a1 + 208);
  v79 = llvm::ConstantInt::get();
  v123 = 257;
  v80 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v79, v122);
  v81 = *(a1 + 208);
  v82 = llvm::ConstantInt::get();
  v121 = 257;
  v83 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v80, v82, v120);
  v84 = *(a1 + 200);
  v119 = 257;
  v85 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v83, v84, v118);
  v86 = *(a1 + 208);
  v87 = llvm::ConstantInt::get();
  v123 = 257;
  v88 = llvm::IRBuilderBase::CreateAnd((a1 + 8), AlignedLoad, v87, v122);
  v89 = *(a1 + 208);
  v90 = llvm::ConstantInt::get();
  v121 = 257;
  v91 = llvm::IRBuilderBase::CreateLShr((a1 + 8), v88, v90, v120);
  v92 = *(a1 + 200);
  v119 = 257;
  v93 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v91, v92, v118);
  v94 = *(a1 + 200);
  v95 = llvm::ConstantInt::get();
  v123 = 257;
  ICmp = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v85, v95, v122);
  v97 = *(a1 + 200);
  v98 = llvm::ConstantInt::get();
  v121 = 257;
  v99 = llvm::IRBuilderBase::CreateICmp((a1 + 8), 32, v93, v98, v120);
  v119 = 257;
  llvm::IRBuilderBase::CreateAnd((a1 + 8), ICmp, v99, v118);
  v123 = 257;
  v100 = llvm::IRBuilderBase::CreateSelect();
  NullValue = llvm::Constant::getNullValue(*(a1 + 336), v101);
  v123 = 257;
  v103 = *(a1 + 200);
  v104 = llvm::ConstantInt::get();
  InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), NullValue, v54, v104, v122);
  v123 = 257;
  v106 = *(a1 + 200);
  v107 = llvm::ConstantInt::get();
  v108 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v66, v107, v122);
  v123 = 257;
  v109 = *(a1 + 200);
  v110 = llvm::ConstantInt::get();
  v111 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v108, v67, v110, v122);
  v123 = 257;
  v112 = *(a1 + 200);
  v113 = llvm::ConstantInt::get();
  v114 = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), v111, v100, v113, v122);
  return llvm::IRBuilderBase::CreateAlignedStore((a1 + 8), v114, a4, 0);
}

void AGCLLVMG18PA0TargetLowerer::~AGCLLVMG18PA0TargetLowerer(AGCLLVMG18PA0TargetLowerer *this)
{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

{
  *this = &unk_2825BA2A8;
  v2 = *(this + 325);
  if (v2 != -8192 && v2 != -4096 && v2 != 0)
  {
    llvm::ValueHandleBase::RemoveFromUseList((this + 2584));
  }

  llvm::StringMap<BufferReplacementInfo,llvm::MallocAllocator>::~StringMap(this + 2448);
  llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::~StringMap(this + 2416);
  std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(*(this + 300));

  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);
}

void AGCLLVMG18PA0TargetConfig::AGCLLVMG18PA0TargetConfig()
{
  AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateHAL300TargetConfig(AGCTargetArch)::g18p_a0, 65574);
  *(v0 + 60) = 0;
  *(v0 + 49) = 0;
  *v0 = &unk_2825B8770;
  *(v0 + 8) = "agx3-apple-ios";
}

uint64_t AGCBindPointLayoutT<AGX::BindPointLayout<31,31,4,64,31,31,false>>::getComputeMaxAPIBindPointsBuffer(uint64_t a1, int a2)
{
  if (a2)
  {
    return 35;
  }

  else
  {
    return 31;
  }
}

uint64_t AGCBindPointLayoutT<AGX::BindPointLayout<31,31,4,64,31,31,false>>::getRenderMaxAPIBindPointsBuffer(uint64_t a1, int a2)
{
  if (a2)
  {
    return 35;
  }

  else
  {
    return 31;
  }
}

uint64_t AGCLLVMGen2TargetLowerer::buildWriteImageBlock(uint64_t a1, uint64_t a2)
{
  v83[16] = *MEMORY[0x277D85DE8];
  memset(&v78, 0, sizeof(v78));
  v82[0] = v83;
  v82[1] = 0x1000000000;
  v79 = v81;
  v80 = 0x1000000000;
  if (*a2 == 8)
  {
    MEMORY[0x20F331AA0](&v78, *(a1 + 2064));
    v4 = *(a1 + 184);
    v5 = llvm::PointerType::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v82, v5);
    v6 = *(a2 + 104);
    v7 = *(a1 + 184);
    v8 = llvm::PointerType::get();
    v77 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v6, v8, &TypeAllocSize);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v79, Cast);
    v10 = *(a1 + 200);
    v11 = llvm::PointerType::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v82, v11);
    v12 = *(a2 + 56);
    v13 = *(a1 + 200);
    v14 = llvm::PointerType::get();
    v77 = 257;
    v15 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v12, v14, &TypeAllocSize);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v79, v15);
    v16 = *(a1 + 184);
    v17 = llvm::PointerType::get();
    v18 = llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v82, v17);
    v19 = *(a2 + 32);
    if (v19)
    {
      if (!*(a1 + 1900) && (AGCLLVMObject::useTextureIDLegacyMode(v18) & 1) == 0)
      {
        TypeAllocSize = llvm::DataLayout::getTypeAllocSize((a1 + 472), *(a1 + 1784));
        v76 = v20;
        llvm::TypeSize::operator unsigned long long();
        v21 = *(a1 + 200);
        v22 = llvm::ConstantInt::get();
        v23 = *(a1 + 200);
        v77 = 257;
        v24 = llvm::IRBuilderBase::CreateCast(a1 + 8, 47, v19, v23, &TypeAllocSize);
        TypeAllocSize = "agx2_tex_heap_byte_offset";
        v77 = 259;
        Mul = llvm::IRBuilderBase::CreateMul((a1 + 8), v24, v22, &TypeAllocSize);
        v77 = 257;
        v19 = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, Mul, v17, &TypeAllocSize);
      }

      v26 = v19;
    }

    else
    {
      v55 = *(a1 + 208);
      v56 = llvm::ConstantInt::get();
      v77 = 257;
      v26 = llvm::IRBuilderBase::CreateCast(a1 + 8, 48, v56, v17, &TypeAllocSize);
    }

    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v79, v26);
    v57 = *(a2 + 4);
    if (v57 == 3)
    {
      std::string::append(&v78, ".3d");
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v82, *(a1 + 328));
      v60 = AGCLLVMBuilder::truncateToSmall(a1, *(a2 + 136), *(a1 + 192));
      v59 = AGCLLVMBuilder::extendVector(a1, v60, 4);
    }

    else
    {
      if (v57 != 1)
      {
        goto LABEL_25;
      }

      std::string::append(&v78, ".2d");
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v82, *(a1 + 240));
      v58 = AGCLLVMBuilder::truncateToSmall(a1, *(a2 + 136), *(a1 + 192));
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v79, v58);
      if (!*(a2 + 152))
      {
        goto LABEL_25;
      }

      std::string::append(&v78, ".array");
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v82, *(a1 + 192));
      v59 = AGCLLVMBuilder::truncateToSmall(a1, *(a2 + 152), *(a1 + 192));
    }

    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v79, v59);
LABEL_25:
    if (*(a2 + 168))
    {
      std::string::append(&v78, ".lod");
    }

    v61 = *(a2 + 8);
    if (v61 <= 7 && ((1 << v61) & 0x89) != 0)
    {
      v62 = ".32";
    }

    else
    {
      v62 = ".16";
    }

    std::string::append(&v78, v62);
    if (*(a2 + 168))
    {
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v82, *(a1 + 192));
      v63 = *(a2 + 168);
      v64 = *(a1 + 192);
      v77 = 257;
      v65 = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v63, v64, &TypeAllocSize);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v79, v65);
    }

    v66 = *(a1 + 144);
    goto LABEL_34;
  }

  v27 = (*(a2 + 8) > 7u) | (0x76u >> *(a2 + 8));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v82, *(a1 + 192));
  v28 = *(a1 + 192);
  v29 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v79, v29);
  if (*a2 == 7)
  {
    MEMORY[0x20F331AA0](&v78, *(a1 + 2080));
    v30 = 144;
  }

  else
  {
    MEMORY[0x20F331AA0](&v78, *(a1 + 2072));
    v30 = 312;
    if (v27)
    {
      v30 = 296;
    }
  }

  v31 = *(a1 + v30);
  if (v27)
  {
    v32 = ".4xh";
  }

  else
  {
    v32 = ".4xf";
  }

  std::string::append(&v78, v32);
  v33 = *(a1 + 184);
  v34 = llvm::PointerType::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v82, v34);
  v35 = *(a2 + 104);
  v36 = *(a1 + 184);
  v37 = llvm::PointerType::get();
  v77 = 257;
  v38 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v35, v37, &TypeAllocSize);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v79, v38);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v82, *(a1 + 240));
  v39 = AGCLLVMBuilder::truncateToSmall(a1, *(a2 + 136), *(a1 + 240));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v79, v39);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v82, *(a1 + 192));
  v40 = *(a2 + 144);
  v77 = 257;
  v41 = *(a1 + 200);
  v42 = llvm::ConstantInt::get();
  Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v40, v42, &TypeAllocSize);
  v44 = AGCLLVMBuilder::truncateToSmall(a1, Element, *(a1 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v79, v44);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v82, *(a1 + 192));
  v45 = *(a2 + 144);
  v77 = 257;
  v46 = *(a1 + 200);
  v47 = llvm::ConstantInt::get();
  v48 = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v45, v47, &TypeAllocSize);
  v49 = AGCLLVMBuilder::truncateToSmall(a1, v48, *(a1 + 192));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v79, v49);
  if (*a2 == 7)
  {
    v50 = *(**(a2 + 224) + 32);
    v51 = 168;
    if (v27)
    {
      v51 = 152;
    }

    v52 = *(a1 + v51);
    v53 = llvm::FixedVectorType::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v82, v53);
    v54 = AGCLLVMBuilder::bitCastElements(a1, *(a2 + 224), v52);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v79, v54);
  }

LABEL_34:
  llvm::FunctionType::get();
  if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v67 = &v78;
LABEL_37:
    strlen(v67);
    goto LABEL_38;
  }

  v67 = v78.__r_.__value_.__r.__words[0];
  if (v78.__r_.__value_.__r.__words[0])
  {
    goto LABEL_37;
  }

LABEL_38:
  v68 = *(a1 + 432);
  llvm::Module::getOrInsertFunction();
  v77 = 257;
  v70 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v69 + 24), v69, v79, v80, &TypeAllocSize);
  if (*a2 != 6)
  {
    goto LABEL_48;
  }

  v71 = *(a2 + 8);
  if (v71 > 6)
  {
    if (v71 != 7)
    {
      if (v71 != 8)
      {
        goto LABEL_48;
      }

      goto LABEL_45;
    }

LABEL_46:
    v72 = *(a1 + 336);
    goto LABEL_47;
  }

  if (v71 == 3)
  {
    goto LABEL_46;
  }

  if (v71 == 4)
  {
LABEL_45:
    v72 = *(a1 + 328);
LABEL_47:
    v77 = 257;
    v70 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v70, v72, &TypeAllocSize);
  }

LABEL_48:
  if (v79 != v81)
  {
    free(v79);
  }

  if (v82[0] != v83)
  {
    free(v82[0]);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  v73 = *MEMORY[0x277D85DE8];
  return v70;
}

llvm::Value *AGCLLVMGen2TargetLowerer::buildGammaSpaceConversion(uint64_t a1, uint64_t a2, llvm::Value *a3, uint64_t a4, uint64_t a5)
{
  v48 = *MEMORY[0x277D85DE8];
  v36 = *a2;
  v37 = *(a2 + 16);
  if (v37)
  {
    llvm::MetadataTracking::track();
  }

  v38 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v36);
  if (v37)
  {
    llvm::MetadataTracking::untrack();
  }

  v33 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v34, (a1 + 8));
  v35 = *(a1 + 104);
  v9 = AGCLLVMTargetLowerer::buildClampColor(a1, &v33, a3, a5, 0);
  if (v34)
  {
    llvm::MetadataTracking::untrack();
  }

  v30 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v31, (a1 + 8));
  v10 = *(a1 + 104);
  v32 = v10;
  v39 = v30;
  v40 = v31;
  if (v31)
  {
    llvm::MetadataTracking::track();
    v10 = v32;
  }

  v41 = v10;
  AGCLLVMTargetLowerer::SetIP(a1, &v39);
  if (v40)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*v9 == *(a1 + 312) || *v9 == *(a1 + 296))
  {
    v11 = AGCLLVMBuilder::subrangeVector(a1, v9, 0, 3, 1);
    v45 = 257;
    v12 = *(a1 + 200);
    v13 = llvm::ConstantInt::get();
    Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), v9, v13, &v42);
    v15 = Element;
    v16 = *(a1 + 184);
    if ((*(*v11 + 8) & 0xFE) == 0x12)
    {
      v29 = Element;
      *v46 = 0u;
      v47 = 0u;
      AGCLLVMBuilder::unboxVector(a1, v11, v46);
      v17 = *(*v11 + 32);
      if (v17)
      {
        v18 = 0;
        InsertElement = 0;
        do
        {
          v20 = v46[v18];
          v42 = *(a1 + 56);
          llvm::IRBuilderBase::getCurrentDebugLocation(&v43, (a1 + 8));
          v44 = *(a1 + 104);
          v21 = (*(*a1 + 144))(a1, &v42, v20, 0, v16);
          if (v43)
          {
            llvm::MetadataTracking::untrack();
          }

          if (!InsertElement)
          {
            v22 = *v21;
            v23 = *(*v11 + 32);
            llvm::FixedVectorType::get();
            InsertElement = llvm::UndefValue::get();
          }

          v45 = 257;
          v24 = *(a1 + 200);
          v25 = llvm::ConstantInt::get();
          InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v21, v25, &v42);
          ++v18;
        }

        while (v17 != v18);
      }

      else
      {
        InsertElement = 0;
      }

      v15 = v29;
    }

    else
    {
      v42 = *(a1 + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v43, (a1 + 8));
      v44 = *(a1 + 104);
      InsertElement = (*(*a1 + 144))(a1, &v42, v11, 0, v16);
      if (v43)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    v42 = *(a1 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v43, (a1 + 8));
    v44 = *(a1 + 104);
    v26 = (*(*a1 + 88))(a1, &v42, v15, 8, 0, 1);
    if (v43)
    {
      llvm::MetadataTracking::untrack();
    }

    v9 = AGCLLVMBuilder::combineRGBA(a1, InsertElement, v26);
  }

  if (v31)
  {
    llvm::MetadataTracking::untrack();
  }

  v27 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t AGCLLVMGen2TargetLowerer::setLoadStoreCacheControl()
{
  llvm::Function::addFnAttr();
  llvm::Function::addFnAttr();
  llvm::Function::addFnAttr();

  return llvm::Function::addFnAttr();
}

uint64_t AGCLLVMGen2TargetLowerer::bypassL1ForStoresForVertexDataDependencies(AGCLLVMGen2TargetLowerer *this, llvm::Function *a2)
{
  llvm::Function::addFnAttr();

  return llvm::Function::addFnAttr();
}

llvm::Value *AGCLLVMGen2TargetLowerer::buildInterpolate(AGCLLVMBuilder *a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35[4] = *MEMORY[0x277D85DE8];
  v28 = *a2;
  v29 = *(a2 + 16);
  if (v29)
  {
    llvm::MetadataTracking::track();
  }

  v30 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v28);
  if (v29)
  {
    llvm::MetadataTracking::untrack();
  }

  v13 = *(a1 + 21);
  v14 = a3 - 1;
  if (a3 != 1)
  {
    v15 = *(a1 + 21);
    llvm::FixedVectorType::get();
  }

  v16 = *(a1 + 39);
  v17 = llvm::PointerType::get();
  v34[0] = v35;
  v34[1] = 0x400000000;
  v31 = v33;
  v32 = 0x400000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v34, v17);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v31, a5);
  if (a7)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v34, v17);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v31, a7);
    v18 = 2248;
  }

  else
  {
    v18 = 2152;
  }

  v19 = a1 + 32 * a4 + v18;
  if (*(v19 + 8 * v14))
  {
    v20 = strlen(*(v19 + 8 * v14));
  }

  llvm::FunctionType::get();
  v21 = *(a1 + 54);
  llvm::Module::getOrInsertFunction();
  v27 = 257;
  v23 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v22 + 24), v22, v31, v32, v26);
  if ((a3 ^ v14) <= v14)
  {
    v23 = AGCLLVMBuilder::subrangeVector(a1, v23, 0, a3, 1);
  }

  if (v31 != v33)
  {
    free(v31);
  }

  if (v34[0] != v35)
  {
    free(v34[0]);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

uint64_t AGCLLVMGen2TargetLowerer::buildLocalID(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v20, "llvm.agx1.local.", "");
  llvm::SmallVectorTemplateBase<char,true>::push_back(&v20, aXyz[a4]);
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

  v8 = *(a1 + 192);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v16 = 257;
  v10 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v15);
  v14[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v10, a3, v14);
  if (v20 != v22)
  {
    free(v20);
  }

  v12 = *MEMORY[0x277D85DE8];
  return Cast;
}

uint64_t AGCLLVMGen2TargetLowerer::buildCopyOffChipMRTPixelData@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v14 = *a2;
  v15 = *(a2 + 2);
  if (v15)
  {
    llvm::MetadataTracking::track();
  }

  v16 = *(a2 + 6);
  v10 = *(a4 + 4 * a3);
  v11 = *(a1 + 192);
  v12 = llvm::ConstantInt::get();
  result = AGCLLVMGen2TargetLowerer::buildCopyOffChipMRTPixelDataStateless(a1, &v14, BYTE2(v10), v12);
  if (v15)
  {
    result = llvm::MetadataTracking::untrack();
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 24) = 0;
  *(a5 + 16) = 0;
  return result;
}

llvm::Value *AGCLLVMGen2TargetLowerer::buildCopyOffChipMRTPixelDataStateless(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v8 = *(a1 + 1776);
  if (v8)
  {
    v9 = strlen(*(a1 + 1776));
  }

  else
  {
    v9 = 0;
  }

  v10 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v8, v9, *(a1 + 144), *(a1 + 192), *(a1 + 192));
  v19[0] = a4;
  (*(*a1 + 536))(a1, a3);
  v11 = *(a1 + 192);
  v19[1] = llvm::ConstantInt::get();
  v15 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v10 + 24), v10, v19, 2, v14);
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen2TargetLowerer::buildEmitpix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v39 = *MEMORY[0x277D85DE8];
  v30 = *a2;
  v31 = *(a2 + 16);
  if (v31)
  {
    llvm::MetadataTracking::track();
  }

  v32 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v30);
  if (v31)
  {
    llvm::MetadataTracking::untrack();
  }

  if (*(a1 + 1992))
  {
    v13 = strlen(*(a1 + 1992));
  }

  v14 = *(a1 + 144);
  v16 = *(a1 + 192);
  v15 = *(a1 + 200);
  v17 = llvm::PointerType::get();
  v18 = *(a1 + 192);
  __src[0] = v16;
  __src[1] = v17;
  __src[2] = v18;
  __src[3] = v18;
  v34 = v18;
  Cast = v37;
  v36 = 0x500000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(&Cast, __src, &Cast);
  llvm::FunctionType::get();
  v19 = *(a1 + 432);
  llvm::Module::getOrInsertFunction();
  v21 = v20;
  if (Cast != v37)
  {
    free(Cast);
  }

  v22 = *(a1 + 192);
  LOWORD(v38) = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, a9, v22, &Cast);
  v23 = *(a1 + 200);
  v24 = llvm::PointerType::get();
  LOWORD(v34) = 257;
  v36 = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a3, v24, __src);
  (*(*a1 + 536))(a1, a8);
  v25 = *(a1 + 192);
  v37[0] = llvm::ConstantInt::get();
  v26 = *(a1 + 192);
  v37[1] = llvm::ConstantInt::get();
  v27 = *(a1 + 192);
  v38 = llvm::ConstantInt::get();
  LOWORD(v34) = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v21 + 24), v21, &Cast, 5, __src);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen2TargetLowerer::buildReadOutputRegister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v8 = *(a1 + 1632);
  if (v8)
  {
    v9 = strlen(*(a1 + 1632));
  }

  else
  {
    v9 = 0;
  }

  v10 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v8, v9, *(a1 + 200), *(a1 + 192), *(a1 + 192));
  v18[0] = a3;
  v18[1] = a4;
  v14 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v10 + 24), v10, v18, 2, v13);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen2TargetLowerer::buildWriteOutputRegister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  v10 = *(a1 + 1640);
  if (v10)
  {
    v11 = strlen(*(a1 + 1640));
  }

  else
  {
    v11 = 0;
  }

  v12 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *,llvm::Type *,llvm::Type *>(a1, v10, v11, *(a1 + 144), *(a1 + 192), *(a1 + 200), *(a1 + 192));
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v16 = 257;
  result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v12 + 24), v12, v20, 3, v15);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen2TargetLowerer::buildGExp(uint64_t a1, uint64_t a2, llvm::Type **a3, int a4, uint64_t a5)
{
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

  v10 = *(a1 + 168) == a5;
  if (a4)
  {
    v11 = 2144;
    v12 = 2136;
  }

  else
  {
    v11 = 2112;
    v12 = 2104;
  }

  if (*(a1 + 168) == a5)
  {
    v11 = v12;
  }

  v13 = *(a1 + v11);
  if (v13)
  {
    v14 = strlen(*(a1 + v11));
  }

  else
  {
    v14 = 0;
  }

  v15 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v13, v14, a5, *(a1 + 192));
  v16 = *(a1 + 192);
  v21 = 257;
  IntCast = llvm::IRBuilderBase::CreateIntCast((a1 + 8), a3, v16, 0, v20);
  v19 = 257;
  return llvm::IRBuilderBase::CreateCall(a1 + 8, *(v15 + 24), v15, &IntCast, 1, v18);
}

llvm::Value *AGCLLVMGen2TargetLowerer::buildGCmp(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, llvm::Type *a5)
{
  v28 = a3;
  v25 = *a2;
  v26 = *(a2 + 16);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v25);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = *a3;
  v11 = *(a1 + 168);
  v12 = 192;
  if (v10 == v11)
  {
    v12 = 200;
  }

  v13 = *(a1 + v12);
  v14 = v10 == v11;
  if (a4)
  {
    v15 = 2128;
    v16 = 2120;
  }

  else
  {
    v15 = 2096;
    v16 = 2088;
  }

  if (v14)
  {
    v15 = v16;
  }

  v17 = *(a1 + v15);
  if (v17)
  {
    v18 = strlen(*(a1 + v15));
  }

  else
  {
    v18 = 0;
  }

  v19 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v17, v18, v13, v10);
  v24 = 257;
  v20 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v19 + 24), v19, &v28, 1, v23);
  v22[16] = 257;
  return llvm::IRBuilderBase::CreateIntCast((a1 + 8), v20, a5, 0, v22);
}

llvm::Value *AGCLLVMGen2TargetLowerer::buildForceF16Precision(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v6 = *(a1 + 2032);
  if (v6)
  {
    v7 = strlen(*(a1 + 2032));
  }

  else
  {
    v7 = 0;
  }

  v8 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v6, v7, *(a1 + 192), *(a1 + 168), *(a1 + 192));
  v20[0] = a3;
  v9 = *(a1 + 192);
  v20[1] = llvm::ConstantInt::get();
  v16 = 257;
  v10 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v8 + 24), v8, v20, 2, v15);
  v11 = *(a1 + 152);
  v16 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, v10, v11, v15);
  result = AGCLLVMBuilder::f32Extend(a1, Cast, 1);
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen2TargetLowerer::buildPackNorm(uint64_t *a1, uint64_t a2, llvm::Value *a3, int a4, int a5)
{
  v41 = *a2;
  v42 = *(a2 + 16);
  if (v42)
  {
    llvm::MetadataTracking::track();
  }

  v43 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v41);
  if (v42)
  {
    llvm::MetadataTracking::untrack();
  }

  v10 = AGCLLVMBuilder::f32Extend(a1, a3, 1);
  v44 = v10;
  if (a4 == 16)
  {
    v11 = a5 == 0;
    v12 = 2024;
    v13 = 2016;
  }

  else
  {
    if (a4 != 8)
    {
      v14 = 0;
      goto LABEL_14;
    }

    v11 = a5 == 0;
    v12 = 2008;
    v13 = 2000;
  }

  if (!v11)
  {
    v12 = v13;
  }

  v14 = *(a1 + v12);
  if (v14)
  {
    v15 = strlen(*(a1 + v12));
    goto LABEL_15;
  }

LABEL_14:
  v15 = 0;
LABEL_15:
  v16 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v14, v15, a1[24], a1[21]);
  v17 = v16;
  v18 = 24;
  if (a4 == 8)
  {
    v18 = 23;
  }

  v19 = a1[v18];
  v20 = *v10;
  if ((*(*v10 + 8) & 0xFE) == 0x12 && (v21 = *(v20 + 32), v21 != 1))
  {
    v26 = a1[24];
    v27 = *(v20 + 32);
    llvm::FixedVectorType::get();
    InsertElement = llvm::UndefValue::get();
    if (v21)
    {
      for (i = 0; i != v21; ++i)
      {
        v40 = 257;
        v30 = a1[25];
        v31 = llvm::ConstantInt::get();
        Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 1), v10, v31, v39);
        v38 = 257;
        v32 = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v17 + 24), v17, &Element, 1, v37);
        v40 = 257;
        v33 = a1[25];
        v34 = llvm::ConstantInt::get();
        InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 1), InsertElement, v32, v34, v39);
      }
    }

    v25 = llvm::FixedVectorType::get();
    v40 = 257;
    v23 = (a1 + 1);
    v24 = v39;
    v22 = InsertElement;
  }

  else
  {
    v40 = 257;
    v22 = llvm::IRBuilderBase::CreateCall((a1 + 1), *(v16 + 24), v16, &v44, 1, v39);
    v38 = 257;
    v23 = (a1 + 1);
    v24 = v37;
    v25 = v19;
  }

  return llvm::IRBuilderBase::CreateIntCast(v23, v22, v25, 0, v24);
}

uint64_t AGCLLVMGen2TargetLowerer::buildCoverageMask(uint64_t a1, uint64_t a2, llvm::Value *a3, unsigned int a4)
{
  v27[2] = *MEMORY[0x277D85DE8];
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

  v26 = AGCLLVMBuilder::f32Extend(a1, a3, 1);
  if (a4 > 1)
  {
    v12 = *(a1 + 2008);
    if (v12)
    {
      v13 = strlen(*(a1 + 2008));
    }

    else
    {
      v13 = 0;
    }

    v14 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>(a1, v12, v13, *(a1 + 192), *(a1 + 168));
    v22 = 257;
    v15 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v14 + 24), v14, &v26, 1, v21);
    v16 = *(a1 + 2344);
    if (v16)
    {
      v17 = strlen(*(a1 + 2344));
    }

    else
    {
      v17 = 0;
    }

    v18 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v16, v17, *(a1 + 200), *(a1 + 192), *(a1 + 192));
    v19 = *(a1 + 192);
    v27[0] = llvm::ConstantInt::get();
    v27[1] = v15;
    v22 = 257;
    result = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v18 + 24), v18, v27, 2, v21);
  }

  else
  {
    v8 = *(a1 + 168);
    llvm::ConstantFP::get();
    v22 = 257;
    llvm::IRBuilderBase::CreateFCmpHelper();
    v9 = *(a1 + 200);
    llvm::ConstantInt::get();
    v10 = *(a1 + 200);
    llvm::ConstantInt::get();
    v22 = 257;
    result = llvm::IRBuilderBase::CreateSelect();
  }

  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen2TargetLowerer::buildAlphaTest(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
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

  if ((a5 - 2) <= 6)
  {
    v8 = dword_20E70D480[a5 - 2];
  }

  v16 = 257;
  llvm::IRBuilderBase::CreateFCmpHelper();
  v9 = a1[24];
  llvm::ConstantInt::get();
  v10 = a1[24];
  llvm::ConstantInt::get();
  v16 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v13 = *a2;
  v14 = *(a2 + 16);
  if (v14)
  {
    llvm::MetadataTracking::track();
  }

  v15 = *(a2 + 24);
  result = (*(*a1 + 624))(a1, &v13, Select);
  if (v14)
  {
    return llvm::MetadataTracking::untrack();
  }

  return result;
}

void AGCLLVMGen2TargetLowerer::~AGCLLVMGen2TargetLowerer(AGCLLVMGen2TargetLowerer *this)
{
  AGCLLVMTargetLowerer::~AGCLLVMTargetLowerer(this);

  JUMPOUT(0x20F331DC0);
}

void AGCLLVMGen3TargetConfig::createComputeControlFlowPredicateShader(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v6 = *a4;
  {
    AGCLLVMDriverComputeControlFlowPredicateShaderGen3::create(AGCLLVMCtx &,llvm::LLVMContext &,unsigned int,BOOL,BOOL)::computeCS = 0;
    *algn_27C8D98D8 = 0;
    qword_27C8D98E0 = 0;
  }

  ComputeControlFlowBitcodeFileName = getComputeControlFlowBitcodeFileName(*(a2 + 32));
  v8 = ComputeControlFlowBitcodeFileName;
  if (ComputeControlFlowBitcodeFileName)
  {
    v9 = strlen(ComputeControlFlowBitcodeFileName);
  }

  else
  {
    v9 = 0;
  }

  AGCLLVMObject::readBitcode(a3, v8, v9, 1);
  operator new();
}

void AGCLLVMGen3TargetConfig::createComputeProgressMarkerShader(AGCLLVMGen3TargetConfig *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  {
    {
      AGCLLVMDriverComputeProgressMarkerShaderGen3::create(AGCLLVMCtx &,llvm::LLVMContext &)::computeCS = 0;
      *algn_27C8D98B8 = 0;
      qword_27C8D98C0 = 0;
    }
  }

  AGCLLVMObject::readBitcode(a3, "progress_marker_compute", 23, 0);
  operator new();
}

uint64_t AGCLLVMGen3TargetConfig::createExecuteIndirectCDMRangeExecutionShader(AGCLLVMGen3TargetConfig *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  memset(&__p, 0, sizeof(__p));
  v5 = *(*(a2 + 4) + 28);
  if (v5 > 24)
  {
    if (v5 > 31)
    {
      if (v5 > 34)
      {
        if (v5 == 35 || v5 == 38)
        {
          v6 = "cei_range_exec_gen6_hal300";
          goto LABEL_43;
        }
      }

      else if (v5 == 32 || v5 == 34)
      {
        v6 = "cei_range_exec_gen6_hal200";
        goto LABEL_43;
      }

      goto LABEL_52;
    }

    if ((v5 - 25) >= 3)
    {
      if (v5 == 31)
      {
        std::string::basic_string[abi:nn200100]<0>(v24, "cei_range_exec_gen6_g16p");
        v7 = *(*(a2 + 4) + 24);
        v28[0] = 1;
        std::string::basic_string[abi:nn200100]<0>(v29, "a0");
        v30 = 3;
        std::string::basic_string[abi:nn200100]<0>(v31, "b0");
        v32 = 4;
        std::string::basic_string[abi:nn200100]<0>(v33, "b0");
        v8 = 0;
        v22 = 0;
        v23 = 0;
        v21 = &v22;
        do
        {
          std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v21, &v22, v28[v8]);
          v8 += 8;
        }

        while (v8 != 24);
        getFullBitcodePath(&v26, v24, v7, &v21);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v26;
        std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v22);
        for (i = 0; i != -96; i -= 32)
        {
          if (v33[i + 23] < 0)
          {
            operator delete(*&v33[i]);
          }
        }

        goto LABEL_61;
      }

      goto LABEL_52;
    }

LABEL_23:
    v6 = "cei_range_exec_gen4";
    goto LABEL_43;
  }

  if (v5 <= 18)
  {
    if ((v5 - 17) < 2)
    {
      v6 = "cei_range_exec_gen5";
      goto LABEL_43;
    }

    if (v5 != 14 && v5 != 16)
    {
      goto LABEL_52;
    }

    goto LABEL_23;
  }

  if ((v5 - 19) < 3)
  {
    v6 = "cei_range_exec_gen5x";
LABEL_43:
    MEMORY[0x20F331AA0](&__p, v6);
    goto LABEL_44;
  }

  if (v5 == 22)
  {
    std::string::basic_string[abi:nn200100]<0>(v24, "cei_range_exec_gen6_g15p");
    v18 = *(*(a2 + 4) + 24);
    v28[0] = 1;
    std::string::basic_string[abi:nn200100]<0>(v29, "a0");
    v30 = 3;
    std::string::basic_string[abi:nn200100]<0>(v31, "b0");
    v19 = 0;
    v22 = 0;
    v23 = 0;
    v21 = &v22;
    do
    {
      std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v21, &v22, v28[v19]);
      v19 += 8;
    }

    while (v19 != 16);
    getFullBitcodePath(&v26, v24, v18, &v21);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v26;
    std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v22);
    for (j = 0; j != -64; j -= 32)
    {
      if (v31[j + 23] < 0)
      {
        operator delete(*&v31[j]);
      }
    }

    goto LABEL_61;
  }

  if (v5 == 24)
  {
    std::string::basic_string[abi:nn200100]<0>(v24, "cei_range_exec_gen6_g15g");
    v11 = *(*(a2 + 4) + 24);
    v28[0] = 1;
    std::string::basic_string[abi:nn200100]<0>(v29, "a0");
    v30 = 3;
    std::string::basic_string[abi:nn200100]<0>(v31, "b0");
    v32 = 5;
    std::string::basic_string[abi:nn200100]<0>(v33, "c0");
    v12 = 0;
    v22 = 0;
    v23 = 0;
    v21 = &v22;
    do
    {
      std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::__emplace_hint_unique_key_args<AGCTargetArchMinor,std::pair<AGCTargetArchMinor const,std::string> const&>(&v21, &v22, v28[v12]);
      v12 += 8;
    }

    while (v12 != 24);
    getFullBitcodePath(&v26, v24, v11, &v21);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v26;
    std::__tree<std::__value_type<AGCTargetArchMinor,std::string>,std::__map_value_compare<AGCTargetArchMinor,std::__value_type<AGCTargetArchMinor,std::string>,std::less<AGCTargetArchMinor>,true>,std::allocator<std::__value_type<AGCTargetArchMinor,std::string>>>::destroy(v22);
    for (k = 0; k != -96; k -= 32)
    {
      if (v33[k + 23] < 0)
      {
        operator delete(*&v33[k]);
      }
    }

LABEL_61:
    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

LABEL_44:
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    AGCLLVMObject::readBitcode(a3, p_p, size, 0);
    {
      {
        AGCLLVMDriverExecuteIndirectRangeExecutionComputeShader::create(AGCLLVMCtx &,llvm::LLVMContext &)::computeCS = 0;
        *algn_27C8D9818 = 0;
        qword_27C8D9820 = 0;
      }
    }

    operator new();
  }

LABEL_52:
  v16 = *MEMORY[0x277D85DE8];
  return 0;
}

void AGCLLVMGen3TargetConfig::createGPUGatherComputeShader(AGCLLVMGen3TargetConfig *this, AGCLLVMCtx *a2, llvm::LLVMContext *a3)
{
  AGCLLVMObject::readBitcode(a3, "gpu_gather_compute_gen2", 23, 0);
  {
    {
      AGCLLVMDriverGPUGatherComputeShaderGen3::create(AGCLLVMCtx &,llvm::LLVMContext &)::computeCS = 0;
      *algn_27C8D9838 = 0;
      qword_27C8D9840 = 0;
    }
  }

  operator new();
}

void AGCLLVMGen3TargetLowerer::buildUpdateHWColorCovarageMask(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35[6] = *MEMORY[0x277D85DE8];
  v33 = v35;
  v34 = xmmword_20E70C710;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v33, "llvm.agx2.update.hw.coverage.mask.", "");
  if (a5)
  {
    v9 = "coords.i16";
  }

  else
  {
    v9 = "i16";
  }

  v10 = 10;
  if (!a5)
  {
    v10 = 3;
  }

  llvm::SmallVectorImpl<char>::append<char const*,void>(&v33, v9, &v9[v10]);
  v25 = *a2;
  v26 = *(a2 + 16);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v25);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v31[0] = v32;
  v31[1] = 0x500000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v31, a1[24]);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v31, a1[24]);
  if (a5)
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v31, a1[30]);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v31, a1[24]);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v31, a1[24]);
    v28 = v30;
    v29 = 0x500000000;
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v28, a3);
    v11 = a1[24];
    v12 = llvm::ConstantInt::get();
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v28, v12);
    v13 = a5;
  }

  else
  {
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v31, a1[24]);
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v31, a1[24]);
    v28 = v30;
    v29 = 0x500000000;
    llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v28, a3);
    v14 = a1[24];
    v13 = llvm::ConstantInt::get();
  }

  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v28, v13);
  v15 = a1[24];
  v16 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v28, v16);
  v17 = a1[24];
  v18 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v28, v18);
  v19 = a1[18];
  llvm::FunctionType::get();
  v20 = a1[54];
  llvm::Module::getOrInsertFunction();
  v24 = 257;
  llvm::IRBuilderBase::CreateCall((a1 + 1), *(v21 + 24), v21, v28, v29, v23);
  if (v28 != v30)
  {
    free(v28);
  }

  if (v31[0] != v32)
  {
    free(v31[0]);
  }

  if (v33 != v35)
  {
    free(v33);
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t AGCLLVMGen3TargetLowerer::buildReadClusterID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v18, "llvm.agx2.cluster.num", "");
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

  v6 = *(a1 + 200);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v14 = 257;
  v8 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v13);
  v12[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v8, a3, v12);
  if (v18 != v20)
  {
    free(v18);
  }

  v10 = *MEMORY[0x277D85DE8];
  return Cast;
}

uint64_t AGCLLVMGen3TargetLowerer::buildAddressInOffChipMRTBuffer(AGCLLVMGen3TargetLowerer *this, unsigned int a2, unsigned __int16 a3, unsigned __int16 a4, llvm::Value *a5, llvm::Value *a6)
{
  if (a2 > 0x16)
  {
    goto LABEL_8;
  }

  if (((1 << a2) & 0x41F3C0) == 0)
  {
    if (((1 << a2) & 0x3C0000) != 0)
    {
      v8 = 4;
      goto LABEL_11;
    }

    if (((1 << a2) & 0x20C00) != 0)
    {
      v8 = 4 * a3;
      goto LABEL_11;
    }

LABEL_8:
    if (a2 - 2 >= 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = a3;
    }

    goto LABEL_11;
  }

  v8 = 2 * a3;
LABEL_11:
  v64 = v8;
  llvm::ArrayType::get(*(this + 23), v64);
  v63 = llvm::PointerType::get();
  v9 = *(this + 23);
  llvm::PointerType::get();
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(this);
  v84 = 257;
  v62 = llvm::IRBuilderBase::CreateCall(this + 8, *(inserted + 24), inserted, 0, 0, v83);
  v11 = *(this + 25);
  v12 = AGCLLVMBuilder::getOrInsertFunction<>(this);
  v84 = 257;
  v60 = llvm::IRBuilderBase::CreateCall(this + 8, *(v12 + 24), v12, 0, 0, v83);
  v13 = *(this + 24);
  v14 = AGCLLVMBuilder::getOrInsertFunction<>(this);
  v84 = 257;
  v15 = llvm::IRBuilderBase::CreateCall(this + 8, *(v14 + 24), v14, 0, 0, v83);
  v16 = 0;
  v81 = 0;
  v82 = 0;
  v79 = 0;
  v80 = 0;
  v17 = &v82;
  v18 = &v80;
  v19 = 1;
  do
  {
    v20 = v19;
    if (a6)
    {
      v84 = 257;
      v21 = *(this + 25);
      v22 = llvm::ConstantInt::get();
      *v17 = llvm::IRBuilderBase::CreateExtractElement((this + 8), a6, v22, v83);
    }

    else
    {
      v76 = *(this + 56);
      llvm::IRBuilderBase::getCurrentDebugLocation(&v77, (this + 8));
      v78 = *(this + 26);
      *v17 = (*(*this + 272))(this, &v76, *(this + 24), v16);
      if (v77)
      {
        llvm::MetadataTracking::untrack();
      }
    }

    v73 = *(this + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v74, (this + 8));
    v75 = *(this + 26);
    *v18 = AGCLLVMGen3TargetLowerer::buildLocalSize(this, &v73, *(this + 24), v16);
    if (v74)
    {
      llvm::MetadataTracking::untrack();
    }

    v19 = 0;
    v16 = 1;
    v17 = &v81;
    v18 = &v79;
  }

  while ((v20 & 1) != 0);
  v23 = v80;
  v84 = 257;
  Mul = llvm::IRBuilderBase::CreateMul((this + 8), v80, v79, v83);
  v25 = *(this + 24);
  v26 = llvm::ConstantInt::get();
  v84 = 257;
  v27 = llvm::IRBuilderBase::CreateMul((this + 8), Mul, v26, v83);
  v28 = *(this + 25);
  v72 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(this + 8, 39, v27, v28, v71);
  v68 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v69, (this + 8));
  v70 = *(this + 26);
  v30 = (*(*this + 1712))(this, &v68, *(this + 24));
  if (v69)
  {
    llvm::MetadataTracking::untrack();
  }

  v65 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v66, (this + 8));
  v67 = *(this + 26);
  v31 = (*(*this + 1720))(this, &v65, *(this + 24));
  if (v66)
  {
    llvm::MetadataTracking::untrack();
  }

  v84 = 257;
  v32 = llvm::IRBuilderBase::CreateMul((this + 8), v30, v15, v83);
  v84 = 257;
  Add = llvm::IRBuilderBase::CreateAdd((this + 8), v32, v31, v83);
  v34 = *(this + 25);
  v84 = 257;
  v35 = llvm::IRBuilderBase::CreateCast(this + 8, 39, Add, v34, v83);
  v72 = 257;
  v36 = llvm::IRBuilderBase::CreateMul((this + 8), v35, v60, v71);
  v37 = *(this + 25);
  v84 = 257;
  v38 = llvm::IRBuilderBase::CreateCast(this + 8, 39, a5, v37, v83);
  v72 = 257;
  v39 = llvm::IRBuilderBase::CreateMul((this + 8), v38, Cast, v71);
  v84 = 257;
  v40 = llvm::IRBuilderBase::CreateMul((this + 8), v81, v23, v83);
  v84 = 257;
  v41 = llvm::IRBuilderBase::CreateAdd((this + 8), v40, v82, v83);
  v42 = *(this + 24);
  v43 = llvm::ConstantInt::get();
  v84 = 257;
  v44 = llvm::IRBuilderBase::CreateMul((this + 8), v41, v43, v83);
  v45 = *(this + 24);
  v46 = llvm::ConstantInt::get();
  v84 = 257;
  v47 = llvm::IRBuilderBase::CreateMul((this + 8), v44, v46, v83);
  v84 = 257;
  v48 = llvm::IRBuilderBase::CreateAdd((this + 8), v36, v39, v83);
  v49 = *(this + 25);
  v84 = 257;
  v50 = llvm::IRBuilderBase::CreateCast(this + 8, 39, v47, v49, v83);
  v72 = 257;
  v51 = llvm::IRBuilderBase::CreateAdd((this + 8), v48, v50, v71);
  v52 = *(this + 23);
  v84 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((this + 8), v52, v62, v51, v83);
  v55 = *(this + 23);
  v54 = *(this + 24);
  v56 = llvm::ConstantInt::get();
  v84 = 257;
  v57 = llvm::IRBuilderBase::CreateGEP((this + 8), v55, GEP, v56, v83);
  v84 = 257;
  v58 = llvm::IRBuilderBase::CreateCast(this + 8, 49, v57, v63, v83);
  llvm::ArrayType::get(*(this + 23), v64);
  return v58;
}

uint64_t AGCLLVMGen3TargetLowerer::buildLocalSize(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v20 = v22;
  v21 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v20, "llvm.agx2.threadgroup.", "");
  llvm::SmallVectorTemplateBase<char,true>::push_back(&v20, aXyz[a4]);
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v20, ".size", "");
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

  v8 = *(a1 + 200);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v16 = 257;
  v10 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v15);
  v14[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v10, a3, v14);
  if (v20 != v22)
  {
    free(v20);
  }

  v12 = *MEMORY[0x277D85DE8];
  return Cast;
}

uint64_t AGCLLVMGen3TargetLowerer::buildWriteOutputPartition(AGCLLVMGen3TargetLowerer::MemoryTransferOp const&,unsigned short,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,BOOL,llvm::Value *,llvm::Value *,llvm::Value *,BOOL,BOOL)::$_1::operator()(void *a1)
{
  v1 = a1;
  v127 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if ((*(**a1 + 1672))(*a1, *a1[1], *(a1[1] + 8), 1, 1, *a1[2]))
  {
    v3 = *(v1[1] + 8);
    if ((*(v3 + 8) & 0xFE) == 0x12)
    {
      v4 = v2[19];
      v5 = *(v3 + 32);
      llvm::VectorType::get();
      InsertElement = llvm::UndefValue::get();
      if (*(*(v1[1] + 8) + 32))
      {
        v7 = 0;
        do
        {
          v8 = *v1[3];
          v112 = 257;
          v9 = v2[25];
          v10 = llvm::ConstantInt::get();
          Element = llvm::IRBuilderBase::CreateExtractElement((v2 + 1), v8, v10, &v109);
          v12 = v2[19];
          v126 = 257;
          FPTrunc = llvm::IRBuilderBase::CreateFPTrunc((v2 + 1), Element, v12, v124);
          v112 = 257;
          v14 = v2[25];
          v15 = llvm::ConstantInt::get();
          InsertElement = llvm::IRBuilderBase::CreateInsertElement((v2 + 1), InsertElement, FPTrunc, v15, &v109);
          ++v7;
        }

        while (v7 < *(*(v1[1] + 8) + 32));
      }

      *v1[3] = InsertElement;
    }

    else
    {
      v16 = *v1[3];
      v17 = v2[19];
      v112 = 257;
      *v1[3] = llvm::IRBuilderBase::CreateFPTrunc((v2 + 1), v16, v17, &v109);
    }
  }

  v18 = v2[25];
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(v2);
  v112 = 257;
  v20 = llvm::IRBuilderBase::CreateCall((v2 + 1), *(inserted + 24), inserted, 0, 0, &v109);
  v21 = v2[24];
  v126 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v2 + 1), 38, v20, v21, v124);
  v23 = *v1[4];
  if (!v23)
  {
    v23 = *v1[5];
  }

  if ((*v1[6] & 1) == 0)
  {
    v112 = 257;
    v23 = llvm::IRBuilderBase::CreateAnd((v2 + 1), v23, Cast, &v109);
  }

  v24 = ~(-1 << *v1[7]);
  v25 = v2[24];
  v26 = llvm::ConstantInt::get();
  v112 = 257;
  v27 = llvm::IRBuilderBase::CreateAnd((v2 + 1), v23, v26, &v109);
  v28 = v1[1];
  v29 = *(v28 + 2);
  v30 = *(v28 + 6);
  v31 = *v1[7];
  v32 = *v1[8];
  v33 = *v1[9];
  v112 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((v2 + 1), v32, v33, &v109);
  GEP = (*(*v2 + 1704))(v2, v29, v30, v31, Sub, *v1[10]);
  v98 = v36;
  v37 = v2[23];
  llvm::PointerType::get();
  v38 = AGCLLVMBuilder::getOrInsertFunction<>(v2);
  v112 = 257;
  v39 = llvm::IRBuilderBase::CreateCall((v2 + 1), *(v38 + 24), v38, 0, 0, &v109);
  v40 = *GEP;
  v112 = 257;
  llvm::IRBuilderBase::CreateCast((v2 + 1), 49, v39, v40, &v109);
  v106 = *(v2 + 7);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v107, (v2 + 1));
  v108 = *(v2 + 26);
  v41 = *v1[4];
  if (!v41)
  {
    v41 = *v1[5];
  }

  result = (*(*v2 + 1728))(v2, &v106, v41, *v1[6], *v1[10]);
  if (v107)
  {
    result = llvm::MetadataTracking::untrack();
  }

  if (*v1[7])
  {
    v43 = 0;
    v95 = *(MEMORY[0x277D82828] + 24);
    v96 = *MEMORY[0x277D82828];
    v97 = v1;
    do
    {
      v44 = v2[24];
      v45 = llvm::ConstantInt::get();
      v112 = 257;
      v46 = llvm::IRBuilderBase::CreateAnd((v2 + 1), v27, v45, &v109);
      v47 = v2[24];
      v48 = llvm::ConstantInt::get();
      v126 = 257;
      llvm::IRBuilderBase::CreateICmp(v2 + 1, 32, v46, v48, v124);
      v112 = 257;
      Select = llvm::IRBuilderBase::CreateSelect();
      v49 = v1[1];
      v50 = *v1[8];
      v51 = *v1[3];
      v52 = (*(*v2 + 1672))(v2, *v49, *(v49 + 1), 1, 1, 0) >> 16;
      if (v50)
      {
        v53 = *(v50 + 16) == 16;
      }

      else
      {
        v53 = 0;
      }

      if (v53)
      {
        v54 = (v50 + 24);
        if (*(v50 + 32) >= 0x41u)
        {
          v54 = *v54;
        }

        v55 = (16 * (*v54 & 0xFFF)) | v52;
      }

      v56 = v49[2];
      v57 = v2[24];
      v105 = GEP;
      v104 = v43;
      v100 = llvm::ConstantInt::get();
      if ((*(*v51 + 8) & 0xFE) == 0x12)
      {
        v58 = **(*v51 + 16);
      }

      v59 = vcnt_s8(v56);
      v59.i16[0] = vaddlv_u8(v59);
      v99 = v59.u16[0];
      v101 = v59.i32[0];
      llvm::FixedVectorType::get();
      v60 = llvm::UndefValue::get();
      v103 = v49;
      v61 = v49[2];
      if (v49[2])
      {
        v62 = 0;
        do
        {
          v63 = __clz(__rbit32(v61));
          v112 = 257;
          v64 = v2[25];
          v65 = llvm::ConstantInt::get();
          v66 = llvm::IRBuilderBase::CreateExtractElement((v2 + 1), v51, v65, &v109);
          v126 = 257;
          v67 = v2[25];
          v68 = llvm::ConstantInt::get();
          v60 = llvm::IRBuilderBase::CreateInsertElement((v2 + 1), v60, v66, v68, v124);
          ++v62;
          v53 = 1 << v63 == v61;
          v61 ^= 1 << v63;
        }

        while (!v53);
      }

      if (v99 == 1)
      {
        v112 = 257;
        v69 = v2[25];
        v70 = llvm::ConstantInt::get();
        v60 = llvm::IRBuilderBase::CreateExtractElement((v2 + 1), v60, v70, &v109);
      }

      v1 = v97;
      v71 = v2[23];
      if ((*(*Select + 8) & 0xFE) == 0x12)
      {
        v72 = *(**(*Select + 16) + 8);
      }

      v73 = llvm::PointerType::get();
      v112 = 257;
      v74 = llvm::IRBuilderBase::CreateCast((v2 + 1), 49, Select, v73, &v109);
      std::string::basic_string[abi:nn200100]<0>(&v116, v2[179]);
      v124[0] = v125;
      v124[1] = 0x600000000;
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v124, v2[24]);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v124, v2[24]);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v124, *v60);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v124, *v74);
      v121 = v123;
      v122 = 0x600000000;
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v121, v100);
      v75 = v103[2];
      v76 = v2[24];
      v77 = llvm::ConstantInt::get();
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v121, v77);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v121, v60);
      llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v121, v74);
      v78 = *v51;
      std::ostringstream::basic_ostringstream[abi:nn200100](&v109);
      v79 = MEMORY[0x20F331C20](&v109, v101);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v79, "xsz", 3);
      ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v78);
      MEMORY[0x20F331C20](v79, ScalarSizeInBits);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v109, ".", 1);
      AGCLLVMGen3TargetLowerer::getWriteSuffix(&__p, v2, *v60);
      if ((v119 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v119 & 0x80u) == 0)
      {
        v82 = v119;
      }

      else
      {
        v82 = v118;
      }

      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v109, p_p, v82);
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v109, ".p", 2);
      v83 = *(*v74 + 8);
      if ((v83 & 0xFE) == 0x12)
      {
        v83 = *(**(*v74 + 16) + 8);
      }

      MEMORY[0x20F331C20](&v109, v83 >> 8);
      if (v119 < 0)
      {
        operator delete(__p);
      }

      if ((llvm::Type::isOpaquePointerTy(*v74) & 1) == 0)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v109, "i8", 2);
      }

      std::stringbuf::str();
      if ((v119 & 0x80u) == 0)
      {
        v84 = &__p;
      }

      else
      {
        v84 = __p;
      }

      if ((v119 & 0x80u) == 0)
      {
        v85 = v119;
      }

      else
      {
        v85 = v118;
      }

      std::string::append(&v116, v84, v85);
      if (v119 < 0)
      {
        operator delete(__p);
      }

      v86 = v2[18];
      llvm::FunctionType::get();
      v87 = v2[54];
      llvm::Module::getOrInsertFunction();
      v120 = 257;
      llvm::IRBuilderBase::CreateCall((v2 + 1), *(v88 + 24), v88, v121, v122, &__p);
      v89 = v2[57];
      __p = llvm::MDString::get();
      llvm::MDTuple::getImpl();
      llvm::Instruction::setMetadata();
      v109 = v96;
      *(&v109 + *(v96 - 24)) = v95;
      v110 = MEMORY[0x277D82878] + 16;
      if (v114 < 0)
      {
        operator delete(v113);
      }

      v110 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v111);
      std::ostream::~ostream();
      MEMORY[0x20F331D40](&v115);
      if (v121 != v123)
      {
        free(v121);
      }

      if (v124[0] != v125)
      {
        free(v124[0]);
      }

      if (SHIBYTE(v116.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v116.__r_.__value_.__l.__data_);
      }

      v90 = v2[24];
      v91 = llvm::ConstantInt::get();
      v112 = 257;
      GEP = llvm::IRBuilderBase::CreateGEP((v2 + 1), v98, v105, v91, &v109);
      v92 = v2[24];
      v93 = llvm::ConstantInt::get();
      v112 = 257;
      result = llvm::IRBuilderBase::CreateLShr((v2 + 1), v27, v93, &v109);
      v27 = result;
      v43 = v104 + 1;
    }

    while (*v97[7] > (v104 + 1));
  }

  v94 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t AGCLLVMGen3TargetLowerer::buildReadOutputPartition(AGCLLVMGen3TargetLowerer::MemoryTransferOp const&,unsigned short,llvm::Value *,llvm::Type *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,llvm::Value *,BOOL)::$_1::operator()(uint64_t a1)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 200);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(*a1);
  v38 = 257;
  v5 = llvm::IRBuilderBase::CreateCall((v2 + 1), *(inserted + 24), inserted, 0, 0, v37);
  v6 = v2[24];
  v36 = 257;
  Cast = llvm::IRBuilderBase::CreateCast((v2 + 1), 38, v5, v6, v35);
  v8 = **(a1 + 8);
  if (!v8)
  {
    v8 = **(a1 + 16);
  }

  if ((**(a1 + 24) & 1) == 0)
  {
    v38 = 257;
    v8 = llvm::IRBuilderBase::CreateAnd((v2 + 1), v8, Cast, v37);
  }

  v9 = ~(-1 << **(a1 + 32));
  v10 = v2[24];
  v11 = llvm::ConstantInt::get();
  v38 = 257;
  v12 = llvm::IRBuilderBase::CreateAnd((v2 + 1), v8, v11, v37);
  v13 = v2[24];
  v14 = llvm::ConstantInt::get();
  v38 = 257;
  llvm::IRBuilderBase::CreateICmp(v2 + 1, 32, v12, v14, v37);
  v15 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(v2, "llvm.cttz.i16", 13, v2[24], v2[24], v2[22]);
  v16 = v2[24];
  llvm::ConstantInt::get();
  v39[0] = v12;
  v17 = v2[22];
  v39[1] = llvm::ConstantInt::get();
  v38 = 257;
  llvm::IRBuilderBase::CreateCall((v2 + 1), *(v15 + 24), v15, v39, 2, v37);
  v36 = 257;
  Select = llvm::IRBuilderBase::CreateSelect();
  v19 = *(a1 + 40);
  v20 = *(v19 + 2);
  v21 = *(v19 + 6);
  v22 = **(a1 + 32);
  v23 = **(a1 + 48);
  v24 = **(a1 + 56);
  v38 = 257;
  Sub = llvm::IRBuilderBase::CreateSub((v2 + 1), v23, v24, v37);
  v26 = (*(*v2 + 1704))(v2, v20, v21, v22, Sub, **(a1 + 64));
  v27 = *(a1 + 40);
  v28 = **(a1 + 72);
  v38 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v2 + 1), v29, v26, Select, v37);
  EMRTTileBuffer = AGCLLVMGen3TargetLowerer::buildLoadEMRTTileBuffer(v2, v27, v28, GEP);
  llvm::Constant::getNullValue(*EMRTTileBuffer, v32);
  v38 = 257;
  result = llvm::IRBuilderBase::CreateSelect();
  v34 = *MEMORY[0x277D85DE8];
  return result;
}

llvm::Value *AGCLLVMGen3TargetLowerer::buildLoadEMRTTileBuffer(AGCLLVMGen3TargetLowerer *a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  v61[3] = *MEMORY[0x277D85DE8];
  v8 = vcnt_s8(a2[2]);
  v9 = (*(*a1 + 1672))(a1, *a2, *(a2 + 1), 0, 0, 0);
  v11 = v9;
  if (v9)
  {
    v12 = (a1 + 152);
  }

  else
  {
    v13 = *(a2 + 1);
    if ((*(v13 + 8) & 0xFE) != 0x12)
    {
      goto LABEL_6;
    }

    v12 = *(v13 + 16);
  }

  v13 = *v12;
LABEL_6:
  LOWORD(v10) = vaddlv_u8(v8);
  v14 = HIWORD(v9);
  v15 = v13;
  if (a2[3] != 1)
  {
    v44 = v10;
    v16 = llvm::FixedVectorType::get();
    v10 = v44;
    v15 = v16;
  }

  if (a3 && *(a3 + 16) == 16)
  {
    v17 = (a3 + 24);
    if (*(a3 + 32) >= 0x41u)
    {
      v17 = *v17;
    }

    v18 = (16 * (*v17 & 0xFFF)) | v14;
  }

  v19 = v10;
  v20 = *(a1 + 24);
  v21 = llvm::ConstantInt::get();
  v22 = *(a1 + 23);
  if ((*(*a4 + 8) & 0xFE) == 0x12)
  {
    v23 = *(**(*a4 + 16) + 8);
  }

  v24 = llvm::PointerType::get();
  v48 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 49, a4, v24, &v45);
  std::string::basic_string[abi:nn200100]<0>(&v52, *(a1 + 178));
  v60[0] = v61;
  v60[1] = 0x300000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v60, *(a1 + 24));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v60, *(a1 + 24));
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v60, *Cast);
  v57 = v59;
  v58 = 0x300000000;
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v57, v21);
  v26 = a2[2];
  v27 = *(a1 + 24);
  v28 = llvm::ConstantInt::get();
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v57, v28);
  llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(&v57, Cast);
  std::ostringstream::basic_ostringstream[abi:nn200100](&v45);
  v29 = MEMORY[0x20F331C20](&v45, v19);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v29, "xsz", 3);
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(v15);
  MEMORY[0x20F331C20](v29, ScalarSizeInBits);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v45, ".", 1);
  if (*(a1 + 24) == v13)
  {
    v31 = "i16";
  }

  else if (*(a1 + 25) == v13)
  {
    v31 = "i32";
  }

  else if (*(a1 + 19) == v13)
  {
    v31 = "f16";
  }

  else
  {
    v31 = "f32";
  }

  std::string::basic_string[abi:nn200100]<0>(&v53, v31);
  if ((v55 & 0x80u) == 0)
  {
    v32 = &v53;
  }

  else
  {
    v32 = v53;
  }

  if ((v55 & 0x80u) == 0)
  {
    v33 = v55;
  }

  else
  {
    v33 = v54;
  }

  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v45, v32, v33);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v45, ".p", 2);
  v34 = *(*Cast + 8);
  if ((v34 & 0xFE) == 0x12)
  {
    v34 = *(**(*Cast + 16) + 8);
  }

  MEMORY[0x20F331C20](&v45, v34 >> 8);
  if (v55 < 0)
  {
    operator delete(v53);
  }

  if ((llvm::Type::isOpaquePointerTy(*Cast) & 1) == 0)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v45, "i8", 2);
  }

  std::stringbuf::str();
  if ((v55 & 0x80u) == 0)
  {
    v35 = &v53;
  }

  else
  {
    v35 = v53;
  }

  if ((v55 & 0x80u) == 0)
  {
    v36 = v55;
  }

  else
  {
    v36 = v54;
  }

  std::string::append(&v52, v35, v36);
  if (v55 < 0)
  {
    operator delete(v53);
  }

  llvm::FunctionType::get();
  v37 = *(a1 + 54);
  llvm::Module::getOrInsertFunction();
  v56 = 257;
  v39 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(v38 + 24), v38, v57, v58, &v53);
  v40 = *(a1 + 57);
  v53 = llvm::MDString::get();
  llvm::MDTuple::getImpl();
  llvm::Instruction::setMetadata();
  v41 = AGCLLVMGen3TargetLowerer::convertFromF16(a1, v39, v11 & 1);
  v45 = *MEMORY[0x277D82828];
  *(&v45 + *(v45 - 24)) = *(MEMORY[0x277D82828] + 24);
  v46 = MEMORY[0x277D82878] + 16;
  if (v50 < 0)
  {
    operator delete(__p);
  }

  v46 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v47);
  std::ostream::~ostream();
  MEMORY[0x20F331D40](&v51);
  if (v57 != v59)
  {
    free(v57);
  }

  if (v60[0] != v61)
  {
    free(v60[0]);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  v42 = *MEMORY[0x277D85DE8];
  return v41;
}

uint64_t AGCLLVMGen3TargetLowerer::buildSimdShuffleDown(uint64_t a1, __int128 *a2, llvm::Type **a3, llvm::Value *a4)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  if (v11)
  {
    llvm::MetadataTracking::track();
  }

  v12 = *(a2 + 6);
  v8 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(a1, &v10, a3, a4, 2, *(a1 + 968));
  if (v11)
  {
    llvm::MetadataTracking::untrack();
  }

  return v8;
}

uint64_t AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(uint64_t a1, uint64_t a2, llvm::Type **a3, llvm::Value *a4, int a5, int a6)
{
  v28 = a6;
  v29 = a5;
  v25 = *a2;
  v26 = *(a2 + 16);
  if (v26)
  {
    llvm::MetadataTracking::track();
  }

  v27 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v25);
  if (v26)
  {
    llvm::MetadataTracking::untrack();
  }

  v24[0] = &v28;
  v24[1] = a1;
  v24[2] = &v29;
  v10 = *a3;
  ScalarSizeInBits = llvm::Type::getScalarSizeInBits(*a3);
  if ((*(v10 + 2) & 0xFE) == 0x12)
  {
    v12 = *(v10 + 8);
  }

  else
  {
    v12 = 1;
  }

  if ((v12 * ScalarSizeInBits) < 0x21)
  {
    return AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *,AGCLLVMGen3TargetLowerer::SimdShuffleFunction,unsigned int)::$_0::operator()(v24, a3, a4);
  }

  InsertElement = llvm::UndefValue::get();
  if (*(*a3 + 8))
  {
    v14 = 0;
    do
    {
      v23 = 257;
      v15 = *(a1 + 200);
      v16 = llvm::ConstantInt::get();
      Element = llvm::IRBuilderBase::CreateExtractElement((a1 + 8), a3, v16, v22);
      v18 = AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *,AGCLLVMGen3TargetLowerer::SimdShuffleFunction,unsigned int)::$_0::operator()(v24, Element, a4);
      v23 = 257;
      v19 = *(a1 + 200);
      v20 = llvm::ConstantInt::get();
      InsertElement = llvm::IRBuilderBase::CreateInsertElement((a1 + 8), InsertElement, v18, v20, v22);
      ++v14;
    }

    while (v14 < *(*a3 + 8));
  }

  return InsertElement;
}

uint64_t AGCLLVMGen3TargetLowerer::buildEmulatedSimdShuffle(AGCLLVMBuilder::InsertPoint,llvm::Value *,llvm::Value *,AGCLLVMGen3TargetLowerer::SimdShuffleFunction,unsigned int)::$_0::operator()(unsigned int **a1, llvm::Type **a2, llvm::Value *a3)
{
  v6 = a1[1];
  if (**a1 == 4)
  {
    v54 = *(v6 + 56);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v55, (v6 + 8));
    v56 = *(v6 + 26);
    v7 = AGCLLVMGen3TargetLowerer::buildQuadElement(v6, &v54, *(v6 + 24));
    if (!v55)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v51 = *(v6 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v52, (v6 + 8));
  v53 = *(v6 + 26);
  v7 = (*(*v6 + 1624))(v6, &v51, *(v6 + 24));
  if (v52)
  {
LABEL_3:
    llvm::MetadataTracking::untrack();
  }

LABEL_4:
  v48 = *(v6 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v49, (v6 + 8));
  v50 = *(v6 + 26);
  v8 = AGCLLVMGen3TargetLowerer::buildSimdGroupScratchMemoryPtr(v6, &v48, v7);
  if (v49)
  {
    llvm::MetadataTracking::untrack();
  }

  v9 = *a2;
  if ((*(*v8 + 8) & 0xFE) == 0x12)
  {
    v10 = *(**(*v8 + 16) + 8);
  }

  v11 = llvm::PointerType::get();
  v47 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(v6 + 8, 49, v8, v11, v46);
  v13 = *a2;
  v47 = 257;
  GEP = llvm::IRBuilderBase::CreateGEP((v6 + 8), v13, Cast, v7, v46);
  llvm::IRBuilderBase::CreateAlignedStore(v6 + 1, a2, GEP, 0);
  v43 = *(v6 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v44, (v6 + 8));
  v45 = *(v6 + 26);
  AGCLLVMGen3TargetLowerer::buildSimdBarrier(v6, &v43);
  if (v44)
  {
    llvm::MetadataTracking::untrack();
  }

  v15 = 0;
  v16 = *a1[2];
  if (v16 > 2)
  {
    switch(v16)
    {
      case 3:
        v47 = 257;
        Xor = llvm::IRBuilderBase::CreateXor(v6 + 1, v7, a3, v46);
LABEL_27:
        v15 = Xor;
        goto LABEL_28;
      case 4:
        v28 = *(v6 + 25);
        v47 = 257;
        v29 = llvm::IRBuilderBase::CreateCast(v6 + 8, 40, v7, v28, v46);
        v30 = *(v6 + 25);
        v42 = 257;
        v31 = llvm::IRBuilderBase::CreateCast(v6 + 8, 40, a3, v30, v41);
        v40 = 257;
        Sub = llvm::IRBuilderBase::CreateSub((v6 + 8), v29, v31, v39);
        v32 = **a1;
        v33 = *(v6 + 25);
        v24 = llvm::ConstantInt::get();
        v38 = 257;
        v25 = (v6 + 8);
        v26 = &v37;
        break;
      case 5:
        v47 = 257;
        Sub = llvm::IRBuilderBase::CreateAdd((v6 + 8), v7, a3, v46);
        v22 = *(v6 + 24);
        v23 = **a1 - 1;
        v24 = llvm::ConstantInt::get();
        v42 = 257;
        v25 = (v6 + 8);
        v26 = v41;
        break;
      default:
        goto LABEL_28;
    }

    Xor = llvm::IRBuilderBase::CreateAnd(v25, Sub, v24, v26);
    goto LABEL_27;
  }

  if (v16)
  {
    if (v16 == 1)
    {
      v47 = 257;
      llvm::IRBuilderBase::CreateICmp(v6 + 1, 36, v7, a3, v46);
      v42 = 257;
      llvm::IRBuilderBase::CreateSub((v6 + 8), v7, a3, v41);
      v40 = 257;
      goto LABEL_24;
    }

    if (v16 == 2)
    {
      v47 = 257;
      Add = llvm::IRBuilderBase::CreateAdd((v6 + 8), v7, a3, v46);
      v18 = *(v6 + 24);
      v19 = **a1 - 1;
      v20 = llvm::ConstantInt::get();
      v47 = 257;
      llvm::IRBuilderBase::CreateICmp(v6 + 1, 34, Add, v20, v46);
      v42 = 257;
LABEL_24:
      Xor = llvm::IRBuilderBase::CreateSelect();
      goto LABEL_27;
    }
  }

  else
  {
    v15 = a3;
  }

LABEL_28:
  v34 = *a2;
  v47 = 257;
  v35 = llvm::IRBuilderBase::CreateGEP((v6 + 8), v34, Cast, v15, v46);
  v47 = 257;
  return AGCLLVMBuilder::CreateLoad(v6, v35, v46);
}

uint64_t AGCLLVMGen3TargetLowerer::buildQuadElement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v18 = v20;
  v19 = xmmword_20E70C510;
  llvm::SmallVectorImpl<char>::append<char const*,void>(&v18, "llvm.agx2.quad.element", "");
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

  v6 = *(a1 + 200);
  inserted = AGCLLVMBuilder::getOrInsertFunction<>(a1);
  v14 = 257;
  v8 = llvm::IRBuilderBase::CreateCall(a1 + 8, *(inserted + 24), inserted, 0, 0, v13);
  v12[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a1 + 8, 38, v8, a3, v12);
  if (v18 != v20)
  {
    free(v18);
  }

  v10 = *MEMORY[0x277D85DE8];
  return Cast;
}