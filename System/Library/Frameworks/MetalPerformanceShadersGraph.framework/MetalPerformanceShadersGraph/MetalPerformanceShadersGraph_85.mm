uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = a3;
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  AttrData = mlir::OpaqueAttr::getAttrData(&v9);
  return mlir::scf::ParallelOp::setInherentAttr(v5 + 64, AttrData, v7, a4);
}

void mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::populateInherentAttrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v6 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64), 4);

  mlir::NamedAttrList::append(a3, "operandSegmentSizes", 19, v6);
}

void mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::initProperties(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  if (a4)
  {
    *a3 = *a4;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::getPropertiesAsAttr(uint64_t a1, uint64_t a2)
{
  Context = mlir::Attribute::getContext((a2 + 24));
  v4 = (a2 + 16 * ((*(a2 + 44) >> 23) & 1) + 64);

  return mlir::scf::ParallelOp::getPropertiesAsAttr(Context, v4);
}

__n128 mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::copyProperties(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

unint64_t mlir::RegisteredOperationName::Model<mlir::scf::ParallelOp>::hashProperties(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = __ROR8__(v2 + 16, 16);
  v4 = (((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)))) >> 47))) ^ v2) >> 32) ^ 0xFF51AFD7ED558CCDLL;
  v5 = 0x9DDFEA08EB382D69 * ((8 * ((-348639895 * ((-348639895 * (v3 ^ (((0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 32) >> 15) ^ (-348639895 * (*a2 ^ 0xED558CCD ^ v3)))) ^ (((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ 0xFF51AFD7ED558CCDLL ^ v3)))) >> 32) >> 15))) ^ v2) + 8) ^ v4);
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::scf::ParallelOp>,mlir::OpTrait::VariadicResults<mlir::scf::ParallelOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ParallelOp>,mlir::OpTrait::VariadicOperands<mlir::scf::ParallelOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::scf::ParallelOp>,mlir::OpTrait::SingleBlock<mlir::scf::ParallelOp>,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::scf::ParallelOp>,mlir::OpTrait::OpInvariants<mlir::scf::ParallelOp>,mlir::BytecodeOpInterface::Trait<mlir::scf::ParallelOp>,mlir::OpTrait::AutomaticAllocationScope<mlir::scf::ParallelOp>,mlir::LoopLikeOpInterface::Trait<mlir::scf::ParallelOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::scf::ParallelOp>,mlir::RegionBranchOpInterface::Trait<mlir::scf::ParallelOp>,mlir::OpTrait::HasParallelRegion<mlir::scf::ParallelOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x10uLL);
  v3 = v2;
  *v2 = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::readProperties;
  v2[1] = mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::writeProperties;
  {
    v7 = v2;
    mlir::OpInterface<mlir::BytecodeOpInterface,mlir::detail::BytecodeOpInterfaceInterfaceTraits>::getInterfaceFor();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface,void>::resolveTypeID(void)::id, v3);
  mlir::detail::InterfaceMap::insertModel<mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>>(a1);
  v4 = malloc(0x28uLL);
  v5 = v4;
  *v4 = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getEntrySuccessorOperands;
  v4[1] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getEntrySuccessorRegions;
  v4[2] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getSuccessorRegions;
  v4[3] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getRegionInvocationBounds;
  v4[4] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::areTypesCompatible;
  {
    v8 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::scf::ExecuteRegionOp>,mlir::OpTrait::VariadicResults<mlir::scf::ExecuteRegionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ExecuteRegionOp>,mlir::OpTrait::ZeroOperands<mlir::scf::ExecuteRegionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ExecuteRegionOp>,mlir::RegionBranchOpInterface::Trait<mlir::scf::ExecuteRegionOp>>();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

uint64_t mlir::detail::BytecodeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::writeProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 16 * ((*(a2 + 44) >> 23) & 1);
  if ((*(*a3 + 104))(a3) <= 5)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    v7 = mlir::detail::DenseArrayAttrImpl<int>::get(Context, (v5 + 64), 4);
    (*(*a3 + 16))(a3, v7);
  }

  result = (*(*a3 + 104))(a3);
  if (result >= 6)
  {

    return mlir::DialectBytecodeWriter::writeSparseArray<int>(a3, (v5 + 64), 4);
  }

  return result;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>>(uint64_t a1)
{
  v2 = malloc(0x68uLL);
  v3 = v2;
  *v2 = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::isDefinedOutsideOfLoop;
  v2[1] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getLoopRegions;
  v2[2] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::moveOutOfLoop;
  v2[3] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::promoteIfSingleIteration;
  v2[4] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getLoopInductionVars;
  v2[5] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getLoopLowerBounds;
  v2[6] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getLoopSteps;
  v2[7] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getLoopUpperBounds;
  v2[8] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getInitsMutable;
  v2[9] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getRegionIterArgs;
  v2[10] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getYieldedValuesMutable;
  v2[11] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getLoopResults;
  v2[12] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::replaceWithAdditionalYields;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ForOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::isDefinedOutsideOfLoop(uint64_t a1, mlir::Operation *a2, uint64_t a3)
{
  v6 = a3;
  v4 = *(mlir::Value::getParentRegion(&v6) + 2);
  if (v4 == a2)
  {
    return 0;
  }

  else
  {
    return mlir::Operation::isProperAncestor(a2, v4) ^ 1;
  }
}

double mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getLoopRegions@<D0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[2] = ((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  *a2 = a2 + 2;
  *&result = 0x600000001;
  a2[1] = 0x600000001;
  return result;
}

double mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getEntrySuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  *&result = mlir::scf::ForallOp::getSuccessorRegions(&v6, a2, a5).n128_u64[0];
  return result;
}

double mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  *&result = mlir::scf::ForallOp::getSuccessorRegions(&v5, a2, a4).n128_u64[0];
  return result;
}

void mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::ParallelOp>::getRegionInvocationBounds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 44) & 0x7FFFFF;
  v6 = *(a5 + 8);
  if (v6 + v5 > *(a5 + 12))
  {
    v9 = a5;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v6 + v5, 12);
    a5 = v9;
    LODWORD(v6) = *(v9 + 8);
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  else if (!v5)
  {
    goto LABEL_6;
  }

  v7 = *a5 + 12 * v6;
  v8 = v5;
  do
  {
    *v7 = 0;
    *(v7 + 8) = 0;
    v7 += 12;
    --v8;
  }

  while (v8);
  LODWORD(v6) = *(a5 + 8);
LABEL_6:
  *(a5 + 8) = v6 + v5;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v119 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>();
    a1 = v119;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneRegion>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_60;
    }
  }

  v106 = v1;
  v120 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>();
  v1 = v106;
  a1 = v120;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_61;
  }

LABEL_60:
  v107 = v1;
  v121 = a1;
  v94 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v94;
  v1 = v107;
  a1 = v121;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_62;
  }

LABEL_61:
  v108 = v1;
  v122 = a1;
  v83 = v3;
  v95 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v3 = v83;
  v2 = v95;
  v1 = v108;
  a1 = v122;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_63;
  }

LABEL_62:
  v109 = v1;
  v123 = a1;
  v84 = v3;
  v96 = v2;
  v73 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::BranchOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v4 = v73;
  v3 = v84;
  v2 = v96;
  v1 = v109;
  a1 = v123;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::AttrSizedOperandSegments<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AttrSizedOperandSegments>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_64;
  }

LABEL_63:
  v110 = v1;
  v124 = a1;
  v85 = v3;
  v97 = v2;
  v64 = v5;
  v74 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
  v5 = v64;
  v4 = v74;
  v3 = v85;
  v2 = v97;
  v1 = v110;
  a1 = v124;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_65;
  }

LABEL_64:
  v111 = v1;
  v125 = a1;
  v86 = v3;
  v98 = v2;
  v65 = v5;
  v75 = v4;
  v56 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>();
  v6 = v56;
  v5 = v65;
  v4 = v75;
  v3 = v86;
  v2 = v98;
  v1 = v111;
  a1 = v125;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_66;
  }

LABEL_65:
  v112 = v1;
  v126 = a1;
  v87 = v3;
  v99 = v2;
  v66 = v5;
  v76 = v4;
  v49 = v7;
  v57 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v7 = v49;
  v6 = v57;
  v5 = v66;
  v4 = v76;
  v3 = v87;
  v2 = v99;
  v1 = v112;
  a1 = v126;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_67;
  }

LABEL_66:
  v113 = v1;
  v127 = a1;
  v88 = v3;
  v100 = v2;
  v67 = v5;
  v77 = v4;
  v50 = v7;
  v58 = v6;
  v43 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v8 = v43;
  v7 = v50;
  v6 = v58;
  v5 = v67;
  v4 = v77;
  v3 = v88;
  v2 = v100;
  v1 = v113;
  a1 = v127;
  v9 = mlir::detail::TypeIDResolver<mlir::BytecodeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::BytecodeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

    goto LABEL_68;
  }

LABEL_67:
  v114 = v1;
  v128 = a1;
  v89 = v3;
  v101 = v2;
  v68 = v5;
  v78 = v4;
  v51 = v7;
  v59 = v6;
  v38 = v9;
  v44 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AffineScope,mlir::OpTrait::AutomaticAllocationScope,mlir::SymbolOpInterface::Trait,mlir::CallableOpInterface::Trait,mlir::FunctionOpInterface::Trait,mlir::OpTrait::IsIsolatedFromAbove,mlir::OpAsmOpInterface::Trait>();
  v9 = v38;
  v8 = v44;
  v7 = v51;
  v6 = v59;
  v5 = v68;
  v4 = v78;
  v3 = v89;
  v2 = v101;
  v1 = v114;
  a1 = v128;
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::AutomaticAllocationScope<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AutomaticAllocationScope>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_12:
    v11 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_13;
    }

    goto LABEL_69;
  }

LABEL_68:
  v115 = v1;
  v129 = a1;
  v90 = v3;
  v102 = v2;
  v69 = v5;
  v79 = v4;
  v52 = v7;
  v60 = v6;
  v39 = v9;
  v45 = v8;
  v34 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
  v10 = v34;
  v9 = v39;
  v8 = v45;
  v7 = v52;
  v6 = v60;
  v5 = v69;
  v4 = v79;
  v3 = v90;
  v2 = v102;
  v1 = v115;
  a1 = v129;
  v11 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_13:
    v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_14;
    }

LABEL_70:
    v117 = v1;
    v131 = a1;
    v92 = v3;
    v104 = v2;
    v71 = v5;
    v81 = v4;
    v54 = v7;
    v62 = v6;
    v41 = v9;
    v47 = v8;
    v32 = v11;
    v36 = v10;
    v29 = v12;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>();
    v12 = v29;
    v11 = v32;
    v10 = v36;
    v9 = v41;
    v8 = v47;
    v7 = v54;
    v6 = v62;
    v5 = v71;
    v4 = v81;
    v3 = v92;
    v2 = v104;
    v1 = v117;
    a1 = v131;
    v13 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasParallelRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParallelRegion>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_71;
  }

LABEL_69:
  v116 = v1;
  v130 = a1;
  v91 = v3;
  v103 = v2;
  v70 = v5;
  v80 = v4;
  v53 = v7;
  v61 = v6;
  v40 = v9;
  v46 = v8;
  v31 = v11;
  v35 = v10;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
  v11 = v31;
  v10 = v35;
  v9 = v40;
  v8 = v46;
  v7 = v53;
  v6 = v61;
  v5 = v70;
  v4 = v80;
  v3 = v91;
  v2 = v103;
  v1 = v116;
  a1 = v130;
  v12 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_70;
  }

LABEL_14:
  v13 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasParallelRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParallelRegion>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_71:
  v118 = v1;
  v132 = a1;
  v93 = v3;
  v105 = v2;
  v72 = v5;
  v82 = v4;
  v55 = v7;
  v63 = v6;
  v42 = v9;
  v48 = v8;
  v33 = v11;
  v37 = v10;
  v28 = v13;
  v30 = v12;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::DestinationStyleOpInterface::Trait,mlir::OpTrait::HasParallelRegion>();
  v13 = v28;
  v12 = v30;
  v11 = v33;
  v10 = v37;
  v9 = v42;
  v8 = v48;
  v7 = v55;
  v6 = v63;
  v5 = v72;
  v4 = v82;
  v3 = v93;
  v2 = v105;
  v1 = v118;
  a1 = v132;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || v12 == a1 || v13 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasParallelRegion<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParallelRegion>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<Empty>]";
  v6 = 128;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyOneRegion(a1, a2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3))
  {
    return 0;
  }

  if ((mlir::OpTrait::impl::verifyOperandSizeAttr(a1, "operandSegmentSizes", 0x13uLL) & 1) == 0)
  {
    return 0;
  }

  if ((mlir::OpTrait::SingleBlock<mlir::memref::GenericAtomicRMWOp>::verifyTrait(a1) & 1) == 0)
  {
    return 0;
  }

  v6 = a1;
  if ((mlir::scf::ParallelOp::verifyInvariantsImpl(&v6) & 1) == 0)
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyOneRegion(a1, v5))
  {
    return 0;
  }

  v6 = a1;
  return mlir::scf::ParallelOp::verify(&v6) & 1;
}

uint64_t mlir::Op<mlir::scf::ParallelOp,mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasParallelRegion>::verifyRegionInvariants(mlir::detail *a1, uint64_t a2)
{
  if ((mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::scf::ParallelOp>::verifyRegionTrait(a1, a2) & 1) != 0 && mlir::detail::verifyLoopLikeOpInterface(a1, v3))
  {
    return mlir::detail::verifyTypesAlongControlFlowEdges(a1, v4) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::ReduceOp>::Impl<mlir::scf::ParallelOp>::verifyRegionTrait(uint64_t a1, uint64_t a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 44) & 0x7FFFFF;
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 24 * v2;
  while (1)
  {
    v7 = (((v5 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40) + v4);
    if (v7 != *v7)
    {
      v8 = v7[1];
      v9 = v8 ? v8 - 8 : 0;
      v10 = *(MPSGraphDelegateCompiler.precompilationDescriptor.modify(*(v9 + 32), a2) + 48);
      if (*(v10 + 16) != &mlir::detail::TypeIDResolver<mlir::scf::ReduceOp,void>::id)
      {
        break;
      }
    }

    v4 += 24;
    if (v6 == v4)
    {
      return 1;
    }
  }

  v42 = 1283;
  v41[0] = "expects regions to end with '";
  v41[2] = "scf.reduce";
  v41[3] = 10;
  v43[0] = v41;
  v43[2] = "', found '";
  v44 = 770;
  v53 = *(v10 + 8);
  AttrData = mlir::OpaqueAttr::getAttrData(&v53);
  v13 = v44;
  if (v44 == 1)
  {
    v45 = AttrData;
    v46 = v12;
    v49 = 261;
    v14 = 5;
LABEL_18:
    v50[0] = AttrData;
    v50[1] = v12;
    v50[2] = "'";
    v15 = 3;
    goto LABEL_19;
  }

  if (v44)
  {
    v17 = v43[0];
    v14 = 2;
    if (HIBYTE(v44) != 1)
    {
      v13 = 2;
      v17 = v43;
    }

    v45 = v17;
    v46 = v43[1];
    v47 = AttrData;
    v48 = v12;
    LOBYTE(v49) = v13;
    HIBYTE(v49) = 5;
    AttrData = &v45;
    goto LABEL_18;
  }

  v14 = 0;
  v49 = 256;
  v15 = 1;
LABEL_19:
  v51 = v14;
  v52 = v15;
  mlir::Operation::emitOpError(a1, v50, &v53);
  v18 = mlir::Diagnostic::attachNote(&v54, 0, 0);
  v19 = *(v18 + 16);
  LODWORD(v37) = 3;
  v38 = "in custom textual format, the absence of terminator implies '";
  v39 = 61;
  v20 = *(v18 + 24);
  v21 = &v37;
  if (v20 >= *(v18 + 28))
  {
    if (v19 <= &v37 && v19 + 24 * v20 > &v37)
    {
      v35 = &v37 - v19;
      v36 = v18;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v18 + 16, v18 + 32, v20 + 1, 24);
      v18 = v36;
      v19 = *(v36 + 16);
      v21 = &v35[v19];
    }

    else
    {
      v34 = v18;
      llvm::SmallVectorBase<unsigned int>::grow_pod(v18 + 16, v18 + 32, v20 + 1, 24);
      v18 = v34;
      v19 = *(v34 + 16);
      v21 = &v37;
    }
  }

  v22 = v19 + 24 * *(v18 + 24);
  v23 = *v21;
  *(v22 + 16) = v21[2];
  *v22 = v23;
  ++*(v18 + 24);
  v40 = 262;
  v37 = "scf.reduce";
  v38 = 10;
  v24 = mlir::Diagnostic::operator<<(v18, &v37);
  mlir::Diagnostic::operator<<(v24, 39);
  result = getEnumTag for MPSGraphDelegateKernelError();
  v25 = result;
  if (v53)
  {
    mlir::InFlightDiagnostic::report(&v53);
    result = v25;
  }

  if (v62 == 1)
  {
    if (v61 != &v62)
    {
      free(v61);
      result = v25;
    }

    v26 = __p;
    if (__p)
    {
      v27 = v60;
      v28 = __p;
      if (v60 != __p)
      {
        do
        {
          v27 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v27 - 1);
        }

        while (v27 != v26);
        v28 = __p;
      }

      v60 = v26;
      operator delete(v28);
      result = v25;
    }

    v29 = v57;
    if (v57)
    {
      v30 = v58;
      v31 = v57;
      if (v58 != v57)
      {
        do
        {
          v33 = *--v30;
          v32 = v33;
          *v30 = 0;
          if (v33)
          {
            operator delete[](v32);
          }
        }

        while (v30 != v29);
        v31 = v57;
      }

      v58 = v29;
      operator delete(v31);
      result = v25;
    }

    if (v55 != &v56)
    {
      free(v55);
      return v25;
    }
  }

  return result;
}

void *mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::Model(void *a1, uint64_t a2)
{
  v14[6] = *MEMORY[0x1E69E9840];
  v12 = v14;
  v13 = 0x300000000;
  v4 = malloc(0x10uLL);
  v5 = v4;
  *v4 = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::scf::ReduceOp>::getMutableSuccessorOperands;
  v4[1] = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::scf::ReduceOp>::getSuccessorRegions;
  {
    v11 = v4;
    mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor();
    v5 = v11;
  }

  mlir::detail::InterfaceMap::insert(&v12, mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id, v5);
  mlir::OperationName::Impl::Impl(a1, "scf.reduce", 10, a2, &mlir::detail::TypeIDResolver<mlir::scf::ReduceOp,void>::id, &v12);
  v6 = v12;
  if (v13)
  {
    v7 = 16 * v13;
    v8 = (v12 + 8);
    do
    {
      v9 = *v8;
      v8 += 2;
      free(v9);
      v7 -= 16;
    }

    while (v7);
    v6 = v12;
  }

  if (v6 != v14)
  {
    free(v6);
  }

  *a1 = &unk_1F5B066E0;
  return a1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F5B05788;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::scf::ReduceOp,mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  a5(v23, a6);
  if (v23[0])
  {
    v20 = 3;
    v21 = "this operation does not support properties";
    v22 = 42;
    v6 = &v20;
    v7 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v19 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v7 = v24;
        v6 = (v24 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v6 = &v20;
        v7 = v24;
      }
    }

    v8 = &v7[24 * v25];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v25;
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            operator delete[](v16);
          }
        }

        while (v14 != v13);
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != v27)
    {
      free(v24);
    }
  }

  return 0;
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::scf::ReduceOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    ParentOp = mlir::Block::getParentOp(v6);
    v9 = ParentOp;
    if (ParentOp)
    {
      ParentOp = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
    }

    v10 = *(a2 + 16);
    v13 = v9;
    v14 = ParentOp;
    if (v10)
    {
      Parent = mlir::Block::getParent(v10);
    }

    else
    {
      Parent = 0;
    }
  }

  else
  {
    Parent = 0;
    v13 = 0;
    v14 = 0;
  }

  return mlir::RegionBranchOpInterface::getSuccessorRegions(&v13, Parent, a5);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>();
    a1 = v54;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  v46 = v1;
  v55 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
  v1 = v46;
  a1 = v55;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  v47 = v1;
  v56 = a1;
  v39 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v39;
  v1 = v47;
  a1 = v56;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  v48 = v1;
  v57 = a1;
  v33 = v3;
  v40 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v3 = v33;
  v2 = v40;
  v1 = v48;
  a1 = v57;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  v49 = v1;
  v58 = a1;
  v34 = v3;
  v41 = v2;
  v28 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::VariadicRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::IsTerminator,mlir::OpTrait::HasRecursiveMemoryEffects,mlir::RegionBranchTerminatorOpInterface::Trait>();
  v4 = v28;
  v3 = v34;
  v2 = v41;
  v1 = v49;
  a1 = v58;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  v50 = v1;
  v59 = a1;
  v35 = v3;
  v42 = v2;
  v24 = v5;
  v29 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v24;
  v4 = v29;
  v3 = v35;
  v2 = v42;
  v1 = v50;
  a1 = v59;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

LABEL_45:
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_46;
  }

LABEL_44:
  v51 = v1;
  v60 = a1;
  v36 = v3;
  v43 = v2;
  v25 = v5;
  v30 = v4;
  v21 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v6 = v21;
  v5 = v25;
  v4 = v30;
  v3 = v36;
  v2 = v43;
  v1 = v51;
  a1 = v60;
  v7 = mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_45;
  }

LABEL_9:
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_46:
  v53 = v1;
  v62 = a1;
  v38 = v3;
  v45 = v2;
  v27 = v5;
  v32 = v4;
  v20 = v7;
  v23 = v6;
  v18 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
  v8 = v18;
  v7 = v20;
  v6 = v23;
  v5 = v27;
  v4 = v32;
  v3 = v38;
  v2 = v45;
  v1 = v53;
  a1 = v62;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::VariadicRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicRegions>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::VariadicRegions<Empty>]";
  v6 = 87;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

const char *llvm::getTypeName<mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl<Empty>]";
  v6 = 110;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

BOOL mlir::op_definition_impl::verifyTraits<mlir::OpTrait::VariadicRegions<mlir::scf::ReduceOp>,mlir::OpTrait::ZeroResults<mlir::scf::ReduceOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ReduceOp>,mlir::OpTrait::VariadicOperands<mlir::scf::ReduceOp>,mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl<mlir::scf::ReduceOp>,mlir::OpTrait::OpInvariants<mlir::scf::ReduceOp>,mlir::OpTrait::IsTerminator<mlir::scf::ReduceOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::scf::ReduceOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ReduceOp>>(unsigned int *a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroResults(a1, a2) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v3) && (mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl<mlir::scf::ReduceOp>::verifyTrait(a1) & 1) != 0)
  {
    v5 = a1[11];
    if ((v5 & 0x7FFFFF) == 0)
    {
      return mlir::OpTrait::impl::verifyIsTerminator(a1, v4);
    }

    v6 = 0;
    v7 = ((&a1[4 * ((v5 >> 23) & 1) + 17] + ((v5 >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * a1[10];
    v8 = 24 * (v5 & 0x7FFFFF);
    while ((mlir::scf::__mlir_ods_local_region_constraint_SCFOps2(a1, v7, "reductions", 10, v6) & 1) != 0)
    {
      ++v6;
      v7 += 24;
      v8 -= 24;
      if (!v8)
      {
        return mlir::OpTrait::impl::verifyIsTerminator(a1, v4);
      }
    }
  }

  return 0;
}

uint64_t mlir::OpTrait::HasParent<mlir::scf::ParallelOp>::Impl<mlir::scf::ReduceOp>::verifyTrait(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v1 = a1;
    ParentOp = mlir::Block::getParentOp(*(a1 + 16));
    a1 = v1;
    if (ParentOp)
    {
      if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ParallelOp,void>::id)
      {
        return 1;
      }
    }
  }

  v30 = 257;
  mlir::Operation::emitOpError(a1, &v29, &v36);
  if (!v36)
  {
    goto LABEL_12;
  }

  LODWORD(v31) = 3;
  v32 = "expects parent op ";
  v33 = 18;
  v3 = &v31;
  v4 = v38;
  if (v39 >= v40)
  {
    if (v38 <= &v31 && v38 + 24 * v39 > &v31)
    {
      v26 = &v31 - v38;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
      v4 = v38;
      v3 = (v38 + v26);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
      v3 = &v31;
      v4 = v38;
    }
  }

  v5 = &v4[24 * v39];
  v6 = *v3;
  *(v5 + 2) = v3[2];
  *v5 = v6;
  v7 = ++v39;
  if (v36)
  {
    LODWORD(v31) = 3;
    v32 = "'";
    v33 = 1;
    v8 = &v31;
    v9 = v38;
    if (v7 >= v40)
    {
      if (v38 <= &v31 && v38 + 24 * v7 > &v31)
      {
        v27 = &v31 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v7 + 1, 24);
        v9 = v38;
        v8 = (v38 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v7 + 1, 24);
        v8 = &v31;
        v9 = v38;
      }
    }

    v10 = &v9[24 * v39];
    v11 = *v8;
    *(v10 + 2) = v8[2];
    *v10 = v11;
    ++v39;
    v34 = "scf.parallel";
    v35 = 12;
    if (v36)
    {
      v31 = ", ";
      llvm::interleave<llvm::StringLiteral const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(llvm::ArrayRef<llvm::StringLiteral> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(void)#1},void>(&v34, &v36, v37, v37, &v31);
      if (v36)
      {
        LODWORD(v31) = 3;
        v32 = "'";
        v33 = 1;
        v12 = &v31;
        v13 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v31 && v38 + 24 * v39 > &v31)
          {
            v28 = &v31 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v13 = v38;
            v12 = (v38 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v12 = &v31;
            v13 = v38;
          }
        }

        v14 = &v13[24 * v39];
        v15 = *v12;
        *(v14 + 2) = v12[2];
        *v14 = v15;
        ++v39;
      }
    }
  }

  else
  {
LABEL_12:
    v34 = "scf.parallel";
    v35 = 12;
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v45;
      v19 = __p;
      if (v45 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v45 = v17;
      operator delete(v19);
    }

    v20 = v42;
    if (v42)
    {
      v21 = v43;
      v22 = v42;
      if (v43 != v42)
      {
        do
        {
          v24 = *--v21;
          v23 = v24;
          *v21 = 0;
          if (v24)
          {
            operator delete[](v23);
          }
        }

        while (v21 != v20);
        v22 = v42;
      }

      v43 = v20;
      operator delete(v22);
    }

    if (v38 != v41)
    {
      free(v38);
    }
  }

  return v16;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F5B05788;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::printAssembly(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::ReduceReturnOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  a5(v23, a6);
  if (v23[0])
  {
    v20 = 3;
    v21 = "this operation does not support properties";
    v22 = 42;
    v6 = &v20;
    v7 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v19 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v7 = v24;
        v6 = (v24 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v6 = &v20;
        v7 = v24;
      }
    }

    v8 = &v7[24 * v25];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v25;
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            operator delete[](v16);
          }
        }

        while (v14 != v13);
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != v27)
    {
      free(v24);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ReduceReturnOp>,mlir::OpTrait::ZeroResults<mlir::scf::ReduceReturnOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ReduceReturnOp>,mlir::OpTrait::OneOperand<mlir::scf::ReduceReturnOp>,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl<mlir::scf::ReduceReturnOp>,mlir::OpTrait::OpInvariants<mlir::scf::ReduceReturnOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ReduceReturnOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ReduceReturnOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ReduceReturnOp>,mlir::OpTrait::IsTerminator<mlir::scf::ReduceReturnOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::scf::ReduceReturnOp>::getSpeculatability;
  {
    v7 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v7;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::scf::ReduceReturnOp>::getEffects;
  {
    v8 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v5 = v8;
  }

  v6 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v6, v5);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v65 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    a1 = v65;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  v56 = v1;
  v66 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
  v1 = v56;
  a1 = v66;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  v57 = v1;
  v67 = a1;
  v48 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v48;
  v1 = v57;
  a1 = v67;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  v58 = v1;
  v68 = a1;
  v41 = v3;
  v49 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v41;
  v2 = v49;
  v1 = v58;
  a1 = v68;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  v59 = v1;
  v69 = a1;
  v42 = v3;
  v50 = v2;
  v35 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v4 = v35;
  v3 = v42;
  v2 = v50;
  v1 = v59;
  a1 = v69;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  v60 = v1;
  v70 = a1;
  v43 = v3;
  v51 = v2;
  v30 = v5;
  v36 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v30;
  v4 = v36;
  v3 = v43;
  v2 = v51;
  v1 = v60;
  a1 = v70;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  v61 = v1;
  v71 = a1;
  v44 = v3;
  v52 = v2;
  v31 = v5;
  v37 = v4;
  v26 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v6 = v26;
  v5 = v31;
  v4 = v37;
  v3 = v44;
  v2 = v52;
  v1 = v61;
  a1 = v71;
  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

LABEL_50:
    v63 = v1;
    v73 = a1;
    v46 = v3;
    v54 = v2;
    v33 = v5;
    v39 = v4;
    v24 = v7;
    v28 = v6;
    v21 = v8;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    v8 = v21;
    v7 = v24;
    v6 = v28;
    v5 = v33;
    v4 = v39;
    v3 = v46;
    v2 = v54;
    v1 = v63;
    a1 = v73;
    v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_51;
  }

LABEL_49:
  v62 = v1;
  v72 = a1;
  v45 = v3;
  v53 = v2;
  v32 = v5;
  v38 = v4;
  v23 = v7;
  v27 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v7 = v23;
  v6 = v27;
  v5 = v32;
  v4 = v38;
  v3 = v45;
  v2 = v53;
  v1 = v62;
  a1 = v72;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_50;
  }

LABEL_10:
  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_51:
  v64 = v1;
  v74 = a1;
  v47 = v3;
  v55 = v2;
  v34 = v5;
  v40 = v4;
  v25 = v7;
  v29 = v6;
  v20 = v9;
  v22 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v9 = v20;
  v8 = v22;
  v7 = v25;
  v6 = v29;
  v5 = v34;
  v4 = v40;
  v3 = v47;
  v2 = v55;
  v1 = v64;
  a1 = v74;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl<Empty>]";
  v6 = 108;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

void llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallImpl<mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const>(uint64_t a1, mlir::Operation *a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  mlir::OpState::printOpName(a2, a3, a4, a5);
  v7 = a2;
  mlir::memref::AtomicYieldOp::print(&v7, a3);
}

BOOL mlir::Op<mlir::scf::ReduceReturnOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>::verifyInvariants(mlir::OpTrait::impl *a1, mlir::Operation *a2)
{
  if (!mlir::OpTrait::impl::verifyZeroRegions(a1, a2) || !mlir::OpTrait::impl::verifyZeroResults(a1, v3) || !mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) || !mlir::OpTrait::impl::verifyOneOperand(a1, v5) || (mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl<mlir::scf::ReduceReturnOp>::verifyTrait(a1) & 1) == 0 || !mlir::OpTrait::impl::verifyIsTerminator(a1, v6))
  {
    return 0;
  }

  v8 = a1;
  return mlir::scf::ReduceReturnOp::verify(&v8);
}

uint64_t mlir::OpTrait::HasParent<mlir::scf::ReduceOp>::Impl<mlir::scf::ReduceReturnOp>::verifyTrait(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v1 = a1;
    ParentOp = mlir::Block::getParentOp(*(a1 + 16));
    a1 = v1;
    if (ParentOp)
    {
      if (*(*(ParentOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ReduceOp,void>::id)
      {
        return 1;
      }
    }
  }

  v30 = 257;
  mlir::Operation::emitOpError(a1, &v29, &v36);
  if (!v36)
  {
    goto LABEL_12;
  }

  LODWORD(v31) = 3;
  v32 = "expects parent op ";
  v33 = 18;
  v3 = &v31;
  v4 = v38;
  if (v39 >= v40)
  {
    if (v38 <= &v31 && v38 + 24 * v39 > &v31)
    {
      v26 = &v31 - v38;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
      v4 = v38;
      v3 = (v38 + v26);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
      v3 = &v31;
      v4 = v38;
    }
  }

  v5 = &v4[24 * v39];
  v6 = *v3;
  *(v5 + 2) = v3[2];
  *v5 = v6;
  v7 = ++v39;
  if (v36)
  {
    LODWORD(v31) = 3;
    v32 = "'";
    v33 = 1;
    v8 = &v31;
    v9 = v38;
    if (v7 >= v40)
    {
      if (v38 <= &v31 && v38 + 24 * v7 > &v31)
      {
        v27 = &v31 - v38;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v7 + 1, 24);
        v9 = v38;
        v8 = (v38 + v27);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v7 + 1, 24);
        v8 = &v31;
        v9 = v38;
      }
    }

    v10 = &v9[24 * v39];
    v11 = *v8;
    *(v10 + 2) = v8[2];
    *v10 = v11;
    ++v39;
    v34 = "scf.reduce";
    v35 = 10;
    if (v36)
    {
      v31 = ", ";
      llvm::interleave<llvm::StringLiteral const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(llvm::ArrayRef<llvm::StringLiteral> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(void)#1},void>(&v34, &v36, v37, v37, &v31);
      if (v36)
      {
        LODWORD(v31) = 3;
        v32 = "'";
        v33 = 1;
        v12 = &v31;
        v13 = v38;
        if (v39 >= v40)
        {
          if (v38 <= &v31 && v38 + 24 * v39 > &v31)
          {
            v28 = &v31 - v38;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v13 = v38;
            v12 = (v38 + v28);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v38, v41, v39 + 1, 24);
            v12 = &v31;
            v13 = v38;
          }
        }

        v14 = &v13[24 * v39];
        v15 = *v12;
        *(v14 + 2) = v12[2];
        *v14 = v15;
        ++v39;
      }
    }
  }

  else
  {
LABEL_12:
    v34 = "scf.reduce";
    v35 = 10;
  }

  v16 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v36);
  if (v36)
  {
    mlir::InFlightDiagnostic::report(&v36);
  }

  if (v47 == 1)
  {
    if (v46 != &v47)
    {
      free(v46);
    }

    v17 = __p;
    if (__p)
    {
      v18 = v45;
      v19 = __p;
      if (v45 != __p)
      {
        do
        {
          v18 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v18 - 1);
        }

        while (v18 != v17);
        v19 = __p;
      }

      v45 = v17;
      operator delete(v19);
    }

    v20 = v42;
    if (v42)
    {
      v21 = v43;
      v22 = v42;
      if (v43 != v42)
      {
        do
        {
          v24 = *--v21;
          v23 = v24;
          *v21 = 0;
          if (v24)
          {
            operator delete[](v23);
          }
        }

        while (v21 != v20);
        v22 = v42;
      }

      v43 = v20;
      operator delete(v22);
    }

    if (v38 != v41)
    {
      free(v38);
    }
  }

  return v16;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F5B05788;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v5, a2);
  v3 = v6;
  if (v6 >= 8)
  {
    if ((v6 & 4) != 0)
    {
      v4 = result;
      (*((v6 & 0xFFFFFFFFFFFFFFF8) + 16))();
      result = v4;
    }

    if ((v3 & 2) == 0)
    {
      llvm::deallocate_buffer(v5[0], v5[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
  v7 = v10;
  if (v10 >= 8)
  {
    if ((v10 & 4) != 0)
    {
      if ((v10 & 2) != 0)
      {
        v8 = v9;
      }

      else
      {
        v8 = v9[0];
      }

      result = (*((v10 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v6);
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v9[0], v9[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::WhileOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  a5(v23, a6);
  if (v23[0])
  {
    v20 = 3;
    v21 = "this operation does not support properties";
    v22 = 42;
    v6 = &v20;
    v7 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v19 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v7 = v24;
        v6 = (v24 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v6 = &v20;
        v7 = v24;
      }
    }

    v8 = &v7[24 * v25];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v25;
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            operator delete[](v16);
          }
        }

        while (v14 != v13);
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != v27)
    {
      free(v24);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::NRegions<2u>::Impl<mlir::scf::WhileOp>,mlir::OpTrait::VariadicResults<mlir::scf::WhileOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::WhileOp>,mlir::OpTrait::VariadicOperands<mlir::scf::WhileOp>,mlir::OpTrait::SingleBlock<mlir::scf::WhileOp>,mlir::OpTrait::OpInvariants<mlir::scf::WhileOp>,mlir::RegionBranchOpInterface::Trait<mlir::scf::WhileOp>,mlir::LoopLikeOpInterface::Trait<mlir::scf::WhileOp>,mlir::OpTrait::HasRecursiveMemoryEffects<mlir::scf::WhileOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(0x28uLL);
  v3 = v2;
  *v2 = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getEntrySuccessorOperands;
  v2[1] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getEntrySuccessorRegions;
  v2[2] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getSuccessorRegions;
  v2[3] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getRegionInvocationBounds;
  v2[4] = mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::areTypesCompatible;
  {
    v4 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::OneRegion<mlir::scf::ExecuteRegionOp>,mlir::OpTrait::VariadicResults<mlir::scf::ExecuteRegionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ExecuteRegionOp>,mlir::OpTrait::ZeroOperands<mlir::scf::ExecuteRegionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ExecuteRegionOp>,mlir::RegionBranchOpInterface::Trait<mlir::scf::ExecuteRegionOp>>();
    v3 = v4;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface,void>::resolveTypeID(void)::id, v3);

  mlir::detail::InterfaceMap::insertModel<mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>>(a1);
}

void mlir::detail::RegionBranchOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getRegionInvocationBounds(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 44) & 0x7FFFFF;
  v6 = *(a5 + 8);
  if (v6 + v5 > *(a5 + 12))
  {
    v9 = a5;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a5, a5 + 16, v6 + v5, 12);
    a5 = v9;
    LODWORD(v6) = *(v9 + 8);
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  else if (!v5)
  {
    goto LABEL_6;
  }

  v7 = *a5 + 12 * v6;
  v8 = v5;
  do
  {
    *v7 = 0;
    *(v7 + 8) = 0;
    v7 += 12;
    --v8;
  }

  while (v8);
  LODWORD(v6) = *(a5 + 8);
LABEL_6:
  *(a5 + 8) = v6 + v5;
}

void mlir::detail::InterfaceMap::insertModel<mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>>(uint64_t a1)
{
  v2 = malloc(0x68uLL);
  v3 = v2;
  *v2 = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::isDefinedOutsideOfLoop;
  v2[1] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getLoopRegions;
  v2[2] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::moveOutOfLoop;
  v2[3] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::promoteIfSingleIteration;
  v2[4] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getLoopInductionVars;
  v2[5] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getLoopLowerBounds;
  v2[6] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getLoopSteps;
  v2[7] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getLoopUpperBounds;
  v2[8] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getInitsMutable;
  v2[9] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getRegionIterArgs;
  v2[10] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getYieldedValuesMutable;
  v2[11] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getLoopResults;
  v2[12] = mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::replaceWithAdditionalYields;
  {
    v5 = v2;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::ForOp>>();
    v3 = v5;
  }

  v4 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v4, v3);
}

uint64_t mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::isDefinedOutsideOfLoop(uint64_t a1, mlir::Operation *a2, uint64_t a3)
{
  v6 = a3;
  v4 = *(mlir::Value::getParentRegion(&v6) + 2);
  if (v4 == a2)
  {
    return 0;
  }

  else
  {
    return mlir::Operation::isProperAncestor(a2, v4) ^ 1;
  }
}

double mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getLoopRegions@<D0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = ((a1 + 16 * ((*(a1 + 44) >> 23) & 1) + ((*(a1 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  a2[2] = v2;
  *a2 = a2 + 2;
  a2[3] = v2 + 24;
  *&result = 0x600000002;
  a2[1] = 0x600000002;
  return result;
}

uint64_t mlir::detail::LoopLikeOpInterfaceInterfaceTraits::Model<mlir::scf::WhileOp>::getRegionIterArgs(uint64_t a1, uint64_t a2)
{
  v2 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v2)
  {
    v3 = v2 - 8;
  }

  else
  {
    v3 = 0;
  }

  return *(v3 + 48);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::NRegions<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NRegions<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v54 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::NoRegionArguments,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::OpTrait::InferTypeOpAdaptor,mlir::OpTrait::HasRecursiveMemoryEffects>();
    a1 = v54;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::NRegions<2u>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::NRegions<2u>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  v46 = v1;
  v55 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>();
  v1 = v46;
  a1 = v55;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_40:
  v47 = v1;
  v56 = a1;
  v39 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v39;
  v1 = v47;
  a1 = v56;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_41:
  v48 = v1;
  v57 = a1;
  v33 = v3;
  v40 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v3 = v33;
  v2 = v40;
  v1 = v48;
  a1 = v57;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_42:
  v49 = v1;
  v58 = a1;
  v34 = v3;
  v41 = v2;
  v28 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
  v4 = v28;
  v3 = v34;
  v2 = v41;
  v1 = v49;
  a1 = v58;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::SingleBlock<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SingleBlock>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_44;
  }

LABEL_43:
  v50 = v1;
  v59 = a1;
  v35 = v3;
  v42 = v2;
  v24 = v5;
  v29 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v24;
  v4 = v29;
  v3 = v35;
  v2 = v42;
  v1 = v50;
  a1 = v59;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

LABEL_45:
    v52 = v1;
    v61 = a1;
    v37 = v3;
    v44 = v2;
    v26 = v5;
    v31 = v4;
    v19 = v7;
    v22 = v6;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
    v7 = v19;
    v6 = v22;
    v5 = v26;
    v4 = v31;
    v3 = v37;
    v2 = v44;
    v1 = v52;
    a1 = v61;
    v8 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_46;
  }

LABEL_44:
  v51 = v1;
  v60 = a1;
  v36 = v3;
  v43 = v2;
  v25 = v5;
  v30 = v4;
  v21 = v6;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait>();
  v6 = v21;
  v5 = v25;
  v4 = v30;
  v3 = v36;
  v2 = v43;
  v1 = v51;
  a1 = v60;
  v7 = mlir::detail::TypeIDResolver<mlir::RegionBranchOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_45;
  }

LABEL_9:
  v8 = mlir::detail::TypeIDResolver<mlir::LoopLikeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::LoopLikeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_46:
  v53 = v1;
  v62 = a1;
  v38 = v3;
  v45 = v2;
  v27 = v5;
  v32 = v4;
  v20 = v7;
  v23 = v6;
  v18 = v8;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::OneRegion,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<3u>::Impl,mlir::OpTrait::SingleBlock,mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl,mlir::OpTrait::OpInvariants,mlir::OpTrait::AutomaticAllocationScope,mlir::LoopLikeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::RegionBranchOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>();
  v8 = v18;
  v7 = v20;
  v6 = v23;
  v5 = v27;
  v4 = v32;
  v3 = v38;
  v2 = v45;
  v1 = v53;
  a1 = v62;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::HasRecursiveMemoryEffects<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasRecursiveMemoryEffects>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

uint64_t mlir::Op<mlir::scf::WhileOp,mlir::OpTrait::NRegions<2u>::Impl,mlir::OpTrait::VariadicResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::SingleBlock,mlir::OpTrait::OpInvariants,mlir::RegionBranchOpInterface::Trait,mlir::LoopLikeOpInterface::Trait,mlir::OpTrait::HasRecursiveMemoryEffects>::verifyInvariants(mlir::OpTrait::impl *a1)
{
  if (!mlir::OpTrait::impl::verifyNRegions(a1, 2))
  {
    return 0;
  }

  if (!mlir::OpTrait::impl::verifyZeroSuccessors(a1, v2))
  {
    return 0;
  }

  if ((mlir::OpTrait::SingleBlock<mlir::memref::GenericAtomicRMWOp>::verifyTrait(a1) & 1) == 0)
  {
    return 0;
  }

  v5 = a1;
  if ((mlir::scf::WhileOp::verifyInvariantsImpl(&v5) & 1) == 0)
  {
    return 0;
  }

  v5 = a1;
  return mlir::scf::WhileOp::verify(&v5, v3) & 1;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::~Model(uint64_t a1)
{
  *a1 = &unk_1F5B05788;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = *(a1 + 32);
  }

  if (v2 != (a1 + 48))
  {
    free(v2);
  }

  return a1;
}

void mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::~Model(void *__p)
{
  *__p = &unk_1F5B05788;
  v2 = __p[4];
  v3 = *(__p + 10);
  if (v3)
  {
    v4 = 16 * v3;
    v5 = v2 + 1;
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v2 = __p[4];
  }

  if (v2 != __p + 6)
  {
    free(v2);
  }

  operator delete(__p);
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::foldHook()
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0]();
  v5 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      v6 = v8[0];
      if ((v9 & 2) != 0)
      {
        v6 = v8;
      }

      v7 = result;
      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v6, v1, v2, v3, v4);
      result = v7;
    }

    if ((v5 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
  v7 = v11;
  if (v11 >= 8)
  {
    if ((v11 & 4) != 0)
    {
      v8 = v10[0];
      if ((v11 & 2) != 0)
      {
        v8 = v10;
      }

      v9 = result;
      (*((v11 & 0xFFFFFFFFFFFFFFF8) + 16))(v8, v3, v4, v5, v6);
      result = v9;
    }

    if ((v7 & 2) == 0)
    {
      llvm::deallocate_buffer(v10[0], v10[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::printAssembly(uint64_t a1, uint64_t a2, mlir::OpAsmPrinter *a3, uint64_t a4, uint64_t a5)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v8, a2, a3, a4, a5);
  v6 = v9;
  if (v9 >= 8)
  {
    if ((v9 & 4) != 0)
    {
      if ((v9 & 2) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = v8[0];
      }

      (*((v9 & 0xFFFFFFFFFFFFFFF8) + 16))(v7, v5);
    }

    if ((v6 & 2) == 0)
    {
      llvm::deallocate_buffer(v8[0], v8[1]);
    }
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::scf::YieldOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>::verifyRegionInvariants;
  v8 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *>::CallbacksHolder<llvm::LogicalResult (*)(mlir::Operation *),llvm::LogicalResult (* const)(mlir::Operation *),void>::Callbacks[0])(v7, a2);
  v4 = v8;
  if (v8 >= 8)
  {
    if ((v8 & 4) != 0)
    {
      v5 = v7[0];
      if ((v8 & 2) != 0)
      {
        v5 = v7;
      }

      v6 = result;
      (*((v8 & 0xFFFFFFFFFFFFFFF8) + 16))(v5, v3);
      result = v6;
    }

    if ((v4 & 2) == 0)
    {
      llvm::deallocate_buffer(v7[0], v7[1]);
    }
  }

  return result;
}

void mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[9] = *MEMORY[0x1E69E9840];
  mlir::NamedAttrList::NamedAttrList(v8, *(a2 + 56));
  if (mlir::NamedAttrList::set(v8, a3, a4) != a4)
  {
    Context = mlir::Attribute::getContext((a2 + 24));
    *(a2 + 56) = mlir::NamedAttrList::getDictionary(v8, Context);
  }

  if (v8[0] != v9)
  {
    free(v8[0]);
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::scf::YieldOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  a5(v23, a6);
  if (v23[0])
  {
    v20 = 3;
    v21 = "this operation does not support properties";
    v22 = 42;
    v6 = &v20;
    v7 = v24;
    if (v25 >= v26)
    {
      if (v24 <= &v20 && v24 + 24 * v25 > &v20)
      {
        v19 = &v20 - v24;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v7 = v24;
        v6 = (v24 + v19);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v24, v27, v25 + 1, 24);
        v6 = &v20;
        v7 = v24;
      }
    }

    v8 = &v7[24 * v25];
    v9 = *v6;
    *(v8 + 2) = *(v6 + 2);
    *v8 = v9;
    ++v25;
    if (v23[0])
    {
      mlir::InFlightDiagnostic::report(v23);
    }
  }

  if (v33 == 1)
  {
    if (v32 != &v33)
    {
      free(v32);
    }

    v10 = __p;
    if (__p)
    {
      v11 = v31;
      v12 = __p;
      if (v31 != __p)
      {
        do
        {
          v11 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v11 - 1);
        }

        while (v11 != v10);
        v12 = __p;
      }

      v31 = v10;
      operator delete(v12);
    }

    v13 = v28;
    if (v28)
    {
      v14 = v29;
      v15 = v28;
      if (v29 != v28)
      {
        do
        {
          v17 = *--v14;
          v16 = v17;
          *v14 = 0;
          if (v17)
          {
            operator delete[](v16);
          }
        }

        while (v14 != v13);
        v15 = v28;
      }

      v29 = v13;
      operator delete(v15);
    }

    if (v24 != v27)
    {
      free(v24);
    }
  }

  return 0;
}

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::YieldOp>,mlir::OpTrait::ZeroResults<mlir::scf::YieldOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::YieldOp>,mlir::OpTrait::VariadicOperands<mlir::scf::YieldOp>,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl<mlir::scf::YieldOp>,mlir::OpTrait::OpInvariants<mlir::scf::YieldOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::YieldOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::YieldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::YieldOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::YieldOp>,mlir::OpTrait::ReturnLike<mlir::scf::YieldOp>,mlir::OpTrait::IsTerminator<mlir::scf::YieldOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::ConditionallySpeculatableInterfaceTraits::Model<mlir::scf::YieldOp>::getSpeculatability;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroResults<mlir::scf::ConditionOp>,mlir::OpTrait::ZeroSuccessors<mlir::scf::ConditionOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl<mlir::scf::ConditionOp>,mlir::OpTrait::OpInvariants<mlir::scf::ConditionOp>,mlir::RegionBranchTerminatorOpInterface::Trait<mlir::scf::ConditionOp>,mlir::ConditionallySpeculatable::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::scf::ConditionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::scf::ConditionOp>,mlir::OpTrait::IsTerminator<mlir::scf::ConditionOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::scf::YieldOp>::getEffects;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(0x10uLL);
  v7 = v6;
  *v6 = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::scf::YieldOp>::getMutableSuccessorOperands;
  v6[1] = mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::scf::YieldOp>::getSuccessorRegions;
  {
    v11 = v6;
    mlir::OpInterface<mlir::RegionBranchTerminatorOpInterface,mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits>::getInterfaceFor();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

uint64_t mlir::detail::RegionBranchTerminatorOpInterfaceInterfaceTraits::Model<mlir::scf::YieldOp>::getSuccessorRegions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    ParentOp = mlir::Block::getParentOp(v6);
    v9 = ParentOp;
    if (ParentOp)
    {
      ParentOp = mlir::OpInterface<mlir::RegionBranchOpInterface,mlir::detail::RegionBranchOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp);
    }

    v10 = *(a2 + 16);
    v13 = v9;
    v14 = ParentOp;
    if (v10)
    {
      Parent = mlir::Block::getParent(v10);
    }

    else
    {
      Parent = 0;
    }
  }

  else
  {
    Parent = 0;
    v13 = 0;
    v14 = 0;
  }

  return mlir::RegionBranchOpInterface::getSuccessorRegions(&v13, Parent, a5);
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>(uint64_t a1)
{
  {
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_3;
    }
  }

  else
  {
    v90 = a1;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::ConstantLike,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
    a1 = v90;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  v79 = v1;
  v91 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::HasParent<mlir::pdl::RewriteOp>::Impl,mlir::OpTrait::OpInvariants>();
  v1 = v79;
  a1 = v91;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroResults<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroResults>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  v80 = v1;
  v92 = a1;
  v69 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v69;
  v1 = v80;
  a1 = v92;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

LABEL_53:
  v81 = v1;
  v93 = a1;
  v60 = v3;
  v70 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::MemRefType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::AttrSizedOperandSegments,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpAsmOpInterface::Trait,mlir::MemoryEffectOpInterface::Trait>();
  v3 = v60;
  v2 = v70;
  v1 = v81;
  a1 = v93;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::VariadicOperands<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::VariadicOperands>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_54:
  v82 = v1;
  v94 = a1;
  v61 = v3;
  v71 = v2;
  v52 = v4;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
  v4 = v52;
  v3 = v61;
  v2 = v71;
  v1 = v82;
  a1 = v94;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_7:
    v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_8;
    }

    goto LABEL_56;
  }

LABEL_55:
  v83 = v1;
  v95 = a1;
  v62 = v3;
  v72 = v2;
  v53 = v4;
  v45 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v5 = v45;
  v4 = v53;
  v3 = v62;
  v2 = v72;
  v1 = v83;
  a1 = v95;
  v6 = mlir::detail::TypeIDResolver<mlir::OpTrait::OpInvariants<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OpInvariants>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_8:
    v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

LABEL_56:
  v84 = v1;
  v96 = a1;
  v63 = v3;
  v73 = v2;
  v54 = v4;
  v39 = v6;
  v46 = v5;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v6 = v39;
  v5 = v46;
  v4 = v54;
  v3 = v63;
  v2 = v73;
  v1 = v84;
  a1 = v96;
  v7 = mlir::detail::TypeIDResolver<mlir::ConditionallySpeculatable::Trait<mlir::TypeID mlir::TypeID::get<mlir::ConditionallySpeculatable::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_57:
  v85 = v1;
  v97 = a1;
  v64 = v3;
  v74 = v2;
  v55 = v4;
  v40 = v6;
  v47 = v5;
  v34 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v7 = v34;
  v6 = v40;
  v5 = v47;
  v4 = v55;
  v3 = v64;
  v2 = v74;
  v1 = v85;
  a1 = v97;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::AlwaysSpeculatableImplTrait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_11;
    }

    goto LABEL_59;
  }

LABEL_58:
  v86 = v1;
  v98 = a1;
  v65 = v3;
  v75 = v2;
  v56 = v4;
  v41 = v6;
  v48 = v5;
  v30 = v8;
  v35 = v7;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v8 = v30;
  v7 = v35;
  v6 = v41;
  v5 = v48;
  v4 = v56;
  v3 = v65;
  v2 = v75;
  v1 = v86;
  a1 = v98;
  v9 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_12;
    }

LABEL_60:
    v88 = v1;
    v100 = a1;
    v67 = v3;
    v77 = v2;
    v58 = v4;
    v43 = v6;
    v50 = v5;
    v32 = v8;
    v37 = v7;
    v25 = v10;
    v28 = v9;
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
    v10 = v25;
    v9 = v28;
    v8 = v32;
    v7 = v37;
    v6 = v43;
    v5 = v50;
    v4 = v58;
    v3 = v67;
    v2 = v77;
    v1 = v88;
    a1 = v100;
    v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
    }

    goto LABEL_61;
  }

LABEL_59:
  v87 = v1;
  v99 = a1;
  v66 = v3;
  v76 = v2;
  v57 = v4;
  v42 = v6;
  v49 = v5;
  v31 = v8;
  v36 = v7;
  v27 = v9;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::VariadicOperands,mlir::OpTrait::HasParent<mlir::func::FuncOp>::Impl,mlir::OpTrait::OpInvariants,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::MemRefsNormalizable,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::OpTrait::ReturnLike,mlir::OpTrait::IsTerminator>();
  v9 = v27;
  v8 = v31;
  v7 = v36;
  v6 = v42;
  v5 = v49;
  v4 = v57;
  v3 = v66;
  v2 = v76;
  v1 = v87;
  a1 = v99;
  v10 = mlir::detail::TypeIDResolver<mlir::RegionBranchTerminatorOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::RegionBranchTerminatorOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_60;
  }

LABEL_12:
  v11 = mlir::detail::TypeIDResolver<mlir::OpTrait::ReturnLike<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ReturnLike>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
  }

LABEL_61:
  v89 = v1;
  v101 = a1;
  v68 = v3;
  v78 = v2;
  v59 = v4;
  v44 = v6;
  v51 = v5;
  v33 = v8;
  v38 = v7;
  v26 = v10;
  v29 = v9;
  v24 = v11;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::AtLeastNOperands<1u>::Impl,mlir::OpTrait::HasParent<mlir::scf::WhileOp>::Impl,mlir::OpTrait::OpInvariants,mlir::RegionBranchTerminatorOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::IsTerminator>();
  v11 = v24;
  v10 = v26;
  v9 = v29;
  v8 = v33;
  v7 = v38;
  v6 = v44;
  v5 = v51;
  v4 = v59;
  v3 = v68;
  v2 = v78;
  v1 = v89;
  a1 = v101;
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::OpTrait::IsTerminator<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::IsTerminator>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

const char *llvm::getTypeName<mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl>(void)::Empty>>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp, mlir::scf::ForOp, mlir::scf::IfOp, mlir::scf::IndexSwitchOp, mlir::scf::WhileOp>::Impl<Empty>]";
  v6 = 196;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::OpTrait::HasParent<mlir::scf::ExecuteRegionOp,mlir::scf::ForOp,mlir::scf::IfOp,mlir::scf::IndexSwitchOp,mlir::scf::WhileOp>::Impl<mlir::scf::YieldOp>::verifyTrait(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  if (*(a1 + 16))
  {
    v1 = a1;
    ParentOp = mlir::Block::getParentOp(*(a1 + 16));
    a1 = v1;
    if (ParentOp)
    {
      v3 = *(*(ParentOp + 48) + 16);
      if (v3 == &mlir::detail::TypeIDResolver<mlir::scf::ExecuteRegionOp,void>::id)
      {
        return 1;
      }

      if (v3 == &mlir::detail::TypeIDResolver<mlir::scf::ForOp,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
      {
        return 1;
      }

      if (v3 == &mlir::detail::TypeIDResolver<mlir::scf::IndexSwitchOp,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::scf::WhileOp,void>::id)
      {
        return 1;
      }
    }
  }

  v33 = 257;
  mlir::Operation::emitOpError(a1, &v32, &v41);
  if (!v41)
  {
    goto LABEL_22;
  }

  LODWORD(v35) = 3;
  *(&v35 + 1) = "expects parent op ";
  *&v36 = 18;
  v7 = &v35;
  v8 = v43;
  if (v44 >= v45)
  {
    if (v43 <= &v35 && v43 + 24 * v44 > &v35)
    {
      v29 = &v35 - v43;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
      v8 = v43;
      v7 = (v43 + v29);
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
      v7 = &v35;
      v8 = v43;
    }
  }

  v9 = &v8[24 * v44];
  v10 = *v7;
  *(v9 + 2) = *(v7 + 2);
  *v9 = v10;
  v11 = ++v44;
  if (v41)
  {
    LODWORD(v35) = 3;
    *(&v35 + 1) = "to be one of '";
    *&v36 = 14;
    v12 = &v35;
    v13 = v43;
    if (v11 >= v45)
    {
      if (v43 <= &v35 && v43 + 24 * v11 > &v35)
      {
        v30 = &v35 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v11 + 1, 24);
        v13 = v43;
        v12 = (v43 + v30);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v11 + 1, 24);
        v12 = &v35;
        v13 = v43;
      }
    }

    v14 = &v13[24 * v44];
    v15 = *v12;
    *(v14 + 2) = *(v12 + 2);
    *v14 = v15;
    ++v44;
    v37 = xmmword_1E86D3510;
    v38 = *&off_1E86D3520;
    v39 = xmmword_1E86D3530;
    v35 = xmmword_1E86D34F0;
    v36 = *&off_1E86D3500;
    if (v41)
    {
      v34[0] = ", ";
      llvm::interleave<llvm::StringLiteral const*,mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(llvm::ArrayRef<llvm::StringLiteral> const&)#1},mlir::Diagnostic& mlir::Diagnostic::appendRange<llvm::ArrayRef<llvm::StringLiteral>>(llvm::ArrayRef<llvm::StringLiteral> const&,char const*)::{lambda(void)#1},void>(&v35, &v40, v42, v42, v34);
      if (v41)
      {
        LODWORD(v34[0]) = 3;
        v34[1] = "'";
        v34[2] = 1;
        v16 = v34;
        v17 = v43;
        if (v44 >= v45)
        {
          if (v43 <= v34 && v43 + 24 * v44 > v34)
          {
            v31 = v34 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v17 = v43;
            v16 = (v43 + v31);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v16 = v34;
            v17 = v43;
          }
        }

        v18 = &v17[24 * v44];
        v19 = *v16;
        *(v18 + 2) = v16[2];
        *v18 = v19;
        ++v44;
      }
    }
  }

  else
  {
LABEL_22:
    v37 = xmmword_1E86D3510;
    v38 = *&off_1E86D3520;
    v39 = xmmword_1E86D3530;
    v35 = xmmword_1E86D34F0;
    v36 = *&off_1E86D3500;
  }

  v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
    }

    v20 = __p;
    if (__p)
    {
      v21 = v50;
      v22 = __p;
      if (v50 != __p)
      {
        do
        {
          v21 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v21 - 1);
        }

        while (v21 != v20);
        v22 = __p;
      }

      v50 = v20;
      operator delete(v22);
    }

    v23 = v47;
    if (v47)
    {
      v24 = v48;
      v25 = v47;
      if (v48 != v47)
      {
        do
        {
          v27 = *--v24;
          v26 = v27;
          *v24 = 0;
          if (v27)
          {
            operator delete[](v26);
          }
        }

        while (v24 != v23);
        v25 = v47;
      }

      v48 = v23;
      operator delete(v25);
    }

    if (v43 != v46)
    {
      free(v43);
    }
  }

  return v6;
}

void anonymous namespace::SCFInlinerInterface::~SCFInlinerInterface(_anonymous_namespace_::SCFInlinerInterface *this, uint64_t a2)
{
  v2 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(this, a2);

  operator delete(v2);
}

uint64_t anonymous namespace::SCFInlinerInterface::isLegalToInline()
{
  return 1;
}

{
  return 1;
}

uint64_t anonymous namespace::SCFInlinerInterface::handleTerminator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id)
    {
    }
  }

  return result;
}

void mlir::RewritePatternSet::addImpl<SingleBlockExecuteInliner,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "scf.execute_region", 18, v31, v9, 0, 0);
  *v8 = &unk_1F5B06AE8;
  if (v8[9])
  {
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = SingleBlockExecuteInliner]";
    v32 = 75;
    v23 = llvm::StringRef::find(&v31, "DesiredTypeName = ", 0x12uLL, 0);
    if (v32 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v32;
    }

    v25 = &v31[v24];
    v26 = v32 - v24;
    if (v32 - v24 >= 0x12)
    {
      v27 = 18;
    }

    else
    {
      v27 = v32 - v24;
    }

    v28 = &v25[v27];
    v29 = v26 - v27;
    if (v29 >= v29 - 1)
    {
      --v29;
    }

    v8[8] = v28;
    v8[9] = v29;
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
LABEL_3:
      if (!a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod((v8 + 10), (v8 + 12), v12, 16);
  LODWORD(v11) = *(v8 + 22);
  if (a3)
  {
LABEL_4:
    memcpy((v8[10] + 16 * v11), a2, v10);
    LODWORD(v11) = *(v8 + 22);
  }

LABEL_5:
  *(v8 + 22) = v11 + (v10 >> 4);
  v14 = a1[2];
  v13 = a1[3];
  if (v14 >= v13)
  {
    v16 = a1[1];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v20 = v13 - v16;
    if (v20 >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v21 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (v21 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v22 = operator new(8 * v21);
    }

    else
    {
      v22 = 0;
    }

    v30 = &v22[8 * v18];
    *v30 = v8;
    v15 = v30 + 8;
    memcpy(v22, v16, v17);
    a1[1] = v22;
    a1[2] = v15;
    a1[3] = &v22[8 * v21];
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = v8;
    v15 = v14 + 8;
  }

  a1[2] = v15;
}

void mlir::RewritePatternSet::addImpl<MultiBlockExecuteInliner,mlir::MLIRContext *&>(void *a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = operator new(0x60uLL);
  v9 = *a4;
  mlir::PatternBenefit::PatternBenefit(&v31, 1);
  mlir::Pattern::Pattern((v8 + 1), "scf.execute_region", 18, v31, v9, 0, 0);
  *v8 = &unk_1F5B06B88;
  if (v8[9])
  {
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = "StringRef llvm::getTypeName() [DesiredTypeName = MultiBlockExecuteInliner]";
    v32 = 74;
    v23 = llvm::StringRef::find(&v31, "DesiredTypeName = ", 0x12uLL, 0);
    if (v32 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v32;
    }

    v25 = &v31[v24];
    v26 = v32 - v24;
    if (v32 - v24 >= 0x12)
    {
      v27 = 18;
    }

    else
    {
      v27 = v32 - v24;
    }

    v28 = &v25[v27];
    v29 = v26 - v27;
    if (v29 >= v29 - 1)
    {
      --v29;
    }

    v8[8] = v28;
    v8[9] = v29;
    v10 = 16 * a3;
    v11 = *(v8 + 22);
    v12 = v11 + ((16 * a3) >> 4);
    if (v12 <= *(v8 + 23))
    {
LABEL_3:
      if (!a3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod((v8 + 10), (v8 + 12), v12, 16);
  LODWORD(v11) = *(v8 + 22);
  if (a3)
  {
LABEL_4:
    memcpy((v8[10] + 16 * v11), a2, v10);
    LODWORD(v11) = *(v8 + 22);
  }

LABEL_5:
  *(v8 + 22) = v11 + (v10 >> 4);
  v14 = a1[2];
  v13 = a1[3];
  if (v14 >= v13)
  {
    v16 = a1[1];
    v17 = v14 - v16;
    v18 = (v14 - v16) >> 3;
    v19 = v18 + 1;
    if ((v18 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v20 = v13 - v16;
    if (v20 >> 2 > v19)
    {
      v19 = v20 >> 2;
    }

    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      v21 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v19;
    }

    if (v21)
    {
      if (v21 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v22 = operator new(8 * v21);
    }

    else
    {
      v22 = 0;
    }

    v30 = &v22[8 * v18];
    *v30 = v8;
    v15 = v30 + 8;
    memcpy(v22, v16, v17);
    a1[1] = v22;
    a1[2] = v15;
    a1[3] = &v22[8 * v21];
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v14 = v8;
    v15 = v14 + 8;
  }

  a1[2] = v15;
}

void SingleBlockExecuteInliner::~SingleBlockExecuteInliner(SingleBlockExecuteInliner *this)
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

uint64_t SingleBlockExecuteInliner::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
  v4 = *(v3 + 8);
  if (v4 == v3 || *(v4 + 8) != v3)
  {
    return 0;
  }

  mlir::ValueRange::ValueRange(v17, 0, 0);
  v9 = v17[0];
  v10 = v17[1];
  v11 = *(v3 + 8);
  if (v11)
  {
    v12 = (v11 - 8);
  }

  else
  {
    v12 = 0;
  }

  Terminator = mlir::Block::getTerminator(v12, v8);
  v14 = Terminator;
  if ((*(Terminator + 46) & 0x80) != 0)
  {
    v15 = *(Terminator + 72);
    v16 = *(Terminator + 68);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  mlir::ValueRange::ValueRange(v18, v15, v16);
  mlir::RewriterBase::inlineBlockBefore(a3, v12, a2, v9, v10);
  (**a3)(a3, a2, v18[0], v18[1]);
  (*(*a3 + 16))(a3, v14);
  return 1;
}

void MultiBlockExecuteInliner::~MultiBlockExecuteInliner(MultiBlockExecuteInliner *this)
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

uint64_t MultiBlockExecuteInliner::matchAndRewrite(uint64_t a1, uint64_t a2, mlir::RewriterBase *a3)
{
  v46[6] = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 16);
  if (v5)
  {
    ParentOp = mlir::Block::getParentOp(v5);
    if (mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(ParentOp))
    {
      goto LABEL_7;
    }
  }

  else
  {
    ParentOp = 0;
    if (mlir::OpInterface<mlir::FunctionOpInterface,mlir::detail::FunctionOpInterfaceInterfaceTraits>::getInterfaceFor(0))
    {
      goto LABEL_7;
    }
  }

  if (*(*(ParentOp + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::scf::ExecuteRegionOp,void>::id)
  {
    return 0;
  }

LABEL_7:
  v8 = *(a2 + 16);
  v9 = mlir::RewriterBase::splitBlock(a3, v8, a2);
  v42 = v9;
  *(a3 + 3) = v8;
  *(a3 + 4) = v8 + 4;
  v10 = a2 + 64;
  v11 = *(a2 + 24);
  v12 = *(((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  if (v12)
  {
    v13 = (v12 - 8);
  }

  else
  {
    v13 = 0;
  }

  v44 = v13;
  mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *>((a3 + 8), v11, &v44);
  v15 = *(a2 + 44);
  v16 = (v15 >> 23) & 1;
  v17 = (v15 >> 21) & 0x7F8;
  v18 = 32 * *(a2 + 40);
  v19 = ((v10 + 16 * v16 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) + v18;
  v20 = *(v19 + 8);
  if (v20 != v19)
  {
    do
    {
      if (v20)
      {
        v24 = (v20 - 8);
      }

      else
      {
        v24 = 0;
      }

      Terminator = mlir::Block::getTerminator(v24, v14);
      if (Terminator)
      {
        v26 = *(*(Terminator + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::YieldOp,void>::id;
      }

      else
      {
        v26 = 0;
      }

      if (v26)
      {
        v27 = Terminator;
        v28 = *(Terminator + 16);
        v29 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(Terminator, v14);
        *(a3 + 3) = v28;
        *(a3 + 4) = v29;
        if ((*(v27 + 46) & 0x80) != 0)
        {
          v22 = *(v27 + 68);
          v21 = *(v27 + 72);
        }

        else
        {
          v21 = 0;
          v22 = 0;
        }

        v23 = *(v27 + 24);
        v44 = v21;
        v45 = v22;
        mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::OperandRange>((a3 + 8), v23, &v42, &v44);
        (*(*a3 + 16))(a3, v27);
      }

      v20 = *(v20 + 8);
    }

    while (v20 != v19);
    v30 = *(a2 + 44);
    v9 = v42;
    v16 = (v30 >> 23) & 1;
    v17 = (v30 >> 21) & 0x7F8;
    v18 = 32 * *(a2 + 40);
  }

  mlir::RewriterBase::inlineRegionBefore(a3, (((v10 + 16 * v16 + v17 + 7) & 0xFFFFFFFFFFFFFFF8) + v18), v9);
  v44 = v46;
  v45 = 0x600000000;
  v31 = *(a2 + 36);
  if (v31)
  {
    v32 = a2 - 16;
  }

  else
  {
    v32 = 0;
  }

  if (v31)
  {
    for (i = 0; i != v31; ++i)
    {
      v43[0] = mlir::detail::OpResultImpl::getNextResultAtOffset(v32, i);
      v34 = v42;
      v35 = *(v43[0] + 8);
      Loc = mlir::Value::getLoc(v43);
      v37 = mlir::Block::addArgument(v34, v35 & 0xFFFFFFFFFFFFFFF8, Loc);
      v38 = v45;
      if (v45 >= HIDWORD(v45))
      {
        v40 = v37;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v44, v46, v45 + 1, 8);
        v37 = v40;
        v38 = v45;
      }

      *(v44 + v38) = v37;
      v39 = (v45 + 1);
      LODWORD(v45) = v45 + 1;
    }

    v41 = v44;
  }

  else
  {
    v39 = 0;
    v41 = v46;
  }

  mlir::ValueRange::ValueRange(v43, v41, v39);
  (**a3)(a3, a2, v43[0], v43[1]);
  if (v44 != v46)
  {
    free(v44);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v16[5] = *MEMORY[0x1E69E9840];
  v13 = a2;
  Context = mlir::Attribute::getContext(&v13);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::cf::BranchOp,mlir::Block *&,mlir::ValueRange &>(v15, v16, v14);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  v9 = *a3;
  mlir::ValueRange::ValueRange(v16, 0, 0);
  mlir::cf::BranchOp::build(a1, v15, v9, v16[0], v16[1]);
  v10 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v10 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::cf::BranchOp,void>::id)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v11;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *,llvm::MutableArrayRef<mlir::BlockArgument>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *a3;
  v6 = a3[1];
  v14 = v4;
  v7 = &v14;
  mlir::ValueRange::ValueRange(v15, v5, v6);
  v8 = *(a1 + 8);
  v9 = *a1;
  if (v8 >= *(a1 + 12))
  {
    if (v9 <= &v14 && v9 + 24 * v8 > &v14)
    {
      v13 = &v15[-1] - v9;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v8 + 1, 24);
      v9 = *a1;
      v7 = &v13[*a1];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v8 + 1, 24);
      v9 = *a1;
      v7 = &v14;
    }
  }

  v10 = v9 + 24 * *(a1 + 8);
  v11 = *v7;
  *(v10 + 16) = *(v7 + 2);
  *v10 = v11;
  LODWORD(v10) = *(a1 + 8) + 1;
  *(a1 + 8) = v10;
  return *a1 + 24 * v10 - 24;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::ResultRange>(uint64_t a1, uint64_t *a2)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v3 = a2[1];
  v12 = 0;
  v5 = &v12;
  mlir::ValueRange::ValueRange(v13, v4, v3);
  v6 = *(a1 + 8);
  v7 = *a1;
  if (v6 >= *(a1 + 12))
  {
    if (v7 <= &v12 && v7 + 24 * v6 > &v12)
    {
      v11 = &v13[-1] - v7;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v6 + 1, 24);
      v7 = *a1;
      v5 = &v11[*a1];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v6 + 1, 24);
      v7 = *a1;
      v5 = &v12;
    }
  }

  v8 = v7 + 24 * *(a1 + 8);
  v9 = *v5;
  *(v8 + 16) = *(v5 + 2);
  *v8 = v9;
  LODWORD(v8) = *(a1 + 8) + 1;
  *(a1 + 8) = v8;
  return *a1 + 24 * v8 - 24;
}

uint64_t mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::scf::ForOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x1E69E9840];
  mlir::OperationState::OperationState(v5, a2, "scf.yield", 9);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

char *llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4;
  v9 = *a1;
  v10 = *a1;
  v11 = a2 - *a1;
  v13 = *(a1 + 8);
  v12 = *(a1 + 12);
  v14 = a6 - a4;
  v15 = a6 - a4 + v13;
  if (*a1 + 8 * v13 == a2)
  {
    if (v15 > v12)
    {
      v25 = a6;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v15, 8);
      a6 = v25;
      v13 = *(a1 + 8);
      v10 = *a1;
    }

    if (a6 != v6)
    {
      v26 = (v10 + 8 * v13);
      if (v14 < 0x14)
      {
        goto LABEL_20;
      }

      v27 = a3 + 32 * v6;
      if (v26 < a3 + 32 * a6 && v27 + 24 < v10 + 8 * (a6 + v13 - v6))
      {
        goto LABEL_20;
      }

      v29 = &v26[v14 & 0xFFFFFFFFFFFFFFFCLL];
      v6 += v14 & 0xFFFFFFFFFFFFFFFCLL;
      v30 = (v27 + 88);
      v31 = v26 + 2;
      v32 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v33 = v30 + 4;
        *&v34 = *(v30 - 8);
        *(&v34 + 1) = *(v30 - 4);
        v35 = *v30;
        v30 += 16;
        *&v36 = v35;
        *(&v36 + 1) = *v33;
        *(v31 - 1) = v34;
        *v31 = v36;
        v31 += 2;
        v32 -= 4;
      }

      while (v32);
      v26 = v29;
      if (v14 != (v14 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_20:
        v37 = a6 - v6;
        v38 = (a3 + 32 * v6 + 24);
        do
        {
          v39 = *v38;
          v38 += 4;
          *v26++ = v39;
          --v37;
        }

        while (v37);
      }

      LODWORD(v13) = *(a1 + 8);
      v10 = *a1;
    }

    *(a1 + 8) = v13 + v14;
    return (v10 + v11);
  }

  v96 = a3;
  v97 = a6;
  if (v15 > v12)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v15, 8);
    v10 = *a1;
    v13 = *(a1 + 8);
  }

  v17 = (v10 + v11);
  v18 = 8 * v13;
  v19 = (v10 + 8 * v13);
  v20 = v11;
  v21 = 8 * v13 - v11;
  v22 = v21 >> 3;
  v95 = v20;
  if (v21 >> 3 < v14)
  {
    *(a1 + 8) = v13 + v14;
    if (v18 != v20)
    {
      v23 = v17;
      memcpy((v10 + 8 * (v13 + v14) - 8 * v22), v17, v21);
      if (v22 <= 0xF)
      {
        v24 = v23;
        v17 = v23;
        v18 = 8 * v13;
LABEL_34:
        v56 = (v96 + 32 * v6 + 24);
        v6 += v22;
        do
        {
          v57 = *v56;
          v56 += 4;
          *v24++ = v57;
          --v22;
        }

        while (v22);
        goto LABEL_36;
      }

      v47 = v96 + 32 * v6;
      v17 = v23;
      v18 = 8 * v13;
      if (v23 < v47 + 4 * v21)
      {
        v24 = v23;
        if (v47 + 24 < (v10 + v21 + a2 - v9))
        {
          goto LABEL_34;
        }
      }

      v6 += v22 & 0xFFFFFFFFFFFFFFFCLL;
      v48 = (v95 + v10 + 16);
      v49 = (v47 + 88);
      v50 = v22 & 0xFFFFFFFFFFFFFFFCLL;
      v24 = (v23 + 8 * (v22 & 0xFFFFFFFFFFFFFFFCLL));
      do
      {
        v51 = v49 + 4;
        *&v52 = *(v49 - 8);
        *(&v52 + 1) = *(v49 - 4);
        v53 = *v49;
        v49 += 16;
        *&v54 = v53;
        *(&v54 + 1) = *v51;
        *(v48 - 1) = v52;
        *v48 = v54;
        v48 += 2;
        v50 -= 4;
      }

      while (v50);
      v55 = v22 == (v22 & 0xFFFFFFFFFFFFFFFCLL);
      v22 = (v21 >> 3) & 3;
      if (!v55)
      {
        goto LABEL_34;
      }
    }

LABEL_36:
    v58 = v97 - v6;
    if (v97 != v6)
    {
      if (v58 < 0x14)
      {
        goto LABEL_43;
      }

      v59 = v96 + 32 * v6;
      if (v19 < v96 + 32 * v97 && v59 + 24 < v10 + 8 * (v97 + v13 - v6))
      {
        goto LABEL_43;
      }

      v19 += 8 * (v58 & 0xFFFFFFFFFFFFFFFCLL);
      v6 += v58 & 0xFFFFFFFFFFFFFFFCLL;
      v60 = (v59 + 88);
      v61 = (v18 + v10 + 16);
      v62 = v58 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v63 = v60 + 4;
        *&v64 = *(v60 - 8);
        *(&v64 + 1) = *(v60 - 4);
        v65 = *v60;
        v60 += 16;
        *&v66 = v65;
        *(&v66 + 1) = *v63;
        *(v61 - 1) = v64;
        *v61 = v66;
        v61 += 2;
        v62 -= 4;
      }

      while (v62);
      if (v58 != (v58 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_43:
        v67 = v97 - v6;
        v68 = (v96 + 32 * v6 + 24);
        do
        {
          v69 = *v68;
          v68 += 4;
          *v19 = v69;
          v19 += 8;
          --v67;
        }

        while (v67);
      }
    }

    return v17;
  }

  v40 = 8 * v14;
  v41 = v13 + ((8 * v14) >> 3);
  if (v41 > *(a1 + 12))
  {
    v13 = v17;
    v42 = v18;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v41, 8);
    v18 = v42;
    v17 = v13;
    LODWORD(v13) = *(a1 + 8);
  }

  v43 = &v19[-v40];
  if (v97 != v6)
  {
    v44 = (*a1 + 8 * v13);
    v45 = 8 * v97 - 8 * v6 - 8;
    if (v45 < 0x38)
    {
      v46 = &v19[-v40];
      do
      {
LABEL_50:
        v77 = *v46;
        v46 += 8;
        *v44++ = v77;
      }

      while (v46 != v19);
      goto LABEL_51;
    }

    v70 = 8 * v13 + *a1;
    v46 = &v19[-v40];
    if ((v70 - v43) < 0x20)
    {
      goto LABEL_50;
    }

    v71 = (v45 >> 3) + 1;
    v72 = 8 * (v71 & 0x3FFFFFFFFFFFFFFCLL);
    v44 = (v44 + v72);
    v46 = &v43[v72];
    v73 = (8 * v6 + v18 - 8 * v97 + v10 + 16);
    v74 = (v70 + 16);
    v75 = v71 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v76 = *v73;
      *(v74 - 1) = *(v73 - 1);
      *v74 = v76;
      v73 += 2;
      v74 += 2;
      v75 -= 4;
    }

    while (v75);
    if (v71 != (v71 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_50;
    }
  }

LABEL_51:
  *(a1 + 8) = v13 + v14;
  v78 = v43 - v17;
  if (v43 != v17)
  {
    v79 = &v19[-v78];
    v80 = v17;
    memmove(v79, v17, v78);
    v17 = v80;
  }

  if (v97 != v6)
  {
    if (v14 >= 0x16)
    {
      v82 = v96;
      v83 = v96 + 32 * v6;
      if (v17 >= v96 + 32 * v97 || (v81 = v17, v83 + 24 >= (v10 + a2 + 8 * v97 - (v9 + 8 * v6))))
      {
        v81 = &v17[8 * (v14 & 0xFFFFFFFFFFFFFFFCLL)];
        v6 += v14 & 0xFFFFFFFFFFFFFFFCLL;
        v84 = (v83 + 88);
        v85 = (v95 + v10 + 16);
        v86 = v14 & 0xFFFFFFFFFFFFFFFCLL;
        do
        {
          v87 = v84 + 4;
          *&v88 = *(v84 - 8);
          *(&v88 + 1) = *(v84 - 4);
          v89 = *v84;
          v84 += 16;
          *&v90 = v89;
          *(&v90 + 1) = *v87;
          *(v85 - 1) = v88;
          *v85 = v90;
          v85 += 2;
          v86 -= 4;
        }

        while (v86);
        if (v14 == (v14 & 0xFFFFFFFFFFFFFFFCLL))
        {
          return v17;
        }
      }
    }

    else
    {
      v81 = v17;
      v82 = v96;
    }

    v91 = v97 - v6;
    v92 = (v82 + 32 * v6 + 24);
    do
    {
      v93 = *v92;
      v92 += 4;
      *v81 = v93;
      v81 += 8;
      --v91;
    }

    while (v91);
  }

  return v17;
}

void anonymous namespace::ForOpIterArgsFolder::~ForOpIterArgsFolder(_anonymous_namespace_::ForOpIterArgsFolder *this)
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

void anonymous namespace::SimplifyTrivialLoops::~SimplifyTrivialLoops(_anonymous_namespace_::SimplifyTrivialLoops *this)
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

uint64_t anonymous namespace::SimplifyTrivialLoops::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v54 = a2;
  v5 = *(a2 + 72);
  v6 = *(v5 + 24);
  v7 = *(v5 + 56);
  if (v6 == v7)
  {
    v22 = *(a2 + 68);
    goto LABEL_36;
  }

  v57 = 0;
  v58 = 0;
  __p = &v58;
  v62 = v6;
  DefiningOp = mlir::Value::getDefiningOp(&v62);
  if (DefiningOp)
  {
    if (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&__p, DefiningOp))
    {
      v55 = &v57;
      v62 = v7;
      v9 = mlir::Value::getDefiningOp(&v62);
      if (v9)
      {
        if (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&v55, v9))
        {
          mlir::IntegerAttr::getValue(&v58, &v62);
          mlir::IntegerAttr::getValue(&v57, &__p);
          LODWORD(v68) = v52;
          if (v52 > 0x40)
          {
            llvm::APInt::initSlowCase(&v67, &__p);
          }

          else
          {
            v67 = __p;
          }

          llvm::APInt::operator-=(&v67, &v62);
          v30 = v68;
          LODWORD(v68) = 0;
          if (v30 > 0x40)
          {
            v16 = *v67;
            if (v67)
            {
              operator delete[](v67);
              if (v68 >= 0x41)
              {
                if (v67)
                {
                  operator delete[](v67);
                }
              }
            }
          }

          else if (v30)
          {
            v16 = (v67 << -v30) >> -v30;
          }

          else
          {
            v16 = 0;
          }

          if (v52 >= 0x41 && __p)
          {
            operator delete[](__p);
          }

          if (v63 >= 0x41 && v62)
          {
            operator delete[](v62);
          }

          goto LABEL_27;
        }
      }
    }
  }

  v52 = 1;
  __p = 0;
  v55 = v6;
  p_p = &__p;
  v61 = v7;
  v10 = mlir::Value::getDefiningOp(&v61);
  if (v10 && (v65 = v10, *(v10[6] + 2) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id) && (*(v10 + 46) & 0x80) != 0 && *(v10 + 17) == 2 && (LOBYTE(v59) = 1, v62 = &v59, v63 = &v65, mlir::detail::enumerateImpl<std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> &,mlir::detail::RecursivePatternMatcher<mlir::arith::XOrIOp,mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::PatternMatcherValue,mlir::detail::constant_int_value_binder> & &)#1},0ul,1ul>(&v55, &v62), (v59 & 1) != 0) || (v65 = &__p, v66 = v6, v59 = v7, (v11 = mlir::Value::getDefiningOp(&v59)) != 0) && (v61 = v11, *(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::AddIOp,void>::id) && (*(v11 + 46) & 0x80) != 0 && *(v11 + 68) == 2 && (v60 = 1, v62 = &v60, v63 = &v61, mlir::detail::enumerateImpl<std::tuple<mlir::detail::constant_int_value_binder,mlir::detail::PatternMatcherValue> &,mlir::detail::RecursivePatternMatcher<mlir::arith::AddIOp,mlir::detail::constant_int_value_binder,mlir::detail::PatternMatcherValue>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::constant_int_value_binder,mlir::detail::PatternMatcherValue> & &)#1},0ul,1ul>(&v65, &v62), (v60 & 1) != 0))
  {
    if (v52 > 0x40)
    {
      v12 = *__p;
    }

    else if (v52)
    {
      v12 = (__p << -v52) >> -v52;
    }

    else
    {
      v12 = 0;
    }

    v15 = v12 & 0xFFFFFFFFFFFFFF00;
    v13 = v12;
    v14 = 1;
    if (v52 < 0x41)
    {
      goto LABEL_25;
    }

LABEL_23:
    if (__p)
    {
      operator delete[](__p);
    }

    goto LABEL_25;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  if (v52 >= 0x41)
  {
    goto LABEL_23;
  }

LABEL_25:
  if (!v14)
  {
    return 0;
  }

  v16 = v15 | v13;
LABEL_27:
  if (v16 <= 0)
  {
    if ((*(a2 + 46) & 0x80) == 0)
    {
      v5 = 0;
      v23 = -3;
      goto LABEL_37;
    }

    v22 = *(a2 + 68);
    v5 = *(a2 + 72);
LABEL_36:
    v23 = v22 - 3;
LABEL_37:
    mlir::ValueRange::ValueRange(&v62, v5 + 96, v23);
    (**a3)(a3, a2, v62, v63);
    return 1;
  }

  v67 = 0;
  v17 = *(*(a2 + 72) + 88);
  __p = &v67;
  v62 = v17;
  v18 = mlir::Value::getDefiningOp(&v62);
  if (!v18 || (mlir::detail::constant_op_binder<mlir::IntegerAttr>::match(&__p, v18) & 1) == 0)
  {
    return 0;
  }

  mlir::IntegerAttr::getValue(&v67, &v62);
  v19 = v63;
  v52 = v63;
  __p = v62;
  v53 = 1;
  LODWORD(p_p) = v63;
  if (v63 > 0x40)
  {
    llvm::APInt::initSlowCase(&v55, &__p);
    v19 = p_p;
    if (p_p > 0x40)
    {
      v31 = v55;
      v32 = p_p + 1;
      if ((*(v55 + ((p_p - 1) >> 6)) >> (p_p - 1)))
      {
        if (v32 - llvm::APInt::countLeadingOnesSlowCase(&v55) > 0x40)
        {
          goto LABEL_45;
        }
      }

      else if (v32 - llvm::APInt::countLeadingZerosSlowCase(&v55) > 0x40)
      {
        goto LABEL_74;
      }

      if (*v31 < v16)
      {
        goto LABEL_45;
      }

LABEL_74:
      v62 = v64;
      v63 = 0x400000000;
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v33 = *(a2 + 68) - 2;
        if (v33 <= 4)
        {
          v34 = 0;
          v35 = *(*(a2 + 72) + 24);
          goto LABEL_79;
        }
      }

      else
      {
        v33 = -2;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v64, v33, 8);
      v34 = v63;
      v35 = *(*(a2 + 72) + 24);
      if (v63 >= HIDWORD(v63))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v64, v63 + 1, 8);
        v34 = v63;
      }

LABEL_79:
      *(v62 + v34) = v35;
      v36 = v63 + 1;
      LODWORD(v63) = v63 + 1;
      if ((*(a2 + 46) & 0x80) != 0)
      {
        v37 = *(a2 + 72);
        v38 = *(a2 + 68) - 3;
      }

      else
      {
        v37 = 0;
        v38 = -3;
      }

      llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v62, v62 + 8 * v36, v37 + 96, 0, v37 + 96, v38);
      v39 = ((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40);
      mlir::ValueRange::ValueRange(&v65, v62, v63);
      v41 = v65;
      v42 = v66;
      v43 = *(v39 + 8);
      if (v43)
      {
        v44 = (v43 - 8);
      }

      else
      {
        v44 = 0;
      }

      Terminator = mlir::Block::getTerminator(v44, v40);
      v46 = Terminator;
      if ((*(Terminator + 46) & 0x80) != 0)
      {
        v47 = *(Terminator + 72);
        v48 = *(Terminator + 68);
      }

      else
      {
        v47 = 0;
        v48 = 0;
      }

      mlir::ValueRange::ValueRange(&v67, v47, v48);
      mlir::RewriterBase::inlineBlockBefore(a3, v44, a2, v41, v42);
      (**a3)(a3, a2, v67, v68);
      (*(*a3 + 16))(a3, v46);
      if (v62 != v64)
      {
        free(v62);
      }

      result = 1;
      if (p_p < 0x41)
      {
        goto LABEL_91;
      }

      goto LABEL_89;
    }

    v20 = v55;
  }

  else
  {
    v20 = __p;
    v55 = __p;
  }

  v24 = (v20 << -v19) >> -v19;
  if (v19)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25 >= v16)
  {
    goto LABEL_74;
  }

LABEL_45:
  v26 = *(((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
  v27 = v26 - 8;
  if (!v26)
  {
    v27 = 0;
  }

  v28 = *(v27 + 40);
  v29 = v27 + 32;
  if (v28 != v29 && *(v28 + 8) == v29)
  {
    result = v62;
    if (p_p < 0x41)
    {
      goto LABEL_91;
    }

LABEL_89:
    if (v55)
    {
      v49 = result;
      operator delete[](v55);
      result = v49;
    }

    goto LABEL_91;
  }

  result = 0;
  if (p_p >= 0x41)
  {
    goto LABEL_89;
  }

LABEL_91:
  if ((v53 & 1) != 0 && v52 >= 0x41)
  {
    if (__p)
    {
      v50 = result;
      operator delete[](__p);
      return v50;
    }
  }

  return result;
}

mlir::Block *llvm::any_of<mlir::ValueRange,anonymous namespace::SimplifyTrivialLoops::matchAndRewrite(mlir::scf::ForOp,mlir::PatternRewriter &)::{lambda(mlir::Value)#1}>(uint64_t a1, uint64_t a2, mlir::Operation **a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = 0;
  if (!a2)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = mlir::ValueRange::dereference_iterator(&v11, v5);
    v7 = *a3;
    v10 = v6;
    v8 = *(mlir::Value::getParentRegion(&v10) + 2);
    if (v8 == v7)
    {
      break;
    }

    result = mlir::Operation::isProperAncestor(v7, v8);
    if ((result & 1) == 0)
    {
      v5 = v12 + 1;
      v12 = v5;
      if (v5 != a2)
      {
        continue;
      }
    }

    return result;
  }

  return 1;
}

uint64_t mlir::detail::enumerateImpl<std::tuple<mlir::detail::constant_int_value_binder,mlir::detail::PatternMatcherValue> &,mlir::detail::RecursivePatternMatcher<mlir::arith::AddIOp,mlir::detail::constant_int_value_binder,mlir::detail::PatternMatcherValue>::match(mlir::Operation *)::{lambda(unsigned long,std::tuple<mlir::detail::constant_int_value_binder,mlir::detail::PatternMatcherValue> & &)#1},0ul,1ul>(uint64_t *a1, uint64_t a2)
{
  v12 = *(*(**(a2 + 8) + 72) + 24);
  result = mlir::Value::getDefiningOp(&v12);
  if (result)
  {
    v5 = result;
    v11 = &v12;
    v12 = 0;
    result = mlir::detail::constant_op_binder<mlir::Attribute>::match(&v11, result);
    if (result)
    {
      v6 = *(*(*(v5 - 8) & 0xFFFFFFFFFFFFFFF8) + 136);
      if (v6 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v6 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
      {
        result = mlir::detail::constant_int_value_binder::match(a1, v12);
      }

      else
      {
        result = 0;
      }
    }
  }

  if (a1[1] == *(*(**(a2 + 8) + 72) + 56))
  {
    v10 = result & **a2;
  }

  else
  {
    v10 = 0;
  }

  **a2 = v10;
  return result;
}

void anonymous namespace::ForOpTensorCastFolder::~ForOpTensorCastFolder(_anonymous_namespace_::ForOpTensorCastFolder *this)
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

uint64_t llvm::function_ref<mlir::Value ()(mlir::OpBuilder &,mlir::Location,mlir::Type,mlir::Value)>::callback_fn<anonymous namespace::ForOpTensorCastFolder::matchAndRewrite(mlir::scf::ForOp,mlir::PatternRewriter &)::{lambda(mlir::OpBuilder &,mlir::Location,mlir::Type,mlir::Value)#1}>(uint64_t a1, mlir::OpBuilder *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v7 = a4;
  return mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type &,mlir::Value &>(a2, a3, &v7, &v6) - 16;
}

uint64_t mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type &,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type &,mlir::Value &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::arith::BitcastOp::build(a1, v17, *a3, *a4);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::tensor::CastOp,void>::id)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  mlir::OperationState::~OperationState(v17);
  return v12;
}

const char *llvm::getTypeName<mlir::DeviceMappingAttrInterface>()
{
  v5 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::DeviceMappingAttrInterface]";
  v6 = 82;
  v0 = llvm::StringRef::find(&v5, "DesiredTypeName = ", 0x12uLL, 0);
  if (v6 >= v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = v6;
  }

  v2 = &v5[v1];
  if (v6 - v1 >= 0x12)
  {
    v3 = 18;
  }

  else
  {
    v3 = v6 - v1;
  }

  return &v2[v3];
}

uint64_t mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::InParallelOp>::Impl<mlir::scf::ForallOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::OperationState(v9, a2, "scf.forall.in_parallel", 22);
  v3 = (a1 + 16);
  v8 = *(a1 + 16);
  v4 = mlir::OperationState::addRegion(v9);
  mlir::ValueRange::ValueRange(v10, 0, 0);
  mlir::OpBuilder::createBlock(a1, v4, 0, v10[0], v10[1], 0, 0);
  if (v8)
  {
    *v3 = v8;
  }

  else
  {
    *v3 = 0;
    *(a1 + 24) = 0;
  }

  v6 = mlir::Operation::create(v9, v5);
  mlir::OperationState::~OperationState(v9);
  return v6;
}

void anonymous namespace::DimOfForallOp::~DimOfForallOp(_anonymous_namespace_::DimOfForallOp *this)
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

uint64_t anonymous namespace::DimOfForallOp::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *(*(a2 + 72) + 24);
  result = mlir::Value::getDefiningOp(&v18);
  if (result)
  {
    if (*(*(result + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ForallOp,void>::id)
    {
      v6 = *(*(a2 + 72) + 24);
      v7 = (result + 16 * ((*(result + 44) >> 23) & 1));
      v8 = v7[24];
      v9 = v7[25];
      v10 = v7[26];
      if (v6)
      {
        v11 = (*(v6 + 8) & 7) == 6;
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        v12 = *(v6 + 16) + 6;
      }

      else
      {
        v12 = *(v6 + 8) & 7;
      }

      v13 = *(*(result + 72) + 32 * (v9 + v8 + v10 + v12) + 24);
      (*(*a3 + 40))(a3, a2);
      v14 = *(a2 + 72);
      v15 = v14[1];
      if (v15)
      {
        v16 = *v14;
        *v15 = *v14;
        if (v16)
        {
          *(v16 + 8) = v15;
        }
      }

      v14[3] = v13;
      v17 = *v13;
      *v14 = *v13;
      v14[1] = v13;
      if (v17)
      {
        *(v17 + 8) = v14;
      }

      *v13 = v14;
      (*(*a3 + 48))(a3, a2);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void anonymous namespace::FoldTensorCastOfOutputIntoForallOp::~FoldTensorCastOfOutputIntoForallOp(_anonymous_namespace_::FoldTensorCastOfOutputIntoForallOp *this)
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

unsigned int *llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,unsigned int,2u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::try_emplace<unsigned int const&>@<X0>(unsigned int *result@<X0>, _DWORD *a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result + 2;
  v4 = *result;
  v6 = *result & 1;
  if (v6)
  {
    v7 = 2;
    v8 = result + 2;
  }

  else
  {
    v7 = result[4];
    if (!v7)
    {
      v11 = 0;
      v14 = 0;
      v24 = 0;
      goto LABEL_11;
    }

    v8 = *(result + 1);
  }

  v9 = v7 - 1;
  v10 = (37 * *a2) & (v7 - 1);
  v11 = &v8[2 * v10];
  v12 = *v11;
  if (*a2 == *v11)
  {
LABEL_6:
    if (v6)
    {
      v13 = 2;
    }

    else
    {
      v5 = *(result + 1);
      v13 = result[4];
    }

    *a4 = v11;
    *(a4 + 8) = &v5[2 * v13];
    *(a4 + 16) = 0;
    return result;
  }

  v16 = 0;
  v17 = 1;
  while (v12 != -1)
  {
    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v12 == -2;
    }

    if (v18)
    {
      v16 = v11;
    }

    v19 = v10 + v17++;
    v10 = v19 & v9;
    v11 = &v8[2 * (v19 & v9)];
    v12 = *v11;
    if (*a2 == *v11)
    {
      goto LABEL_6;
    }
  }

  if (v16)
  {
    v11 = v16;
  }

  v24 = v11;
  if (v6)
  {
    v14 = 2;
  }

  else
  {
    v14 = result[4];
  }

LABEL_11:
  if (4 * (v4 >> 1) + 4 >= 3 * v14)
  {
    v14 *= 2;
    goto LABEL_34;
  }

  if (v14 + ~(v4 >> 1) - result[1] <= v14 >> 3)
  {
LABEL_34:
    v22 = a2;
    v23 = result;
    v20 = a3;
    v21 = a4;
    llvm::SmallDenseMap<unsigned int,unsigned int,2u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(result, v14);
    llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,unsigned int,2u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(v23, v22, &v24);
    a2 = v22;
    result = v23;
    a3 = v20;
    a4 = v21;
    v4 = *v23;
    v11 = v24;
    v6 = *v23 & 1;
  }

  *result = (v4 & 0xFFFFFFFE | v6) + 2;
  if (*v11 != -1)
  {
    --result[1];
  }

  *v11 = *a2;
  v11[1] = *a3;
  if (*result)
  {
    v15 = 2;
  }

  else
  {
    v5 = *(result + 1);
    v15 = result[4];
  }

  *a4 = v11;
  *(a4 + 8) = &v5[2 * v15];
  *(a4 + 16) = 1;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::SmallDenseMap<unsigned int,unsigned int,2u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>,unsigned int,unsigned int,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::LookupBucketFor<unsigned int>(uint64_t a1, _DWORD *a2, void *a3)
{
  v3 = a1 + 8;
  if (*a1)
  {
    v4 = 2;
LABEL_5:
    v5 = v4 - 1;
    v6 = (37 * *a2) & (v4 - 1);
    v7 = (v3 + 8 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
      *a3 = v7;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -2;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v3 + 8 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }

      *a3 = v7;
    }

    return result;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v3 = *(a1 + 8);
    goto LABEL_5;
  }

  v7 = 0;
  result = 0;
LABEL_8:
  *a3 = v7;
  return result;
}

char *llvm::SmallDenseMap<unsigned int,unsigned int,2u,llvm::DenseMapInfo<unsigned int,void>,llvm::detail::DenseMapPair<unsigned int,unsigned int>>::grow(char *result, unsigned int a2)
{
  v2 = a2;
  v3 = result;
  v56[1] = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    v4 = (a2 - 1) | ((a2 - 1) >> 1);
    v5 = v4 | (v4 >> 2) | ((v4 | (v4 >> 2)) >> 4);
    v6 = ((v5 | (v5 >> 8)) >> 16) | v5 | (v5 >> 8);
    if ((v6 + 1) > 0x40)
    {
      v2 = v6 + 1;
    }

    else
    {
      v2 = 64;
    }
  }

  v7 = *result;
  if ((*result & 1) == 0)
  {
    v9 = result + 8;
    v8 = *(result + 1);
    v10 = *(result + 4);
    if (v2 > 2)
    {
      buffer = llvm::allocate_buffer(8 * v2, 4uLL);
      *(v3 + 1) = buffer;
      *(v3 + 2) = v2;
      v23 = *v3;
      v11 = (v8 + 8 * v10);
      *v3 = *v3 & 1;
      if ((v23 & 1) == 0)
      {
        v24 = &buffer[2 * v2];
        v25 = 8 * v2 - 8;
        if (v25 < 8)
        {
          v27 = buffer;
          do
          {
LABEL_26:
            *v27 = -1;
            v27 += 2;
          }

          while (v27 != v24);
LABEL_27:
          if (!v10)
          {
LABEL_49:

            llvm::deallocate_buffer(v8, (8 * v10));
          }

          v30 = v8;
          while (1)
          {
            v36 = *v30;
            if (*v30 <= 0xFFFFFFFD)
            {
              break;
            }

LABEL_35:
            v30 = (v30 + 8);
            if (v30 == v11)
            {
              goto LABEL_49;
            }
          }

          if (*v3)
          {
            v32 = 1;
            v31 = v3 + 8;
            v33 = (37 * v36) & 1;
            v34 = &v9[8 * v33];
            v35 = *v34;
            if (v36 == *v34)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v31 = *(v3 + 1);
            v32 = *(v3 + 4) - 1;
            v33 = v32 & (37 * v36);
            v34 = &v31[8 * v33];
            v35 = *v34;
            if (v36 == *v34)
            {
LABEL_34:
              *v34 = v36;
              *(v34 + 1) = *(v30 + 1);
              *v3 += 2;
              goto LABEL_35;
            }
          }

          v37 = 0;
          v38 = 1;
          while (v35 != -1)
          {
            if (v37)
            {
              v39 = 0;
            }

            else
            {
              v39 = v35 == -2;
            }

            if (v39)
            {
              v37 = v34;
            }

            v40 = v33 + v38++;
            v33 = v40 & v32;
            v34 = &v31[8 * (v40 & v32)];
            v35 = *v34;
            if (v36 == *v34)
            {
              goto LABEL_34;
            }
          }

          if (v37)
          {
            v34 = v37;
          }

          goto LABEL_34;
        }

LABEL_20:
        v26 = (v25 >> 3) + 1;
        v27 = &buffer[2 * (v26 & 0x3FFFFFFFFFFFFFFELL)];
        v28 = buffer + 2;
        v29 = v26 & 0x3FFFFFFFFFFFFFFELL;
        do
        {
          *(v28 - 2) = -1;
          *v28 = -1;
          v28 += 4;
          v29 -= 2;
        }

        while (v29);
        if (v26 == (v26 & 0x3FFFFFFFFFFFFFFELL))
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v11 = (v8 + 8 * v10);
      *result = 1;
    }

    v24 = v3 + 24;
    buffer = v3 + 8;
    v25 = 8;
    goto LABEL_20;
  }

  v12 = result + 8;
  v13 = v55;
  if (*(result + 2) <= 0xFFFFFFFD)
  {
    v41 = *(result + 3);
    v55[0] = *(result + 2);
    v55[1] = v41;
    v13 = v56;
    v14 = *(result + 4);
    if (v14 > 0xFFFFFFFD)
    {
LABEL_10:
      if (v2 < 3)
      {
        goto LABEL_11;
      }

      goto LABEL_54;
    }
  }

  else
  {
    v14 = *(result + 4);
    if (v14 > 0xFFFFFFFD)
    {
      goto LABEL_10;
    }
  }

  v42 = *(result + 5);
  *v13 = v14;
  v13[1] = v42;
  v13 += 2;
  if (v2 < 3)
  {
LABEL_11:
    *result = v7 & 1;
    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_55:
    v16 = (v3 + 24);
    v15 = v3 + 8;
    v17 = 8;
    goto LABEL_14;
  }

LABEL_54:
  *result = v7 & 0xFFFFFFFE;
  result = llvm::allocate_buffer(8 * v2, 4uLL);
  *(v3 + 1) = result;
  *(v3 + 2) = v2;
  v43 = *v3;
  v14 = v2;
  *v3 = *v3 & 1;
  if (v43)
  {
    goto LABEL_55;
  }

LABEL_12:
  if (!v14)
  {
    goto LABEL_58;
  }

  v15 = *v12;
  v16 = *v12 + 8 * v14;
  v17 = 8 * v14 - 8;
  if (v17 < 8)
  {
    v19 = *v12;
    do
    {
LABEL_57:
      *v19 = -1;
      v19 += 2;
    }

    while (v19 != v16);
    goto LABEL_58;
  }

LABEL_14:
  v18 = (v17 >> 3) + 1;
  v19 = &v15[2 * (v18 & 0x3FFFFFFFFFFFFFFELL)];
  v20 = v15 + 2;
  v21 = v18 & 0x3FFFFFFFFFFFFFFELL;
  do
  {
    *(v20 - 2) = -1;
    *v20 = -1;
    v20 += 4;
    v21 -= 2;
  }

  while (v21);
  if (v18 != (v18 & 0x3FFFFFFFFFFFFFFELL))
  {
    goto LABEL_57;
  }

LABEL_58:
  if (v55 != v13)
  {
    v44 = v55;
    while (1)
    {
      v50 = *v44;
      if (*v44 <= 0xFFFFFFFD)
      {
        break;
      }

LABEL_66:
      v44 += 2;
      if (v44 == v13)
      {
        return result;
      }
    }

    if (*v3)
    {
      v46 = 1;
      v45 = v3 + 8;
      v47 = (37 * v50) & 1;
      v48 = &v12[v47];
      v49 = *v48;
      if (v50 == *v48)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v45 = *(v3 + 1);
      v46 = *(v3 + 4) - 1;
      v47 = v46 & (37 * v50);
      v48 = &v45[8 * v47];
      v49 = *v48;
      if (v50 == *v48)
      {
LABEL_65:
        *v48 = v50;
        *(v48 + 1) = v44[1];
        *v3 += 2;
        goto LABEL_66;
      }
    }

    v51 = 0;
    v52 = 1;
    while (v49 != -1)
    {
      if (v51)
      {
        v53 = 0;
      }

      else
      {
        v53 = v49 == -2;
      }

      if (v53)
      {
        v51 = v48;
      }

      v54 = v47 + v52++;
      v47 = v54 & v46;
      v48 = &v45[8 * (v54 & v46)];
      v49 = *v48;
      if (v50 == *v48)
      {
        goto LABEL_65;
      }
    }

    if (v51)
    {
      v48 = v51;
    }

    goto LABEL_65;
  }

  return result;
}

void llvm::function_ref<void ()(mlir::OpBuilder &,mlir::Location,mlir::ValueRange)>::callback_fn<anonymous namespace::FoldTensorCastOfOutputIntoForallOp::matchAndRewrite(mlir::scf::ForallOp,mlir::PatternRewriter &)::{lambda(mlir::OpBuilder,mlir::Location,mlir::ValueRange)#1}>(uint64_t **a1, _OWORD *a2, uint64_t a3, void *a4, unint64_t a5)
{
  v50 = *MEMORY[0x1E69E9840];
  v7 = a2[1];
  v39[0] = *a2;
  v39[1] = v7;
  v46 = a4;
  v47 = a5;
  v8 = *(**a1 + 36);
  if (a5 <= v8)
  {
    v9 = a4;
    v8 = a5;
  }

  else
  {
    v9 = mlir::ValueRange::offset_base(&v46, a5 - v8);
  }

  __src = v45;
  v44 = 0x600000000;
  if (v8 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v45, v8, 8);
    v10 = v44;
    v11 = __src;
    v41[0] = v9;
    v41[1] = 0;
LABEL_7:
    v12 = 0;
    v13 = &v11[8 * v10];
    do
    {
      *v13++ = mlir::ValueRange::dereference_iterator(v41, v12);
      v12 = v41[1] + 1;
      v41[1] = v12;
    }

    while (v12 != v8);
    LODWORD(v44) = v44 + v8;
    v14 = a1[1];
    v15 = *(v14 + 8);
    if (!v15)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v10 = 0;
  v41[0] = v9;
  v41[1] = 0;
  v11 = v45;
  if (v8)
  {
    goto LABEL_7;
  }

  LODWORD(v44) = 0;
  v14 = a1[1];
  v15 = *(v14 + 8);
  if (v15)
  {
LABEL_10:
    v16 = v14[3];
    v17 = 24 * v15;
    do
    {
      v18 = *(v16 + 2);
      v19 = *v16;
      v16 = (v16 + 24);
      *v41 = v19;
      v42[0] = v18;
      v20 = (__src + 8 * v19);
      *v20 = mlir::OpBuilder::create<mlir::tensor::CastOp,mlir::Type &,mlir::Value &>(v39, a3, v42, v20) - 16;
      v17 -= 24;
    }

    while (v17);
  }

LABEL_12:
  v41[0] = *(**a1 + 16 * ((*(**a1 + 44) >> 23) & 1) + 72);
  mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(v41);
  v22 = v46;
  if (v47 >= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v47;
  }

  v41[0] = v42;
  v41[1] = 0x600000000;
  if (v23 < 7)
  {
    v24 = 0;
    v48 = v46;
    v49 = 0;
    v25 = v42;
    if (!v23)
    {
      v28 = 0;
      v29 = 6;
      goto LABEL_21;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v41, v42, v23, 8);
    v24 = LODWORD(v41[1]);
    v25 = v41[0];
    v48 = v22;
    v49 = 0;
  }

  v26 = 0;
  v27 = &v25[v24];
  do
  {
    *v27++ = mlir::ValueRange::dereference_iterator(&v48, v26);
    v26 = v49 + 1;
    v49 = v26;
  }

  while (v26 != v23);
  v28 = v41[1];
  v29 = HIDWORD(v41[1]);
LABEL_21:
  v30 = (v28 + v23);
  LODWORD(v41[1]) = v30;
  v31 = __src;
  v32 = v44;
  v33 = v44 + v30;
  if (v33 > v29)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(v41, v42, v33, 8);
    LODWORD(v30) = v41[1];
  }

  if (v32)
  {
    memcpy(v41[0] + 8 * v30, v31, 8 * v32);
    LODWORD(v30) = v41[1];
  }

  LODWORD(v41[1]) = v30 + v32;
  v34 = **a1;
  v35 = a1[2];
  v36 = *(((v34 + 16 * ((*(v34 + 44) >> 23) & 1) + ((*(v34 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v34 + 40) + 8);
  if (v36)
  {
    v37 = v36 - 8;
  }

  else
  {
    v37 = 0;
  }

  v40 = mlir::ValueRange::dereference_iterator(&v46, 0);
  ParentBlock = mlir::Value::getParentBlock(&v40);
  mlir::ValueRange::ValueRange(&v48, v41[0], LODWORD(v41[1]));
  mlir::RewriterBase::mergeBlocks(v35, v37, ParentBlock, v48, v49);
  if (v41[0] != v42)
  {
    free(v41[0]);
  }

  if (__src != v45)
  {
    free(__src);
  }
}

void anonymous namespace::ForallOpControlOperandsFolder::~ForallOpControlOperandsFolder(_anonymous_namespace_::ForallOpControlOperandsFolder *this)
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

void anonymous namespace::ForallOpIterArgsFolder::~ForallOpIterArgsFolder(_anonymous_namespace_::ForallOpIterArgsFolder *this)
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

void anonymous namespace::ForallOpIterArgsFolder::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v181 = *MEMORY[0x1E69E9840];
  v155 = 0;
  v156 = a2;
  v153 = 0;
  *v152 = 0u;
  v154 = &v156;
  v172 = v174;
  v173 = 0x600000000;
  v169 = v171;
  v170 = 0x600000000;
  v3 = *(a2 + 36);
  if (v3)
  {
    v4 = (a2 - 16);
  }

  else
  {
    v4 = 0;
  }

  v150 = v4;
  if (!v3)
  {
    v29 = v169;
    if (v169 == v171)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  v145 = a2 - 16;
  v7 = 0;
  v151 = a2 + 64;
  while (1)
  {
    NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v150, v7);
    v166 = NextResultAtOffset;
    if (NextResultAtOffset && (*(NextResultAtOffset + 8) & 7) == 6)
    {
      v10 = *(NextResultAtOffset + 16) + 6;
    }

    else
    {
      v10 = *(NextResultAtOffset + 8) & 7;
    }

    v11 = *(a2 + 44);
    v12 = (v151 + 16 * ((v11 >> 23) & 1));
    v13 = (*(a2 + 72) + 32 * (v12[9] + v12[8] + v12[10] + v10));
    v14 = *(((v12 + ((v11 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
    OperandNumber = mlir::OpOperand::getOperandNumber(v13);
    v16 = v151 + 16 * ((*(a2 + 44) >> 23) & 1);
    v18 = *(v16 + 32);
    v17 = *(v16 + 36);
    v19 = *(v16 + 40);
    __src = *(v16 + 8);
    mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__src);
    if (!*v166)
    {
      goto LABEL_23;
    }

    v21 = v14 - 8;
    if (!v14)
    {
      v21 = 0;
    }

    mlir::scf::ForallOp::getCombiningOps(&v156, *(*(v21 + 48) + 8 * (OperandNumber - (v18 + v17 + v19) + v20)), &__src);
    v22 = v176;
    if (__src != v177)
    {
      free(__src);
    }

    if (v22)
    {
      v23 = v166;
      v24 = v173;
      if (v173 >= HIDWORD(v173))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v172, v174, v173 + 1, 8);
        v24 = v173;
      }

      *(v172 + v24) = v23;
      LODWORD(v173) = v173 + 1;
      v25 = *(v13 + 3);
      v26 = v170;
      if (v170 >= HIDWORD(v170))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v169, v171, v170 + 1, 8);
        v26 = v170;
      }

      *(v169 + v26) = v25;
      v8 = &v170;
    }

    else
    {
LABEL_23:
      llvm::DenseMapBase<llvm::DenseMap<mlir::func::FuncOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseSetPair<mlir::func::FuncOp>>,mlir::func::FuncOp,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<mlir::func::FuncOp,void>,llvm::detail::DenseSetPair<mlir::func::FuncOp>>::try_emplace<llvm::detail::DenseSetEmpty&>(v152, &v166, &__src);
      if (v177[0] != 1)
      {
        goto LABEL_8;
      }

      v27 = v166;
      v28 = v155;
      if (v155 >= HIDWORD(v155))
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v154, &v156, v155 + 1, 8);
        v28 = v155;
      }

      *(v154 + v28) = v27;
      v8 = &v155;
    }

    ++*v8;
LABEL_8:
    if (v3 == ++v7)
    {
      if (!v155)
      {
        v29 = v169;
        if (v169 != v171)
        {
          goto LABEL_29;
        }

LABEL_30:
        if (v172 != v174)
        {
          free(v172);
        }

        if (v154 != &v156)
        {
          free(v154);
        }

        llvm::deallocate_buffer(v152[0], (8 * v153));
      }

      v30 = v154;
      v31 = v154 + 8 * v155;
      do
      {
        if (*v30)
        {
          v32 = (*(*v30 + 8) & 7) == 6;
        }

        else
        {
          v32 = 0;
        }

        if (v32)
        {
          v33 = *(*v30 + 16) + 6;
        }

        else
        {
          v33 = *(*v30 + 8) & 7;
        }

        v34 = *(a2 + 44);
        v35 = (v151 + 16 * ((v34 >> 23) & 1));
        v36 = (*(a2 + 72) + 32 * (v35[9] + v35[8] + v35[10] + v33));
        v37 = *(((v35 + ((v34 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
        if (v37)
        {
          v38 = v37 - 8;
        }

        else
        {
          v38 = 0;
        }

        v39 = mlir::OpOperand::getOperandNumber(v36);
        v40 = v151 + 16 * ((*(a2 + 44) >> 23) & 1);
        v41 = *(v40 + 32);
        v42 = *(v40 + 36);
        v43 = *(v40 + 40);
        __src = *(v40 + 8);
        mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__src);
        mlir::scf::ForallOp::getCombiningOps(&v156, *(*(v38 + 48) + 8 * (v39 - (v41 + v42 + v43) + v44)), &__src);
        v45 = __src;
        if (v176)
        {
          v46 = 8 * v176;
          do
          {
            v47 = *v45++;
            (*(*a3 + 16))(a3, v47);
            v46 -= 8;
          }

          while (v46);
          v45 = __src;
        }

        if (v45 != v177)
        {
          free(v45);
        }

        v30 += 8;
      }

      while (v30 != v31);
      v48 = *(a2 + 24);
      mlir::scf::ForallOp::getLoopLowerBounds(&v156, &__src);
      v166 = v168;
      v167 = 0x600000000;
      v49 = v176;
      if (v176)
      {
        if (v176 < 7)
        {
          v51 = v168;
          v50 = v176;
LABEL_59:
          memcpy(v51, __src, 8 * v50);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v166, v168, v176, 8);
          v50 = v176;
          if (v176)
          {
            v51 = v166;
            goto LABEL_59;
          }
        }

        LODWORD(v167) = v49;
      }

      if (v178 == 1 && __src != v177)
      {
        free(__src);
      }

      mlir::scf::ForallOp::getLoopUpperBounds(&v156, &__src);
      v163 = v165;
      v164 = 0x600000000;
      v52 = v176;
      if (v176)
      {
        if (v176 < 7)
        {
          v54 = v165;
          v53 = v176;
LABEL_69:
          memcpy(v54, __src, 8 * v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v163, v165, v176, 8);
          v53 = v176;
          if (v176)
          {
            v54 = v163;
            goto LABEL_69;
          }
        }

        LODWORD(v164) = v52;
      }

      if (v178 == 1 && __src != v177)
      {
        free(__src);
      }

      mlir::scf::ForallOp::getLoopSteps(&v156, &__src);
      v160 = v162;
      v161 = 0x600000000;
      v55 = v176;
      if (v176)
      {
        if (v176 < 7)
        {
          v57 = v162;
          v56 = v176;
LABEL_79:
          memcpy(v57, __src, 8 * v56);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v160, v162, v176, 8);
          v56 = v176;
          if (v176)
          {
            v57 = v160;
            goto LABEL_79;
          }
        }

        LODWORD(v161) = v55;
      }

      if (v178 == 1 && __src != v177)
      {
        free(__src);
      }

      v58 = *(v151 + 16 * ((*(a2 + 44) >> 23) & 1));
      v157 = v48;
      Context = mlir::Attribute::getContext(&v157);
      v60 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ForallOp,void>::id, Context);
      if ((v61 & 1) == 0)
      {
        v180 = 1283;
        v179[2] = "scf.forall";
        v179[3] = 10;
        v159 = 259;
        llvm::operator+(v179, v158, &__src);
        llvm::report_fatal_error(&__src, 1);
      }

      mlir::OperationState::OperationState(&__src, v48, v60);
      v62 = v166;
      v147 = v167;
      v63 = v163;
      v64 = v164;
      v65 = v160;
      v66 = v161;
      mlir::ValueRange::ValueRange(v179, v169, v170);
      v67 = mlir::OpBuilder::create((a3 + 8), &__src);
      v68 = *(*(v67 + 48) + 16);
      mlir::OperationState::~OperationState(&__src);
      if (v68 == &mlir::detail::TypeIDResolver<mlir::scf::ForallOp,void>::id)
      {
        v69 = v67;
      }

      else
      {
        v69 = 0;
      }

      if (v160 != v162)
      {
        free(v160);
      }

      if (v163 != v165)
      {
        free(v163);
      }

      if (v166 != v168)
      {
        free(v166);
      }

      v70 = *(a2 + 44);
      v71 = v151 + 16 * ((v70 >> 23) & 1);
      v72 = *(((v71 + ((v70 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40) + 8);
      if (v72)
      {
        v73 = v72 - 8;
      }

      else
      {
        v73 = 0;
      }

      v74 = *(((&v69[4 * ((v69[11] >> 23) & 1) + 17] + ((v69[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v69[10] + 8);
      if (v74)
      {
        v75 = v74 - 8;
      }

      else
      {
        v75 = 0;
      }

      v76 = *(v75 + 48);
      v77 = (*(v75 + 56) - v76) >> 3;
      __src = *(v71 + 8);
      mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__src);
      if (v77 >= v78)
      {
        v79 = v78;
      }

      else
      {
        v79 = v77;
      }

      __src = v177;
      v176 = 0x600000000;
      v149 = v75;
      if (v79 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v177, v79, 8);
        v80 = v176;
        v81 = __src;
        goto LABEL_107;
      }

      if (v79)
      {
        v80 = 0;
        v81 = v177;
LABEL_107:
        v82 = &v81[8 * v80];
        v83 = (v79 - 1) & 0x1FFFFFFFFFFFFFFFLL;
        if (v83 < 7)
        {
          v84 = v76;
          goto LABEL_113;
        }

        v85 = &v81[8 * v80];
        v84 = v76;
        if (&v85[-v76] < 0x20)
        {
          goto LABEL_180;
        }

        v86 = v83 + 1;
        v87 = (v83 + 1) & 0x3FFFFFFFFFFFFFFCLL;
        v82 += v87;
        v84 = (v76 + 8 * v87);
        v88 = (v76 + 16);
        v89 = v85 + 16;
        v90 = v87;
        do
        {
          v91 = *v88;
          *(v89 - 1) = *(v88 - 1);
          *v89 = v91;
          v88 += 2;
          v89 += 2;
          v90 -= 4;
        }

        while (v90);
        if (v86 != v87)
        {
LABEL_180:
          do
          {
LABEL_113:
            v92 = *v84++;
            *v82++ = v92;
          }

          while (v84 != (v76 + 8 * v79));
        }

        v93 = v176;
      }

      else
      {
        v93 = 0;
      }

      LODWORD(v176) = v93 + v79;
      v94 = v69[11];
      v95 = &v69[4 * ((v94 >> 23) & 1) + 16];
      v96 = *(((v95 + ((v94 >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v69[10] + 8);
      if (v96)
      {
        v97 = v96 - 8;
      }

      else
      {
        v97 = 0;
      }

      v98 = *(v97 + 48);
      v166 = *(v95 + 8);
      mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&v166);
      v100 = *(a2 + 36);
      if (v100)
      {
        v101 = v145;
      }

      else
      {
        v101 = 0;
      }

      if (v100)
      {
        v146 = v73;
        v148 = v69;
        v102 = 0;
        v103 = 0;
        v104 = v98 + 8 * v99;
        while (1)
        {
          v105 = mlir::detail::OpResultImpl::getNextResultAtOffset(v101, v103);
          if (v153)
          {
            v106 = 0x9DDFEA08EB382D69 * ((8 * v105 - 0xAE502812AA7333) ^ HIDWORD(v105));
            v107 = 0x9DDFEA08EB382D69 * (HIDWORD(v105) ^ (v106 >> 47) ^ v106);
            v108 = (-348639895 * ((v107 >> 47) ^ v107)) & (v153 - 1);
            v109 = *(v152[0] + v108);
            if (v105 == v109)
            {
LABEL_125:
              if (v105 && (*(v105 + 8) & 7) == 6)
              {
                v110 = *(v105 + 16) + 6;
              }

              else
              {
                v110 = *(v105 + 8) & 7;
              }

              v111 = (v151 + 16 * ((*(a2 + 44) >> 23) & 1));
              v112 = *(*(a2 + 72) + 32 * (v111[9] + v111[8] + v111[10] + v110) + 24);
              v113 = v176;
              if (v176 < HIDWORD(v176))
              {
                goto LABEL_130;
              }

LABEL_137:
              llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v177, v113 + 1, 8);
              v113 = v176;
              goto LABEL_130;
            }

            v115 = 1;
            while (v109 != -4096)
            {
              v116 = v108 + v115++;
              v108 = v116 & (v153 - 1);
              v109 = *(v152[0] + v108);
              if (v105 == v109)
              {
                goto LABEL_125;
              }
            }
          }

          v112 = *(v104 + 8 * v102++);
          v113 = v176;
          if (v176 >= HIDWORD(v176))
          {
            goto LABEL_137;
          }

LABEL_130:
          *(__src + v113) = v112;
          v114 = v176 + 1;
          LODWORD(v176) = v176 + 1;
          if (++v103 == v100)
          {
            v73 = v146;
            v69 = v148;
            goto LABEL_139;
          }
        }
      }

      v114 = v176;
LABEL_139:
      mlir::ValueRange::ValueRange(&v166, __src, v114);
      mlir::RewriterBase::mergeBlocks(a3, v73, v149, v166, v167);
      v117 = v69[9];
      if (v117)
      {
        v118 = (v69 - 4);
      }

      else
      {
        v118 = 0;
      }

      if (v173 && v117)
      {
        v119 = 0;
        v120 = v172;
        v121 = (v172 + 8 * v173);
        do
        {
          v122 = mlir::detail::OpResultImpl::getNextResultAtOffset(v118, v119);
          v123 = **v120;
          if (v123)
          {
            v124 = v122;
            do
            {
              v125 = *v123;
              v126 = v123[2];
              (*(*a3 + 40))(a3, v126);
              v127 = v123[1];
              if (v127)
              {
                v128 = *v123;
                *v127 = *v123;
                if (v128)
                {
                  v128[1] = v127;
                }
              }

              v123[3] = v124;
              v123[1] = v124;
              v129 = *v124;
              *v123 = *v124;
              if (v129)
              {
                *(v129 + 8) = v123;
              }

              *v124 = v123;
              (*(*a3 + 48))(a3, v126);
              v123 = v125;
            }

            while (v125);
          }

          if (++v120 == v121)
          {
            break;
          }

          ++v119;
        }

        while (v119 != v117);
      }

      if (v155)
      {
        v130 = v154;
        v131 = v154 + 8 * v155;
        v132 = v156;
        v133 = v156 + 64;
        do
        {
          v134 = *v130;
          if (*v130)
          {
            v135 = (*(*v130 + 8) & 7) == 6;
          }

          else
          {
            v135 = 0;
          }

          if (v135)
          {
            v136 = *(v134 + 16) + 6;
            v137 = *v134;
            if (*v134)
            {
LABEL_165:
              v138 = (v133 + 16 * ((*(v132 + 44) >> 23) & 1));
              v139 = *(*(v132 + 72) + 32 * (v138[9] + v138[8] + v138[10] + v136) + 24);
              do
              {
                v140 = *v137;
                v141 = v137[2];
                (*(*a3 + 40))(a3, v141);
                v142 = v137[1];
                if (v142)
                {
                  v143 = *v137;
                  *v142 = *v137;
                  if (v143)
                  {
                    v143[1] = v142;
                  }
                }

                v137[3] = v139;
                v137[1] = v139;
                v144 = *v139;
                *v137 = *v139;
                if (v144)
                {
                  *(v144 + 8) = v137;
                }

                *v139 = v137;
                (*(*a3 + 48))(a3, v141);
                v137 = v140;
              }

              while (v140);
            }
          }

          else
          {
            v136 = *(*v130 + 8) & 7;
            v137 = *v134;
            if (*v134)
            {
              goto LABEL_165;
            }
          }

          v130 += 8;
        }

        while (v130 != v131);
      }

      if (__src != v177)
      {
        free(__src);
      }

      v29 = v169;
      if (v169 == v171)
      {
        goto LABEL_30;
      }

LABEL_29:
      free(v29);
      goto LABEL_30;
    }
  }
}

void anonymous namespace::ForallOpSingleOrZeroIterationDimsFolder::~ForallOpSingleOrZeroIterationDimsFolder(_anonymous_namespace_::ForallOpSingleOrZeroIterationDimsFolder *this)
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

uint64_t anonymous namespace::ForallOpSingleOrZeroIterationDimsFolder::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v139[6] = *MEMORY[0x1E69E9840];
  v105 = a2;
  v5 = a2 + 64;
  if (!*(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)) || (__src = *(a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1)), LOBYTE(v119) = 1, mlir::ArrayAttr::getValue(&__src), !v6))
  {
    v95 = *(a2 + 24);
    v96 = a3;
    v137 = v139;
    v138 = 0x600000000;
    v134 = v136;
    v135 = 0x600000000;
    v131 = v133;
    v132 = 0x600000000;
    v97[0] = 0;
    v97[1] = 0;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v103 = 0;
    v104 = 0;
    mlir::scf::ForallOp::getLoopLowerBounds(&v105, &__src);
    __dst = v117;
    v116 = 0x600000000;
    v8 = v119;
    if (!v119)
    {
LABEL_10:
      if (v122 == 1 && __src != v120)
      {
        free(__src);
      }

      mlir::scf::ForallOp::getLoopUpperBounds(&v105, &__src);
      v112 = v114;
      v113 = 0x600000000;
      v11 = v119;
      if (!v119)
      {
LABEL_19:
        if (v122 == 1 && __src != v120)
        {
          free(__src);
        }

        mlir::scf::ForallOp::getLoopSteps(&v105, &__src);
        v109 = v111;
        v110 = 0x600000000;
        v14 = v119;
        if (!v119)
        {
LABEL_28:
          if (v122 == 1 && __src != v120)
          {
            free(__src);
          }

          mlir::scf::ForallOp::getLoopInductionVars(&v105, &__src);
          v106 = v108;
          v107 = 0x600000000;
          v17 = v119;
          if (!v119)
          {
LABEL_37:
            if (v122 == 1 && __src != v120)
            {
              free(__src);
            }

            __src = v120;
            v119 = 0x600000000;
            v20 = v116;
            if (v116)
            {
              if (__dst == v117)
              {
                v21 = v116;
                if (v116 < 7 || (llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v120, v116, 8), (v21 = v116) != 0))
                {
                  memcpy(__src, __dst, 8 * v21);
                }

                LODWORD(v119) = v20;
              }

              else
              {
                __src = __dst;
                v119 = v116;
                __dst = v117;
                HIDWORD(v116) = 0;
              }

              LODWORD(v116) = 0;
            }

            v122 = v124;
            v123 = 0x600000000;
            v22 = v113;
            if (!v113)
            {
LABEL_58:
              v125 = v127;
              v126 = 0x600000000;
              v24 = v110;
              if (!v110)
              {
                goto LABEL_68;
              }

              if (v109 != v111)
              {
                v125 = v109;
                v126 = v110;
                v109 = v111;
                HIDWORD(v110) = 0;
LABEL_67:
                LODWORD(v110) = 0;
LABEL_68:
                v94 = a2;
                v128 = v130;
                v129 = 0x600000000;
                v26 = v107;
                v27 = v106;
                if (!v107)
                {
LABEL_78:
                  if (v27 != v108)
                  {
                    free(v27);
                  }

                  if (v109 != v111)
                  {
                    free(v109);
                  }

                  if (v112 != v114)
                  {
                    free(v112);
                  }

                  if (__dst != v117)
                  {
                    free(__dst);
                  }

                  v29 = 0;
                  v93 = v5;
                  if (!v119 || !v123 || !v126 || !v129)
                  {
LABEL_110:
                    if (v128 != v130)
                    {
                      free(v128);
                    }

                    if (v125 != v127)
                    {
                      free(v125);
                    }

                    if (v122 != v124)
                    {
                      free(v122);
                    }

                    v56 = v94;
                    if (__src != v120)
                    {
                      free(__src);
                    }

                    if ((v29 & 1) == 0)
                    {
                      v57 = v138;
                      if (v138)
                      {
                        __src = *(v93 + 16 * ((*(v94 + 44) >> 23) & 1) + 8);
                        mlir::detail::DenseArrayAttrImpl<long long>::operator llvm::ArrayRef<long long>(&__src);
                        if (v57 == v58)
                        {
                          __src = "no dimensions have 0 or 1 iterations";
                          v121.i16[0] = 259;
                          __dst = &__src;
                          v59 = v96[2];
                          if (v59 && mlir::RewriterBase::Listener::classof(v96[2]))
                          {
                            (*(*v59 + 88))(v59, *(v94 + 24), llvm::function_ref<void ()(mlir::Diagnostic &)>::callback_fn<llvm::LogicalResult mlir::RewriterBase::notifyMatchFailure<mlir::scf::ForallOp &>(mlir::scf::ForallOp &,llvm::Twine const&)::{lambda(mlir::Diagnostic &)#1}>, &__dst);
                          }
                        }

                        else
                        {
                          v60 = *(v94 + 44);
                          v61 = (v93 + 16 * ((v60 >> 23) & 1));
                          v62 = v61[8];
                          v63 = v61[9];
                          v65 = v61[10];
                          v64 = v61[11];
                          if ((v60 & 0x800000) != 0)
                          {
                            v66 = *(v94 + 72);
                          }

                          else
                          {
                            v66 = 0;
                          }

                          v67 = (v63 + v62 + v65);
                          __src = (v66 + 32 * v67);
                          v119 = (v64 + v67) - v67;
                          __dst = 0;
                          v68 = mlir::OpBuilder::create<mlir::scf::ForallOp,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::OperandRange,std::nullopt_t const&,decltype(nullptr)>((v96 + 1), v95, &v137, &v134, &v131, &__src);
                          v69 = ((v68 + 64 + 16 * ((*(v68 + 44) >> 23) & 1) + ((*(v68 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v68 + 40);
                          v70 = *(v69 + 8);
                          if (v70 != v69)
                          {
                            do
                            {
                              v71 = *(v70 + 8);
                              v72 = (v70 - 8);
                              if (v70)
                              {
                                v73 = v70 - 8;
                              }

                              else
                              {
                                v73 = 0;
                              }

                              llvm::ilist_traits<mlir::Block>::removeNodeFromList(v69, v73);
                              v74 = *(v73 + 8);
                              v75 = *(v73 + 16);
                              *v75 = v74;
                              *(v74 + 8) = v75;
                              *(v73 + 8) = 0;
                              *(v73 + 16) = 0;
                              mlir::Block::~Block(v72);
                              operator delete(v76);
                              v70 = v71;
                            }

                            while (v71 != v69);
                            v56 = v105;
                          }

                          v77 = *(v68 + 48);
                          v78 = *(v77 + 96);
                          v79 = v78->i64[*(v77 + 104) - 1];
                          v80 = v78->i64[1];
                          __src = v120;
                          v81 = v78[1];
                          v120[0] = v79;
                          v120[1] = v80;
                          v121 = vextq_s8(v81, v81, 8uLL);
                          v119 = 0x600000004;
                          __dst = mlir::Operation::getAttrDictionary(v56);
                          Value = mlir::ArrayAttr::getValue(&__dst);
                          if (v83)
                          {
                            v84 = Value;
                            v85 = (Value + 16 * v83);
                            do
                            {
                              CallableRegion = mlir::CallGraphNode::getCallableRegion(v84);
                              if (v119)
                              {
                                v88 = 8 * v119;
                                v89 = __src;
                                while (*v89 != CallableRegion)
                                {
                                  ++v89;
                                  v88 -= 8;
                                  if (!v88)
                                  {
                                    goto LABEL_135;
                                  }
                                }
                              }

                              else
                              {
                                v89 = __src;
                              }

                              if (v89 == (__src + 8 * v119))
                              {
LABEL_135:
                                (*(*v96 + 40))(v96, v68);
                                v86 = mlir::CallGraphNode::getCallableRegion(v84);
                                mlir::Operation::setAttr(v68, v86, v84[1]);
                                (*(*v96 + 48))(v96, v68);
                              }

                              v84 += 2;
                            }

                            while (v84 != v85);
                          }

                          v90 = ((v68 + 64 + 16 * ((*(v68 + 44) >> 23) & 1) + ((*(v68 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v68 + 40);
                          mlir::OpBuilder::cloneRegionBefore((v96 + 1), (((&v56[4 * ((v56[11] >> 23) & 1) + 17] + ((v56[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v56[10]), v90, *(v90 + 8), v97);
                          v91 = *(v68 + 36);
                          if (v91)
                          {
                            v92 = v68 - 16;
                          }

                          else
                          {
                            v92 = 0;
                          }

                          mlir::ValueRange::ValueRange(&__dst, v92, v91);
                          (**v96)(v96, v56, __dst, v116);
                          if (__src != v120)
                          {
                            free(__src);
                          }
                        }
                      }

                      else
                      {
                        mlir::scf::promote(v96, v94);
                      }
                    }

                    llvm::deallocate_buffer(v102, (16 * v104));
                  }

                  v30 = __src;
                  v31 = v122;
                  v32 = v125;
                  v33 = v128;
                  v34 = 8 * v129 - 8;
                  v35 = 8 * v126 - 8;
                  v36 = 8 * v123 - 8;
                  v37 = 8 * v119 - 8;
                  while (1)
                  {
                    v38 = mlir::constantTripCount(*v30, *v31, *v32);
                    if (v39)
                    {
                      if (v38 == 1)
                      {
                        v46 = *v33;
                        ConstantIndexOp = mlir::getValueOrCreateConstantIndexOp(v96 + 1, v95, *v30);
                        __dst = v46;
                        *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>,mlir::Value,mlir::Value,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,mlir::Value>>::operator[](v97, &__dst) = ConstantIndexOp;
                        v29 = 0;
                        if (!v37)
                        {
                          goto LABEL_110;
                        }

                        goto LABEL_103;
                      }

                      if (!v38)
                      {
                        v49 = *(v94 + 44);
                        v50 = (v93 + 16 * ((v49 >> 23) & 1));
                        v51 = v50[8];
                        v52 = v50[9];
                        v54 = v50[10];
                        v53 = v50[11];
                        if ((v49 & 0x800000) != 0)
                        {
                          v55 = *(v94 + 72);
                        }

                        else
                        {
                          v55 = 0;
                        }

                        mlir::ValueRange::ValueRange(&__dst, v55 + 32 * (v52 + v51 + v54), (v53 + v52 + v51 + v54) - (v52 + v51 + v54));
                        (**v96)(v96, v94, __dst, v116);
                        v29 = 1;
                        goto LABEL_110;
                      }
                    }

                    v40 = *v30;
                    v41 = v138;
                    if (v138 >= HIDWORD(v138))
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v137, v139, v138 + 1, 8);
                      v41 = v138;
                    }

                    v137[v41] = v40;
                    LODWORD(v138) = v138 + 1;
                    v42 = *v31;
                    v43 = v135;
                    if (v135 >= HIDWORD(v135))
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v134, v136, v135 + 1, 8);
                      v43 = v135;
                    }

                    *&v134[8 * v43] = v42;
                    LODWORD(v135) = v135 + 1;
                    v44 = *v32;
                    v45 = v132;
                    if (v132 >= HIDWORD(v132))
                    {
                      llvm::SmallVectorBase<unsigned int>::grow_pod(&v131, v133, v132 + 1, 8);
                      v45 = v132;
                    }

                    *(v131 + v45) = v44;
                    LODWORD(v132) = v132 + 1;
                    v29 = 0;
                    if (!v37)
                    {
                      goto LABEL_110;
                    }

LABEL_103:
                    if (v36)
                    {
                      if (v35)
                      {
                        ++v30;
                        ++v31;
                        ++v32;
                        ++v33;
                        v48 = v34;
                        v34 -= 8;
                        v35 -= 8;
                        v36 -= 8;
                        v37 -= 8;
                        if (v48)
                        {
                          continue;
                        }
                      }
                    }

                    goto LABEL_110;
                  }
                }

                if (v106 != v108)
                {
                  v128 = v106;
                  v129 = v107;
                  v106 = v108;
                  HIDWORD(v107) = 0;
                  v27 = v108;
LABEL_77:
                  LODWORD(v107) = 0;
                  goto LABEL_78;
                }

                if (v107 < 7)
                {
                  v28 = v107;
                }

                else
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod(&v128, v130, v107, 8);
                  v28 = v107;
                  v27 = v106;
                  if (!v107)
                  {
                    goto LABEL_76;
                  }
                }

                memcpy(v128, v27, 8 * v28);
                v27 = v106;
LABEL_76:
                LODWORD(v129) = v26;
                goto LABEL_77;
              }

              if (v110 < 7)
              {
                v25 = v110;
              }

              else
              {
                llvm::SmallVectorBase<unsigned int>::grow_pod(&v125, v127, v110, 8);
                v25 = v110;
                if (!v110)
                {
                  goto LABEL_66;
                }
              }

              memcpy(v125, v109, 8 * v25);
LABEL_66:
              LODWORD(v126) = v24;
              goto LABEL_67;
            }

            if (v112 != v114)
            {
              v122 = v112;
              v123 = v113;
              v112 = v114;
              HIDWORD(v113) = 0;
LABEL_57:
              LODWORD(v113) = 0;
              goto LABEL_58;
            }

            if (v113 < 7)
            {
              v23 = v113;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v122, v124, v113, 8);
              v23 = v113;
              if (!v113)
              {
                goto LABEL_56;
              }
            }

            memcpy(v122, v112, 8 * v23);
LABEL_56:
            LODWORD(v123) = v22;
            goto LABEL_57;
          }

          v18 = v108;
          v19 = v119;
          if (v119 >= 7)
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v106, v108, v119, 8);
            v19 = v119;
            if (!v119)
            {
LABEL_36:
              LODWORD(v107) = v17;
              goto LABEL_37;
            }

            v18 = v106;
          }

          memcpy(v18, __src, 8 * v19);
          goto LABEL_36;
        }

        v15 = v111;
        v16 = v119;
        if (v119 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v109, v111, v119, 8);
          v16 = v119;
          if (!v119)
          {
LABEL_27:
            LODWORD(v110) = v14;
            goto LABEL_28;
          }

          v15 = v109;
        }

        memcpy(v15, __src, 8 * v16);
        goto LABEL_27;
      }

      v12 = v114;
      v13 = v119;
      if (v119 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v112, v114, v119, 8);
        v13 = v119;
        if (!v119)
        {
LABEL_18:
          LODWORD(v113) = v11;
          goto LABEL_19;
        }

        v12 = v112;
      }

      memcpy(v12, __src, 8 * v13);
      goto LABEL_18;
    }

    v9 = v117;
    v10 = v119;
    if (v119 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__dst, v117, v119, 8);
      v10 = v119;
      if (!v119)
      {
LABEL_9:
        LODWORD(v116) = v8;
        goto LABEL_10;
      }

      v9 = __dst;
    }

    memcpy(v9, __src, 8 * v10);
    goto LABEL_9;
  }

  return 0;
}

uint64_t mlir::OpBuilder::create<mlir::scf::ForallOp,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::OperandRange,std::nullopt_t const&,decltype(nullptr)>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28[5] = *MEMORY[0x1E69E9840];
  v25 = a2;
  Context = mlir::Attribute::getContext(&v25);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::ForallOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::ForallOp,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,llvm::SmallVector<mlir::OpFoldResult,6u> &,mlir::OperandRange,std::nullopt_t const&,decltype(nullptr)>(v27, v28, v26);
  }

  mlir::OperationState::OperationState(v27, a2, v13);
  v15 = *a3;
  v16 = *(a3 + 8);
  v17 = *a4;
  v18 = *(a4 + 8);
  v19 = *a5;
  v20 = *(a5 + 8);
  mlir::ValueRange::ValueRange(v28, *a6, *(a6 + 8));
  mlir::scf::ForallOp::build(a1, v27, v15, v16, v17, v18, v19, v20, v28[0], v28[1], 0, 0, 0, v24);
  v21 = mlir::OpBuilder::create(a1, v27);
  if (*(*(v21 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::ForallOp,void>::id)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  mlir::OperationState::~OperationState(v27);
  return v22;
}

uint64_t mlir::OpTrait::SingleBlockImplicitTerminator<mlir::scf::YieldOp>::Impl<mlir::scf::IfOp>::buildTerminator(uint64_t a1, uint64_t a2)
{
  v5[38] = *MEMORY[0x1E69E9840];
  mlir::OperationState::OperationState(v5, a2, "scf.yield", 9);
  v3 = mlir::Operation::create(v5, v2);
  mlir::OperationState::~OperationState(v5);
  return v3;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::RegionSuccessor,true>::growAndEmplaceBack<mlir::Region *>(uint64_t a1, uint64_t *a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10 = *a2;
  v3 = &v10;
  mlir::ValueRange::ValueRange(v11, 0, 0);
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4 >= *(a1 + 12))
  {
    if (v5 <= &v10 && v5 + 24 * v4 > &v10)
    {
      v9 = &v11[-1] - v5;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v4 + 1, 24);
      v5 = *a1;
      v3 = &v9[*a1];
    }

    else
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v4 + 1, 24);
      v5 = *a1;
      v3 = &v10;
    }
  }

  v6 = v5 + 24 * *(a1 + 8);
  v7 = *v3;
  *(v6 + 16) = *(v3 + 2);
  *v6 = v7;
  LODWORD(v6) = *(a1 + 8) + 1;
  *(a1 + 8) = v6;
  return *a1 + 24 * v6 - 24;
}

uint64_t llvm::SmallVectorTemplateBase<mlir::InvocationBounds,true>::growAndEmplaceBack<int,int>(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  LODWORD(v7) = *a2;
  HIDWORD(v7) = *a3;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    v6 = a1;
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v3 + 1, 12);
    a1 = v6;
    LODWORD(v3) = *(v6 + 8);
  }

  v4 = *a1 + 12 * v3;
  *v4 = v7;
  *(v4 + 8) = 1;
  LODWORD(v4) = *(a1 + 8) + 1;
  *(a1 + 8) = v4;
  return *a1 + 12 * v4 - 12;
}

void anonymous namespace::CombineIfs::~CombineIfs(_anonymous_namespace_::CombineIfs *this)
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

uint64_t anonymous namespace::CombineIfs::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v216[6] = *MEMORY[0x1E69E9840];
  if (MPSGraphDelegateCompiler.precompilationDescriptor.modify(*(*(a2 + 16) + 40), a2) == a2)
  {
    return 0;
  }

  v6 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(*a2, v5);
  v7 = *(*(v6 + 48) + 16);
  v8 = v7 == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id ? v6 : 0;
  if (v7 != &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
  {
    return 0;
  }

  v9 = v6;
  if (*(*(a2 + 72) + 24) != *(*(v6 + 72) + 24))
  {
    v10 = 0;
    v11 = 0;
    v214 = *(*(a2 + 72) + 24);
    DefiningOp = mlir::Value::getDefiningOp(&v214);
    if (!DefiningOp)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v13 = (32 * *(a2 + 40) + ((a2 + ((*(a2 + 44) >> 21) & 0x7F8) + 87) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13 - 8;
  v53 = *v13 == 0;
  v17 = v13[3];
  v16 = v13 + 3;
  v15 = v17;
  if (v53)
  {
    v11 = 0;
  }

  else
  {
    v11 = v14;
  }

  v18 = (v15 - 1);
  if (!v15)
  {
    v18 = 0;
  }

  if (v15 == v16)
  {
    v10 = 0;
  }

  else
  {
    v10 = v18;
  }

  v214 = *(*(a2 + 72) + 24);
  DefiningOp = mlir::Value::getDefiningOp(&v214);
  if (DefiningOp)
  {
LABEL_18:
    if (*(*(DefiningOp + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
    {
      v19 = *(DefiningOp + 72);
      if (*(v19 + 24) == *(*(v9 + 72) + 24))
      {
        v202 = *(v19 + 56);
        v50 = mlir::Value::getDefiningOp(&v202);
        if (v50)
        {
          v51 = v50;
          LODWORD(v215) = 1;
          v214 = 0;
          v204 = &v214;
          __src = 0;
          p_src = &__src;
          v56 = mlir::detail::constant_op_binder<mlir::Attribute>::match(&p_src, v50) && ((v52 = *(*(*(v51 - 8) & 0xFFFFFFFFFFFFFFF8) + 136), v52 != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) ? (v53 = v52 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id) : (v53 = 1), !v53 ? (v54 = v52 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id) : (v54 = 1), !v54 ? (v55 = v52 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) : (v55 = 1), v55 && mlir::detail::constant_int_value_binder::match(&v204, __src)) && mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke(&v214);
          if (v215 >= 0x41 && v214)
          {
            operator delete[](v214);
          }

          if (v56)
          {
            v61 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
            v62 = *v61 - 8;
            v53 = *v61 == 0;
            v65 = v61[3];
            v64 = v61 + 3;
            v63 = v65;
            if (v53)
            {
              v10 = 0;
            }

            else
            {
              v10 = v62;
            }

            v66 = (v63 - 1);
            if (!v63)
            {
              v66 = 0;
            }

            if (v63 != v64)
            {
              v11 = v66;
            }
          }
        }
      }
    }
  }

LABEL_20:
  v214 = *(*(v9 + 72) + 24);
  v20 = mlir::Value::getDefiningOp(&v214);
  if (v20)
  {
    if (*(*(v20 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::arith::XOrIOp,void>::id)
    {
      v22 = *(v20 + 72);
      if (*(v22 + 24) == *(*(a2 + 72) + 24))
      {
        v202 = *(v22 + 56);
        v57 = mlir::Value::getDefiningOp(&v202);
        if (v57)
        {
          v58 = v57;
          LODWORD(v215) = 1;
          v214 = 0;
          v204 = &v214;
          __src = 0;
          p_src = &__src;
          v60 = mlir::detail::constant_op_binder<mlir::Attribute>::match(&p_src, v57) && ((v59 = *(*(*(v58 - 8) & 0xFFFFFFFFFFFFFFF8) + 136), v59 == &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id) || v59 == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id || v59 == &mlir::detail::TypeIDResolver<mlir::VectorType,void>::id || v59 == &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id) && mlir::detail::constant_int_value_binder::match(&v204, __src) && mlir::m_One(void)::{lambda(llvm::APInt const&)#1}::__invoke(&v214);
          if (v215 >= 0x41 && v214)
          {
            operator delete[](v214);
          }

          if (v60)
          {
            v67 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
            v10 = *v67 ? *v67 - 8 : 0;
            v68 = v67[3];
            if (v68 != v67 + 3)
            {
              if (v68)
              {
                v11 = (v68 - 1);
              }

              else
              {
                v11 = 0;
              }
            }
          }
        }
      }
    }
  }

  if (!(v11 | v10))
  {
    return 0;
  }

  v214 = v216;
  v215 = 0x600000000;
  v23 = *(v9 + 44);
  v24 = (v23 >> 23) & 1;
  v193 = v9 + 64;
  v25 = (v23 >> 21) & 0x7F8;
  v26 = 32 * *(v9 + 40);
  v27 = v26 + v25 + v9 + 64 + 16 * v24;
  v28 = *(v27 + 24);
  v195 = v9;
  if (v28 == v27 + 24)
  {
    goto LABEL_115;
  }

  v29 = v28 - 8;
  if (!v28)
  {
    v29 = 0;
  }

  v30 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(*(v29 + 32), v21);
  if ((*(v30 + 46) & 0x80) != 0)
  {
    v31 = *(v30 + 72);
    v32 = *(v30 + 68);
    __src = v213;
    v212 = 0x600000000;
    if (v32 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v213, v32, 8);
      v33 = __src + 8 * v212;
      if (v32 >= 0xD && (v33 >= v31 + 32 * v32 || v31 + 24 >= __src + 8 * v212 + 8 * v32))
      {
        v36 = v32 & 3;
        if ((v32 & 3) == 0)
        {
          v36 = 4;
        }

        v37 = v32 - v36;
        v38 = &v33[8 * v37];
        v39 = (v31 + 88);
        v40 = (v33 + 16);
        v41 = v37;
        do
        {
          v42 = v39 - 8;
          v43 = vld4q_f64(v42);
          v44 = vld4q_f64(v39);
          *(v40 - 1) = v43;
          *v40 = v44;
          v39 += 16;
          v40 += 2;
          v41 -= 4;
        }

        while (v41);
        v33 = v38;
LABEL_45:
        v45 = v32 - v37;
        v46 = (v31 + 32 * v37 + 24);
        do
        {
          v47 = *v46;
          v46 += 4;
          *v33 = v47;
          v33 += 8;
          --v45;
        }

        while (v45);
        v21 = __src;
        v48 = (v212 + v32);
        LODWORD(v212) = v48;
        if (__src != v213)
        {
          if (v214 != v216)
          {
            free(v214);
            v21 = __src;
            LODWORD(v48) = v212;
          }

          v214 = v21;
          v215 = __PAIR64__(HIDWORD(v212), v48);
          __src = v213;
          HIDWORD(v212) = 0;
          goto LABEL_112;
        }

        v49 = v215;
        if (v215 >= v48)
        {
          if (v48)
          {
            memmove(v214, __src, 8 * v48);
          }

          goto LABEL_111;
        }

        if (HIDWORD(v215) >= v48)
        {
          if (v215)
          {
            memmove(v214, __src, 8 * v215);
            goto LABEL_107;
          }
        }

        else
        {
          LODWORD(v215) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v214, v216, v48, 8);
        }

        v49 = 0;
LABEL_107:
        if (v212 != v49)
        {
          memcpy(&v214[8 * v49], __src + 8 * v49, 8 * (v212 - v49));
        }

        goto LABEL_111;
      }

LABEL_44:
      v37 = 0;
      goto LABEL_45;
    }

    if (v32)
    {
      v33 = v213;
      goto LABEL_44;
    }
  }

  else
  {
    __src = v213;
    HIDWORD(v212) = 6;
  }

  LODWORD(v48) = 0;
  LODWORD(v212) = 0;
LABEL_111:
  LODWORD(v215) = v48;
LABEL_112:
  LODWORD(v212) = 0;
  if (__src != v213)
  {
    free(__src);
  }

  v69 = *(v9 + 44);
  v24 = (v69 >> 23) & 1;
  v25 = (v69 >> 21) & 0x7F8;
  v26 = 32 * *(v9 + 40);
LABEL_115:
  v201 = *(v8 + 36);
  v70 = *(((v193 + 16 * v24 + v25) & 0xFFFFFFFFFFFFFFF8) + v26);
  if (v70)
  {
    v71 = v70 - 8;
  }

  else
  {
    v71 = 0;
  }

  v72 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(*(v71 + 32), v21);
  v192 = a2;
  v194 = v8;
  if ((*(v72 + 46) & 0x80) != 0)
  {
    v196 = *(v72 + 72);
    v199 = *(v72 + 68);
    v191 = (v8 - 16);
    if (v201)
    {
      v73 = (v8 - 16);
    }

    else
    {
      v73 = 0;
    }

    v198 = v73;
    if (!v201)
    {
      goto LABEL_156;
    }
  }

  else
  {
    v196 = 0;
    v191 = (v8 - 16);
    if (v201)
    {
      v190 = (v8 - 16);
    }

    else
    {
      v190 = 0;
    }

    v198 = v190;
    v199 = 0;
    if (!v201)
    {
      goto LABEL_156;
    }
  }

  if (v199 && v215)
  {
    v74 = 0;
    v75 = v214;
    v197 = &v214[8 * v215];
    while (1)
    {
      v76 = *mlir::detail::OpResultImpl::getNextResultAtOffset(v198, v74);
      if (v76)
      {
        break;
      }

LABEL_153:
      if (++v74 != v201 && v74 != v199 && ++v75 != v197)
      {
        continue;
      }

      goto LABEL_156;
    }

    v77 = *(v196 + 32 * v74 + 24);
    while (1)
    {
      v78 = v76;
      v76 = *v76;
      if (v11)
      {
        Parent = mlir::Block::getParent(v11);
        v80 = *(v78[2] + 16);
        if (v80)
        {
          v81 = mlir::Block::getParent(v80);
          if (Parent == v81)
          {
            goto LABEL_137;
          }
        }

        else
        {
          v81 = 0;
          if (!Parent)
          {
            goto LABEL_137;
          }
        }

        if (mlir::Region::isProperAncestor(Parent, v81))
        {
LABEL_137:
          (*(*a3 + 40))(a3, v78[2]);
          v82 = v78[1];
          if (v82)
          {
            v83 = *v78;
            *v82 = *v78;
            if (v83)
            {
              *(v83 + 8) = v82;
            }
          }

          v78[3] = v77;
          v78[1] = v77;
          v84 = *v77;
          *v78 = *v77;
          v85 = v77;
          if (!v84)
          {
            goto LABEL_129;
          }

          goto LABEL_128;
        }
      }

      if (!v10)
      {
        goto LABEL_130;
      }

      v86 = mlir::Block::getParent(v10);
      v87 = *(v78[2] + 16);
      if (v87)
      {
        v88 = mlir::Block::getParent(v87);
        if (v86 == v88)
        {
          goto LABEL_148;
        }
      }

      else
      {
        v88 = 0;
        if (!v86)
        {
          goto LABEL_148;
        }
      }

      if (!mlir::Region::isProperAncestor(v86, v88))
      {
        goto LABEL_130;
      }

LABEL_148:
      (*(*a3 + 40))(a3, v78[2]);
      v85 = *v75;
      v89 = v78[1];
      if (v89)
      {
        v90 = *v78;
        *v89 = *v78;
        if (v90)
        {
          *(v90 + 8) = v89;
        }
      }

      v78[3] = v85;
      v78[1] = v85;
      v84 = *v85;
      *v78 = *v85;
      if (!v84)
      {
        goto LABEL_129;
      }

LABEL_128:
      *(v84 + 8) = v78;
LABEL_129:
      *v85 = v78;
      (*(*a3 + 48))(a3, v78[2]);
LABEL_130:
      if (!v76)
      {
        goto LABEL_153;
      }
    }
  }

LABEL_156:
  v91 = *(v194 + 36);
  v92 = v191;
  if (!v91)
  {
    v92 = 0;
  }

  __src = v92;
  v212 = v91;
  mlir::OperandRange::getTypes(&__src, &p_src);
  __src = v213;
  v212 = 0x600000000;
  v93 = p_src;
  v94 = v208;
  v95 = v210;
  v96 = v210 - v208;
  if ((v210 - v208) < 7)
  {
    v97 = 0;
    v98 = 0;
    v99 = a2;
    v100 = v193;
    if (v210 == v208)
    {
      goto LABEL_165;
    }
  }

  else
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v213, v210 - v208, 8);
    v97 = v212;
    v98 = v212;
    v99 = a2;
    v100 = v193;
    if (v95 == v94)
    {
      goto LABEL_165;
    }
  }

  v101 = (__src + 8 * v97);
  do
  {
    *v101++ = *(mlir::detail::OpResultImpl::getNextResultAtOffset(v93, v94++) + 8) & 0xFFFFFFFFFFFFFFF8;
  }

  while (v95 != v94);
  v98 = v212;
LABEL_165:
  LODWORD(v212) = v98 + v96;
  v102 = *(v99 + 36);
  v103 = (v99 - 16);
  if (!v102)
  {
    v103 = 0;
  }

  v204 = v103;
  v205 = v102;
  mlir::OperandRange::getTypes(&v204, &p_src);
  llvm::SmallVectorImpl<mlir::Type>::insert<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(&__src, __src + 8 * v212, p_src, v208, v209, v210);
  v104 = *(v99 + 24);
  v105 = v195;
  p_src = *(*(v195 + 72) + 24);
  LOBYTE(v204) = 0;
  v106 = mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,6u> &,mlir::detail::TypedValue<mlir::IntegerType>,BOOL>((a3 + 1), v104, &__src, &p_src, &v204);
  v107 = v106 + 16;
  v108 = *(((&v106[4 * ((v106[11] >> 23) & 1) + 17] + ((v106[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v106[10]);
  if (v108)
  {
    v109 = v108 - 8;
  }

  else
  {
    v109 = 0;
  }

  (*(*a3 + 24))(a3, v109);
  v110 = ((&v107[4 * ((v106[11] >> 23) & 1) + 1] + ((v106[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v106[10];
  mlir::RewriterBase::inlineRegionBefore(a3, (v100 + 16 * ((*(v195 + 44) >> 23) & 1) + ((*(v195 + 44) >> 21) & 0x7F8) + 32 * *(v195 + 40)), v110, *(v110 + 8));
  if (v11)
  {
    v112 = *(((&v107[4 * ((v106[11] >> 23) & 1) + 1] + ((v106[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v106[10]);
    if (v112)
    {
      v113 = v112 - 8;
    }

    else
    {
      v113 = 0;
    }

    v114 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(*(v113 + 32), v111);
    Terminator = mlir::Block::getTerminator(v11, v115);
    v117 = *(((&v107[4 * ((v106[11] >> 23) & 1) + 1] + ((v106[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v106[10]);
    if (v117)
    {
      v118 = v117 - 8;
    }

    else
    {
      v118 = 0;
    }

    mlir::ValueRange::ValueRange(&p_src, 0, 0);
    mlir::RewriterBase::mergeBlocks(a3, v11, v118, p_src, v208);
    v119 = *(((&v107[4 * ((v106[11] >> 23) & 1) + 1] + ((v106[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v106[10]);
    if (v119)
    {
      v120 = v119 - 8;
    }

    else
    {
      v120 = 0;
    }

    a3[3] = v120;
    a3[4] = v120 + 32;
    v200 = v114;
    if ((*(v114 + 46) & 0x80) != 0)
    {
      v121 = v114;
      v122 = *(v114 + 72);
      v123 = *(v121 + 68);
      p_src = &v209;
      v208 = 0x600000000;
      if (v123 >= 7)
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&p_src, &v209, v123, 8);
        v99 = v192;
        v124 = (p_src + 8 * v208);
        if (v123 >= 0xD && (v124 >= v122 + 32 * v123 || v122 + 24 >= p_src + 8 * v208 + 8 * v123))
        {
          v126 = v123 & 3;
          if ((v123 & 3) == 0)
          {
            v126 = 4;
          }

          v127 = v123 - v126;
          v128 = &v124[v127];
          v129 = (v122 + 88);
          v130 = (v124 + 2);
          v131 = v127;
          do
          {
            v132 = v129 - 8;
            v133 = vld4q_f64(v132);
            v134 = vld4q_f64(v129);
            *(v130 - 1) = v133;
            *v130 = v134;
            v129 += 16;
            v130 += 2;
            v131 -= 4;
          }

          while (v131);
          v124 = v128;
          goto LABEL_197;
        }

LABEL_196:
        v127 = 0;
LABEL_197:
        v135 = v123 - v127;
        v136 = (v122 + 32 * v127 + 24);
        do
        {
          v137 = *v136;
          v136 += 4;
          *v124++ = v137;
          --v135;
        }

        while (v135);
        v138 = v208;
        goto LABEL_200;
      }

      v99 = v192;
      if (v123)
      {
        v124 = &v209;
        goto LABEL_196;
      }

      v138 = 0;
    }

    else
    {
      LODWORD(v123) = 0;
      v138 = 0;
      p_src = &v209;
      HIDWORD(v208) = 6;
      v99 = v192;
    }

LABEL_200:
    v139 = v138 + v123;
    LODWORD(v208) = v139;
    if ((*(Terminator + 46) & 0x80) != 0)
    {
      v140 = *(Terminator + 72);
      v141 = *(Terminator + 68);
    }

    else
    {
      v140 = 0;
      v141 = 0;
    }

    v105 = v195;
    llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&p_src, p_src + 8 * v139, v140, 0, v140, v141);
    mlir::OpBuilder::create<mlir::scf::YieldOp,llvm::SmallVector<mlir::Value,6u> &>((a3 + 1), *(Terminator + 24), &p_src);
    (*(*a3 + 16))(a3, v200);
    (*(*a3 + 16))(a3, Terminator);
    if (p_src != &v209)
    {
      free(p_src);
    }
  }

  v142 = ((&v107[4 * ((v106[11] >> 23) & 1) + 1] + ((v106[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v106[10];
  mlir::RewriterBase::inlineRegionBefore(a3, (v100 + 16 * ((*(v105 + 44) >> 23) & 1) + ((*(v105 + 44) >> 21) & 0x7F8) + 32 * *(v105 + 40) + 24), v142 + 24, *(v142 + 32));
  if (v10)
  {
    v144 = ((&v107[4 * ((v106[11] >> 23) & 1) + 1] + ((v106[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v106[10];
    v145 = *(v144 + 24);
    if (v145 != v144 + 24)
    {
      if (v145)
      {
        v146 = v145 - 8;
      }

      else
      {
        v146 = 0;
      }

      v147 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(*(v146 + 32), v143);
      v149 = mlir::Block::getTerminator(v10, v148);
      v150 = ((&v107[4 * ((v106[11] >> 23) & 1) + 1] + ((v106[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v106[10];
      v151 = *(v150 + 24);
      if (v151 == v150 + 24 || v151 == 0)
      {
        v153 = 0;
      }

      else
      {
        v153 = v151 - 8;
      }

      mlir::ValueRange::ValueRange(&p_src, 0, 0);
      mlir::RewriterBase::mergeBlocks(a3, v10, v153, p_src, v208);
      v154 = ((&v107[4 * ((v106[11] >> 23) & 1) + 1] + ((v106[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v106[10];
      v155 = *(v154 + 24);
      if (v155 == v154 + 24 || v155 == 0)
      {
        v157 = 0;
      }

      else
      {
        v157 = v155 - 8;
      }

      a3[3] = v157;
      a3[4] = v157 + 32;
      if ((*(v147 + 46) & 0x80) != 0)
      {
        v158 = *(v147 + 72);
        v159 = *(v147 + 68);
        p_src = &v209;
        v208 = 0x600000000;
        if (v159 >= 7)
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&p_src, &v209, v159, 8);
          v160 = (p_src + 8 * v208);
          if (v159 >= 0xD && (v160 >= v158 + 32 * v159 || v158 + 24 >= p_src + 8 * v208 + 8 * v159))
          {
            v164 = v159 & 3;
            if ((v159 & 3) == 0)
            {
              v164 = 4;
            }

            v163 = v159 - v164;
            v165 = &v160[v163];
            v166 = (v158 + 88);
            v167 = (v160 + 2);
            v168 = v163;
            do
            {
              v169 = v166 - 8;
              v170 = vld4q_f64(v169);
              v171 = vld4q_f64(v166);
              *(v167 - 1) = v170;
              *v167 = v171;
              v166 += 16;
              v167 += 2;
              v168 -= 4;
            }

            while (v168);
            v160 = v165;
            goto LABEL_237;
          }

LABEL_230:
          v163 = 0;
LABEL_237:
          v172 = v159 - v163;
          v173 = (v158 + 32 * v163 + 24);
          do
          {
            v174 = *v173;
            v173 += 4;
            *v160++ = v174;
            --v172;
          }

          while (v172);
          v175 = v208;
          goto LABEL_240;
        }

        if (v159)
        {
          v160 = &v209;
          goto LABEL_230;
        }

        v175 = 0;
      }

      else
      {
        LODWORD(v159) = 0;
        v175 = 0;
        p_src = &v209;
        HIDWORD(v208) = 6;
      }

LABEL_240:
      v176 = v175 + v159;
      LODWORD(v208) = v176;
      if ((*(v149 + 46) & 0x80) != 0)
      {
        v177 = *(v149 + 72);
        v178 = *(v149 + 68);
      }

      else
      {
        v177 = 0;
        v178 = 0;
      }

      llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&p_src, p_src + 8 * v176, v177, 0, v177, v178);
      mlir::OpBuilder::create<mlir::scf::YieldOp,llvm::SmallVector<mlir::Value,6u> &>((a3 + 1), *(v149 + 24), &p_src);
      (*(*a3 + 16))(a3, v147);
      (*(*a3 + 16))(a3, v149);
      if (p_src != &v209)
      {
        free(p_src);
      }

      goto LABEL_244;
    }

    v161 = mlir::Block::getParent(v10);
    v162 = ((&v107[4 * ((v106[11] >> 23) & 1) + 1] + ((v106[11] >> 21) & 0x7F8) + 3) & 0xFFFFFFFFFFFFFFF8) + 32 * v106[10];
    mlir::RewriterBase::inlineRegionBefore(a3, v161, v162 + 24, *(v162 + 32));
  }

LABEL_244:
  p_src = &v209;
  v208 = 0x600000000;
  v204 = v206;
  v205 = 0x600000000;
  v179 = v106[9];
  if (v179)
  {
    v180 = (v106 - 4);
  }

  else
  {
    v180 = 0;
  }

  if (v179)
  {
    v181 = 0;
    v182 = v194;
    do
    {
      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v180, v181);
      if (v181 < *(v194 + 36))
      {
        v183 = v208;
        p_p_src = &p_src;
        if (v208 >= HIDWORD(v208))
        {
          v186 = NextResultAtOffset;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&p_src, &v209, v208 + 1, 8);
          NextResultAtOffset = v186;
          v99 = v192;
          v183 = v208;
        }
      }

      else
      {
        v183 = v205;
        p_p_src = &v204;
        if (v205 >= HIDWORD(v205))
        {
          v185 = NextResultAtOffset;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v204, v206, v205 + 1, 8);
          NextResultAtOffset = v185;
          v99 = v192;
          v183 = v205;
        }
      }

      *(*p_p_src + v183) = NextResultAtOffset;
      ++*(p_p_src + 2);
      ++v181;
    }

    while (v179 != v181);
    v188 = p_src;
    v189 = v208;
  }

  else
  {
    v189 = 0;
    v188 = &v209;
    v182 = v194;
  }

  mlir::ValueRange::ValueRange(&v202, v188, v189);
  (**a3)(a3, v182, v202, v203);
  mlir::ValueRange::ValueRange(&v202, v204, v205);
  (**a3)(a3, v99, v202, v203);
  if (v204 != v206)
  {
    free(v204);
  }

  if (p_src != &v209)
  {
    free(p_src);
  }

  if (__src != v213)
  {
    free(__src);
  }

  if (v214 != v216)
  {
    free(v214);
  }

  return 1;
}

uint64_t mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,6u> &,mlir::detail::TypedValue<mlir::IntegerType>,BOOL>(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned __int8 *a5)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::scf::IfOp,llvm::SmallVector<mlir::Type,6u> &,mlir::detail::TypedValue<mlir::IntegerType>,BOOL>(v18, v19, v17);
  }

  mlir::OperationState::OperationState(v18, a2, v11);
  mlir::ValueRange::ValueRange(v19, *a3, *(a3 + 8));
  mlir::scf::IfOp::build(a1, v18, v19[0], v19[1], *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v18);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v18);
  return v14;
}

char *llvm::SmallVectorImpl<mlir::Type>::insert<mlir::ValueTypeIterator<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator>,void>(uint64_t a1, uint64_t a2, mlir::detail::OpResultImpl *this, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v10 = *a1;
  v11 = a2 - *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 12);
  v14 = a6 - a4;
  v15 = a6 - a4 + v12;
  if (*a1 + 8 * v12 != a2)
  {
    if (v15 > v13)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v15, 8);
      v10 = *a1;
      v12 = *(a1 + 8);
    }

    __src = (v10 + v11);
    v16 = 8 * v12;
    v17 = (v10 + 8 * v12);
    v18 = 8 * v12 - v11;
    v19 = v18 >> 3;
    if (v18 >> 3 < v14)
    {
      v20 = v12 + v14;
      *(a1 + 8) = v20;
      if (v16 == v11)
      {
        v21 = (v10 + v11);
      }

      else
      {
        v29 = (v10 + 8 * v20 - 8 * v19);
        v21 = (v10 + v11);
        memcpy(v29, __src, v18);
        v30 = __src;
        do
        {
          *v30++ = *(mlir::detail::OpResultImpl::getNextResultAtOffset(this, v7++) + 8) & 0xFFFFFFFFFFFFFFF8;
          --v19;
        }

        while (v19);
      }

      for (; a6 != v7; ++v7)
      {
        *v17++ = *(mlir::detail::OpResultImpl::getNextResultAtOffset(this, v7) + 8) & 0xFFFFFFFFFFFFFFF8;
      }

      return v21;
    }

    v23 = 8 * v14;
    v24 = v12 + ((8 * v14) >> 3);
    if (v24 > *(a1 + 12))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v24, 8);
      LODWORD(v12) = *(a1 + 8);
    }

    v25 = &v17[v23 / 0xFFFFFFFFFFFFFFF8];
    if (a6 == v7)
    {
      goto LABEL_29;
    }

    v26 = (*a1 + 8 * v12);
    v27 = 8 * a6 - 8 * v7 - 8;
    if (v27 >= 0x38)
    {
      v31 = 8 * v12 + *a1;
      v28 = &v17[v23 / 0xFFFFFFFFFFFFFFF8];
      if ((v31 - v25) >= 0x20)
      {
        v32 = (v27 >> 3) + 1;
        v33 = v32 & 0x3FFFFFFFFFFFFFFCLL;
        v26 = (v26 + v33 * 8);
        v28 = &v25[v33];
        v34 = (8 * v7 + v16 - 8 * a6 + v10 + 16);
        v35 = (v31 + 16);
        v36 = v32 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v37 = *v34;
          *(v35 - 1) = *(v34 - 1);
          *v35 = v37;
          v34 += 2;
          v35 += 2;
          v36 -= 4;
        }

        while (v36);
        if (v32 == (v32 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v28 = &v17[v23 / 0xFFFFFFFFFFFFFFF8];
    }

    do
    {
      v38 = *v28++;
      *v26++ = v38;
    }

    while (v28 != v17);
LABEL_29:
    *(a1 + 8) = v12 + v14;
    v21 = __src;
    if (v25 != __src)
    {
      memmove(&__src[v23 / 8], __src, &v17[v23 / 0xFFFFFFFFFFFFFFF8] - __src);
    }

    if (a6 != v7)
    {
      v39 = __src;
      do
      {
        *v39++ = *(mlir::detail::OpResultImpl::getNextResultAtOffset(this, v7++) + 8) & 0xFFFFFFFFFFFFFFF8;
      }

      while (a6 != v7);
    }

    return v21;
  }

  if (v15 > v13)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a1, a1 + 16, v15, 8);
    v12 = *(a1 + 8);
    v10 = *a1;
  }

  if (a6 != v7)
  {
    v22 = (v10 + 8 * v12);
    do
    {
      *v22++ = *(mlir::detail::OpResultImpl::getNextResultAtOffset(this, v7++) + 8) & 0xFFFFFFFFFFFFFFF8;
    }

    while (a6 != v7);
    LODWORD(v12) = *(a1 + 8);
    v10 = *a1;
  }

  *(a1 + 8) = v12 + v14;
  return (v10 + v11);
}

void anonymous namespace::CombineNestedIfs::~CombineNestedIfs(_anonymous_namespace_::CombineNestedIfs *this)
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

uint64_t anonymous namespace::CombineNestedIfs::matchAndRewrite(uint64_t a1, uint64_t a2, void *a3)
{
  v131 = *MEMORY[0x1E69E9840];
  v3 = a2 + 64;
  v4 = (((a2 + 64 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  if (*v4)
  {
    v5 = *v4 - 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v5 + 40);
  v7 = (v5 + 32);
  if (v6 == v7)
  {
    return 0;
  }

  v8 = *v7;
  if (v6 == v8 || v6[1] != v8)
  {
    return 0;
  }

  v14 = v4[3];
  v12 = v4 + 3;
  v13 = v14;
  if (v14 && v13 != v12)
  {
    v35 = v13[4];
    v36 = v13 + 3;
    if (v35 == v36 || *(v35 + 8) != v36)
    {
      return 0;
    }
  }

  v16 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v6, a2);
  v18 = *(*(v16 + 48) + 16);
  v19 = v18 == &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id ? v16 : 0;
  if (v18 != &mlir::detail::TypeIDResolver<mlir::scf::IfOp,void>::id)
  {
    return 0;
  }

  v20 = v16;
  v21 = v16 + 64;
  v22 = v16 + 64 + 16 * ((*(v16 + 44) >> 23) & 1) + ((*(v16 + 44) >> 21) & 0x7F8) + 32 * *(v16 + 40);
  v25 = *(v22 + 24);
  v24 = v22 + 24;
  v23 = v25;
  if (v25 && v23 != v24)
  {
    v37 = *(v23 + 32);
    v38 = v23 + 24;
    if (v37 == v38 || *(v37 + 8) != v38)
    {
      return 0;
    }
  }

  v27 = *(((v3 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  if (v27)
  {
    v28 = v27 - 8;
  }

  else
  {
    v28 = 0;
  }

  v29 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(*(v28 + 32), v17);
  if ((*(v29 + 46) & 0x80) != 0)
  {
    v31 = *(v29 + 72);
    v32 = *(v29 + 68);
    v30 = v128;
    v126 = v128;
    v127 = 0x600000000;
    if (v32 >= 7)
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v126, v128, v32, 8);
      v33 = v127;
      v34 = v126;
      goto LABEL_37;
    }

    if (v32)
    {
      v33 = 0;
      v34 = v128;
LABEL_37:
      v39 = &v34[8 * v33];
      if (v32 >= 0xD && ((v40 = &v34[8 * v33 + 8 * v32], v39 < v31 + 32 * v32) ? (v41 = v31 + 24 >= v40) : (v41 = 1), v41))
      {
        v42 = v32 & 3;
        if ((v32 & 3) == 0)
        {
          v42 = 4;
        }

        v43 = v32 - v42;
        v44 = &v39[v43];
        v45 = (v31 + 88);
        v46 = (v39 + 2);
        v47 = v43;
        do
        {
          v48 = v45 - 8;
          v49 = vld4q_f64(v48);
          v50 = vld4q_f64(v45);
          *(v46 - 1) = v49;
          *v46 = v50;
          v45 += 16;
          v46 += 2;
          v47 -= 4;
        }

        while (v47);
        v39 = v44;
      }

      else
      {
        v43 = 0;
      }

      v51 = v32 - v43;
      v52 = (v31 + 32 * v43 + 24);
      do
      {
        v53 = *v52;
        v52 += 4;
        *v39++ = v53;
        --v51;
      }

      while (v51);
      v54 = v127;
      goto LABEL_52;
    }

    v54 = 0;
  }

  else
  {
    LODWORD(v32) = 0;
    v54 = 0;
    v126 = v128;
    HIDWORD(v127) = 6;
  }

LABEL_52:
  v55 = v54 + v32;
  LODWORD(v127) = v55;
  v56 = *(a2 + 40);
  v57 = v3 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8);
  v123 = v125;
  v124 = 0x600000000;
  v58 = ((v57 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * v56;
  v61 = *(v58 + 24);
  v60 = v58 + 24;
  v59 = v61;
  if (v61)
  {
    v62 = v59 == v60;
  }

  else
  {
    v62 = 1;
  }

  if (!v62)
  {
    v63 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(*(v59 + 24), v30);
    if ((*(v63 + 46) & 0x80) != 0)
    {
      v64 = *(v63 + 72);
      v65 = *(v63 + 68);
    }

    else
    {
      v64 = 0;
      v65 = 0;
    }

    llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::OperandRange,mlir::OpOperand *,mlir::Value,mlir::Value,mlir::Value>::iterator,void>(&v123, v123 + 8 * v124, v64, 0, v64, v65);
    v55 = v127;
  }

  v120 = v122;
  v121 = 0xC00000000;
  if (v55)
  {
    v66 = 0;
    v67 = v126;
    v68 = 8 * v55;
    while (1)
    {
      while (mlir::Value::getDefiningOp(v67) != v19)
      {
        if (mlir::Value::getParentRegion(v67) == (((v3 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40)))
        {
          goto LABEL_112;
        }

        v70 = v121;
        if (v121 >= HIDWORD(v121))
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v120, v122, v121 + 1, 4);
          v70 = v121;
        }

        *(v120 + v70) = v66;
        LODWORD(v121) = v121 + 1;
        ++v66;
        v67 = (v67 + 8);
        v68 -= 8;
        if (!v68)
        {
          goto LABEL_84;
        }
      }

      v71 = *(*v67 + 8) & 7;
      if (*v67)
      {
        v72 = v71 == 6;
      }

      else
      {
        v72 = 0;
      }

      if (v72)
      {
        v71 = (*(*v67 + 16) + 6);
      }

      v73 = v21 + 16 * ((*(v20 + 44) >> 23) & 1) + ((*(v20 + 44) >> 21) & 0x7F8) + 32 * *(v20 + 40);
      v74 = *(v73 + 24);
      v75 = v74 == v73 + 24 || v74 == 0;
      v76 = v75 ? 0 : v74 - 8;
      v77 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(*(v76 + 32), v69);
      if (*(*(v77 + 72) + 32 * v71 + 24) != *(v123 + v66))
      {
        break;
      }

      v79 = *(32 * *(v20 + 40) + v21 + 16 * ((*(v20 + 44) >> 23) & 1) + ((*(v20 + 44) >> 21) & 0x7F8));
      if (v79)
      {
        v80 = v79 - 8;
      }

      else
      {
        v80 = 0;
      }

      v81 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(*(v80 + 32), v78);
      *&v126[8 * v66++] = *(*(v81 + 72) + 32 * v71 + 24);
      v67 = (v67 + 8);
      v68 -= 8;
      if (!v68)
      {
        goto LABEL_84;
      }
    }

LABEL_112:
    result = 0;
  }

  else
  {
LABEL_84:
    v82 = *(a2 + 24);
    v117 = *(*(a2 + 72) + 24);
    v129 = *(*(v19 + 72) + 24);
    v116 = mlir::OpBuilder::create<mlir::arith::AndIOp,mlir::detail::TypedValue<mlir::IntegerType>,mlir::detail::TypedValue<mlir::IntegerType>>((a3 + 1), v82, &v117, &v129) - 16;
    v83 = *(a2 + 36);
    v84 = a2 - 16;
    if (!v83)
    {
      v84 = 0;
    }

    v129 = v84;
    v130 = v83;
    mlir::OperandRange::getTypes(&v129, &v117);
    v115 = v82;
    v85 = mlir::OpBuilder::create<mlir::scf::IfOp,mlir::ValueTypeRange<mlir::ResultRange>,mlir::Value &>((a3 + 1), v82, &v117, &v116);
    v86 = v85 + 64;
    v87 = ((v85 + 64 + 16 * ((*(v85 + 44) >> 23) & 1) + ((*(v85 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v85 + 40);
    mlir::ValueRange::ValueRange(&v117, 0, 0);
    Block = mlir::OpBuilder::createBlock(a3 + 1, v87, 0, v117, v118, 0, 0);
    v117 = v119;
    v118 = 0x600000000;
    v89 = *(v85 + 36);
    if (v89)
    {
      v90 = (v85 - 16);
    }

    else
    {
      v90 = 0;
    }

    llvm::SmallVectorImpl<mlir::Value>::insert<llvm::detail::indexed_accessor_range_base<mlir::ResultRange,mlir::detail::OpResultImpl *,mlir::OpResult,mlir::OpResult,mlir::OpResult>::iterator,void>(&v117, v119, v90, 0, v90, v89);
    v91 = *(v85 + 16);
    v93 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v85, v92);
    a3[3] = v91;
    a3[4] = v93;
    if (v121)
    {
      v94 = v120;
      v95 = 4 * v121;
      do
      {
        v96 = *v94++;
        v97 = *(a2 + 24);
        v129 = *(*(a2 + 72) + 24);
        v98 = 8 * v96;
        v99 = mlir::OpBuilder::create<mlir::arith::SelectOp,mlir::Value &,mlir::Value &,mlir::Value &>((a3 + 1), v97, &v129, &v126[v98], (v123 + v98));
        *(v117 + v98) = v99 - 16;
        v95 -= 4;
      }

      while (v95);
    }

    v100 = *(32 * *(v20 + 40) + v21 + 16 * ((*(v20 + 44) >> 23) & 1) + ((*(v20 + 44) >> 21) & 0x7F8));
    if (v100)
    {
      v101 = v100 - 8;
    }

    else
    {
      v101 = 0;
    }

    mlir::ValueRange::ValueRange(&v129, 0, 0);
    mlir::RewriterBase::mergeBlocks(a3, v101, Block, v129, v130);
    v103 = *(((v86 + 16 * ((*(v85 + 44) >> 23) & 1) + ((*(v85 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v85 + 40));
    if (v103)
    {
      v104 = v103 - 8;
    }

    else
    {
      v104 = 0;
    }

    a3[3] = v104;
    a3[4] = v104 + 32;
    v105 = *(((v86 + 16 * ((*(v85 + 44) >> 23) & 1) + ((*(v85 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v85 + 40));
    if (v105)
    {
      v106 = v105 - 8;
    }

    else
    {
      v106 = 0;
    }

    v107 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(*(v106 + 32), v102);
    v108 = mlir::OpBuilder::create<mlir::scf::YieldOp,llvm::SmallVector<mlir::Value,6u> &>((a3 + 1), *(v107 + 24), &v126);
    (*(*a3 + 8))(a3, v107, v108);
    if (v124)
    {
      v109 = ((v86 + 16 * ((*(v85 + 44) >> 23) & 1) + ((*(v85 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v85 + 40);
      mlir::ValueRange::ValueRange(&v129, 0, 0);
      mlir::OpBuilder::createBlock(a3 + 1, v109 + 24, 0, v129, v130, 0, 0);
      v110 = ((v86 + 16 * ((*(v85 + 44) >> 23) & 1) + ((*(v85 + 44) >> 21) & 0x7F8) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 * *(v85 + 40);
      v111 = *(v110 + 24);
      if (v111 == v110 + 24 || v111 == 0)
      {
        v113 = 0;
      }

      else
      {
        v113 = v111 - 8;
      }

      a3[3] = v113;
      a3[4] = v113 + 32;
      mlir::OpBuilder::create<mlir::scf::YieldOp,llvm::SmallVector<mlir::Value,6u> &>((a3 + 1), v115, &v123);
    }

    mlir::ValueRange::ValueRange(&v129, v117, v118);
    (**a3)(a3, a2, v129, v130);
    if (v117 != v119)
    {
      free(v117);
    }

    result = 1;
  }

  v114 = result;
  if (v120 != v122)
  {
    free(v120);
    result = v114;
  }

  if (v123 != v125)
  {
    free(v123);
    result = v114;
  }

  if (v126 != v128)
  {
    free(v126);
    return v114;
  }

  return result;
}