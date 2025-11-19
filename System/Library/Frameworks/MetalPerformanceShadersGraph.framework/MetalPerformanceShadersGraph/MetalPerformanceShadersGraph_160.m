uint64_t mlir::RegisteredOperationName::insert<mlir::mps::CumulativeMinimumOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::CumulativeMinimumOp>,mlir::OpTrait::OneResult<mlir::mps::CumulativeMinimumOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::CumulativeMinimumOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::CumulativeMinimumOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::CumulativeMinimumOp>,mlir::OpTrait::OpInvariants<mlir::mps::CumulativeMinimumOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::CumulativeMinimumOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::CumulativeMinimumOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::CumulativeMinimumOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::CumulativeMinimumOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.cumulative_minimum", 22, a1, &mlir::detail::TypeIDResolver<mlir::mps::CumulativeMinimumOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1A8C0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::CumulativeMinimumOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::CumulativeProductOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::CumulativeProductOp>,mlir::OpTrait::OneResult<mlir::mps::CumulativeProductOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::CumulativeProductOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::CumulativeProductOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::CumulativeProductOp>,mlir::OpTrait::OpInvariants<mlir::mps::CumulativeProductOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::CumulativeProductOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::CumulativeProductOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::CumulativeProductOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::CumulativeProductOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.cumulative_product", 22, a1, &mlir::detail::TypeIDResolver<mlir::mps::CumulativeProductOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1A9A0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::CumulativeProductOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::CumulativeSumOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::CumulativeSumOp>,mlir::OpTrait::OneResult<mlir::mps::CumulativeSumOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::CumulativeSumOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::CumulativeSumOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::CumulativeSumOp>,mlir::OpTrait::OpInvariants<mlir::mps::CumulativeSumOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::CumulativeSumOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::CumulativeSumOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::CumulativeSumOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::CumulativeSumOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.cumulative_sum", 18, a1, &mlir::detail::TypeIDResolver<mlir::mps::CumulativeSumOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1AA80;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::CumulativeSumOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::DegammaOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::DegammaOp>,mlir::OpTrait::OneResult<mlir::mps::DegammaOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::DegammaOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::DegammaOp>,mlir::OpTrait::OneOperand<mlir::mps::DegammaOp>,mlir::OpTrait::OpInvariants<mlir::mps::DegammaOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::DegammaOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::DegammaOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::DegammaOp>,mlir::OpTrait::Stitchable<mlir::mps::DegammaOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::DegammaOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::DegammaOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.degamma", 11, a1, &mlir::detail::TypeIDResolver<mlir::mps::DegammaOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1AB60;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::DepthToSpace2DOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::DepthToSpace2DOp>,mlir::OpTrait::OneResult<mlir::mps::DepthToSpace2DOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::DepthToSpace2DOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::DepthToSpace2DOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::DepthToSpace2DOp>,mlir::OpTrait::OpInvariants<mlir::mps::DepthToSpace2DOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::DepthToSpace2DOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::DepthToSpace2DOp>,mlir::OpTrait::Stitchable<mlir::mps::DepthToSpace2DOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::DepthToSpace2DOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::DepthToSpace2DOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.depth_to_space_2d", 21, a1, &mlir::detail::TypeIDResolver<mlir::mps::DepthToSpace2DOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1AC40;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::DepthToSpace2DOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::DepthwiseConv2DDataGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::DepthwiseConv2DDataGradientOp>,mlir::OpTrait::OneResult<mlir::mps::DepthwiseConv2DDataGradientOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::DepthwiseConv2DDataGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::DepthwiseConv2DDataGradientOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::DepthwiseConv2DDataGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::DepthwiseConv2DDataGradientOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::DepthwiseConv2DDataGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::DepthwiseConv2DDataGradientOp>,mlir::mps::MixedPrecisionInterface::Trait<mlir::mps::DepthwiseConv2DDataGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::DepthwiseConv2DDataGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::DepthwiseConv2DDataGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.depthwise_conv_2d_data_gradient", 35, a1, &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DDataGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1AD20;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::DepthwiseConv2DDataGradientOp::getAttributeNames(void)::attrNames, 6);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::DepthwiseConv2DOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::DepthwiseConv2DOp>,mlir::OpTrait::OneResult<mlir::mps::DepthwiseConv2DOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::DepthwiseConv2DOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::DepthwiseConv2DOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::DepthwiseConv2DOp>,mlir::OpTrait::OpInvariants<mlir::mps::DepthwiseConv2DOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::DepthwiseConv2DOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::DepthwiseConv2DOp>,mlir::mps::MixedPrecisionInterface::Trait<mlir::mps::DepthwiseConv2DOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::DepthwiseConv2DOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::DepthwiseConv2DOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.depthwise_conv_2d", 21, a1, &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1AE00;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::DepthwiseConv2DOp::getAttributeNames(void)::attrNames, 6);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::DepthwiseConv2DWeightsGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::DepthwiseConv2DWeightsGradientOp>,mlir::OpTrait::OneResult<mlir::mps::DepthwiseConv2DWeightsGradientOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::DepthwiseConv2DWeightsGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::DepthwiseConv2DWeightsGradientOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::DepthwiseConv2DWeightsGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::DepthwiseConv2DWeightsGradientOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::DepthwiseConv2DWeightsGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::DepthwiseConv2DWeightsGradientOp>,mlir::mps::MixedPrecisionInterface::Trait<mlir::mps::DepthwiseConv2DWeightsGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::DepthwiseConv2DWeightsGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::DepthwiseConv2DWeightsGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.depthwise_conv_2d_weights_gradient", 38, a1, &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv2DWeightsGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1AEE0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::DepthwiseConv2DWeightsGradientOp::getAttributeNames(void)::attrNames, 6);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::DepthwiseConv3DDataGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::DepthwiseConv3DDataGradientOp>,mlir::OpTrait::OneResult<mlir::mps::DepthwiseConv3DDataGradientOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::DepthwiseConv3DDataGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::DepthwiseConv3DDataGradientOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::mps::DepthwiseConv3DDataGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::DepthwiseConv3DDataGradientOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::DepthwiseConv3DDataGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::DepthwiseConv3DDataGradientOp>,mlir::mps::MixedPrecisionInterface::Trait<mlir::mps::DepthwiseConv3DDataGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::DepthwiseConv3DDataGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::DepthwiseConv3DDataGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.depthwise_conv_3d_data_gradient", 35, a1, &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DDataGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1AFC0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::DepthwiseConv3DDataGradientOp::getAttributeNames(void)::attrNames, 5);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::DepthwiseConv3DOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::DepthwiseConv3DOp>,mlir::OpTrait::OneResult<mlir::mps::DepthwiseConv3DOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::DepthwiseConv3DOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::DepthwiseConv3DOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::DepthwiseConv3DOp>,mlir::OpTrait::OpInvariants<mlir::mps::DepthwiseConv3DOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::DepthwiseConv3DOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::DepthwiseConv3DOp>,mlir::mps::MixedPrecisionInterface::Trait<mlir::mps::DepthwiseConv3DOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::DepthwiseConv3DOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::DepthwiseConv3DOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.depthwise_conv_3d", 21, a1, &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1B0A0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::DepthwiseConv3DOp::getAttributeNames(void)::attrNames, 5);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::DepthwiseConv3DWeightsGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::DepthwiseConv3DWeightsGradientOp>,mlir::OpTrait::OneResult<mlir::mps::DepthwiseConv3DWeightsGradientOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::DepthwiseConv3DWeightsGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::DepthwiseConv3DWeightsGradientOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::DepthwiseConv3DWeightsGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::DepthwiseConv3DWeightsGradientOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::DepthwiseConv3DWeightsGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::DepthwiseConv3DWeightsGradientOp>,mlir::mps::MixedPrecisionInterface::Trait<mlir::mps::DepthwiseConv3DWeightsGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::DepthwiseConv3DWeightsGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::DepthwiseConv3DWeightsGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.depthwise_conv_3d_weights_gradient", 38, a1, &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DWeightsGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1B180;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::DepthwiseConv3DWeightsGradientOp::getAttributeNames(void)::attrNames, 5);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::DequantizeLUTOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::DequantizeLUTOp>,mlir::OpTrait::OneResult<mlir::mps::DequantizeLUTOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::DequantizeLUTOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::DequantizeLUTOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::DequantizeLUTOp>,mlir::OpTrait::OpInvariants<mlir::mps::DequantizeLUTOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::DequantizeLUTOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::DequantizeLUTOp>,mlir::DowngraderInterface::Trait<mlir::mps::DequantizeLUTOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::DequantizeLUTOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::DequantizeLUTOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.dequantize_lut", 18, a1, &mlir::detail::TypeIDResolver<mlir::mps::DequantizeLUTOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1B260;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::DequantizeLUTOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::DequantizeOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::DequantizeOp>,mlir::OpTrait::OneResult<mlir::mps::DequantizeOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::DequantizeOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::DequantizeOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::DequantizeOp>,mlir::OpTrait::OpInvariants<mlir::mps::DequantizeOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::DequantizeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::DequantizeOp>,mlir::DowngraderInterface::Trait<mlir::mps::DequantizeOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::DequantizeOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::DequantizeOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.dequantize", 14, a1, &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1B340;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::DequantizeOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::DimensionSizeOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::DimensionSizeOp>,mlir::OpTrait::OneResult<mlir::mps::DimensionSizeOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::DimensionSizeOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::DimensionSizeOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::DimensionSizeOp>,mlir::OpTrait::OpInvariants<mlir::mps::DimensionSizeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::DimensionSizeOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::DimensionSizeOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::DimensionSizeOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.dimension_size", 18, a1, &mlir::detail::TypeIDResolver<mlir::mps::DimensionSizeOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1B420;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::DiracOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::DiracOp>,mlir::OpTrait::OneResult<mlir::mps::DiracOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::DiracOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::DiracOp>,mlir::OpTrait::OneOperand<mlir::mps::DiracOp>,mlir::OpTrait::OpInvariants<mlir::mps::DiracOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::DiracOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::DiracOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::DiracOp>,mlir::OpTrait::Stitchable<mlir::mps::DiracOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::DiracOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::DiracOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.dirac", 9, a1, &mlir::detail::TypeIDResolver<mlir::mps::DiracOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1B500;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::DivideOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::DivideOp>,mlir::OpTrait::OneResult<mlir::mps::DivideOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::DivideOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::DivideOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::DivideOp>,mlir::OpTrait::OpInvariants<mlir::mps::DivideOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::DivideOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::DivideOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::DivideOp>,mlir::OpTrait::Stitchable<mlir::mps::DivideOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::DivideOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::DivideOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.divide", 10, a1, &mlir::detail::TypeIDResolver<mlir::mps::DivideOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1B5E0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::DynamicShapeCastOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::DynamicShapeCastOp>,mlir::OpTrait::OneResult<mlir::mps::DynamicShapeCastOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::DynamicShapeCastOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::DynamicShapeCastOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::mps::DynamicShapeCastOp>,mlir::OpTrait::OpInvariants<mlir::mps::DynamicShapeCastOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::DynamicShapeCastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::DynamicShapeCastOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::DynamicShapeCastOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::DynamicShapeCastOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.dynamic_shape_cast", 22, a1, &mlir::detail::TypeIDResolver<mlir::mps::DynamicShapeCastOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1B6C0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::DynamicShapeCastOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::EluOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::EluOp>,mlir::OpTrait::OneResult<mlir::mps::EluOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::EluOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::EluOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::EluOp>,mlir::OpTrait::OpInvariants<mlir::mps::EluOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::EluOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::EluOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::EluOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::EluOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::EluOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.elu", 7, a1, &mlir::detail::TypeIDResolver<mlir::mps::EluOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1B7A0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::EqualToOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::EqualToOp>,mlir::OpTrait::OneResult<mlir::mps::EqualToOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::EqualToOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::EqualToOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::EqualToOp>,mlir::OpTrait::OpInvariants<mlir::mps::EqualToOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::EqualToOp>,mlir::OpTrait::SameOperandsElementType<mlir::mps::EqualToOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::EqualToOp>,mlir::OpTrait::IsCommutative<mlir::mps::EqualToOp>,mlir::OpTrait::Stitchable<mlir::mps::EqualToOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::EqualToOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::EqualToOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.equal", 9, a1, &mlir::detail::TypeIDResolver<mlir::mps::EqualToOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1B880;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ErfOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ErfOp>,mlir::OpTrait::OneResult<mlir::mps::ErfOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ErfOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ErfOp>,mlir::OpTrait::OneOperand<mlir::mps::ErfOp>,mlir::OpTrait::OpInvariants<mlir::mps::ErfOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ErfOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ErfOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ErfOp>,mlir::OpTrait::Stitchable<mlir::mps::ErfOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ErfOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ErfOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.erf", 7, a1, &mlir::detail::TypeIDResolver<mlir::mps::ErfOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1B960;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ExpandDimsOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ExpandDimsOp>,mlir::OpTrait::OneResult<mlir::mps::ExpandDimsOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ExpandDimsOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ExpandDimsOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::ExpandDimsOp>,mlir::OpTrait::OpInvariants<mlir::mps::ExpandDimsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ExpandDimsOp>,mlir::OpTrait::TypeChanger<mlir::mps::ExpandDimsOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ExpandDimsOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ExpandDimsOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.expand_dims", 15, a1, &mlir::detail::TypeIDResolver<mlir::mps::ExpandDimsOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1BA40;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ExponentBase10Op>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ExponentBase10Op>,mlir::OpTrait::OneResult<mlir::mps::ExponentBase10Op>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ExponentBase10Op>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ExponentBase10Op>,mlir::OpTrait::OneOperand<mlir::mps::ExponentBase10Op>,mlir::OpTrait::OpInvariants<mlir::mps::ExponentBase10Op>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ExponentBase10Op>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ExponentBase10Op>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ExponentBase10Op>,mlir::OpTrait::Stitchable<mlir::mps::ExponentBase10Op>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ExponentBase10Op>,mlir::InferTypeOpInterface::Trait<mlir::mps::ExponentBase10Op>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.exponent_base_10", 20, a1, &mlir::detail::TypeIDResolver<mlir::mps::ExponentBase10Op,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1BB20;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ExponentBase2Op>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ExponentBase2Op>,mlir::OpTrait::OneResult<mlir::mps::ExponentBase2Op>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ExponentBase2Op>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ExponentBase2Op>,mlir::OpTrait::OneOperand<mlir::mps::ExponentBase2Op>,mlir::OpTrait::OpInvariants<mlir::mps::ExponentBase2Op>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ExponentBase2Op>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ExponentBase2Op>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ExponentBase2Op>,mlir::OpTrait::Stitchable<mlir::mps::ExponentBase2Op>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ExponentBase2Op>,mlir::InferTypeOpInterface::Trait<mlir::mps::ExponentBase2Op>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.exponent_base_2", 19, a1, &mlir::detail::TypeIDResolver<mlir::mps::ExponentBase2Op,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1BC00;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ExponentOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ExponentOp>,mlir::OpTrait::OneResult<mlir::mps::ExponentOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ExponentOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ExponentOp>,mlir::OpTrait::OneOperand<mlir::mps::ExponentOp>,mlir::OpTrait::OpInvariants<mlir::mps::ExponentOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ExponentOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ExponentOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ExponentOp>,mlir::OpTrait::Stitchable<mlir::mps::ExponentOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ExponentOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ExponentOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.exponent", 12, a1, &mlir::detail::TypeIDResolver<mlir::mps::ExponentOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1BCE0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::FastFourierTransformOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::FastFourierTransformOp>,mlir::OpTrait::OneResult<mlir::mps::FastFourierTransformOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::FastFourierTransformOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::FastFourierTransformOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::FastFourierTransformOp>,mlir::OpTrait::OpInvariants<mlir::mps::FastFourierTransformOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::FastFourierTransformOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::FastFourierTransformOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::FastFourierTransformOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::FastFourierTransformOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.fast_fourier_transform", 26, a1, &mlir::detail::TypeIDResolver<mlir::mps::FastFourierTransformOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1BDC0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::FastFourierTransformOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::Flatten2DOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::Flatten2DOp>,mlir::OpTrait::OneResult<mlir::mps::Flatten2DOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::Flatten2DOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::Flatten2DOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::Flatten2DOp>,mlir::OpTrait::OpInvariants<mlir::mps::Flatten2DOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::Flatten2DOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::Flatten2DOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::Flatten2DOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.flatten_2d", 14, a1, &mlir::detail::TypeIDResolver<mlir::mps::Flatten2DOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1BEA0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::FloorDivideOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::FloorDivideOp>,mlir::OpTrait::OneResult<mlir::mps::FloorDivideOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::FloorDivideOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::FloorDivideOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::FloorDivideOp>,mlir::OpTrait::OpInvariants<mlir::mps::FloorDivideOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::FloorDivideOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::FloorDivideOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::FloorDivideOp>,mlir::OpTrait::Stitchable<mlir::mps::FloorDivideOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::FloorDivideOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::FloorDivideOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.floor_divide", 16, a1, &mlir::detail::TypeIDResolver<mlir::mps::FloorDivideOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1BF80;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::FloorOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::FloorOp>,mlir::OpTrait::OneResult<mlir::mps::FloorOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::FloorOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::FloorOp>,mlir::OpTrait::OneOperand<mlir::mps::FloorOp>,mlir::OpTrait::OpInvariants<mlir::mps::FloorOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::FloorOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::FloorOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::FloorOp>,mlir::OpTrait::Stitchable<mlir::mps::FloorOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::FloorOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::FloorOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.floor", 9, a1, &mlir::detail::TypeIDResolver<mlir::mps::FloorOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1C060;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::GRUGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::GRUGradientOp>,mlir::OpTrait::AtLeastNResults<3u>::Impl<mlir::mps::GRUGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::GRUGradientOp>,mlir::OpTrait::AtLeastNOperands<4u>::Impl<mlir::mps::GRUGradientOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::mps::GRUGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::GRUGradientOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::GRUGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::GRUGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::GRUGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::GRUGradientOp>,mlir::OpAsmOpInterface::Trait<mlir::mps::GRUGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.gru_gradient", 16, a1, &mlir::detail::TypeIDResolver<mlir::mps::GRUGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1C140;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::GRUGradientOp::getAttributeNames(void)::attrNames, 7);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::GRUOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::GRUOp>,mlir::OpTrait::AtLeastNResults<1u>::Impl<mlir::mps::GRUOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::GRUOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::mps::GRUOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::mps::GRUOp>,mlir::OpTrait::OpInvariants<mlir::mps::GRUOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::GRUOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::GRUOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::GRUOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::GRUOp>,mlir::OpAsmOpInterface::Trait<mlir::mps::GRUOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.gru", 7, a1, &mlir::detail::TypeIDResolver<mlir::mps::GRUOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1C220;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::GRUOp::getAttributeNames(void)::attrNames, 8);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::GatherAlongAxisOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::GatherAlongAxisOp>,mlir::OpTrait::OneResult<mlir::mps::GatherAlongAxisOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::GatherAlongAxisOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::GatherAlongAxisOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::GatherAlongAxisOp>,mlir::OpTrait::OpInvariants<mlir::mps::GatherAlongAxisOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::GatherAlongAxisOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::GatherAlongAxisOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::GatherAlongAxisOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::GatherAlongAxisOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.gather_along_axis", 21, a1, &mlir::detail::TypeIDResolver<mlir::mps::GatherAlongAxisOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1C300;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::GatherAlongAxisOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::GatherNDOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::GatherNDOp>,mlir::OpTrait::OneResult<mlir::mps::GatherNDOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::GatherNDOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::GatherNDOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::GatherNDOp>,mlir::OpTrait::OpInvariants<mlir::mps::GatherNDOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::GatherNDOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::GatherNDOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::GatherNDOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::GatherNDOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.gather_nd", 13, a1, &mlir::detail::TypeIDResolver<mlir::mps::GatherNDOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1C3E0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::GatherNDOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::GatherOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::GatherOp>,mlir::OpTrait::OneResult<mlir::mps::GatherOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::GatherOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::GatherOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::GatherOp>,mlir::OpTrait::OpInvariants<mlir::mps::GatherOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::GatherOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::GatherOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::GatherOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::GatherOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.gather", 10, a1, &mlir::detail::TypeIDResolver<mlir::mps::GatherOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1C4C0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::GatherOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::GeluOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::GeluOp>,mlir::OpTrait::OneResult<mlir::mps::GeluOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::GeluOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::GeluOp>,mlir::OpTrait::OneOperand<mlir::mps::GeluOp>,mlir::OpTrait::OpInvariants<mlir::mps::GeluOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::GeluOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::GeluOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::GeluOp>,mlir::OpTrait::Stitchable<mlir::mps::GeluOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::GeluOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::GeluOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.gelu", 8, a1, &mlir::detail::TypeIDResolver<mlir::mps::GeluOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1C5A0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::GetCoordOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::GetCoordOp>,mlir::OpTrait::OneResult<mlir::mps::GetCoordOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::GetCoordOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::GetCoordOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::GetCoordOp>,mlir::OpTrait::OpInvariants<mlir::mps::GetCoordOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::GetCoordOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::GetCoordOp>,mlir::OpTrait::Stitchable<mlir::mps::GetCoordOp>,mlir::DowngraderInterface::Trait<mlir::mps::GetCoordOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::GetCoordOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::GetCoordOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.get_coordinates", 19, a1, &mlir::detail::TypeIDResolver<mlir::mps::GetCoordOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1C680;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::GetCoordOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::GreaterThanOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::GreaterThanOp>,mlir::OpTrait::OneResult<mlir::mps::GreaterThanOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::GreaterThanOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::GreaterThanOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::GreaterThanOp>,mlir::OpTrait::OpInvariants<mlir::mps::GreaterThanOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::GreaterThanOp>,mlir::OpTrait::SameOperandsElementType<mlir::mps::GreaterThanOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::GreaterThanOp>,mlir::OpTrait::Stitchable<mlir::mps::GreaterThanOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::GreaterThanOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::GreaterThanOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.greater", 11, a1, &mlir::detail::TypeIDResolver<mlir::mps::GreaterThanOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1C760;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::GreaterThanOrEqualToOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::GreaterThanOrEqualToOp>,mlir::OpTrait::OneResult<mlir::mps::GreaterThanOrEqualToOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::GreaterThanOrEqualToOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::GreaterThanOrEqualToOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::GreaterThanOrEqualToOp>,mlir::OpTrait::OpInvariants<mlir::mps::GreaterThanOrEqualToOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::GreaterThanOrEqualToOp>,mlir::OpTrait::SameOperandsElementType<mlir::mps::GreaterThanOrEqualToOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::GreaterThanOrEqualToOp>,mlir::OpTrait::Stitchable<mlir::mps::GreaterThanOrEqualToOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::GreaterThanOrEqualToOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::GreaterThanOrEqualToOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.greater_equal", 17, a1, &mlir::detail::TypeIDResolver<mlir::mps::GreaterThanOrEqualToOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1C840;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::HammingDistanceOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::HammingDistanceOp>,mlir::OpTrait::OneResult<mlir::mps::HammingDistanceOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::HammingDistanceOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::HammingDistanceOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::HammingDistanceOp>,mlir::OpTrait::OpInvariants<mlir::mps::HammingDistanceOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::HammingDistanceOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::HammingDistanceOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::HammingDistanceOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::HammingDistanceOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.hamming_distance", 20, a1, &mlir::detail::TypeIDResolver<mlir::mps::HammingDistanceOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1C920;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::HammingDistanceOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::HermiteanToRealFFTOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::HermiteanToRealFFTOp>,mlir::OpTrait::OneResult<mlir::mps::HermiteanToRealFFTOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::HermiteanToRealFFTOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::HermiteanToRealFFTOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::HermiteanToRealFFTOp>,mlir::OpTrait::OpInvariants<mlir::mps::HermiteanToRealFFTOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::HermiteanToRealFFTOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::HermiteanToRealFFTOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::HermiteanToRealFFTOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::HermiteanToRealFFTOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.hermitean_to_real_fft", 25, a1, &mlir::detail::TypeIDResolver<mlir::mps::HermiteanToRealFFTOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1CA00;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::HermiteanToRealFFTOp::getAttributeNames(void)::attrNames, 3);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::IdentityOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::IdentityOp>,mlir::OpTrait::OneResult<mlir::mps::IdentityOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::IdentityOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::IdentityOp>,mlir::OpTrait::OneOperand<mlir::mps::IdentityOp>,mlir::OpTrait::OpInvariants<mlir::mps::IdentityOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::IdentityOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::IdentityOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::IdentityOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::IdentityOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.identity", 12, a1, &mlir::detail::TypeIDResolver<mlir::mps::IdentityOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1CAE0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ImToColOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ImToColOp>,mlir::OpTrait::OneResult<mlir::mps::ImToColOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ImToColOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ImToColOp>,mlir::OpTrait::OneOperand<mlir::mps::ImToColOp>,mlir::OpTrait::OpInvariants<mlir::mps::ImToColOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ImToColOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ImToColOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ImToColOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ImToColOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.im_to_col", 13, a1, &mlir::detail::TypeIDResolver<mlir::mps::ImToColOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1CBC0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::ImToColOp::getAttributeNames(void)::attrNames, 5);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ImaginaryPartOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ImaginaryPartOp>,mlir::OpTrait::OneResult<mlir::mps::ImaginaryPartOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ImaginaryPartOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ImaginaryPartOp>,mlir::OpTrait::OneOperand<mlir::mps::ImaginaryPartOp>,mlir::OpTrait::OpInvariants<mlir::mps::ImaginaryPartOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ImaginaryPartOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::mps::ImaginaryPartOp>,mlir::OpTrait::Stitchable<mlir::mps::ImaginaryPartOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ImaginaryPartOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ImaginaryPartOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.imaginary_part", 18, a1, &mlir::detail::TypeIDResolver<mlir::mps::ImaginaryPartOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1CCA0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::InitRandomPhiloxStateOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::InitRandomPhiloxStateOp>,mlir::OpTrait::OneResult<mlir::mps::InitRandomPhiloxStateOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::InitRandomPhiloxStateOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::InitRandomPhiloxStateOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::InitRandomPhiloxStateOp>,mlir::OpTrait::OpInvariants<mlir::mps::InitRandomPhiloxStateOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::InitRandomPhiloxStateOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::InitRandomPhiloxStateOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::InitRandomPhiloxStateOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.init_random_philox_state", 28, a1, &mlir::detail::TypeIDResolver<mlir::mps::InitRandomPhiloxStateOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1CD80;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::InstanceNormOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::InstanceNormOp>,mlir::OpTrait::OneResult<mlir::mps::InstanceNormOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::InstanceNormOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::InstanceNormOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::InstanceNormOp>,mlir::OpTrait::OpInvariants<mlir::mps::InstanceNormOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::InstanceNormOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::InstanceNormOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::InstanceNormOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::InstanceNormOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.instance_norm", 17, a1, &mlir::detail::TypeIDResolver<mlir::mps::InstanceNormOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1CE60;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::InstanceNormOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::IsFiniteOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::IsFiniteOp>,mlir::OpTrait::OneResult<mlir::mps::IsFiniteOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::IsFiniteOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::IsFiniteOp>,mlir::OpTrait::OneOperand<mlir::mps::IsFiniteOp>,mlir::OpTrait::OpInvariants<mlir::mps::IsFiniteOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::IsFiniteOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::mps::IsFiniteOp>,mlir::OpTrait::Stitchable<mlir::mps::IsFiniteOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::IsFiniteOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::IsFiniteOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.is_finite", 13, a1, &mlir::detail::TypeIDResolver<mlir::mps::IsFiniteOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1CF40;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::IsInfiniteOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::IsInfiniteOp>,mlir::OpTrait::OneResult<mlir::mps::IsInfiniteOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::IsInfiniteOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::IsInfiniteOp>,mlir::OpTrait::OneOperand<mlir::mps::IsInfiniteOp>,mlir::OpTrait::OpInvariants<mlir::mps::IsInfiniteOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::IsInfiniteOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::mps::IsInfiniteOp>,mlir::OpTrait::Stitchable<mlir::mps::IsInfiniteOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::IsInfiniteOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::IsInfiniteOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.is_infinite", 15, a1, &mlir::detail::TypeIDResolver<mlir::mps::IsInfiniteOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1D020;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::IsNaNOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::IsNaNOp>,mlir::OpTrait::OneResult<mlir::mps::IsNaNOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::IsNaNOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::IsNaNOp>,mlir::OpTrait::OneOperand<mlir::mps::IsNaNOp>,mlir::OpTrait::OpInvariants<mlir::mps::IsNaNOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::IsNaNOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::mps::IsNaNOp>,mlir::OpTrait::Stitchable<mlir::mps::IsNaNOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::IsNaNOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::IsNaNOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.is_nan", 10, a1, &mlir::detail::TypeIDResolver<mlir::mps::IsNaNOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1D100;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::LPNormOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::LPNormOp>,mlir::OpTrait::OneResult<mlir::mps::LPNormOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::mps::LPNormOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::LPNormOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::LPNormOp>,mlir::OpTrait::OpInvariants<mlir::mps::LPNormOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::LPNormOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::LPNormOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::LPNormOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.lp_norm", 11, a1, &mlir::detail::TypeIDResolver<mlir::mps::LPNormOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1D1E0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::LSTMGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::LSTMGradientOp>,mlir::OpTrait::AtLeastNResults<4u>::Impl<mlir::mps::LSTMGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::LSTMGradientOp>,mlir::OpTrait::AtLeastNOperands<4u>::Impl<mlir::mps::LSTMGradientOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::mps::LSTMGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::LSTMGradientOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::LSTMGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::LSTMGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::LSTMGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::LSTMGradientOp>,mlir::OpAsmOpInterface::Trait<mlir::mps::LSTMGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.lstm_gradient", 17, a1, &mlir::detail::TypeIDResolver<mlir::mps::LSTMGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1D2C0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::LSTMGradientOp::getAttributeNames(void)::attrNames, 7);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::LSTMOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::LSTMOp>,mlir::OpTrait::AtLeastNResults<2u>::Impl<mlir::mps::LSTMOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::LSTMOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::mps::LSTMOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::mps::LSTMOp>,mlir::OpTrait::OpInvariants<mlir::mps::LSTMOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::LSTMOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::LSTMOp>,mlir::DowngraderInterface::Trait<mlir::mps::LSTMOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::LSTMOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::LSTMOp>,mlir::OpAsmOpInterface::Trait<mlir::mps::LSTMOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.lstm", 8, a1, &mlir::detail::TypeIDResolver<mlir::mps::LSTMOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1D3A0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::LSTMOp::getAttributeNames(void)::attrNames, 8);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::LeakyReluOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::LeakyReluOp>,mlir::OpTrait::OneResult<mlir::mps::LeakyReluOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::LeakyReluOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::LeakyReluOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::LeakyReluOp>,mlir::OpTrait::OpInvariants<mlir::mps::LeakyReluOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::LeakyReluOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::LeakyReluOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::LeakyReluOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::LeakyReluOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::LeakyReluOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.leaky_relu", 14, a1, &mlir::detail::TypeIDResolver<mlir::mps::LeakyReluOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1D480;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::LessThanOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::LessThanOp>,mlir::OpTrait::OneResult<mlir::mps::LessThanOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::LessThanOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::LessThanOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::LessThanOp>,mlir::OpTrait::OpInvariants<mlir::mps::LessThanOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::LessThanOp>,mlir::OpTrait::SameOperandsElementType<mlir::mps::LessThanOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::LessThanOp>,mlir::OpTrait::Stitchable<mlir::mps::LessThanOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::LessThanOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::LessThanOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.less", 8, a1, &mlir::detail::TypeIDResolver<mlir::mps::LessThanOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1D560;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::LessThanOrEqualToOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::LessThanOrEqualToOp>,mlir::OpTrait::OneResult<mlir::mps::LessThanOrEqualToOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::LessThanOrEqualToOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::LessThanOrEqualToOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::LessThanOrEqualToOp>,mlir::OpTrait::OpInvariants<mlir::mps::LessThanOrEqualToOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::LessThanOrEqualToOp>,mlir::OpTrait::SameOperandsElementType<mlir::mps::LessThanOrEqualToOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::LessThanOrEqualToOp>,mlir::OpTrait::Stitchable<mlir::mps::LessThanOrEqualToOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::LessThanOrEqualToOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::LessThanOrEqualToOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.less_equal", 14, a1, &mlir::detail::TypeIDResolver<mlir::mps::LessThanOrEqualToOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1D640;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::LocalConvolutionDataGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::LocalConvolutionDataGradientOp>,mlir::OpTrait::OneResult<mlir::mps::LocalConvolutionDataGradientOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::LocalConvolutionDataGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::LocalConvolutionDataGradientOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::LocalConvolutionDataGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::LocalConvolutionDataGradientOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::LocalConvolutionDataGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::LocalConvolutionDataGradientOp>,mlir::mps::MixedPrecisionInterface::Trait<mlir::mps::LocalConvolutionDataGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::LocalConvolutionDataGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::LocalConvolutionDataGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.local_convolution_data_gradient", 35, a1, &mlir::detail::TypeIDResolver<mlir::mps::LocalConvolutionDataGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1D720;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::LocalConvolutionDataGradientOp::getAttributeNames(void)::attrNames, 3);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::LocalConvolutionOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::LocalConvolutionOp>,mlir::OpTrait::OneResult<mlir::mps::LocalConvolutionOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::LocalConvolutionOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::LocalConvolutionOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::LocalConvolutionOp>,mlir::OpTrait::OpInvariants<mlir::mps::LocalConvolutionOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::LocalConvolutionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::LocalConvolutionOp>,mlir::mps::MixedPrecisionInterface::Trait<mlir::mps::LocalConvolutionOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::LocalConvolutionOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::LocalConvolutionOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.local_convolution", 21, a1, &mlir::detail::TypeIDResolver<mlir::mps::LocalConvolutionOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1D800;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::LocalConvolutionOp::getAttributeNames(void)::attrNames, 3);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::LocalConvolutionWeightGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::LocalConvolutionWeightGradientOp>,mlir::OpTrait::OneResult<mlir::mps::LocalConvolutionWeightGradientOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::LocalConvolutionWeightGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::LocalConvolutionWeightGradientOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::LocalConvolutionWeightGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::LocalConvolutionWeightGradientOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::LocalConvolutionWeightGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::LocalConvolutionWeightGradientOp>,mlir::mps::MixedPrecisionInterface::Trait<mlir::mps::LocalConvolutionWeightGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::LocalConvolutionWeightGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::LocalConvolutionWeightGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.local_convolution_weight_gradient", 37, a1, &mlir::detail::TypeIDResolver<mlir::mps::LocalConvolutionWeightGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1D8E0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::LocalConvolutionWeightGradientOp::getAttributeNames(void)::attrNames, 3);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::LogarithmBase10Op>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::LogarithmBase10Op>,mlir::OpTrait::OneResult<mlir::mps::LogarithmBase10Op>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::LogarithmBase10Op>,mlir::OpTrait::ZeroSuccessors<mlir::mps::LogarithmBase10Op>,mlir::OpTrait::OneOperand<mlir::mps::LogarithmBase10Op>,mlir::OpTrait::OpInvariants<mlir::mps::LogarithmBase10Op>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::LogarithmBase10Op>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::LogarithmBase10Op>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::LogarithmBase10Op>,mlir::OpTrait::Stitchable<mlir::mps::LogarithmBase10Op>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::LogarithmBase10Op>,mlir::InferTypeOpInterface::Trait<mlir::mps::LogarithmBase10Op>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.logarithm_base_10", 21, a1, &mlir::detail::TypeIDResolver<mlir::mps::LogarithmBase10Op,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1D9C0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::LogarithmBase2Op>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::LogarithmBase2Op>,mlir::OpTrait::OneResult<mlir::mps::LogarithmBase2Op>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::LogarithmBase2Op>,mlir::OpTrait::ZeroSuccessors<mlir::mps::LogarithmBase2Op>,mlir::OpTrait::OneOperand<mlir::mps::LogarithmBase2Op>,mlir::OpTrait::OpInvariants<mlir::mps::LogarithmBase2Op>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::LogarithmBase2Op>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::LogarithmBase2Op>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::LogarithmBase2Op>,mlir::OpTrait::Stitchable<mlir::mps::LogarithmBase2Op>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::LogarithmBase2Op>,mlir::InferTypeOpInterface::Trait<mlir::mps::LogarithmBase2Op>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.logarithm_base_2", 20, a1, &mlir::detail::TypeIDResolver<mlir::mps::LogarithmBase2Op,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1DAA0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::LogarithmOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::LogarithmOp>,mlir::OpTrait::OneResult<mlir::mps::LogarithmOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::LogarithmOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::LogarithmOp>,mlir::OpTrait::OneOperand<mlir::mps::LogarithmOp>,mlir::OpTrait::OpInvariants<mlir::mps::LogarithmOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::LogarithmOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::LogarithmOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::LogarithmOp>,mlir::OpTrait::Stitchable<mlir::mps::LogarithmOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::LogarithmOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::LogarithmOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.logarithm", 13, a1, &mlir::detail::TypeIDResolver<mlir::mps::LogarithmOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1DB80;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::MatMulOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::MatMulOp>,mlir::OpTrait::OneResult<mlir::mps::MatMulOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::MatMulOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::MatMulOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::MatMulOp>,mlir::OpTrait::OpInvariants<mlir::mps::MatMulOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::MatMulOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::MatMulOp>,mlir::mps::MixedPrecisionInterface::Trait<mlir::mps::MatMulOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::MatMulOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::MatMulOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.matmul", 10, a1, &mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1DC60;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::MatMulOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::MaterializeSparseTensorOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::MaterializeSparseTensorOp>,mlir::OpTrait::OneResult<mlir::mps::MaterializeSparseTensorOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::MaterializeSparseTensorOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::MaterializeSparseTensorOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::mps::MaterializeSparseTensorOp>,mlir::OpTrait::OpInvariants<mlir::mps::MaterializeSparseTensorOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::MaterializeSparseTensorOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::MaterializeSparseTensorOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.materialize_sparse_tensor", 29, a1, &mlir::detail::TypeIDResolver<mlir::mps::MaterializeSparseTensorOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1DD40;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::MaterializeSparseTensorOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::MatrixDecompositionLUOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::MatrixDecompositionLUOp>,mlir::OpTrait::NResults<3u>::Impl<mlir::mps::MatrixDecompositionLUOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::MatrixDecompositionLUOp>,mlir::OpTrait::OneOperand<mlir::mps::MatrixDecompositionLUOp>,mlir::OpTrait::OpInvariants<mlir::mps::MatrixDecompositionLUOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::MatrixDecompositionLUOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::MatrixDecompositionLUOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::MatrixDecompositionLUOp>,mlir::OpAsmOpInterface::Trait<mlir::mps::MatrixDecompositionLUOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.matrix_decomposition_lu", 27, a1, &mlir::detail::TypeIDResolver<mlir::mps::MatrixDecompositionLUOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1DE20;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::MatrixInverseOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::MatrixInverseOp>,mlir::OpTrait::OneResult<mlir::mps::MatrixInverseOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::MatrixInverseOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::MatrixInverseOp>,mlir::OpTrait::OneOperand<mlir::mps::MatrixInverseOp>,mlir::OpTrait::OpInvariants<mlir::mps::MatrixInverseOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::MatrixInverseOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::MatrixInverseOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::MatrixInverseOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.matrix_inverse", 18, a1, &mlir::detail::TypeIDResolver<mlir::mps::MatrixInverseOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1DF00;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::MatrixSolverLUOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::MatrixSolverLUOp>,mlir::OpTrait::OneResult<mlir::mps::MatrixSolverLUOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::MatrixSolverLUOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::MatrixSolverLUOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::MatrixSolverLUOp>,mlir::OpTrait::OpInvariants<mlir::mps::MatrixSolverLUOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::MatrixSolverLUOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::MatrixSolverLUOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::MatrixSolverLUOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.matrix_solver_lu", 20, a1, &mlir::detail::TypeIDResolver<mlir::mps::MatrixSolverLUOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1DFE0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::MaximumOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::MaximumOp>,mlir::OpTrait::OneResult<mlir::mps::MaximumOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::MaximumOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::MaximumOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::MaximumOp>,mlir::OpTrait::OpInvariants<mlir::mps::MaximumOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::MaximumOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::MaximumOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::MaximumOp>,mlir::OpTrait::IsCommutative<mlir::mps::MaximumOp>,mlir::OpTrait::Stitchable<mlir::mps::MaximumOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::MaximumOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::MaximumOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.maximum", 11, a1, &mlir::detail::TypeIDResolver<mlir::mps::MaximumOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1E0C0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::MinimumOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::MinimumOp>,mlir::OpTrait::OneResult<mlir::mps::MinimumOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::MinimumOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::MinimumOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::MinimumOp>,mlir::OpTrait::OpInvariants<mlir::mps::MinimumOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::MinimumOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::MinimumOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::MinimumOp>,mlir::OpTrait::IsCommutative<mlir::mps::MinimumOp>,mlir::OpTrait::Stitchable<mlir::mps::MinimumOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::MinimumOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::MinimumOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.minimum", 11, a1, &mlir::detail::TypeIDResolver<mlir::mps::MinimumOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1E1A0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ModuloOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ModuloOp>,mlir::OpTrait::OneResult<mlir::mps::ModuloOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ModuloOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ModuloOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::ModuloOp>,mlir::OpTrait::OpInvariants<mlir::mps::ModuloOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ModuloOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ModuloOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::ModuloOp>,mlir::OpTrait::Stitchable<mlir::mps::ModuloOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ModuloOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ModuloOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.modulo", 10, a1, &mlir::detail::TypeIDResolver<mlir::mps::ModuloOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1E280;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::MultiplyOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::MultiplyOp>,mlir::OpTrait::OneResult<mlir::mps::MultiplyOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::MultiplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::MultiplyOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::MultiplyOp>,mlir::OpTrait::OpInvariants<mlir::mps::MultiplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::MultiplyOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::MultiplyOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::MultiplyOp>,mlir::OpTrait::IsCommutative<mlir::mps::MultiplyOp>,mlir::OpTrait::Stitchable<mlir::mps::MultiplyOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::MultiplyOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::MultiplyOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.multiply", 12, a1, &mlir::detail::TypeIDResolver<mlir::mps::MultiplyOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1E360;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::NReluOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::NReluOp>,mlir::OpTrait::OneResult<mlir::mps::NReluOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::NReluOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::NReluOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::NReluOp>,mlir::OpTrait::OpInvariants<mlir::mps::NReluOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::NReluOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::NReluOp>,mlir::OpTrait::Stitchable<mlir::mps::NReluOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::NReluOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::NReluOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.n_relu", 10, a1, &mlir::detail::TypeIDResolver<mlir::mps::NReluOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1E440;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::NandOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::NandOp>,mlir::OpTrait::OneResult<mlir::mps::NandOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::NandOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::NandOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::NandOp>,mlir::OpTrait::OpInvariants<mlir::mps::NandOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::NandOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::NandOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::NandOp>,mlir::OpTrait::IsCommutative<mlir::mps::NandOp>,mlir::OpTrait::Stitchable<mlir::mps::NandOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::NandOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::NandOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.nand", 8, a1, &mlir::detail::TypeIDResolver<mlir::mps::NandOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1E520;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::NegativeOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::NegativeOp>,mlir::OpTrait::OneResult<mlir::mps::NegativeOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::NegativeOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::NegativeOp>,mlir::OpTrait::OneOperand<mlir::mps::NegativeOp>,mlir::OpTrait::OpInvariants<mlir::mps::NegativeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::NegativeOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::NegativeOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::NegativeOp>,mlir::OpTrait::Stitchable<mlir::mps::NegativeOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::NegativeOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::NegativeOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.negative", 12, a1, &mlir::detail::TypeIDResolver<mlir::mps::NegativeOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1E600;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::NonMaximumSuppressionOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::NonMaximumSuppressionOp>,mlir::OpTrait::NResults<2u>::Impl<mlir::mps::NonMaximumSuppressionOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::NonMaximumSuppressionOp>,mlir::OpTrait::AtLeastNOperands<4u>::Impl<mlir::mps::NonMaximumSuppressionOp>,mlir::OpTrait::OpInvariants<mlir::mps::NonMaximumSuppressionOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::NonMaximumSuppressionOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::NonMaximumSuppressionOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::NonMaximumSuppressionOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::NonMaximumSuppressionOp>,mlir::OpAsmOpInterface::Trait<mlir::mps::NonMaximumSuppressionOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.non_maximum_suppression", 27, a1, &mlir::detail::TypeIDResolver<mlir::mps::NonMaximumSuppressionOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1E6E0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::NonMaximumSuppressionOp::getAttributeNames(void)::attrNames, 3);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::NonZeroOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::NonZeroOp>,mlir::OpTrait::OneResult<mlir::mps::NonZeroOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::NonZeroOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::NonZeroOp>,mlir::OpTrait::OneOperand<mlir::mps::NonZeroOp>,mlir::OpTrait::OpInvariants<mlir::mps::NonZeroOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::NonZeroOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::NonZeroOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::NonZeroOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.non_zero", 12, a1, &mlir::detail::TypeIDResolver<mlir::mps::NonZeroOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1E7C0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::NorOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::NorOp>,mlir::OpTrait::OneResult<mlir::mps::NorOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::NorOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::NorOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::NorOp>,mlir::OpTrait::OpInvariants<mlir::mps::NorOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::NorOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::NorOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::NorOp>,mlir::OpTrait::IsCommutative<mlir::mps::NorOp>,mlir::OpTrait::Stitchable<mlir::mps::NorOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::NorOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::NorOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.nor", 7, a1, &mlir::detail::TypeIDResolver<mlir::mps::NorOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1E8A0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::NormalizationOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::NormalizationOp>,mlir::OpTrait::OneResult<mlir::mps::NormalizationOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::NormalizationOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::NormalizationOp>,mlir::OpTrait::NOperands<5u>::Impl<mlir::mps::NormalizationOp>,mlir::OpTrait::OpInvariants<mlir::mps::NormalizationOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::NormalizationOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::NormalizationOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::NormalizationOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::NormalizationOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::NormalizationOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.normalization", 17, a1, &mlir::detail::TypeIDResolver<mlir::mps::NormalizationOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1E980;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::NormalizationOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::NotEqualToOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::NotEqualToOp>,mlir::OpTrait::OneResult<mlir::mps::NotEqualToOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::NotEqualToOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::NotEqualToOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::NotEqualToOp>,mlir::OpTrait::OpInvariants<mlir::mps::NotEqualToOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::NotEqualToOp>,mlir::OpTrait::SameOperandsElementType<mlir::mps::NotEqualToOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::NotEqualToOp>,mlir::OpTrait::IsCommutative<mlir::mps::NotEqualToOp>,mlir::OpTrait::Stitchable<mlir::mps::NotEqualToOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::NotEqualToOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::NotEqualToOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.not_equal", 13, a1, &mlir::detail::TypeIDResolver<mlir::mps::NotEqualToOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1EA60;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::NotOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::NotOp>,mlir::OpTrait::OneResult<mlir::mps::NotOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::NotOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::NotOp>,mlir::OpTrait::OneOperand<mlir::mps::NotOp>,mlir::OpTrait::OpInvariants<mlir::mps::NotOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::NotOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::NotOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::NotOp>,mlir::OpTrait::Stitchable<mlir::mps::NotOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::NotOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::NotOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.not", 7, a1, &mlir::detail::TypeIDResolver<mlir::mps::NotOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1EB40;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::OneHotOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::OneHotOp>,mlir::OpTrait::OneResult<mlir::mps::OneHotOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::OneHotOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::OneHotOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::OneHotOp>,mlir::OpTrait::OpInvariants<mlir::mps::OneHotOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::OneHotOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::OneHotOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::OneHotOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::OneHotOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.one_hot", 11, a1, &mlir::detail::TypeIDResolver<mlir::mps::OneHotOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1EC20;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::OneHotOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::OrOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::OrOp>,mlir::OpTrait::OneResult<mlir::mps::OrOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::OrOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::OrOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::OrOp>,mlir::OpTrait::OpInvariants<mlir::mps::OrOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::OrOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::OrOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::OrOp>,mlir::OpTrait::IsCommutative<mlir::mps::OrOp>,mlir::OpTrait::Stitchable<mlir::mps::OrOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::OrOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::OrOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.or", 6, a1, &mlir::detail::TypeIDResolver<mlir::mps::OrOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1ED00;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::PReluOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::PReluOp>,mlir::OpTrait::OneResult<mlir::mps::PReluOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::PReluOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::PReluOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::PReluOp>,mlir::OpTrait::OpInvariants<mlir::mps::PReluOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::PReluOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::PReluOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::PReluOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.prelu", 9, a1, &mlir::detail::TypeIDResolver<mlir::mps::PReluOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1EDE0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::PadGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::PadGradientOp>,mlir::OpTrait::OneResult<mlir::mps::PadGradientOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::PadGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::PadGradientOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::PadGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::PadGradientOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::PadGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::PadGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::PadGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::PadGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.pad_gradient", 16, a1, &mlir::detail::TypeIDResolver<mlir::mps::PadGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1EEC0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::PadGradientOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::PadOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::PadOp>,mlir::OpTrait::OneResult<mlir::mps::PadOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::PadOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::PadOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::PadOp>,mlir::OpTrait::OpInvariants<mlir::mps::PadOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::PadOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::PadOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::PadOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::PadOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.pad", 7, a1, &mlir::detail::TypeIDResolver<mlir::mps::PadOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1EFA0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::PadOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::PermuteOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::PermuteOp>,mlir::OpTrait::OneResult<mlir::mps::PermuteOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::PermuteOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::PermuteOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::PermuteOp>,mlir::OpTrait::OpInvariants<mlir::mps::PermuteOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::PermuteOp>,mlir::OpTrait::TypeChanger<mlir::mps::PermuteOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::PermuteOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::PermuteOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.permute", 11, a1, &mlir::detail::TypeIDResolver<mlir::mps::PermuteOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1F080;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::PoolAvgGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::PoolAvgGradientOp>,mlir::OpTrait::OneResult<mlir::mps::PoolAvgGradientOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::PoolAvgGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::PoolAvgGradientOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::PoolAvgGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::PoolAvgGradientOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::PoolAvgGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::PoolAvgGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::PoolAvgGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::PoolAvgGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.pooling_average_gradient", 28, a1, &mlir::detail::TypeIDResolver<mlir::mps::PoolAvgGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1F240;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::PoolAvgGradientOp::getAttributeNames(void)::attrNames, 7);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::PoolAvgOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::PoolAvgOp>,mlir::OpTrait::OneResult<mlir::mps::PoolAvgOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::PoolAvgOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::PoolAvgOp>,mlir::OpTrait::OneOperand<mlir::mps::PoolAvgOp>,mlir::OpTrait::OpInvariants<mlir::mps::PoolAvgOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::PoolAvgOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::PoolAvgOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::PoolAvgOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::PoolAvgOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.pooling_average", 19, a1, &mlir::detail::TypeIDResolver<mlir::mps::PoolAvgOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1F320;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::PoolAvgOp::getAttributeNames(void)::attrNames, 7);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::PoolL2NormGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::PoolL2NormGradientOp>,mlir::OpTrait::OneResult<mlir::mps::PoolL2NormGradientOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::PoolL2NormGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::PoolL2NormGradientOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::PoolL2NormGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::PoolL2NormGradientOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::PoolL2NormGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::PoolL2NormGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::PoolL2NormGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::PoolL2NormGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.pooling_l2_norm_gradient", 28, a1, &mlir::detail::TypeIDResolver<mlir::mps::PoolL2NormGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1F400;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::PoolL2NormGradientOp::getAttributeNames(void)::attrNames, 7);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::PoolL2NormOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::PoolL2NormOp>,mlir::OpTrait::OneResult<mlir::mps::PoolL2NormOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::PoolL2NormOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::PoolL2NormOp>,mlir::OpTrait::OneOperand<mlir::mps::PoolL2NormOp>,mlir::OpTrait::OpInvariants<mlir::mps::PoolL2NormOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::PoolL2NormOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::PoolL2NormOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::PoolL2NormOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::PoolL2NormOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.pooling_l2_norm", 19, a1, &mlir::detail::TypeIDResolver<mlir::mps::PoolL2NormOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1F4E0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::PoolL2NormOp::getAttributeNames(void)::attrNames, 7);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::PoolMaxGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::PoolMaxGradientOp>,mlir::OpTrait::OneResult<mlir::mps::PoolMaxGradientOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::PoolMaxGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::PoolMaxGradientOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::mps::PoolMaxGradientOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::mps::PoolMaxGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::PoolMaxGradientOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::PoolMaxGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::PoolMaxGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::PoolMaxGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::PoolMaxGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.pooling_max_gradient", 24, a1, &mlir::detail::TypeIDResolver<mlir::mps::PoolMaxGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1F5C0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::PoolMaxGradientOp::getAttributeNames(void)::attrNames, 10);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::PoolMaxOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::PoolMaxOp>,mlir::OpTrait::NResults<2u>::Impl<mlir::mps::PoolMaxOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::PoolMaxOp>,mlir::OpTrait::OneOperand<mlir::mps::PoolMaxOp>,mlir::OpTrait::OpInvariants<mlir::mps::PoolMaxOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::PoolMaxOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::PoolMaxOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::PoolMaxOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::PoolMaxOp>,mlir::OpAsmOpInterface::Trait<mlir::mps::PoolMaxOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.pooling_max", 15, a1, &mlir::detail::TypeIDResolver<mlir::mps::PoolMaxOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1F6A0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::PoolMaxOp::getAttributeNames(void)::attrNames, 9);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::PowerOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::PowerOp>,mlir::OpTrait::OneResult<mlir::mps::PowerOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::PowerOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::PowerOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::PowerOp>,mlir::OpTrait::OpInvariants<mlir::mps::PowerOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::PowerOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::PowerOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::PowerOp>,mlir::OpTrait::Stitchable<mlir::mps::PowerOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::PowerOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::PowerOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.power", 9, a1, &mlir::detail::TypeIDResolver<mlir::mps::PowerOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1F780;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::PruningGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::PruningGradientOp>,mlir::OpTrait::OneResult<mlir::mps::PruningGradientOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::PruningGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::PruningGradientOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::PruningGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::PruningGradientOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::PruningGradientOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::PruningGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::PruningGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::PruningGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::PruningGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.prune_gradient", 18, a1, &mlir::detail::TypeIDResolver<mlir::mps::PruningGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1F860;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::PruningGradientOp::getAttributeNames(void)::attrNames, 3);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::PruningOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::PruningOp>,mlir::OpTrait::OneResult<mlir::mps::PruningOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::PruningOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::PruningOp>,mlir::OpTrait::OneOperand<mlir::mps::PruningOp>,mlir::OpTrait::OpInvariants<mlir::mps::PruningOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::PruningOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::PruningOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::PruningOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::PruningOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::PruningOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.prune", 9, a1, &mlir::detail::TypeIDResolver<mlir::mps::PruningOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1F940;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::PruningOp::getAttributeNames(void)::attrNames, 3);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::QuantizeOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::QuantizeOp>,mlir::OpTrait::OneResult<mlir::mps::QuantizeOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::QuantizeOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::QuantizeOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::QuantizeOp>,mlir::OpTrait::OpInvariants<mlir::mps::QuantizeOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::QuantizeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::QuantizeOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::QuantizeOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::QuantizeOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.quantize", 12, a1, &mlir::detail::TypeIDResolver<mlir::mps::QuantizeOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1FA20;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::QuantizeOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::RandomNormalOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::RandomNormalOp>,mlir::OpTrait::OneResult<mlir::mps::RandomNormalOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::RandomNormalOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::RandomNormalOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::RandomNormalOp>,mlir::OpTrait::OpInvariants<mlir::mps::RandomNormalOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::RandomNormalOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::RandomNormalOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::RandomNormalOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::RandomNormalOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.random_normal", 17, a1, &mlir::detail::TypeIDResolver<mlir::mps::RandomNormalOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1FB00;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::RandomNormalOp::getAttributeNames(void)::attrNames, 4);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::RandomTruncatedNormalOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::RandomTruncatedNormalOp>,mlir::OpTrait::OneResult<mlir::mps::RandomTruncatedNormalOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::RandomTruncatedNormalOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::RandomTruncatedNormalOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::RandomTruncatedNormalOp>,mlir::OpTrait::OpInvariants<mlir::mps::RandomTruncatedNormalOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::RandomTruncatedNormalOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::RandomTruncatedNormalOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::RandomTruncatedNormalOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::RandomTruncatedNormalOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.random_truncated_normal", 27, a1, &mlir::detail::TypeIDResolver<mlir::mps::RandomTruncatedNormalOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1FBE0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::RandomTruncatedNormalOp::getAttributeNames(void)::attrNames, 6);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::RandomUniformOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::RandomUniformOp>,mlir::OpTrait::OneResult<mlir::mps::RandomUniformOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::RandomUniformOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::RandomUniformOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::RandomUniformOp>,mlir::OpTrait::OpInvariants<mlir::mps::RandomUniformOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::RandomUniformOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::RandomUniformOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::RandomUniformOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::RandomUniformOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.random_uniform", 18, a1, &mlir::detail::TypeIDResolver<mlir::mps::RandomUniformOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1FCC0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::RandomUniformOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::RankOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::RankOp>,mlir::OpTrait::OneResult<mlir::mps::RankOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::RankOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::RankOp>,mlir::OpTrait::OneOperand<mlir::mps::RankOp>,mlir::OpTrait::OpInvariants<mlir::mps::RankOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::RankOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::RankOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::RankOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.rank", 8, a1, &mlir::detail::TypeIDResolver<mlir::mps::RankOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1FDA0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ReadDataFromFileOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ReadDataFromFileOp>,mlir::OpTrait::OneResult<mlir::mps::ReadDataFromFileOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ReadDataFromFileOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ReadDataFromFileOp>,mlir::OpTrait::ZeroOperands<mlir::mps::ReadDataFromFileOp>,mlir::OpTrait::OpInvariants<mlir::mps::ReadDataFromFileOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ReadDataFromFileOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ReadDataFromFileOp>,mlir::DowngraderInterface::Trait<mlir::mps::ReadDataFromFileOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.read_data_from_file", 23, a1, &mlir::detail::TypeIDResolver<mlir::mps::ReadDataFromFileOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1FE80;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::ReadDataFromFileOp::getAttributeNames(void)::attrNames, 3);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ReadVariableOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ReadVariableOp>,mlir::OpTrait::OneResult<mlir::mps::ReadVariableOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::mps::ReadVariableOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ReadVariableOp>,mlir::OpTrait::OneOperand<mlir::mps::ReadVariableOp>,mlir::OpTrait::OpInvariants<mlir::mps::ReadVariableOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ReadVariableOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ReadVariableOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ReadVariableOp>,mlir::DowngraderInterface::Trait<mlir::mps::ReadVariableOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ReadVariableOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.read_variable", 17, a1, &mlir::detail::TypeIDResolver<mlir::mps::ReadVariableOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B1FF60;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::RealPartOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::RealPartOp>,mlir::OpTrait::OneResult<mlir::mps::RealPartOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::RealPartOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::RealPartOp>,mlir::OpTrait::OneOperand<mlir::mps::RealPartOp>,mlir::OpTrait::OpInvariants<mlir::mps::RealPartOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::RealPartOp>,mlir::OpTrait::SameOperandsAndResultShape<mlir::mps::RealPartOp>,mlir::OpTrait::Stitchable<mlir::mps::RealPartOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::RealPartOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::RealPartOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.real_part", 13, a1, &mlir::detail::TypeIDResolver<mlir::mps::RealPartOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B20040;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::RealToHermiteanFFTOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::RealToHermiteanFFTOp>,mlir::OpTrait::OneResult<mlir::mps::RealToHermiteanFFTOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::RealToHermiteanFFTOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::RealToHermiteanFFTOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::RealToHermiteanFFTOp>,mlir::OpTrait::OpInvariants<mlir::mps::RealToHermiteanFFTOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::RealToHermiteanFFTOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::RealToHermiteanFFTOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::RealToHermiteanFFTOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::RealToHermiteanFFTOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.real_to_hermitean_fft", 25, a1, &mlir::detail::TypeIDResolver<mlir::mps::RealToHermiteanFFTOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B20120;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::RealToHermiteanFFTOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ReciprocalOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ReciprocalOp>,mlir::OpTrait::OneResult<mlir::mps::ReciprocalOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ReciprocalOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ReciprocalOp>,mlir::OpTrait::OneOperand<mlir::mps::ReciprocalOp>,mlir::OpTrait::OpInvariants<mlir::mps::ReciprocalOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ReciprocalOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ReciprocalOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ReciprocalOp>,mlir::OpTrait::Stitchable<mlir::mps::ReciprocalOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ReciprocalOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ReciprocalOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.reciprocal", 14, a1, &mlir::detail::TypeIDResolver<mlir::mps::ReciprocalOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B20200;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ReciprocalSquareRootOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ReciprocalSquareRootOp>,mlir::OpTrait::OneResult<mlir::mps::ReciprocalSquareRootOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ReciprocalSquareRootOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ReciprocalSquareRootOp>,mlir::OpTrait::OneOperand<mlir::mps::ReciprocalSquareRootOp>,mlir::OpTrait::OpInvariants<mlir::mps::ReciprocalSquareRootOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ReciprocalSquareRootOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ReciprocalSquareRootOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ReciprocalSquareRootOp>,mlir::OpTrait::Stitchable<mlir::mps::ReciprocalSquareRootOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ReciprocalSquareRootOp>,mlir::DowngraderInterface::Trait<mlir::mps::ReciprocalSquareRootOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ReciprocalSquareRootOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.reciprocal_square_root", 26, a1, &mlir::detail::TypeIDResolver<mlir::mps::ReciprocalSquareRootOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B202E0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ReductionAndOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ReductionAndOp>,mlir::OpTrait::OneResult<mlir::mps::ReductionAndOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ReductionAndOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ReductionAndOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::mps::ReductionAndOp>,mlir::OpTrait::OpInvariants<mlir::mps::ReductionAndOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ReductionAndOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ReductionAndOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ReductionAndOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ReductionAndOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.reduction_and", 17, a1, &mlir::detail::TypeIDResolver<mlir::mps::ReductionAndOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B203C0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::ReductionAndOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ReductionArgMaxOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ReductionArgMaxOp>,mlir::OpTrait::OneResult<mlir::mps::ReductionArgMaxOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ReductionArgMaxOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ReductionArgMaxOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::mps::ReductionArgMaxOp>,mlir::OpTrait::OpInvariants<mlir::mps::ReductionArgMaxOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ReductionArgMaxOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ReductionArgMaxOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ReductionArgMaxOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ReductionArgMaxOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.reduction_argmax", 20, a1, &mlir::detail::TypeIDResolver<mlir::mps::ReductionArgMaxOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B204A0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::ReductionArgMaxOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ReductionArgMinOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ReductionArgMinOp>,mlir::OpTrait::OneResult<mlir::mps::ReductionArgMinOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ReductionArgMinOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ReductionArgMinOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::mps::ReductionArgMinOp>,mlir::OpTrait::OpInvariants<mlir::mps::ReductionArgMinOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ReductionArgMinOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ReductionArgMinOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ReductionArgMinOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ReductionArgMinOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.reduction_argmin", 20, a1, &mlir::detail::TypeIDResolver<mlir::mps::ReductionArgMinOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B20580;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::ReductionArgMinOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ReductionLogSumExpOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ReductionLogSumExpOp>,mlir::OpTrait::OneResult<mlir::mps::ReductionLogSumExpOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ReductionLogSumExpOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ReductionLogSumExpOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::mps::ReductionLogSumExpOp>,mlir::OpTrait::OpInvariants<mlir::mps::ReductionLogSumExpOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ReductionLogSumExpOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ReductionLogSumExpOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ReductionLogSumExpOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ReductionLogSumExpOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.reduction_logsumexp", 23, a1, &mlir::detail::TypeIDResolver<mlir::mps::ReductionLogSumExpOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B20660;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::ReductionLogSumExpOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ReductionMaxOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ReductionMaxOp>,mlir::OpTrait::OneResult<mlir::mps::ReductionMaxOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ReductionMaxOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ReductionMaxOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::mps::ReductionMaxOp>,mlir::OpTrait::OpInvariants<mlir::mps::ReductionMaxOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ReductionMaxOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ReductionMaxOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ReductionMaxOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ReductionMaxOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.reduction_max", 17, a1, &mlir::detail::TypeIDResolver<mlir::mps::ReductionMaxOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B20740;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::ReductionMaxOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ReductionMeanOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ReductionMeanOp>,mlir::OpTrait::OneResult<mlir::mps::ReductionMeanOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ReductionMeanOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ReductionMeanOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::mps::ReductionMeanOp>,mlir::OpTrait::OpInvariants<mlir::mps::ReductionMeanOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ReductionMeanOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ReductionMeanOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ReductionMeanOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ReductionMeanOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.reduction_mean", 18, a1, &mlir::detail::TypeIDResolver<mlir::mps::ReductionMeanOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B20820;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::ReductionMeanOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ReductionMinOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ReductionMinOp>,mlir::OpTrait::OneResult<mlir::mps::ReductionMinOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ReductionMinOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ReductionMinOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::mps::ReductionMinOp>,mlir::OpTrait::OpInvariants<mlir::mps::ReductionMinOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ReductionMinOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ReductionMinOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ReductionMinOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ReductionMinOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.reduction_min", 17, a1, &mlir::detail::TypeIDResolver<mlir::mps::ReductionMinOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B20900;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::ReductionMinOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ReductionOrOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ReductionOrOp>,mlir::OpTrait::OneResult<mlir::mps::ReductionOrOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ReductionOrOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ReductionOrOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::mps::ReductionOrOp>,mlir::OpTrait::OpInvariants<mlir::mps::ReductionOrOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ReductionOrOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ReductionOrOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ReductionOrOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ReductionOrOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.reduction_or", 16, a1, &mlir::detail::TypeIDResolver<mlir::mps::ReductionOrOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B209E0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::ReductionOrOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ReductionProdOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ReductionProdOp>,mlir::OpTrait::OneResult<mlir::mps::ReductionProdOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ReductionProdOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ReductionProdOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::mps::ReductionProdOp>,mlir::OpTrait::OpInvariants<mlir::mps::ReductionProdOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ReductionProdOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ReductionProdOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ReductionProdOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ReductionProdOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.reduction_prod", 18, a1, &mlir::detail::TypeIDResolver<mlir::mps::ReductionProdOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B20AC0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::ReductionProdOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ReductionSumOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ReductionSumOp>,mlir::OpTrait::OneResult<mlir::mps::ReductionSumOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ReductionSumOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ReductionSumOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::mps::ReductionSumOp>,mlir::OpTrait::OpInvariants<mlir::mps::ReductionSumOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ReductionSumOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ReductionSumOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ReductionSumOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ReductionSumOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.reduction_sum", 17, a1, &mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B20BA0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::ReductionSumOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ReductionVarianceOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ReductionVarianceOp>,mlir::OpTrait::OneResult<mlir::mps::ReductionVarianceOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ReductionVarianceOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ReductionVarianceOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::mps::ReductionVarianceOp>,mlir::OpTrait::OpInvariants<mlir::mps::ReductionVarianceOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ReductionVarianceOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ReductionVarianceOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ReductionVarianceOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ReductionVarianceOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.reduction_variance", 22, a1, &mlir::detail::TypeIDResolver<mlir::mps::ReductionVarianceOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B20C80;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::ReductionVarianceOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ReinterpretCastOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ReinterpretCastOp>,mlir::OpTrait::OneResult<mlir::mps::ReinterpretCastOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ReinterpretCastOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ReinterpretCastOp>,mlir::OpTrait::OneOperand<mlir::mps::ReinterpretCastOp>,mlir::OpTrait::OpInvariants<mlir::mps::ReinterpretCastOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ReinterpretCastOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ReinterpretCastOp>,mlir::OpTrait::TypeChanger<mlir::mps::ReinterpretCastOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ReinterpretCastOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ReinterpretCastOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.reinterpret_cast", 20, a1, &mlir::detail::TypeIDResolver<mlir::mps::ReinterpretCastOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B20D60;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::ReinterpretCastOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::Relu6Op>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::Relu6Op>,mlir::OpTrait::OneResult<mlir::mps::Relu6Op>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::Relu6Op>,mlir::OpTrait::ZeroSuccessors<mlir::mps::Relu6Op>,mlir::OpTrait::OneOperand<mlir::mps::Relu6Op>,mlir::OpTrait::OpInvariants<mlir::mps::Relu6Op>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::Relu6Op>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::Relu6Op>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::Relu6Op>,mlir::OpTrait::Stitchable<mlir::mps::Relu6Op>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::Relu6Op>,mlir::InferTypeOpInterface::Trait<mlir::mps::Relu6Op>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.relu6", 9, a1, &mlir::detail::TypeIDResolver<mlir::mps::Relu6Op,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B20E40;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ReluGradOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ReluGradOp>,mlir::OpTrait::OneResult<mlir::mps::ReluGradOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ReluGradOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ReluGradOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::ReluGradOp>,mlir::OpTrait::OpInvariants<mlir::mps::ReluGradOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ReluGradOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ReluGradOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ReluGradOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ReluGradOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.relu_grad", 13, a1, &mlir::detail::TypeIDResolver<mlir::mps::ReluGradOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B20F20;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ReluOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ReluOp>,mlir::OpTrait::OneResult<mlir::mps::ReluOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ReluOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ReluOp>,mlir::OpTrait::OneOperand<mlir::mps::ReluOp>,mlir::OpTrait::OpInvariants<mlir::mps::ReluOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ReluOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ReluOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ReluOp>,mlir::OpTrait::IsIdempotent<mlir::mps::ReluOp>,mlir::OpTrait::Stitchable<mlir::mps::ReluOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ReluOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ReluOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.relu", 8, a1, &mlir::detail::TypeIDResolver<mlir::mps::ReluOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B21000;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ReshapeOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ReshapeOp>,mlir::OpTrait::OneResult<mlir::mps::ReshapeOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ReshapeOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ReshapeOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::ReshapeOp>,mlir::OpTrait::OpInvariants<mlir::mps::ReshapeOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ReshapeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ReshapeOp>,mlir::OpTrait::TypeChanger<mlir::mps::ReshapeOp>,mlir::DowngraderInterface::Trait<mlir::mps::ReshapeOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ReshapeOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ReshapeOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.reshape", 11, a1, &mlir::detail::TypeIDResolver<mlir::mps::ReshapeOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B210E0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::ReshapeOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ResizeGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ResizeGradientOp>,mlir::OpTrait::OneResult<mlir::mps::ResizeGradientOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ResizeGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ResizeGradientOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::mps::ResizeGradientOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::mps::ResizeGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::ResizeGradientOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ResizeGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ResizeGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ResizeGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ResizeGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.resize_gradient", 19, a1, &mlir::detail::TypeIDResolver<mlir::mps::ResizeGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B211C0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::ResizeGradientOp::getAttributeNames(void)::attrNames, 5);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ResizeOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ResizeOp>,mlir::OpTrait::OneResult<mlir::mps::ResizeOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ResizeOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ResizeOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::mps::ResizeOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::mps::ResizeOp>,mlir::OpTrait::OpInvariants<mlir::mps::ResizeOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ResizeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ResizeOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ResizeOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ResizeOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.resize", 10, a1, &mlir::detail::TypeIDResolver<mlir::mps::ResizeOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B212A0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::ResizeOp::getAttributeNames(void)::attrNames, 5);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ReverseOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ReverseOp>,mlir::OpTrait::OneResult<mlir::mps::ReverseOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ReverseOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ReverseOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::mps::ReverseOp>,mlir::OpTrait::OpInvariants<mlir::mps::ReverseOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ReverseOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ReverseOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ReverseOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.reverse", 11, a1, &mlir::detail::TypeIDResolver<mlir::mps::ReverseOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B21380;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::RintOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::RintOp>,mlir::OpTrait::OneResult<mlir::mps::RintOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::RintOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::RintOp>,mlir::OpTrait::OneOperand<mlir::mps::RintOp>,mlir::OpTrait::OpInvariants<mlir::mps::RintOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::RintOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::RintOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::RintOp>,mlir::OpTrait::Stitchable<mlir::mps::RintOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::RintOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::RintOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.rint", 8, a1, &mlir::detail::TypeIDResolver<mlir::mps::RintOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B21460;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::RoundOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::RoundOp>,mlir::OpTrait::OneResult<mlir::mps::RoundOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::RoundOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::RoundOp>,mlir::OpTrait::OneOperand<mlir::mps::RoundOp>,mlir::OpTrait::OpInvariants<mlir::mps::RoundOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::RoundOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::RoundOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::RoundOp>,mlir::OpTrait::Stitchable<mlir::mps::RoundOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::RoundOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::RoundOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.round", 9, a1, &mlir::detail::TypeIDResolver<mlir::mps::RoundOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B21540;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SampleGridDataGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SampleGridDataGradientOp>,mlir::OpTrait::OneResult<mlir::mps::SampleGridDataGradientOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SampleGridDataGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SampleGridDataGradientOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::SampleGridDataGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::SampleGridDataGradientOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::SampleGridDataGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SampleGridDataGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SampleGridDataGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SampleGridDataGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.sample_grid_data_gradient", 29, a1, &mlir::detail::TypeIDResolver<mlir::mps::SampleGridDataGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B21620;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::SampleGridDataGradientOp::getAttributeNames(void)::attrNames, 4);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SampleGridOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SampleGridOp>,mlir::OpTrait::OneResult<mlir::mps::SampleGridOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SampleGridOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SampleGridOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::SampleGridOp>,mlir::OpTrait::OpInvariants<mlir::mps::SampleGridOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::SampleGridOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SampleGridOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SampleGridOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SampleGridOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.sample_grid", 15, a1, &mlir::detail::TypeIDResolver<mlir::mps::SampleGridOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B21700;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::SampleGridOp::getAttributeNames(void)::attrNames, 7);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ScatterAlongAxisOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ScatterAlongAxisOp>,mlir::OpTrait::OneResult<mlir::mps::ScatterAlongAxisOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ScatterAlongAxisOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ScatterAlongAxisOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::ScatterAlongAxisOp>,mlir::OpTrait::OpInvariants<mlir::mps::ScatterAlongAxisOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ScatterAlongAxisOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ScatterAlongAxisOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ScatterAlongAxisOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ScatterAlongAxisOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.scatter_along_axis", 22, a1, &mlir::detail::TypeIDResolver<mlir::mps::ScatterAlongAxisOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B217E0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::ScatterAlongAxisOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ScatterNDOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ScatterNDOp>,mlir::OpTrait::OneResult<mlir::mps::ScatterNDOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ScatterNDOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ScatterNDOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::ScatterNDOp>,mlir::OpTrait::OpInvariants<mlir::mps::ScatterNDOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ScatterNDOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ScatterNDOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ScatterNDOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ScatterNDOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.scatter_nd", 14, a1, &mlir::detail::TypeIDResolver<mlir::mps::ScatterNDOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B218C0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::ScatterNDOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ScatterOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ScatterOp>,mlir::OpTrait::OneResult<mlir::mps::ScatterOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ScatterOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ScatterOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::ScatterOp>,mlir::OpTrait::OpInvariants<mlir::mps::ScatterOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::ScatterOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ScatterOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ScatterOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ScatterOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.scatter", 11, a1, &mlir::detail::TypeIDResolver<mlir::mps::ScatterOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B219A0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::ScatterOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SelectOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SelectOp>,mlir::OpTrait::OneResult<mlir::mps::SelectOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SelectOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SelectOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::SelectOp>,mlir::OpTrait::OpInvariants<mlir::mps::SelectOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SelectOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::SelectOp>,mlir::OpTrait::Stitchable<mlir::mps::SelectOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SelectOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SelectOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.select", 10, a1, &mlir::detail::TypeIDResolver<mlir::mps::SelectOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B21A80;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::ShapeOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ShapeOp>,mlir::OpTrait::OneResult<mlir::mps::ShapeOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ShapeOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ShapeOp>,mlir::OpTrait::OneOperand<mlir::mps::ShapeOp>,mlir::OpTrait::OpInvariants<mlir::mps::ShapeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ShapeOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ShapeOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ShapeOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.shape", 9, a1, &mlir::detail::TypeIDResolver<mlir::mps::ShapeOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B21B60;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SigmoidGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SigmoidGradientOp>,mlir::OpTrait::OneResult<mlir::mps::SigmoidGradientOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SigmoidGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SigmoidGradientOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::SigmoidGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::SigmoidGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SigmoidGradientOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::SigmoidGradientOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::SigmoidGradientOp>,mlir::OpTrait::Stitchable<mlir::mps::SigmoidGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SigmoidGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SigmoidGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.sigmoid_gradient", 20, a1, &mlir::detail::TypeIDResolver<mlir::mps::SigmoidGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B21C40;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SigmoidGradientWithSigmoidOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SigmoidGradientWithSigmoidOp>,mlir::OpTrait::OneResult<mlir::mps::SigmoidGradientWithSigmoidOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SigmoidGradientWithSigmoidOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SigmoidGradientWithSigmoidOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::SigmoidGradientWithSigmoidOp>,mlir::OpTrait::OpInvariants<mlir::mps::SigmoidGradientWithSigmoidOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SigmoidGradientWithSigmoidOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::SigmoidGradientWithSigmoidOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::SigmoidGradientWithSigmoidOp>,mlir::OpTrait::Stitchable<mlir::mps::SigmoidGradientWithSigmoidOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SigmoidGradientWithSigmoidOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SigmoidGradientWithSigmoidOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.sigmoid_gradient_with_sigmoid", 33, a1, &mlir::detail::TypeIDResolver<mlir::mps::SigmoidGradientWithSigmoidOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B21D20;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SigmoidHardOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SigmoidHardOp>,mlir::OpTrait::OneResult<mlir::mps::SigmoidHardOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SigmoidHardOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SigmoidHardOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::SigmoidHardOp>,mlir::OpTrait::OpInvariants<mlir::mps::SigmoidHardOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SigmoidHardOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::SigmoidHardOp>,mlir::OpTrait::Stitchable<mlir::mps::SigmoidHardOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SigmoidHardOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SigmoidHardOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.sigmoid_hard", 16, a1, &mlir::detail::TypeIDResolver<mlir::mps::SigmoidHardOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B21E00;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SigmoidOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SigmoidOp>,mlir::OpTrait::OneResult<mlir::mps::SigmoidOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SigmoidOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SigmoidOp>,mlir::OpTrait::OneOperand<mlir::mps::SigmoidOp>,mlir::OpTrait::OpInvariants<mlir::mps::SigmoidOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SigmoidOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::SigmoidOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::SigmoidOp>,mlir::OpTrait::Stitchable<mlir::mps::SigmoidOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SigmoidOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SigmoidOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.sigmoid", 11, a1, &mlir::detail::TypeIDResolver<mlir::mps::SigmoidOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B21EE0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SignOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SignOp>,mlir::OpTrait::OneResult<mlir::mps::SignOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SignOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SignOp>,mlir::OpTrait::OneOperand<mlir::mps::SignOp>,mlir::OpTrait::OpInvariants<mlir::mps::SignOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SignOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::SignOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::SignOp>,mlir::OpTrait::Stitchable<mlir::mps::SignOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SignOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SignOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.sign", 8, a1, &mlir::detail::TypeIDResolver<mlir::mps::SignOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B21FC0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SignbitOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SignbitOp>,mlir::OpTrait::OneResult<mlir::mps::SignbitOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SignbitOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SignbitOp>,mlir::OpTrait::OneOperand<mlir::mps::SignbitOp>,mlir::OpTrait::OpInvariants<mlir::mps::SignbitOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SignbitOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::SignbitOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::SignbitOp>,mlir::OpTrait::Stitchable<mlir::mps::SignbitOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SignbitOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SignbitOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.signbit", 11, a1, &mlir::detail::TypeIDResolver<mlir::mps::SignbitOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B220A0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SinOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SinOp>,mlir::OpTrait::OneResult<mlir::mps::SinOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SinOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SinOp>,mlir::OpTrait::OneOperand<mlir::mps::SinOp>,mlir::OpTrait::OpInvariants<mlir::mps::SinOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SinOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::SinOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::SinOp>,mlir::OpTrait::Stitchable<mlir::mps::SinOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SinOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SinOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.sin", 7, a1, &mlir::detail::TypeIDResolver<mlir::mps::SinOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B22180;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SingleGateRNNGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SingleGateRNNGradientOp>,mlir::OpTrait::AtLeastNResults<2u>::Impl<mlir::mps::SingleGateRNNGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SingleGateRNNGradientOp>,mlir::OpTrait::AtLeastNOperands<3u>::Impl<mlir::mps::SingleGateRNNGradientOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::mps::SingleGateRNNGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::SingleGateRNNGradientOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::SingleGateRNNGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SingleGateRNNGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SingleGateRNNGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SingleGateRNNGradientOp>,mlir::OpAsmOpInterface::Trait<mlir::mps::SingleGateRNNGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.singlegate_rnn_gradient", 27, a1, &mlir::detail::TypeIDResolver<mlir::mps::SingleGateRNNGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B22260;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::SingleGateRNNGradientOp::getAttributeNames(void)::attrNames, 3);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SingleGateRNNOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SingleGateRNNOp>,mlir::OpTrait::AtLeastNResults<1u>::Impl<mlir::mps::SingleGateRNNOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SingleGateRNNOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::mps::SingleGateRNNOp>,mlir::OpTrait::AttrSizedOperandSegments<mlir::mps::SingleGateRNNOp>,mlir::OpTrait::OpInvariants<mlir::mps::SingleGateRNNOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::SingleGateRNNOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SingleGateRNNOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SingleGateRNNOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SingleGateRNNOp>,mlir::OpAsmOpInterface::Trait<mlir::mps::SingleGateRNNOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.singlegate_rnn", 18, a1, &mlir::detail::TypeIDResolver<mlir::mps::SingleGateRNNOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B22340;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::SingleGateRNNOp::getAttributeNames(void)::attrNames, 3);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SinhOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SinhOp>,mlir::OpTrait::OneResult<mlir::mps::SinhOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SinhOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SinhOp>,mlir::OpTrait::OneOperand<mlir::mps::SinhOp>,mlir::OpTrait::OpInvariants<mlir::mps::SinhOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SinhOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::SinhOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::SinhOp>,mlir::OpTrait::Stitchable<mlir::mps::SinhOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SinhOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SinhOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.sinh", 8, a1, &mlir::detail::TypeIDResolver<mlir::mps::SinhOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B22420;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SizeOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SizeOp>,mlir::OpTrait::OneResult<mlir::mps::SizeOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SizeOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SizeOp>,mlir::OpTrait::OneOperand<mlir::mps::SizeOp>,mlir::OpTrait::OpInvariants<mlir::mps::SizeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SizeOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SizeOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SizeOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.size", 8, a1, &mlir::detail::TypeIDResolver<mlir::mps::SizeOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B22500;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SliceOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SliceOp>,mlir::OpTrait::OneResult<mlir::mps::SliceOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SliceOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SliceOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::SliceOp>,mlir::OpTrait::OpInvariants<mlir::mps::SliceOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SliceOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SliceOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SliceOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.slice", 9, a1, &mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B225E0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SoftmaxOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SoftmaxOp>,mlir::OpTrait::OneResult<mlir::mps::SoftmaxOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SoftmaxOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SoftmaxOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::SoftmaxOp>,mlir::OpTrait::OpInvariants<mlir::mps::SoftmaxOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SoftmaxOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SoftmaxOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SoftmaxOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.softmax", 11, a1, &mlir::detail::TypeIDResolver<mlir::mps::SoftmaxOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B226C0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SoftplusOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SoftplusOp>,mlir::OpTrait::OneResult<mlir::mps::SoftplusOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SoftplusOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SoftplusOp>,mlir::OpTrait::OneOperand<mlir::mps::SoftplusOp>,mlir::OpTrait::OpInvariants<mlir::mps::SoftplusOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SoftplusOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::SoftplusOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::SoftplusOp>,mlir::OpTrait::Stitchable<mlir::mps::SoftplusOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SoftplusOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SoftplusOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.softplus", 12, a1, &mlir::detail::TypeIDResolver<mlir::mps::SoftplusOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B227A0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SoftplusParametricOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::OneResult<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::OpInvariants<mlir::mps::SoftplusParametricOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::OpTrait::Stitchable<mlir::mps::SoftplusParametricOp>,mlir::DowngraderInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::UpgraderInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SoftplusParametricOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SoftplusParametricOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.softplus_parametric", 23, a1, &mlir::detail::TypeIDResolver<mlir::mps::SoftplusParametricOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B22880;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SoftsignOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SoftsignOp>,mlir::OpTrait::OneResult<mlir::mps::SoftsignOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SoftsignOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SoftsignOp>,mlir::OpTrait::OneOperand<mlir::mps::SoftsignOp>,mlir::OpTrait::OpInvariants<mlir::mps::SoftsignOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SoftsignOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::SoftsignOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::SoftsignOp>,mlir::OpTrait::Stitchable<mlir::mps::SoftsignOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SoftsignOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SoftsignOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.softsign", 12, a1, &mlir::detail::TypeIDResolver<mlir::mps::SoftsignOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B22960;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SortOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SortOp>,mlir::OpTrait::NResults<2u>::Impl<mlir::mps::SortOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SortOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::SortOp>,mlir::OpTrait::OpInvariants<mlir::mps::SortOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::SortOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SortOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SortOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SortOp>,mlir::OpAsmOpInterface::Trait<mlir::mps::SortOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.sort", 8, a1, &mlir::detail::TypeIDResolver<mlir::mps::SortOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B22A40;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::SortOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SpaceToBatchOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SpaceToBatchOp>,mlir::OpTrait::OneResult<mlir::mps::SpaceToBatchOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SpaceToBatchOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SpaceToBatchOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::SpaceToBatchOp>,mlir::OpTrait::OpInvariants<mlir::mps::SpaceToBatchOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::SpaceToBatchOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SpaceToBatchOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SpaceToBatchOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SpaceToBatchOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.space_to_batch", 18, a1, &mlir::detail::TypeIDResolver<mlir::mps::SpaceToBatchOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B22B20;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::SpaceToBatchOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SpaceToDepth2DOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SpaceToDepth2DOp>,mlir::OpTrait::OneResult<mlir::mps::SpaceToDepth2DOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SpaceToDepth2DOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SpaceToDepth2DOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::SpaceToDepth2DOp>,mlir::OpTrait::OpInvariants<mlir::mps::SpaceToDepth2DOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::SpaceToDepth2DOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SpaceToDepth2DOp>,mlir::OpTrait::Stitchable<mlir::mps::SpaceToDepth2DOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SpaceToDepth2DOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SpaceToDepth2DOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.space_to_depth_2d", 21, a1, &mlir::detail::TypeIDResolver<mlir::mps::SpaceToDepth2DOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B22C00;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::SpaceToDepth2DOp::getAttributeNames(void)::attrNames, 2);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SplitOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SplitOp>,mlir::OpTrait::VariadicResults<mlir::mps::SplitOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SplitOp>,mlir::OpTrait::AtLeastNOperands<2u>::Impl<mlir::mps::SplitOp>,mlir::OpTrait::OpInvariants<mlir::mps::SplitOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::SplitOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SplitOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SplitOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SplitOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.split", 9, a1, &mlir::detail::TypeIDResolver<mlir::mps::SplitOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B22CE0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::SplitOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SquareOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SquareOp>,mlir::OpTrait::OneResult<mlir::mps::SquareOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SquareOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SquareOp>,mlir::OpTrait::OneOperand<mlir::mps::SquareOp>,mlir::OpTrait::OpInvariants<mlir::mps::SquareOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SquareOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::SquareOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::SquareOp>,mlir::OpTrait::Stitchable<mlir::mps::SquareOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SquareOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SquareOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.square", 10, a1, &mlir::detail::TypeIDResolver<mlir::mps::SquareOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B22DC0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SquareRootOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SquareRootOp>,mlir::OpTrait::OneResult<mlir::mps::SquareRootOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SquareRootOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SquareRootOp>,mlir::OpTrait::OneOperand<mlir::mps::SquareRootOp>,mlir::OpTrait::OpInvariants<mlir::mps::SquareRootOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SquareRootOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::SquareRootOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::SquareRootOp>,mlir::OpTrait::Stitchable<mlir::mps::SquareRootOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SquareRootOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SquareRootOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.square_root", 15, a1, &mlir::detail::TypeIDResolver<mlir::mps::SquareRootOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B22EA0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SqueezeOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SqueezeOp>,mlir::OpTrait::OneResult<mlir::mps::SqueezeOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SqueezeOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SqueezeOp>,mlir::OpTrait::AtLeastNOperands<1u>::Impl<mlir::mps::SqueezeOp>,mlir::OpTrait::OpInvariants<mlir::mps::SqueezeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SqueezeOp>,mlir::OpTrait::TypeChanger<mlir::mps::SqueezeOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SqueezeOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SqueezeOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.squeeze", 11, a1, &mlir::detail::TypeIDResolver<mlir::mps::SqueezeOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B22F80;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::StencilOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::StencilOp>,mlir::OpTrait::OneResult<mlir::mps::StencilOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::StencilOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::StencilOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::StencilOp>,mlir::OpTrait::OpInvariants<mlir::mps::StencilOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::StencilOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::StencilOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::StencilOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::StencilOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.stencil", 11, a1, &mlir::detail::TypeIDResolver<mlir::mps::StencilOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B23060;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::StencilOp::getAttributeNames(void)::attrNames, 8);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::StridedSliceGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::StridedSliceGradientOp>,mlir::OpTrait::OneResult<mlir::mps::StridedSliceGradientOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::StridedSliceGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::StridedSliceGradientOp>,mlir::OpTrait::NOperands<5u>::Impl<mlir::mps::StridedSliceGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::StridedSliceGradientOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::StridedSliceGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::StridedSliceGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::StridedSliceGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::StridedSliceGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.strided_slice_gradient", 26, a1, &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B23140;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::StridedSliceGradientOp::getAttributeNames(void)::attrNames, 4);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::StridedSliceOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::StridedSliceOp>,mlir::OpTrait::OneResult<mlir::mps::StridedSliceOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::StridedSliceOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::StridedSliceOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::StridedSliceOp>,mlir::OpTrait::OpInvariants<mlir::mps::StridedSliceOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::StridedSliceOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::StridedSliceOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::StridedSliceOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::StridedSliceOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.strided_slice", 17, a1, &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B23220;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::StridedSliceOp::getAttributeNames(void)::attrNames, 4);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::StridedSliceUpdateOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::StridedSliceUpdateOp>,mlir::OpTrait::OneResult<mlir::mps::StridedSliceUpdateOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::StridedSliceUpdateOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::StridedSliceUpdateOp>,mlir::OpTrait::NOperands<5u>::Impl<mlir::mps::StridedSliceUpdateOp>,mlir::OpTrait::OpInvariants<mlir::mps::StridedSliceUpdateOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::StridedSliceUpdateOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::StridedSliceUpdateOp>,mlir::DowngraderInterface::Trait<mlir::mps::StridedSliceUpdateOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::StridedSliceUpdateOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::StridedSliceUpdateOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.strided_slice_update", 24, a1, &mlir::detail::TypeIDResolver<mlir::mps::StridedSliceUpdateOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B23300;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::StridedSliceUpdateOp::getAttributeNames(void)::attrNames, 4);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SubtractOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SubtractOp>,mlir::OpTrait::OneResult<mlir::mps::SubtractOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SubtractOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SubtractOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::SubtractOp>,mlir::OpTrait::OpInvariants<mlir::mps::SubtractOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SubtractOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::SubtractOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::SubtractOp>,mlir::OpTrait::Stitchable<mlir::mps::SubtractOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SubtractOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SubtractOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.subtract", 12, a1, &mlir::detail::TypeIDResolver<mlir::mps::SubtractOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B233E0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::SwishOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::SwishOp>,mlir::OpTrait::OneResult<mlir::mps::SwishOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::SwishOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::SwishOp>,mlir::OpTrait::OneOperand<mlir::mps::SwishOp>,mlir::OpTrait::OpInvariants<mlir::mps::SwishOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::SwishOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::SwishOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::SwishOp>,mlir::OpTrait::Stitchable<mlir::mps::SwishOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::SwishOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::SwishOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.swish", 9, a1, &mlir::detail::TypeIDResolver<mlir::mps::SwishOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B234C0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::TanOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::TanOp>,mlir::OpTrait::OneResult<mlir::mps::TanOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::TanOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::TanOp>,mlir::OpTrait::OneOperand<mlir::mps::TanOp>,mlir::OpTrait::OpInvariants<mlir::mps::TanOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::TanOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::TanOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::TanOp>,mlir::OpTrait::Stitchable<mlir::mps::TanOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::TanOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::TanOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.tan", 7, a1, &mlir::detail::TypeIDResolver<mlir::mps::TanOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B235A0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::TanhOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::TanhOp>,mlir::OpTrait::OneResult<mlir::mps::TanhOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::TanhOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::TanhOp>,mlir::OpTrait::OneOperand<mlir::mps::TanhOp>,mlir::OpTrait::OpInvariants<mlir::mps::TanhOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::TanhOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::TanhOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::TanhOp>,mlir::OpTrait::Stitchable<mlir::mps::TanhOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::TanhOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::TanhOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.tanh", 8, a1, &mlir::detail::TypeIDResolver<mlir::mps::TanhOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B23680;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::TileGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::TileGradientOp>,mlir::OpTrait::OneResult<mlir::mps::TileGradientOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::TileGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::TileGradientOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::TileGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::TileGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::TileGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::TileGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::TileGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.tile_gradient", 17, a1, &mlir::detail::TypeIDResolver<mlir::mps::TileGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B23760;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::TileOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::TileOp>,mlir::OpTrait::OneResult<mlir::mps::TileOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::TileOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::TileOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::TileOp>,mlir::OpTrait::OpInvariants<mlir::mps::TileOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::TileOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::TileOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::TileOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.tile", 8, a1, &mlir::detail::TypeIDResolver<mlir::mps::TileOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B23840;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::TopKGradientOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::TopKGradientOp>,mlir::OpTrait::OneResult<mlir::mps::TopKGradientOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::TopKGradientOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::TopKGradientOp>,mlir::OpTrait::NOperands<4u>::Impl<mlir::mps::TopKGradientOp>,mlir::OpTrait::OpInvariants<mlir::mps::TopKGradientOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::TopKGradientOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::TopKGradientOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::TopKGradientOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::TopKGradientOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.top_k_grad", 14, a1, &mlir::detail::TypeIDResolver<mlir::mps::TopKGradientOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B23920;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::TopKGradientOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::TopKOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::TopKOp>,mlir::OpTrait::NResults<2u>::Impl<mlir::mps::TopKOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::TopKOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::TopKOp>,mlir::OpTrait::OpInvariants<mlir::mps::TopKOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::TopKOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::TopKOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::TopKOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::TopKOp>,mlir::OpAsmOpInterface::Trait<mlir::mps::TopKOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.top_k", 9, a1, &mlir::detail::TypeIDResolver<mlir::mps::TopKOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B23A00;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::TopKOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::TransposeOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::TransposeOp>,mlir::OpTrait::OneResult<mlir::mps::TransposeOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::TransposeOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::TransposeOp>,mlir::OpTrait::NOperands<3u>::Impl<mlir::mps::TransposeOp>,mlir::OpTrait::OpInvariants<mlir::mps::TransposeOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::TransposeOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::TransposeOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::TransposeOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.transpose", 13, a1, &mlir::detail::TypeIDResolver<mlir::mps::TransposeOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B23AE0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::TruncateOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::TruncateOp>,mlir::OpTrait::OneResult<mlir::mps::TruncateOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::TruncateOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::TruncateOp>,mlir::OpTrait::OneOperand<mlir::mps::TruncateOp>,mlir::OpTrait::OpInvariants<mlir::mps::TruncateOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::TruncateOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::TruncateOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::TruncateOp>,mlir::OpTrait::Stitchable<mlir::mps::TruncateOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::TruncateOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::TruncateOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.truncate", 12, a1, &mlir::detail::TypeIDResolver<mlir::mps::TruncateOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B23BC0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::TypeConstraintOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::TypeConstraintOp>,mlir::OpTrait::OneResult<mlir::mps::TypeConstraintOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::TypeConstraintOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::TypeConstraintOp>,mlir::OpTrait::OneOperand<mlir::mps::TypeConstraintOp>,mlir::OpTrait::OpInvariants<mlir::mps::TypeConstraintOp>,mlir::BytecodeOpInterface::Trait<mlir::mps::TypeConstraintOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::TypeConstraintOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::TypeConstraintOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::TypeConstraintOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.type_constraint", 19, a1, &mlir::detail::TypeIDResolver<mlir::mps::TypeConstraintOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B23CA0;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, &mlir::mps::TypeConstraintOp::getAttributeNames(void)::attrNames, 1);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::UnrealizedFoldOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::UnrealizedFoldOp>,mlir::OpTrait::OneResult<mlir::mps::UnrealizedFoldOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::UnrealizedFoldOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::UnrealizedFoldOp>,mlir::OpTrait::OneOperand<mlir::mps::UnrealizedFoldOp>,mlir::OpTrait::OpInvariants<mlir::mps::UnrealizedFoldOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::UnrealizedFoldOp>,mlir::DowngraderInterface::Trait<mlir::mps::UnrealizedFoldOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.unrealized_fold", 19, a1, &mlir::detail::TypeIDResolver<mlir::mps::UnrealizedFoldOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B23D80;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::UpdateRandomStateOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::UpdateRandomStateOp>,mlir::OpTrait::OneResult<mlir::mps::UpdateRandomStateOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::UpdateRandomStateOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::UpdateRandomStateOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::UpdateRandomStateOp>,mlir::OpTrait::OpInvariants<mlir::mps::UpdateRandomStateOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::UpdateRandomStateOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::UpdateRandomStateOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::UpdateRandomStateOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.update_random_state", 23, a1, &mlir::detail::TypeIDResolver<mlir::mps::UpdateRandomStateOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B23E60;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::VariableFromTensorOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::VariableFromTensorOp>,mlir::OpTrait::OneResult<mlir::mps::VariableFromTensorOp>,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl<mlir::mps::VariableFromTensorOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::VariableFromTensorOp>,mlir::OpTrait::OneOperand<mlir::mps::VariableFromTensorOp>,mlir::OpTrait::OpInvariants<mlir::mps::VariableFromTensorOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::VariableFromTensorOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::VariableFromTensorOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::VariableFromTensorOp>,mlir::DowngraderInterface::Trait<mlir::mps::VariableFromTensorOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::VariableFromTensorOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.variable_from_tensor", 24, a1, &mlir::detail::TypeIDResolver<mlir::mps::VariableFromTensorOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B23F40;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::XnorOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::XnorOp>,mlir::OpTrait::OneResult<mlir::mps::XnorOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::XnorOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::XnorOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::XnorOp>,mlir::OpTrait::OpInvariants<mlir::mps::XnorOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::XnorOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::XnorOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::XnorOp>,mlir::OpTrait::IsCommutative<mlir::mps::XnorOp>,mlir::OpTrait::Stitchable<mlir::mps::XnorOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::XnorOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::XnorOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.xnor", 8, a1, &mlir::detail::TypeIDResolver<mlir::mps::XnorOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B24020;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::insert<mlir::mps::XorOp>(uint64_t a1)
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = operator new(0x70uLL);
  mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::XorOp>,mlir::OpTrait::OneResult<mlir::mps::XorOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::XorOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::XorOp>,mlir::OpTrait::NOperands<2u>::Impl<mlir::mps::XorOp>,mlir::OpTrait::OpInvariants<mlir::mps::XorOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::XorOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::XorOp>,mlir::OpTrait::ResultsBroadcastableShape<mlir::mps::XorOp>,mlir::OpTrait::IsCommutative<mlir::mps::XorOp>,mlir::OpTrait::Stitchable<mlir::mps::XorOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::XorOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::XorOp>>(&v9);
  mlir::OperationName::Impl::Impl(v2, "mps.xor", 7, a1, &mlir::detail::TypeIDResolver<mlir::mps::XorOp,void>::id, &v9);
  v3 = v9;
  if (v10)
  {
    v4 = 16 * v10;
    v5 = (v9 + 8);
    do
    {
      v6 = *v5;
      v5 += 2;
      free(v6);
      v4 -= 16;
    }

    while (v4);
    v3 = v9;
  }

  if (v3 != v11)
  {
    free(v3);
  }

  *v2 = &unk_1F5B24100;
  v8 = v2;
  mlir::RegisteredOperationName::insert(&v8, 0, 0);
  result = v8;
  v8 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ACosOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::ACosOp>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ACosOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::ACosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::ACosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::ACosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::ACosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::mps::ACosOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::ACosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::ACosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::ACosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::ACosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ACosOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::ACosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::ACosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::ACosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::ACosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ACosOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mps::ACosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ACosOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mps::ACosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps::ACosOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ACosOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps::ACosOp>::getEffects;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::ACosOp>::isCompatibleReturnTypes;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(0x18uLL);
  v7 = v6;
  *v6 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ACosOp>::inferReturnTypes;
  v6[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ACosOp>::refineReturnTypes;
  v6[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ACosOp>::isCompatibleReturnTypes;
  {
    v11 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::ACosOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v7[0] = &unk_1F5B24C20;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_1F5B24C20;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ACosOp>::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v14[0] = a4;
  v14[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (*(a11 + 12))
      {
        v12 = 0;
LABEL_6:
        bzero((*a11 + 8 * v12), 8 - 8 * v12);
        goto LABEL_7;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, 1uLL, 8);
      v12 = *(a11 + 8);
      if (v12 != 1)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    *(a11 + 8) = 1;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ACosOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v7[0] = &unk_1F5B24C20;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_1F5B24C20;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mps::ACosOp>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28 = *MEMORY[0x1E69E9840];
  v21[0] = v22;
  v21[1] = 0x400000001;
  v25 = a4;
  v26 = a5;
  v22[0] = 0;
  v22[0] = *(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ValueRange::ValueRange(v20, v22, 1uLL);
  mlir::ValueRange::ValueRange(v19, *a11, *(a11 + 8));
  v23[0] = &unk_1F5B24C20;
  v24 = v23;
  v27 = &v25;
  v25 = &unk_1F5B24C20;
  if (v27 == &v25)
  {
    (*(*v27 + 4))(v27);
    v14 = v24;
    if (v24 != v23)
    {
      goto LABEL_5;
    }

LABEL_11:
    (*(*v14 + 32))(v14);
    if (v13)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  if (v27)
  {
    (*(*v27 + 5))(v27);
  }

  v14 = v24;
  if (v24 == v23)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (v14)
  {
    (*(*v14 + 40))(v14);
  }

  if (v13)
  {
LABEL_8:
    v15 = 1;
    v16 = v21[0];
    if (v21[0] == v22)
    {
      return v15;
    }

    goto LABEL_13;
  }

LABEL_12:
  v25 = "mps.acos";
  v26 = 8;
  v17.var0.var0 = a3;
  v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v17, "'", &v25, "' op inferred type(s) ", v21, " are incompatible with return type(s) of operation ", a11);
  v16 = v21[0];
  if (v21[0] != v22)
  {
LABEL_13:
    free(v16);
  }

  return v15;
}

uint64_t mlir::Op<mlir::mps::ACosOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::foldSingleResultHook<mlir::mps::ACosOp>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 48);
  v18 = *(a1 + 56);
  v19 = v8;
  v20 = 1;
  v9 = *(a1 + 44);
  v10 = v9 & 0x7FFFFF;
  if ((v9 & 0x7FFFFF) != 0)
  {
    v11 = ((a1 + 16 * ((v9 >> 23) & 1) + ((v9 >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a1 + 40);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  mlir::ValueRange::ValueRange(&v21, v11, v10);
  v22 = a2;
  v23 = a3;
  if (!mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(a1))
  {
    v16 = 0;
    InterfaceFor = 0;
    return 0;
  }

  v16 = a1;
  InterfaceFor = mlir::OpInterface<mlir::ExternalFoldInterface,mlir::detail::ExternalFoldInterfaceInterfaceTraits>::getInterfaceFor(a1);
  if (!a1)
  {
    return 0;
  }

  v12 = mlir::ExternalFoldInterface::externalFold(&v16, v22, v23);
  if (v12 < 8)
  {
    return 0;
  }

  if (a1 - 16 != (v12 & ((v12 << 61) >> 63) & 0xFFFFFFFFFFFFFFF8))
  {
    v13 = *(a4 + 8);
    if (v13 >= *(a4 + 12))
    {
      v15 = v12;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a4, a4 + 16, v13 + 1, 8);
      v12 = v15;
      LODWORD(v13) = *(a4 + 8);
    }

    *(*a4 + 8 * v13) = v12;
    ++*(a4 + 8);
  }

  return 1;
}

BOOL mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>(uint64_t a1)
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
    a1 = v90;
    v1 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroRegions<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroRegions>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
LABEL_3:
      v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  v79 = v1;
  v91 = a1;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::pdl::AttributeType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::ZeroOperands,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v1 = v79;
  a1 = v91;
  v2 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneResult<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneResult>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_4:
    v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  v80 = v1;
  v92 = a1;
  v69 = v2;
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v2 = v69;
  v1 = v80;
  a1 = v92;
  v3 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneTypedResult<mlir::Type>::Impl>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_5:
    v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v3 = v60;
  v2 = v70;
  v1 = v81;
  a1 = v93;
  v4 = mlir::detail::TypeIDResolver<mlir::OpTrait::ZeroSuccessors<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::ZeroSuccessors>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_6:
    v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::ZeroResults,mlir::OpTrait::NSuccessors<2u>::Impl,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::OpTrait::IsTerminator,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait>();
  v4 = v52;
  v3 = v61;
  v2 = v71;
  v1 = v82;
  a1 = v94;
  v5 = mlir::detail::TypeIDResolver<mlir::OpTrait::OneOperand<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::OneOperand>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::BytecodeOpInterface::Trait,mlir::ConditionallySpeculatable::Trait,mlir::OpTrait::AlwaysSpeculatableImplTrait,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::Elementwise,mlir::arith::ArithFastMathInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v6 = v39;
  v5 = v46;
  v4 = v54;
  v3 = v63;
  v2 = v73;
  v1 = v84;
  a1 = v96;
  v7 = mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::MemoryEffectOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_9:
    v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultElementType>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v7 = v34;
  v6 = v40;
  v5 = v47;
  v4 = v55;
  v3 = v64;
  v2 = v74;
  v1 = v85;
  a1 = v97;
  v8 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultElementType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultElementType>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_10:
    v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
  v8 = v30;
  v7 = v35;
  v6 = v41;
  v5 = v48;
  v4 = v56;
  v3 = v65;
  v2 = v75;
  v1 = v86;
  a1 = v98;
  v9 = mlir::detail::TypeIDResolver<mlir::OpTrait::SameOperandsAndResultType<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::SameOperandsAndResultType>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
LABEL_11:
    v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::Stitchable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Stitchable>(void)::Empty>,void>::resolveTypeID(void)::id;
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
    mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
    v11 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
    {
      return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>();
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
  v10 = mlir::detail::TypeIDResolver<mlir::OpTrait::Stitchable<mlir::TypeID mlir::TypeID::get<mlir::OpTrait::Stitchable>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    goto LABEL_60;
  }

LABEL_12:
  v11 = mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::CompatibleReturnTypesInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id;
  {
    return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
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
  mlir::op_definition_impl::hasTrait<mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::TensorType>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>();
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
  return v1 == a1 || v2 == a1 || v3 == a1 || v4 == a1 || v5 == a1 || v6 == a1 || v7 == a1 || v8 == a1 || v9 == a1 || v10 == a1 || v11 == a1 || mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface::Trait<mlir::TypeID mlir::TypeID::get<mlir::InferTypeOpInterface::Trait>(void)::Empty>,void>::resolveTypeID(void)::id == a1;
}

unint64_t mlir::op_definition_impl::verifyTraits<mlir::OpTrait::ZeroRegions<mlir::mps::ACosOp>,mlir::OpTrait::OneResult<mlir::mps::ACosOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACosOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACosOp>,mlir::OpTrait::OneOperand<mlir::mps::ACosOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACosOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACosOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACosOp>,mlir::OpTrait::Stitchable<mlir::mps::ACosOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACosOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACosOp>>(uint64_t a1, mlir::Operation *a2)
{
  if (mlir::OpTrait::impl::verifyZeroRegions(a1, a2) && mlir::OpTrait::impl::verifyOneResult(a1, v3) && mlir::OpTrait::impl::verifyZeroSuccessors(a1, v4) && mlir::OpTrait::impl::verifyOneOperand(a1, v5) && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(a1, (*(*(*(a1 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) != 0 && (*(a1 + 36) ? (v6 = a1 - 16) : (v6 = 0), (NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 0), (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(a1, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1) != 0) && mlir::OpTrait::impl::verifySameOperandsAndResultElementType(a1, v8)))
  {
    return mlir::OpTrait::impl::verifySameOperandsAndResultType(a1, v9) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ACoshOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::ACoshOp>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ACoshOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::ACoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::ACoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::ACoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::ACoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::mps::ACoshOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::ACoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::ACoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::ACoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::ACoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ACoshOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::ACoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::ACoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::ACoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::ACoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ACoshOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mps::ACoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ACoshOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mps::ACoshOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps::ACoshOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ACoshOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ACoshOp>,mlir::OpTrait::OneResult<mlir::mps::ACoshOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ACoshOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ACoshOp>,mlir::OpTrait::OneOperand<mlir::mps::ACoshOp>,mlir::OpTrait::OpInvariants<mlir::mps::ACoshOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ACoshOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ACoshOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ACoshOp>,mlir::OpTrait::Stitchable<mlir::mps::ACoshOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ACoshOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ACoshOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps::ACoshOp>::getEffects;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::ACoshOp>::isCompatibleReturnTypes;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(0x18uLL);
  v7 = v6;
  *v6 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ACoshOp>::inferReturnTypes;
  v6[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ACoshOp>::refineReturnTypes;
  v6[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ACoshOp>::isCompatibleReturnTypes;
  {
    v11 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::ACoshOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v7[0] = &unk_1F5B24C20;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_1F5B24C20;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ACoshOp>::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v14[0] = a4;
  v14[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (*(a11 + 12))
      {
        v12 = 0;
LABEL_6:
        bzero((*a11 + 8 * v12), 8 - 8 * v12);
        goto LABEL_7;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, 1uLL, 8);
      v12 = *(a11 + 8);
      if (v12 != 1)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    *(a11 + 8) = 1;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ACoshOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v7[0] = &unk_1F5B24C20;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_1F5B24C20;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mps::ACoshOp>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28 = *MEMORY[0x1E69E9840];
  v21[0] = v22;
  v21[1] = 0x400000001;
  v25 = a4;
  v26 = a5;
  v22[0] = 0;
  v22[0] = *(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ValueRange::ValueRange(v20, v22, 1uLL);
  mlir::ValueRange::ValueRange(v19, *a11, *(a11 + 8));
  v23[0] = &unk_1F5B24C20;
  v24 = v23;
  v27 = &v25;
  v25 = &unk_1F5B24C20;
  if (v27 == &v25)
  {
    (*(*v27 + 4))(v27);
    v14 = v24;
    if (v24 != v23)
    {
      goto LABEL_5;
    }

LABEL_11:
    (*(*v14 + 32))(v14);
    if (v13)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  if (v27)
  {
    (*(*v27 + 5))(v27);
  }

  v14 = v24;
  if (v24 == v23)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (v14)
  {
    (*(*v14 + 40))(v14);
  }

  if (v13)
  {
LABEL_8:
    v15 = 1;
    v16 = v21[0];
    if (v21[0] == v22)
    {
      return v15;
    }

    goto LABEL_13;
  }

LABEL_12:
  v25 = "mps.acosh";
  v26 = 9;
  v17.var0.var0 = a3;
  v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v17, "'", &v25, "' op inferred type(s) ", v21, " are incompatible with return type(s) of operation ", a11);
  v16 = v21[0];
  if (v21[0] != v22)
  {
LABEL_13:
    free(v16);
  }

  return v15;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ASinOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::ASinOp>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ASinOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::ASinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::ASinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::ASinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::ASinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::mps::ASinOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::ASinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::ASinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::ASinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::ASinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ASinOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::ASinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::ASinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::ASinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::ASinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ASinOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mps::ASinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ASinOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mps::ASinOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps::ASinOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ASinOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ASinOp>,mlir::OpTrait::OneResult<mlir::mps::ASinOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ASinOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ASinOp>,mlir::OpTrait::OneOperand<mlir::mps::ASinOp>,mlir::OpTrait::OpInvariants<mlir::mps::ASinOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ASinOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ASinOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ASinOp>,mlir::OpTrait::Stitchable<mlir::mps::ASinOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ASinOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ASinOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps::ASinOp>::getEffects;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::ASinOp>::isCompatibleReturnTypes;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(0x18uLL);
  v7 = v6;
  *v6 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ASinOp>::inferReturnTypes;
  v6[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ASinOp>::refineReturnTypes;
  v6[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ASinOp>::isCompatibleReturnTypes;
  {
    v11 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::ASinOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v7[0] = &unk_1F5B24C20;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_1F5B24C20;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ASinOp>::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v14[0] = a4;
  v14[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (*(a11 + 12))
      {
        v12 = 0;
LABEL_6:
        bzero((*a11 + 8 * v12), 8 - 8 * v12);
        goto LABEL_7;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, 1uLL, 8);
      v12 = *(a11 + 8);
      if (v12 != 1)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    *(a11 + 8) = 1;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ASinOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v7[0] = &unk_1F5B24C20;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_1F5B24C20;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mps::ASinOp>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28 = *MEMORY[0x1E69E9840];
  v21[0] = v22;
  v21[1] = 0x400000001;
  v25 = a4;
  v26 = a5;
  v22[0] = 0;
  v22[0] = *(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ValueRange::ValueRange(v20, v22, 1uLL);
  mlir::ValueRange::ValueRange(v19, *a11, *(a11 + 8));
  v23[0] = &unk_1F5B24C20;
  v24 = v23;
  v27 = &v25;
  v25 = &unk_1F5B24C20;
  if (v27 == &v25)
  {
    (*(*v27 + 4))(v27);
    v14 = v24;
    if (v24 != v23)
    {
      goto LABEL_5;
    }

LABEL_11:
    (*(*v14 + 32))(v14);
    if (v13)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  if (v27)
  {
    (*(*v27 + 5))(v27);
  }

  v14 = v24;
  if (v24 == v23)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (v14)
  {
    (*(*v14 + 40))(v14);
  }

  if (v13)
  {
LABEL_8:
    v15 = 1;
    v16 = v21[0];
    if (v21[0] == v22)
    {
      return v15;
    }

    goto LABEL_13;
  }

LABEL_12:
  v25 = "mps.asin";
  v26 = 8;
  v17.var0.var0 = a3;
  v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v17, "'", &v25, "' op inferred type(s) ", v21, " are incompatible with return type(s) of operation ", a11);
  v16 = v21[0];
  if (v21[0] != v22)
  {
LABEL_13:
    free(v16);
  }

  return v15;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ASinhOp>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::ASinhOp>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ASinhOp>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::ASinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::ASinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::ASinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::ASinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::mps::ASinhOp>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::ASinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::ASinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::ASinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::ASinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ASinhOp>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::ASinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::ASinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::ASinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::ASinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ASinhOp>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mps::ASinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyInvariants;
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ASinhOp>::verifyRegionInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mps::ASinhOp,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::OneOperand,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::SameOperandsAndResultType,mlir::OpTrait::Stitchable,mlir::CompatibleReturnTypesInterface::Trait,mlir::InferTypeOpInterface::Trait>::verifyRegionInvariants;
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

void mlir::RegisteredOperationName::Model<mlir::mps::ASinhOp>::setInherentAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ASinhOp>::setPropertiesFromAttr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *__return_ptr, uint64_t), uint64_t a6)
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

void mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::mps::ASinhOp>,mlir::OpTrait::OneResult<mlir::mps::ASinhOp>,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl<mlir::mps::ASinhOp>,mlir::OpTrait::ZeroSuccessors<mlir::mps::ASinhOp>,mlir::OpTrait::OneOperand<mlir::mps::ASinhOp>,mlir::OpTrait::OpInvariants<mlir::mps::ASinhOp>,mlir::MemoryEffectOpInterface::Trait<mlir::mps::ASinhOp>,mlir::OpTrait::SameOperandsAndResultElementType<mlir::mps::ASinhOp>,mlir::OpTrait::SameOperandsAndResultType<mlir::mps::ASinhOp>,mlir::OpTrait::Stitchable<mlir::mps::ASinhOp>,mlir::CompatibleReturnTypesInterface::Trait<mlir::mps::ASinhOp>,mlir::InferTypeOpInterface::Trait<mlir::mps::ASinhOp>>(void *a1@<X8>)
{
  *a1 = a1 + 2;
  a1[1] = 0x300000000;
  v2 = malloc(8uLL);
  v3 = v2;
  *v2 = mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::mps::ASinhOp>::getEffects;
  {
    v9 = v2;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::complex::AbsOp>,mlir::OpTrait::OneResult<mlir::complex::AbsOp>,mlir::OpTrait::OneTypedResult<mlir::FloatType>::Impl<mlir::complex::AbsOp>,mlir::OpTrait::ZeroSuccessors<mlir::complex::AbsOp>,mlir::OpTrait::OneOperand<mlir::complex::AbsOp>,mlir::OpTrait::OpInvariants<mlir::complex::AbsOp>,mlir::BytecodeOpInterface::Trait<mlir::complex::AbsOp>,mlir::ConditionallySpeculatable::Trait<mlir::complex::AbsOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::complex::AbsOp>,mlir::MemoryEffectOpInterface::Trait<mlir::complex::AbsOp>,mlir::OpTrait::Elementwise<mlir::complex::AbsOp>,mlir::arith::ArithFastMathInterface::Trait<mlir::complex::AbsOp>,mlir::InferTypeOpInterface::Trait<mlir::complex::AbsOp>>();
    v3 = v9;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::MemoryEffectOpInterface,void>::resolveTypeID(void)::id, v3);
  v4 = malloc(8uLL);
  v5 = v4;
  *v4 = mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::ASinhOp>::isCompatibleReturnTypes;
  {
    v10 = v4;
    mlir::detail::InterfaceMap::insertModel<mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mpsx::BufferToTensorOp>>();
    v5 = v10;
  }

  mlir::detail::InterfaceMap::insert(a1, mlir::detail::TypeIDResolver<mlir::CompatibleReturnTypesInterface,void>::resolveTypeID(void)::id, v5);
  v6 = malloc(0x18uLL);
  v7 = v6;
  *v6 = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ASinhOp>::inferReturnTypes;
  v6[1] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ASinhOp>::refineReturnTypes;
  v6[2] = mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ASinhOp>::isCompatibleReturnTypes;
  {
    v11 = v6;
    mlir::detail::InterfaceMap::get<mlir::OpTrait::ZeroRegions<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneResult<mlir::affine::AffineApplyOp>,mlir::OpTrait::OneTypedResult<mlir::IndexType>::Impl<mlir::affine::AffineApplyOp>,mlir::OpTrait::ZeroSuccessors<mlir::affine::AffineApplyOp>,mlir::OpTrait::VariadicOperands<mlir::affine::AffineApplyOp>,mlir::OpTrait::OpInvariants<mlir::affine::AffineApplyOp>,mlir::BytecodeOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::ConditionallySpeculatable::Trait<mlir::affine::AffineApplyOp>,mlir::OpTrait::AlwaysSpeculatableImplTrait<mlir::affine::AffineApplyOp>,mlir::MemoryEffectOpInterface::Trait<mlir::affine::AffineApplyOp>,mlir::InferTypeOpInterface::Trait<mlir::affine::AffineApplyOp>>();
    v7 = v11;
  }

  v8 = mlir::detail::TypeIDResolver<mlir::InferTypeOpInterface,void>::resolveTypeID(void)::id;

  mlir::detail::InterfaceMap::insert(a1, v8, v7);
}

uint64_t mlir::detail::CompatibleReturnTypesInterfaceInterfaceTraits::Model<mlir::mps::ASinhOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v7[0] = &unk_1F5B24C20;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_1F5B24C20;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ASinhOp>::inferReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v14[0] = a4;
  v14[1] = a5;
  v11 = *(a11 + 8);
  if (v11 != 1)
  {
    if (!v11)
    {
      if (*(a11 + 12))
      {
        v12 = 0;
LABEL_6:
        bzero((*a11 + 8 * v12), 8 - 8 * v12);
        goto LABEL_7;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(a11, a11 + 16, 1uLL, 8);
      v12 = *(a11 + 8);
      if (v12 != 1)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    *(a11 + 8) = 1;
  }

  **a11 = *(mlir::ValueRange::dereference_iterator(v14, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

uint64_t mlir::detail::InferTypeOpInterfaceInterfaceTraits::Model<mlir::mps::ASinhOp>::isCompatibleReturnTypes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v7[0] = &unk_1F5B24C20;
  v10 = v9;
  v8 = v7;
  v9[0] = &unk_1F5B24C20;
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    v5 = v8;
    if (v8 != v7)
    {
      goto LABEL_5;
    }

LABEL_8:
    (*(*v5 + 32))(v5);
    return v4;
  }

  (*(*v10 + 32))(v10);
  v5 = v8;
  if (v8 == v7)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return v4;
}

BOOL mlir::detail::InferTypeOpInterfaceTrait<mlir::mps::ASinhOp>::refineReturnTypes(uint64_t a1, mlir *a2, AttributeStorage *a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28 = *MEMORY[0x1E69E9840];
  v21[0] = v22;
  v21[1] = 0x400000001;
  v25 = a4;
  v26 = a5;
  v22[0] = 0;
  v22[0] = *(mlir::ValueRange::dereference_iterator(&v25, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
  mlir::ValueRange::ValueRange(v20, v22, 1uLL);
  mlir::ValueRange::ValueRange(v19, *a11, *(a11 + 8));
  v23[0] = &unk_1F5B24C20;
  v24 = v23;
  v27 = &v25;
  v25 = &unk_1F5B24C20;
  if (v27 == &v25)
  {
    (*(*v27 + 4))(v27);
    v14 = v24;
    if (v24 != v23)
    {
      goto LABEL_5;
    }

LABEL_11:
    (*(*v14 + 32))(v14);
    if (v13)
    {
      goto LABEL_8;
    }

    goto LABEL_12;
  }

  if (v27)
  {
    (*(*v27 + 5))(v27);
  }

  v14 = v24;
  if (v24 == v23)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (v14)
  {
    (*(*v14 + 40))(v14);
  }

  if (v13)
  {
LABEL_8:
    v15 = 1;
    v16 = v21[0];
    if (v21[0] == v22)
    {
      return v15;
    }

    goto LABEL_13;
  }

LABEL_12:
  v25 = "mps.asinh";
  v26 = 9;
  v17.var0.var0 = a3;
  v15 = mlir::emitOptionalError<char const(&)[2],llvm::StringLiteral,char const(&)[23],llvm::SmallVector<mlir::Type,4u> &,char const(&)[52],llvm::SmallVectorImpl<mlir::Type> &>(a2, v17, "'", &v25, "' op inferred type(s) ", v21, " are incompatible with return type(s) of operation ", a11);
  v16 = v21[0];
  if (v21[0] != v22)
  {
LABEL_13:
    free(v16);
  }

  return v15;
}

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ATan2Op>::~Model(uint64_t a1)
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

void mlir::RegisteredOperationName::Model<mlir::mps::ATan2Op>::~Model(void *__p)
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ATan2Op>::foldHook(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::ATan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::ATan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<llvm::LogicalResult,mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &>::CallbacksHolder<mlir::Op<mlir::mps::ATan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1},mlir::Op<mlir::mps::ATan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getFoldHookFn(void)::{lambda(mlir::Operation *,llvm::ArrayRef<mlir::Attribute>,llvm::SmallVectorImpl<mlir::OpFoldResult> &)#1} const,void>::Callbacks[0])(v13, a2, a3, a4, a5);
  v10 = v14;
  if (v14 >= 8)
  {
    if ((v14 & 4) != 0)
    {
      v11 = v13[0];
      if ((v14 & 2) != 0)
      {
        v11 = v13;
      }

      v12 = result;
      (*((v14 & 0xFFFFFFFFFFFFFFF8) + 16))(v11, v6, v7, v8, v9);
      result = v12;
    }

    if ((v10 & 2) == 0)
    {
      llvm::deallocate_buffer(v13[0], v13[1]);
    }
  }

  return result;
}

BOOL mlir::RegisteredOperationName::Model<mlir::mps::ATan2Op>::hasTrait(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::ATan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::ATan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<BOOL,mlir::TypeID>::CallbacksHolder<mlir::Op<mlir::mps::ATan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1},mlir::Op<mlir::mps::ATan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getHasTraitFn(void)::{lambda(mlir::TypeID)#1} const,void>::Callbacks[0])(v10, a2);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ATan2Op>::printAssembly(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::ATan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::ATan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks + 2;
  result = (llvm::detail::UniqueFunctionBase<void,mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef>::CallbacksHolder<mlir::Op<mlir::mps::ATan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1},mlir::Op<mlir::mps::ATan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::getPrintAssemblyFn(void)::{lambda(mlir::Operation *,mlir::OpAsmPrinter &,llvm::StringRef)#1} const,void>::Callbacks[0])(v9, a2, a3, a4, a5);
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

uint64_t mlir::RegisteredOperationName::Model<mlir::mps::ATan2Op>::verifyInvariants(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7[0] = mlir::Op<mlir::mps::ATan2Op,mlir::OpTrait::ZeroRegions,mlir::OpTrait::OneResult,mlir::OpTrait::OneTypedResult<mlir::Type>::Impl,mlir::OpTrait::ZeroSuccessors,mlir::OpTrait::NOperands<2u>::Impl,mlir::OpTrait::OpInvariants,mlir::MemoryEffectOpInterface::Trait,mlir::OpTrait::SameOperandsAndResultElementType,mlir::OpTrait::ResultsBroadcastableShape,mlir::OpTrait::Stitchable,mlir::InferTypeOpInterface::Trait,mlir::CompatibleReturnTypesInterface::Trait>::verifyInvariants;
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