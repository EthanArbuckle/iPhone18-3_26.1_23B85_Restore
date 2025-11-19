uint64_t mlir::anonymous namespace::ConvertFusionOp::convertFusionOpToQuantizedConv(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v28[0] = &v29;
  __p = v28;
  mlir::detail::walk<mlir::ForwardIterator>(a1, _ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_12_GLOBAL__N_115ConvertFusionOp30convertFusionOpToQuantizedConvENS1_4mpsx8FusionOpENSD_15FusionOpAdaptorERNS1_25ConversionPatternRewriterEE3__0NS1_3mps8Conv2DOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESS_E4typeES3_OT1_EUlS3_E_EEvlS3_, &__p, 1);
  if (!v29)
  {
    return 0;
  }

  __p = *(*(v29 + 72) + 56);
  DefiningOp = mlir::Value::getDefiningOp(&__p);
  if (DefiningOp)
  {
    v7 = DefiningOp;
    v8 = *(DefiningOp + 72);
    v9 = (*(v8[3] + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v9)
    {
      v10 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
      v8 = *(v7 + 72);
    }

    else
    {
      v10 = 0;
    }

    v28[0] = v9;
    v28[1] = v10;
    v12 = (*(v8[7] + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v12)
    {
      v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
      v8 = *(v7 + 72);
    }

    else
    {
      v13 = 0;
    }

    v14 = (*(v8[11] + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v14)
    {
      v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
    }

    else
    {
      v15 = 0;
    }

    __p = mlir::ElementsAttr::isSplat(v28);
    if (mlir::Type::isInteger(&__p, 8) || (v27[0] = mlir::ElementsAttr::isSplat(v28), mlir::Type::isInteger(v27, 4)))
    {
      v27[0] = v28;
      v27[1] = &v29;
      {
        {
          v30 = *(a2 + 40);
          v16 = mlir::ValueRange::dereference_iterator(&v30, 0);
          v17 = *(*(v29 + 72) + 56);
          v31[0] = v16;
          v31[1] = v17;
          mlir::ValueRange::ValueRange(&__p, v31, 2uLL);
          result = 0;
          if (v19)
          {
            mlir::ConversionPatternRewriter::replaceOp(a3, a1, v18);
            v21 = *(((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + 8);
            if (v21)
            {
              v22 = v21 - 8;
            }

            else
            {
              v22 = 0;
            }

            v23 = v22 + 32;
            v24 = *(v22 + 40);
            if (v24 != v22 + 32)
            {
              do
              {
                v25 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v24, v20);
                mlir::ConversionPatternRewriter::eraseOp(a3, v25);
                v24 = *(v24 + 8);
              }

              while (v24 != v23);
            }

            return 1;
          }

          return result;
        }

        __p = operator new(0x38uLL);
        v33 = xmmword_1E09829A0;
        strcpy(__p, "failed: only scalar or per-cout zero-point is supported");
      }

      else
      {
        __p = operator new(0x38uLL);
        v33 = xmmword_1E09828F0;
        strcpy(__p, "failed: only scalar or per-cout scale is supported");
      }
    }

    else
    {
      __p = operator new(0x38uLL);
      v33 = xmmword_1E0982760;
      strcpy(__p, "failed: quantized weight must be si8, ui8, si4, ui4");
    }
  }

  else
  {
    __p = operator new(0x38uLL);
    v33 = xmmword_1E0982830;
    strcpy(__p, "failed: can not find dequant op in quantized conv");
  }

  result = mlir::logMatchFailure(&__p, *(a1 + 24), a3);
  if (SHIBYTE(v33) < 0)
  {
    v26 = result;
    operator delete(__p);
    return v26;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertConv<mlir::mps::Conv2DOp,mlir::anec::Convolution>::convert2D(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, char a5)
{
  v239 = *MEMORY[0x1E69E9840];
  v197 = a1;
  v235[0] = a2;
  v235[1] = a3;
  v196 = 0;
  v181 = *(a1 + 24);
  v8 = mlir::ValueRange::dereference_iterator(v235, 0);
  v195 = v8;
  v194 = mlir::ValueRange::dereference_iterator(v235, 1);
  if (*(a1 + 36))
  {
    v9 = a1 - 16;
  }

  else
  {
    v9 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  v11 = (*(v8 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v11)
  {
    v12 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  v193[0] = v11;
  v193[1] = v12;
  if ((*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v193);
  v15 = v14;
  v16 = (*(v194 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v16)
  {
    v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  v191 = v16;
  v192 = v17;
  *v215 = v197;
  Groups = mlir::mps::Conv3DOp::getGroups(v215);
  v18 = mlir::CallableOpInterface::getArgAttrsAttr(&v191);
  v19 = mlir::CallableOpInterface::getArgAttrsAttr(&v191);
  v21 = (v19 + 8 * v20);
  v232 = v234;
  v233 = 0x400000000;
  v22 = (v21 - v18) >> 3;
  if (v22 < 5)
  {
    v23 = 0;
    if (v21 == v18)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v232, v234, v22, 8);
  v23 = v233;
  if (v21 != v18)
  {
LABEL_16:
    memcpy(&v232[8 * v23], v18, v21 - v18);
    v23 = v233;
  }

LABEL_17:
  LODWORD(v233) = v23 + ((v21 - v18) >> 3);
  v229 = v231;
  v230 = 0x400000000;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v197);
  if (InputAttributeNames)
  {
    v25 = InputAttributeNames;
    v26 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*InputAttributeNames + 8);
    InputAttributeNames = v25;
  }

  else
  {
    v26 = 0;
  }

  mlir::getIntValues<unsigned long long>(InputAttributeNames, v26, &v229, 1);
  if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v197))
  {
    *v215 = operator new(0x30uLL);
    *&v215[8] = xmmword_1E09829C0;
    strcpy(*v215, "Only dataLayout NCHW is supported for Conv2D");
LABEL_22:
    mlir::logMatchFailure(v215, *(v197 + 24), a4);
    if ((v215[23] & 0x80000000) == 0)
    {
LABEL_25:
      v28 = 0;
      goto LABEL_26;
    }

    v27 = *v215;
LABEL_24:
    operator delete(v27);
    goto LABEL_25;
  }

  if (mlir::mps::Conv3DOp::getWeightsLayout(&v197) != 2 && mlir::mps::Conv3DOp::getWeightsLayout(&v197) != 3)
  {
    *v215 = operator new(0x28uLL);
    *&v215[8] = xmmword_1E09826C0;
    strcpy(*v215, "Unsupported weightsLayout for Conv2D");
    goto LABEL_22;
  }

  v189 = 0uLL;
  v187 = 0;
  v188 = 0;
  v185 = 0;
  v186 = 0;
  v183 = 0;
  v184 = 0;
  v30 = *(*(v197 + 72) + 56);
  *v215 = &v189;
  *&v215[8] = &v187;
  *&v215[16] = &v185;
  *&v215[24] = &v183;
  v211 = v30;
  DefiningOp = mlir::Value::getDefiningOp(&v211);
  v177 = (DefiningOp && (v220 = DefiningOp, *(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id) && (*(DefiningOp + 46) & 0x80) != 0 && *(DefiningOp + 68) == 4 && (LOBYTE(v226) = 1, __dst = &v226, v224 = &v220, mlir::detail::enumerateImpl<std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> &,mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeOp,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> & &)#1},0ul,1ul,2ul,3ul>(v215, &__dst), (v226 & 1) != 0) || (v32 = *(*(v197 + 72) + 56), v224 = &v187, v225[0] = &v185, v225[1] = &v183, v226 = v32, (v33 = mlir::Value::getDefiningOp(&v226)) != 0) && (v211 = v33, *(*(v33 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id) && (*(v33 + 46) & 0x80) != 0 && *(v33 + 68) == 4 && (LOBYTE(v201) = 1, v220 = &v201, v221 = &v211, mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> &,mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeOp,mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> & &)#1},0ul,1ul,2ul,3ul>(&__dst, &v220), v201 == 1)) && mlir::ElementsAttr::getNumElements(v183, v184) == 1 && (mlir::getSingleFloatValue<float>(v183, v184) & 0x7FFFFFFF) == 0;
  if (v189)
  {
    v34 = a5;
  }

  else
  {
    v34 = 1;
  }

  if (v34)
  {
    v173 = 0;
    v174 = 0;
  }

  else
  {
    v174 = mlir::convertElementsAttr(v187, v188, 1);
    *v215 = mlir::getElementTypeOrSelf(v185);
    isSignedInteger = mlir::Type::isSignedInteger(v215);
    IntegerType = mlir::Builder::getIntegerType(a4 + 1, 8, isSignedInteger);
    __dst = mlir::CallOpInterface::getArgOperands(&v185);
    v224 = v37;
    v215[0] = 0;
    v215[16] = 0;
    v38 = mlir::ShapedType::cloneWith(&__dst, v215, IntegerType);
    v173 = mlir::rewriteElementsAttr(v185, v186, v38, v39, 1);
  }

  v209 = 0;
  v210 = 0;
  v207 = 0;
  v208 = 0;
  v211 = &v208;
  v212 = &v207;
  v213[0] = 0;
  __dst = &v211;
  v224 = &v209;
  LOBYTE(v225[0]) = 0;
  LOBYTE(v225[1]) = 0;
  v226 = &v210;
  p_dst = &__dst;
  v228[0] = 0;
  if (*(v197 + 36))
  {
    v40 = v197 - 16;
  }

  else
  {
    v40 = 0;
  }

  *v215 = mlir::detail::OpResultImpl::getNextResultAtOffset(v40, 0);
  v41 = mlir::Value::getDefiningOp(v215);
  if (v41 && mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>::match(&v226, v41))
  {
    v87 = v208;
    *&v237 = v208;
    v200[0] = v207;
    AsAttribute = mlir::mps::ConstantOp::getAsAttribute(v200);
    v172 = mlir::convertElementsAttr(AsAttribute, v89, 1);
    if (*(v87 + 36))
    {
      v90 = v87 - 16;
    }

    else
    {
      v90 = 0;
    }

    v91 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v90, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v180 = a4;
    if (v91)
    {
      v92 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v91 + 8);
    }

    else
    {
      v92 = 0;
    }

    v191 = v91;
    v192 = v92;
    v120 = mlir::CallableOpInterface::getArgAttrsAttr(&v191);
    v121 = mlir::CallableOpInterface::getArgAttrsAttr(&v191);
    v123 = (v121 + 8 * v122);
    *v215 = &v215[16];
    *&v215[8] = 0x400000000;
    v124 = (v123 - v120) >> 3;
    if (v124 < 5)
    {
      v125 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v215, &v215[16], v124, 8);
      v125 = *&v215[8];
    }

    if (v123 != v120)
    {
      memcpy((*v215 + 8 * v125), v120, v123 - v120);
      v125 = *&v215[8];
    }

    *&v215[8] = v125 + ((v123 - v120) >> 3);
    llvm::SmallVectorImpl<unsigned long long>::operator=(&v232, v215);
    if (*v215 != &v215[16])
    {
      free(*v215);
    }

    v126 = (*(v200[0] - 1) & 0xFFFFFFFFFFFFFFF8);
    if (v126)
    {
      v127 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v126 + 8);
    }

    else
    {
      v127 = 0;
    }

    *v215 = v126;
    *&v215[8] = v127;
    v176 = mlir::CallableOpInterface::getArgAttrsAttr(v215);
    v102 = v128;
    v129 = *(v197 + 24);
    v130 = v232;
    v131 = v233;
    v220 = mlir::mps::ConstantOp::getAsAttribute(&v237);
    v221 = v132;
    *v215 = mlir::CallOpInterface::getArgOperands(&v220);
    *&v215[8] = v133;
    isSplat = mlir::ElementsAttr::isSplat(v215);
    *&v199 = mlir::MemRefType::get(v130, v131, isSplat, 0, 0, 0);
    *&v201 = mlir::mps::ConstantOp::getAsAttribute(&v237);
    *(&v201 + 1) = v135;
    a4 = v180;
    v136 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((v180 + 1), v129, &v199, &v201);
    if (*(v136 + 36))
    {
      v137 = v136 - 16;
    }

    else
    {
      v137 = 0;
    }

    DictionaryAttr = 0;
    v194 = mlir::detail::OpResultImpl::getNextResultAtOffset(v137, 0);
  }

  else
  {
    v205 = 0;
    v206 = 0;
    v203 = 0;
    v204 = 0;
    *&v201 = &v204;
    *(&v201 + 1) = &v203;
    v202 = 0;
    *&v237 = &v205;
    *(&v237 + 1) = &v201;
    v238 = 0;
    v220 = &v237;
    v221 = &v206;
    v222[0] = 0;
    v222[8] = 0;
    if (*(v197 + 36))
    {
      v42 = v197 - 16;
    }

    else
    {
      v42 = 0;
    }

    *&v199 = mlir::detail::OpResultImpl::getNextResultAtOffset(v42, 0);
    v43 = mlir::Value::getDefiningOp(&v199);
    if (!v43 || (v200[0] = v43, *(*(v43 + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id) || (*(v43 + 46) & 0x80) == 0 || *(v43 + 68) != 2 || (*v215 = &v198, *&v215[8] = v200, LOBYTE(v198) = 1, mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>::match(mlir::Operation *)::{lambda(unsigned long,mlir::mps::Conv2DOp *)#1}::operator()<mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>(v215, 1u, &v220), (v198 & 1) == 0))
    {
      DictionaryAttr = 0;
      v172 = 0;
      v175 = 0;
      goto LABEL_70;
    }

    v169 = v205;
    v171 = v204;
    if (*(v205 + 36))
    {
      v44 = v205 - 16;
    }

    else
    {
      v44 = 0;
    }

    v45 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v44, 0) + 8) & 0xFFFFFFFFFFFFFFF8);
    v179 = a4;
    if (v45)
    {
      v46 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v45 + 8);
    }

    else
    {
      v46 = 0;
    }

    v191 = v45;
    v192 = v46;
    v93 = mlir::CallableOpInterface::getArgAttrsAttr(&v191);
    v94 = mlir::CallableOpInterface::getArgAttrsAttr(&v191);
    v96 = (v94 + 8 * v95);
    *v215 = &v215[16];
    *&v215[8] = 0x400000000;
    v97 = (v96 - v93) >> 3;
    if (v97 < 5)
    {
      v98 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v215, &v215[16], v97, 8);
      v98 = *&v215[8];
    }

    if (v96 != v93)
    {
      memcpy((*v215 + 8 * v98), v93, v96 - v93);
      v98 = *&v215[8];
    }

    *&v215[8] = v98 + ((v96 - v93) >> 3);
    llvm::SmallVectorImpl<unsigned long long>::operator=(&v232, v215);
    if (*v215 != &v215[16])
    {
      free(*v215);
    }

    v99 = (*(v202 - 8) & 0xFFFFFFFFFFFFFFF8);
    if (v99)
    {
      v100 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v99 + 8);
    }

    else
    {
      v100 = 0;
    }

    v200[0] = v99;
    v200[1] = v100;
    v176 = mlir::CallableOpInterface::getArgAttrsAttr(v200);
    v102 = v101;
    v103 = *(v197 + 24);
    v104 = v232;
    v105 = v233;
    v106 = mlir::ElementsAttr::isSplat(&v191);
    *v215 = mlir::MemRefType::get(v104, v105, v106, 0, 0, 0);
    v107 = (v169 + 16 * ((*(v169 + 44) >> 23) & 1));
    *&v199 = v107[8];
    *&v198 = v107[10];
    F16FloatAttr = v107[9];
    a4 = v179;
    v108 = mlir::OpBuilder::create<mlir::mps::ReadDataFromFileOp,mlir::MemRefType &,mlir::StringAttr &,mlir::IntegerAttr &,mlir::StringAttr &>((v179 + 1), v103, v215, &v199, &v198, &F16FloatAttr);
    if (*(v108 + 36))
    {
      v109 = v108 - 16;
    }

    else
    {
      v109 = 0;
    }

    v194 = mlir::detail::OpResultImpl::getNextResultAtOffset(v109, 0);
    *v215 = "offset";
    LOWORD(v216) = 259;
    StringAttr = mlir::Builder::getStringAttr(v179 + 1, v215);
    mlir::NamedAttribute::NamedAttribute(&v199, StringAttr, *(v171 + 16 * ((*(v171 + 44) >> 23) & 1) + 80));
    *v215 = "type";
    LOWORD(v216) = 259;
    v111 = mlir::Builder::getStringAttr(v179 + 1, v215);
    v112 = mlir::TypeAttr::get(v200[0]);
    mlir::NamedAttribute::NamedAttribute(&v198, v111, v112);
    *v215 = v199;
    *&v215[16] = v198;
    DictionaryAttr = mlir::Builder::getDictionaryAttr(v179 + 1, v215, 2);
    v172 = 0;
  }

  if (v102 < 2)
  {
    v138 = 1;
  }

  else
  {
    v138 = *v176;
  }

  v139 = v102 - 1;
  if (v102 == 6)
  {
    v139 = 4;
  }

  if (v139 >= 2)
  {
    v140 = v139 - 1;
    v141 = v176 + 1;
    while (1)
    {
      v142 = *v141++;
      if (v142 >= 2)
      {
        break;
      }

      if (!--v140)
      {
        goto LABEL_195;
      }
    }

    *v215 = operator new(0x20uLL);
    *&v215[8] = xmmword_1E09828D0;
    strcpy(*v215, "Only per-cout LUT is supported!");
    goto LABEL_22;
  }

LABEL_195:
  if (v138 >= 2 && *v232 % v138)
  {
    *v215 = operator new(0x38uLL);
    *&v215[8] = xmmword_1E0982760;
    strcpy(*v215, "Per-cout LUT dim must be divisible by cout LUT dim!");
    goto LABEL_22;
  }

  *v215 = mlir::ElementsAttr::isSplat(&v191);
  IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(v215);
  if (IntOrFloatBitWidth > 8 || (v175 = 1, ((1 << IntOrFloatBitWidth) & 0x154) == 0))
  {
    *v215 = operator new(0x50uLL);
    *&v215[8] = xmmword_1E09829D0;
    strcpy(*v215, "Only 2-bit, 4-bit, 6-bit and 8-bit palettization for conv are supported!");
    goto LABEL_22;
  }

LABEL_70:
  v170 = DictionaryAttr;
  v201 = 0uLL;
  __dst = &v201;
  *v215 = v194;
  v48 = mlir::Value::getDefiningOp(v215);
  if (v48)
  {
    v49 = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&__dst, v48);
  }

  else
  {
    v49 = 0;
  }

  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v197);
  v182 = 0;
  v200[0] = 0;
  if ((v49 & 1) == 0)
  {
    v51 = v177;
    if (v200[0])
    {
      v51 = 1;
    }

    if ((v51 & 1) == 0)
    {
      *v215 = *(*(v197 + 48) + 8);
      AttrData = mlir::OpaqueAttr::getAttrData(v215);
      if (!AttrData)
      {
        __dst = 0;
        v224 = 0;
        v225[0] = 0;
LABEL_127:
        v83 = std::string::insert(&__dst, 0, "Invalid weight operand type of ");
        v84 = v83->__r_.__value_.__r.__words[2];
        *v215 = *&v83->__r_.__value_.__l.__data_;
        *&v215[16] = v84;
        v83->__r_.__value_.__l.__size_ = 0;
        v83->__r_.__value_.__r.__words[2] = 0;
        v83->__r_.__value_.__r.__words[0] = 0;
        mlir::logMatchFailure(v215, *(v197 + 24), a4);
        if ((v215[23] & 0x80000000) != 0)
        {
          operator delete(*v215);
        }

        if ((SHIBYTE(v225[0]) & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        v27 = __dst;
        goto LABEL_24;
      }

      v60 = v59;
      if (v59 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v61 = AttrData;
      if (v59 >= 0x17)
      {
        if ((v59 | 7) == 0x17)
        {
          v82 = 25;
        }

        else
        {
          v82 = (v59 | 7) + 1;
        }

        v62 = operator new(v82);
        v224 = v60;
        v225[0] = v82 | 0x8000000000000000;
        __dst = v62;
      }

      else
      {
        HIBYTE(v225[0]) = v59;
        v62 = &__dst;
        if (!v59)
        {
          goto LABEL_126;
        }
      }

      memmove(v62, v61, v60);
LABEL_126:
      *(v62 + v60) = 0;
      goto LABEL_127;
    }
  }

  if ((v34 & 1) == 0)
  {
    v201 = v189;
    v52 = v232;
    v53 = v233;
    *v215 = mlir::CallOpInterface::getArgOperands(&v201);
    *&v215[8] = v54;
    v55 = mlir::ElementsAttr::isSplat(v215);
    __dst = mlir::MemRefType::get(v52, v53, v55, 0, 0, 0);
    v194 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::ShapedType &,mlir::ElementsAttr &>((a4 + 1), v181, &__dst, &v201) - 16;
  }

  if (WeightsLayout == 3)
  {
    if (v182 == 1)
    {
      v56 = v200[0];
      if (!v200[0])
      {
        std::string::basic_string[abi:nn200100]<0>(v215, "Cannot get the filter definition op");
        goto LABEL_22;
      }

      if (*(*(mlir::Value::getDefiningOp(&v194) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id)
      {
        v57 = mlir::Value::getDefiningOp(&v194);
        mlir::ConversionPatternRewriter::eraseOp(a4, v57);
      }

      v194 = v56 - 16;
    }

    else if ((v175 & 1) == 0)
    {
      Loc = mlir::Value::getLoc(&v194);
      *v215 = xmmword_1E09829E0;
      *&v215[16] = xmmword_1E09829F0;
      v216 = xmmword_1E0982A00;
      v217 = xmmword_1E0982A10;
      std::vector<std::pair<unsigned long long,unsigned long long>>::vector[abi:nn200100](&__dst, v215, 4uLL);
      v194 = mlir::OpBuilder::createOrFold<mlir::anec::Transpose,mlir::Value &,std::vector<std::pair<unsigned long long,unsigned long long>>>((a4 + 1), Loc, &v194, &__dst);
      if (__dst)
      {
        v224 = __dst;
        operator delete(__dst);
      }
    }

    v64 = (*(v194 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v64)
    {
      v65 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v64 + 8);
    }

    else
    {
      v65 = 0;
    }

    v191 = v64;
    v192 = v65;
    v66 = mlir::CallableOpInterface::getArgAttrsAttr(&v191);
    v67 = mlir::CallableOpInterface::getArgAttrsAttr(&v191);
    v69 = (v67 + 8 * v68);
    *v215 = &v215[16];
    *&v215[8] = 0x400000000;
    v70 = (v69 - v66) >> 3;
    if (v70 < 5)
    {
      v71 = 0;
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(v215, &v215[16], v70, 8);
      v71 = *&v215[8];
    }

    if (v69 != v66)
    {
      memcpy((*v215 + 8 * v71), v66, v69 - v66);
      v71 = *&v215[8];
    }

    *&v215[8] = v71 + ((v69 - v66) >> 3);
    llvm::SmallVectorImpl<unsigned long long>::operator=(&v232, v215);
    if (*v215 != &v215[16])
    {
      free(*v215);
    }
  }

  *v215 = 3;
  v72 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v73 = mlir::RankedTensorType::get(v215, 1, v72, 0);
  *v215 = 6;
  v74 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
  v75 = mlir::RankedTensorType::get(v215, 1, v74, 0);
  v226 = v228;
  p_dst = 0x200000000;
  Strides = mlir::mps::Conv3DOp::getStrides(&v197);
  if (Strides)
  {
    v77 = Strides;
    v78 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Strides + 8);
    Strides = v77;
  }

  else
  {
    v78 = 0;
  }

  mlir::getIntValues<unsigned long long>(Strides, v78, &v226, 1);
  v79 = v226;
  if (*v226 == 1 && v226[1] == 1)
  {
    v80 = 8 * p_dst - 16;
    if (p_dst != 2)
    {
      memmove(v226, v226 + 2, 8 * p_dst - 16);
    }

    LODWORD(p_dst) = (v79 + v80 - v226) >> 3;
    *v215 = 1;
    llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v226, v226, v215);
    if (v73)
    {
      v81 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v73 + 8);
    }

    else
    {
      v81 = 0;
    }

    *&v199 = mlir::DenseElementsAttr::getFromRawBuffer(v73, v81, v226, 8 * p_dst, 8, 1, 0);
    v85 = v229;
    if (*v229 == 1 && *(v229 + 1) == 1)
    {
      v86 = 8 * v230 - 16;
      if (v230 != 2)
      {
        memmove(v229, v229 + 16, 8 * v230 - 16);
      }

      LODWORD(v230) = (&v85[v86] - v229) >> 3;
      *v215 = 1;
      llvm::SmallVectorImpl<long long>::insert_one_impl<long long>(&v229, v229, v215);
      if (v73)
      {
        v113 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v73 + 8);
      }

      else
      {
        v113 = 0;
      }

      *&v198 = mlir::DenseElementsAttr::getFromRawBuffer(v73, v113, v229, 8 * v230, 8, 1, 0);
      v178 = (*(v232 + 2) - 1) * *(v229 + 1) + 1;
      v114 = (*(v232 + 3) - 1) * *(v229 + 2) + 1;
      v209 = 0;
      v210 = 0;
      v207 = 0;
      v208 = 0;
      Rewriter = mlir::pdl_interp::RecordMatchOp::getRewriter(&v197);
      v116 = Rewriter;
      if (Rewriter)
      {
        v117 = mlir::detail::InterfaceMap::lookup<mlir::ElementsAttr>(*Rewriter + 8);
      }

      else
      {
        v117 = 0;
      }

      PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v197);
      {
        __dst = v225;
        memset(v225, 0, sizeof(v225));
        v224 = 0x600000006;
        v220 = v222;
        memset(v222, 0, sizeof(v222));
        v221 = 0x600000006;
        if (v75)
        {
          v119 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v75 + 8);
        }

        else
        {
          v119 = 0;
        }

        v211 = v75;
        v212 = v119;
        *v215 = 0;
        *&v215[8] = 0;
        *&v215[16] = v210;
        *&v215[24] = v209;
        *&v216 = v208;
        *(&v216 + 1) = v207;
        *&v237 = v215;
        *(&v237 + 1) = 6;
        v144 = mlir::DenseIntElementsAttr::get<unsigned long long>(&v211, &v237);
        v205 = 0;
        v206 = v144;
        v145 = *(v197 + 24);
        *v215 = v174;
        v211 = v173;
        v147 = v170;
        v146 = v172;
        if (!v175)
        {
          v146 = 0;
          v147 = 0;
        }

        *&v237 = v146;
        v203 = v147;
        v204 = mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,unsigned long long &,BOOL const&,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr,mlir::DictionaryAttr>(a4 + 1, v145, &v195, &v194, &v199, &v198, &v206, &v205, &Groups, &v196, v215, &v211, &v237, &v203) - 16;
        if (v221)
        {
          v148 = v220;
          v149 = 8 * v221;
          v150 = v220;
          while (*v150 < 1)
          {
            ++v150;
            v149 -= 8;
            if (!v149)
            {
              goto LABEL_220;
            }
          }

          *v215 = &v215[16];
          *&v215[16] = 0u;
          v216 = 0u;
          v217 = 0u;
          v218 = 0u;
          v219 = 0u;
          *&v215[8] = 0xA0000000ALL;
          v211 = v213;
          memset_pattern16(v213, &unk_1E0982A60, 0x28uLL);
          v212 = 0x500000005;
          v214 = vdupq_n_s64(6uLL);
          v218 = v148[1];
          v219 = v148[2];
          v237 = xmmword_1E0982930;
          v151 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
          v152 = mlir::RankedTensorType::get(&v237, 2, v151, 0);
          if (v152)
          {
            v153 = v152;
            v154 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v152 + 8);
            v152 = v153;
          }

          else
          {
            v154 = 0;
          }

          v203 = mlir::DenseElementsAttr::getFromRawBuffer(v152, v154, *v215, 8 * *&v215[8], 8, 1, 0);
          F16FloatAttr = 5;
          v155 = mlir::Builder::getIntegerType(a4 + 1, 64, 0);
          v156 = mlir::RankedTensorType::get(&F16FloatAttr, 1, v155, 0);
          if (v156)
          {
            v157 = v156;
            v158 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v156 + 8);
            v156 = v157;
          }

          else
          {
            v158 = 0;
          }

          *&v237 = mlir::DenseElementsAttr::getFromRawBuffer(v156, v158, v211, 8 * v212, 8, 1, 0);
          F16FloatAttr = mlir::Builder::getF16FloatAttr(a4 + 1, 0.0, v159);
          v204 = mlir::OpBuilder::create<mlir::anec::Padding,mlir::Value const&,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::FloatAttr &>(a4 + 1, v181, &v204, &v237, &v203, &F16FloatAttr) - 16;
          if (v211 != v213)
          {
            free(v211);
          }

          if (*v215 != &v215[16])
          {
            free(*v215);
          }
        }

LABEL_220:
        v160 = __dst;
        if (__dst[2] || __dst[3])
        {
          v161 = (*(v204 + 8) & 0xFFFFFFFFFFFFFFF8);
          if (v161)
          {
            v162 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v161 + 8);
          }

          else
          {
            v162 = 0;
          }

          *v215 = v161;
          *&v215[8] = v162;
          v163 = *(mlir::CallableOpInterface::getArgAttrsAttr(v215) + 16);
          LODWORD(v237) = 2;
          v164 = __dst[3];
          *v215 = __dst[2];
          v211 = (v163 - (v164 + *v215));
          v204 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,int,unsigned long long,unsigned long long>(a4 + 1, v181, &v204, &v237, v215, &v211) - 16;
          v160 = __dst;
        }

        if (v160[4] || v160[5])
        {
          v165 = (*(v204 + 8) & 0xFFFFFFFFFFFFFFF8);
          if (v165)
          {
            v166 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v165 + 8);
          }

          else
          {
            v166 = 0;
          }

          *v215 = v165;
          *&v215[8] = v166;
          v167 = *(mlir::CallableOpInterface::getArgAttrsAttr(v215) + 24);
          LODWORD(v237) = 3;
          v168 = __dst[5];
          *v215 = __dst[4];
          v211 = (v167 - (v168 + *v215));
          v204 = mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,int,unsigned long long,unsigned long long>(a4 + 1, v181, &v204, &v237, v215, &v211) - 16;
        }

        v28 = mlir::Value::getDefiningOp(&v204);
        if (v220 != v222)
        {
          free(v220);
        }

        if (__dst != v225)
        {
          free(__dst);
        }

        goto LABEL_115;
      }

      std::string::basic_string[abi:nn200100]<0>(v215, "Unsupported padding values for Conv2D");
      mlir::logMatchFailure(v215, *(v197 + 24), a4);
      if ((v215[23] & 0x80000000) != 0)
      {
        goto LABEL_113;
      }

      goto LABEL_114;
    }

    *v215 = operator new(0x38uLL);
    *&v215[8] = xmmword_1E0982900;
    strcpy(*v215, "Conv dilation must be 1 for batch / channel axis");
  }

  else
  {
    *v215 = operator new(0x30uLL);
    *&v215[8] = xmmword_1E09828C0;
    strcpy(*v215, "Conv stride must be 1 for batch / channel axis\n");
  }

  mlir::logMatchFailure(v215, *(v197 + 24), a4);
  if ((v215[23] & 0x80000000) != 0)
  {
LABEL_113:
    operator delete(*v215);
  }

LABEL_114:
  v28 = 0;
LABEL_115:
  if (v226 != v228)
  {
    free(v226);
  }

LABEL_26:
  if (v229 != v231)
  {
    free(v229);
  }

  if (v232 != v234)
  {
    free(v232);
  }

  return v28;
}

mlir::Operation *mlir::anonymous namespace::getWeightFileProducerAndLayout(uint64_t a1, _BYTE *a2, mlir::Operation **a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v23 = a1;
  result = mlir::Value::getDefiningOp(&v23);
  if (result)
  {
    v6 = *(*(result + 6) + 16);
    if (v6 == &mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id)
    {
      v7 = result;
      v24[0] = mlir::Operation::getAttrDictionary(result);
      Value = mlir::ArrayAttr::getValue(v24);
      v24[0] = mlir::Operation::getAttrDictionary(v7);
      v9 = mlir::ArrayAttr::getValue(v24);
      v11 = v7;
      v25 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v9 + 16 * v10), **(*(v7 + 6) + 96));
      v24[0] = mlir::ArrayAttr::getValue(&v25);
      v24[1] = v12;
      result = mlir::CallableOpInterface::getArgAttrsAttr(v24);
      v26 = xmmword_1E097BBD0;
      if (v13 == 2 && *result == v26 && *(result + 1) == *(&v26 + 1))
      {
        mlir::DenseElementsAttr::isValidIntOrFloat(&v25, 8, 1, 0);
        RawStringData = mlir::DenseElementsAttr::getRawStringData(&v25);
        isSplat = mlir::DenseElementsAttr::isSplat(&v25);
        mlir::ArrayAttr::getValue(&v25);
        result = mlir::DenseElementsAttr::getNumElements(&v25);
        if (*RawStringData == 2 && !RawStringData[isSplat ^ 1u])
        {
          v17 = 2;
          if (isSplat)
          {
            v17 = 0;
          }

          if (RawStringData[v17] == 3)
          {
            v18 = 3;
            if (isSplat)
            {
              v18 = 0;
            }

            if (RawStringData[v18] == 1)
            {
              v19 = 4;
              if (isSplat)
              {
                v19 = 0;
              }

              if (RawStringData[v19] == 1)
              {
                v20 = 5;
                if (isSplat)
                {
                  v20 = 0;
                }

                if (RawStringData[v20] == 2)
                {
                  v21 = 6;
                  if (isSplat)
                  {
                    v21 = 0;
                  }

                  if (!RawStringData[v21])
                  {
                    v22 = 7;
                    if (isSplat)
                    {
                      v22 = 0;
                    }

                    if (RawStringData[v22] == 3)
                    {
                      v24[0] = *(*(v11 + 9) + 24);
                      result = mlir::Value::getDefiningOp(v24);
                      if (result)
                      {
                        if (*(*(result + 6) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
                        {
                          *a2 = 1;
                          goto LABEL_4;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else if (v6 == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id)
    {
LABEL_4:
      *a3 = result;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::createOrFold<mlir::anec::Transpose,mlir::Value &,std::vector<std::pair<unsigned long long,unsigned long long>>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6[0] = v7;
  v6[1] = 0x100000000;
  mlir::OpBuilder::createOrFold<mlir::anec::Transpose,mlir::Value &,std::vector<std::pair<unsigned long long,unsigned long long>>>(a1, v6, a2, a3, a4);
  v4 = *v6[0];
  if (v6[0] != v7)
  {
    free(v6[0]);
  }

  return v4;
}

void *std::vector<std::pair<unsigned long long,unsigned long long>>::vector[abi:nn200100](void *a1, char *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (a3 >> 60)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v4 = 16 * a3;
    v5 = &a2[16 * a3];
    v7 = operator new(16 * a3);
    *a1 = v7;
    a1[1] = v7;
    a1[2] = &v7[v4];
    memcpy(v7, a2, (v5 - a2) & 0xFFFFFFFFFFFFFFF0);
    a1[1] = &v7[(v5 - a2) & 0xFFFFFFFFFFFFFFF0];
  }

  return a1;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,unsigned long long &,BOOL const&,mlir::DenseFPElementsAttr,mlir::DenseIntElementsAttr,mlir::DenseElementsAttr,mlir::DictionaryAttr>(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, char *a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a2;
  Context = mlir::Attribute::getContext(&v28);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id, Context);
  if ((v24 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Convolution,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::anec::PaddingMode &,int,BOOL,decltype(nullptr),decltype(nullptr),decltype(nullptr),decltype(nullptr)>(v31, v30, v29);
  }

  mlir::OperationState::OperationState(v31, a2, v23);
  mlir::anec::Convolution::build(a1, v31, *a3, *a4, *a5, *a6, *a7, *a8, *a9, *a10, *a11, *a12, *a13, *a14);
  v25 = mlir::OpBuilder::create(a1, v31);
  if (*(*(v25 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Convolution,void>::id)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  mlir::OperationState::~OperationState(v31);
  return v26;
}

uint64_t mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,int,unsigned long long,unsigned long long>(uint64_t **a1, uint64_t a2, uint64_t *a3, int *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::InputView,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::InputView,mlir::Value &,unsigned long long &,int,int>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::anec::InputView::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::InputView,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> &,mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeOp,mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> & &)#1},0ul,1ul,2ul,3ul>(void **a1, uint64_t a2)
{
  mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeOp,mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,mlir::mps::DequantizeOp &)#1}::operator()<mlir::detail::RecursivePatternMatcher<mlir::mps::QuantizeOp,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher,mlir::detail::constant_op_matcher>>(a2, 0);
  v7 = *(*(**(a2 + 8) + 72) + 56);
  DefiningOp = mlir::Value::getDefiningOp(&v7);
  if (DefiningOp)
  {
    LOBYTE(DefiningOp) = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(a1 + 1, DefiningOp);
  }

  **a2 &= DefiningOp;
  v7 = *(*(**(a2 + 8) + 72) + 88);
  v5 = mlir::Value::getDefiningOp(&v7);
  if (v5)
  {
    LOBYTE(v5) = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(a1 + 2, v5);
  }

  **a2 &= v5;
  v7 = *(*(**(a2 + 8) + 72) + 120);
  result = mlir::Value::getDefiningOp(&v7);
  if (result)
  {
    result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(a1 + 3, result);
  }

  **a2 &= result;
  return result;
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> & *)#1},0ul,1ul>(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  v13 = *(*(**(a2 + 8) + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v13);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (*v4 ? (v7 = *v4 == DefiningOp) : (v7 = 1), v7))
    {
      *v4 = DefiningOp;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = v6 & **a2;
  if (!DefiningOp)
  {
    v8 = 0;
  }

  **a2 = v8;
  v9 = a1[1];
  v13 = *(*(**(a2 + 8) + 72) + 56);
  result = mlir::Value::getDefiningOp(&v13);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v9 || *v9 == result))
    {
      *v9 = result;
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }
  }

  v12 = v11 & **a2;
  if (!result)
  {
    v12 = 0;
  }

  **a2 = v12;
  return result;
}

uint64_t mlir::detail::RecursivePatternMatcherBinder<mlir::mps::Conv2DOp,mlir::detail::any_value_binder,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>::match(mlir::Operation *)::{lambda(unsigned long,mlir::mps::Conv2DOp *)#1}::operator()<mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v11 = *(*(**(a1 + 8) + 72) + 32 * a2 + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v11);
  if (!DefiningOp)
  {
    v9 = *a3;
    v12[0] = v11;
    result = mlir::Value::getDefiningOp(v12);
    if (!result)
    {
      goto LABEL_12;
    }

    v6 = result;
    v10 = v9;
LABEL_14:
    result = mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>::match(v10, v6);
    goto LABEL_12;
  }

  v6 = DefiningOp;
  v14 = DefiningOp;
  if (*(*(DefiningOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id)
  {
    v10 = *a3;
    goto LABEL_14;
  }

  if ((*(DefiningOp + 46) & 0x80) != 0 && *(DefiningOp + 68) == 2)
  {
    v13 = 1;
    v12[0] = &v13;
    v12[1] = &v14;
    mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*> &,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*> & *)#1},0ul,1ul>(a3, v12);
    result = v13;
    if (v13 == 1)
    {
      v8 = v14;
      if ((*(a3 + 24) & 1) == 0)
      {
        *(a3 + 24) = 1;
      }

      *(a3 + 16) = v8;
    }
  }

  else
  {
    result = 0;
  }

LABEL_12:
  **a1 &= result;
  return result;
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> &,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp> *> & *)#1},0ul,1ul>(uint64_t **a1, uint64_t a2)
{
  v4 = *a1;
  v13 = *(*(**(a2 + 8) + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v13);
  if (DefiningOp)
  {
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id && (*v4 ? (v7 = *v4 == DefiningOp) : (v7 = 1), v7))
    {
      *v4 = DefiningOp;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = v6 & **a2;
  if (!DefiningOp)
  {
    v8 = 0;
  }

  **a2 = v8;
  v9 = a1[1];
  v13 = *(*(**(a2 + 8) + 72) + 56);
  result = mlir::Value::getDefiningOp(&v13);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v9 || *v9 == result))
    {
      *v9 = result;
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }
  }

  v12 = v11 & **a2;
  if (!result)
  {
    v12 = 0;
  }

  **a2 = v12;
  return result;
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*> &,mlir::detail::RecursivePatternOptionalMatcherBinder<mlir::mps::PermuteOp,0,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>> *,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>*> & *)#1},0ul,1ul>(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v10 = *(*(**(a2 + 8) + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (DefiningOp)
  {
    LOBYTE(DefiningOp) = mlir::detail::RecursivePatternMatcherBinder<mlir::mps::DequantizeLUTOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::RecursivePatternMatcherBinder<mlir::mps::ReshapeOp,mlir::detail::op_matcher_with_bind<mlir::mps::ReadDataFromFileOp>,mlir::detail::op_matcher_with_bind<mlir::mps::ConstantOp>>>::match(v4, DefiningOp);
  }

  **a2 &= DefiningOp;
  v6 = a1[1];
  v10 = *(*(**(a2 + 8) + 72) + 56);
  result = mlir::Value::getDefiningOp(&v10);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id && (!*v6 || *v6 == result))
    {
      *v6 = result;
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  v9 = v8 & **a2;
  if (!result)
  {
    v9 = 0;
  }

  **a2 = v9;
  return result;
}

void mlir::OpBuilder::createOrFold<mlir::anec::Transpose,mlir::Value &,std::vector<std::pair<unsigned long long,unsigned long long>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v31[38] = *MEMORY[0x1E69E9840];
  v28 = a3;
  Context = mlir::Attribute::getContext(&v28);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Transpose,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Transpose,mlir::Value &,unsigned long long &,unsigned long long &>(v31, v30, v29);
  }

  mlir::OperationState::OperationState(v31, a3, v11);
  mlir::anec::Transpose::build(a1, v31, *a4, *a5, (*(a5 + 8) - *a5) >> 4);
  v14 = mlir::Operation::create(v31, v13);
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = *(a1 + 24);
    llvm::ilist_traits<mlir::Operation>::addNodeToList(v15 + 32, v14);
    v18 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v14, v17);
    v19 = *v16;
    *v18 = *v16;
    v18[1] = v16;
    *(v19 + 8) = v18;
    *v16 = v18;
    MPSGraphDelegateCompiler.precompilationDescriptor.modify(v14, v20);
  }

  if ((mlir::OpBuilder::tryFold(a1, v14, a2) & 1) != 0 && *(a2 + 8))
  {
    mlir::Operation::erase(v14);
    goto LABEL_20;
  }

  v21 = v14[9];
  if (v21)
  {
    v22 = (v14 - 4);
  }

  else
  {
    v22 = 0;
  }

  *(a2 + 8) = 0;
  if (v21 <= *(a2 + 12))
  {
    if (!v21)
    {
      v26 = 0;
      goto LABEL_17;
    }

    v23 = 0;
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v21, 8);
    v23 = *(a2 + 8);
  }

  v24 = 0;
  v25 = *a2 + 8 * v23;
  do
  {
    *(v25 + 8 * v24) = mlir::detail::OpResultImpl::getNextResultAtOffset(v22, v24);
    ++v24;
  }

  while (v21 != v24);
  v26 = *(a2 + 8);
LABEL_17:
  *(a2 + 8) = v26 + v21;
  if (*(a1 + 16))
  {
    v27 = *(a1 + 8);
    if (v27)
    {
      (*(*v27 + 16))(v27, v14, 0, 0);
    }
  }

LABEL_20:
  mlir::OperationState::~OperationState(v31);
}

uint64_t mlir::anonymous namespace::matchPalettizedLinearKernel(uint64_t a1, void *a2)
{
  v25[6] = *MEMORY[0x1E69E9840];
  v3 = (a2 + 6);
  ArgOperands = a2;
  v20 = a2 + 6;
  v21 = a1;
  result = mlir::Value::getDefiningOp(&v21);
  if (result)
  {
    v18[0] = result;
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeLUTOp,void>::id && (*(result + 46) & 0x80) != 0 && *(result + 68) == 2 && (v22 = 1, v23 = &v22, v24 = v18, mlir::detail::enumerateImpl<std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> &,mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeLUTOp,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> & &)#1},0ul,1ul>(&ArgOperands, &v23), v22 == 1) && (ArgOperands = mlir::CallOpInterface::getArgOperands(a2), v20 = v5, v18[0] = mlir::CallOpInterface::getArgOperands(v3), v18[1] = v6, mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands), v7 == 2) && (mlir::CallableOpInterface::getArgAttrsAttr(v18), v8 <= 4))
    {
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v18);
      v10 = mlir::CallableOpInterface::getArgAttrsAttr(v18);
      v12 = (v10 + 8 * v11);
      v23 = v25;
      v24 = 0x600000000;
      v13 = (v12 - ArgAttrsAttr) >> 3;
      if (v13 < 7)
      {
        v14 = 0;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v23, v25, v13, 8);
        v14 = v24;
      }

      if (v12 != ArgAttrsAttr)
      {
        memcpy(v23 + 8 * v14, ArgAttrsAttr, v12 - ArgAttrsAttr);
        v14 = v24;
      }

      LODWORD(v24) = v14 + ((v12 - ArgAttrsAttr) >> 3);
      mlir::CallableOpInterface::getArgAttrsAttr(v18);
      if (v15 < 2)
      {
        v16 = 1;
      }

      else
      {
        v16 = *v23;
      }

      result = *mlir::CallableOpInterface::getArgAttrsAttr(&ArgOperands) % v16 == 0;
      if (v23 != v25)
      {
        v17 = result;
        free(v23);
        return v17;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void **llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::anonymous namespace::ConvertFusionOp::convertFusionOpToPalettizedLinear(mlir::mpsx::FusionOp,mlir::mpsx::FusionOpAdaptor,mlir::ConversionPatternRewriter &)::$_0>(void **result, uint64_t a2)
{
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::DequantizeLUTOp,void>::id)
  {
    **result = a2;
  }

  return result;
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> &,mlir::detail::RecursivePatternMatcher<mlir::mps::DequantizeLUTOp,mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::constant_op_binder<mlir::ElementsAttr>,mlir::detail::constant_op_binder<mlir::ElementsAttr>> & &)#1},0ul,1ul>(void **a1, uint64_t a2)
{
  v6 = *(*(**(a2 + 8) + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v6);
  if (DefiningOp)
  {
    LOBYTE(DefiningOp) = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(a1, DefiningOp);
  }

  **a2 &= DefiningOp;
  v6 = *(*(**(a2 + 8) + 72) + 56);
  result = mlir::Value::getDefiningOp(&v6);
  if (result)
  {
    result = mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(a1 + 1, result);
  }

  **a2 &= result;
  return result;
}

uint64_t mlir::matchConstantWithIntVector<unsigned long>(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  if (!a1)
  {
    return 0;
  }

  v7 = &v8;
  v10 = a1;
  DefiningOp = mlir::Value::getDefiningOp(&v10);
  if (!DefiningOp)
  {
    return 0;
  }

  if (!mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v7, DefiningOp))
  {
    return 0;
  }

  v6[0] = mlir::CallOpInterface::getArgOperands(&v8);
  v6[1] = v4;
  if (*(*mlir::ElementsAttr::isSplat(v6) + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id)
  {
    return 0;
  }

  mlir::getIntValues<unsigned long>(v8, v9, a2, 1);
  return 1;
}

uint64_t mlir::anonymous namespace::ConvertFusionOp::getRingBufferOffsetInfo(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v39[6] = *MEMORY[0x1E69E9840];
  v31 = a1;
  *(a3 + 8) = 0;
  a4[1] = 0;
  v7 = *(*(mlir::Value::getDefiningOp(&v31) + 48) + 16);
  if (v7 != &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
  {
    if (v7 == &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
    {
      DefiningOp = mlir::Value::getDefiningOp(&v31);
      if ((*(DefiningOp + 46) & 0x80) == 0)
      {
        v11 = 0;
        v10 = -1;
        goto LABEL_6;
      }

      v9 = *(DefiningOp + 68);
      v10 = v9 - 1;
      if (v9 != 1)
      {
        v11 = *(DefiningOp + 72);
LABEL_6:
        v12 = (v11 + 24);
        while (1)
        {
          v30 = *v12;
          if ((mlir::matchValueTypeThrough<mlir::BlockArgument,mlir::UnrealizedConversionCastOp>(v30) & 1) != 0 || *(*(mlir::Value::getDefiningOp(&v30) + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::ConstantOp,void>::id)
          {
            break;
          }

          v17 = (v30[1] & 0xFFFFFFFFFFFFFFF8);
          if (v17)
          {
            v18 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v17 + 8);
          }

          else
          {
            v18 = 0;
          }

          __src = v17;
          v38 = v18;
          isSplat = mlir::ElementsAttr::isSplat(&__src);
          if (!mlir::Type::isInteger(&isSplat, 32))
          {
            return 0;
          }

          __src = 0;
          v38 = 0;
          v32[0] = &__src;
          isSplat = v30;
          v19 = mlir::Value::getDefiningOp(&isSplat);
          if (!v19)
          {
            return 0;
          }

          if ((mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(v32, v19) & 1) == 0)
          {
            return 0;
          }

          SingleInt = mlir::getSingleIntValue<unsigned long long>(__src, v38);
          if ((v21 & 1) == 0)
          {
            return 0;
          }

          v22 = *(a3 + 8);
          if (v22 >= *(a3 + 12))
          {
            v23 = SingleInt;
            llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v22 + 1, 8);
            SingleInt = v23;
            v22 = *(a3 + 8);
          }

          v16 = 0;
          *(*a3 + 8 * v22) = SingleInt;
          ++*(a3 + 8);
          v14 = a4[1];
          v15 = v14 + 1;
          if ((v14 + 1) > a4[2])
          {
            goto LABEL_24;
          }

LABEL_12:
          *(*a4 + v14) = v16;
          ++a4[1];
          v12 += 4;
          if (!--v10)
          {
            goto LABEL_32;
          }
        }

        v13 = *(a3 + 8);
        if (v13 >= *(a3 + 12))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v13 + 1, 8);
          v13 = *(a3 + 8);
        }

        *(*a3 + 8 * v13) = 0;
        ++*(a3 + 8);
        v14 = a4[1];
        v15 = v14 + 1;
        v16 = 1;
        if ((v14 + 1) <= a4[2])
        {
          goto LABEL_12;
        }

LABEL_24:
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a4, a4 + 3, v15, 1);
        v14 = a4[1];
        goto LABEL_12;
      }

LABEL_32:
      LODWORD(v26) = *(a3 + 8);
      goto LABEL_34;
    }

    return 0;
  }

  if ((mlir::matchConstantWithIntVector<unsigned long long>(v31, a3) & 1) == 0)
  {
    return 0;
  }

  if (*(a3 + 8))
  {
    v24 = 0;
    v25 = a4[1];
    do
    {
      if ((v25 + 1) > a4[2])
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(a4, a4 + 3, v25 + 1, 1);
        v25 = a4[1];
      }

      *(*a4 + v25) = 0;
      v25 = a4[1] + 1;
      a4[1] = v25;
      ++v24;
      v26 = *(a3 + 8);
    }

    while (v24 < v26);
  }

  else
  {
    LODWORD(v26) = 0;
  }

LABEL_34:
  v27 = v26;
  if (v26 < a2)
  {
    __src = v39;
    HIDWORD(v38) = 6;
    if (a2 <= 6)
    {
      bzero(v39, 8 * a2);
      LODWORD(v38) = a2;
      isSplat = v36;
      *__len = xmmword_1E09700D0;
    }

    else
    {
      LODWORD(v38) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v39, a2, 8);
      bzero(__src, 8 * a2);
      LODWORD(v38) = a2;
      isSplat = v36;
      *__len = xmmword_1E09700D0;
      if (a2 >= 0x29)
      {
        llvm::SmallVectorBase<unsigned long long>::grow_pod(&isSplat, v36, a2, 1);
        v28 = isSplat;
        goto LABEL_40;
      }
    }

    v28 = v36;
LABEL_40:
    bzero(v28, a2);
    __len[0] = a2;
    v32[0] = &v33;
    v32[1] = 0xC00000000;
    mlir::anec::getANEDefaultLayout(v27, v32);
  }

  return 1;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_12_GLOBAL__N_115ConvertFusionOp33convertFusionOpToRingBufferWriterENS1_4mpsx8FusionOpENSE_15FusionOpAdaptorERNS1_25ConversionPatternRewriterEE3__0NS1_3mps16AssignVariableOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueEST_E4typeES4_OT1_EUlS4_E_EES2_lS4_(void ***a1, uint64_t a2)
{
  result = 1;
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::AssignVariableOp,void>::id)
    {
      result = 0;
      ***a1 = a2;
    }
  }

  return result;
}

float mlir::getIntValues<unsigned long>(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v102[5] = *MEMORY[0x1E69E9840];
  *&v97 = a1;
  *(&v97 + 1) = a2;
  if (!mlir::ElementsAttr::isSplat(&v97) || a4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v97, *(&v97 + 1));
  }

  else
  {
    NumElements = 1;
  }

  v7 = *(a3 + 8);
  if (NumElements != v7)
  {
    if (NumElements >= v7)
    {
      if (NumElements > *(a3 + 12))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, NumElements, 8);
        v7 = *(a3 + 8);
      }

      if (NumElements != v7)
      {
        bzero((*a3 + 8 * v7), 8 * (NumElements - v7));
      }
    }

    *(a3 + 8) = NumElements;
  }

  v8 = *a3;
  v100 = v97;
  Type = mlir::ElementsAttr::getType(&v100);
  v10 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v99[0] = v10;
  v99[1] = Type;
  isSplat = mlir::ElementsAttr::isSplat(v99);
  v11 = mlir::ElementsAttr::isSplat(&v100);
  ElementsAttrRawData = mlir::getElementsAttrRawData(v100);
  v14 = v13;
  if (!v11 || a4)
  {
    v16 = mlir::ElementsAttr::getNumElements(v100, *(&v100 + 1));
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_20;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_31;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      if (v16 >= 2)
      {
        v22 = 0;
        v21 = v16 & 0x7FFFFFFFFFFFFFFELL;
        v23 = v8 + 1;
        do
        {
          if (v11)
          {
            v24 = 0;
          }

          else
          {
            v24 = v22;
          }

          if (v11)
          {
            v25 = 0;
          }

          else
          {
            v25 = v22 + 1;
          }

          v26 = *&ElementsAttrRawData[2 * v25];
          *(v23 - 1) = *&ElementsAttrRawData[2 * v24];
          *v23 = v26;
          v23 += 2;
          v22 += 2;
        }

        while (v22 != v21);
        goto LABEL_208;
      }

      goto LABEL_40;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_57;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_64;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_80;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_96;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_112;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_128;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_144;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_160;
    }

    if (mlir::Type::isBF16(&isSplat))
    {
      if (v16 < 1)
      {
        return *&v15;
      }

      goto LABEL_175;
    }

LABEL_177:
    if (mlir::Type::isInteger(&isSplat, 1))
    {
      if (v11)
      {
        v71 = 1;
      }

      else
      {
        v71 = v16;
      }

      llvm::SmallVector<char,40u>::SmallVector(v101, v71);
      mlir::detail::unpackBooleanData(ElementsAttrRawData, v14, v101[0], v101[1]);
      v72 = v101[0];
      if (v16 >= 1)
      {
        for (i = 0; i != v16; ++i)
        {
          if (v11)
          {
            v74 = 0;
          }

          else
          {
            v74 = i;
          }

          v8[i] = v72[v74];
        }
      }

      if (v72 != v102)
      {
        free(v72);
      }
    }

    else
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<unsigned long long>(ElementsAttrRawData, v14, v8, v16, IntOrFloatBitWidth);
    }

    return *&v15;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    v16 = 1;
LABEL_20:
    for (j = 0; j != v16; ++j)
    {
      if (v11)
      {
        v18 = 0;
      }

      else
      {
        v18 = j;
      }

      v8[j] = ElementsAttrRawData[v18];
    }

    return *&v15;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    v16 = 1;
LABEL_31:
    for (k = 0; k != v16; ++k)
    {
      if (v11)
      {
        v20 = 0;
      }

      else
      {
        v20 = k;
      }

      v8[k] = ElementsAttrRawData[v20];
    }

    return *&v15;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    v16 = 1;
LABEL_40:
    v21 = 0;
    do
    {
      if (v11)
      {
        v86 = 0;
      }

      else
      {
        v86 = v21;
      }

      v8[v21++] = *&ElementsAttrRawData[2 * v86];
LABEL_208:
      ;
    }

    while (v16 != v21);
    return *&v15;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    v16 = 1;
LABEL_57:
    if (v16 >= 2)
    {
      v29 = 0;
      v27 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v30 = v8 + 1;
      do
      {
        if (v11)
        {
          v31 = 0;
        }

        else
        {
          v31 = v29;
        }

        if (v11)
        {
          v32 = 0;
        }

        else
        {
          v32 = v29 + 1;
        }

        v33 = *&ElementsAttrRawData[2 * v32];
        *(v30 - 1) = *&ElementsAttrRawData[2 * v31];
        *v30 = v33;
        v30 += 2;
        v29 += 2;
      }

      while (v29 != v27);
      goto LABEL_213;
    }

    v27 = 0;
    do
    {
      if (v11)
      {
        v87 = 0;
      }

      else
      {
        v87 = v27;
      }

      v8[v27++] = *&ElementsAttrRawData[2 * v87];
LABEL_213:
      ;
    }

    while (v16 != v27);
    return *&v15;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    v16 = 1;
LABEL_64:
    if (v16 >= 2)
    {
      v35 = 0;
      v28 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v36 = v8 + 1;
      do
      {
        if (v11)
        {
          v37 = 0;
        }

        else
        {
          v37 = v35;
        }

        if (v11)
        {
          v38 = 0;
        }

        else
        {
          v38 = v35 + 1;
        }

        v39 = *&ElementsAttrRawData[4 * v38];
        *(v36 - 1) = *&ElementsAttrRawData[4 * v37];
        *v36 = v39;
        v36 += 2;
        v35 += 2;
      }

      while (v35 != v28);
      goto LABEL_218;
    }

    v28 = 0;
    do
    {
      if (v11)
      {
        v88 = 0;
      }

      else
      {
        v88 = v28;
      }

      v8[v28++] = *&ElementsAttrRawData[4 * v88];
LABEL_218:
      ;
    }

    while (v16 != v28);
    return *&v15;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    v16 = 1;
LABEL_80:
    if (v16 >= 2)
    {
      v41 = 0;
      v34 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v42 = v8 + 1;
      do
      {
        if (v11)
        {
          v43 = 0;
        }

        else
        {
          v43 = v41;
        }

        if (v11)
        {
          v44 = 0;
        }

        else
        {
          v44 = v41 + 1;
        }

        v45 = *&ElementsAttrRawData[4 * v44];
        *(v42 - 1) = *&ElementsAttrRawData[4 * v43];
        *v42 = v45;
        v42 += 2;
        v41 += 2;
      }

      while (v41 != v34);
      goto LABEL_223;
    }

    v34 = 0;
    do
    {
      if (v11)
      {
        v89 = 0;
      }

      else
      {
        v89 = v34;
      }

      v8[v34++] = *&ElementsAttrRawData[4 * v89];
LABEL_223:
      ;
    }

    while (v16 != v34);
    return *&v15;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    v16 = 1;
LABEL_96:
    if (v16 >= 2)
    {
      v47 = 0;
      v40 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v48 = v8 + 1;
      do
      {
        if (v11)
        {
          v49 = 0;
        }

        else
        {
          v49 = v47;
        }

        if (v11)
        {
          v50 = 0;
        }

        else
        {
          v50 = v47 + 1;
        }

        v51 = *&ElementsAttrRawData[8 * v50];
        *(v48 - 1) = *&ElementsAttrRawData[8 * v49];
        *v48 = v51;
        v48 += 2;
        v47 += 2;
      }

      while (v47 != v40);
      goto LABEL_228;
    }

    v40 = 0;
    do
    {
      if (v11)
      {
        v90 = 0;
      }

      else
      {
        v90 = v40;
      }

      v8[v40++] = *&ElementsAttrRawData[8 * v90];
LABEL_228:
      ;
    }

    while (v16 != v40);
    return *&v15;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    v16 = 1;
LABEL_112:
    if (v16 >= 2)
    {
      v53 = 0;
      v46 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v54 = v8 + 1;
      do
      {
        if (v11)
        {
          v55 = 0;
        }

        else
        {
          v55 = v53;
        }

        if (v11)
        {
          v56 = 0;
        }

        else
        {
          v56 = v53 + 1;
        }

        v57 = *&ElementsAttrRawData[8 * v56];
        *(v54 - 1) = *&ElementsAttrRawData[8 * v55];
        *v54 = v57;
        v54 += 2;
        v53 += 2;
      }

      while (v53 != v46);
      goto LABEL_233;
    }

    v46 = 0;
    do
    {
      if (v11)
      {
        v91 = 0;
      }

      else
      {
        v91 = v46;
      }

      v8[v46++] = *&ElementsAttrRawData[8 * v91];
LABEL_233:
      ;
    }

    while (v16 != v46);
    return *&v15;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    v16 = 1;
LABEL_128:
    if (v16 >= 2)
    {
      v59 = 0;
      v52 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v60 = v8 + 1;
      do
      {
        if (v11)
        {
          v61 = 0;
        }

        else
        {
          v61 = v59;
        }

        if (v11)
        {
          v62 = 0;
        }

        else
        {
          v62 = v59 + 1;
        }

        LOWORD(v15) = *&ElementsAttrRawData[2 * v61];
        v63 = *&ElementsAttrRawData[2 * v62];
        *(v60 - 1) = *&v15;
        *v60 = v63;
        v60 += 2;
        v59 += 2;
      }

      while (v59 != v52);
      goto LABEL_238;
    }

    v52 = 0;
    do
    {
      if (v11)
      {
        v92 = 0;
      }

      else
      {
        v92 = v52;
      }

      LOWORD(v15) = *&ElementsAttrRawData[2 * v92];
      v8[v52++] = *&v15;
LABEL_238:
      ;
    }

    while (v16 != v52);
    return *&v15;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    v16 = 1;
LABEL_144:
    if (v16 >= 2)
    {
      v65 = 0;
      v58 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v66 = v8 + 1;
      do
      {
        if (v11)
        {
          v67 = 0;
        }

        else
        {
          v67 = v65;
        }

        if (v11)
        {
          v68 = 0;
        }

        else
        {
          v68 = v65 + 1;
        }

        LODWORD(v15) = *&ElementsAttrRawData[4 * v67];
        v69 = *&ElementsAttrRawData[4 * v68];
        *(v66 - 1) = *&v15;
        *v66 = v69;
        v66 += 2;
        v65 += 2;
      }

      while (v65 != v58);
      goto LABEL_243;
    }

    v58 = 0;
    do
    {
      if (v11)
      {
        v93 = 0;
      }

      else
      {
        v93 = v58;
      }

      LODWORD(v15) = *&ElementsAttrRawData[4 * v93];
      v8[v58++] = *&v15;
LABEL_243:
      ;
    }

    while (v16 != v58);
    return *&v15;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    v16 = 1;
LABEL_160:
    if (v16 >= 2)
    {
      v75 = 0;
      v64 = v16 & 0x7FFFFFFFFFFFFFFELL;
      v76 = v8 + 1;
      do
      {
        if (v11)
        {
          v77 = 0;
        }

        else
        {
          v77 = v75;
        }

        if (v11)
        {
          v78 = 0;
        }

        else
        {
          v78 = v75 + 1;
        }

        v15 = *&ElementsAttrRawData[8 * v77];
        v79 = *&ElementsAttrRawData[8 * v78];
        *(v76 - 1) = v15;
        *v76 = v79;
        v76 += 2;
        v75 += 2;
      }

      while (v75 != v64);
      goto LABEL_248;
    }

    v64 = 0;
    do
    {
      if (v11)
      {
        v94 = 0;
      }

      else
      {
        v94 = v64;
      }

      v15 = *&ElementsAttrRawData[8 * v94];
      v8[v64++] = v15;
LABEL_248:
      ;
    }

    while (v16 != v64);
    return *&v15;
  }

  v16 = 1;
  if (!mlir::Type::isBF16(&isSplat))
  {
    goto LABEL_177;
  }

LABEL_175:
  if (v16 >= 2)
  {
    v81 = 0;
    v70 = v16 & 0x7FFFFFFFFFFFFFFELL;
    v82 = v8 + 1;
    do
    {
      if (v11)
      {
        v83 = 0;
      }

      else
      {
        v83 = v81;
      }

      if (v11)
      {
        v84 = 0;
      }

      else
      {
        v84 = v81 + 1;
      }

      LODWORD(v15) = *&ElementsAttrRawData[2 * v83] << 16;
      v85 = COERCE_FLOAT(*&ElementsAttrRawData[2 * v84] << 16);
      *(v82 - 1) = *&v15;
      *v82 = v85;
      v82 += 2;
      v81 += 2;
    }

    while (v81 != v70);
    goto LABEL_253;
  }

  v70 = 0;
  do
  {
    if (v11)
    {
      v95 = 0;
    }

    else
    {
      v95 = v70;
    }

    LODWORD(v15) = *&ElementsAttrRawData[2 * v95] << 16;
    v8[v70++] = *&v15;
LABEL_253:
    ;
  }

  while (v16 != v70);
  return *&v15;
}

unint64_t mlir::getSingleIntValue<unsigned long long>(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v12 = a2;
  v10[0] = mlir::CallOpInterface::getArgOperands(&v11);
  v10[1] = v2;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v10);
  if (mlir::ShapedType::getNumElements(ArgAttrsAttr, v4) == 1 && (v9[0] = mlir::CallOpInterface::getArgOperands(&v11), v9[1] = v5, *(*mlir::ElementsAttr::isSplat(v9) + 136) == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id))
  {
    v9[0] = 0;
    mlir::copyElementsAttrData<unsigned long long>(v11, v12, v9, 1);
    v7 = v9[0] & 0xFFFFFFFFFFFFFF00;
    v6 = LOBYTE(v9[0]);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

uint64_t mlir::OpBuilder::create<mlir::anec::RingBufferWriter,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::ValueRange &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v23[38] = *MEMORY[0x1E69E9840];
  v20 = a2;
  Context = mlir::Attribute::getContext(&v20);
  v15 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::RingBufferWriter,void>::id, Context);
  if ((v16 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::RingBufferWriter,mlir::Value &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::ValueRange &>(v23, v22, v21);
  }

  mlir::OperationState::OperationState(v23, a2, v15);
  mlir::anec::RingBufferWriter::build(a1, v23, *a3, *a4, *a5, *a6, *a7, *(a7 + 8));
  v17 = mlir::OpBuilder::create(a1, v23);
  if (*(*(v17 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::RingBufferWriter,void>::id)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  mlir::OperationState::~OperationState(v23);
  return v18;
}

uint64_t _ZN4llvm12function_refIFN4mlir10WalkResultEPNS1_9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_12_GLOBAL__N_115ConvertFusionOp33convertFusionOpToRingBufferReaderENS1_4mpsx8FusionOpENSE_15FusionOpAdaptorERNS1_25ConversionPatternRewriterEE3__0NS1_3mps14StridedSliceOpES2_EENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S4_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_S2_EE5valueEST_E4typeES4_OT1_EUlS4_E_EES2_lS4_(void ***a1, uint64_t a2)
{
  if (a2 && *(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id)
  {
    ***a1 = a2;
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::anec::RingBufferReader,mlir::ShapedType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::ValueRange &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t a8)
{
  v26[38] = *MEMORY[0x1E69E9840];
  v23 = a2;
  Context = mlir::Attribute::getContext(&v23);
  v17 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::RingBufferReader,void>::id, Context);
  if ((v18 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::RingBufferReader,mlir::ShapedType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &,mlir::ValueRange &>(v26, v25, v24);
  }

  mlir::OperationState::OperationState(v26, a2, v17);
  mlir::anec::RingBufferReader::build(a1, v26, *a3, *a4, *a5, *a6, *a7, v19, *a8, *(a8 + 8));
  v20 = mlir::OpBuilder::create(a1, v26);
  if (*(*(v20 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::RingBufferReader,void>::id)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  mlir::OperationState::~OperationState(v26);
  return v21;
}

uint64_t mlir::RewriterBase::replaceOpWithNewOp<mlir::anec::TensorBufferToTensor,mlir::MemRefType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = mlir::OpBuilder::create<mlir::anec::TensorBufferToTensor,mlir::MemRefType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>((a1 + 8), *(a2 + 24), a3, a4, a5, a6);
  (*(*a1 + 8))(a1, a2, v8);
  return v8;
}

void **llvm::function_ref<void ()(mlir::Operation *)>::callback_fn<mlir::anonymous namespace::ConvertFusionOp::convertFusionOpToTensorBuffer(mlir::mpsx::FusionOp,mlir::mpsx::FusionOpAdaptor,mlir::ConversionPatternRewriter &)::$_0>(void **result, uint64_t a2)
{
  v2 = *(*(a2 + 48) + 16);
  if (v2 != &mlir::detail::TypeIDResolver<mlir::mpsx::TensorToBufferOp,void>::id)
  {
    if (v2 != &mlir::detail::TypeIDResolver<mlir::mpsx::BufferToTensorOp,void>::id)
    {
      return result;
    }

    ++result;
  }

  **result = a2;
  return result;
}

void mlir::getValues<unsigned long>(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(v13, a1, 0);
  NumElements = mlir::DenseElementsAttr::getNumElements(&v15);
  mlir::DenseElementsAttr::IntElementIterator::IntElementIterator(&v11, a1, NumElements);
  while (v14 != v12)
  {
    mlir::DenseElementsAttr::IntElementIterator::operator*(v13, &__p);
    v5 = v10;
    p_p = __p;
    if (v10 < 0x41)
    {
      p_p = &__p;
    }

    v7 = *p_p;
    v8 = *(a2 + 8);
    if (v8 >= *(a2 + 12))
    {
      llvm::SmallVectorTemplateBase<mlir::Operation *,true>::push_back(a2, v7);
      if (v10 >= 0x41)
      {
LABEL_9:
        if (__p)
        {
          operator delete[](__p);
        }
      }
    }

    else
    {
      *(*a2 + 8 * v8) = v7;
      *(a2 + 8) = v8 + 1;
      if (v5 >= 0x41)
      {
        goto LABEL_9;
      }
    }

    ++v14;
  }
}

uint64_t mlir::mpsx::TensorToBufferOp::getInterleaveAttr(mlir::Operation **this)
{
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  Value = mlir::ArrayAttr::getValue(&AttrDictionary);
  AttrDictionary = mlir::Operation::getAttrDictionary(*this);
  v3 = mlir::ArrayAttr::getValue(&AttrDictionary);
  result = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(Value, (v3 + 16 * v4), **(*(*this + 6) + 96));
  if (result)
  {
    v6 = result;
    if (mlir::DenseIntElementsAttr::classof(result))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t mlir::OpBuilder::create<mlir::anec::TensorToTensorBuffer,mlir::MemRefType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::TensorToTensorBuffer,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::TensorToTensorBuffer,mlir::MemRefType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::anec::TensorBufferToTensor::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::TensorToTensorBuffer,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::OpBuilder::create<mlir::anec::TensorBufferToTensor,mlir::MemRefType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::TensorBufferToTensor,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::TensorBufferToTensor,mlir::MemRefType &,mlir::Value &,mlir::DenseIntElementsAttr &,mlir::DenseIntElementsAttr &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::anec::TensorBufferToTensor::build(a1, v21, *a3, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::TensorBufferToTensor,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

uint64_t mlir::anonymous namespace::ConvertFusionOp::convertFusionOpToQuantizedConv(mlir::mpsx::FusionOp,mlir::mpsx::FusionOpAdaptor,mlir::ConversionPatternRewriter &)const::$_1::operator()(mlir::CallableOpInterface **a1, uint64_t a2, uint64_t a3)
{
  v17[0] = a2;
  v17[1] = a3;
  mlir::CallableOpInterface::getArgAttrsAttr(v17);
  if (v4 < 2)
  {
    return 1;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v17);
  v7 = v6;
  mlir::CallableOpInterface::getArgAttrsAttr(*a1);
  if (v7 == v8)
  {
    if (mlir::mps::Conv3DOp::getWeightsLayout(a1[1]) == 2)
    {
      ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v17);
      NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v10);
      v12 = mlir::CallableOpInterface::getArgAttrsAttr(v17);
      return NumElements == *v12;
    }

    if (mlir::mps::Conv3DOp::getWeightsLayout(a1[1]) == 3)
    {
      v13 = mlir::CallableOpInterface::getArgAttrsAttr(v17);
      NumElements = mlir::ShapedType::getNumElements(v13, v14);
      v15 = mlir::CallableOpInterface::getArgAttrsAttr(v17);
      v12 = (v15 + 8 * v16 - 8);
      return NumElements == *v12;
    }
  }

  return 0;
}

void ***_ZN4llvm12function_refIFvPN4mlir9OperationEEE11callback_fnIZNS1_6detail4walkILNS1_9WalkOrderE1ENS1_15ForwardIteratorEZNKS1_12_GLOBAL__N_115ConvertFusionOp30convertFusionOpToQuantizedConvENS1_4mpsx8FusionOpENSD_15FusionOpAdaptorERNS1_25ConversionPatternRewriterEE3__0NS1_3mps8Conv2DOpEvEENSt3__19enable_ifIXaantsr4llvm9is_one_ofIT2_S3_PNS1_6RegionEPNS1_5BlockEEE5valuesr3std7is_sameIT3_vEE5valueESS_E4typeES3_OT1_EUlS3_E_EEvlS3_(void ***result, uint64_t a2)
{
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id)
    {
      ***result = a2;
    }
  }

  return result;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SigmoidOp,mlir::anec::Sigmoid>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B132F0;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF89AFC()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::SigmoidOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SigmoidOp,mlir::anec::Sigmoid>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::Sigmoid,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Sigmoid,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Sigmoid,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Sigmoid,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Sigmoid,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SigmoidOp,mlir::anec::HighPrecisionSigmoid>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B13360;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF8A4EC()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::SigmoidOp,mlir::anec::HighPrecisionSigmoid>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::HighPrecisionSigmoid,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::HighPrecisionSigmoid,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::HighPrecisionSigmoid,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::HighPrecisionSigmoid,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::HighPrecisionSigmoid,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

void mlir::anonymous namespace::RegionReturnTypeConversion::~RegionReturnTypeConversion(mlir::_anonymous_namespace_::RegionReturnTypeConversion *this)
{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }
}

{
  v2 = *(this + 10);
  if (v2 != this + 96)
  {
    free(v2);
  }

  v3 = *(this + 4);
  if (v3 != this + 48)
  {
    free(v3);
  }

  operator delete(this);
}

uint64_t mlir::OpConversionPattern<mlir::anec::RegionReturn>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::anec::RegionReturn>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::RegionReturnTypeConversion::matchAndRewrite(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  (*(*a4 + 40))(a4);
  mlir::Operation::setOperands(a2, *(a3 + 40), *(a3 + 48));
  (*(*a4 + 48))(a4, a2);
  return 1;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::LeakyReluOp,mlir::anec::LeakyRelu>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B13438;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF8AF58()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::LeakyReluOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::LeakyReluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::LeakyReluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::LeakyReluOp,mlir::anec::LeakyRelu>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::LeakyRelu,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::LeakyRelu,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::LeakyRelu,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::LeakyRelu,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::LeakyRelu,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ClampOp,mlir::anec::ClampedRelu>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B134A8;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF8BB8C()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::ClampOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::ClampOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ClampOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ClampOp,mlir::anec::ClampedRelu>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::ClampedRelu,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::ClampedRelu,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::ClampedRelu,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::ClampedRelu,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::ClampedRelu,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::NReluOp,mlir::anec::NRelu>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B13518;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF8C7C0()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::NReluOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::NReluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::NReluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::NReluOp,mlir::anec::NRelu>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::NRelu,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::NRelu,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::NRelu,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::NRelu,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::NRelu,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::PReluOp,mlir::anec::LeakyRelu>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B13588;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF8D3F4()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::PReluOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::PReluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::PReluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::PReluOp,mlir::anec::LeakyRelu>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::LeakyRelu,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::Relu6Op,mlir::anec::NRelu>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B135F8;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF8DF24()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::Relu6Op>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::Relu6Op>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::Relu6Op>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::Relu6Op,mlir::anec::NRelu>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::NRelu,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ReciprocalOp,mlir::anec::Invert>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B13668;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF8EA54()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::ReciprocalOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::ReciprocalOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReciprocalOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ReciprocalOp,mlir::anec::Invert>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::Invert,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Invert,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Invert,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Invert,mlir::Value &,mlir::FloatAttr &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Invert,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ReciprocalSquareRootOp,mlir::anec::Rsqrt>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B136D8;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF8F688()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::ReciprocalSquareRootOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::ReciprocalSquareRootOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::ReciprocalSquareRootOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::ReciprocalSquareRootOp,mlir::anec::Rsqrt>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::Rsqrt,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Rsqrt,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Rsqrt,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Rsqrt,mlir::Value &,llvm::APFloat &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Rsqrt,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::LogarithmBase2Op,mlir::anec::Log2>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B13748;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF902BC()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::LogarithmBase2Op>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::LogarithmBase2Op>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::LogarithmBase2Op>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::LogarithmBase2Op,mlir::anec::Log2>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::Log2,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Log2,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Log2,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Log2,mlir::Value,mlir::FloatAttr>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Log2,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

void mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::EluOp,mlir::anec::Elu>::~ConvertElementwiseUnary(uint64_t a1)
{
  *a1 = &unk_1F5B137B8;
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    v4 = -56 * v3;
    v5 = v2 + 56 * v3 - 48;
    do
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 24));
      }

      v6 = *v5;
      if (llvm::APFloatBase::PPCDoubleDouble(v2) == v6)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(v5);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(v5);
      }

      v5 -= 56;
      v4 += 56;
    }

    while (v4);
    v2 = *(a1 + 128);
  }

  if (v2 != (a1 + 144))
  {
    free(v2);
  }

  v7 = *(a1 + 120);
  v8 = *(a1 + 104);
  if (v7)
  {
    v9 = 32 * v7;
    do
    {
      if (*v8 <= 0xFFFFFFFD && *(v8 + 31) < 0)
      {
        operator delete(*(v8 + 8));
      }

      v8 += 32;
      v9 -= 32;
    }

    while (v9);
    v8 = *(a1 + 104);
    v10 = (32 * *(a1 + 120));
  }

  else
  {
    v10 = 0;
  }

  llvm::deallocate_buffer(v8, v10);
}

{
}

void *sub_1DFF90EF0()
{
  v1 = v0[10];
  if (v1 != v0 + 12)
  {
    free(v1);
  }

  v2 = v0[4];
  if (v2 != v0 + 6)
  {
    free(v2);
  }

  return v0;
}

uint64_t mlir::OpConversionPattern<mlir::mps::EluOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 72))(a1, a2, v16, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::EluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v18[4] = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v15, a3, a4);
  v8 = v15[0];
  v9 = v15[1];
  v10 = *(a2 + 48);
  v16[0] = *(a2 + 56);
  v16[1] = v10;
  v17 = 1;
  v11 = *(a2 + 44);
  v12 = v11 & 0x7FFFFF;
  if ((v11 & 0x7FFFFF) != 0)
  {
    v13 = ((a2 + 16 * ((v11 >> 23) & 1) + ((v11 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v13, v12);
  v18[2] = v8;
  v18[3] = v9;
  return (*(*a1 + 80))(a1, a2, v16, a5);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::EluOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 48);
  v31 = *(a3 + 40);
  v32 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v32 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v31, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v26 = v10;
        v27 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v26) || !mlir::CallOpInterface::getArgOperands(&v26))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

LABEL_3:
      i = v32 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v25;
    v29 = *(a3 + 32);
    v30 = *(a3 + 48);
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v31 = 0;
      v32 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v31 = v18;
    v32 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v31) || !mlir::CallOpInterface::getArgOperands(&v31))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v31);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertElementwiseUnary<mlir::mps::EluOp,mlir::anec::Elu>::matchAndRewriteWithStaticShapes(llvm::APFloatBase *a1, uint64_t a2, uint64_t a3, mlir::Float16Type **a4)
{
  v5 = a1;
  v69[9] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 40);
  v7 = *(a3 + 48);
  v68[0] = v69;
  v68[1] = 0x400000000;
  v69[8] = 4;
  v64 = 0;
  v65 = v67;
  v66 = 0x400000000;
  v62 = 0;
  v63 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      a1 = mlir::ValueRange::dereference_iterator(&v63, v9);
      v10 = *(v5 + 30);
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = *(v5 + 13);
      v12 = (v10 - 1) & (37 * v8);
      v13 = *(v11 + 32 * v12);
      if (v13 != v8)
      {
        break;
      }

LABEL_7:
      if (v12 == v10)
      {
        goto LABEL_8;
      }

      v56 = &v58;
      v57 = 0x100000000;
      matched = mlir::matchConstantWithFloatVector<float>(a1, &v56);
      v16 = matched & (v57 == 1);
      if (v16)
      {
        v17 = llvm::detail::IEEEFloat::IEEEFloat(v59, *v56);
        v18 = llvm::APFloatBase::IEEEsingle(v17);
        llvm::APFloat::Storage::Storage(&v61, v59, v18);
        llvm::detail::IEEEFloat::~IEEEFloat(v59);
        v20 = llvm::APFloatBase::IEEEhalf(v19);
        v59[0] = 0;
        llvm::APFloat::convert(&__p, v20, 1, v59);
        v22 = v11 + 32 * v12;
        v25 = *(v22 + 8);
        v23 = v22 + 8;
        v24 = v25;
        v26 = *(v23 + 23);
        if (v26 >= 0)
        {
          v27 = v23;
        }

        else
        {
          v27 = v24;
        }

        v28 = *(v23 + 8);
        if (v26 >= 0)
        {
          v29 = v26;
        }

        else
        {
          v29 = v28;
        }

        F16Type = mlir::Builder::getF16Type(a4 + 1, v21);
        FloatAttr = mlir::Builder::getFloatAttr((a4 + 1), F16Type, &__p);
        v32 = mlir::NamedAttrList::set(v68, v27, v29, FloatAttr);
        v33 = v61;
        if (llvm::APFloatBase::PPCDoubleDouble(v32) == v33)
        {
          llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
        }

        else
        {
          llvm::detail::IEEEFloat::~IEEEFloat(&v61);
        }
      }

      else
      {
        __p = operator new(0x30uLL);
        v61 = xmmword_1E0982700;
        strcpy(__p, "Failed to extract fpValues from the operand");
        v54 = mlir::logMatchFailure(&__p, *(a2 + 24), a4);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(__p);
        }
      }

      a1 = v56;
      if (v56 != &v58)
      {
        free(v56);
      }

      if ((v16 & 1) == 0)
      {
        v52 = v54;
        goto LABEL_45;
      }

LABEL_4:
      v8 = v62 + 1;
      v9 = v64 + 1;
      ++v62;
      v64 = v9;
      if (v9 == v7)
      {
        goto LABEL_29;
      }
    }

    v35 = 1;
    while (v13 != -1)
    {
      v36 = v12 + v35++;
      v12 = v36 & (v10 - 1);
      v13 = *(v11 + 32 * v12);
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v14 = v66;
    if (v66 >= HIDWORD(v66))
    {
      v34 = a1;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v67, v66 + 1, 8);
      a1 = v34;
      v14 = v66;
    }

    *(v65 + v14) = a1;
    LODWORD(v66) = v66 + 1;
    goto LABEL_4;
  }

LABEL_29:
  v37 = *(v5 + 34);
  if (v37)
  {
    v38 = *(v5 + 16);
    v39 = llvm::APFloatBase::PPCDoubleDouble(a1);
    v40 = v38 + 32;
    v41 = 56 * v37;
    do
    {
      v42 = (v40 - 24);
      if (v39 == *(v40 - 24))
      {
        v43 = llvm::detail::DoubleAPFloat::DoubleAPFloat(&v61, v42);
      }

      else
      {
        v43 = llvm::detail::IEEEFloat::IEEEFloat(&v61, v42);
      }

      v44 = llvm::APFloatBase::IEEEhalf(v43);
      v59[0] = 0;
      llvm::APFloat::convert(&__p, v44, 1, v59);
      v46 = *(v40 + 23);
      if (v46 >= 0)
      {
        v47 = v40;
      }

      else
      {
        v47 = *v40;
      }

      if (v46 >= 0)
      {
        v48 = *(v40 + 23);
      }

      else
      {
        v48 = *(v40 + 8);
      }

      v49 = mlir::Builder::getF16Type(a4 + 1, v45);
      v50 = mlir::Builder::getFloatAttr((a4 + 1), v49, &__p);
      mlir::NamedAttrList::append(v68, v47, v48, v50);
      if (v39 == v61)
      {
        llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v61);
      }

      else
      {
        llvm::detail::IEEEFloat::~IEEEFloat(&v61);
      }

      v40 += 56;
      v41 -= 56;
    }

    while (v41);
  }

  mlir::ValueRange::ValueRange(&__p, v65, v66);
  v51 = mlir::OpBuilder::create<mlir::anec::Elu,mlir::ValueRange,mlir::NamedAttrList &>(a4 + 1, *(a2 + 24), &__p, v68);
  (*(*a4 + 1))(a4, a2, v51);
  v52 = 1;
LABEL_45:
  if (v65 != v67)
  {
    free(v65);
  }

  if (v68[0] != v69)
  {
    free(v68[0]);
  }

  return v52;
}

uint64_t mlir::OpBuilder::create<mlir::anec::Elu,mlir::ValueRange,mlir::NamedAttrList &>(uint64_t *a1, uint64_t a2, uint64_t *a3, mlir::NamedAttrList *a4)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::anec::Elu,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::anec::Elu,mlir::ValueRange,mlir::NamedAttrList &>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v9);
  v12 = *a3;
  v11 = a3[1];
  Attrs = mlir::NamedAttrList::getAttrs(a4);
  mlir::anec::Ceil::build(a1, v21, v12, v11, Attrs, v14);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::anec::Elu,void>::id)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  mlir::OperationState::~OperationState(v21);
  return v16;
}

void *mlir::anonymous namespace::ConvertQuantizationOp<mlir::mps::DequantizeOp>::~ConvertQuantizationOp(void *a1)
{
  v2 = a1[10];
  if (v2 != a1 + 12)
  {
    free(v2);
  }

  v3 = a1[4];
  if (v3 != a1 + 6)
  {
    free(v3);
  }

  return a1;
}

void mlir::anonymous namespace::ConvertQuantizationOp<mlir::mps::DequantizeOp>::~ConvertQuantizationOp(void *__p)
{
  v2 = __p[10];
  if (v2 != __p + 12)
  {
    free(v2);
  }

  v3 = __p[4];
  if (v3 != __p + 6)
  {
    free(v3);
  }

  operator delete(__p);
}

uint64_t mlir::anonymous namespace::OpConversionPatternMPSToANEC<mlir::mps::DequantizeOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 64);
  v33 = *(a3 + 56);
  v34 = 0;
  if (v8)
  {
    for (i = 0; i != v8; v34 = i)
    {
      v10 = (*(mlir::ValueRange::dereference_iterator(&v33, i) + 8) & 0xFFFFFFFFFFFFFFF8);
      if (mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8))
      {
        v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v10 + 8);
        v27 = v10;
        v28 = v11;
        if (v10)
        {
          if (!mlir::CallOpInterface::getArgOperands(&v27) || !mlir::CallOpInterface::getArgOperands(&v27))
          {
            goto LABEL_15;
          }

          ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v27);
          if (v13)
          {
            v14 = 8 * v13;
            while (*ArgAttrsAttr != 0x8000000000000000)
            {
              ++ArgAttrsAttr;
              v14 -= 8;
              if (!v14)
              {
                goto LABEL_3;
              }
            }

LABEL_15:
            *__p = operator new(0x48uLL);
            *&__p[8] = xmmword_1E0982670;
            strcpy(*__p, "Unranked input types or dynamic shapes are not supported on ANEs");
            goto LABEL_34;
          }
        }
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

LABEL_3:
      i = v34 + 1;
    }
  }

  v15 = *(a2 + 36);
  if (v15)
  {
    v16 = a2 - 16;
  }

  else
  {
    v16 = 0;
  }

  if (!v15)
  {
LABEL_36:
    if (*(*(mlir::Block::getParentOp(*(a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
    {
      return 0;
    }

    v25 = *(a3 + 48);
    v30 = *(a3 + 32);
    v31 = v25;
    v32 = *(a3 + 64);
    v26 = *(a3 + 16);
    *__p = *a3;
    *&__p[16] = v26;
    return (*(*a1 + 88))(a1, a2, __p, a4);
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(mlir::detail::OpResultImpl::getNextResultAtOffset(v16, v17) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (!mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8))
    {
      v33 = 0;
      v34 = 0;
      goto LABEL_21;
    }

    v19 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v18 + 8);
    v33 = v18;
    v34 = v19;
    if (v18)
    {
      if (!mlir::CallOpInterface::getArgOperands(&v33) || !mlir::CallOpInterface::getArgOperands(&v33))
      {
        goto LABEL_33;
      }

      v20 = mlir::CallableOpInterface::getArgAttrsAttr(&v33);
      if (v21)
      {
        break;
      }
    }

LABEL_21:
    if (++v17 == v15)
    {
      goto LABEL_36;
    }
  }

  v22 = 8 * v21;
  while (*v20 != 0x8000000000000000)
  {
    ++v20;
    v22 -= 8;
    if (!v22)
    {
      goto LABEL_21;
    }
  }

LABEL_33:
  *__p = operator new(0x50uLL);
  *&__p[8] = xmmword_1E0982680;
  strcpy(*__p, "mps ops with unranked output types or dynamic shapes are not supported on ANEs");
LABEL_34:
  result = mlir::logMatchFailure(__p, *(a2 + 24), a4);
  if ((__p[23] & 0x80000000) != 0)
  {
    v24 = result;
    operator delete(*__p);
    return v24;
  }

  return result;
}

uint64_t mlir::anonymous namespace::ConvertQuantizationOp<mlir::mps::DequantizeOp>::matchAndRewriteWithStaticShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56[3] = *MEMORY[0x1E69E9840];
  v48 = a2;
  v53 = *(a3 + 56);
  v7 = mlir::ValueRange::dereference_iterator(&v53, 0);
  v47 = v7;
  v8 = mlir::ValueRange::dereference_iterator(&v53, 1);
  v9 = mlir::ValueRange::dereference_iterator(&v53, 2);
  if (mlir::mps::DequantizeOp::hasNDParams(&v48))
  {
    __p = operator new(0x48uLL);
    v55 = xmmword_1E09827E0;
    strcpy(__p, "failed: groups / block / batch quantization not supported on ANEC");
    goto LABEL_17;
  }

  v10 = mlir::ValueRange::dereference_iterator(&v53, 3);
  if (!mlir::isConstantFPZero(v10))
  {
    __p = operator new(0x38uLL);
    v55 = xmmword_1E09829A0;
    strcpy(__p, "failed: ANEC doesn't support min operand for Dequantize");
LABEL_17:
    matched = mlir::logMatchFailure(&__p, *(v48 + 24), a4);
    if (SHIBYTE(v55) < 0)
    {
      operator delete(__p);
    }

    return matched;
  }

  if (*(a1 + 104))
  {
    goto LABEL_20;
  }

  v11 = v48;
  v12 = *(a3 + 56);
  v13 = *(a1 + 96);
  if (*(v48 + 36))
  {
    v14 = v48 - 16;
  }

  else
  {
    v14 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v14, 0);
  v16 = mlir::TypeConverter::convertType(v13, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8));
  v17 = v16;
  if (v16)
  {
    v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
  }

  v51[0] = v17;
  v51[1] = v16;
  __p = v12;
  *&v55 = 1;
  __p = mlir::ValueRange::offset_base(&__p, 1);
  *&v55 = 0;
  v18 = mlir::ValueRange::dereference_iterator(&__p, 0);
  __p = 0;
  *&v55 = 0;
  p_p = &__p;
  v56[0] = v18;
  DefiningOp = mlir::Value::getDefiningOp(v56);
  if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, DefiningOp) & 1) == 0 || (SplatFloat = mlir::getSplatFloatValue<float>(__p, v55), (SplatFloat & 0x100000000) == 0))
  {
    __p = operator new(0x38uLL);
    v55 = xmmword_1E0982710;
    strcpy(__p, "failed: ANEC only support scalar constant scale value");
    v21 = mlir::logMatchFailure(&__p, *(v11 + 24), a4);
    if ((SHIBYTE(v55) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    operator delete(__p);
    if (v21)
    {
      return 1;
    }

LABEL_20:
    v23 = *(v48 + 24);
    v24 = (*(v7 + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v24)
    {
      v25 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v24 + 8);
    }

    else
    {
      v25 = 0;
    }

    __p = mlir::getRankPromotionTypeForANE(v24, v25);
    *&v55 = v26;
    ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&__p);
    v29 = v28;
    ElementTypeOrSelf = mlir::getElementTypeOrSelf(v7);
    v56[0] = mlir::MemRefType::get(ArgAttrsAttr, v29, ElementTypeOrSelf, 0, 0, 0);
    v47 = mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a4 + 8), v23, v56, &v47) - 16;
    if ((v32 & 1) == 0)
    {
      return 0;
    }

    if ((v34 & 1) == 0)
    {
      return 0;
    }

    v35 = v48;
    v56[0] = v33;
    mlir::ValueRange::ValueRange(&__p, v56, 1uLL);
    mlir::ConversionPatternRewriter::replaceOp(a4, v35, __p, v55);
    return 1;
  }

  v37 = *&SplatFloat;
  __p = v12;
  *&v55 = 2;
  __p = mlir::ValueRange::offset_base(&__p, 2);
  *&v55 = 0;
  v38 = mlir::ValueRange::dereference_iterator(&__p, 0);
  __p = 0;
  *&v55 = 0;
  p_p = &__p;
  v56[0] = v38;
  v39 = mlir::Value::getDefiningOp(v56);
  if (!v39 || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&p_p, v39) & 1) == 0 || (SplatInt = mlir::getSplatIntValue<int>(__p, v55), v49 = SplatInt, v50 = BYTE4(SplatInt), (SplatInt & 0x100000000) == 0))
  {
    __p = operator new(0x40uLL);
    v55 = xmmword_1E0982990;
    strcpy(__p, "failed: ANEC only support zeroPoint constant scale value");
    v21 = mlir::logMatchFailure(&__p, *(v11 + 24), a4);
    if (SHIBYTE(v55) < 0)
    {
      operator delete(__p);
    }

LABEL_14:
    if (v21)
    {
      return 1;
    }

    goto LABEL_20;
  }

  v41 = *(v11 + 24);
  __p = v12;
  *&v55 = 0;
  p_p = mlir::ValueRange::dereference_iterator(&__p, 0);
  v42 = llvm::detail::IEEEFloat::IEEEFloat(v56, v37);
  v43 = llvm::APFloatBase::IEEEsingle(v42);
  llvm::APFloat::Storage::Storage(&v55, v56, v43);
  llvm::detail::IEEEFloat::~IEEEFloat(v56);
  v44 = mlir::OpBuilder::create<mlir::anec::DeQuant,mlir::ShapedType &,mlir::Value,llvm::APFloat,int &>((a4 + 8), v41, v51, &p_p, &__p, &v49);
  v45 = v44 - 16;
  v46 = v55;
  if (llvm::APFloatBase::PPCDoubleDouble(v44) == v46)
  {
    llvm::detail::DoubleAPFloat::~DoubleAPFloat(&v55);
  }

  else
  {
    llvm::detail::IEEEFloat::~IEEEFloat(&v55);
  }

  v56[0] = v45;
  matched = 1;
  mlir::ValueRange::ValueRange(&__p, v56, 1uLL);
  mlir::ConversionPatternRewriter::replaceOp(a4, v11, __p, v55);
  return matched;
}

unint64_t mlir::anonymous namespace::ConvertQuantizationOp<mlir::mps::DequantizeOp>::createBiasScaleOp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v8 = a4;
  v9 = a3;
  v71[1] = *MEMORY[0x1E69E9840];
  v65 = a3;
  v66 = a2;
  v64 = a4;
  v12 = (*(a3 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v12)
  {
    v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  v63[0] = v12;
  v63[1] = v13;
  v14 = (v8[1] & 0xFFFFFFFFFFFFFFF8);
  if (v14)
  {
    v15 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v14 + 8);
    v61 = v14;
    v62 = v15;
    if (v12)
    {
      v16 = mlir::TypeConverter::convertType(*(a1 + 96), v12);
      v17 = v16;
      if (v16)
      {
        v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8);
      }

      v60[0] = v17;
      v60[1] = v16;
      v69 = v71;
      v70 = 0x100000000;
      if ((mlir::mps::DequantizeLUTOp::getAxis(&v66) & 0x100000000) != 0)
      {
        Axis = mlir::mps::DequantizeLUTOp::getAxis(&v66);
      }

      else
      {
        Axis = 0;
      }

      *__p = Axis;
      mlir::CallableOpInterface::getArgAttrsAttr(v63);
      if ((mlir::getPositivePromotedAxes(__p, 1, v20, &v69, 0, 0) & 1) == 0)
      {
        *__p = operator new(0x38uLL);
        *&__p[8] = xmmword_1E0982900;
        strcpy(*__p, "failed: could not extract positive promoted axes");
        mlir::logMatchFailure(__p, *(v66 + 24), a6);
        if ((__p[23] & 0x80000000) == 0)
        {
          goto LABEL_48;
        }

        v27 = *__p;
LABEL_47:
        operator delete(v27);
        goto LABEL_48;
      }

      if (v70 == 1)
      {
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v61);
        NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v22);
        FunctionType = mlir::func::FuncOp::getFunctionType(&v66);
        v25 = *(v66 + 24);
        {
          v26 = v9 & 0xFFFFFFFFFFFFFF00;
LABEL_60:
          if (v69 != v71)
          {
            free(v69);
          }

          return v26 | v9;
        }

        mlir::CallableOpInterface::getArgAttrsAttr(v60);
        IndexFromDim = mlir::anec::getIndexFromDim(1, v32);
        if (NumElements == 1 || *v69 == IndexFromDim)
        {
          *__p = v8;
          DefiningOp = mlir::Value::getDefiningOp(__p);
          if (DefiningOp)
          {
            {
              v56 = DefiningOp;
              DefiningOp = v56;
            }

            if ((*(**(DefiningOp + 48) + 32))(*(DefiningOp + 48), mlir::detail::TypeIDResolver<mlir::OpTrait::ConstantLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ConstantLike>(void)::Empty>,void>::resolveTypeID(void)::id))
            {
              if (a5)
              {
                v35 = v64;
              }

              else
              {
                v35 = 0;
              }

              if (a5)
              {
                v36 = 0;
              }

              else
              {
                v36 = v64;
              }

              goto LABEL_56;
            }
          }

          if (NumElements == 1)
          {
LABEL_53:
            v52 = mlir::CallableOpInterface::getArgAttrsAttr(v60);
            *__p = mlir::MemRefType::get(v52, v53, FunctionType, 0, 0, 0);
            if (a5)
            {
              GOC = mlir::OpBuilder::create<mlir::anec::ElementwiseMult,mlir::MemRefType,mlir::Value &,mlir::Value &>((a6 + 8), v25, __p, &v65, &v64);
            }

            else
            {
              GOC = mlir::OpBuilder::create<mlir::anec::ElementwiseSub,mlir::MemRefType,mlir::Value &,mlir::Value &>((a6 + 8), v25, __p, &v65, &v64);
            }

LABEL_56:
            if (*(GOC + 36))
            {
              v54 = GOC - 16;
            }

            else
            {
              v54 = 0;
            }

            NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v54, 0);
            LOBYTE(v9) = NextResultAtOffset;
            v26 = NextResultAtOffset & 0xFFFFFFFFFFFFFF00;
            goto LABEL_60;
          }

          v8 = v64;
        }

        *__p = &__p[16];
        *&__p[8] = 0xC00000000;
        v59.__r_.__value_.__r.__words[0] = 0;
        {
          mlir::CallableOpInterface::getArgAttrsAttr(v60);
          v58 = 1;
          llvm::SmallVector<long long,6u>::SmallVector(&v67, v41, &v58);
          v42 = mlir::CallableOpInterface::getArgAttrsAttr(&v61);
          v44 = mlir::ShapedType::getNumElements(v42, v43);
          v45 = v67.__r_.__value_.__r.__words[0];
          *(v67.__r_.__value_.__r.__words[0] + 8 * *v69) = v44;
          v46 = LODWORD(v67.__r_.__value_.__r.__words[1]);
          isSplat = mlir::ElementsAttr::isSplat(&v61);
          v58 = mlir::MemRefType::get(v45, v46, isSplat, 0, 0, 0);
          v48 = mlir::CallableOpInterface::getArgAttrsAttr(v60);
          v50 = v49;
          v51 = mlir::ElementsAttr::isSplat(&v61);
          v57 = mlir::MemRefType::get(v48, v50, v51, 0, 0, 0);
          v64 = (mlir::OpBuilder::create<mlir::anec::Reshape,mlir::MemRefType &,mlir::Value>((a6 + 8), v25, &v58, &v64) - 16);
          v64 = (mlir::OpBuilder::create<mlir::anec::Broadcast,mlir::MemRefType &,mlir::Value &>((a6 + 8), v25, &v57, &v64) - 16);
          if (v67.__r_.__value_.__l.__data_ != &v67.__r_.__value_.__r.__words[2])
          {
            free(v67.__r_.__value_.__l.__data_);
          }

          goto LABEL_51;
        }

        mlir::CallableOpInterface::getArgAttrsAttr(v60);
        if (v40)
        {
          v64 = (GOCConstant - 16);
LABEL_51:
          if (*__p != &__p[16])
          {
            free(*__p);
          }

          goto LABEL_53;
        }

        if (*__p != &__p[16])
        {
          free(*__p);
        }

LABEL_48:
        LOBYTE(v9) = 0;
        v26 = 0;
        goto LABEL_60;
      }

      std::to_string(&v59, v70);
      v28 = std::string::insert(&v59, 0, "Operation requires exactly one axis for quantization, but got ");
      v29 = v28->__r_.__value_.__r.__words[2];
      *&v67.__r_.__value_.__l.__data_ = *&v28->__r_.__value_.__l.__data_;
      v67.__r_.__value_.__r.__words[2] = v29;
      v28->__r_.__value_.__l.__size_ = 0;
      v28->__r_.__value_.__r.__words[2] = 0;
      v28->__r_.__value_.__r.__words[0] = 0;
      v30 = std::string::append(&v67, " axes.");
      v31 = v30->__r_.__value_.__r.__words[2];
      *__p = *&v30->__r_.__value_.__l.__data_;
      *&__p[16] = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      mlir::logMatchFailure(__p, *(v66 + 24), a6);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
        if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_24:
          if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_46;
        }
      }

      else if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      operator delete(v67.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

LABEL_46:
      v27 = v59.__r_.__value_.__r.__words[0];
      goto LABEL_47;
    }
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  *__p = operator new(0x30uLL);
  *&__p[8] = xmmword_1E0982A20;
  strcpy(*__p, "failed: quantization inputs must be static");
  mlir::logMatchFailure(__p, *(a2 + 24), a6);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  return 0;
}