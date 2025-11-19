void mlir::mps::MPSDialect::printAttribute(uint64_t a1, uint64_t a2, mlir::AsmPrinter *a3)
{
  v4 = *(*a2 + 136);
  if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
  {
    v53 = a2;
    v7 = (*(*a3 + 16))(a3);
    v8 = v7[4];
    if ((v7[3] - v8) > 0x11)
    {
      *(v8 + 16) = 29813;
      *v8 = *"tensor_data_layout";
      v7[4] += 18;
    }

    else
    {
      llvm::raw_ostream::write(v7, "tensor_data_layout", 0x12uLL);
    }

    mlir::mps::TensorDataLayoutAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::ReductionModeAttr,void>::id)
  {
    v53 = a2;
    v9 = (*(*a3 + 16))(a3);
    v10 = v9[4];
    if (v9[3] - v10 > 0xDuLL)
    {
      qmemcpy(v10, "reduction_mode", 14);
      v9[4] += 14;
    }

    else
    {
      llvm::raw_ostream::write(v9, "reduction_mode", 0xEuLL);
    }

    mlir::mps::ReductionModeAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::DeviceHintAttr,void>::id)
  {
    v53 = a2;
    v11 = (*(*a3 + 16))(a3);
    v12 = v11[4];
    if ((v11[3] - v12) > 0xA)
    {
      *(v12 + 7) = 1953393000;
      *v12 = *"device_hint";
      v11[4] += 11;
    }

    else
    {
      llvm::raw_ostream::write(v11, "device_hint", 0xBuLL);
    }

    mlir::mps::DeviceHintAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::ScatterModeAttr,void>::id)
  {
    v53 = a2;
    v13 = (*(*a3 + 16))(a3);
    v14 = v13[4];
    if ((v13[3] - v14) > 0xB)
    {
      *(v14 + 8) = 1701080941;
      *v14 = *"scatter_mode";
      v13[4] += 12;
    }

    else
    {
      llvm::raw_ostream::write(v13, "scatter_mode", 0xCuLL);
    }

    mlir::mps::ScatterModeAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::PaddingModeAttr,void>::id)
  {
    v53 = a2;
    v15 = (*(*a3 + 16))(a3);
    v16 = v15[4];
    if ((v15[3] - v16) > 0xB)
    {
      *(v16 + 8) = 1701080941;
      *v16 = *"padding_mode";
      v15[4] += 12;
    }

    else
    {
      llvm::raw_ostream::write(v15, "padding_mode", 0xCuLL);
    }

    mlir::mps::PaddingModeAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::SamplingModeAttr,void>::id)
  {
    v53 = a2;
    v17 = (*(*a3 + 16))(a3);
    v18 = v17[4];
    if (v17[3] - v18 > 0xCuLL)
    {
      qmemcpy(v18, "sampling_mode", 13);
      v17[4] += 13;
    }

    else
    {
      llvm::raw_ostream::write(v17, "sampling_mode", 0xDuLL);
    }

    mlir::mps::SamplingModeAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::NearestRoundingModeAttr,void>::id)
  {
    v53 = a2;
    v19 = (*(*a3 + 16))(a3);
    v20 = v19[4];
    if (v19[3] - v20 > 0x14uLL)
    {
      qmemcpy(v20, "nearest_rounding_mode", 21);
      v19[4] += 21;
    }

    else
    {
      llvm::raw_ostream::write(v19, "nearest_rounding_mode", 0x15uLL);
    }

    mlir::mps::NearestRoundingModeAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::SparseTensorStorageAttr,void>::id)
  {
    v53 = a2;
    v21 = (*(*a3 + 16))(a3);
    v22 = v21[4];
    if (v21[3] - v22 > 0x14uLL)
    {
      qmemcpy(v22, "sparse_tensor_storage", 21);
      v21[4] += 21;
    }

    else
    {
      llvm::raw_ostream::write(v21, "sparse_tensor_storage", 0x15uLL);
    }

    mlir::mps::SparseTensorStorageAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::MetalPixelFormatAttr,void>::id)
  {
    v53 = a2;
    v23 = (*(*a3 + 16))(a3);
    v24 = v23[4];
    if (v23[3] - v24 > 0x1AuLL)
    {
      qmemcpy(v24, "texture_tensor_pixel_format", 27);
      v23[4] += 27;
    }

    else
    {
      llvm::raw_ostream::write(v23, "texture_tensor_pixel_format", 0x1BuLL);
    }

    mlir::mps::MetalPixelFormatAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::NormalSamplingMethodAttr,void>::id)
  {
    v53 = a2;
    v25 = (*(*a3 + 16))(a3);
    v26 = v25[4];
    if (v25[3] - v26 > 0x1CuLL)
    {
      qmemcpy(v26, "random_normal_sampling_method", 29);
      v25[4] += 29;
    }

    else
    {
      llvm::raw_ostream::write(v25, "random_normal_sampling_method", 0x1DuLL);
    }

    mlir::mps::NormalSamplingMethodAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::PaddingStyleAttr,void>::id)
  {
    v53 = a2;
    v27 = (*(*a3 + 16))(a3);
    v28 = v27[4];
    if (v27[3] - v28 > 0xCuLL)
    {
      qmemcpy(v28, "padding_style", 13);
      v27[4] += 13;
    }

    else
    {
      llvm::raw_ostream::write(v27, "padding_style", 0xDuLL);
    }

    mlir::mps::PaddingStyleAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::PoolIndicesModeAttr,void>::id)
  {
    v53 = a2;
    v29 = (*(*a3 + 16))(a3);
    v30 = v29[4];
    if ((v29[3] - v30) > 0x13)
    {
      *(v30 + 16) = 1701080941;
      *v30 = *"pooling_indices_mode";
      v29[4] += 20;
    }

    else
    {
      llvm::raw_ostream::write(v29, "pooling_indices_mode", 0x14uLL);
    }

    mlir::mps::PoolIndicesModeAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::RNNActivationAttr,void>::id)
  {
    v53 = a2;
    v31 = (*(*a3 + 16))(a3);
    v32 = v31[4];
    if (v31[3] - v32 > 0xDuLL)
    {
      qmemcpy(v32, "rnn_activation", 14);
      v31[4] += 14;
    }

    else
    {
      llvm::raw_ostream::write(v31, "rnn_activation", 0xEuLL);
    }

    mlir::mps::RNNActivationAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::LSTMGateLayoutAttr,void>::id)
  {
    v53 = a2;
    v33 = (*(*a3 + 16))(a3);
    v34 = v33[4];
    if (v33[3] - v34 > 0xFuLL)
    {
      *v34 = *"lstm_gate_layout";
      v33[4] += 16;
    }

    else
    {
      llvm::raw_ostream::write(v33, "lstm_gate_layout", 0x10uLL);
    }

    mlir::mps::LSTMGateLayoutAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::GRUGateLayoutAttr,void>::id)
  {
    v53 = a2;
    v35 = (*(*a3 + 16))(a3);
    v36 = v35[4];
    if (v35[3] - v36 > 0xEuLL)
    {
      qmemcpy(v36, "gru_gate_layout", 15);
      v35[4] += 15;
    }

    else
    {
      llvm::raw_ostream::write(v35, "gru_gate_layout", 0xFuLL);
    }

    mlir::mps::GRUGateLayoutAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::StencilPaddingModeAttr,void>::id)
  {
    v53 = a2;
    v37 = (*(*a3 + 16))(a3);
    v38 = v37[4];
    if ((v37[3] - v38) > 0x13)
    {
      *(v38 + 16) = 1701080941;
      *v38 = *"stencil_padding_mode";
      v37[4] += 20;
    }

    else
    {
      llvm::raw_ostream::write(v37, "stencil_padding_mode", 0x14uLL);
    }

    mlir::mps::StencilPaddingModeAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::CropResizeAlignmentModeAttr,void>::id)
  {
    v53 = a2;
    v39 = (*(*a3 + 16))(a3);
    v40 = v39[4];
    if (v39[3] - v40 > 0x19uLL)
    {
      qmemcpy(v40, "crop_resize_alignment_mode", 26);
      v39[4] += 26;
    }

    else
    {
      llvm::raw_ostream::write(v39, "crop_resize_alignment_mode", 0x1AuLL);
    }

    mlir::mps::CropResizeAlignmentModeAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::CropResizeCoordinateModeAttr,void>::id)
  {
    v53 = a2;
    v41 = (*(*a3 + 16))(a3);
    v42 = v41[4];
    if (v41[3] - v42 > 0x1AuLL)
    {
      qmemcpy(v42, "crop_resize_coordinate_mode", 27);
      v41[4] += 27;
    }

    else
    {
      llvm::raw_ostream::write(v41, "crop_resize_coordinate_mode", 0x1BuLL);
    }

    mlir::mps::CropResizeCoordinateModeAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::PruningMetricAttr,void>::id)
  {
    v53 = a2;
    v43 = (*(*a3 + 16))(a3);
    v44 = v43[4];
    if (v43[3] - v44 > 0xDuLL)
    {
      qmemcpy(v44, "pruning_metric", 14);
      v43[4] += 14;
    }

    else
    {
      llvm::raw_ostream::write(v43, "pruning_metric", 0xEuLL);
    }

    mlir::mps::PruningMetricAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::PruningStructureAttr,void>::id)
  {
    v53 = a2;
    v45 = (*(*a3 + 16))(a3);
    v46 = v45[4];
    if ((v45[3] - v46) > 0x10)
    {
      *(v46 + 16) = 101;
      *v46 = *"pruning_structure";
      v45[4] += 17;
    }

    else
    {
      llvm::raw_ostream::write(v45, "pruning_structure", 0x11uLL);
    }

    mlir::mps::PruningStructureAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::SimilarityTypeAttr,void>::id)
  {
    v53 = a2;
    v47 = (*(*a3 + 16))(a3);
    v48 = v47[4];
    if (v47[3] - v48 > 0xEuLL)
    {
      qmemcpy(v48, "similarity_type", 15);
      v47[4] += 15;
    }

    else
    {
      llvm::raw_ostream::write(v47, "similarity_type", 0xFuLL);
    }

    mlir::mps::SimilarityTypeAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::FFTScalingModeAttr,void>::id)
  {
    v53 = a2;
    v49 = (*(*a3 + 16))(a3);
    v50 = v49[4];
    if (v49[3] - v50 > 0xFuLL)
    {
      *v50 = *"fft_scaling_mode";
      v49[4] += 16;
    }

    else
    {
      llvm::raw_ostream::write(v49, "fft_scaling_mode", 0x10uLL);
    }

    mlir::mps::FFTScalingModeAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::MPSBufferTensorAttr,void>::id)
  {
    v53 = a2;
    v51 = (*(*a3 + 16))(a3);
    v52 = v51[4];
    if (v51[3] - v52 > 0xCuLL)
    {
      qmemcpy(v52, "buffer_tensor", 13);
      v51[4] += 13;
    }

    else
    {
      llvm::raw_ostream::write(v51, "buffer_tensor", 0xDuLL);
    }

    mlir::mps::MPSBufferTensorAttr::print(&v53, a3);
  }

  else if (v4 == &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id)
  {
    v53 = a2;
    v5 = (*(*a3 + 16))(a3);
    v6 = v5[4];
    if (v5[3] - v6 > 0xFuLL)
    {
      *v6 = *"call_inline_mode";
      v5[4] += 16;
    }

    else
    {
      llvm::raw_ostream::write(v5, "call_inline_mode", 0x10uLL);
    }

    mlir::mps::CallInlineModeAttr::print(&v53, a3);
  }
}

void mlir::mps::ACosOp::build(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = a3;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  __src = v16;
  v15 = 0x200000000;
  mlir::ValueRange::ValueRange(&v13, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v12, *(a2 + 224), *(a2 + 232));
  v17 = v13;
  if (v15 != 1)
  {
    if (!v15)
    {
      if (HIDWORD(v15))
      {
        v5 = 0;
LABEL_6:
        bzero(__src + 8 * v5, 8 - 8 * v5);
        goto LABEL_7;
      }

      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v16, 1uLL, 8);
      v5 = v15;
      if (v15 != 1)
      {
        goto LABEL_6;
      }
    }

LABEL_7:
    LODWORD(v15) = 1;
  }

  v6 = mlir::ValueRange::dereference_iterator(&v17, 0);
  v7 = __src;
  *__src = *(v6 + 8) & 0xFFFFFFFFFFFFFFF8;
  v8 = v15;
  v9 = *(a2 + 72);
  v10 = v9 + v15;
  if (v10 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v10, 8);
    LODWORD(v9) = *(a2 + 72);
  }

  if (v8)
  {
    memcpy((*(a2 + 64) + 8 * v9), v7, 8 * v8);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + v8;
  if (__src != v16)
  {
    free(__src);
  }
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v94 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_34;
  }

  {
    v73 = a1;
    v21 = v9;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    a1 = v73;
    v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v13 = *(v21 + 8);
    v14 = *(v21 + 16);
    if (v14)
    {
      goto LABEL_8;
    }

LABEL_18:
    v22 = a1;
    v23 = 0;
    goto LABEL_20;
  }

  v12 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v13 = *(v9 + 8);
  v14 = *(v9 + 16);
  if (!v14)
  {
    goto LABEL_18;
  }

LABEL_8:
  v15 = v13;
  v16 = v14;
  do
  {
    v17 = v16 >> 1;
    v18 = &v15[2 * (v16 >> 1)];
    v20 = *v18;
    v19 = v18 + 2;
    v16 += ~(v16 >> 1);
    if (v20 < v12)
    {
      v15 = v19;
    }

    else
    {
      v16 = v17;
    }
  }

  while (v16);
  if (v15 == &v13[2 * v14] || *v15 != v12)
  {
    goto LABEL_18;
  }

  v22 = a1;
  v23 = v15[1];
LABEL_20:
  v83[0] = a2;
  v83[1] = v23;
  isSplat = mlir::ElementsAttr::isSplat(v83);
  if (mlir::Type::isSignlessInteger(&isSplat, 1) || mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64) || mlir::Type::isF16(&isSplat) || mlir::Type::isF32(&isSplat) || mlir::Type::isBF16(&isSplat) || *(*isSplat + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

  v9 = *a2;
  v10 = *(*a2 + 136);
  a1 = v22;
LABEL_34:
  if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_55;
  }

  {
    v34 = a1;
    v35 = v9;
    mlir::arith::ExtUIOp::fold();
    a1 = v34;
    v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v26 = *(v35 + 8);
    v27 = *(v35 + 16);
    if (v27)
    {
      goto LABEL_41;
    }

LABEL_51:
    v36 = a1;
    v37 = 0;
    goto LABEL_53;
  }

  v25 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v26 = *(v9 + 8);
  v27 = *(v9 + 16);
  if (!v27)
  {
    goto LABEL_51;
  }

LABEL_41:
  v28 = v26;
  v29 = v27;
  do
  {
    v30 = v29 >> 1;
    v31 = &v28[2 * (v29 >> 1)];
    v33 = *v31;
    v32 = v31 + 2;
    v29 += ~(v29 >> 1);
    if (v33 < v25)
    {
      v28 = v32;
    }

    else
    {
      v29 = v30;
    }
  }

  while (v29);
  if (v28 == &v26[2 * v27] || *v28 != v25)
  {
    goto LABEL_51;
  }

  v36 = a1;
  v37 = v28[1];
LABEL_53:
  v74 = a2;
  v75 = v37;
  v38 = mlir::ElementsAttr::isSplat(&v74);
  if (*(*v38 + 136) == &mlir::detail::TypeIDResolver<mlir::ComplexType,void>::id)
  {
    v66 = v38;
    v79 = v38;
    isSplat = mlir::AffineMapAttr::getValue(&v79);
    if (!mlir::Type::isF16(&isSplat))
    {
      v77 = v66;
      Value = mlir::AffineMapAttr::getValue(&v77);
      isF32 = mlir::Type::isF32(&Value);
      a1 = v36;
      if (!isF32)
      {
        goto LABEL_55;
      }
    }

    return 1;
  }

  a1 = v36;
LABEL_55:
  v76 = 261;
  v74 = a3;
  v75 = a4;
  mlir::Operation::emitOpError(a1, &v74, v83);
  if (v83[0])
  {
    LODWORD(isSplat) = 3;
    v81 = " #";
    v82 = 2;
    p_isSplat = &isSplat;
    v40 = v84;
    if (v85 >= v86)
    {
      if (v84 <= &isSplat && v84 + 24 * v85 > &isSplat)
      {
        v69 = &isSplat - v84;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
        v40 = v84;
        p_isSplat = (v84 + v69);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
        p_isSplat = &isSplat;
        v40 = v84;
      }
    }

    v41 = &v40[24 * v85];
    v42 = *p_isSplat;
    *(v41 + 2) = p_isSplat[2];
    *v41 = v42;
    v43 = ++v85;
    if (v83[0])
    {
      LODWORD(isSplat) = 5;
      v81 = a5;
      v44 = &isSplat;
      v45 = v84;
      if (v43 >= v86)
      {
        if (v84 <= &isSplat && v84 + 24 * v43 > &isSplat)
        {
          v70 = &isSplat - v84;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v43 + 1, 24);
          v45 = v84;
          v44 = (v84 + v70);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v43 + 1, 24);
          v44 = &isSplat;
          v45 = v84;
        }
      }

      v46 = &v45[24 * v85];
      v47 = *v44;
      *(v46 + 2) = v44[2];
      *v46 = v47;
      v48 = ++v85;
      if (v83[0])
      {
        LODWORD(isSplat) = 3;
        v81 = " must be tensor of mps native type values or tensor of complex values, but got ";
        v82 = 79;
        v49 = &isSplat;
        v50 = v84;
        if (v48 >= v86)
        {
          if (v84 <= &isSplat && v84 + 24 * v48 > &isSplat)
          {
            v71 = &isSplat - v84;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v48 + 1, 24);
            v50 = v84;
            v49 = (v84 + v71);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v48 + 1, 24);
            v49 = &isSplat;
            v50 = v84;
          }
        }

        v51 = &v50[24 * v85];
        v52 = *v49;
        *(v51 + 2) = v49[2];
        *v51 = v52;
        ++v85;
        if (v83[0])
        {
          v53 = &isSplat;
          mlir::DiagnosticArgument::DiagnosticArgument(&isSplat, a2);
          v54 = v84;
          if (v85 >= v86)
          {
            if (v84 <= &isSplat && v84 + 24 * v85 > &isSplat)
            {
              v72 = &isSplat - v84;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v54 = v84;
              v53 = (v84 + v72);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v84, v87, v85 + 1, 24);
              v53 = &isSplat;
              v54 = v84;
            }
          }

          v55 = &v54[24 * v85];
          v56 = *v53;
          *(v55 + 2) = v53[2];
          *v55 = v56;
          ++v85;
        }
      }
    }
  }

  v57 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v83);
  if (v83[0])
  {
    mlir::InFlightDiagnostic::report(v83);
  }

  if (v93 == 1)
  {
    if (v92 != &v93)
    {
      free(v92);
    }

    v58 = __p;
    if (__p)
    {
      v59 = v91;
      v60 = __p;
      if (v91 != __p)
      {
        do
        {
          v59 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v59 - 1);
        }

        while (v59 != v58);
        v60 = __p;
      }

      v91 = v58;
      operator delete(v60);
    }

    v61 = v88;
    if (v88)
    {
      v62 = v89;
      v63 = v88;
      if (v89 != v88)
      {
        do
        {
          v65 = *--v62;
          v64 = v65;
          *v62 = 0;
          if (v65)
          {
            operator delete[](v64);
          }
        }

        while (v62 != v61);
        v63 = v88;
      }

      v89 = v61;
      operator delete(v63);
    }

    if (v84 != v87)
    {
      free(v84);
    }
  }

  return v57;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::ACosOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.acos", 8, a3, v10, a4, a5);
  *v11 = &unk_1F5B25120;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::ACoshOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.acosh", 9, a3, v10, a4, a5);
  *v11 = &unk_1F5B251C0;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::ASinOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.asin", 8, a3, v10, a4, a5);
  *v11 = &unk_1F5B25260;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::ASinhOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.asinh", 9, a3, v10, a4, a5);
  *v11 = &unk_1F5B25300;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

void mlir::mps::ATan2Op::build(mlir::Float32Type **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v12 = a4;
  v13 = a3;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  __src = v18;
  v17 = 0x200000000;
  v6 = *a1;
  mlir::ValueRange::ValueRange(v15, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v14, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v8 = __src;
  v9 = v17;
  v10 = *(a2 + 72);
  v11 = v10 + v17;
  if (v11 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11, 8);
    LODWORD(v10) = *(a2 + 72);
  }

  if (v9)
  {
    memcpy((*(a2 + 64) + 8 * v10), v8, 8 * v9);
    LODWORD(v10) = *(a2 + 72);
  }

  *(a2 + 72) = v10 + v9;
  if (__src != v18)
  {
    free(__src);
  }
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::ATan2Op>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.atan2", 9, a3, v10, a4, a5);
  *v11 = &unk_1F5B253A0;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::ATanOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.atan", 8, a3, v10, a4, a5);
  *v11 = &unk_1F5B25440;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::ATanhOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.atanh", 9, a3, v10, a4, a5);
  *v11 = &unk_1F5B254E0;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::AbsoluteOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.absolute", 12, a3, v10, a4, a5);
  *v11 = &unk_1F5B25580;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::AbsoluteSquareOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.absolute_square", 19, a3, v10, a4, a5);
  *v11 = &unk_1F5B25620;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

void mlir::mps::AddOp::build(mlir::Float32Type **a1, uint64_t a2, mlir::MLIRContext *a3, unint64_t a4, const void *a5, uint64_t a6)
{
  v22[2] = *MEMORY[0x1E69E9840];
  mlir::OperationState::addOperands(a2, a3, a4);
  *(a2 + 192) = 0;
  v12 = *(a2 + 120);
  if (a6 + v12 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, a6 + v12, 16);
    LODWORD(v12) = *(a2 + 120);
  }

  if (a6)
  {
    memcpy((*(a2 + 112) + 16 * v12), a5, 16 * a6);
    LODWORD(v12) = *(a2 + 120);
  }

  *(a2 + 120) = v12 + a6;
  __src = v22;
  v21 = 0x200000000;
  v13 = *a1;
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v19, *(a2 + 224), *(a2 + 232));
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v15 = __src;
  v16 = v21;
  v17 = *(a2 + 72);
  v18 = v17 + v21;
  if (v18 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v18, 8);
    LODWORD(v17) = *(a2 + 72);
  }

  if (v16)
  {
    memcpy((*(a2 + 64) + 8 * v17), v15, 8 * v16);
    LODWORD(v17) = *(a2 + 72);
  }

  *(a2 + 72) = v17 + v16;
  if (__src != v22)
  {
    free(__src);
  }
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::AddOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.add", 7, a3, v10, a4, a5);
  *v11 = &unk_1F5B256C0;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::AndOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.and", 7, a3, v10, a4, a5);
  *v11 = &unk_1F5B25760;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

void mlir::mps::AssignVariableOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  mlir::OperationState::addOperands(a2, &v6, 1uLL);
  mlir::OperationState::addOperands(a2, &v5, 1uLL);
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::AssignVariableOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.assign_variable", 19, a3, v10, a4, a5);
  *v11 = &unk_1F5B25800;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

void mlir::mps::AssignVariableOp::getEffects(uint64_t a1, uint64_t a2)
{
  {
    v6 = a2;
    mlir::detail::MemoryEffectOpInterfaceInterfaceTraits::Model<mlir::cf::AssertOp>::getEffects();
    a2 = v6;
  }

  v11 = &mlir::SideEffects::Effect::get<mlir::MemoryEffects::Write>(void)::instance;
  v10 = 0;
  v9 = 0;
  {
    v8 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(a2 + 8);
    if (v2 < *(a2 + 12))
    {
LABEL_5:
      v3 = *a2 + 40 * v2;
      v4 = v10;
      v5 = v9;
      *v3 = v11;
      *(v3 + 8) = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
      *(v3 + 16) = 0;
      *(v3 + 24) = 0;
      *(v3 + 32) = v4;
      *(v3 + 36) = v5;
      ++*(a2 + 8);
      return;
    }
  }

  else
  {
    v7 = a2;
    llvm::SmallVectorImpl<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>>::emplace_back<mlir::MemoryEffects::Write *>();
    a2 = v7;
    v8 = mlir::SideEffects::Resource::Base<mlir::SideEffects::DefaultResource,mlir::SideEffects::Resource>::get(void)::instance;
    v2 = *(v7 + 8);
    if (v2 < *(v7 + 12))
    {
      goto LABEL_5;
    }
  }

  llvm::SmallVectorTemplateBase<mlir::SideEffects::EffectInstance<mlir::MemoryEffects::Effect>,true>::growAndEmplaceBack<mlir::MemoryEffects::Write *,int,BOOL,mlir::SideEffects::DefaultResource *>(a2, &v11, &v10, &v9, &v8);
}

void mlir::mps::BandPartOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v16 = a4;
  v17 = a3;
  v15 = a5;
  mlir::OperationState::addOperands(a2, &v17, 1uLL);
  mlir::OperationState::addOperands(a2, &v16, 1uLL);
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  __src = v23;
  v22 = 0x200000000;
  v6 = *a2;
  mlir::ValueRange::ValueRange(&v19, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v18, *(a2 + 224), *(a2 + 232));
  v24[0] = v19;
  v24[1] = v20;
  if (v20)
  {
    v8 = *(mlir::ValueRange::dereference_iterator(v24, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v9 = v22;
    if (v22 >= HIDWORD(v22))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v23, v22 + 1, 8);
      v9 = v22;
    }

    *(__src + v9) = v8;
    v10 = v22 + 1;
    LODWORD(v22) = v10;
    v11 = __src;
    v12 = *(a2 + 72);
    v13 = v12 + v10;
    if (v13 > *(a2 + 76))
    {
LABEL_5:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v13, 8);
      LODWORD(v12) = *(a2 + 72);
    }
  }

  else
  {
    v14.var0.var0 = 1;
    if (!mlir::emitOptionalError<char const(&)[66]>(v6, v14, "invalid number of operands"))
    {
      llvm::report_fatal_error("Failed to infer result type(s).", 1);
    }

    v10 = v22;
    v11 = __src;
    v12 = *(a2 + 72);
    v13 = v12 + v22;
    if (v13 > *(a2 + 76))
    {
      goto LABEL_5;
    }
  }

  if (v10)
  {
    memcpy((*(a2 + 64) + 8 * v12), v11, 8 * v10);
    LODWORD(v12) = *(a2 + 72);
  }

  *(a2 + 72) = v12 + v10;
  if (__src != v23)
  {
    free(__src);
  }
}

uint64_t mlir::mps::BandPartOp::verifyInvariantsImpl(mlir::mps::BandPartOp *this)
{
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v143 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  {
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v23 = *(v10 + 8);
    v24 = *(v10 + 16);
    if (!v24)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v43 = v10;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v22 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v23 = *(v43 + 8);
    v24 = *(v43 + 16);
    if (!v24)
    {
      goto LABEL_44;
    }
  }

  v25 = v23;
  v26 = v24;
  do
  {
    v27 = v26 >> 1;
    v28 = &v25[2 * (v26 >> 1)];
    v30 = *v28;
    v29 = v28 + 2;
    v26 += ~(v26 >> 1);
    if (v30 < v22)
    {
      v25 = v29;
    }

    else
    {
      v26 = v27;
    }
  }

  while (v26);
  if (v25 == &v23[2 * v24] || *v25 != v22)
  {
LABEL_44:
    v130 = a2;
    v131 = 0;
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v130);
    v10 = *a2;
    if (!ArgOperands)
    {
      goto LABEL_2;
    }

    goto LABEL_47;
  }

  v45 = v25[1];
  v130 = a2;
  v131 = v45;
  v46 = mlir::CallOpInterface::getArgOperands(&v130);
  v10 = *a2;
  if (!v46)
  {
    goto LABEL_2;
  }

LABEL_47:
  {
    v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v48 = *(v10 + 8);
    v49 = *(v10 + 16);
    if (!v49)
    {
      goto LABEL_127;
    }
  }

  else
  {
    v119 = v10;
    mlir::arith::ExtUIOp::fold();
    v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v48 = *(v119 + 8);
    v49 = *(v119 + 16);
    if (!v49)
    {
      goto LABEL_127;
    }
  }

  v50 = v48;
  v51 = v49;
  do
  {
    v52 = v51 >> 1;
    v53 = &v50[2 * (v51 >> 1)];
    v55 = *v53;
    v54 = v53 + 2;
    v51 += ~(v51 >> 1);
    if (v55 < v47)
    {
      v50 = v54;
    }

    else
    {
      v51 = v52;
    }
  }

  while (v51);
  if (v50 != &v48[2 * v49] && *v50 == v47)
  {
    v100 = v50[1];
    v120 = a2;
    v121 = v100;
    mlir::CallableOpInterface::getArgAttrsAttr(&v120);
    v10 = *a2;
    if (!v101)
    {
      goto LABEL_130;
    }

LABEL_2:
    v11 = *(v10 + 136);
    if (v11 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v11 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
    {
      goto LABEL_63;
    }

    goto LABEL_7;
  }

LABEL_127:
  v120 = a2;
  v121 = 0;
  mlir::CallableOpInterface::getArgAttrsAttr(&v120);
  v10 = *a2;
  if (v99)
  {
    goto LABEL_2;
  }

LABEL_130:
  {
    v102 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v103 = *(v10 + 8);
    v104 = *(v10 + 16);
    if (!v104)
    {
      goto LABEL_143;
    }
  }

  else
  {
    v112 = v10;
    mlir::arith::ExtUIOp::fold();
    v102 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v103 = *(v112 + 8);
    v104 = *(v112 + 16);
    if (!v104)
    {
      goto LABEL_143;
    }
  }

  v105 = v103;
  v106 = v104;
  do
  {
    v107 = v106 >> 1;
    v108 = &v105[2 * (v106 >> 1)];
    v110 = *v108;
    v109 = v108 + 2;
    v106 += ~(v106 >> 1);
    if (v110 < v102)
    {
      v105 = v109;
    }

    else
    {
      v106 = v107;
    }
  }

  while (v106);
  if (v105 != &v103[2 * v104] && *v105 == v102)
  {
    v113 = v105[1];
    goto LABEL_145;
  }

LABEL_143:
  v113 = 0;
LABEL_145:
  v127 = a2;
  v128 = v113;
  isSplat = mlir::ElementsAttr::isSplat(&v127);
  if (mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64))
  {
    return 1;
  }

  v10 = *a2;
  v114 = *(*a2 + 136);
  if (v114 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v114 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_63;
  }

LABEL_7:
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v10 + 8);
    v15 = *(v10 + 16);
    if (!v15)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v31 = v10;
    mlir::arith::ExtUIOp::fold();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v31 + 8);
    v15 = *(v31 + 16);
    if (!v15)
    {
      goto LABEL_28;
    }
  }

  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v32 = v16[1];
    goto LABEL_30;
  }

LABEL_28:
  v32 = 0;
LABEL_30:
  v125[0] = a2;
  v125[1] = v32;
  isSplat = mlir::ElementsAttr::isSplat(v125);
  if (!mlir::Type::isSignedInteger(&isSplat, 32) && !mlir::Type::isSignedInteger(&isSplat, 64))
  {
    goto LABEL_63;
  }

  v33 = *a2;
  {
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v35 = *(v33 + 8);
    v36 = *(v33 + 16);
    if (!v36)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v56 = v33;
    mlir::arith::ExtUIOp::fold();
    v34 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v35 = *(v56 + 8);
    v36 = *(v56 + 16);
    if (!v36)
    {
      goto LABEL_59;
    }
  }

  v37 = v35;
  v38 = v36;
  do
  {
    v39 = v38 >> 1;
    v40 = &v37[2 * (v38 >> 1)];
    v42 = *v40;
    v41 = v40 + 2;
    v38 += ~(v38 >> 1);
    if (v42 < v34)
    {
      v37 = v41;
    }

    else
    {
      v38 = v39;
    }
  }

  while (v38);
  if (v37 != &v35[2 * v36] && *v37 == v34)
  {
    v57 = v37[1];
    goto LABEL_61;
  }

LABEL_59:
  v57 = 0;
LABEL_61:
  v124[0] = a2;
  v124[1] = v57;
  ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(v124);
  v142 = 1;
  if (v59 == 1 && *ArgAttrsAttr == v142)
  {
    return 1;
  }

LABEL_63:
  v60 = *a2;
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v88 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v89 = *(v60 + 8);
      v90 = *(v60 + 16);
      if (!v90)
      {
        goto LABEL_117;
      }
    }

    else
    {
      mlir::arith::ExtUIOp::fold();
      v88 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v89 = *(v60 + 8);
      v90 = *(v60 + 16);
      if (!v90)
      {
        goto LABEL_117;
      }
    }

    v91 = v89;
    v92 = v90;
    do
    {
      v93 = v92 >> 1;
      v94 = &v91[2 * (v92 >> 1)];
      v96 = *v94;
      v95 = v94 + 2;
      v92 += ~(v92 >> 1);
      if (v96 < v88)
      {
        v91 = v95;
      }

      else
      {
        v92 = v93;
      }
    }

    while (v92);
    if (v91 != &v89[2 * v90] && *v91 == v88)
    {
      v97 = v91[1];
LABEL_119:
      v123[0] = a2;
      v123[1] = v97;
      isSplat = mlir::ElementsAttr::isSplat(v123);
      if (!mlir::Type::isSignedInteger(&isSplat, 32))
      {
        if (mlir::Type::isSignedInteger(&isSplat, 64))
        {
          return 1;
        }

        goto LABEL_64;
      }

      return 1;
    }

LABEL_117:
    v97 = 0;
    goto LABEL_119;
  }

LABEL_64:
  v122 = 261;
  v120 = a3;
  v121 = a4;
  mlir::Operation::emitOpError(a1, &v120, &v130);
  if (v130)
  {
    LODWORD(v127) = 3;
    v128 = " #";
    v129 = 2;
    v61 = &v127;
    v62 = v132;
    if (v133 >= v134)
    {
      if (v132 <= &v127 && v132 + 24 * v133 > &v127)
      {
        v111 = &v127 - v132;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
        v62 = v132;
        v61 = v132 + v111;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
        v61 = &v127;
        v62 = v132;
      }
    }

    v63 = &v62[24 * v133];
    v64 = *v61;
    *(v63 + 2) = *(v61 + 2);
    *v63 = v64;
    v65 = ++v133;
    if (v130)
    {
      LODWORD(v127) = 5;
      v128 = a5;
      v66 = &v127;
      v67 = v132;
      if (v65 >= v134)
      {
        if (v132 <= &v127 && v132 + 24 * v65 > &v127)
        {
          v116 = &v127 - v132;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v65 + 1, 24);
          v67 = v132;
          v66 = v132 + v116;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v65 + 1, 24);
          v66 = &v127;
          v67 = v132;
        }
      }

      v68 = &v67[24 * v133];
      v69 = *v66;
      *(v68 + 2) = *(v66 + 2);
      *v68 = v69;
      v70 = ++v133;
      if (v130)
      {
        LODWORD(v127) = 3;
        v128 = " must be 0D tensor of mps index type values or static-shape defined tensor with shape equal to [1] or unranked tensor of mps index type values, but got ";
        v129 = 152;
        v71 = &v127;
        v72 = v132;
        if (v70 >= v134)
        {
          if (v132 <= &v127 && v132 + 24 * v70 > &v127)
          {
            v117 = &v127 - v132;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v70 + 1, 24);
            v72 = v132;
            v71 = v132 + v117;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v70 + 1, 24);
            v71 = &v127;
            v72 = v132;
          }
        }

        v73 = &v72[24 * v133];
        v74 = *v71;
        *(v73 + 2) = *(v71 + 2);
        *v73 = v74;
        ++v133;
        if (v130)
        {
          v75 = &v127;
          mlir::DiagnosticArgument::DiagnosticArgument(&v127, a2);
          v76 = v132;
          if (v133 >= v134)
          {
            if (v132 <= &v127 && v132 + 24 * v133 > &v127)
            {
              v118 = &v127 - v132;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
              v76 = v132;
              v75 = v132 + v118;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v132, v135, v133 + 1, 24);
              v75 = &v127;
              v76 = v132;
            }
          }

          v77 = &v76[24 * v133];
          v78 = *v75;
          *(v77 + 2) = *(v75 + 2);
          *v77 = v78;
          ++v133;
        }
      }
    }
  }

  v79 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v130);
  if (v130)
  {
    mlir::InFlightDiagnostic::report(&v130);
  }

  if (v141 == 1)
  {
    if (v140 != &v141)
    {
      free(v140);
    }

    v80 = __p;
    if (__p)
    {
      v81 = v139;
      v82 = __p;
      if (v139 != __p)
      {
        do
        {
          v81 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v81 - 1);
        }

        while (v81 != v80);
        v82 = __p;
      }

      v139 = v80;
      operator delete(v82);
    }

    v83 = v136;
    if (v136)
    {
      v84 = v137;
      v85 = v136;
      if (v137 != v136)
      {
        do
        {
          v87 = *--v84;
          v86 = v87;
          *v84 = 0;
          if (v87)
          {
            operator delete[](v86);
          }
        }

        while (v84 != v83);
        v85 = v136;
      }

      v137 = v83;
      operator delete(v85);
    }

    if (v132 != v135)
    {
      free(v132);
    }
  }

  return v79;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::BandPartOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.band_part", 13, a3, v10, a4, a5);
  *v11 = &unk_1F5B258A0;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t mlir::mps::BatchToSpaceOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v40 = v6;
  if (!v6)
  {
    a3(v44, a4);
    if (v44[0])
    {
      v41 = 3;
      v42 = "expected DictionaryAttr to set properties";
      v43 = 41;
      v26 = &v41;
      v27 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v27 = v45;
          v26 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v26 = &v41;
          v27 = v45;
        }
      }

      v28 = &v27[24 * v46];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }

    if (v54 != 1)
    {
      return 0;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v33 = v50;
    v23 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
    goto LABEL_47;
  }

  v56.var0 = "pixel_shuffle";
  v56.var1 = 13;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::UnitAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 58;
    v10 = &v41;
    v11 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v11 = v45;
        v10 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v10 = &v41;
        v11 = v45;
      }
    }

    v12 = &v11[24 * v46];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v46;
    if (v44[0])
    {
      v14 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v15 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v15 = v45;
          v14 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = &v41;
          v15 = v45;
        }
      }

      v16 = &v15[24 * v46];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }
  }

  if (v54)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v52;
      v20 = __p;
      if (v52 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v52 = v18;
      operator delete(v20);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v22 = v50;
    v23 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v21;
      operator delete(v23);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
    }

    do
    {
      v25 = *--v22;
      v24 = v25;
      *v22 = 0;
      if (v25)
      {
        operator delete[](v24);
      }
    }

    while (v22 != v21);
LABEL_47:
    v23 = v49;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::mps::BatchToSpaceOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "pixel_shuffle", 13, *a2);
  v4 = v15;
  if (v15 >= HIDWORD(v15))
  {
    v11 = NamedAttr;
    v12 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v15 + 1, 16);
    v3 = v12;
    NamedAttr = v11;
    v4 = v15;
  }

  v5 = (v14 + 16 * v4);
  *v5 = NamedAttr;
  v5[1] = v3;
  v6 = v14;
  v7 = __CFADD__(v15, 1);
  v8 = (v15 + 1);
  LODWORD(v15) = v15 + 1;
  if (v7)
  {
    result = 0;
    if (v14 != v16)
    {
LABEL_10:
      v10 = result;
      free(v6);
      return v10;
    }
  }

  else
  {
    result = mlir::Builder::getDictionaryAttr(&v13, v14, v8);
    v6 = v14;
    if (v14 != v16)
    {
      goto LABEL_10;
    }
  }

  return result;
}

BOOL mlir::mps::BatchToSpaceOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::BatchToSpaceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::BatchToSpaceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::BatchToSpaceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::BatchToSpaceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::mps::BatchToSpaceOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::BatchToSpaceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::UnitAttr>(a1, *(a2 + 256));
}

void mlir::mps::BatchToSpaceOp::build(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v33[2] = *MEMORY[0x1E69E9840];
  v27 = a4;
  v28 = a3;
  v25 = a6;
  v26 = a5;
  mlir::OperationState::addOperands(a2, &v28, 1uLL);
  mlir::OperationState::addOperands(a2, &v27, 1uLL);
  mlir::OperationState::addOperands(a2, &v26, 1uLL);
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  if (a7)
  {
    UnitAttr = mlir::Builder::getUnitAttr(a1, v10);
    v12 = *(a2 + 256);
    if (!v12)
    {
      v13 = operator new(8uLL);
      *v13 = 0;
      *(a2 + 256) = v13;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::BatchToSpaceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::BatchToSpaceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &v31;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::BatchToSpaceOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::BatchToSpaceOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &v31;
      {
        mlir::mps::BatchToSpaceOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::BatchToSpaceOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v12 = *(a2 + 256);
    }

    *v12 = UnitAttr;
  }

  v31 = v33;
  v32 = 0x200000000;
  v14 = *a2;
  mlir::ValueRange::ValueRange(v30, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v16 = mlir::ValueRange::ValueRange(&v29, *(a2 + 224), *(a2 + 232));
  if (!mlir::mps::BatchToSpaceOp::inferReturnTypes(v16, v14, 1, v30[0], v30[1], v17, v18, v19, v23, v24, &v31))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v20 = v31;
  v21 = v32;
  v22 = *(a2 + 72);
  if (v22 + v32 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v22 + v32, 8);
    LODWORD(v22) = *(a2 + 72);
  }

  if (v21)
  {
    memcpy((*(a2 + 64) + 8 * v22), v20, 8 * v21);
    LODWORD(v22) = *(a2 + 72);
  }

  *(a2 + 72) = v22 + v21;
  if (v31 != v33)
  {
    free(v31);
  }
}

uint64_t mlir::mps::BatchToSpaceOp::verifyInvariantsImpl(mlir::mps::BatchToSpaceOp *this)
{
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v7 = v2;
  if ((mlir::memref::__mlir_ods_local_attr_constraint_MemRefOps11(v3, "pixel_shuffle", 0xD, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps1(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps3(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps5(*this, (*(*(*(*this + 72) + 120) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 3u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps4(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v153 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_2;
  }

  {
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v10 + 8);
    v40 = *(v10 + 16);
    if (!v40)
    {
      goto LABEL_75;
    }
  }

  else
  {
    v65 = v10;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v38 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v39 = *(v65 + 8);
    v40 = *(v65 + 16);
    if (!v40)
    {
      goto LABEL_75;
    }
  }

  v41 = v39;
  v42 = v40;
  do
  {
    v43 = v42 >> 1;
    v44 = &v41[2 * (v42 >> 1)];
    v46 = *v44;
    v45 = v44 + 2;
    v42 += ~(v42 >> 1);
    if (v46 < v38)
    {
      v41 = v45;
    }

    else
    {
      v42 = v43;
    }
  }

  while (v42);
  if (v41 == &v39[2 * v40] || *v41 != v38)
  {
LABEL_75:
    v141 = a2;
    v142 = 0;
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v141);
    v10 = *a2;
    if (!ArgOperands)
    {
      goto LABEL_2;
    }

    goto LABEL_78;
  }

  v67 = v41[1];
  v141 = a2;
  v142 = v67;
  v68 = mlir::CallOpInterface::getArgOperands(&v141);
  v10 = *a2;
  if (!v68)
  {
    goto LABEL_2;
  }

LABEL_78:
  {
    v69 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v70 = *(v10 + 8);
    v71 = *(v10 + 16);
    if (!v71)
    {
      goto LABEL_113;
    }
  }

  else
  {
    v127 = v10;
    mlir::arith::ExtUIOp::fold();
    v69 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v70 = *(v127 + 8);
    v71 = *(v127 + 16);
    if (!v71)
    {
      goto LABEL_113;
    }
  }

  v72 = v70;
  v73 = v71;
  do
  {
    v74 = v73 >> 1;
    v75 = &v72[2 * (v73 >> 1)];
    v77 = *v75;
    v76 = v75 + 2;
    v73 += ~(v73 >> 1);
    if (v77 < v69)
    {
      v72 = v76;
    }

    else
    {
      v73 = v74;
    }
  }

  while (v73);
  if (v72 == &v70[2 * v71] || *v72 != v69)
  {
LABEL_113:
    v128 = a2;
    v129 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v128);
    v10 = *a2;
    if (v93)
    {
      goto LABEL_2;
    }

    goto LABEL_116;
  }

  v94 = v72[1];
  v128 = a2;
  v129 = v94;
  mlir::CallableOpInterface::getArgAttrsAttr(&v128);
  v10 = *a2;
  if (v95)
  {
    goto LABEL_2;
  }

LABEL_116:
  {
    v121 = v10;
    mlir::arith::ExtUIOp::fold();
    v96 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v97 = *(v121 + 8);
    v98 = *(v121 + 16);
    if (v98)
    {
      goto LABEL_118;
    }

LABEL_152:
    v122 = 0;
    goto LABEL_154;
  }

  v96 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v97 = *(v10 + 8);
  v98 = *(v10 + 16);
  if (!v98)
  {
    goto LABEL_152;
  }

LABEL_118:
  v99 = v97;
  v100 = v98;
  do
  {
    v101 = v100 >> 1;
    v102 = &v99[2 * (v100 >> 1)];
    v104 = *v102;
    v103 = v102 + 2;
    v100 += ~(v100 >> 1);
    if (v104 < v96)
    {
      v99 = v103;
    }

    else
    {
      v100 = v101;
    }
  }

  while (v100);
  if (v99 == &v97[2 * v98] || *v99 != v96)
  {
    goto LABEL_152;
  }

  v122 = v99[1];
LABEL_154:
  v138 = a2;
  v139 = v122;
  isSplat = mlir::ElementsAttr::isSplat(&v138);
  if (mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64))
  {
    return 1;
  }

  v10 = *a2;
LABEL_2:
  if (*(v10 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_3;
  }

  {
    v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v48 = *(v10 + 8);
    v49 = *(v10 + 16);
    if (!v49)
    {
      goto LABEL_90;
    }
  }

  else
  {
    v78 = v10;
    mlir::arith::ExtUIOp::fold();
    v47 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v48 = *(v78 + 8);
    v49 = *(v78 + 16);
    if (!v49)
    {
      goto LABEL_90;
    }
  }

  v50 = v48;
  v51 = v49;
  do
  {
    v52 = v51 >> 1;
    v53 = &v50[2 * (v51 >> 1)];
    v55 = *v53;
    v54 = v53 + 2;
    v51 += ~(v51 >> 1);
    if (v55 < v47)
    {
      v50 = v54;
    }

    else
    {
      v51 = v52;
    }
  }

  while (v51);
  if (v50 == &v48[2 * v49] || *v50 != v47)
  {
LABEL_90:
    v135 = a2;
    v136 = 0;
    v79 = mlir::CallOpInterface::getArgOperands(&v135);
    v10 = *a2;
    if (!v79)
    {
      goto LABEL_3;
    }

    goto LABEL_93;
  }

  v80 = v50[1];
  v135 = a2;
  v136 = v80;
  v81 = mlir::CallOpInterface::getArgOperands(&v135);
  v10 = *a2;
  if (!v81)
  {
    goto LABEL_3;
  }

LABEL_93:
  {
    v82 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v83 = *(v10 + 8);
    v84 = *(v10 + 16);
    if (!v84)
    {
      goto LABEL_128;
    }
  }

  else
  {
    v105 = v10;
    mlir::arith::ExtUIOp::fold();
    v82 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v83 = *(v105 + 8);
    v84 = *(v105 + 16);
    if (!v84)
    {
      goto LABEL_128;
    }
  }

  v85 = v83;
  v86 = v84;
  do
  {
    v87 = v86 >> 1;
    v88 = &v85[2 * (v86 >> 1)];
    v90 = *v88;
    v89 = v88 + 2;
    v86 += ~(v86 >> 1);
    if (v90 < v82)
    {
      v85 = v89;
    }

    else
    {
      v86 = v87;
    }
  }

  while (v86);
  if (v85 == &v83[2 * v84] || *v85 != v82)
  {
LABEL_128:
    v133 = a2;
    v134 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v133);
    v10 = *a2;
    if (v106 != 1)
    {
      goto LABEL_3;
    }

    goto LABEL_131;
  }

  v107 = v85[1];
  v133 = a2;
  v134 = v107;
  mlir::CallableOpInterface::getArgAttrsAttr(&v133);
  v10 = *a2;
  if (v108 != 1)
  {
    goto LABEL_3;
  }

LABEL_131:
  {
    v119 = v10;
    mlir::arith::ExtUIOp::fold();
    v109 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v110 = *(v119 + 8);
    v111 = *(v119 + 16);
    if (v111)
    {
      goto LABEL_133;
    }

LABEL_144:
    v120 = 0;
    goto LABEL_146;
  }

  v109 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
  v110 = *(v10 + 8);
  v111 = *(v10 + 16);
  if (!v111)
  {
    goto LABEL_144;
  }

LABEL_133:
  v112 = v110;
  v113 = v111;
  do
  {
    v114 = v113 >> 1;
    v115 = &v112[2 * (v113 >> 1)];
    v117 = *v115;
    v116 = v115 + 2;
    v113 += ~(v113 >> 1);
    if (v117 < v109)
    {
      v112 = v116;
    }

    else
    {
      v113 = v114;
    }
  }

  while (v113);
  if (v112 == &v110[2 * v111] || *v112 != v109)
  {
    goto LABEL_144;
  }

  v120 = v112[1];
LABEL_146:
  v132[0] = a2;
  v132[1] = v120;
  isSplat = mlir::ElementsAttr::isSplat(v132);
  if (mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64))
  {
    return 1;
  }

  v10 = *a2;
LABEL_3:
  if (*(v10 + 136) == &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    {
      v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v57 = *(v10 + 8);
      v58 = *(v10 + 16);
      if (!v58)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v91 = v10;
      mlir::arith::ExtUIOp::fold();
      v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v57 = *(v91 + 8);
      v58 = *(v91 + 16);
      if (!v58)
      {
        goto LABEL_105;
      }
    }

    v59 = v57;
    v60 = v58;
    do
    {
      v61 = v60 >> 1;
      v62 = &v59[2 * (v60 >> 1)];
      v64 = *v62;
      v63 = v62 + 2;
      v60 += ~(v60 >> 1);
      if (v64 < v56)
      {
        v59 = v63;
      }

      else
      {
        v60 = v61;
      }
    }

    while (v60);
    if (v59 != &v57[2 * v58] && *v59 == v56)
    {
      v92 = v59[1];
      goto LABEL_107;
    }

LABEL_105:
    v92 = 0;
LABEL_107:
    v131[0] = a2;
    v131[1] = v92;
    isSplat = mlir::ElementsAttr::isSplat(v131);
    if (!mlir::Type::isSignedInteger(&isSplat, 32) && !mlir::Type::isSignedInteger(&isSplat, 64))
    {
      goto LABEL_4;
    }

    return 1;
  }

LABEL_4:
  v130 = 261;
  v128 = a3;
  v129 = a4;
  mlir::Operation::emitOpError(a1, &v128, &v141);
  if (v141)
  {
    LODWORD(v138) = 3;
    v139 = " #";
    v140 = 2;
    v11 = &v138;
    v12 = v143;
    if (v144 >= v145)
    {
      if (v143 <= &v138 && v143 + 24 * v144 > &v138)
      {
        v118 = &v138 - v143;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v144 + 1, 24);
        v12 = v143;
        v11 = v143 + v118;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v144 + 1, 24);
        v11 = &v138;
        v12 = v143;
      }
    }

    v13 = &v12[24 * v144];
    v14 = *v11;
    *(v13 + 2) = *(v11 + 2);
    *v13 = v14;
    v15 = ++v144;
    if (v141)
    {
      LODWORD(v138) = 5;
      v139 = a5;
      v16 = &v138;
      v17 = v143;
      if (v15 >= v145)
      {
        if (v143 <= &v138 && v143 + 24 * v15 > &v138)
        {
          v124 = &v138 - v143;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v15 + 1, 24);
          v17 = v143;
          v16 = v143 + v124;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v15 + 1, 24);
          v16 = &v138;
          v17 = v143;
        }
      }

      v18 = &v17[24 * v144];
      v19 = *v16;
      *(v18 + 2) = *(v16 + 2);
      *v18 = v19;
      v20 = ++v144;
      if (v141)
      {
        LODWORD(v138) = 3;
        v139 = " must be 0D tensor of mps index type values or 1D tensor of mps index type values or unranked tensor of mps index type values, but got ";
        v140 = 135;
        v21 = &v138;
        v22 = v143;
        if (v20 >= v145)
        {
          if (v143 <= &v138 && v143 + 24 * v20 > &v138)
          {
            v125 = &v138 - v143;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v20 + 1, 24);
            v22 = v143;
            v21 = v143 + v125;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v20 + 1, 24);
            v21 = &v138;
            v22 = v143;
          }
        }

        v23 = &v22[24 * v144];
        v24 = *v21;
        *(v23 + 2) = *(v21 + 2);
        *v23 = v24;
        ++v144;
        if (v141)
        {
          v25 = &v138;
          mlir::DiagnosticArgument::DiagnosticArgument(&v138, a2);
          v26 = v143;
          if (v144 >= v145)
          {
            if (v143 <= &v138 && v143 + 24 * v144 > &v138)
            {
              v126 = &v138 - v143;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v144 + 1, 24);
              v26 = v143;
              v25 = v143 + v126;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v143, v146, v144 + 1, 24);
              v25 = &v138;
              v26 = v143;
            }
          }

          v27 = &v26[24 * v144];
          v28 = *v25;
          *(v27 + 2) = *(v25 + 2);
          *v27 = v28;
          ++v144;
        }
      }
    }
  }

  v29 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v141);
  if (v141)
  {
    mlir::InFlightDiagnostic::report(&v141);
  }

  if (v152 == 1)
  {
    if (v151 != &v152)
    {
      free(v151);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v150;
      v32 = __p;
      if (v150 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v150 = v30;
      operator delete(v32);
    }

    v33 = v147;
    if (v147)
    {
      v34 = v148;
      v35 = v147;
      if (v148 != v147)
      {
        do
        {
          v37 = *--v34;
          v36 = v37;
          *v34 = 0;
          if (v37)
          {
            operator delete[](v36);
          }
        }

        while (v34 != v33);
        v35 = v147;
      }

      v148 = v33;
      operator delete(v35);
    }

    if (v143 != v146)
    {
      free(v143);
    }
  }

  return v29;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps5(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v121 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(*a2 + 136);
  if (v10 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    if (v10 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
    {
      goto LABEL_80;
    }

    goto LABEL_3;
  }

  {
    v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v21 = *(v9 + 8);
    v22 = *(v9 + 16);
    if (!v22)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v29 = a1;
    v30 = v9;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    a1 = v29;
    v20 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v21 = *(v30 + 8);
    v22 = *(v30 + 16);
    if (!v22)
    {
      goto LABEL_24;
    }
  }

  v23 = v21;
  v24 = v22;
  do
  {
    v25 = v24 >> 1;
    v26 = &v23[2 * (v24 >> 1)];
    v28 = *v26;
    v27 = v26 + 2;
    v24 += ~(v24 >> 1);
    if (v28 < v20)
    {
      v23 = v27;
    }

    else
    {
      v24 = v25;
    }
  }

  while (v24);
  if (v23 != &v21[2 * v22] && *v23 == v20)
  {
    v31 = a1;
    v32 = v23[1];
    goto LABEL_26;
  }

LABEL_24:
  v31 = a1;
  v32 = 0;
LABEL_26:
  v110[0] = a2;
  v110[1] = v32;
  isSplat = mlir::ElementsAttr::isSplat(v110);
  if (mlir::Type::isSignedInteger(&isSplat, 8) || mlir::Type::isSignedInteger(&isSplat, 16) || mlir::Type::isSignedInteger(&isSplat, 32) || mlir::Type::isSignedInteger(&isSplat, 64) || mlir::Type::isUnsignedInteger(&isSplat, 8) || mlir::Type::isUnsignedInteger(&isSplat, 16) || mlir::Type::isUnsignedInteger(&isSplat, 32) || mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    return 1;
  }

  v9 = *a2;
  a1 = v31;
  if (*(*a2 + 136) != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id)
  {
    goto LABEL_80;
  }

LABEL_3:
  {
    v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v12 = *(v9 + 8);
    v13 = *(v9 + 16);
    if (!v13)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v33 = a1;
    v34 = v9;
    mlir::arith::ExtUIOp::fold();
    a1 = v33;
    v11 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v12 = *(v34 + 8);
    v13 = *(v34 + 16);
    if (!v13)
    {
      goto LABEL_39;
    }
  }

  v14 = v12;
  v15 = v13;
  do
  {
    v16 = v15 >> 1;
    v17 = &v14[2 * (v15 >> 1)];
    v19 = *v17;
    v18 = v17 + 2;
    v15 += ~(v15 >> 1);
    if (v19 < v11)
    {
      v14 = v18;
    }

    else
    {
      v15 = v16;
    }
  }

  while (v15);
  if (v14 != &v12[2 * v13] && *v14 == v11)
  {
    v37 = a1;
    v38 = v14[1];
    v102 = a2;
    v103 = v38;
    ArgOperands = mlir::CallOpInterface::getArgOperands(&v102);
    a1 = v37;
    if (!ArgOperands)
    {
      goto LABEL_80;
    }

    goto LABEL_42;
  }

LABEL_39:
  v35 = a1;
  v102 = a2;
  v103 = 0;
  v36 = mlir::CallOpInterface::getArgOperands(&v102);
  a1 = v35;
  if (!v36)
  {
    goto LABEL_80;
  }

LABEL_42:
  v40 = *a2;
  {
    v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v42 = *(v40 + 8);
    v43 = *(v40 + 16);
    if (!v43)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v101 = a1;
    mlir::arith::ExtUIOp::fold();
    a1 = v101;
    v41 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v42 = *(v40 + 8);
    v43 = *(v40 + 16);
    if (!v43)
    {
      goto LABEL_54;
    }
  }

  v44 = v42;
  v45 = v43;
  do
  {
    v46 = v45 >> 1;
    v47 = &v44[2 * (v45 >> 1)];
    v49 = *v47;
    v48 = v47 + 2;
    v45 += ~(v45 >> 1);
    if (v49 < v41)
    {
      v44 = v48;
    }

    else
    {
      v45 = v46;
    }
  }

  while (v45);
  if (v44 == &v42[2 * v43] || *v44 != v41)
  {
LABEL_54:
    v50 = a1;
    v107 = a2;
    v108 = 0;
    mlir::CallableOpInterface::getArgAttrsAttr(&v107);
    a1 = v50;
    if (v51 != 1)
    {
      goto LABEL_80;
    }

LABEL_57:
    v55 = *a2;
    {
      v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v57 = *(v55 + 8);
      v58 = *(v55 + 16);
      if (!v58)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v65 = a1;
      mlir::arith::ExtUIOp::fold();
      a1 = v65;
      v56 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
      v57 = *(v55 + 8);
      v58 = *(v55 + 16);
      if (!v58)
      {
        goto LABEL_69;
      }
    }

    v59 = v57;
    v60 = v58;
    do
    {
      v61 = v60 >> 1;
      v62 = &v59[2 * (v60 >> 1)];
      v64 = *v62;
      v63 = v62 + 2;
      v60 += ~(v60 >> 1);
      if (v64 < v56)
      {
        v59 = v63;
      }

      else
      {
        v60 = v61;
      }
    }

    while (v60);
    if (v59 != &v57[2 * v58] && *v59 == v56)
    {
      v66 = a1;
      v67 = v59[1];
      goto LABEL_71;
    }

LABEL_69:
    v66 = a1;
    v67 = 0;
LABEL_71:
    v105[0] = a2;
    v105[1] = v67;
    isSplat = mlir::ElementsAttr::isSplat(v105);
    if (!mlir::Type::isSignedInteger(&isSplat, 8) && !mlir::Type::isSignedInteger(&isSplat, 16) && !mlir::Type::isSignedInteger(&isSplat, 32) && !mlir::Type::isSignedInteger(&isSplat, 64) && !mlir::Type::isUnsignedInteger(&isSplat, 8) && !mlir::Type::isUnsignedInteger(&isSplat, 16) && !mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      isUnsignedInteger = mlir::Type::isUnsignedInteger(&isSplat, 64);
      a1 = v66;
      if (!isUnsignedInteger)
      {
        goto LABEL_80;
      }
    }

    return 1;
  }

  v52 = a1;
  v53 = v44[1];
  v107 = a2;
  v108 = v53;
  mlir::CallableOpInterface::getArgAttrsAttr(&v107);
  a1 = v52;
  if (v54 == 1)
  {
    goto LABEL_57;
  }

LABEL_80:
  v104 = 261;
  v102 = a3;
  v103 = a4;
  mlir::Operation::emitOpError(a1, &v102, v110);
  if (v110[0])
  {
    LODWORD(v107) = 3;
    v108 = " #";
    v109 = 2;
    v70 = &v107;
    v71 = v111;
    if (v112 >= v113)
    {
      if (v111 <= &v107 && v111 + 24 * v112 > &v107)
      {
        v97 = &v107 - v111;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v112 + 1, 24);
        v71 = v111;
        v70 = v111 + v97;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v112 + 1, 24);
        v70 = &v107;
        v71 = v111;
      }
    }

    v72 = &v71[24 * v112];
    v73 = *v70;
    *(v72 + 2) = *(v70 + 2);
    *v72 = v73;
    v74 = ++v112;
    if (v110[0])
    {
      LODWORD(v107) = 5;
      v108 = a5;
      v75 = &v107;
      v76 = v111;
      if (v74 >= v113)
      {
        if (v111 <= &v107 && v111 + 24 * v74 > &v107)
        {
          v98 = &v107 - v111;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v74 + 1, 24);
          v76 = v111;
          v75 = v111 + v98;
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v74 + 1, 24);
          v75 = &v107;
          v76 = v111;
        }
      }

      v77 = &v76[24 * v112];
      v78 = *v75;
      *(v77 + 2) = *(v75 + 2);
      *v77 = v78;
      v79 = ++v112;
      if (v110[0])
      {
        LODWORD(v107) = 3;
        v108 = " must be unranked tensor of int values or 1D tensor of int values, but got ";
        v109 = 75;
        v80 = &v107;
        v81 = v111;
        if (v79 >= v113)
        {
          if (v111 <= &v107 && v111 + 24 * v79 > &v107)
          {
            v99 = &v107 - v111;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v79 + 1, 24);
            v81 = v111;
            v80 = v111 + v99;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v79 + 1, 24);
            v80 = &v107;
            v81 = v111;
          }
        }

        v82 = &v81[24 * v112];
        v83 = *v80;
        *(v82 + 2) = *(v80 + 2);
        *v82 = v83;
        ++v112;
        if (v110[0])
        {
          v84 = &v107;
          mlir::DiagnosticArgument::DiagnosticArgument(&v107, a2);
          v85 = v111;
          if (v112 >= v113)
          {
            if (v111 <= &v107 && v111 + 24 * v112 > &v107)
            {
              v100 = &v107 - v111;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v112 + 1, 24);
              v85 = v111;
              v84 = v111 + v100;
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v111, v114, v112 + 1, 24);
              v84 = &v107;
              v85 = v111;
            }
          }

          v86 = &v85[24 * v112];
          v87 = *v84;
          *(v86 + 2) = *(v84 + 2);
          *v86 = v87;
          ++v112;
        }
      }
    }
  }

  v69 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v110);
  if (v110[0])
  {
    mlir::InFlightDiagnostic::report(v110);
  }

  if (v120 == 1)
  {
    if (v119 != &v120)
    {
      free(v119);
    }

    v88 = __p;
    if (__p)
    {
      v89 = v118;
      v90 = __p;
      if (v118 != __p)
      {
        do
        {
          v89 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v89 - 1);
        }

        while (v89 != v88);
        v90 = __p;
      }

      v118 = v88;
      operator delete(v90);
    }

    v91 = v115;
    if (v115)
    {
      v92 = v116;
      v93 = v115;
      if (v116 != v115)
      {
        do
        {
          v95 = *--v92;
          v94 = v95;
          *v92 = 0;
          if (v95)
          {
            operator delete[](v94);
          }
        }

        while (v92 != v91);
        v93 = v115;
      }

      v116 = v91;
      operator delete(v93);
    }

    if (v111 != v114)
    {
      free(v111);
    }
  }

  return v69;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::BatchToSpaceOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.batch_to_space", 18, a3, v10, a4, a5);
  *v11 = &unk_1F5B25940;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t mlir::mps::BiasAddGradOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v40 = v6;
  if (!v6)
  {
    a3(v44, a4);
    if (v44[0])
    {
      v41 = 3;
      v42 = "expected DictionaryAttr to set properties";
      v43 = 41;
      v26 = &v41;
      v27 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v27 = v45;
          v26 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v26 = &v41;
          v27 = v45;
        }
      }

      v28 = &v27[24 * v46];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }

    if (v54 != 1)
    {
      return 0;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v33 = v50;
    v23 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
    goto LABEL_47;
  }

  v56.var0 = "data_format";
  v56.var1 = 11;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 56;
    v10 = &v41;
    v11 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v11 = v45;
        v10 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v10 = &v41;
        v11 = v45;
      }
    }

    v12 = &v11[24 * v46];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v46;
    if (v44[0])
    {
      v14 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v15 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v15 = v45;
          v14 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = &v41;
          v15 = v45;
        }
      }

      v16 = &v15[24 * v46];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }
  }

  if (v54)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v52;
      v20 = __p;
      if (v52 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v52 = v18;
      operator delete(v20);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v22 = v50;
    v23 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v21;
      operator delete(v23);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
    }

    do
    {
      v25 = *--v22;
      v24 = v25;
      *v22 = 0;
      if (v25)
      {
        operator delete[](v24);
      }
    }

    while (v22 != v21);
LABEL_47:
    v23 = v49;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::mps::BiasAddGradOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "data_format", 11, *a2);
  v4 = v15;
  if (v15 >= HIDWORD(v15))
  {
    v11 = NamedAttr;
    v12 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v15 + 1, 16);
    v3 = v12;
    NamedAttr = v11;
    v4 = v15;
  }

  v5 = (v14 + 16 * v4);
  *v5 = NamedAttr;
  v5[1] = v3;
  v6 = v14;
  v7 = __CFADD__(v15, 1);
  v8 = (v15 + 1);
  LODWORD(v15) = v15 + 1;
  if (v7)
  {
    result = 0;
    if (v14 != v16)
    {
LABEL_10:
      v10 = result;
      free(v6);
      return v10;
    }
  }

  else
  {
    result = mlir::Builder::getDictionaryAttr(&v13, v14, v8);
    v6 = v14;
    if (v14 != v16)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps2(_DWORD *a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id && a1[2] < 2u)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v8 = &v27;
    v9 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v9 = v33;
        v8 = v33 + v25;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = &v27;
        v9 = v33;
      }
    }

    v10 = &v9[24 * v34];
    v11 = *v8;
    *(v10 + 2) = *(v8 + 2);
    *v10 = v11;
    ++v34;
    if (v31)
    {
      v30 = 261;
      v27 = a2;
      v28 = a3;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = "' failed to satisfy constraint: valid TensorDataLayout is NHWC or NCHW";
        v29 = 70;
        v12 = &v27;
        v13 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v13 = v33;
            v12 = v33 + v26;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = &v27;
            v13 = v33;
          }
        }

        v14 = &v13[24 * v34];
        v15 = *v12;
        *(v14 + 2) = *(v12 + 2);
        *v14 = v15;
        ++v34;
      }
    }
  }

  v7 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            operator delete[](v22);
          }
        }

        while (v20 != v19);
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return v7;
}

BOOL mlir::mps::BiasAddGradOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::TensorDataLayoutAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::BiasAddGradOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::BiasAddGradOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::BiasAddGradOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::BiasAddGradOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::mps::BiasAddGradOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::BiasAddGradOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::TensorDataLayoutAttr>(a1, *(a2 + 256));
}

BOOL mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::TensorDataLayoutAttr>(uint64_t a1, uint64_t *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (((*(*a1 + 56))(a1, &v36) & 1) == 0)
  {
    return 0;
  }

  v4 = v36;
  if (!v36)
  {
    return 1;
  }

  v5 = *(*v36 + 136);
  if (v5 != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
  {
    v4 = 0;
  }

  *a2 = v4;
  if (v5 == &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
  {
    return 1;
  }

  v35[16] = 257;
  (*(*a1 + 16))(&v41, a1, v35);
  if (v41)
  {
    LODWORD(v37) = 3;
    v38 = "expected ";
    v39 = 9;
    v6 = &v37;
    v7 = v43;
    if (v44 >= v45)
    {
      if (v43 <= &v37 && v43 + 24 * v44 > &v37)
      {
        v32 = &v37 - v43;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v7 = v43;
        v6 = (v43 + v32);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
        v6 = &v37;
        v7 = v43;
      }
    }

    v8 = &v7[24 * v44];
    v9 = *v6;
    *(v8 + 2) = v6[2];
    *v8 = v9;
    ++v44;
  }

  v37 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::TensorDataLayoutAttr]";
  v38 = 81;
  v10 = llvm::StringRef::find(&v37, "DesiredTypeName = ", 0x12uLL, 0);
  if (v41)
  {
    if (v38 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v38;
    }

    v12 = 18;
    if (v38 - v11 < 0x12)
    {
      v12 = v38 - v11;
    }

    v13 = v38 - v11 - v12;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    v40 = 261;
    v37 += v11 + v12;
    v38 = v13;
    mlir::Diagnostic::operator<<(&v42, &v37);
    if (v41)
    {
      LODWORD(v37) = 3;
      v38 = ", but got: ";
      v39 = 11;
      v14 = &v37;
      v15 = v43;
      if (v44 >= v45)
      {
        if (v43 <= &v37 && v43 + 24 * v44 > &v37)
        {
          v33 = &v37 - v43;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v15 = v43;
          v14 = (v43 + v33);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
          v14 = &v37;
          v15 = v43;
        }
      }

      v16 = &v15[24 * v44];
      v17 = *v14;
      *(v16 + 2) = v14[2];
      *v16 = v17;
      ++v44;
      if (v41)
      {
        v18 = &v37;
        mlir::DiagnosticArgument::DiagnosticArgument(&v37, v36);
        v19 = v43;
        if (v44 >= v45)
        {
          if (v43 <= &v37 && v43 + 24 * v44 > &v37)
          {
            v34 = &v37 - v43;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v19 = v43;
            v18 = (v43 + v34);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v43, v46, v44 + 1, 24);
            v18 = &v37;
            v19 = v43;
          }
        }

        v20 = &v19[24 * v44];
        v21 = *v18;
        *(v20 + 2) = v18[2];
        *v20 = v21;
        ++v44;
      }
    }
  }

  result = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v41);
  v23 = result;
  if (v41)
  {
    mlir::InFlightDiagnostic::report(&v41);
    result = v23;
  }

  if (v52 == 1)
  {
    if (v51 != &v52)
    {
      free(v51);
      result = v23;
    }

    v24 = __p;
    if (__p)
    {
      v25 = v50;
      v26 = __p;
      if (v50 != __p)
      {
        do
        {
          v25 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v25 - 1);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v50 = v24;
      operator delete(v26);
      result = v23;
    }

    v27 = v47;
    if (v47)
    {
      v28 = v48;
      v29 = v47;
      if (v48 != v47)
      {
        do
        {
          v31 = *--v28;
          v30 = v31;
          *v28 = 0;
          if (v31)
          {
            operator delete[](v30);
          }
        }

        while (v28 != v27);
        v29 = v47;
      }

      v48 = v27;
      operator delete(v29);
      result = v23;
    }

    if (v43 != v46)
    {
      free(v43);
      return v23;
    }
  }

  return result;
}

uint64_t mlir::mps::BiasAddGradOp::verifyInvariantsImpl(mlir::mps::BiasAddGradOp *this)
{
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v7 = v2;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps2(v3, "data_format", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps6(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps6(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v73 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_24;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v7 + 8);
    v15 = *(v7 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v56 = v7;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v56 + 8);
    v15 = *(v56 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v22 = v16[1];
    goto LABEL_20;
  }

LABEL_18:
  v22 = 0;
LABEL_20:
  v62[0] = a2;
  v62[1] = v22;
  v57[0] = mlir::ElementsAttr::isSplat(v62);
  if (mlir::Type::isF16(v57))
  {
    return 1;
  }

  if (mlir::Type::isF32(v57))
  {
    return 1;
  }

  isBF16 = mlir::Type::isBF16(v57);
  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (isBF16)
  {
    return 1;
  }

LABEL_24:
  v58 = 261;
  v57[0] = a3;
  v57[1] = a4;
  mlir::Operation::emitOpError(a1, v57, v62);
  if (v62[0])
  {
    v59 = 3;
    v60 = " #";
    v61 = 2;
    v25 = &v59;
    v26 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v52 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v26 = v63;
        v25 = (v63 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v25 = &v59;
        v26 = v63;
      }
    }

    v27 = &v26[24 * v64];
    v28 = *v25;
    *(v27 + 2) = *(v25 + 2);
    *v27 = v28;
    v29 = ++v64;
    if (v62[0])
    {
      v59 = 5;
      v60 = a5;
      v30 = &v59;
      v31 = v63;
      if (v29 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v29 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v31 = v63;
          v30 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v30 = &v59;
          v31 = v63;
        }
      }

      v32 = &v31[24 * v64];
      v33 = *v30;
      *(v32 + 2) = *(v30 + 2);
      *v32 = v33;
      v34 = ++v64;
      if (v62[0])
      {
        v59 = 3;
        v60 = " must be tensor of floating point values, but got ";
        v61 = 50;
        v35 = &v59;
        v36 = v63;
        if (v34 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v34 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v36 = v63;
            v35 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v35 = &v59;
            v36 = v63;
          }
        }

        v37 = &v36[24 * v64];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        ++v64;
        if (v62[0])
        {
          v39 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, a2);
          v40 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v55 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v40 = v63;
              v39 = (v63 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v39 = &v59;
              v40 = v63;
            }
          }

          v41 = &v40[24 * v64];
          v42 = *v39;
          *(v41 + 2) = *(v39 + 2);
          *v41 = v42;
          ++v64;
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
  if (v62[0])
  {
    mlir::InFlightDiagnostic::report(v62);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v70;
      v45 = __p;
      if (v70 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v70 = v43;
      operator delete(v45);
    }

    v46 = v67;
    if (v67)
    {
      v47 = v68;
      v48 = v67;
      if (v68 != v67)
      {
        do
        {
          v50 = *--v47;
          v49 = v50;
          *v47 = 0;
          if (v50)
          {
            operator delete[](v49);
          }
        }

        while (v47 != v46);
        v48 = v67;
      }

      v68 = v46;
      operator delete(v48);
    }

    if (v63 != v66)
    {
      free(v63);
    }
  }

  return v24;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v72 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_33;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v7 + 8);
    v15 = *(v7 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v55 = v7;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v55 + 8);
    v15 = *(v55 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v22 = v16[1];
    goto LABEL_20;
  }

LABEL_18:
  v22 = 0;
LABEL_20:
  v61[0] = a2;
  v61[1] = v22;
  v56[0] = mlir::ElementsAttr::isSplat(v61);
  if (mlir::Type::isSignlessInteger(v56, 1))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 16))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 32))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 64))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 8))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 16))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 32))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 64))
  {
    return 1;
  }

  if (mlir::Type::isF16(v56))
  {
    return 1;
  }

  if (mlir::Type::isF32(v56))
  {
    return 1;
  }

  if (mlir::Type::isBF16(v56))
  {
    return 1;
  }

  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (*(*v56[0] + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

LABEL_33:
  v57 = 261;
  v56[0] = a3;
  v56[1] = a4;
  mlir::Operation::emitOpError(a1, v56, v61);
  if (v61[0])
  {
    v58 = 3;
    v59 = " #";
    v60 = 2;
    v23 = &v58;
    v24 = v62;
    if (v63 >= v64)
    {
      if (v62 <= &v58 && v62 + 24 * v63 > &v58)
      {
        v51 = &v58 - v62;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v24 = v62;
        v23 = (v62 + v51);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v23 = &v58;
        v24 = v62;
      }
    }

    v25 = &v24[24 * v63];
    v26 = *v23;
    *(v25 + 2) = *(v23 + 2);
    *v25 = v26;
    v27 = ++v63;
    if (v61[0])
    {
      v58 = 5;
      v59 = a5;
      v28 = &v58;
      v29 = v62;
      if (v27 >= v64)
      {
        if (v62 <= &v58 && v62 + 24 * v27 > &v58)
        {
          v52 = &v58 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v27 + 1, 24);
          v29 = v62;
          v28 = (v62 + v52);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v27 + 1, 24);
          v28 = &v58;
          v29 = v62;
        }
      }

      v30 = &v29[24 * v63];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
      v32 = ++v63;
      if (v61[0])
      {
        v58 = 3;
        v59 = " must be tensor of mps native type values, but got ";
        v60 = 51;
        v33 = &v58;
        v34 = v62;
        if (v32 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v32 > &v58)
          {
            v53 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v32 + 1, 24);
            v34 = v62;
            v33 = (v62 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v32 + 1, 24);
            v33 = &v58;
            v34 = v62;
          }
        }

        v35 = &v34[24 * v63];
        v36 = *v33;
        *(v35 + 2) = *(v33 + 2);
        *v35 = v36;
        ++v63;
        if (v61[0])
        {
          v37 = &v58;
          mlir::DiagnosticArgument::DiagnosticArgument(&v58, a2);
          v38 = v62;
          if (v63 >= v64)
          {
            if (v62 <= &v58 && v62 + 24 * v63 > &v58)
            {
              v54 = &v58 - v62;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v38 = v62;
              v37 = (v62 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v37 = &v58;
              v38 = v62;
            }
          }

          v39 = &v38[24 * v63];
          v40 = *v37;
          *(v39 + 2) = *(v37 + 2);
          *v39 = v40;
          ++v63;
        }
      }
    }
  }

  v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
  if (v61[0])
  {
    mlir::InFlightDiagnostic::report(v61);
  }

  if (v71 == 1)
  {
    if (v70 != &v71)
    {
      free(v70);
    }

    v42 = __p;
    if (__p)
    {
      v43 = v69;
      v44 = __p;
      if (v69 != __p)
      {
        do
        {
          v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
        }

        while (v43 != v42);
        v44 = __p;
      }

      v69 = v42;
      operator delete(v44);
    }

    v45 = v66;
    if (v66)
    {
      v46 = v67;
      v47 = v66;
      if (v67 != v66)
      {
        do
        {
          v49 = *--v46;
          v48 = v49;
          *v46 = 0;
          if (v49)
          {
            operator delete[](v48);
          }
        }

        while (v46 != v45);
        v47 = v66;
      }

      v67 = v45;
      operator delete(v47);
    }

    if (v62 != v65)
    {
      free(v62);
    }
  }

  return v41;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::BiasAddGradOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.bias_add_grad", 17, a3, v10, a4, a5);
  *v11 = &unk_1F5B259E0;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

BOOL mlir::mps::BiasAddOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::TensorDataLayoutAttr>(a1, v3);
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::BiasAddOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::BiasAddOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::BiasAddOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::BiasAddOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::mps::BiasAddOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::BiasAddOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readOptionalAttribute<mlir::mps::TensorDataLayoutAttr>(a1, *(a2 + 256));
}

void mlir::mps::BiasAddOp::build(mlir::MLIRContext **a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v35 = *MEMORY[0x1E69E9840];
  v24 = a4;
  v25 = a3;
  mlir::OperationState::addOperands(a2, &v25, 1uLL);
  mlir::OperationState::addOperands(a2, &v24, 1uLL);
  v8 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v8);
  v31 = &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id;
  v32 = v8;
  __src = _ZN4llvm12function_refIFvPN4mlir3mps6detail27TensorDataLayoutAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_20TensorDataLayoutAttrEJNS2_16TensorDataLayoutEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v29 = &v31;
  v26 = a5;
  v10 = a5 ^ 0xFF51AFD7ED558CCDLL;
  v11 = 0x9DDFEA08EB382D69 * (((8 * a5) | 4) ^ v10);
  v27[0] = &v26;
  v33 = &v26;
  p_src = &__src;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id, -348639895 * ((((0x9DDFEA08EB382D69 * (v10 ^ (v11 >> 47) ^ v11)) >> 32) >> 15) ^ (-348639895 * (v10 ^ (v11 >> 47) ^ v11))), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, v27, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::TensorDataLayoutAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::TensorDataLayoutAttrStorage,mlir::mps::TensorDataLayout>(llvm::function_ref<void ()(mlir::mps::detail::TensorDataLayoutAttrStorage *)>,mlir::TypeID,mlir::mps::TensorDataLayout &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, &v33);
  v13 = *(a2 + 256);
  if (!v13)
  {
    v14 = operator new(8uLL);
    *v14 = 0;
    *(a2 + 256) = v14;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::BiasAddOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::BiasAddOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::BiasAddOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::BiasAddOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::BiasAddOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::BiasAddOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v13 = *(a2 + 256);
  }

  *v13 = ParametricStorageTypeImpl;
  __src = v30;
  v29 = 0x200000000;
  v15 = *a2;
  mlir::ValueRange::ValueRange(&v31, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(v27, *(a2 + 224), *(a2 + 232));
  v33 = v31;
  p_src = v32;
  if (v32)
  {
    v17 = *(mlir::ValueRange::dereference_iterator(&v33, 0) + 8) & 0xFFFFFFFFFFFFFFF8;
    v18 = v29;
    if (v29 >= HIDWORD(v29))
    {
      llvm::SmallVectorBase<unsigned int>::grow_pod(&__src, v30, v29 + 1, 8);
      v18 = v29;
    }

    *(__src + v18) = v17;
    v19 = v29 + 1;
    LODWORD(v29) = v19;
    v20 = __src;
    v21 = *(a2 + 72);
    v22 = v21 + v19;
    if (v22 > *(a2 + 76))
    {
LABEL_9:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v22, 8);
      LODWORD(v21) = *(a2 + 72);
    }
  }

  else
  {
    v23.var0.var0 = 1;
    if (!mlir::emitOptionalError<char const(&)[66]>(v15, v23, "invalid number of operands"))
    {
      llvm::report_fatal_error("Failed to infer result type(s).", 1);
    }

    v19 = v29;
    v20 = __src;
    v21 = *(a2 + 72);
    v22 = v21 + v29;
    if (v22 > *(a2 + 76))
    {
      goto LABEL_9;
    }
  }

  if (v19)
  {
    memcpy((*(a2 + 64) + 8 * v21), v20, 8 * v19);
    LODWORD(v21) = *(a2 + 72);
  }

  *(a2 + 72) = v21 + v19;
  if (__src != v30)
  {
    free(__src);
  }
}

void mlir::mps::BiasAddOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v13 = *(a2 + 120);
  if (a8 + v13 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, a8 + v13, 16);
    LODWORD(v13) = *(a2 + 120);
  }

  if (a8)
  {
    memcpy((*(a2 + 112) + 16 * v13), a7, 16 * a8);
    LODWORD(v13) = *(a2 + 120);
  }

  *(a2 + 120) = v13 + a8;
  v14 = *(a2 + 72);
  if (a4 + v14 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, a4 + v14, 8);
    v14 = *(a2 + 72);
  }

  if (a4)
  {
    v15 = 0;
    v16 = *(a2 + 64) + 8 * v14;
    do
    {
      *(v16 + 8 * v15) = mlir::TypeRange::dereference_iterator(a3, v15);
      ++v15;
    }

    while (a4 != v15);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + a4;
  if (a8)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      v18 = operator new(8uLL);
      *v18 = 0;
      *(a2 + 256) = v18;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::BiasAddOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::BiasAddOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &v24;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::BiasAddOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::BiasAddOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &v23;
      {
        mlir::mps::BiasAddOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::BiasAddOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v17 = *(a2 + 256);
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v20 + 144))(v20, v19, v17, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }
}

uint64_t mlir::mps::BiasAddOp::verifyInvariantsImpl(mlir::mps::BiasAddOp *this)
{
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  v7 = v2;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps2(v3, "data_format", 0xB, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps2(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, &v7) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, 1u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v4 = *this - 16;
  }

  else
  {
    v4 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps7(*this, *(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8, "result", 6, 0) & 1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::BiasAddOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.bias_add", 12, a3, v10, a4, a5);
  *v11 = &unk_1F5B25A80;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps8(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v73 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_29;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v7 + 8);
    v15 = *(v7 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v56 = v7;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v56 + 8);
    v15 = *(v56 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v22 = v16[1];
    goto LABEL_20;
  }

LABEL_18:
  v22 = 0;
LABEL_20:
  v62[0] = a2;
  v62[1] = v22;
  v57[0] = mlir::ElementsAttr::isSplat(v62);
  if (mlir::Type::isSignedInteger(v57, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v57, 16))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v57, 32))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v57, 64))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v57, 8))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v57, 16))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v57, 32))
  {
    return 1;
  }

  isUnsignedInteger = mlir::Type::isUnsignedInteger(v57, 64);
  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (isUnsignedInteger)
  {
    return 1;
  }

LABEL_29:
  v58 = 261;
  v57[0] = a3;
  v57[1] = a4;
  mlir::Operation::emitOpError(a1, v57, v62);
  if (v62[0])
  {
    v59 = 3;
    v60 = " #";
    v61 = 2;
    v25 = &v59;
    v26 = v63;
    if (v64 >= v65)
    {
      if (v63 <= &v59 && v63 + 24 * v64 > &v59)
      {
        v52 = &v59 - v63;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v26 = v63;
        v25 = (v63 + v52);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
        v25 = &v59;
        v26 = v63;
      }
    }

    v27 = &v26[24 * v64];
    v28 = *v25;
    *(v27 + 2) = *(v25 + 2);
    *v27 = v28;
    v29 = ++v64;
    if (v62[0])
    {
      v59 = 5;
      v60 = a5;
      v30 = &v59;
      v31 = v63;
      if (v29 >= v65)
      {
        if (v63 <= &v59 && v63 + 24 * v29 > &v59)
        {
          v53 = &v59 - v63;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v31 = v63;
          v30 = (v63 + v53);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v29 + 1, 24);
          v30 = &v59;
          v31 = v63;
        }
      }

      v32 = &v31[24 * v64];
      v33 = *v30;
      *(v32 + 2) = *(v30 + 2);
      *v32 = v33;
      v34 = ++v64;
      if (v62[0])
      {
        v59 = 3;
        v60 = " must be tensor of int values, but got ";
        v61 = 39;
        v35 = &v59;
        v36 = v63;
        if (v34 >= v65)
        {
          if (v63 <= &v59 && v63 + 24 * v34 > &v59)
          {
            v54 = &v59 - v63;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v36 = v63;
            v35 = (v63 + v54);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v34 + 1, 24);
            v35 = &v59;
            v36 = v63;
          }
        }

        v37 = &v36[24 * v64];
        v38 = *v35;
        *(v37 + 2) = *(v35 + 2);
        *v37 = v38;
        ++v64;
        if (v62[0])
        {
          v39 = &v59;
          mlir::DiagnosticArgument::DiagnosticArgument(&v59, a2);
          v40 = v63;
          if (v64 >= v65)
          {
            if (v63 <= &v59 && v63 + 24 * v64 > &v59)
            {
              v55 = &v59 - v63;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v40 = v63;
              v39 = (v63 + v55);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v63, v66, v64 + 1, 24);
              v39 = &v59;
              v40 = v63;
            }
          }

          v41 = &v40[24 * v64];
          v42 = *v39;
          *(v41 + 2) = *(v39 + 2);
          *v41 = v42;
          ++v64;
        }
      }
    }
  }

  v24 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v62);
  if (v62[0])
  {
    mlir::InFlightDiagnostic::report(v62);
  }

  if (v72 == 1)
  {
    if (v71 != &v72)
    {
      free(v71);
    }

    v43 = __p;
    if (__p)
    {
      v44 = v70;
      v45 = __p;
      if (v70 != __p)
      {
        do
        {
          v44 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v44 - 1);
        }

        while (v44 != v43);
        v45 = __p;
      }

      v70 = v43;
      operator delete(v45);
    }

    v46 = v67;
    if (v67)
    {
      v47 = v68;
      v48 = v67;
      if (v68 != v67)
      {
        do
        {
          v50 = *--v47;
          v49 = v50;
          *v47 = 0;
          if (v50)
          {
            operator delete[](v49);
          }
        }

        while (v47 != v46);
        v48 = v67;
      }

      v68 = v46;
      operator delete(v48);
    }

    if (v63 != v66)
    {
      free(v63);
    }
  }

  return v24;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::BitwiseAndOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.bitwise_and", 15, a3, v10, a4, a5);
  *v11 = &unk_1F5B25B20;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::BitwiseLeftShiftOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.bitwise_left_shift", 22, a3, v10, a4, a5);
  *v11 = &unk_1F5B25BC0;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::BitwiseNotOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.bitwise_not", 15, a3, v10, a4, a5);
  *v11 = &unk_1F5B25C60;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::BitwiseOrOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.bitwise_or", 14, a3, v10, a4, a5);
  *v11 = &unk_1F5B25D00;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::BitwisePopcountOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.bitwise_popcount", 20, a3, v10, a4, a5);
  *v11 = &unk_1F5B25DA0;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::BitwiseRightShiftOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.bitwise_right_shift", 23, a3, v10, a4, a5);
  *v11 = &unk_1F5B25E40;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::BitwiseXorOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.bitwise_xor", 15, a3, v10, a4, a5);
  *v11 = &unk_1F5B25EE0;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

void mlir::mps::BroadcastGradientArgsOp::build(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v19 = a4;
  v20 = a3;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  __src = v25;
  v24 = 0x200000000;
  v6 = *a1;
  v7 = *a2;
  mlir::ValueRange::ValueRange(v22, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v21, *(a2 + 224), *(a2 + 232));
  v9.var0.var0 = 1;
  if (!mlir::mps::BroadcastGradientArgsOp::inferReturnTypes(v6, v7, v9, v22[0], v22[1], v10, v11, v12, v17, v18, &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v13 = __src;
  v14 = v24;
  v15 = *(a2 + 72);
  v16 = v15 + v24;
  if (v16 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v16, 8);
    LODWORD(v15) = *(a2 + 72);
  }

  if (v14)
  {
    memcpy((*(a2 + 64) + 8 * v15), v13, 8 * v14);
    LODWORD(v15) = *(a2 + 72);
  }

  *(a2 + 72) = v15 + v14;
  if (__src != v25)
  {
    free(__src);
  }
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::BroadcastGradientArgsOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.broadcast_gradient_args", 27, a3, v10, a4, a5);
  *v11 = &unk_1F5B25F80;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

void mlir::mps::BroadcastToOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a5;
  v9 = a4;
  mlir::OperationState::addOperands(a2, &v9, 1uLL);
  mlir::OperationState::addOperands(a2, &v8, 1uLL);
  v7 = *(a2 + 72);
  if (v7 >= *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v7 + 1, 8);
    LODWORD(v7) = *(a2 + 72);
  }

  *(*(a2 + 64) + 8 * v7) = a3;
  ++*(a2 + 72);
}

void mlir::mps::BroadcastToOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v18 = a4;
  v19 = a3;
  mlir::OperationState::addOperands(a2, &v19, 1uLL);
  mlir::OperationState::addOperands(a2, &v18, 1uLL);
  __src = v24;
  v23 = 0x200000000;
  v5 = *a2;
  mlir::ValueRange::ValueRange(v21, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v7 = mlir::ValueRange::ValueRange(&v20, *(a2 + 224), *(a2 + 232));
  v8.var0.var0 = 1;
  if (!mlir::mps::BroadcastToOp::inferReturnTypes(v7, v5, v8, v21[0], v21[1], v9, v10, v11, v16, v17, &__src))
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v12 = __src;
  v13 = v23;
  v14 = *(a2 + 72);
  v15 = v14 + v23;
  if (v15 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v15, 8);
    LODWORD(v14) = *(a2 + 72);
  }

  if (v13)
  {
    memcpy((*(a2 + 64) + 8 * v14), v12, 8 * v13);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + v13;
  if (__src != v24)
  {
    free(__src);
  }
}

void mlir::mps::BroadcastToOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a6;
  v13 = a5;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  mlir::OperationState::addOperands(a2, &v12, 1uLL);
  v9 = *(a2 + 72);
  if (a4 + v9 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, a4 + v9, 8);
    v9 = *(a2 + 72);
  }

  if (a4)
  {
    v10 = 0;
    v11 = *(a2 + 64) + 8 * v9;
    do
    {
      *(v11 + 8 * v10) = mlir::TypeRange::dereference_iterator(a3, v10);
      ++v10;
    }

    while (a4 != v10);
    LODWORD(v9) = *(a2 + 72);
  }

  *(a2 + 72) = v9 + a4;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::BroadcastToOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.broadcast_to", 16, a3, v10, a4, a5);
  *v11 = &unk_1F5B26020;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t mlir::mps::CallOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v75 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v60 = v6;
  if (!v6)
  {
    a3(v64, a4);
    if (v64[0])
    {
      v61 = 3;
      v62 = "expected DictionaryAttr to set properties";
      v63 = 41;
      v26 = &v61;
      v27 = v65;
      if (v66 >= v67)
      {
        if (v65 <= &v61 && v65 + 24 * v66 > &v61)
        {
          v55 = &v61 - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
          v27 = v65;
          v26 = (v65 + v55);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
          v26 = &v61;
          v27 = v65;
        }
      }

      v28 = &v27[24 * v66];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v66;
      if (v64[0])
      {
        mlir::InFlightDiagnostic::report(v64);
      }
    }

    if (v74 != 1)
    {
      return 0;
    }

    if (v73 != &v74)
    {
      free(v73);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v72;
      v32 = __p;
      if (v72 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v72 = v30;
      operator delete(v32);
    }

    v21 = v69;
    if (!v69)
    {
      goto LABEL_74;
    }

    v33 = v70;
    v23 = v69;
    if (v70 == v69)
    {
      goto LABEL_73;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
    goto LABEL_72;
  }

  v76.var0 = "inlineMode";
  v76.var1 = 10;
  v8 = mlir::DictionaryAttr::get(&v60, v76);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id)
    {
      v9 = v8;
      a3(v64, a4);
      if (v64[0])
      {
        v61 = 3;
        v63 = 55;
        v10 = &v61;
        v11 = v65;
        if (v66 >= v67)
        {
          if (v65 <= &v61 && v65 + 24 * v66 > &v61)
          {
            v56 = &v61 - v65;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
            v11 = v65;
            v10 = (v65 + v56);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
            v10 = &v61;
            v11 = v65;
          }
        }

        v12 = &v11[24 * v66];
        v13 = *v10;
        *(v12 + 2) = *(v10 + 2);
        *v12 = v13;
        ++v66;
        if (v64[0])
        {
          v14 = &v61;
          mlir::DiagnosticArgument::DiagnosticArgument(&v61, v9);
          v15 = v65;
          if (v66 >= v67)
          {
            if (v65 <= &v61 && v65 + 24 * v66 > &v61)
            {
              v58 = &v61 - v65;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v15 = v65;
              v14 = (v65 + v58);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
              v14 = &v61;
              v15 = v65;
            }
          }

          v16 = &v15[24 * v66];
          v17 = *v14;
          *(v16 + 2) = *(v14 + 2);
          *v16 = v17;
          ++v66;
          if (v64[0])
          {
            mlir::InFlightDiagnostic::report(v64);
          }
        }
      }

      if ((v74 & 1) == 0)
      {
        return 0;
      }

      if (v73 != &v74)
      {
        free(v73);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v72;
        v20 = __p;
        if (v72 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v72 = v18;
        operator delete(v20);
      }

      v21 = v69;
      if (!v69)
      {
        goto LABEL_74;
      }

      v22 = v70;
      v23 = v69;
      if (v70 == v69)
      {
        goto LABEL_73;
      }

      do
      {
        v25 = *--v22;
        v24 = v25;
        *v22 = 0;
        if (v25)
        {
          operator delete[](v24);
        }
      }

      while (v22 != v21);
      goto LABEL_72;
    }

    *a1 = v8;
  }

  v77.var0 = "symbolName";
  v77.var1 = 10;
  v36 = mlir::DictionaryAttr::get(&v60, v77);
  if (!v36)
  {
    return 1;
  }

  v37 = v36;
  if (*(*v36 + 136) == &mlir::detail::TypeIDResolver<mlir::SymbolRefAttr,void>::id)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0;
  }

  v64[0] = v38;
  if (v38)
  {
    mlir::OpaqueAttr::getAttrData(v64);
    if (!v39)
    {
      a1[1] = v37;
      return 1;
    }
  }

  a3(v64, a4);
  if (v64[0])
  {
    v61 = 3;
    v63 = 55;
    v40 = &v61;
    v41 = v65;
    if (v66 >= v67)
    {
      if (v65 <= &v61 && v65 + 24 * v66 > &v61)
      {
        v57 = &v61 - v65;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v41 = v65;
        v40 = (v65 + v57);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
        v40 = &v61;
        v41 = v65;
      }
    }

    v42 = &v41[24 * v66];
    v43 = *v40;
    *(v42 + 2) = *(v40 + 2);
    *v42 = v43;
    ++v66;
    if (v64[0])
    {
      v44 = &v61;
      mlir::DiagnosticArgument::DiagnosticArgument(&v61, v37);
      v45 = v65;
      if (v66 >= v67)
      {
        if (v65 <= &v61 && v65 + 24 * v66 > &v61)
        {
          v59 = &v61 - v65;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
          v45 = v65;
          v44 = (v65 + v59);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v65, v68, v66 + 1, 24);
          v44 = &v61;
          v45 = v65;
        }
      }

      v46 = &v45[24 * v66];
      v47 = *v44;
      *(v46 + 2) = *(v44 + 2);
      *v46 = v47;
      ++v66;
      if (v64[0])
      {
        mlir::InFlightDiagnostic::report(v64);
      }
    }
  }

  if (v74)
  {
    if (v73 != &v74)
    {
      free(v73);
    }

    v48 = __p;
    if (__p)
    {
      v49 = v72;
      v50 = __p;
      if (v72 != __p)
      {
        do
        {
          v49 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v49 - 1);
        }

        while (v49 != v48);
        v50 = __p;
      }

      v72 = v48;
      operator delete(v50);
    }

    v21 = v69;
    if (!v69)
    {
      goto LABEL_74;
    }

    v51 = v70;
    v23 = v69;
    if (v70 == v69)
    {
LABEL_73:
      v70 = v21;
      operator delete(v23);
LABEL_74:
      if (v65 != v68)
      {
        free(v65);
      }

      return 0;
    }

    do
    {
      v53 = *--v51;
      v52 = v53;
      *v51 = 0;
      if (v53)
      {
        operator delete[](v52);
      }
    }

    while (v51 != v21);
LABEL_72:
    v23 = v69;
    goto LABEL_73;
  }

  return 0;
}

uint64_t mlir::mps::CallOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v23[6] = *MEMORY[0x1E69E9840];
  v20 = a1;
  v21 = v23;
  v22 = 0x300000000;
  if (*a2)
  {
    NamedAttr = mlir::Builder::getNamedAttr(&v20, "inlineMode", 10, *a2);
    v5 = v22;
    if (v22 >= HIDWORD(v22))
    {
      v16 = NamedAttr;
      v17 = v4;
      llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
      v4 = v17;
      NamedAttr = v16;
      v5 = v22;
    }

    v6 = (v21 + 16 * v5);
    *v6 = NamedAttr;
    v6[1] = v4;
    v7 = v22 + 1;
    LODWORD(v22) = v22 + 1;
    v8 = a2[1];
    if (!v8)
    {
LABEL_5:
      v9 = v21;
      if (v7)
      {
        goto LABEL_6;
      }

LABEL_13:
      DictionaryAttr = 0;
      if (v9 == v23)
      {
        return DictionaryAttr;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    v8 = a2[1];
    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v12 = mlir::Builder::getNamedAttr(&v20, "symbolName", 10, v8);
  v14 = v22;
  if (v22 >= HIDWORD(v22))
  {
    v18 = v12;
    v19 = v13;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v21, v23, v22 + 1, 16);
    v13 = v19;
    v12 = v18;
    v14 = v22;
  }

  v15 = (v21 + 16 * v14);
  *v15 = v12;
  v15[1] = v13;
  v7 = v22 + 1;
  LODWORD(v22) = v7;
  v9 = v21;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_6:
  DictionaryAttr = mlir::Builder::getDictionaryAttr(&v20, v9, v7);
  v9 = v21;
  if (v21 != v23)
  {
LABEL_7:
    free(v9);
  }

  return DictionaryAttr;
}

uint64_t mlir::mps::__mlir_ods_local_attr_constraint_MPSOps4(uint64_t a1, void *a2, const char *a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!a1 || *(*a1 + 136) == &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id)
  {
    return 1;
  }

  a4(&v31, a5);
  if (v31)
  {
    LODWORD(v27) = 3;
    v28 = "attribute '";
    v29 = 11;
    v7 = &v27;
    v8 = v33;
    if (v34 >= v35)
    {
      if (v33 <= &v27 && v33 + 24 * v34 > &v27)
      {
        v25 = &v27 - v33;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v8 = v33;
        v7 = v33 + v25;
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
        v7 = &v27;
        v8 = v33;
      }
    }

    v9 = &v8[24 * v34];
    v10 = *v7;
    *(v9 + 2) = *(v7 + 2);
    *v9 = v10;
    ++v34;
    if (v31)
    {
      v30 = 261;
      v27 = a2;
      v28 = a3;
      mlir::Diagnostic::operator<<(&v32, &v27);
      if (v31)
      {
        LODWORD(v27) = 3;
        v28 = "' failed to satisfy constraint: valid CallInlineMode";
        v29 = 52;
        v11 = &v27;
        v12 = v33;
        if (v34 >= v35)
        {
          if (v33 <= &v27 && v33 + 24 * v34 > &v27)
          {
            v26 = &v27 - v33;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v12 = v33;
            v11 = v33 + v26;
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v33, v36, v34 + 1, 24);
            v11 = &v27;
            v12 = v33;
          }
        }

        v13 = &v12[24 * v34];
        v14 = *v11;
        *(v13 + 2) = *(v11 + 2);
        *v13 = v14;
        ++v34;
      }
    }
  }

  v15 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(&v31);
  if (v31)
  {
    mlir::InFlightDiagnostic::report(&v31);
  }

  if (v42 == 1)
  {
    if (v41 != &v42)
    {
      free(v41);
    }

    v16 = __p;
    if (__p)
    {
      v17 = v40;
      v18 = __p;
      if (v40 != __p)
      {
        do
        {
          v17 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v17 - 1);
        }

        while (v17 != v16);
        v18 = __p;
      }

      v40 = v16;
      operator delete(v18);
    }

    v19 = v37;
    if (v37)
    {
      v20 = v38;
      v21 = v37;
      if (v38 != v37)
      {
        do
        {
          v23 = *--v20;
          v22 = v23;
          *v20 = 0;
          if (v23)
          {
            operator delete[](v22);
          }
        }

        while (v20 != v19);
        v21 = v37;
      }

      v38 = v19;
      operator delete(v21);
    }

    if (v33 != v36)
    {
      free(v33);
    }
  }

  return v15;
}

uint64_t mlir::mps::CallOp::getSymbolName(mlir::mps::CallOp *this)
{
  v2 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 72);
  Value = mlir::AffineMapAttr::getValue(&v2);
  return mlir::OpaqueAttr::getAttrData(&Value);
}

void mlir::mps::CallOp::build(mlir::StringAttr **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  v15 = mlir::SymbolRefAttr::get(*a1, a7, a8);
  v16 = *(a2 + 256);
  if (!v16)
  {
    v17 = operator new(0x10uLL);
    *v17 = 0;
    v17[1] = 0;
    *(a2 + 256) = v17;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = v34;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = v34;
    {
      mlir::mps::CallOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::CallOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v16 = *(a2 + 256);
  }

  *(v16 + 8) = v15;
  v18 = *a1;
  AttributeUniquer = mlir::MLIRContext::getAttributeUniquer(v18);
  v30[0] = &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id;
  v30[1] = v18;
  v34[0] = _ZN4llvm12function_refIFvPN4mlir3mps6detail25CallInlineModeAttrStorageEEE11callback_fnIZNS1_6detail16AttributeUniquer13getWithTypeIDINS2_18CallInlineModeAttrEJNS2_14CallInlineModeEEEENSt3__19enable_ifIXntsr3std7is_sameINT_8ImplTypeENS1_16AttributeStorageEEE5valueESG_E4typeEPNS1_11MLIRContextENS1_6TypeIDEDpOT0_EUlPSI_E_EEvlS5_;
  v34[1] = v30;
  v33 = a9;
  v20 = 0x9DDFEA08EB382D69 * (((8 * a9) | 4) ^ a9 ^ 0xFF51AFD7ED558CCDLL);
  v21 = 0x9DDFEA08EB382D69 * (a9 ^ 0xFF51AFD7ED558CCDLL ^ (v20 >> 47) ^ v20);
  v31[0] = &v33;
  v31[1] = v34;
  v32 = &v33;
  ParametricStorageTypeImpl = mlir::StorageUniquer::getParametricStorageTypeImpl(AttributeUniquer, &mlir::detail::TypeIDResolver<mlir::mps::CallInlineModeAttr,void>::id, -348639895 * ((v21 >> 47) ^ v21), llvm::function_ref<BOOL ()(mlir::StorageUniquer::BaseStorage const*)>::callback_fn<mlir::mps::detail::CallInlineModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CallInlineModeAttrStorage,mlir::mps::CallInlineMode>(llvm::function_ref<void ()(mlir::mps::detail::CallInlineModeAttrStorage *)>,mlir::TypeID,mlir::mps::CallInlineMode &&)::{lambda(mlir::StorageUniquer::BaseStorage const*)#1}>, &v32, llvm::function_ref<mlir::StorageUniquer::BaseStorage * ()(mlir::StorageUniquer::StorageAllocator &)>::callback_fn<mlir::mps::detail::CallInlineModeAttrStorage * mlir::StorageUniquer::get<mlir::mps::detail::CallInlineModeAttrStorage,mlir::mps::CallInlineMode>(llvm::function_ref<void ()(mlir::mps::detail::CallInlineModeAttrStorage *)>,mlir::TypeID,mlir::mps::CallInlineMode &&)::{lambda(mlir::StorageUniquer::StorageAllocator &)#1}>, v31);
  v23 = ParametricStorageTypeImpl;
  v24 = *(a2 + 256);
  if (v24)
  {
    *v24 = ParametricStorageTypeImpl;
    v25 = *(a2 + 72);
    v26 = a4 + v25;
    if (a4 + v25 <= *(a2 + 76))
    {
      goto LABEL_7;
    }

LABEL_12:
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v26, 8);
    v25 = *(a2 + 72);
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v27 = operator new(0x10uLL);
  *v27 = 0;
  v27[1] = 0;
  *(a2 + 256) = v27;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = v34;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CallOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CallOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = v34;
  {
    mlir::mps::CallOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::CallOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  **(a2 + 256) = v23;
  v25 = *(a2 + 72);
  v26 = a4 + v25;
  if (a4 + v25 > *(a2 + 76))
  {
    goto LABEL_12;
  }

LABEL_7:
  if (!a4)
  {
    goto LABEL_16;
  }

LABEL_13:
  v28 = 0;
  v29 = *(a2 + 64) + 8 * v25;
  do
  {
    *(v29 + 8 * v28) = mlir::TypeRange::dereference_iterator(a3, v28);
    ++v28;
  }

  while (a4 != v28);
  LODWORD(v25) = *(a2 + 72);
LABEL_16:
  *(a2 + 72) = v25 + a4;
}

uint64_t mlir::mps::CallOp::verifyInvariantsImpl(mlir::mps::CallOp *this)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *this + 16 * ((*(*this + 44) >> 23) & 1);
  v6 = *(v3 + 64);
  v4 = v3 + 64;
  v5 = v6;
  if (!v6)
  {
    v28[0] = "requires attribute 'inlineMode'";
    v29 = 259;
    mlir::OpState::emitOpError(this, v28, v30);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    if (*v30)
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v38 != 1)
    {
      return v12;
    }

    if (v37 != &v38)
    {
      free(v37);
    }

    v13 = __p;
    if (__p)
    {
      v14 = v36;
      v15 = __p;
      if (v36 != __p)
      {
        do
        {
          v14 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v14 - 1);
        }

        while (v14 != v13);
        v15 = __p;
      }

      v36 = v13;
      operator delete(v15);
    }

    v16 = v33;
    if (v33)
    {
      v17 = v34;
      v18 = v33;
      if (v34 == v33)
      {
        goto LABEL_46;
      }

      do
      {
        v20 = *--v17;
        v19 = v20;
        *v17 = 0;
        if (v20)
        {
          operator delete[](v19);
        }
      }

      while (v17 != v16);
LABEL_45:
      v18 = v33;
LABEL_46:
      v34 = v16;
      operator delete(v18);
    }

LABEL_47:
    if (v31 != &v32)
    {
      free(v31);
    }

    return v12;
  }

  v7 = *(v4 + 8);
  if (!v7)
  {
    v28[0] = "requires attribute 'symbolName'";
    v29 = 259;
    mlir::OpState::emitOpError(this, v28, v30);
    v12 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v30);
    if (*v30)
    {
      mlir::InFlightDiagnostic::report(v30);
    }

    if (v38 != 1)
    {
      return v12;
    }

    if (v37 != &v38)
    {
      free(v37);
    }

    v21 = __p;
    if (__p)
    {
      v22 = v36;
      v23 = __p;
      if (v36 != __p)
      {
        do
        {
          v22 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v22 - 1);
        }

        while (v22 != v21);
        v23 = __p;
      }

      v36 = v21;
      operator delete(v23);
    }

    v16 = v33;
    if (v33)
    {
      v24 = v34;
      v18 = v33;
      if (v34 == v33)
      {
        goto LABEL_46;
      }

      do
      {
        v26 = *--v24;
        v25 = v26;
        *v24 = 0;
        if (v26)
        {
          operator delete[](v25);
        }
      }

      while (v24 != v16);
      goto LABEL_45;
    }

    goto LABEL_47;
  }

  *v30 = v2;
  if ((mlir::func::__mlir_ods_local_attr_constraint_FuncOps1(v7, "symbolName", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps3(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30) & 1) == 0)
  {
    return 0;
  }

  *v30 = *this;
  if ((mlir::mps::__mlir_ods_local_attr_constraint_MPSOps4(v5, "inlineMode", 0xA, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps4(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v30) & 1) == 0)
  {
    return 0;
  }

  v8 = *this;
  if ((*(*this + 46) & 0x80) != 0)
  {
    v9 = *(v8 + 68);
    if (v9)
    {
      v10 = 0;
      v11 = *(v8 + 72) + 24;
      while ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps9(*this, *(*v11 + 8) & 0xFFFFFFFFFFFFFFF8, "operand", 7, v10) & 1) != 0)
      {
        ++v10;
        v11 += 32;
        if (v9 == v10)
        {
          v8 = *this;
          goto LABEL_11;
        }
      }

      return 0;
    }
  }

LABEL_11:
  mlir::mps::CallOp::verifyInvariantsImpl(this, v8, v30);
  return v30[0];
}

uint64_t mlir::mps::__mlir_ods_local_type_constraint_MPSOps9(uint64_t a1, uint64_t a2, void *a3, void *a4, unsigned int a5)
{
  v72 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  v8 = *(*a2 + 136);
  if (v8 != &mlir::detail::TypeIDResolver<mlir::RankedTensorType,void>::id && v8 != &mlir::detail::TypeIDResolver<mlir::UnrankedTensorType,void>::id)
  {
    goto LABEL_33;
  }

  v10 = a1;
  v11 = a4;
  v12 = a3;
  {
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v7 + 8);
    v15 = *(v7 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v55 = v7;
    getTypeIfLikeOrMemRef<mlir::IntegerType,mlir::IndexType,mlir::FloatType>();
    v13 = mlir::detail::TypeIDResolver<mlir::ShapedType,void>::resolveTypeID(void)::id;
    v14 = *(v55 + 8);
    v15 = *(v55 + 16);
    if (!v15)
    {
      goto LABEL_18;
    }
  }

  v16 = v14;
  v17 = v15;
  do
  {
    v18 = v17 >> 1;
    v19 = &v16[2 * (v17 >> 1)];
    v21 = *v19;
    v20 = v19 + 2;
    v17 += ~(v17 >> 1);
    if (v21 < v13)
    {
      v16 = v20;
    }

    else
    {
      v17 = v18;
    }
  }

  while (v17);
  if (v16 != &v14[2 * v15] && *v16 == v13)
  {
    v22 = v16[1];
    goto LABEL_20;
  }

LABEL_18:
  v22 = 0;
LABEL_20:
  v61[0] = a2;
  v61[1] = v22;
  v56[0] = mlir::ElementsAttr::isSplat(v61);
  if (mlir::Type::isSignlessInteger(v56, 1))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 8))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 16))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 32))
  {
    return 1;
  }

  if (mlir::Type::isSignedInteger(v56, 64))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 8))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 16))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 32))
  {
    return 1;
  }

  if (mlir::Type::isUnsignedInteger(v56, 64))
  {
    return 1;
  }

  if (mlir::Type::isF16(v56))
  {
    return 1;
  }

  if (mlir::Type::isF32(v56))
  {
    return 1;
  }

  if (mlir::Type::isBF16(v56))
  {
    return 1;
  }

  a1 = v10;
  a4 = v11;
  a3 = v12;
  if (*(*v56[0] + 136) == &mlir::detail::TypeIDResolver<mlir::IndexType,void>::id)
  {
    return 1;
  }

LABEL_33:
  v57 = 261;
  v56[0] = a3;
  v56[1] = a4;
  mlir::Operation::emitOpError(a1, v56, v61);
  if (v61[0])
  {
    v58 = 3;
    v59 = " #";
    v60 = 2;
    v23 = &v58;
    v24 = v62;
    if (v63 >= v64)
    {
      if (v62 <= &v58 && v62 + 24 * v63 > &v58)
      {
        v51 = &v58 - v62;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v24 = v62;
        v23 = (v62 + v51);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
        v23 = &v58;
        v24 = v62;
      }
    }

    v25 = &v24[24 * v63];
    v26 = *v23;
    *(v25 + 2) = *(v23 + 2);
    *v25 = v26;
    v27 = ++v63;
    if (v61[0])
    {
      v58 = 5;
      v59 = a5;
      v28 = &v58;
      v29 = v62;
      if (v27 >= v64)
      {
        if (v62 <= &v58 && v62 + 24 * v27 > &v58)
        {
          v52 = &v58 - v62;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v27 + 1, 24);
          v29 = v62;
          v28 = (v62 + v52);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v27 + 1, 24);
          v28 = &v58;
          v29 = v62;
        }
      }

      v30 = &v29[24 * v63];
      v31 = *v28;
      *(v30 + 2) = *(v28 + 2);
      *v30 = v31;
      v32 = ++v63;
      if (v61[0])
      {
        v58 = 3;
        v59 = " must be variadic of tensor of mps native type values, but got ";
        v60 = 63;
        v33 = &v58;
        v34 = v62;
        if (v32 >= v64)
        {
          if (v62 <= &v58 && v62 + 24 * v32 > &v58)
          {
            v53 = &v58 - v62;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v32 + 1, 24);
            v34 = v62;
            v33 = (v62 + v53);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v32 + 1, 24);
            v33 = &v58;
            v34 = v62;
          }
        }

        v35 = &v34[24 * v63];
        v36 = *v33;
        *(v35 + 2) = *(v33 + 2);
        *v35 = v36;
        ++v63;
        if (v61[0])
        {
          v37 = &v58;
          mlir::DiagnosticArgument::DiagnosticArgument(&v58, a2);
          v38 = v62;
          if (v63 >= v64)
          {
            if (v62 <= &v58 && v62 + 24 * v63 > &v58)
            {
              v54 = &v58 - v62;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v38 = v62;
              v37 = (v62 + v54);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v62, v65, v63 + 1, 24);
              v37 = &v58;
              v38 = v62;
            }
          }

          v39 = &v38[24 * v63];
          v40 = *v37;
          *(v39 + 2) = *(v37 + 2);
          *v39 = v40;
          ++v63;
        }
      }
    }
  }

  v41 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v61);
  if (v61[0])
  {
    mlir::InFlightDiagnostic::report(v61);
  }

  if (v71 == 1)
  {
    if (v70 != &v71)
    {
      free(v70);
    }

    v42 = __p;
    if (__p)
    {
      v43 = v69;
      v44 = __p;
      if (v69 != __p)
      {
        do
        {
          v43 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v43 - 1);
        }

        while (v43 != v42);
        v44 = __p;
      }

      v69 = v42;
      operator delete(v44);
    }

    v45 = v66;
    if (v66)
    {
      v46 = v67;
      v47 = v66;
      if (v67 != v66)
      {
        do
        {
          v49 = *--v46;
          v48 = v49;
          *v46 = 0;
          if (v49)
          {
            operator delete[](v48);
          }
        }

        while (v46 != v45);
        v47 = v66;
      }

      v67 = v45;
      operator delete(v47);
    }

    if (v62 != v65)
    {
      free(v62);
    }
  }

  return v41;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::CallOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.call", 8, a3, v10, a4, a5);
  *v11 = &unk_1F5B260C0;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t mlir::mps::CastOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v40 = v6;
  if (!v6)
  {
    a3(v44, a4);
    if (v44[0])
    {
      v41 = 3;
      v42 = "expected DictionaryAttr to set properties";
      v43 = 41;
      v26 = &v41;
      v27 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v37 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v27 = v45;
          v26 = (v45 + v37);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v26 = &v41;
          v27 = v45;
        }
      }

      v28 = &v27[24 * v46];
      v29 = *v26;
      *(v28 + 2) = *(v26 + 2);
      *v28 = v29;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }

    if (v54 != 1)
    {
      return 0;
    }

    if (v53 != &v54)
    {
      free(v53);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v52;
      v32 = __p;
      if (v52 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v52 = v30;
      operator delete(v32);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v33 = v50;
    v23 = v49;
    if (v50 == v49)
    {
      goto LABEL_48;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
    goto LABEL_47;
  }

  v56.var0 = "resultElementType";
  v56.var1 = 17;
  v8 = mlir::DictionaryAttr::get(&v40, v56);
  if (!v8)
  {
    return 1;
  }

  if (*(*v8 + 136) == &mlir::detail::TypeIDResolver<mlir::TypeAttr,void>::id)
  {
    *a1 = v8;
    return 1;
  }

  v9 = v8;
  a3(v44, a4);
  if (v44[0])
  {
    v41 = 3;
    v43 = 62;
    v10 = &v41;
    v11 = v45;
    if (v46 >= v47)
    {
      if (v45 <= &v41 && v45 + 24 * v46 > &v41)
      {
        v38 = &v41 - v45;
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v11 = v45;
        v10 = (v45 + v38);
      }

      else
      {
        llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
        v10 = &v41;
        v11 = v45;
      }
    }

    v12 = &v11[24 * v46];
    v13 = *v10;
    *(v12 + 2) = *(v10 + 2);
    *v12 = v13;
    ++v46;
    if (v44[0])
    {
      v14 = &v41;
      mlir::DiagnosticArgument::DiagnosticArgument(&v41, v9);
      v15 = v45;
      if (v46 >= v47)
      {
        if (v45 <= &v41 && v45 + 24 * v46 > &v41)
        {
          v39 = &v41 - v45;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v15 = v45;
          v14 = (v45 + v39);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v45, v48, v46 + 1, 24);
          v14 = &v41;
          v15 = v45;
        }
      }

      v16 = &v15[24 * v46];
      v17 = *v14;
      *(v16 + 2) = *(v14 + 2);
      *v16 = v17;
      ++v46;
      if (v44[0])
      {
        mlir::InFlightDiagnostic::report(v44);
      }
    }
  }

  if (v54)
  {
    if (v53 != &v54)
    {
      free(v53);
    }

    v18 = __p;
    if (__p)
    {
      v19 = v52;
      v20 = __p;
      if (v52 != __p)
      {
        do
        {
          v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
        }

        while (v19 != v18);
        v20 = __p;
      }

      v52 = v18;
      operator delete(v20);
    }

    v21 = v49;
    if (!v49)
    {
      goto LABEL_49;
    }

    v22 = v50;
    v23 = v49;
    if (v50 == v49)
    {
LABEL_48:
      v50 = v21;
      operator delete(v23);
LABEL_49:
      if (v45 != v48)
      {
        free(v45);
      }

      return 0;
    }

    do
    {
      v25 = *--v22;
      v24 = v25;
      *v22 = 0;
      if (v25)
      {
        operator delete[](v24);
      }
    }

    while (v22 != v21);
LABEL_47:
    v23 = v49;
    goto LABEL_48;
  }

  return 0;
}

uint64_t mlir::mps::CastOp::getPropertiesAsAttr(mlir::DictionaryAttr *a1, uint64_t *a2)
{
  v16[6] = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = v16;
  v15 = 0x300000000;
  if (!*a2)
  {
    return 0;
  }

  NamedAttr = mlir::Builder::getNamedAttr(&v13, "resultElementType", 17, *a2);
  v4 = v15;
  if (v15 >= HIDWORD(v15))
  {
    v11 = NamedAttr;
    v12 = v3;
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v14, v16, v15 + 1, 16);
    v3 = v12;
    NamedAttr = v11;
    v4 = v15;
  }

  v5 = (v14 + 16 * v4);
  *v5 = NamedAttr;
  v5[1] = v3;
  v6 = v14;
  v7 = __CFADD__(v15, 1);
  v8 = (v15 + 1);
  LODWORD(v15) = v15 + 1;
  if (v7)
  {
    result = 0;
    if (v14 != v16)
    {
LABEL_10:
      v10 = result;
      free(v6);
      return v10;
    }
  }

  else
  {
    result = mlir::Builder::getDictionaryAttr(&v13, v14, v8);
    v6 = v14;
    if (v14 != v16)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t mlir::mps::CastOp::readProperties(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  if (v3)
  {
    return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, v3) & 1;
  }

  v6 = operator new(8uLL);
  *v6 = 0;
  *(a2 + 256) = v6;
  *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
  *(a2 + 280) = &v8;
  *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
  *(a2 + 296) = &v7;
  {
    mlir::mps::CastOp::readProperties();
  }

  *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::CastOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
  return mlir::DialectBytecodeReader::readAttribute<mlir::TypeAttr>(a1, *(a2 + 256)) & 1;
}

void mlir::mps::CastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a4;
  mlir::OperationState::addOperands(a2, &v11, 1uLL);
  v8 = *(a2 + 256);
  if (v8)
  {
    *v8 = a5;
    v9 = *(a2 + 72);
    if (v9 >= *(a2 + 76))
    {
LABEL_3:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v9 + 1, 8);
      LODWORD(v9) = *(a2 + 72);
    }
  }

  else
  {
    v10 = operator new(8uLL);
    *v10 = 0;
    *(a2 + 256) = v10;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v13;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v12;
    {
      mlir::mps::CastOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::CastOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    **(a2 + 256) = a5;
    v9 = *(a2 + 72);
    if (v9 >= *(a2 + 76))
    {
      goto LABEL_3;
    }
  }

  *(*(a2 + 64) + 8 * v9) = a3;
  ++*(a2 + 72);
}

{
  v13 = a4;
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  v8 = mlir::TypeAttr::get(a5);
  v9 = v8;
  v10 = *(a2 + 256);
  if (v10)
  {
    *v10 = v8;
    v11 = *(a2 + 72);
    if (v11 >= *(a2 + 76))
    {
LABEL_3:
      llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v11 + 1, 8);
      LODWORD(v11) = *(a2 + 72);
    }
  }

  else
  {
    v12 = operator new(8uLL);
    *v12 = 0;
    *(a2 + 256) = v12;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &v15;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &v14;
    {
      mlir::mps::CastOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::CastOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    **(a2 + 256) = v9;
    v11 = *(a2 + 72);
    if (v11 >= *(a2 + 76))
    {
      goto LABEL_3;
    }
  }

  *(*(a2 + 64) + 8 * v11) = a3;
  ++*(a2 + 72);
}

void mlir::mps::CastOp::build(mlir::UnknownLoc **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v20 = a3;
  mlir::OperationState::addOperands(a2, &v20, 1uLL);
  v7 = *(a2 + 256);
  if (!v7)
  {
    v8 = operator new(8uLL);
    *v8 = 0;
    *(a2 + 256) = v8;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::CastOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::CastOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v7 = *(a2 + 256);
  }

  *v7 = a4;
  __src = v25;
  v24 = 0x200000000;
  v9 = *a1;
  mlir::ValueRange::ValueRange(v22, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v12 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v21, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::CastOp::inferReturnTypes(v9, v13, v14, v22[0], v22[1], Dictionary, v12, v15, v21[0], v21[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v16 = __src;
  v17 = v24;
  v18 = *(a2 + 72);
  v19 = v18 + v24;
  if (v19 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v19, 8);
    LODWORD(v18) = *(a2 + 72);
  }

  if (v17)
  {
    memcpy((*(a2 + 64) + 8 * v18), v16, 8 * v17);
    LODWORD(v18) = *(a2 + 72);
  }

  *(a2 + 72) = v18 + v17;
  if (__src != v25)
  {
    free(__src);
  }
}

{
  v26[2] = *MEMORY[0x1E69E9840];
  v21 = a3;
  mlir::OperationState::addOperands(a2, &v21, 1uLL);
  v7 = mlir::TypeAttr::get(a4);
  v8 = *(a2 + 256);
  if (!v8)
  {
    v9 = operator new(8uLL);
    *v9 = 0;
    *(a2 + 256) = v9;
    *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
    *(a2 + 280) = &__src;
    *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
    *(a2 + 296) = &__src;
    {
      mlir::mps::CastOp::readProperties();
    }

    *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::CastOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
    v8 = *(a2 + 256);
  }

  *v8 = v7;
  __src = v26;
  v25 = 0x200000000;
  v10 = *a1;
  mlir::ValueRange::ValueRange(v23, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  v13 = *(a2 + 256);
  mlir::ValueRange::ValueRange(v22, *(a2 + 224), *(a2 + 232));
  if ((mlir::mps::CastOp::inferReturnTypes(v10, v14, v15, v23[0], v23[1], Dictionary, v13, v16, v22[0], v22[1], &__src) & 1) == 0)
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v17 = __src;
  v18 = v25;
  v19 = *(a2 + 72);
  v20 = v19 + v25;
  if (v20 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v20, 8);
    LODWORD(v19) = *(a2 + 72);
  }

  if (v18)
  {
    memcpy((*(a2 + 64) + 8 * v19), v17, 8 * v18);
    LODWORD(v19) = *(a2 + 72);
  }

  *(a2 + 72) = v19 + v18;
  if (__src != v26)
  {
    free(__src);
  }
}

void mlir::mps::CastOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, const void *a7, uint64_t a8)
{
  mlir::OperationState::addOperands(a2, a5, a6);
  *(a2 + 192) = 0;
  v13 = *(a2 + 120);
  if (a8 + v13 > *(a2 + 124))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 112, a2 + 128, a8 + v13, 16);
    LODWORD(v13) = *(a2 + 120);
  }

  if (a8)
  {
    memcpy((*(a2 + 112) + 16 * v13), a7, 16 * a8);
    LODWORD(v13) = *(a2 + 120);
  }

  *(a2 + 120) = v13 + a8;
  v14 = *(a2 + 72);
  if (a4 + v14 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, a4 + v14, 8);
    v14 = *(a2 + 72);
  }

  if (a4)
  {
    v15 = 0;
    v16 = *(a2 + 64) + 8 * v14;
    do
    {
      *(v16 + 8 * v15) = mlir::TypeRange::dereference_iterator(a3, v15);
      ++v15;
    }

    while (a4 != v15);
    LODWORD(v14) = *(a2 + 72);
  }

  *(a2 + 72) = v14 + a4;
  if (a8)
  {
    v17 = *(a2 + 256);
    if (!v17)
    {
      v18 = operator new(8uLL);
      *v18 = 0;
      *(a2 + 256) = v18;
      *(a2 + 272) = llvm::function_ref<void ()(mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties)#1}>;
      *(a2 + 280) = &v24;
      *(a2 + 288) = llvm::function_ref<void ()(mlir::OpaqueProperties,mlir::OpaqueProperties)>::callback_fn<mlir::mps::detail::CastOpGenericAdaptorBase::Properties & mlir::OperationState::getOrAddProperties<mlir::mps::detail::CastOpGenericAdaptorBase::Properties>(void)::{lambda(mlir::OpaqueProperties,mlir::OpaqueProperties)#1}>;
      *(a2 + 296) = &v23;
      {
        mlir::mps::CastOp::readProperties();
      }

      *(a2 + 264) = mlir::detail::TypeIDResolver<mlir::mps::detail::CastOpGenericAdaptorBase::Properties,void>::resolveTypeID(void)::id;
      v17 = *(a2 + 256);
    }

    v19 = *(a2 + 8);
    if (*(v19 + 16) == &mlir::detail::TypeIDResolver<void,void>::id)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a2 + 8);
    }

    Context = mlir::Attribute::getContext(a2);
    Dictionary = mlir::NamedAttrList::getDictionary((a2 + 112), Context);
    if (((*(*v20 + 144))(v20, v19, v17, Dictionary, 0) & 1) == 0)
    {
      llvm::report_fatal_error("Property conversion failed.", 1);
    }
  }
}

BOOL mlir::mps::CastOp::verifyInvariantsImpl(mlir::mps::CastOp *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *this;
  v3 = *(*this + 16 * ((*(*this + 44) >> 23) & 1) + 64);
  if (v3)
  {
    v18[0] = v2;
    if (mlir::pdl::__mlir_ods_local_attr_constraint_PDLOps7(v3, "resultElementType", 0x11, llvm::function_ref<mlir::InFlightDiagnostic ()(void)>::callback_fn<mlir::mps::__mlir_ods_local_attr_constraint_MPSOps5(mlir::Operation *,mlir::Attribute,llvm::StringRef)::$_0>, v18) & 1) != 0 && (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0))
    {
      if (*(*this + 36))
      {
        v4 = *this - 16;
      }

      else
      {
        v4 = 0;
      }

      NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v4, 0);
      return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v16 = "requires attribute 'resultElementType'";
    v17 = 259;
    mlir::OpState::emitOpError(this, &v16, v18);
    v6 = mlir::InFlightDiagnostic::operator llvm::LogicalResult(v18);
    if (v18[0])
    {
      mlir::InFlightDiagnostic::report(v18);
    }

    if (v26 == 1)
    {
      if (v25 != &v26)
      {
        free(v25);
      }

      v7 = __p;
      if (__p)
      {
        v8 = v24;
        v9 = __p;
        if (v24 != __p)
        {
          do
          {
            v8 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v8 - 1);
          }

          while (v8 != v7);
          v9 = __p;
        }

        v24 = v7;
        operator delete(v9);
      }

      v10 = v21;
      if (v21)
      {
        v11 = v22;
        v12 = v21;
        if (v22 != v21)
        {
          do
          {
            v14 = *--v11;
            v13 = v14;
            *v11 = 0;
            if (v14)
            {
              operator delete[](v13);
            }
          }

          while (v11 != v10);
          v12 = v21;
        }

        v22 = v10;
        operator delete(v12);
      }

      if (v19 != &v20)
      {
        free(v19);
      }
    }
  }

  return v6;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::CastOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.cast", 8, a3, v10, a4, a5);
  *v11 = &unk_1F5B26160;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::CeilOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.ceil", 8, a3, v10, a4, a5);
  *v11 = &unk_1F5B26200;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

void mlir::mps::ClampOp::build(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a3;
  v13 = a5;
  mlir::OperationState::addOperands(a2, &v15, 1uLL);
  mlir::OperationState::addOperands(a2, &v14, 1uLL);
  mlir::OperationState::addOperands(a2, &v13, 1uLL);
  __src = v20;
  v19 = 0x200000000;
  v6 = *a2;
  mlir::ValueRange::ValueRange(v17, *(a2 + 16), *(a2 + 24));
  Context = mlir::Attribute::getContext(a2);
  mlir::NamedAttrList::getDictionary((a2 + 112), Context);
  mlir::ValueRange::ValueRange(&v16, *(a2 + 224), *(a2 + 232));
  v8.var0.var0 = 1;
  {
    llvm::report_fatal_error("Failed to infer result type(s).", 1);
  }

  v9 = __src;
  v10 = v19;
  v11 = *(a2 + 72);
  v12 = v11 + v19;
  if (v12 > *(a2 + 76))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(a2 + 64, a2 + 80, v12, 8);
    LODWORD(v11) = *(a2 + 72);
  }

  if (v10)
  {
    memcpy((*(a2 + 64) + 8 * v11), v9, 8 * v10);
    LODWORD(v11) = *(a2 + 72);
  }

  *(a2 + 72) = v11 + v10;
  if (__src != v20)
  {
    free(__src);
  }
}

uint64_t mlir::mps::ClampOp::verifyInvariantsImpl(mlir::mps::ClampOp *this)
{
  if ((mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 0) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 1u) & 1) == 0 || (mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(*(*(*this + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8), "operand", 7, 2u) & 1) == 0)
  {
    return 0;
  }

  if (*(*this + 36))
  {
    v2 = *this - 16;
  }

  else
  {
    v2 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v2, 0);
  return mlir::mps::__mlir_ods_local_type_constraint_MPSOps1(*this, (*(NextResultAtOffset + 8) & 0xFFFFFFFFFFFFFFF8), "result", 6, 0) & 1;
}

uint64_t *mlir::RewritePatternSet::add<mlir::mps::ClampOp>(uint64_t *a1, uint64_t a2, __int16 a3, void *a4, unint64_t a5)
{
  v10 = *a1;
  v11 = operator new(0x68uLL);
  mlir::Pattern::Pattern((v11 + 1), "mps.clamp", 9, a3, v10, a4, a5);
  *v11 = &unk_1F5B262A0;
  v11[12] = a2;
  v13 = a1[2];
  v12 = a1[3];
  if (v13 >= v12)
  {
    v15 = a1[1];
    v16 = v13 - v15;
    v17 = (v13 - v15) >> 3;
    v18 = v17 + 1;
    if ((v17 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v19 = v12 - v15;
    if (v19 >> 2 > v18)
    {
      v18 = v19 >> 2;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFF8)
    {
      v20 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v11;
    v14 = v22 + 8;
    memcpy(v21, v15, v16);
    a1[1] = v21;
    a1[2] = v14;
    a1[3] = &v21[8 * v20];
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v13 = v11;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  return a1;
}

void *llvm::cast<mlir::ElementsAttr,mlir::DenseIntElementsAttr>(void **a1)
{
  result = *a1;
  if (result)
  {
    v2 = *result;
    {
      v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v4 = *(v2 + 8);
      v5 = *(v2 + 16);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v12 = v2;
      v13 = result;
      mlir::mps::ConstantOp::getAsAttribute();
      result = v13;
      v3 = mlir::detail::TypeIDResolver<mlir::ElementsAttr,void>::resolveTypeID(void)::id;
      v4 = *(v12 + 8);
      v5 = *(v12 + 16);
      if (!v5)
      {
        return result;
      }
    }

    v6 = v4;
    v7 = v5;
    do
    {
      v8 = v7 >> 1;
      v9 = &v6[2 * (v7 >> 1)];
      v11 = *v9;
      v10 = v9 + 2;
      v7 += ~(v7 >> 1);
      if (v11 < v3)
      {
        v6 = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  return result;
}

uint64_t mlir::mps::ColToImOp::setPropertiesFromAttr(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v91 = *MEMORY[0x1E69E9840];
  if (*(*a2 + 136) == &mlir::detail::TypeIDResolver<mlir::DictionaryAttr,void>::id)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  v75 = v6;
  if (!v6)
  {
    a3(&v79, a4);
    if (v79)
    {
      LODWORD(v76) = 3;
      v77 = "expected DictionaryAttr to set properties";
      v78 = 41;
      v26 = &v76;
      v27 = v81;
      if (v82 >= v83)
      {
        if (v81 <= &v76 && v81 + 24 * v82 > &v76)
        {
          v68 = &v76 - v81;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v27 = v81;
          v26 = (v81 + v68);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v26 = &v76;
          v27 = v81;
        }
      }

      v28 = &v27[24 * v82];
      v29 = *v26;
      *(v28 + 2) = v26[2];
      *v28 = v29;
      ++v82;
      if (v79)
      {
        mlir::InFlightDiagnostic::report(&v79);
      }
    }

    if (v90 != 1)
    {
      return 0;
    }

    if (v89 != &v90)
    {
      free(v89);
    }

    v30 = __p;
    if (__p)
    {
      v31 = v88;
      v32 = __p;
      if (v88 != __p)
      {
        do
        {
          v31 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v31 - 1);
        }

        while (v31 != v30);
        v32 = __p;
      }

      v88 = v30;
      operator delete(v32);
    }

    v21 = v85;
    if (!v85)
    {
      goto LABEL_81;
    }

    v33 = v86;
    v23 = v85;
    if (v86 == v85)
    {
LABEL_80:
      v86 = v21;
      operator delete(v23);
LABEL_81:
      if (v81 != v84)
      {
        free(v81);
      }

      return 0;
    }

    do
    {
      v35 = *--v33;
      v34 = v35;
      *v33 = 0;
      if (v35)
      {
        operator delete[](v34);
      }
    }

    while (v33 != v21);
    goto LABEL_79;
  }

  v92.var0 = "data_layout";
  v92.var1 = 11;
  v8 = mlir::DictionaryAttr::get(&v75, v92);
  if (v8)
  {
    if (*(*v8 + 136) != &mlir::detail::TypeIDResolver<mlir::mps::TensorDataLayoutAttr,void>::id)
    {
      v9 = v8;
      a3(&v79, a4);
      if (v79)
      {
        LODWORD(v76) = 3;
        v78 = 56;
        v10 = &v76;
        v11 = v81;
        if (v82 >= v83)
        {
          if (v81 <= &v76 && v81 + 24 * v82 > &v76)
          {
            v69 = &v76 - v81;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v11 = v81;
            v10 = (v81 + v69);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v10 = &v76;
            v11 = v81;
          }
        }

        v12 = &v11[24 * v82];
        v13 = *v10;
        *(v12 + 2) = v10[2];
        *v12 = v13;
        ++v82;
        if (v79)
        {
          v14 = &v76;
          mlir::DiagnosticArgument::DiagnosticArgument(&v76, v9);
          v15 = v81;
          if (v82 >= v83)
          {
            if (v81 <= &v76 && v81 + 24 * v82 > &v76)
            {
              v70 = &v76 - v81;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v15 = v81;
              v14 = (v81 + v70);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v14 = &v76;
              v15 = v81;
            }
          }

          v16 = &v15[24 * v82];
          v17 = *v14;
          *(v16 + 2) = v14[2];
          *v16 = v17;
          ++v82;
          if (v79)
          {
            mlir::InFlightDiagnostic::report(&v79);
          }
        }
      }

      if ((v90 & 1) == 0)
      {
        return 0;
      }

      if (v89 != &v90)
      {
        free(v89);
      }

      v18 = __p;
      if (__p)
      {
        v19 = v88;
        v20 = __p;
        if (v88 != __p)
        {
          do
          {
            v19 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v19 - 1);
          }

          while (v19 != v18);
          v20 = __p;
        }

        v88 = v18;
        operator delete(v20);
      }

      v21 = v85;
      if (!v85)
      {
        goto LABEL_81;
      }

      v22 = v86;
      v23 = v85;
      if (v86 == v85)
      {
        goto LABEL_80;
      }

      do
      {
        v25 = *--v22;
        v24 = v25;
        *v22 = 0;
        if (v25)
        {
          operator delete[](v24);
        }
      }

      while (v22 != v21);
      goto LABEL_79;
    }

    *a1 = v8;
  }

  v93.var0 = "dilation_rates";
  v93.var1 = 14;
  v36 = mlir::DictionaryAttr::get(&v75, v93);
  if (v36)
  {
    v37 = v36;
    if (mlir::DenseIntElementsAttr::classof(v36))
    {
      a1[1] = v37;
      goto LABEL_49;
    }

    a3(&v79, a4);
    if (v79)
    {
      LODWORD(v76) = 3;
      v78 = 59;
      v45 = &v76;
      v46 = v81;
      if (v82 >= v83)
      {
        if (v81 <= &v76 && v81 + 24 * v82 > &v76)
        {
          v71 = &v76 - v81;
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v46 = v81;
          v45 = (v81 + v71);
        }

        else
        {
          llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
          v45 = &v76;
          v46 = v81;
        }
      }

      v47 = &v46[24 * v82];
      v48 = *v45;
      *(v47 + 2) = v45[2];
      *v47 = v48;
      ++v82;
      if (v79)
      {
        v49 = &v76;
        mlir::DiagnosticArgument::DiagnosticArgument(&v76, v37);
        v50 = v81;
        if (v82 >= v83)
        {
          if (v81 <= &v76 && v81 + 24 * v82 > &v76)
          {
            v73 = &v76 - v81;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v50 = v81;
            v49 = (v81 + v73);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v49 = &v76;
            v50 = v81;
          }
        }

        v51 = &v50[24 * v82];
        v52 = *v49;
        *(v51 + 2) = v49[2];
        *v51 = v52;
        ++v82;
        if (v79)
        {
          mlir::InFlightDiagnostic::report(&v79);
        }
      }
    }

    if ((v90 & 1) == 0)
    {
      return 0;
    }

    if (v89 != &v90)
    {
      free(v89);
    }

    v53 = __p;
    if (__p)
    {
      v54 = v88;
      v55 = __p;
      if (v88 != __p)
      {
        do
        {
          v54 = std::unique_ptr<mlir::Diagnostic>::~unique_ptr[abi:nn200100](v54 - 1);
        }

        while (v54 != v53);
        v55 = __p;
      }

      v88 = v53;
      operator delete(v55);
    }

    v21 = v85;
    if (!v85)
    {
      goto LABEL_81;
    }

    v56 = v86;
    v23 = v85;
    if (v86 == v85)
    {
      goto LABEL_80;
    }

    do
    {
      v58 = *--v56;
      v57 = v58;
      *v56 = 0;
      if (v58)
      {
        operator delete[](v57);
      }
    }

    while (v56 != v21);
LABEL_79:
    v23 = v85;
    goto LABEL_80;
  }

LABEL_49:
  v94.var0 = "explicit_padding";
  v94.var1 = 16;
  v38 = mlir::DictionaryAttr::get(&v75, v94);
  if (v38)
  {
    v39 = v38;
    if (!mlir::DenseIntElementsAttr::classof(v38))
    {
      a3(&v79, a4);
      if (v79)
      {
        LODWORD(v76) = 3;
        v78 = 61;
        v59 = &v76;
        v60 = v81;
        if (v82 >= v83)
        {
          if (v81 <= &v76 && v81 + 24 * v82 > &v76)
          {
            v72 = &v76 - v81;
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v60 = v81;
            v59 = (v81 + v72);
          }

          else
          {
            llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
            v59 = &v76;
            v60 = v81;
          }
        }

        v61 = &v60[24 * v82];
        v62 = *v59;
        *(v61 + 2) = v59[2];
        *v61 = v62;
        ++v82;
        if (v79)
        {
          v63 = &v76;
          mlir::DiagnosticArgument::DiagnosticArgument(&v76, v39);
          v64 = v81;
          if (v82 >= v83)
          {
            if (v81 <= &v76 && v81 + 24 * v82 > &v76)
            {
              v74 = &v76 - v81;
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v64 = v81;
              v63 = (v81 + v74);
            }

            else
            {
              llvm::SmallVectorBase<unsigned int>::grow_pod(&v81, v84, v82 + 1, 24);
              v63 = &v76;
              v64 = v81;
            }
          }

          v65 = &v64[24 * v82];
          v66 = *v63;
          *(v65 + 2) = v63[2];
          *v65 = v66;
          ++v82;
          if (v79)
          {
            mlir::InFlightDiagnostic::report(&v79);
          }
        }
      }

      if (v90 == 1)
      {
        mlir::Diagnostic::~Diagnostic(&v80);
      }

      return 0;
    }

    a1[2] = v39;
  }

  v95.var0 = "kernel_sizes";
  v95.var1 = 12;
  v40 = mlir::DictionaryAttr::get(&v75, v95);
  v76 = v40;
  if (v40)
  {
    v41 = v40;
    if (!mlir::DenseIntElementsAttr::classof(v40))
    {
      a3(&v79, a4);
      goto LABEL_93;
    }

    a1[3] = v41;
  }

  v96.var0 = "strides";
  v96.var1 = 7;
  v42 = mlir::DictionaryAttr::get(&v75, v96);
  v76 = v42;
  if (!v42)
  {
    return 1;
  }

  v43 = v42;
  if (mlir::DenseIntElementsAttr::classof(v42))
  {
    a1[4] = v43;
    return 1;
  }

  a3(&v79, a4);
LABEL_93:
  mlir::InFlightDiagnostic::operator<<<mlir::Attribute>(v67, &v76);
  mlir::InFlightDiagnostic::~InFlightDiagnostic(&v79);
  return 0;
}