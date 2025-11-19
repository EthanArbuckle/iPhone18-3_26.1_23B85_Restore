BOOL mlir::detail::MPSRuntimeDynamicEncodeOpInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::ConditionalDynamicEncodeOpInterface<mlir::mps::ConcatOp>>::isDynamicallyEncoded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if ((*(a2 + 46) & 0x80) != 0)
  {
    v3 = *(a2 + 68);
    if (v3)
    {
      if (!mlir::mps::ConstantRuntimeAnalysis::isConstant(a3, *(*(a2 + 72) + 32 * (v3 - 1) + 24)))
      {
        return 1;
      }
    }
  }

  return result;
}

void mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_1::__invoke(uint64_t a1)
{
  v2 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::FPToIntClampedOp,void>::id, a1);
  if ((v3 & 1) == 0)
  {
    v199 = 1283;
    v196 = "Attempting to attach an interface to an unregistered operation ";
    v197 = "mpsx.fp_to_int_clamped";
    v135 = 22;
    goto LABEL_156;
  }

  v4 = v2;
  v5 = v2[2];
  if (v5 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v200[0] = v2[1];
    Values = mlir::SparseElementsAttr::getValues(v200);
    v5 = v4[2];
  }

  else
  {
    Values = v2[3];
  }

  {
    v175 = v5;
    v136 = Values;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    Values = v136;
    v5 = v175;
  }

  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(Values, v5, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v7 = malloc(8uLL);
  v8 = v7;
  {
    v176 = v7;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v8 = v176;
  }

  mlir::detail::InterfaceMap::insert((v4 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v8);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::FusionReturnOp,void>::id, a1);
  if ((v10 & 1) == 0)
  {
    v199 = 1283;
    v137 = "mpsx.fusion_return";
LABEL_155:
    v196 = "Attempting to attach an interface to an unregistered operation ";
    v197 = v137;
    v135 = 18;
    goto LABEL_156;
  }

  v11 = v9;
  v12 = v9[2];
  if (v12 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v200[0] = v9[1];
    v13 = mlir::SparseElementsAttr::getValues(v200);
    v12 = v11[2];
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = v9[3];
    {
      goto LABEL_12;
    }
  }

  v141 = v13;
  v158 = v12;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v13 = v141;
  v12 = v158;
LABEL_12:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v13, v12, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v14 = malloc(8uLL);
  v15 = v14;
  {
    v177 = v14;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v15 = v177;
  }

  mlir::detail::InterfaceMap::insert((v11 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v15);
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::MemrefBackedOp,void>::id, a1);
  if ((v17 & 1) == 0)
  {
    v199 = 1283;
    v137 = "mpsx.memref_backed";
    goto LABEL_155;
  }

  v18 = v16;
  v19 = v16[2];
  if (v19 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v200[0] = v16[1];
    v20 = mlir::SparseElementsAttr::getValues(v200);
    v19 = v18[2];
    {
      goto LABEL_17;
    }
  }

  else
  {
    v20 = v16[3];
    {
      goto LABEL_17;
    }
  }

  v142 = v20;
  v159 = v19;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v20 = v142;
  v19 = v159;
LABEL_17:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v20, v19, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v21 = malloc(8uLL);
  v22 = v21;
  {
    v178 = v21;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v22 = v178;
  }

  mlir::detail::InterfaceMap::insert((v18 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v22);
  v23 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::QuantizedMatMulOp,void>::id, a1);
  if ((v24 & 1) == 0)
  {
    v199 = 1283;
    v138 = "mpsx.quantized_matmul";
LABEL_148:
    v196 = "Attempting to attach an interface to an unregistered operation ";
    v197 = v138;
    v135 = 21;
    goto LABEL_156;
  }

  v25 = v23;
  v26 = v23[2];
  if (v26 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v200[0] = v23[1];
    v27 = mlir::SparseElementsAttr::getValues(v200);
    v26 = v25[2];
    {
      goto LABEL_22;
    }
  }

  else
  {
    v27 = v23[3];
    {
      goto LABEL_22;
    }
  }

  v143 = v27;
  v160 = v26;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v27 = v143;
  v26 = v160;
LABEL_22:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v27, v26, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v28 = malloc(8uLL);
  v29 = v28;
  {
    v179 = v28;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v29 = v179;
  }

  mlir::detail::InterfaceMap::insert((v25 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v29);
  v30 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::QuantizedConv2DOp,void>::id, a1);
  if ((v31 & 1) == 0)
  {
    v199 = 1283;
    v138 = "mpsx.quantized_conv2d";
    goto LABEL_148;
  }

  v32 = v30;
  v33 = v30[2];
  if (v33 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v200[0] = v30[1];
    v34 = mlir::SparseElementsAttr::getValues(v200);
    v33 = v32[2];
    {
      goto LABEL_27;
    }
  }

  else
  {
    v34 = v30[3];
    {
      goto LABEL_27;
    }
  }

  v144 = v34;
  v161 = v33;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v34 = v144;
  v33 = v161;
LABEL_27:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v34, v33, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v35 = malloc(8uLL);
  v36 = v35;
  {
    v180 = v35;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v36 = v180;
  }

  mlir::detail::InterfaceMap::insert((v32 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v36);
  v37 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::RegionReturnOp,void>::id, a1);
  if ((v38 & 1) == 0)
  {
    v199 = 1283;
    v137 = "mpsx.region_return";
    goto LABEL_155;
  }

  v39 = v37;
  v40 = v37[2];
  if (v40 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v200[0] = v37[1];
    v41 = mlir::SparseElementsAttr::getValues(v200);
    v40 = v39[2];
    {
      goto LABEL_32;
    }
  }

  else
  {
    v41 = v37[3];
    {
      goto LABEL_32;
    }
  }

  v145 = v41;
  v162 = v40;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v41 = v145;
  v40 = v162;
LABEL_32:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v41, v40, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v42 = malloc(8uLL);
  v43 = v42;
  {
    v181 = v42;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v43 = v181;
  }

  mlir::detail::InterfaceMap::insert((v39 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v43);
  v44 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::ReturnStitchedOp,void>::id, a1);
  if ((v45 & 1) == 0)
  {
    v199 = 1283;
    v196 = "Attempting to attach an interface to an unregistered operation ";
    v197 = "mpsx.stitched_return";
    v135 = 20;
    goto LABEL_156;
  }

  v46 = v44;
  v47 = v44[2];
  if (v47 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v200[0] = v44[1];
    v48 = mlir::SparseElementsAttr::getValues(v200);
    v47 = v46[2];
    {
      goto LABEL_37;
    }
  }

  else
  {
    v48 = v44[3];
    {
      goto LABEL_37;
    }
  }

  v146 = v48;
  v163 = v47;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v48 = v146;
  v47 = v163;
LABEL_37:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v48, v47, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v49 = malloc(8uLL);
  v50 = v49;
  {
    v182 = v49;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v50 = v182;
  }

  mlir::detail::InterfaceMap::insert((v46 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v50);
  v51 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::UseMemrefOp,void>::id, a1);
  if ((v52 & 1) == 0)
  {
    v199 = 1283;
    v139 = "mpsx.use_memref";
LABEL_145:
    v196 = "Attempting to attach an interface to an unregistered operation ";
    v197 = v139;
    v135 = 15;
    goto LABEL_156;
  }

  v53 = v51;
  v54 = v51[2];
  if (v54 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v200[0] = v51[1];
    v55 = mlir::SparseElementsAttr::getValues(v200);
    v54 = v53[2];
    {
      goto LABEL_42;
    }
  }

  else
  {
    v55 = v51[3];
    {
      goto LABEL_42;
    }
  }

  v147 = v55;
  v164 = v54;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v55 = v147;
  v54 = v164;
LABEL_42:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v55, v54, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v56 = malloc(8uLL);
  v57 = v56;
  {
    v183 = v56;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v57 = v183;
  }

  mlir::detail::InterfaceMap::insert((v53 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v57);
  v58 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::VarHandleOp,void>::id, a1);
  if ((v59 & 1) == 0)
  {
    v199 = 1283;
    v139 = "mpsx.var_handle";
    goto LABEL_145;
  }

  v60 = v58;
  v61 = v58[2];
  if (v61 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v200[0] = v58[1];
    v62 = mlir::SparseElementsAttr::getValues(v200);
    v61 = v60[2];
    {
      goto LABEL_47;
    }
  }

  else
  {
    v62 = v58[3];
    {
      goto LABEL_47;
    }
  }

  v148 = v62;
  v165 = v61;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v62 = v148;
  v61 = v165;
LABEL_47:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v62, v61, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v63 = malloc(8uLL);
  v64 = v63;
  {
    v184 = v63;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v64 = v184;
  }

  mlir::detail::InterfaceMap::insert((v60 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v64);
  v65 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id, a1);
  if ((v66 & 1) == 0)
  {
    v199 = 1283;
    v196 = "Attempting to attach an interface to an unregistered operation ";
    v197 = "mpsx.fusion";
    v135 = 11;
    goto LABEL_156;
  }

  v67 = v65;
  v68 = v65[2];
  if (v68 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v200[0] = v65[1];
    v69 = mlir::SparseElementsAttr::getValues(v200);
    v68 = v67[2];
    {
      goto LABEL_52;
    }
  }

  else
  {
    v69 = v65[3];
    {
      goto LABEL_52;
    }
  }

  v149 = v69;
  v166 = v68;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v69 = v149;
  v68 = v166;
LABEL_52:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v69, v68, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v70 = malloc(8uLL);
  v71 = v70;
  {
    v185 = v70;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v71 = v185;
  }

  mlir::detail::InterfaceMap::insert((v67 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v71);
  v72 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::QuantizedGatherOp,void>::id, a1);
  if ((v73 & 1) == 0)
  {
    v199 = 1283;
    v138 = "mpsx.quantized_gather";
    goto LABEL_148;
  }

  v74 = v72;
  v75 = v72[2];
  if (v75 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v200[0] = v72[1];
    v76 = mlir::SparseElementsAttr::getValues(v200);
    v75 = v74[2];
    {
      goto LABEL_57;
    }
  }

  else
  {
    v76 = v72[3];
    {
      goto LABEL_57;
    }
  }

  v150 = v76;
  v167 = v75;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v76 = v150;
  v75 = v167;
LABEL_57:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v76, v75, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v77 = malloc(8uLL);
  v78 = v77;
  {
    v186 = v77;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v78 = v186;
  }

  mlir::detail::InterfaceMap::insert((v74 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v78);
  v79 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::StitchedOp,void>::id, a1);
  if ((v80 & 1) == 0)
  {
    v199 = 1283;
    v196 = "Attempting to attach an interface to an unregistered operation ";
    v197 = "mpsx.stitched";
    v135 = 13;
    goto LABEL_156;
  }

  v81 = v79;
  v82 = v79[2];
  if (v82 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v200[0] = v79[1];
    v83 = mlir::SparseElementsAttr::getValues(v200);
    v82 = v81[2];
    {
      goto LABEL_62;
    }
  }

  else
  {
    v83 = v79[3];
    {
      goto LABEL_62;
    }
  }

  v151 = v83;
  v168 = v82;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v83 = v151;
  v82 = v168;
LABEL_62:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v83, v82, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v84 = malloc(8uLL);
  v85 = v84;
  {
    v187 = v84;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v85 = v187;
  }

  mlir::detail::InterfaceMap::insert((v81 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v85);
  v86 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::CPUOp,void>::id, a1);
  if ((v87 & 1) == 0)
  {
    v199 = 1283;
    v140 = "mpsx.cpu";
LABEL_153:
    v196 = "Attempting to attach an interface to an unregistered operation ";
    v197 = v140;
    v135 = 8;
    goto LABEL_156;
  }

  v88 = v86;
  v89 = v86[2];
  if (v89 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v200[0] = v86[1];
    v90 = mlir::SparseElementsAttr::getValues(v200);
    v89 = v88[2];
    {
      goto LABEL_67;
    }
  }

  else
  {
    v90 = v86[3];
    {
      goto LABEL_67;
    }
  }

  v152 = v90;
  v169 = v89;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v90 = v152;
  v89 = v169;
LABEL_67:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v90, v89, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v91 = malloc(8uLL);
  v92 = v91;
  {
    v188 = v91;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v92 = v188;
  }

  mlir::detail::InterfaceMap::insert((v88 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v92);
  v93 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::ANEOp,void>::id, a1);
  if ((v94 & 1) == 0)
  {
    v199 = 1283;
    v140 = "mpsx.ane";
    goto LABEL_153;
  }

  v95 = v93;
  v96 = v93[2];
  if (v96 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v200[0] = v93[1];
    v97 = mlir::SparseElementsAttr::getValues(v200);
    v96 = v95[2];
    {
      goto LABEL_72;
    }
  }

  else
  {
    v97 = v93[3];
    {
      goto LABEL_72;
    }
  }

  v153 = v97;
  v170 = v96;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v97 = v153;
  v96 = v170;
LABEL_72:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v97, v96, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v98 = malloc(8uLL);
  v99 = v98;
  {
    v189 = v98;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v99 = v189;
  }

  mlir::detail::InterfaceMap::insert((v95 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v99);
  v100 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::GPUOp,void>::id, a1);
  if ((v101 & 1) == 0)
  {
    v199 = 1283;
    v140 = "mpsx.gpu";
    goto LABEL_153;
  }

  v102 = v100;
  v103 = v100[2];
  if (v103 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v200[0] = v100[1];
    v104 = mlir::SparseElementsAttr::getValues(v200);
    v103 = v102[2];
    {
      goto LABEL_77;
    }
  }

  else
  {
    v104 = v100[3];
    {
      goto LABEL_77;
    }
  }

  v154 = v104;
  v171 = v103;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v104 = v154;
  v103 = v171;
LABEL_77:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v104, v103, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v105 = malloc(8uLL);
  v106 = v105;
  {
    v190 = v105;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v106 = v190;
  }

  mlir::detail::InterfaceMap::insert((v102 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v106);
  v107 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::ListPopBackOp,void>::id, a1);
  if ((v108 & 1) == 0)
  {
    v199 = 1283;
    v137 = "mpsx.list_pop_back";
    goto LABEL_155;
  }

  v109 = v107;
  v110 = v107[2];
  if (v110 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v200[0] = v107[1];
    v111 = mlir::SparseElementsAttr::getValues(v200);
    v110 = v109[2];
    {
      goto LABEL_82;
    }
  }

  else
  {
    v111 = v107[3];
    {
      goto LABEL_82;
    }
  }

  v155 = v111;
  v172 = v110;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v111 = v155;
  v110 = v172;
LABEL_82:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v111, v110, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v112 = malloc(8uLL);
  {
    v191 = v112;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v112 = v191;
  }

  mlir::detail::InterfaceMap::insert((v109 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v112);
  v113 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::ListPushBackOp,void>::id, a1);
  if ((v114 & 1) == 0)
  {
    v199 = 1283;
    v196 = "Attempting to attach an interface to an unregistered operation ";
    v197 = "mpsx.list_push_back";
    v135 = 19;
    goto LABEL_156;
  }

  v115 = v113;
  v116 = v113[2];
  if (v116 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v200[0] = v113[1];
    v117 = mlir::SparseElementsAttr::getValues(v200);
    v116 = v115[2];
    {
      goto LABEL_87;
    }
  }

  else
  {
    v117 = v113[3];
    {
      goto LABEL_87;
    }
  }

  v156 = v117;
  v173 = v116;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v117 = v156;
  v116 = v173;
LABEL_87:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v117, v116, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v118 = malloc(8uLL);
  v119 = v118;
  {
    v192 = v118;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v119 = v192;
  }

  mlir::detail::InterfaceMap::insert((v115 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v119);
  v120 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::MakeListOp,void>::id, a1);
  if ((v121 & 1) == 0)
  {
    v199 = 1283;
    v196 = "Attempting to attach an interface to an unregistered operation ";
    v197 = "mpsx.make_list";
    v135 = 14;
    goto LABEL_156;
  }

  v122 = v120;
  v123 = v120[2];
  if (v123 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v200[0] = v120[1];
    v124 = mlir::SparseElementsAttr::getValues(v200);
    v123 = v122[2];
    {
      goto LABEL_92;
    }
  }

  else
  {
    v124 = v120[3];
    {
      goto LABEL_92;
    }
  }

  v157 = v124;
  v174 = v123;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v124 = v157;
  v123 = v174;
LABEL_92:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v124, v123, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v125 = malloc(8uLL);
  v126 = v125;
  {
    v193 = v125;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v126 = v193;
  }

  mlir::detail::InterfaceMap::insert((v122 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v126);
  v127 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mpsx::SparseDenseMatMulOp,void>::id, a1);
  if ((v128 & 1) == 0)
  {
    v199 = 1283;
    v196 = "Attempting to attach an interface to an unregistered operation ";
    v197 = "mpsx.sparse_dense_matmul";
    v135 = 24;
LABEL_156:
    v198 = v135;
    v194 = ".";
    v195 = 259;
    llvm::operator+(&v196, &v194, v200);
    llvm::report_fatal_error(v200, 1);
  }

  v129 = v127;
  v130 = v127[2];
  if (v130 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v200[0] = v127[1];
    v131 = mlir::SparseElementsAttr::getValues(v200);
    v130 = v129[2];
    {
      goto LABEL_97;
    }
  }

  else
  {
    v131 = v127[3];
    {
      goto LABEL_97;
    }
  }

  v133 = v130;
  v134 = v131;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v131 = v134;
  v130 = v133;
LABEL_97:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v131, v130, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v132 = malloc(8uLL);
  {
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  }

  mlir::detail::InterfaceMap::insert((v129 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v132);
}

uint64_t mlir::detail::MPSRuntimeDynamicEncodeOpInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::ConditionalDynamicEncodeOpInterface<mlir::mpsx::FusionOp>>::isDynamicallyEncoded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  mlir::Region::OpIterator::OpIterator(&v13, v4, 0);
  mlir::Region::OpIterator::OpIterator(&v11, v4, 1);
  v6 = v14;
  v7 = v12;
  if (v14 == v12)
  {
    return 0;
  }

  while (1)
  {
    v8 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v6, v5);
    if (!mlir::OpInterface<mlir::MPSRuntimeDynamicEncodeOpInterface,mlir::detail::MPSRuntimeDynamicEncodeOpInterfaceInterfaceTraits>::getInterfaceFor(v8))
    {
      break;
    }

    InterfaceFor = mlir::OpInterface<mlir::MPSRuntimeDynamicEncodeOpInterface,mlir::detail::MPSRuntimeDynamicEncodeOpInterfaceInterfaceTraits>::getInterfaceFor(v8);
    if (!v8 || ((*InterfaceFor)(InterfaceFor, v8, a3) & 1) != 0)
    {
      break;
    }

    mlir::Region::OpIterator::operator++(&v13);
    v6 = v14;
    if (v14 == v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t mlir::detail::MPSRuntimeDynamicEncodeOpInterfaceInterfaceTraits::FallbackModel<mlir::mps::anonymous namespace::ConditionalDynamicEncodeOpInterface<mlir::mpsx::StitchedOp>>::isDynamicallyEncoded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (((a2 + 16 * ((*(a2 + 44) >> 23) & 1) + ((*(a2 + 44) >> 21) & 0x7F8) + 71) & 0xFFFFFFFFFFFFFFF8) + 32 * *(a2 + 40));
  mlir::Region::OpIterator::OpIterator(&v13, v4, 0);
  mlir::Region::OpIterator::OpIterator(&v11, v4, 1);
  v6 = v14;
  v7 = v12;
  if (v14 == v12)
  {
    return 0;
  }

  while (1)
  {
    v8 = MPSGraphDelegateCompiler.precompilationDescriptor.modify(v6, v5);
    if (!mlir::OpInterface<mlir::MPSRuntimeDynamicEncodeOpInterface,mlir::detail::MPSRuntimeDynamicEncodeOpInterfaceInterfaceTraits>::getInterfaceFor(v8))
    {
      break;
    }

    InterfaceFor = mlir::OpInterface<mlir::MPSRuntimeDynamicEncodeOpInterface,mlir::detail::MPSRuntimeDynamicEncodeOpInterfaceInterfaceTraits>::getInterfaceFor(v8);
    if (!v8 || ((*InterfaceFor)(InterfaceFor, v8, a3) & 1) != 0)
    {
      break;
    }

    mlir::Region::OpIterator::operator++(&v13);
    v6 = v14;
    if (v14 == v7)
    {
      return 0;
    }
  }

  return 1;
}

void mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_2::__invoke(uint64_t a1)
{
  v2 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps_spi::ScaledDotProductAttentionOp,void>::id, a1);
  if ((v3 & 1) == 0)
  {
    v36 = 1283;
    v33 = "Attempting to attach an interface to an unregistered operation ";
    v34 = "mps_spi.sdpa";
    v24 = 12;
    goto LABEL_27;
  }

  v4 = v2;
  v5 = v2[2];
  if (v5 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v37[0] = v2[1];
    Values = mlir::SparseElementsAttr::getValues(v37);
    v5 = v4[2];
  }

  else
  {
    Values = v2[3];
  }

  {
    v28 = v5;
    v25 = Values;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    Values = v25;
    v5 = v28;
  }

  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(Values, v5, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v7 = malloc(8uLL);
  v8 = v7;
  {
    v29 = v7;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v8 = v29;
  }

  mlir::detail::InterfaceMap::insert((v4 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v8);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps_spi::StridedArrayViewOp,void>::id, a1);
  if ((v10 & 1) == 0)
  {
    v36 = 1283;
    v33 = "Attempting to attach an interface to an unregistered operation ";
    v34 = "mps_spi.strided_array_view";
    v24 = 26;
    goto LABEL_27;
  }

  v11 = v9;
  v12 = v9[2];
  if (v12 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v37[0] = v9[1];
    v13 = mlir::SparseElementsAttr::getValues(v37);
    v12 = v11[2];
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = v9[3];
    {
      goto LABEL_12;
    }
  }

  v26 = v13;
  v27 = v12;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v13 = v26;
  v12 = v27;
LABEL_12:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v13, v12, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v14 = malloc(8uLL);
  v15 = v14;
  {
    v30 = v14;
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
    v15 = v30;
  }

  mlir::detail::InterfaceMap::insert((v11 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v15);
  v16 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps_spi::RMSNormOp,void>::id, a1);
  if ((v17 & 1) == 0)
  {
    v36 = 1283;
    v33 = "Attempting to attach an interface to an unregistered operation ";
    v34 = "mps_spi.rms_norm";
    v24 = 16;
LABEL_27:
    v35 = v24;
    v31 = ".";
    v32 = 259;
    llvm::operator+(&v33, &v31, v37);
    llvm::report_fatal_error(v37, 1);
  }

  v18 = v16;
  v19 = v16[2];
  if (v19 == &mlir::detail::TypeIDResolver<void,void>::id)
  {
    v37[0] = v16[1];
    v20 = mlir::SparseElementsAttr::getValues(v37);
    v19 = v18[2];
    {
      goto LABEL_17;
    }
  }

  else
  {
    v20 = v16[3];
    {
      goto LABEL_17;
    }
  }

  v22 = v19;
  v23 = v20;
  mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  v20 = v23;
  v19 = v22;
LABEL_17:
  mlir::dialect_extension_detail::handleAdditionOfUndefinedPromisedInterface(v20, v19, mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id);
  v21 = malloc(8uLL);
  {
    mlir::mps::registerMPSRuntimeDynamicEncodeOpExternalModels(mlir::DialectRegistry &)::$_0::operator()();
  }

  mlir::detail::InterfaceMap::insert((v18 + 4), mlir::detail::TypeIDResolver<mlir::MPSRuntimeDynamicEncodeOpInterface,void>::resolveTypeID(void)::id, v21);
}

uint64_t mlir::mps::createLayoutConversionPass@<X0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x628uLL);
  *v5 = &unk_1F5AFD238;
  *(v5 + 472) = *a1;
  v6 = *(v5 + 936);
  if (v6 && ((*(*v6 + 48))(v6, a1), v8 = a1[1], v7 = a1 + 1, v4[272] = v8, (v9 = *(v4 + 194)) != 0))
  {
    result = (*(*v9 + 48))(v9, v7);
    *a2 = v4;
  }

  else
  {
    v11 = std::__throw_bad_function_call[abi:nn200100]();
  }

  return result;
}

uint64_t mlir::mps::MPSLayoutConversionBase<mlir::mps::anonymous namespace::LayoutConversionPass>::MPSLayoutConversionBase(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = "func.func";
  *(a1 + 24) = 9;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 200;
  *(a1 + 192) = 0x400000000;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = 0x400000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x1000000000;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *a1 = &unk_1F5AFD2A8;
  *&v3 = "The type of conversion to perform on the data inputs to operations in a model (default unchanged).";
  *(&v3 + 1) = 98;
  v6 = "unchanged";
  v7 = 9;
  v8 = 0;
  v9 = "No conversion.";
  v10 = 14;
  v11 = "channels-first";
  v12 = 14;
  v13 = 1;
  v14 = "Convert to a channels-first layout.";
  v15 = 35;
  v16 = "channels-last";
  v17 = 13;
  v18 = 2;
  v19 = "Convert to a channels-last layout.";
  v20 = 34;
  v4 = &v6;
  v5 = 0x400000003;
  mlir::detail::PassOptions::Option<mlir::mps::LayoutConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::Option<llvm::cl::desc,llvm::cl::ValuesClass>(a1 + 344, (a1 + 152), "data-conversion-type", 20, &v3, &v4);
  *(a1 + 344) = &unk_1F5AFD318;
  *(a1 + 944) = &unk_1F5AFD398;
  if (v4 != &v6)
  {
    free(v4);
  }

  *&v3 = "The type of conversion to perform on the weights inputs to operations in a model (default unchanged).";
  *(&v3 + 1) = 101;
  v6 = "unchanged";
  v7 = 9;
  v8 = 0;
  v9 = "No conversion.";
  v10 = 14;
  v11 = "channels-first";
  v12 = 14;
  v13 = 1;
  v14 = "Convert to a channels-first layout.";
  v15 = 35;
  v16 = "channels-last";
  v17 = 13;
  v18 = 2;
  v19 = "Convert to a channels-last layout.";
  v20 = 34;
  v4 = &v6;
  v5 = 0x400000003;
  mlir::detail::PassOptions::Option<mlir::mps::LayoutConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::Option<llvm::cl::desc,llvm::cl::ValuesClass>(a1 + 960, (a1 + 152), "weights-conversion-type", 23, &v3, &v4);
  *(a1 + 960) = &unk_1F5AFD318;
  *(a1 + 1560) = &unk_1F5AFD398;
  if (v4 != &v6)
  {
    free(v4);
  }

  return a1;
}

void mlir::mps::anonymous namespace::LayoutConversionPass::~LayoutConversionPass(mlir::mps::_anonymous_namespace_::LayoutConversionPass *this)
{
  *this = &unk_1F5AFD2A8;
  mlir::detail::PassOptions::Option<mlir::mps::LayoutConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::~Option(this + 120);
  mlir::detail::PassOptions::Option<mlir::mps::LayoutConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::~Option(this + 43);
  *this = &unk_1F5B01A70;
  v2 = *(this + 39);
  if (v2)
  {
    *(this + 40) = v2;
    operator delete(v2);
  }

  if (*(this + 73))
  {
    v3 = *(this + 72);
    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = *(*(this + 35) + v4);
        if (v5 != -8 && v5 != 0)
        {
          llvm::deallocate_buffer(v5, (*v5 + 17));
        }

        v4 += 8;
      }

      while (8 * v3 != v4);
    }
  }

  free(*(this + 35));
  v7 = *(this + 29);
  if (v7 != this + 248)
  {
    free(v7);
  }

  v8 = *(this + 23);
  if (v8 != this + 200)
  {
    free(v8);
  }

  v9 = *(this + 16);
  if (v9)
  {
    *(this + 17) = v9;
    operator delete(v9);
  }

  if (*(this + 120) == 1)
  {
    v10 = *(this + 8);
    if (v10 != *(this + 7))
    {
      free(v10);
    }
  }
}

{

  operator delete(v1);
}

void mlir::mps::anonymous namespace::LayoutConversionPass::runOnOperation(mlir::mps::_anonymous_namespace_::LayoutConversionPass *this)
{
  v59 = *MEMORY[0x1E69E9840];
  v2 = (*(this + 5) & 0xFFFFFFFFFFFFFFF8);
  Context = mlir::Attribute::getContext((v2 + 6));
  *__p = 0u;
  *v46 = 0u;
  v47 = &v49;
  v48 = 0x600000000;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0x2800000000;
  v56 = 0;
  v57 = 0;
  v58 = 0x2800000000;
  v3 = mlir::Attribute::getContext((v2 + 6));
  v4 = operator new(0x68uLL);
  v5 = *(this + 118);
  v6 = *(this + 272);
  mlir::PatternBenefit::PatternBenefit(&v38, 1);
  mlir::Pattern::Pattern((v4 + 2), v38, v3, 0, 0);
  *v4 = &unk_1F5AFD670;
  v4[24] = v5;
  v4[25] = v6;
  if (!*(v4 + 9))
  {
    v38 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::ConvertOperation]";
    *&v39 = 100;
    v7 = llvm::StringRef::find(&v38, "DesiredTypeName = ", 0x12uLL, 0);
    if (v39 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v39;
    }

    v9 = v38 + v8;
    v10 = v39 - v8;
    if ((v39 - v8) >= 0x12)
    {
      v11 = 18;
    }

    else
    {
      v11 = v39 - v8;
    }

    v12 = v9 + v11;
    v13 = v10 - v11;
    if (v13 >= v13 - 1)
    {
      --v13;
    }

    *(v4 + 8) = v12;
    *(v4 + 9) = v13;
  }

  v14 = v4[22];
  if (v14 > v4[23])
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v4 + 20), (v4 + 24), v14, 16);
    LODWORD(v14) = v4[22];
  }

  v4[22] = v14;
  v15 = __p[1];
  if (__p[1] >= v46[0])
  {
    v17 = __p[0];
    v18 = __p[1] - __p[0];
    v19 = (__p[1] - __p[0]) >> 3;
    v20 = v19 + 1;
    if ((v19 + 1) >> 61)
    {
      std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
    }

    v21 = v46[0] - __p[0];
    if ((v46[0] - __p[0]) >> 2 > v20)
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

    if (v22)
    {
      if (v22 >> 61)
      {
        std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
      }

      v23 = operator new(8 * v22);
    }

    else
    {
      v23 = 0;
    }

    v24 = &v23[8 * v19];
    *v24 = v4;
    v16 = v24 + 8;
    memcpy(v23, v17, v18);
    __p[0] = v23;
    __p[1] = v16;
    v46[0] = &v23[8 * v22];
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *__p[1] = v4;
    v16 = v15 + 8;
  }

  __p[1] = v16;
  mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(v37, &Context, 0, 0, 0, 0);
  v25 = v2[11];
  if ((v25 & 0x7FFFFF) != 0)
  {
    v26 = (((&v2[4 * ((v25 >> 23) & 1) + 16] + ((v25 >> 21) & 0x7F8)) & 0xFFFFFFFFFFFFFFF8) + 32 * v2[10]);
    v43 = 0;
    v38 = 0x200000000;
    v39 = xmmword_1E097BBC0;
    v41 = 0;
    v42 = 0;
    v40 = 0;
    mlir::applyPatternsAndFoldGreedily(v26, v37, &v38, &v43);
  }

  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](v37);
  if (HIDWORD(v57) && v57)
  {
    v27 = 0;
    do
    {
      v28 = *(v56 + v27);
      if (v28 != -8 && v28 != 0)
      {
        v30 = *v28;
        v31 = *(v28 + 4);
        if (v31 == (v28 + 8))
        {
          (*(*v31 + 32))(v31);
        }

        else if (v31)
        {
          (*(*v31 + 40))(v31);
        }

        llvm::deallocate_buffer(v28, (v30 + 41));
      }

      v27 += 8;
    }

    while (8 * v57 != v27);
  }

  free(v56);
  if (HIDWORD(v54) && v54)
  {
    v32 = 0;
    do
    {
      v33 = *(v53 + v32);
      if (v33 != -8 && v33 != 0)
      {
        v35 = *v33;
        v36 = *(v33 + 4);
        if (v36 == (v33 + 8))
        {
          (*(*v36 + 32))(v36);
        }

        else if (v36)
        {
          (*(*v36 + 40))(v36);
        }

        llvm::deallocate_buffer(v33, (v35 + 41));
      }

      v32 += 8;
    }

    while (8 * v54 != v32);
  }

  free(v53);
  llvm::deallocate_buffer(v50, (16 * v52));
}

void mlir::mps::MPSLayoutConversionBase<mlir::mps::anonymous namespace::LayoutConversionPass>::clonePass(uint64_t a1@<X0>, void *a2@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = operator new(0x628uLL);
  v4 = *(a1 + 8);
  v3[1] = *(a1 + 16);
  *(v3 + 4) = *(a1 + 32);
  *(v3 + 1) = v4;
  *(v3 + 40) = 0;
  *(v3 + 120) = 0;
  v3[8] = 0u;
  v3[9] = 0u;
  v3[10] = 0u;
  *(v3 + 22) = 0;
  *(v3 + 23) = v3 + 200;
  *(v3 + 24) = 0x400000000;
  *(v3 + 29) = v3 + 248;
  *(v3 + 30) = 0x400000000;
  *(v3 + 35) = 0;
  *(v3 + 36) = 0;
  *(v3 + 74) = 0;
  *(v3 + 75) = 16;
  v3[19] = 0u;
  v3[20] = 0u;
  *(v3 + 42) = 0;
  *v3 = &unk_1F5AFD2A8;
  *&v6 = "The type of conversion to perform on the data inputs to operations in a model (default unchanged).";
  *(&v6 + 1) = 98;
  v9 = "unchanged";
  v10 = 9;
  v11 = 0;
  v12 = "No conversion.";
  v13 = 14;
  v14 = "channels-first";
  v15 = 14;
  v16 = 1;
  v17 = "Convert to a channels-first layout.";
  v18 = 35;
  v19 = "channels-last";
  v20 = 13;
  v21 = 2;
  v22 = "Convert to a channels-last layout.";
  v23 = 34;
  v7 = &v9;
  v8 = 0x400000003;
  mlir::detail::PassOptions::Option<mlir::mps::LayoutConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::Option<llvm::cl::desc,llvm::cl::ValuesClass>(v3 + 344, v3 + 152, "data-conversion-type", 20, &v6, &v7);
  *(v3 + 43) = &unk_1F5AFD318;
  *(v3 + 118) = &unk_1F5AFD398;
  if (v7 != &v9)
  {
    free(v7);
  }

  *&v6 = "The type of conversion to perform on the weights inputs to operations in a model (default unchanged).";
  *(&v6 + 1) = 101;
  v9 = "unchanged";
  v10 = 9;
  v11 = 0;
  v12 = "No conversion.";
  v13 = 14;
  v14 = "channels-first";
  v15 = 14;
  v16 = 1;
  v17 = "Convert to a channels-first layout.";
  v18 = 35;
  v19 = "channels-last";
  v20 = 13;
  v21 = 2;
  v22 = "Convert to a channels-last layout.";
  v23 = 34;
  v7 = &v9;
  v8 = 0x400000003;
  mlir::detail::PassOptions::Option<mlir::mps::LayoutConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::Option<llvm::cl::desc,llvm::cl::ValuesClass>((v3 + 60), v3 + 152, "weights-conversion-type", 23, &v6, &v7);
  *(v3 + 120) = &unk_1F5AFD318;
  *(v3 + 195) = &unk_1F5AFD398;
  if (v7 != &v9)
  {
    free(v7);
  }

  *v3 = &unk_1F5AFD238;
  *a2 = v3;
}

uint64_t mlir::detail::PassOptions::Option<mlir::mps::LayoutConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::Option<llvm::cl::desc,llvm::cl::ValuesClass>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t *a6)
{
  v16 = *MEMORY[0x1E69E9840];
  v10[0] = a3;
  v10[1] = a4;
  v13 = a2;
  v14 = 0;
  v8 = llvm::cl::opt<mlir::mps::LayoutConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::ValuesClass>(a1, v10, &v13, a5, a6);
  *(v8 + 608) = 0;
  *v8 = &unk_1F5AFD3D8;
  *(v8 + 600) = &unk_1F5AFD458;
  v13 = (v8 + 600);
  std::vector<mlir::detail::PassOptions::OptionBase *>::push_back[abi:nn200100](a2 + 160, &v13);
  v11[0] = &unk_1F5AFD628;
  v11[1] = a1;
  v15 = &v13;
  v12 = v11;
  v13 = &unk_1F5AFD628;
  v14 = a1;
  std::__function::__value_func<void ()(mlir::mps::LayoutConversionType const&)>::swap[abi:nn200100](&v13, a1 + 568);
  if (v15 == &v13)
  {
    (*(*v15 + 4))(v15);
  }

  else if (v15)
  {
    (*(*v15 + 5))();
  }

  if (v12 == v11)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))();
  }

  return a1;
}

uint64_t llvm::cl::opt<mlir::mps::LayoutConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::handleOccurrence(uint64_t a1, __int16 a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v12 = 0;
  result = llvm::cl::parser<mlir::mps::ConstantAttributeConversionType>::parse(a1 + 152, a1, a3, a4, a5, a6, &v12);
  if ((result & 1) == 0)
  {
    v9 = result;
    *(a1 + 128) = v12;
    *(a1 + 12) = a2;
    v10 = *(a1 + 592);
    if (v10)
    {
      (*(*v10 + 48))(v10, &v12);
      return v9;
    }

    else
    {
      v11 = std::__throw_bad_function_call[abi:nn200100]();
      return llvm::cl::opt<mlir::mps::LayoutConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::getValueExpectedFlagDefault(v11);
    }
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::mps::LayoutConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::getValueExpectedFlagDefault(uint64_t a1)
{
  if (*(*(a1 + 160) + 24))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void mlir::Pass::Option<mlir::mps::LayoutConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::~Option(void *a1)
{
  v1 = mlir::detail::PassOptions::Option<mlir::mps::LayoutConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::~Option(a1);

  operator delete(v1);
}

void *llvm::cl::opt<mlir::mps::LayoutConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::printOptionValue(void *result, int a2, char a3)
{
  if ((a3 & 1) != 0 || *(result + 148) != 1 || *(result + 36) != *(result + 32))
  {
    v9 = v3;
    v10 = v4;
    v5 = *(result + 32);
    v6 = &unk_1F5AFD500;
    v8 = 1;
    v7 = v5;
    return llvm::cl::generic_parser_base::printGenericOptionDiff((result + 19), result, &v6, (result + 17), a2);
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::mps::LayoutConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::setDefault(uint64_t result)
{
  if (*(result + 148) == 1)
  {
    *(result + 128) = *(result + 144);
  }

  else
  {
    *(result + 128) = 0;
  }

  return result;
}

uint64_t llvm::cl::opt<mlir::mps::LayoutConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::getExtraOptionNames(uint64_t result, uint64_t a2)
{
  if (!*(*(result + 160) + 24))
  {
    v3 = result + 152;
    result = (*(*(result + 152) + 16))(result + 152);
    if (result)
    {
      v4 = result;
      v5 = 0;
      do
      {
        result = (*(*v3 + 24))(v3, v5);
        v7 = *(a2 + 8);
        if (v7 >= *(a2 + 12))
        {
          v9 = v6;
          v10 = result;
          llvm::SmallVectorBase<unsigned int>::grow_pod(a2, a2 + 16, v7 + 1, 16);
          v6 = v9;
          result = v10;
          v7 = *(a2 + 8);
        }

        v8 = (*a2 + 16 * v7);
        *v8 = result;
        v8[1] = v6;
        ++*(a2 + 8);
        v5 = (v5 + 1);
      }

      while (v4 != v5);
    }
  }

  return result;
}

void *mlir::detail::PassOptions::Option<mlir::mps::LayoutConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::print(uint64_t a1, llvm::raw_ostream *this)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(this + 4);
  if (v5 <= *(this + 3) - v6)
  {
    if (v5)
    {
      v8 = v5;
      memcpy(v6, v4, v5);
      v6 = (*(this + 4) + v8);
      *(this + 4) = v6;
    }

    v7 = this;
  }

  else
  {
    v7 = llvm::raw_ostream::write(this, v4, v5);
    v6 = *(v7 + 4);
  }

  if (v6 >= *(v7 + 3))
  {
    llvm::raw_ostream::write(v7, 61);
  }

  else
  {
    *(v7 + 4) = v6 + 1;
    *v6 = 61;
  }

    ;
  }

  v10 = *(i - 44);
  v11 = *(i - 36);
  result = *(this + 4);
  if (v11 <= *(this + 3) - result)
  {
    if (v11)
    {
      v13 = *(i - 36);
      result = memcpy(result, v10, v11);
      *(this + 4) += v13;
    }
  }

  else
  {

    return llvm::raw_ostream::write(this, v10, v11);
  }

  return result;
}

uint64_t mlir::detail::PassOptions::Option<mlir::mps::LayoutConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result + 128) = *(a2 - 472);
  *(result + 608) = *(a2 + 8);
  return result;
}

void non-virtual thunk tomlir::Pass::Option<mlir::mps::LayoutConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::~Option(uint64_t a1)
{
  v1 = mlir::detail::PassOptions::Option<mlir::mps::LayoutConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::~Option((a1 - 600));

  operator delete(v1);
}

uint64_t non-virtual thunk tomlir::detail::PassOptions::Option<mlir::mps::LayoutConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::copyValueFrom(uint64_t result, uint64_t a2)
{
  *(result - 472) = *(a2 - 472);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t llvm::cl::opt<mlir::mps::LayoutConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::opt<llvm::StringRef,llvm::cl::sub,llvm::cl::desc,llvm::cl::ValuesClass>(uint64_t a1, uint64_t *a2, const void **a3, _OWORD *a4, uint64_t *a5)
{
  *a1 = &unk_1F5B3E1D8;
  *(a1 + 8) = 0;
  *(a1 + 10) &= 0x8000u;
  v10 = a1 + 80;
  *(a1 + 64) = a1 + 80;
  v11 = a1 + 64;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0;
  *(a1 + 72) = 0x100000000;
  *(a1 + 88) = a1 + 120;
  *(a1 + 96) = a1 + 120;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  GeneralCategory = llvm::cl::getGeneralCategory(a1);
  v13 = *(a1 + 72);
  if (v13 >= *(a1 + 76))
  {
    v18 = GeneralCategory;
    llvm::SmallVectorBase<unsigned int>::grow_pod(v11, v10, v13 + 1, 8);
    GeneralCategory = v18;
    LODWORD(v13) = *(a1 + 72);
  }

  *(*(a1 + 64) + 8 * v13) = GeneralCategory;
  ++*(a1 + 72);
  *(a1 + 128) = 0;
  *(a1 + 136) = &unk_1F5AFD500;
  *(a1 + 144) = 0;
  *a1 = &unk_1F5AFD498;
  *(a1 + 160) = a1;
  *(a1 + 168) = a1 + 184;
  *(a1 + 176) = 0x800000000;
  *(a1 + 152) = &unk_1F5AFD540;
  *(a1 + 568) = &unk_1F5AFD5E0;
  *(a1 + 592) = a1 + 568;
  llvm::cl::Option::setArgStr(a1, *a2, a2[1]);
  llvm::cl::sub::apply<llvm::cl::opt<BOOL,false,llvm::cl::parser<BOOL>>>(a3, a1);
  *(a1 + 32) = *a4;
  v14 = *(a5 + 2);
  if (v14)
  {
    v15 = *a5;
    v16 = v15 + 40 * v14;
    do
    {
      llvm::cl::parser<mlir::mps::LayoutConversionType>::addLiteralOption<int>(a1 + 152, *v15, *(v15 + 8), (v15 + 16), *(v15 + 24), *(v15 + 32));
      v15 += 40;
    }

    while (v15 != v16);
  }

  llvm::cl::Option::addArgument(a1);
  return a1;
}

void mlir::detail::PassOptions::Option<mlir::mps::LayoutConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::~Option(void *a1)
{
  v1 = mlir::detail::PassOptions::Option<mlir::mps::LayoutConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::~Option(a1);

  operator delete(v1);
}

void non-virtual thunk tomlir::detail::PassOptions::Option<mlir::mps::LayoutConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::~Option(uint64_t a1)
{
  v1 = mlir::detail::PassOptions::Option<mlir::mps::LayoutConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::~Option((a1 - 600));

  operator delete(v1);
}

void *llvm::cl::opt<mlir::mps::LayoutConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::~opt(void *a1)
{
  *a1 = &unk_1F5AFD498;
  v2 = a1 + 71;
  v3 = a1[74];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  a1[19] = &unk_1F5AFD590;
  v4 = a1[21];
  if (v4 != a1 + 23)
  {
    free(v4);
  }

  *a1 = &unk_1F5B3E1D8;
  v5 = a1[12];
  if (v5 != a1[11])
  {
    free(v5);
  }

  v6 = a1[8];
  if (v6 != a1 + 10)
  {
    free(v6);
  }

  return a1;
}

void llvm::cl::opt<mlir::mps::LayoutConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::~opt(char *__p)
{
  *__p = &unk_1F5AFD498;
  v2 = __p + 568;
  v3 = *(__p + 74);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(__p + 19) = &unk_1F5AFD590;
  v4 = *(__p + 21);
  if (v4 != __p + 184)
  {
    free(v4);
  }

  *__p = &unk_1F5B3E1D8;
  v5 = *(__p + 12);
  if (v5 != *(__p + 11))
  {
    free(v5);
  }

  v6 = *(__p + 8);
  if (v6 != __p + 80)
  {
    free(v6);
  }

  operator delete(__p);
}

void *mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>::~GenericOptionParser(void *result)
{
  *result = &unk_1F5AFD590;
  v1 = result[2];
  if (v1 != result + 4)
  {
    v2 = result;
    free(v1);
    return v2;
  }

  return result;
}

void mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>::~GenericOptionParser(void *a1)
{
  *a1 = &unk_1F5AFD590;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    v3 = a1;
    free(v2);
    a1 = v3;
  }

  operator delete(a1);
}

void *llvm::cl::parser<mlir::mps::LayoutConversionType>::~parser(void *result)
{
  *result = &unk_1F5AFD590;
  v1 = result[2];
  if (v1 != result + 4)
  {
    v2 = result;
    free(v1);
    return v2;
  }

  return result;
}

void llvm::cl::parser<mlir::mps::LayoutConversionType>::~parser(void *a1)
{
  *a1 = &unk_1F5AFD590;
  v2 = a1[2];
  if (v2 != a1 + 4)
  {
    v3 = a1;
    free(v2);
    a1 = v3;
  }

  operator delete(a1);
}

void *std::__function::__func<llvm::cl::opt<mlir::mps::LayoutConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::{lambda(mlir::mps::LayoutConversionType const&)#1},std::allocator<llvm::cl::opt<mlir::mps::LayoutConversionType,false,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::{lambda(mlir::mps::LayoutConversionType const&)#1}>,void ()(mlir::mps::LayoutConversionType const&)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_1F5AFD5E0;
  return result;
}

uint64_t llvm::cl::parser<mlir::mps::LayoutConversionType>::addLiteralOption<int>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *a4;
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a5;
  v19[3] = a6;
  v7 = v19;
  v19[4] = &unk_1F5AFD500;
  v21 = 1;
  v20 = v6;
  v9 = (a1 + 16);
  v8 = *(a1 + 16);
  v10 = *(a1 + 24);
  if (v10 >= *(a1 + 28))
  {
    v15 = a1;
    v16 = a2;
    v17 = a3;
    if (v8 <= v19 && v8 + 48 * v10 > v19)
    {
      v18 = v19 - v8;
      llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::mps::LayoutConversionType>::OptionInfo,false>::grow(a1 + 16, v10 + 1);
      v8 = *v9;
      v7 = &v18[*v9];
    }

    else
    {
      llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::mps::LayoutConversionType>::OptionInfo,false>::grow(a1 + 16, v10 + 1);
      v8 = *v9;
      v7 = v19;
    }

    a3 = v17;
    a2 = v16;
    a1 = v15;
  }

  v11 = v8 + 48 * *(a1 + 24);
  v12 = *(v7 + 1);
  *v11 = *v7;
  *(v11 + 16) = v12;
  *(v11 + 32) = &unk_1F5AFD520;
  v13 = *(v7 + 10);
  *(v11 + 44) = v7[44];
  *(v11 + 40) = v13;
  *(v11 + 32) = &unk_1F5AFD500;
  ++*(a1 + 24);
  return llvm::cl::AddLiteralOption(*(a1 + 8), a2, a3);
}

void llvm::SmallVectorTemplateBase<llvm::cl::parser<mlir::mps::LayoutConversionType>::OptionInfo,false>::grow(uint64_t a1, unint64_t a2)
{
  v14 = 0;
  v3 = (a1 + 16);
  llvm::SmallVectorBase<unsigned int>::mallocForGrow(a1, (a1 + 16), a2, 48, &v14);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = &v6[48 * v7];
    v9 = v5 + 32;
    v10 = v5;
    do
    {
      v11 = *(v6 + 1);
      *v10 = *v6;
      *(v10 + 16) = v11;
      *(v10 + 32) = &unk_1F5AFD520;
      v12 = *(v6 + 10);
      *(v10 + 44) = v6[44];
      *(v10 + 40) = v12;
      *(v10 + 32) = &unk_1F5AFD500;
      v10 += 48;
      v6 += 48;
      v9 += 48;
    }

    while (v6 != v8);
    v6 = *a1;
  }

  v13 = v14;
  if (v6 != v3)
  {
    free(v6);
  }

  *a1 = v5;
  *(a1 + 12) = v13;
}

uint64_t std::__function::__value_func<void ()(mlir::mps::LayoutConversionType const&)>::swap[abi:nn200100](uint64_t result, uint64_t a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

void *_ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS2_3mps20LayoutConversionTypeENS4_19GenericOptionParserIS7_EEEC1IJN4llvm2cl4descENSD_11ValuesClassEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISO_EEFvRKS7_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5AFD628;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir6detail11PassOptions6OptionINS2_3mps20LayoutConversionTypeENS4_19GenericOptionParserIS7_EEEC1IJN4llvm2cl4descENSD_11ValuesClassEEEERS4_NSC_9StringRefEDpOT_EUlRKT_E_NS_9allocatorISO_EEFvRKS7_EE7__cloneEPNS0_6__baseIST_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5AFD628;
  a2[1] = v2;
  return result;
}

void *mlir::detail::PassOptions::Option<mlir::mps::LayoutConversionType,mlir::detail::PassOptions::GenericOptionParser<mlir::mps::LayoutConversionType>>::~Option(void *a1)
{
  *a1 = &unk_1F5AFD498;
  v2 = a1 + 71;
  v3 = a1[74];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  a1[19] = &unk_1F5AFD590;
  v4 = a1[21];
  if (v4 != a1 + 23)
  {
    free(v4);
  }

  *a1 = &unk_1F5B3E1D8;
  v5 = a1[12];
  if (v5 != a1[11])
  {
    free(v5);
  }

  v6 = a1[8];
  if (v6 != a1 + 10)
  {
    free(v6);
  }

  return a1;
}

void mlir::mps::anonymous namespace::ConvertOperation::~ConvertOperation(mlir::mps::_anonymous_namespace_::ConvertOperation *this)
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

uint64_t mlir::mps::anonymous namespace::ConvertOperation::matchAndRewrite(mlir::mps::_anonymous_namespace_::ConvertOperation *this, mlir::Operation *a2, mlir::PatternRewriter *a3)
{
  if (mlir::OpInterface<mlir::ConvertOpLayoutInterface,mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits>::getInterfaceFor(a2))
  {
    if (a2)
    {
      v7 = a2;
      InterfaceFor = mlir::OpInterface<mlir::ConvertOpLayoutInterface,mlir::detail::ConvertOpLayoutInterfaceInterfaceTraits>::getInterfaceFor(a2);
      return mlir::ConvertOpLayoutInterface::convertLayout(&v7, *(this + 24), *(this + 25), a3);
    }

    v7 = 0;
    InterfaceFor = 0;
  }

  else
  {
    v7 = 0;
    InterfaceFor = 0;
  }

  return 0;
}

uint64_t mlir::mps::createLoweringPass@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x498uLL);
  *v5 = &unk_1F5AFD6B0;
  *(v5 + 472) = *a1;
  v6 = *(v5 + 528);
  if (v6 && ((*(*v6 + 48))(v6, a1), v4[680] = a1[1], (v7 = *(v4 + 92)) != 0) && ((*(*v7 + 48))(v7, a1 + 1), v4[888] = a1[2], (v8 = *(v4 + 118)) != 0) && ((*(*v8 + 48))(v8, a1 + 2), v10 = a1[3], v9 = a1 + 3, v4[1096] = v10, (v11 = *(v4 + 144)) != 0))
  {
    result = (*(*v11 + 48))(v11, v9);
    *a2 = v4;
  }

  else
  {
    v13 = std::__throw_bad_function_call[abi:nn200100]();
  }

  return result;
}

uint64_t mlir::mps::MPSLoweringBase<mlir::mps::anonymous namespace::LoweringPass>::MPSLoweringBase(uint64_t a1)
{
  *(a1 + 16) = "func.func";
  *(a1 + 24) = 9;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 200;
  *(a1 + 192) = 0x400000000;
  *(a1 + 232) = a1 + 248;
  *(a1 + 240) = 0x400000000;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0x1000000000;
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *a1 = &unk_1F5AFD720;
  *&v5 = "MPS Runtime supports Convolution Kernels with int8 inputs";
  *(&v5 + 1) = 57;
  v3 = 0;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 344, (a1 + 152), "native-int8-conv", 16, &v5, &v4);
  *(a1 + 344) = &unk_1F5AFB130;
  *(a1 + 536) = &unk_1F5AFB1B0;
  *&v5 = "MPS Runtime supports GEMM Kernels with int8 inputs";
  *(&v5 + 1) = 50;
  v3 = 0;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 552, (a1 + 152), "native-int8-gemm", 16, &v5, &v4);
  *(a1 + 552) = &unk_1F5AFB130;
  *(a1 + 744) = &unk_1F5AFB1B0;
  *&v5 = "MPS Runtime supports Convolution Kernels with int8 + zeroPoint inputs";
  *(&v5 + 1) = 69;
  v3 = 0;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 760, (a1 + 152), "native-int8-conv-zp", 19, &v5, &v4);
  *(a1 + 760) = &unk_1F5AFB130;
  *(a1 + 952) = &unk_1F5AFB1B0;
  *&v5 = "MPS Runtime supports GEMM Kernels with int8 + zeroPoint inputs";
  *(&v5 + 1) = 62;
  v3 = 0;
  v4 = &v3;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(a1 + 968, (a1 + 152), "native-int8-gemm-zp", 19, &v5, &v4);
  *(a1 + 968) = &unk_1F5AFB130;
  *(a1 + 1160) = &unk_1F5AFB1B0;
  return a1;
}

void mlir::mps::anonymous namespace::LoweringPass::~LoweringPass(mlir::mps::_anonymous_namespace_::LoweringPass *this)
{
  *this = &unk_1F5AFD720;
  *(this + 121) = &unk_1F5B3E720;
  v2 = this + 1128;
  v3 = *(this + 144);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  *(this + 121) = &unk_1F5B3E1D8;
  v4 = *(this + 133);
  if (v4 != *(this + 132))
  {
    free(v4);
  }

  v5 = *(this + 129);
  if (v5 != this + 1048)
  {
    free(v5);
  }

  *(this + 95) = &unk_1F5B3E720;
  v6 = *(this + 118);
  if (v6 == (this + 920))
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  *(this + 95) = &unk_1F5B3E1D8;
  v7 = *(this + 107);
  if (v7 != *(this + 106))
  {
    free(v7);
  }

  v8 = *(this + 103);
  if (v8 != this + 840)
  {
    free(v8);
  }

  *(this + 69) = &unk_1F5B3E720;
  v9 = *(this + 92);
  if (v9 == (this + 712))
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))(v9);
  }

  *(this + 69) = &unk_1F5B3E1D8;
  v10 = *(this + 81);
  if (v10 != *(this + 80))
  {
    free(v10);
  }

  v11 = *(this + 77);
  if (v11 != this + 632)
  {
    free(v11);
  }

  *(this + 43) = &unk_1F5B3E720;
  v12 = *(this + 66);
  if (v12 == (this + 504))
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))(v12);
  }

  *(this + 43) = &unk_1F5B3E1D8;
  v13 = *(this + 55);
  if (v13 != *(this + 54))
  {
    free(v13);
  }

  v14 = *(this + 51);
  if (v14 != this + 424)
  {
    free(v14);
  }

  *this = &unk_1F5B01A70;
  v15 = *(this + 39);
  if (v15)
  {
    *(this + 40) = v15;
    operator delete(v15);
  }

  if (*(this + 73))
  {
    v16 = *(this + 72);
    if (v16)
    {
      v17 = 0;
      do
      {
        v18 = *(*(this + 35) + v17);
        if (v18 != -8 && v18 != 0)
        {
          llvm::deallocate_buffer(v18, (*v18 + 17));
        }

        v17 += 8;
      }

      while (8 * v16 != v17);
    }
  }

  free(*(this + 35));
  v20 = *(this + 29);
  if (v20 != this + 248)
  {
    free(v20);
  }

  v21 = *(this + 23);
  if (v21 != this + 200)
  {
    free(v21);
  }

  v22 = *(this + 16);
  if (v22)
  {
    *(this + 17) = v22;
    operator delete(v22);
  }

  if (*(this + 120) == 1)
  {
    v23 = *(this + 8);
    if (v23 != *(this + 7))
    {
      free(v23);
    }
  }
}

{

  operator delete(v1);
}

void *mlir::mps::MPSLoweringBase<mlir::mps::anonymous namespace::LoweringPass>::getDependentDialects(int a1, uint64_t **a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F5AFAE60;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps::MPSDialect,void>::id, "mps", 3uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFB318;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mps_spi::MPSSPIDialect,void>::id, "mps_spi", 7uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFAEA8;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::mpsx::MPSXDialect,void>::id, "mpsx", 4uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFD148;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::arith::ArithDialect,void>::id, "arith", 5uLL, v4);
  if (v5 == v4)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))();
  }

  v4[0] = &unk_1F5AFB360;
  v5 = v4;
  mlir::DialectRegistry::insert(a2, &mlir::detail::TypeIDResolver<mlir::tensor::TensorDialect,void>::id, "tensor", 6uLL, v4);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

uint64_t sub_1DFCC2B4C(uint64_t result)
{
  if ((result & 1) == 0)
  {
    *(v1 + 40) |= 4uLL;
  }

  return result;
}

uint64_t mlir::mps::MPSLoweringBase<mlir::mps::anonymous namespace::LoweringPass>::clonePass@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x498uLL);
  v5 = *(a1 + 8);
  v4[1] = *(a1 + 16);
  *(v4 + 4) = *(a1 + 32);
  *(v4 + 1) = v5;
  *(v4 + 40) = 0;
  *(v4 + 120) = 0;
  v4[8] = 0u;
  v4[9] = 0u;
  v4[10] = 0u;
  *(v4 + 22) = 0;
  *(v4 + 23) = v4 + 200;
  *(v4 + 24) = 0x400000000;
  *(v4 + 29) = v4 + 248;
  *(v4 + 30) = 0x400000000;
  *(v4 + 35) = 0;
  *(v4 + 36) = 0;
  *(v4 + 74) = 0;
  *(v4 + 75) = 16;
  v4[19] = 0u;
  v4[20] = 0u;
  *(v4 + 42) = 0;
  *v4 = &unk_1F5AFD720;
  *&v9 = "MPS Runtime supports Convolution Kernels with int8 inputs";
  *(&v9 + 1) = 57;
  v7 = 0;
  v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 344, v4 + 19, "native-int8-conv", 16, &v9, &v8);
  *(v4 + 43) = &unk_1F5AFB130;
  *(v4 + 67) = &unk_1F5AFB1B0;
  *&v9 = "MPS Runtime supports GEMM Kernels with int8 inputs";
  *(&v9 + 1) = 50;
  v7 = 0;
  v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 552, v4 + 19, "native-int8-gemm", 16, &v9, &v8);
  *(v4 + 69) = &unk_1F5AFB130;
  *(v4 + 93) = &unk_1F5AFB1B0;
  *&v9 = "MPS Runtime supports Convolution Kernels with int8 + zeroPoint inputs";
  *(&v9 + 1) = 69;
  v7 = 0;
  v8 = &v7;
  mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 760, v4 + 19, "native-int8-conv-zp", 19, &v9, &v8);
  *(v4 + 95) = &unk_1F5AFB130;
  *(v4 + 119) = &unk_1F5AFB1B0;
  *&v9 = "MPS Runtime supports GEMM Kernels with int8 + zeroPoint inputs";
  *(&v9 + 1) = 62;
  v7 = 0;
  v8 = &v7;
  result = mlir::detail::PassOptions::Option<BOOL,llvm::cl::parser<BOOL>>::Option<llvm::cl::desc,llvm::cl::initializer<BOOL>>(v4 + 968, v4 + 19, "native-int8-gemm-zp", 19, &v9, &v8);
  *(v4 + 121) = &unk_1F5AFB130;
  *(v4 + 145) = &unk_1F5AFB1B0;
  *v4 = &unk_1F5AFD6B0;
  *a2 = v4;
  return result;
}

void mlir::mps::anonymous namespace::LoweringPass::lower(mlir::mps::_anonymous_namespace_::LoweringPass *this, mlir::Operation *a2)
{
  v378 = *MEMORY[0x1E69E9840];
  Context = mlir::Attribute::getContext((a2 + 24));
  mlir::mps::MPSConversionTarget::MPSConversionTarget(v376, Context);
  v335[0] = *(this + 472);
  v335[1] = *(this + 680);
  v335[2] = *(this + 888);
  v335[3] = *(this + 1096);
  mlir::OperationName::OperationName(&v351, "mps.bias_add_grad", 17, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.bias_add", 12, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.degamma", 11, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mpsx.deinterleave", 17, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.dequantize", 14, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.dirac", 9, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.elu", 7, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.floor_divide", 16, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.gelu", 8, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.instance_norm", 17, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mpsx.interleave", 15, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.lp_norm", 11, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.leaky_relu", 14, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.normalization", 17, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.non_zero", 12, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.prelu", 9, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.quantize", 12, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.reduction_logsumexp", 23, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.reduction_mean", 18, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.reduction_variance", 22, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.relu6", 9, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.relu_grad", 13, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.relu", 8, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.n_relu", 10, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.sigmoid_gradient", 20, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.sigmoid_gradient_with_sigmoid", 33, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.sigmoid_hard", 16, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.sigmoid", 11, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.softplus", 12, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.softplus_parametric", 23, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.softsign", 12, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.swish", 9, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  mlir::OperationName::OperationName(&v351, "mps.truncate", 12, v377);
  mlir::ConversionTarget::setOpAction(v376, v351, 2);
  v351 = &unk_1F5AFD7D0;
  LOBYTE(v352) = 0;
  v354[0] = &v351;
  mlir::OperationName::OperationName(&v336, "mpsx.quantized_matmul", 21, v377);
  v5 = v336;
  mlir::ConversionTarget::setOpAction(v376, v336, 1);
  mlir::ConversionTarget::setLegalityCallback(v376, v5, &v351);
  if (v354[0] == &v351)
  {
    (*(*v354[0] + 32))(v354[0]);
  }

  else if (v354[0])
  {
    (*(*v354[0] + 40))();
  }

  v351 = &unk_1F5AFD818;
  LOBYTE(v352) = 0;
  v354[0] = &v351;
  mlir::OperationName::OperationName(&v336, "mps.softmax", 11, v377);
  v6 = v336;
  mlir::ConversionTarget::setOpAction(v376, v336, 1);
  mlir::ConversionTarget::setLegalityCallback(v376, v6, &v351);
  if (v354[0] == &v351)
  {
    (*(*v354[0] + 32))(v354[0]);
  }

  else if (v354[0])
  {
    (*(*v354[0] + 40))();
  }

  v351 = &unk_1F5AFD860;
  v352 = v335;
  v354[0] = &v351;
  mlir::OperationName::OperationName(&v336, "mps.dequantize", 14, v377);
  v7 = v336;
  mlir::ConversionTarget::setOpAction(v376, v336, 1);
  mlir::ConversionTarget::setLegalityCallback(v376, v7, &v351);
  if (v354[0] == &v351)
  {
    (*(*v354[0] + 32))(v354[0]);
  }

  else if (v354[0])
  {
    (*(*v354[0] + 40))();
  }

  v351 = &unk_1F5AFD8A8;
  LOBYTE(v352) = 0;
  v354[0] = &v351;
  mlir::OperationName::OperationName(&v336, "mps.dequantize_lut", 18, v377);
  v8 = v336;
  mlir::ConversionTarget::setOpAction(v376, v336, 1);
  mlir::ConversionTarget::setLegalityCallback(v376, v8, &v351);
  if (v354[0] == &v351)
  {
    (*(*v354[0] + 32))(v354[0]);
  }

  else if (v354[0])
  {
    (*(*v354[0] + 40))();
  }

  v374 = 0;
  v375 = 0u;
  v370 = 0;
  memset(v366, 0, sizeof(v366));
  v364 = 0;
  v360 = 0;
  memset(v362, 0, sizeof(v362));
  memset(v358, 0, sizeof(v358));
  v357 = 0u;
  memset(v356, 0, sizeof(v356));
  v355 = 0u;
  memset(v354, 0, sizeof(v354));
  v351 = &unk_1F5AFD910;
  v352 = v354;
  v353 = 0x400000000;
  *&v355 = v356;
  HIDWORD(v355) = 2;
  *&v357 = v358;
  HIDWORD(v357) = 2;
  v359 = v362;
  v361 = 2;
  v363 = v366;
  v365 = 2;
  v368 = 0;
  v367 = 0;
  v369 = 0;
  v372 = 0;
  v371 = 0;
  v373 = 0;
  llvm::sys::RWMutexImpl::RWMutexImpl(&v375);
  *(&v375 + 1) = 0;
  v351 = &unk_1F5AFD8F0;
  v336 = &unk_1F5AFD930;
  __p[0] = &v351;
  v338[0] = &v336;
  mlir::TypeConverter::registerConversion(&v351, &v336);
  if (v338[0] == &v336)
  {
    (*(*v338[0] + 32))(v338[0]);
  }

  else if (v338[0])
  {
    (*(*v338[0] + 40))();
  }

  v336 = &unk_1F5AFD978;
  v338[0] = &v336;
  if (DWORD2(v357) >= HIDWORD(v357))
  {
    llvm::SmallVectorTemplateBase<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>,false>::growAndEmplaceBack<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>>(&v357, &v336);
  }

  else
  {
    *(v357 + 32 * DWORD2(v357) + 24) = v357 + 32 * DWORD2(v357);
    (*(*v338[0] + 24))(v338[0]);
    ++DWORD2(v357);
  }

  if (v338[0] == &v336)
  {
    (*(*v338[0] + 32))(v338[0]);
  }

  else if (v338[0])
  {
    (*(*v338[0] + 40))();
  }

  v336 = Context;
  *__p = 0u;
  *v338 = 0u;
  v339 = &v341;
  v340 = 0x600000000;
  v342 = 0;
  v343 = 0;
  v344 = 0;
  v345 = 0;
  v346 = 0;
  v347 = 0x2800000000;
  v348 = 0;
  v349 = 0;
  v350 = 0x2800000000;
  v9 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(v332, 1);
  mlir::Pattern::Pattern((v9 + 1), "mps.bias_add_grad", 17, v332[0], Context, 0, 0);
  v9[12] = &v351;
  *v9 = &unk_1F5AFD9C0;
  if (!v9[9])
  {
    *&v332[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::LowerBiasAddGradNCHW]";
    *(&v332[0] + 1) = 104;
    v10 = llvm::StringRef::find(v332, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v332[0] + 1) >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = *(&v332[0] + 1);
    }

    v12 = *&v332[0] + v11;
    v13 = *(&v332[0] + 1) - v11;
    if (*(&v332[0] + 1) - v11 >= 0x12)
    {
      v14 = 18;
    }

    else
    {
      v14 = *(&v332[0] + 1) - v11;
    }

    v15 = v12 + v14;
    v16 = v13 - v14;
    if (v16 >= v16 - 1)
    {
      --v16;
    }

    v9[8] = v15;
    v9[9] = v16;
  }

  v17 = *(v9 + 22);
  if (v17 > *(v9 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v9 + 10), (v9 + 12), v17, 16);
    LODWORD(v17) = *(v9 + 22);
  }

  *(v9 + 22) = v17;
  v18 = __p[1];
  if (__p[1] >= v338[0])
  {
    v20 = __p[0];
    v21 = __p[1] - __p[0];
    v22 = (__p[1] - __p[0]) >> 3;
    v23 = v22 + 1;
    if ((v22 + 1) >> 61)
    {
      goto LABEL_471;
    }

    v24 = v338[0] - __p[0];
    if ((v338[0] - __p[0]) >> 2 > v23)
    {
      v23 = v24 >> 2;
    }

    if (v24 >= 0x7FFFFFFFFFFFFFF8)
    {
      v25 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v25 = v23;
    }

    if (v25)
    {
      if (v25 >> 61)
      {
        goto LABEL_472;
      }

      v26 = operator new(8 * v25);
    }

    else
    {
      v26 = 0;
    }

    v27 = &v26[8 * v22];
    *v27 = v9;
    v19 = v27 + 8;
    memcpy(v26, v20, v21);
    __p[0] = v26;
    __p[1] = v19;
    v338[0] = &v26[8 * v25];
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *__p[1] = v9;
    v19 = v18 + 8;
  }

  __p[1] = v19;
  v28 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(v332, 1);
  mlir::Pattern::Pattern((v28 + 1), "mps.bias_add_grad", 17, v332[0], Context, 0, 0);
  v28[12] = &v351;
  *v28 = &unk_1F5AFDA28;
  if (!v28[9])
  {
    *&v332[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::LowerBiasAddGradNHWC]";
    *(&v332[0] + 1) = 104;
    v29 = llvm::StringRef::find(v332, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v332[0] + 1) >= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = *(&v332[0] + 1);
    }

    v31 = *&v332[0] + v30;
    v32 = *(&v332[0] + 1) - v30;
    if (*(&v332[0] + 1) - v30 >= 0x12)
    {
      v33 = 18;
    }

    else
    {
      v33 = *(&v332[0] + 1) - v30;
    }

    v34 = v31 + v33;
    v35 = v32 - v33;
    if (v35 >= v35 - 1)
    {
      --v35;
    }

    v28[8] = v34;
    v28[9] = v35;
  }

  v36 = *(v28 + 22);
  if (v36 > *(v28 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v28 + 10), (v28 + 12), v36, 16);
    LODWORD(v36) = *(v28 + 22);
  }

  *(v28 + 22) = v36;
  v37 = __p[1];
  if (__p[1] >= v338[0])
  {
    v39 = __p[0];
    v40 = __p[1] - __p[0];
    v41 = (__p[1] - __p[0]) >> 3;
    v42 = v41 + 1;
    if ((v41 + 1) >> 61)
    {
      goto LABEL_471;
    }

    v43 = v338[0] - __p[0];
    if ((v338[0] - __p[0]) >> 2 > v42)
    {
      v42 = v43 >> 2;
    }

    if (v43 >= 0x7FFFFFFFFFFFFFF8)
    {
      v44 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v44 = v42;
    }

    if (v44)
    {
      if (v44 >> 61)
      {
        goto LABEL_472;
      }

      v45 = operator new(8 * v44);
    }

    else
    {
      v45 = 0;
    }

    v46 = &v45[8 * v41];
    *v46 = v28;
    v38 = v46 + 8;
    memcpy(v45, v39, v40);
    __p[0] = v45;
    __p[1] = v38;
    v338[0] = &v45[8 * v44];
    if (v39)
    {
      operator delete(v39);
    }
  }

  else
  {
    *__p[1] = v28;
    v38 = v37 + 8;
  }

  __p[1] = v38;
  v47 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(v332, 1);
  mlir::Pattern::Pattern((v47 + 1), "mps.bias_add", 12, v332[0], Context, 0, 0);
  v47[12] = &v351;
  *v47 = &unk_1F5AFDA90;
  if (!v47[9])
  {
    *&v332[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::LowerBiasAddNCHW]";
    *(&v332[0] + 1) = 100;
    v48 = llvm::StringRef::find(v332, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v332[0] + 1) >= v48)
    {
      v49 = v48;
    }

    else
    {
      v49 = *(&v332[0] + 1);
    }

    v50 = *&v332[0] + v49;
    v51 = *(&v332[0] + 1) - v49;
    if (*(&v332[0] + 1) - v49 >= 0x12)
    {
      v52 = 18;
    }

    else
    {
      v52 = *(&v332[0] + 1) - v49;
    }

    v53 = v50 + v52;
    v54 = v51 - v52;
    if (v54 >= v54 - 1)
    {
      --v54;
    }

    v47[8] = v53;
    v47[9] = v54;
  }

  v55 = *(v47 + 22);
  if (v55 > *(v47 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v47 + 10), (v47 + 12), v55, 16);
    LODWORD(v55) = *(v47 + 22);
  }

  *(v47 + 22) = v55;
  v56 = __p[1];
  if (__p[1] >= v338[0])
  {
    v58 = __p[0];
    v59 = __p[1] - __p[0];
    v60 = (__p[1] - __p[0]) >> 3;
    v61 = v60 + 1;
    if ((v60 + 1) >> 61)
    {
      goto LABEL_471;
    }

    v62 = v338[0] - __p[0];
    if ((v338[0] - __p[0]) >> 2 > v61)
    {
      v61 = v62 >> 2;
    }

    if (v62 >= 0x7FFFFFFFFFFFFFF8)
    {
      v63 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v63 = v61;
    }

    if (v63)
    {
      if (v63 >> 61)
      {
        goto LABEL_472;
      }

      v64 = operator new(8 * v63);
    }

    else
    {
      v64 = 0;
    }

    v65 = &v64[8 * v60];
    *v65 = v47;
    v57 = v65 + 8;
    memcpy(v64, v58, v59);
    __p[0] = v64;
    __p[1] = v57;
    v338[0] = &v64[8 * v63];
    if (v58)
    {
      operator delete(v58);
    }
  }

  else
  {
    *__p[1] = v47;
    v57 = v56 + 8;
  }

  __p[1] = v57;
  v66 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(v332, 1);
  mlir::Pattern::Pattern((v66 + 1), "mps.reduction_mean", 18, v332[0], Context, 0, 0);
  v66[12] = &v351;
  *v66 = &unk_1F5AFDAF8;
  if (!v66[9])
  {
    *&v332[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::LowerReductionMean]";
    *(&v332[0] + 1) = 102;
    v67 = llvm::StringRef::find(v332, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v332[0] + 1) >= v67)
    {
      v68 = v67;
    }

    else
    {
      v68 = *(&v332[0] + 1);
    }

    v69 = *&v332[0] + v68;
    v70 = *(&v332[0] + 1) - v68;
    if (*(&v332[0] + 1) - v68 >= 0x12)
    {
      v71 = 18;
    }

    else
    {
      v71 = *(&v332[0] + 1) - v68;
    }

    v72 = v69 + v71;
    v73 = v70 - v71;
    if (v73 >= v73 - 1)
    {
      --v73;
    }

    v66[8] = v72;
    v66[9] = v73;
  }

  v74 = *(v66 + 22);
  if (v74 > *(v66 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v66 + 10), (v66 + 12), v74, 16);
    LODWORD(v74) = *(v66 + 22);
  }

  *(v66 + 22) = v74;
  v75 = __p[1];
  if (__p[1] >= v338[0])
  {
    v77 = __p[0];
    v78 = __p[1] - __p[0];
    v79 = (__p[1] - __p[0]) >> 3;
    v80 = v79 + 1;
    if ((v79 + 1) >> 61)
    {
      goto LABEL_471;
    }

    v81 = v338[0] - __p[0];
    if ((v338[0] - __p[0]) >> 2 > v80)
    {
      v80 = v81 >> 2;
    }

    if (v81 >= 0x7FFFFFFFFFFFFFF8)
    {
      v82 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v82 = v80;
    }

    if (v82)
    {
      if (v82 >> 61)
      {
        goto LABEL_472;
      }

      v83 = operator new(8 * v82);
    }

    else
    {
      v83 = 0;
    }

    v84 = &v83[8 * v79];
    *v84 = v66;
    v76 = v84 + 8;
    memcpy(v83, v77, v78);
    __p[0] = v83;
    __p[1] = v76;
    v338[0] = &v83[8 * v82];
    if (v77)
    {
      operator delete(v77);
    }
  }

  else
  {
    *__p[1] = v66;
    v76 = v75 + 8;
  }

  __p[1] = v76;
  v85 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(v332, 1);
  mlir::Pattern::Pattern((v85 + 1), "mps.reduction_variance", 22, v332[0], Context, 0, 0);
  v85[12] = &v351;
  *v85 = &unk_1F5AFDB60;
  if (!v85[9])
  {
    *&v332[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::LowerReductionVariance]";
    *(&v332[0] + 1) = 106;
    v86 = llvm::StringRef::find(v332, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v332[0] + 1) >= v86)
    {
      v87 = v86;
    }

    else
    {
      v87 = *(&v332[0] + 1);
    }

    v88 = *&v332[0] + v87;
    v89 = *(&v332[0] + 1) - v87;
    if (*(&v332[0] + 1) - v87 >= 0x12)
    {
      v90 = 18;
    }

    else
    {
      v90 = *(&v332[0] + 1) - v87;
    }

    v91 = v88 + v90;
    v92 = v89 - v90;
    if (v92 >= v92 - 1)
    {
      --v92;
    }

    v85[8] = v91;
    v85[9] = v92;
  }

  v93 = *(v85 + 22);
  if (v93 > *(v85 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v85 + 10), (v85 + 12), v93, 16);
    LODWORD(v93) = *(v85 + 22);
  }

  *(v85 + 22) = v93;
  v94 = __p[1];
  if (__p[1] >= v338[0])
  {
    v96 = __p[0];
    v97 = __p[1] - __p[0];
    v98 = (__p[1] - __p[0]) >> 3;
    v99 = v98 + 1;
    if ((v98 + 1) >> 61)
    {
      goto LABEL_471;
    }

    v100 = v338[0] - __p[0];
    if ((v338[0] - __p[0]) >> 2 > v99)
    {
      v99 = v100 >> 2;
    }

    if (v100 >= 0x7FFFFFFFFFFFFFF8)
    {
      v101 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v101 = v99;
    }

    if (v101)
    {
      if (v101 >> 61)
      {
        goto LABEL_472;
      }

      v102 = operator new(8 * v101);
    }

    else
    {
      v102 = 0;
    }

    v103 = &v102[8 * v98];
    *v103 = v85;
    v95 = v103 + 8;
    memcpy(v102, v96, v97);
    __p[0] = v102;
    __p[1] = v95;
    v338[0] = &v102[8 * v101];
    if (v96)
    {
      operator delete(v96);
    }
  }

  else
  {
    *__p[1] = v85;
    v95 = v94 + 8;
  }

  __p[1] = v95;
  v104 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(v332, 1);
  mlir::Pattern::Pattern((v104 + 1), "mps.softplus", 12, v332[0], Context, 0, 0);
  v104[12] = &v351;
  *v104 = &unk_1F5AFDBC8;
  if (!v104[9])
  {
    *&v332[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::LowerSoftplus]";
    *(&v332[0] + 1) = 97;
    v105 = llvm::StringRef::find(v332, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v332[0] + 1) >= v105)
    {
      v106 = v105;
    }

    else
    {
      v106 = *(&v332[0] + 1);
    }

    v107 = *&v332[0] + v106;
    v108 = *(&v332[0] + 1) - v106;
    if (*(&v332[0] + 1) - v106 >= 0x12)
    {
      v109 = 18;
    }

    else
    {
      v109 = *(&v332[0] + 1) - v106;
    }

    v110 = v107 + v109;
    v111 = v108 - v109;
    if (v111 >= v111 - 1)
    {
      --v111;
    }

    v104[8] = v110;
    v104[9] = v111;
  }

  v112 = *(v104 + 22);
  if (v112 > *(v104 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v104 + 10), (v104 + 12), v112, 16);
    LODWORD(v112) = *(v104 + 22);
  }

  *(v104 + 22) = v112;
  v113 = __p[1];
  if (__p[1] >= v338[0])
  {
    v115 = __p[0];
    v116 = __p[1] - __p[0];
    v117 = (__p[1] - __p[0]) >> 3;
    v118 = v117 + 1;
    if ((v117 + 1) >> 61)
    {
      goto LABEL_471;
    }

    v119 = v338[0] - __p[0];
    if ((v338[0] - __p[0]) >> 2 > v118)
    {
      v118 = v119 >> 2;
    }

    if (v119 >= 0x7FFFFFFFFFFFFFF8)
    {
      v120 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v120 = v118;
    }

    if (v120)
    {
      if (v120 >> 61)
      {
        goto LABEL_472;
      }

      v121 = operator new(8 * v120);
    }

    else
    {
      v121 = 0;
    }

    v122 = &v121[8 * v117];
    *v122 = v104;
    v114 = v122 + 8;
    memcpy(v121, v115, v116);
    __p[0] = v121;
    __p[1] = v114;
    v338[0] = &v121[8 * v120];
    if (v115)
    {
      operator delete(v115);
    }
  }

  else
  {
    *__p[1] = v104;
    v114 = v113 + 8;
  }

  __p[1] = v114;
  v123 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(v332, 1);
  mlir::Pattern::Pattern((v123 + 1), "mps.softplus_parametric", 23, v332[0], Context, 0, 0);
  v123[12] = &v351;
  *v123 = &unk_1F5AFDC30;
  if (!v123[9])
  {
    *&v332[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::LowerSoftplusParametric]";
    *(&v332[0] + 1) = 107;
    v124 = llvm::StringRef::find(v332, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v332[0] + 1) >= v124)
    {
      v125 = v124;
    }

    else
    {
      v125 = *(&v332[0] + 1);
    }

    v126 = *&v332[0] + v125;
    v127 = *(&v332[0] + 1) - v125;
    if (*(&v332[0] + 1) - v125 >= 0x12)
    {
      v128 = 18;
    }

    else
    {
      v128 = *(&v332[0] + 1) - v125;
    }

    v129 = v126 + v128;
    v130 = v127 - v128;
    if (v130 >= v130 - 1)
    {
      --v130;
    }

    v123[8] = v129;
    v123[9] = v130;
  }

  v131 = *(v123 + 22);
  if (v131 > *(v123 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v123 + 10), (v123 + 12), v131, 16);
    LODWORD(v131) = *(v123 + 22);
  }

  *(v123 + 22) = v131;
  v132 = __p[1];
  if (__p[1] >= v338[0])
  {
    v134 = __p[0];
    v135 = __p[1] - __p[0];
    v136 = (__p[1] - __p[0]) >> 3;
    v137 = v136 + 1;
    if ((v136 + 1) >> 61)
    {
      goto LABEL_471;
    }

    v138 = v338[0] - __p[0];
    if ((v338[0] - __p[0]) >> 2 > v137)
    {
      v137 = v138 >> 2;
    }

    if (v138 >= 0x7FFFFFFFFFFFFFF8)
    {
      v139 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v139 = v137;
    }

    if (v139)
    {
      if (v139 >> 61)
      {
        goto LABEL_472;
      }

      v140 = operator new(8 * v139);
    }

    else
    {
      v140 = 0;
    }

    v141 = &v140[8 * v136];
    *v141 = v123;
    v133 = v141 + 8;
    memcpy(v140, v134, v135);
    __p[0] = v140;
    __p[1] = v133;
    v338[0] = &v140[8 * v139];
    if (v134)
    {
      operator delete(v134);
    }
  }

  else
  {
    *__p[1] = v123;
    v133 = v132 + 8;
  }

  __p[1] = v133;
  v142 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(v332, 1);
  mlir::Pattern::Pattern((v142 + 1), "mps.non_zero", 12, v332[0], Context, 0, 0);
  v142[12] = &v351;
  *v142 = &unk_1F5AFDC98;
  if (!v142[9])
  {
    *&v332[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::LowerNonZero]";
    *(&v332[0] + 1) = 96;
    v143 = llvm::StringRef::find(v332, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v332[0] + 1) >= v143)
    {
      v144 = v143;
    }

    else
    {
      v144 = *(&v332[0] + 1);
    }

    v145 = *&v332[0] + v144;
    v146 = *(&v332[0] + 1) - v144;
    if (*(&v332[0] + 1) - v144 >= 0x12)
    {
      v147 = 18;
    }

    else
    {
      v147 = *(&v332[0] + 1) - v144;
    }

    v148 = v145 + v147;
    v149 = v146 - v147;
    if (v149 >= v149 - 1)
    {
      --v149;
    }

    v142[8] = v148;
    v142[9] = v149;
  }

  v150 = *(v142 + 22);
  if (v150 > *(v142 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v142 + 10), (v142 + 12), v150, 16);
    LODWORD(v150) = *(v142 + 22);
  }

  *(v142 + 22) = v150;
  v151 = __p[1];
  if (__p[1] >= v338[0])
  {
    v153 = __p[0];
    v154 = __p[1] - __p[0];
    v155 = (__p[1] - __p[0]) >> 3;
    v156 = v155 + 1;
    if ((v155 + 1) >> 61)
    {
      goto LABEL_471;
    }

    v157 = v338[0] - __p[0];
    if ((v338[0] - __p[0]) >> 2 > v156)
    {
      v156 = v157 >> 2;
    }

    if (v157 >= 0x7FFFFFFFFFFFFFF8)
    {
      v158 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v158 = v156;
    }

    if (v158)
    {
      if (v158 >> 61)
      {
        goto LABEL_472;
      }

      v159 = operator new(8 * v158);
    }

    else
    {
      v159 = 0;
    }

    v160 = &v159[8 * v155];
    *v160 = v142;
    v152 = v160 + 8;
    memcpy(v159, v153, v154);
    __p[0] = v159;
    __p[1] = v152;
    v338[0] = &v159[8 * v158];
    if (v153)
    {
      operator delete(v153);
    }
  }

  else
  {
    *__p[1] = v142;
    v152 = v151 + 8;
  }

  __p[1] = v152;
  v161 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(v332, 1);
  mlir::Pattern::Pattern((v161 + 1), "mps.sigmoid", 11, v332[0], Context, 0, 0);
  v161[12] = &v351;
  *v161 = &unk_1F5AFDD00;
  if (!v161[9])
  {
    *&v332[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::LowerSigmoid]";
    *(&v332[0] + 1) = 96;
    v162 = llvm::StringRef::find(v332, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v332[0] + 1) >= v162)
    {
      v163 = v162;
    }

    else
    {
      v163 = *(&v332[0] + 1);
    }

    v164 = *&v332[0] + v163;
    v165 = *(&v332[0] + 1) - v163;
    if (*(&v332[0] + 1) - v163 >= 0x12)
    {
      v166 = 18;
    }

    else
    {
      v166 = *(&v332[0] + 1) - v163;
    }

    v167 = v164 + v166;
    v168 = v165 - v166;
    if (v168 >= v168 - 1)
    {
      --v168;
    }

    v161[8] = v167;
    v161[9] = v168;
  }

  v169 = *(v161 + 22);
  if (v169 > *(v161 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v161 + 10), (v161 + 12), v169, 16);
    LODWORD(v169) = *(v161 + 22);
  }

  *(v161 + 22) = v169;
  v170 = __p[1];
  if (__p[1] >= v338[0])
  {
    v172 = __p[0];
    v173 = __p[1] - __p[0];
    v174 = (__p[1] - __p[0]) >> 3;
    v175 = v174 + 1;
    if ((v174 + 1) >> 61)
    {
      goto LABEL_471;
    }

    v176 = v338[0] - __p[0];
    if ((v338[0] - __p[0]) >> 2 > v175)
    {
      v175 = v176 >> 2;
    }

    if (v176 >= 0x7FFFFFFFFFFFFFF8)
    {
      v177 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v177 = v175;
    }

    if (v177)
    {
      if (v177 >> 61)
      {
        goto LABEL_472;
      }

      v178 = operator new(8 * v177);
    }

    else
    {
      v178 = 0;
    }

    v179 = &v178[8 * v174];
    *v179 = v161;
    v171 = v179 + 8;
    memcpy(v178, v172, v173);
    __p[0] = v178;
    __p[1] = v171;
    v338[0] = &v178[8 * v177];
    if (v172)
    {
      operator delete(v172);
    }
  }

  else
  {
    *__p[1] = v161;
    v171 = v170 + 8;
  }

  __p[1] = v171;
  v180 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(v332, 1);
  mlir::Pattern::Pattern((v180 + 1), "arith.select", 12, v332[0], Context, 0, 0);
  v180[12] = &v351;
  *v180 = &unk_1F5AFDD68;
  if (!v180[9])
  {
    *&v332[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::LowerArithSelect]";
    *(&v332[0] + 1) = 100;
    v181 = llvm::StringRef::find(v332, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v332[0] + 1) >= v181)
    {
      v182 = v181;
    }

    else
    {
      v182 = *(&v332[0] + 1);
    }

    v183 = *&v332[0] + v182;
    v184 = *(&v332[0] + 1) - v182;
    if (*(&v332[0] + 1) - v182 >= 0x12)
    {
      v185 = 18;
    }

    else
    {
      v185 = *(&v332[0] + 1) - v182;
    }

    v186 = v183 + v185;
    v187 = v184 - v185;
    if (v187 >= v187 - 1)
    {
      --v187;
    }

    v180[8] = v186;
    v180[9] = v187;
  }

  v188 = *(v180 + 22);
  if (v188 > *(v180 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v180 + 10), (v180 + 12), v188, 16);
    LODWORD(v188) = *(v180 + 22);
  }

  *(v180 + 22) = v188;
  v189 = __p[1];
  if (__p[1] >= v338[0])
  {
    v191 = __p[0];
    v192 = __p[1] - __p[0];
    v193 = (__p[1] - __p[0]) >> 3;
    v194 = v193 + 1;
    if ((v193 + 1) >> 61)
    {
      goto LABEL_471;
    }

    v195 = v338[0] - __p[0];
    if ((v338[0] - __p[0]) >> 2 > v194)
    {
      v194 = v195 >> 2;
    }

    if (v195 >= 0x7FFFFFFFFFFFFFF8)
    {
      v196 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v196 = v194;
    }

    if (v196)
    {
      if (v196 >> 61)
      {
        goto LABEL_472;
      }

      v197 = operator new(8 * v196);
    }

    else
    {
      v197 = 0;
    }

    v198 = &v197[8 * v193];
    *v198 = v180;
    v190 = v198 + 8;
    memcpy(v197, v191, v192);
    __p[0] = v197;
    __p[1] = v190;
    v338[0] = &v197[8 * v196];
    if (v191)
    {
      operator delete(v191);
    }
  }

  else
  {
    *__p[1] = v180;
    v190 = v189 + 8;
  }

  __p[1] = v190;
  v199 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(v332, 1);
  mlir::Pattern::Pattern((v199 + 1), "mpsx.deinterleave", 17, v332[0], Context, 0, 0);
  v199[12] = 0;
  *v199 = &unk_1F5AFDDD0;
  if (!v199[9])
  {
    *&v332[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::LowerInterleave<mlir::mpsx::DeinterleaveOp>]";
    *(&v332[0] + 1) = 127;
    v200 = llvm::StringRef::find(v332, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v332[0] + 1) >= v200)
    {
      v201 = v200;
    }

    else
    {
      v201 = *(&v332[0] + 1);
    }

    v202 = *&v332[0] + v201;
    v203 = *(&v332[0] + 1) - v201;
    if (*(&v332[0] + 1) - v201 >= 0x12)
    {
      v204 = 18;
    }

    else
    {
      v204 = *(&v332[0] + 1) - v201;
    }

    v205 = v202 + v204;
    v206 = v203 - v204;
    if (v206 >= v206 - 1)
    {
      --v206;
    }

    v199[8] = v205;
    v199[9] = v206;
  }

  v207 = *(v199 + 22);
  if (v207 > *(v199 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v199 + 10), (v199 + 12), v207, 16);
    LODWORD(v207) = *(v199 + 22);
  }

  *(v199 + 22) = v207;
  v208 = __p[1];
  if (__p[1] >= v338[0])
  {
    v210 = __p[0];
    v211 = __p[1] - __p[0];
    v212 = (__p[1] - __p[0]) >> 3;
    v213 = v212 + 1;
    if ((v212 + 1) >> 61)
    {
      goto LABEL_471;
    }

    v214 = v338[0] - __p[0];
    if ((v338[0] - __p[0]) >> 2 > v213)
    {
      v213 = v214 >> 2;
    }

    if (v214 >= 0x7FFFFFFFFFFFFFF8)
    {
      v215 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v215 = v213;
    }

    if (v215)
    {
      if (v215 >> 61)
      {
        goto LABEL_472;
      }

      v216 = operator new(8 * v215);
    }

    else
    {
      v216 = 0;
    }

    v217 = &v216[8 * v212];
    *v217 = v199;
    v209 = v217 + 8;
    memcpy(v216, v210, v211);
    __p[0] = v216;
    __p[1] = v209;
    v338[0] = &v216[8 * v215];
    if (v210)
    {
      operator delete(v210);
    }
  }

  else
  {
    *__p[1] = v199;
    v209 = v208 + 8;
  }

  __p[1] = v209;
  v218 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(v332, 1);
  mlir::Pattern::Pattern((v218 + 1), "mpsx.interleave", 15, v332[0], Context, 0, 0);
  v218[12] = 0;
  *v218 = &unk_1F5AFDE38;
  if (!v218[9])
  {
    *&v332[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::LowerInterleave<mlir::mpsx::InterleaveOp>]";
    *(&v332[0] + 1) = 125;
    v219 = llvm::StringRef::find(v332, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v332[0] + 1) >= v219)
    {
      v220 = v219;
    }

    else
    {
      v220 = *(&v332[0] + 1);
    }

    v221 = *&v332[0] + v220;
    v222 = *(&v332[0] + 1) - v220;
    if (*(&v332[0] + 1) - v220 >= 0x12)
    {
      v223 = 18;
    }

    else
    {
      v223 = *(&v332[0] + 1) - v220;
    }

    v224 = v221 + v223;
    v225 = v222 - v223;
    if (v225 >= v225 - 1)
    {
      --v225;
    }

    v218[8] = v224;
    v218[9] = v225;
  }

  v226 = *(v218 + 22);
  if (v226 > *(v218 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v218 + 10), (v218 + 12), v226, 16);
    LODWORD(v226) = *(v218 + 22);
  }

  *(v218 + 22) = v226;
  v227 = __p[1];
  if (__p[1] >= v338[0])
  {
    v229 = __p[0];
    v230 = __p[1] - __p[0];
    v231 = (__p[1] - __p[0]) >> 3;
    v232 = v231 + 1;
    if ((v231 + 1) >> 61)
    {
      goto LABEL_471;
    }

    v233 = v338[0] - __p[0];
    if ((v338[0] - __p[0]) >> 2 > v232)
    {
      v232 = v233 >> 2;
    }

    if (v233 >= 0x7FFFFFFFFFFFFFF8)
    {
      v234 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v234 = v232;
    }

    if (v234)
    {
      if (v234 >> 61)
      {
        goto LABEL_472;
      }

      v235 = operator new(8 * v234);
    }

    else
    {
      v235 = 0;
    }

    v236 = &v235[8 * v231];
    *v236 = v218;
    v228 = v236 + 8;
    memcpy(v235, v229, v230);
    __p[0] = v235;
    __p[1] = v228;
    v338[0] = &v235[8 * v234];
    if (v229)
    {
      operator delete(v229);
    }
  }

  else
  {
    *__p[1] = v218;
    v228 = v227 + 8;
  }

  __p[1] = v228;
  v237 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(v332, 1);
  mlir::Pattern::Pattern((v237 + 1), "mps.dequantize", 14, v332[0], Context, 0, 0);
  v237[12] = 0;
  *v237 = &unk_1F5AFDEA0;
  if (!v237[9])
  {
    *&v332[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::LowerDequantize]";
    *(&v332[0] + 1) = 99;
    v238 = llvm::StringRef::find(v332, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v332[0] + 1) >= v238)
    {
      v239 = v238;
    }

    else
    {
      v239 = *(&v332[0] + 1);
    }

    v240 = *&v332[0] + v239;
    v241 = *(&v332[0] + 1) - v239;
    if (*(&v332[0] + 1) - v239 >= 0x12)
    {
      v242 = 18;
    }

    else
    {
      v242 = *(&v332[0] + 1) - v239;
    }

    v243 = v240 + v242;
    v244 = v241 - v242;
    if (v244 >= v244 - 1)
    {
      --v244;
    }

    v237[8] = v243;
    v237[9] = v244;
  }

  v245 = *(v237 + 22);
  if (v245 > *(v237 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v237 + 10), (v237 + 12), v245, 16);
    LODWORD(v245) = *(v237 + 22);
  }

  *(v237 + 22) = v245;
  v246 = __p[1];
  if (__p[1] >= v338[0])
  {
    v248 = __p[0];
    v249 = __p[1] - __p[0];
    v250 = (__p[1] - __p[0]) >> 3;
    v251 = v250 + 1;
    if ((v250 + 1) >> 61)
    {
      goto LABEL_471;
    }

    v252 = v338[0] - __p[0];
    if ((v338[0] - __p[0]) >> 2 > v251)
    {
      v251 = v252 >> 2;
    }

    if (v252 >= 0x7FFFFFFFFFFFFFF8)
    {
      v253 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v253 = v251;
    }

    if (v253)
    {
      if (v253 >> 61)
      {
        goto LABEL_472;
      }

      v254 = operator new(8 * v253);
    }

    else
    {
      v254 = 0;
    }

    v255 = &v254[8 * v250];
    *v255 = v237;
    v247 = v255 + 8;
    memcpy(v254, v248, v249);
    __p[0] = v254;
    __p[1] = v247;
    v338[0] = &v254[8 * v253];
    if (v248)
    {
      operator delete(v248);
    }
  }

  else
  {
    *__p[1] = v237;
    v247 = v246 + 8;
  }

  __p[1] = v247;
  v256 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(v332, 1);
  mlir::Pattern::Pattern((v256 + 1), "mps.dequantize_lut", 18, v332[0], Context, 0, 0);
  v256[12] = 0;
  *v256 = &unk_1F5AFDF08;
  if (!v256[9])
  {
    *&v332[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::LowerDequantizeLUT]";
    *(&v332[0] + 1) = 102;
    v257 = llvm::StringRef::find(v332, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v332[0] + 1) >= v257)
    {
      v258 = v257;
    }

    else
    {
      v258 = *(&v332[0] + 1);
    }

    v259 = *&v332[0] + v258;
    v260 = *(&v332[0] + 1) - v258;
    if (*(&v332[0] + 1) - v258 >= 0x12)
    {
      v261 = 18;
    }

    else
    {
      v261 = *(&v332[0] + 1) - v258;
    }

    v262 = v259 + v261;
    v263 = v260 - v261;
    if (v263 >= v263 - 1)
    {
      --v263;
    }

    v256[8] = v262;
    v256[9] = v263;
  }

  v264 = *(v256 + 22);
  if (v264 > *(v256 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v256 + 10), (v256 + 12), v264, 16);
    LODWORD(v264) = *(v256 + 22);
  }

  *(v256 + 22) = v264;
  v265 = __p[1];
  if (__p[1] >= v338[0])
  {
    v267 = __p[0];
    v268 = __p[1] - __p[0];
    v269 = (__p[1] - __p[0]) >> 3;
    v270 = v269 + 1;
    if ((v269 + 1) >> 61)
    {
      goto LABEL_471;
    }

    v271 = v338[0] - __p[0];
    if ((v338[0] - __p[0]) >> 2 > v270)
    {
      v270 = v271 >> 2;
    }

    if (v271 >= 0x7FFFFFFFFFFFFFF8)
    {
      v272 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v272 = v270;
    }

    if (v272)
    {
      if (v272 >> 61)
      {
        goto LABEL_472;
      }

      v273 = operator new(8 * v272);
    }

    else
    {
      v273 = 0;
    }

    v274 = &v273[8 * v269];
    *v274 = v256;
    v266 = v274 + 8;
    memcpy(v273, v267, v268);
    __p[0] = v273;
    __p[1] = v266;
    v338[0] = &v273[8 * v272];
    if (v267)
    {
      operator delete(v267);
    }
  }

  else
  {
    *__p[1] = v256;
    v266 = v265 + 8;
  }

  __p[1] = v266;
  v275 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(v332, 1);
  mlir::Pattern::Pattern((v275 + 1), "mps.dequantize", 14, v332[0], Context, 0, 0);
  v275[12] = 0;
  *v275 = &unk_1F5AFDF70;
  if (!v275[9])
  {
    *&v332[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::LowerDequantizeND]";
    *(&v332[0] + 1) = 101;
    v276 = llvm::StringRef::find(v332, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v332[0] + 1) >= v276)
    {
      v277 = v276;
    }

    else
    {
      v277 = *(&v332[0] + 1);
    }

    v278 = *&v332[0] + v277;
    v279 = *(&v332[0] + 1) - v277;
    if (*(&v332[0] + 1) - v277 >= 0x12)
    {
      v280 = 18;
    }

    else
    {
      v280 = *(&v332[0] + 1) - v277;
    }

    v281 = v278 + v280;
    v282 = v279 - v280;
    if (v282 >= v282 - 1)
    {
      --v282;
    }

    v275[8] = v281;
    v275[9] = v282;
  }

  v283 = *(v275 + 22);
  if (v283 > *(v275 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v275 + 10), (v275 + 12), v283, 16);
    LODWORD(v283) = *(v275 + 22);
  }

  *(v275 + 22) = v283;
  v284 = __p[1];
  if (__p[1] >= v338[0])
  {
    v286 = __p[0];
    v287 = __p[1] - __p[0];
    v288 = (__p[1] - __p[0]) >> 3;
    v289 = v288 + 1;
    if ((v288 + 1) >> 61)
    {
      goto LABEL_471;
    }

    v290 = v338[0] - __p[0];
    if ((v338[0] - __p[0]) >> 2 > v289)
    {
      v289 = v290 >> 2;
    }

    if (v290 >= 0x7FFFFFFFFFFFFFF8)
    {
      v291 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v291 = v289;
    }

    if (v291)
    {
      if (v291 >> 61)
      {
        goto LABEL_472;
      }

      v292 = operator new(8 * v291);
    }

    else
    {
      v292 = 0;
    }

    v293 = &v292[8 * v288];
    *v293 = v275;
    v285 = v293 + 8;
    memcpy(v292, v286, v287);
    __p[0] = v292;
    __p[1] = v285;
    v338[0] = &v292[8 * v291];
    if (v286)
    {
      operator delete(v286);
    }
  }

  else
  {
    *__p[1] = v275;
    v285 = v284 + 8;
  }

  __p[1] = v285;
  v294 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(v332, 1);
  mlir::Pattern::Pattern((v294 + 1), "mps.dequantize", 14, v332[0], Context, 0, 0);
  v294[12] = 0;
  *v294 = &unk_1F5AFDFD8;
  if (!v294[9])
  {
    *&v332[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::LowerPerAxisDequantize]";
    *(&v332[0] + 1) = 106;
    v295 = llvm::StringRef::find(v332, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v332[0] + 1) >= v295)
    {
      v296 = v295;
    }

    else
    {
      v296 = *(&v332[0] + 1);
    }

    v297 = *&v332[0] + v296;
    v298 = *(&v332[0] + 1) - v296;
    if (*(&v332[0] + 1) - v296 >= 0x12)
    {
      v299 = 18;
    }

    else
    {
      v299 = *(&v332[0] + 1) - v296;
    }

    v300 = v297 + v299;
    v301 = v298 - v299;
    if (v301 >= v301 - 1)
    {
      --v301;
    }

    v294[8] = v300;
    v294[9] = v301;
  }

  v302 = *(v294 + 22);
  if (v302 > *(v294 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v294 + 10), (v294 + 12), v302, 16);
    LODWORD(v302) = *(v294 + 22);
  }

  *(v294 + 22) = v302;
  v303 = __p[1];
  if (__p[1] >= v338[0])
  {
    v305 = __p[0];
    v306 = __p[1] - __p[0];
    v307 = (__p[1] - __p[0]) >> 3;
    v308 = v307 + 1;
    if ((v307 + 1) >> 61)
    {
      goto LABEL_471;
    }

    v309 = v338[0] - __p[0];
    if ((v338[0] - __p[0]) >> 2 > v308)
    {
      v308 = v309 >> 2;
    }

    if (v309 >= 0x7FFFFFFFFFFFFFF8)
    {
      v310 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v310 = v308;
    }

    if (v310)
    {
      if (v310 >> 61)
      {
        goto LABEL_472;
      }

      v311 = operator new(8 * v310);
    }

    else
    {
      v311 = 0;
    }

    v312 = &v311[8 * v307];
    *v312 = v294;
    v304 = v312 + 8;
    memcpy(v311, v305, v306);
    __p[0] = v311;
    __p[1] = v304;
    v338[0] = &v311[8 * v310];
    if (v305)
    {
      operator delete(v305);
    }
  }

  else
  {
    *__p[1] = v294;
    v304 = v303 + 8;
  }

  __p[1] = v304;
  v313 = operator new(0x68uLL);
  mlir::PatternBenefit::PatternBenefit(v332, 1);
  mlir::Pattern::Pattern((v313 + 1), "mpsx.quantized_matmul", 21, v332[0], Context, 0, 0);
  v313[12] = 0;
  *v313 = &unk_1F5AFE040;
  if (!v313[9])
  {
    *&v332[0] = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::LowerQuantizedMatmul]";
    *(&v332[0] + 1) = 104;
    v314 = llvm::StringRef::find(v332, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v332[0] + 1) >= v314)
    {
      v315 = v314;
    }

    else
    {
      v315 = *(&v332[0] + 1);
    }

    v316 = *&v332[0] + v315;
    v317 = *(&v332[0] + 1) - v315;
    if (*(&v332[0] + 1) - v315 >= 0x12)
    {
      v318 = 18;
    }

    else
    {
      v318 = *(&v332[0] + 1) - v315;
    }

    v319 = v316 + v318;
    v320 = v317 - v318;
    if (v320 >= v320 - 1)
    {
      --v320;
    }

    v313[8] = v319;
    v313[9] = v320;
  }

  v321 = *(v313 + 22);
  if (v321 > *(v313 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v313 + 10), (v313 + 12), v321, 16);
    LODWORD(v321) = *(v313 + 22);
  }

  *(v313 + 22) = v321;
  v322 = __p[1];
  if (__p[1] < v338[0])
  {
    *__p[1] = v313;
    v323 = v322 + 8;
    goto LABEL_469;
  }

  v324 = __p[0];
  v325 = __p[1] - __p[0];
  v326 = (__p[1] - __p[0]) >> 3;
  v327 = v326 + 1;
  if (!((v326 + 1) >> 61))
  {
    v328 = v338[0] - __p[0];
    if ((v338[0] - __p[0]) >> 2 > v327)
    {
      v327 = v328 >> 2;
    }

    if (v328 >= 0x7FFFFFFFFFFFFFF8)
    {
      v329 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v329 = v327;
    }

    if (!v329)
    {
      v330 = 0;
LABEL_467:
      v331 = &v330[8 * v326];
      *v331 = v313;
      v323 = v331 + 8;
      memcpy(v330, v324, v325);
      __p[0] = v330;
      __p[1] = v323;
      v338[0] = &v330[8 * v329];
      if (v324)
      {
        operator delete(v324);
      }

LABEL_469:
      __p[1] = v323;
      mlir::FrozenRewritePatternSet::FrozenRewritePatternSet(v334, &v336, 0, 0, 0, 0);
      v333 = 0u;
      memset(v332, 0, sizeof(v332));
      BYTE8(v333) = 1;
      mlir::applyFullConversion(a2, v376, v334, v332);
    }

    if (!(v329 >> 61))
    {
      v330 = operator new(8 * v329);
      goto LABEL_467;
    }

LABEL_472:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

LABEL_471:
  std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
}

void mlir::mps::anonymous namespace::populateWithGenerated(uint64_t *a1)
{
  v536 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  v528 = xmmword_1E86D2DC8;
  v529 = *&off_1E86D2DD8;
  mlir::Pattern::Pattern((v3 + 1), "mps.bias_add", 12, v527, v2, &v528, 2uLL);
  *v3 = &unk_1F5AFE0A8;
  if (!v3[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerBiasAddNHWC]";
    *(&v528 + 1) = 104;
    v4 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = *(&v528 + 1);
    }

    v6 = v528 + v5;
    v7 = *(&v528 + 1) - v5;
    if (*(&v528 + 1) - v5 >= 0x12)
    {
      v8 = 18;
    }

    else
    {
      v8 = *(&v528 + 1) - v5;
    }

    v9 = v6 + v8;
    v10 = v7 - v8;
    if (v10 >= v10 - 1)
    {
      --v10;
    }

    v3[8] = v9;
    v3[9] = v10;
  }

  v11 = *(v3 + 22);
  if (v11 > *(v3 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v3 + 10), (v3 + 12), v11, 16);
    LODWORD(v11) = *(v3 + 22);
  }

  *(v3 + 22) = v11;
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
      goto LABEL_652;
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
        goto LABEL_653;
      }

      v21 = operator new(8 * v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = &v21[8 * v17];
    *v22 = v3;
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
    *v13 = v3;
    v14 = v13 + 8;
  }

  a1[2] = v14;
  v23 = *a1;
  v24 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  *&v528 = "mps.power";
  *(&v528 + 1) = 9;
  mlir::Pattern::Pattern((v24 + 1), "mps.degamma", 11, v527, v23, &v528, 1uLL);
  *v24 = &unk_1F5AFE0E8;
  if (!v24[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerDegamma]";
    *(&v528 + 1) = 100;
    v25 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = *(&v528 + 1);
    }

    v27 = v528 + v26;
    v28 = *(&v528 + 1) - v26;
    if (*(&v528 + 1) - v26 >= 0x12)
    {
      v29 = 18;
    }

    else
    {
      v29 = *(&v528 + 1) - v26;
    }

    v30 = v27 + v29;
    v31 = v28 - v29;
    if (v31 >= v31 - 1)
    {
      --v31;
    }

    v24[8] = v30;
    v24[9] = v31;
  }

  v32 = *(v24 + 22);
  if (v32 > *(v24 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v24 + 10), (v24 + 12), v32, 16);
    LODWORD(v32) = *(v24 + 22);
  }

  *(v24 + 22) = v32;
  v34 = a1[2];
  v33 = a1[3];
  if (v34 >= v33)
  {
    v36 = a1[1];
    v37 = v34 - v36;
    v38 = (v34 - v36) >> 3;
    v39 = v38 + 1;
    if ((v38 + 1) >> 61)
    {
      goto LABEL_652;
    }

    v40 = v33 - v36;
    if (v40 >> 2 > v39)
    {
      v39 = v40 >> 2;
    }

    if (v40 >= 0x7FFFFFFFFFFFFFF8)
    {
      v41 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v41 = v39;
    }

    if (v41)
    {
      if (v41 >> 61)
      {
        goto LABEL_653;
      }

      v42 = operator new(8 * v41);
    }

    else
    {
      v42 = 0;
    }

    v43 = &v42[8 * v38];
    *v43 = v24;
    v35 = v43 + 8;
    memcpy(v42, v36, v37);
    a1[1] = v42;
    a1[2] = v35;
    a1[3] = &v42[8 * v41];
    if (v36)
    {
      operator delete(v36);
    }
  }

  else
  {
    *v34 = v24;
    v35 = v34 + 8;
  }

  a1[2] = v35;
  v44 = *a1;
  v45 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  v528 = xmmword_1E86D2DE8;
  v529 = *&off_1E86D2DF8;
  mlir::Pattern::Pattern((v45 + 1), "mps.dirac", 9, v527, v44, &v528, 2uLL);
  *v45 = &unk_1F5AFE128;
  if (!v45[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerDirac]";
    *(&v528 + 1) = 98;
    v46 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v46)
    {
      v47 = v46;
    }

    else
    {
      v47 = *(&v528 + 1);
    }

    v48 = v528 + v47;
    v49 = *(&v528 + 1) - v47;
    if (*(&v528 + 1) - v47 >= 0x12)
    {
      v50 = 18;
    }

    else
    {
      v50 = *(&v528 + 1) - v47;
    }

    v51 = v48 + v50;
    v52 = v49 - v50;
    if (v52 >= v52 - 1)
    {
      --v52;
    }

    v45[8] = v51;
    v45[9] = v52;
  }

  v53 = *(v45 + 22);
  if (v53 > *(v45 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v45 + 10), (v45 + 12), v53, 16);
    LODWORD(v53) = *(v45 + 22);
  }

  *(v45 + 22) = v53;
  v55 = a1[2];
  v54 = a1[3];
  if (v55 >= v54)
  {
    v57 = a1[1];
    v58 = v55 - v57;
    v59 = (v55 - v57) >> 3;
    v60 = v59 + 1;
    if ((v59 + 1) >> 61)
    {
      goto LABEL_652;
    }

    v61 = v54 - v57;
    if (v61 >> 2 > v60)
    {
      v60 = v61 >> 2;
    }

    if (v61 >= 0x7FFFFFFFFFFFFFF8)
    {
      v62 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v62 = v60;
    }

    if (v62)
    {
      if (v62 >> 61)
      {
        goto LABEL_653;
      }

      v63 = operator new(8 * v62);
    }

    else
    {
      v63 = 0;
    }

    v64 = &v63[8 * v59];
    *v64 = v45;
    v56 = v64 + 8;
    memcpy(v63, v57, v58);
    a1[1] = v63;
    a1[2] = v56;
    a1[3] = &v63[8 * v62];
    if (v57)
    {
      operator delete(v57);
    }
  }

  else
  {
    *v55 = v45;
    v56 = v55 + 8;
  }

  a1[2] = v56;
  v65 = *a1;
  v66 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  v530 = xmmword_1E86D2E28;
  v531 = *&off_1E86D2E38;
  v532 = xmmword_1E86D2E48;
  v528 = xmmword_1E86D2E08;
  v529 = *&off_1E86D2E18;
  mlir::Pattern::Pattern((v66 + 1), "mps.elu", 7, v527, v65, &v528, 5uLL);
  *v66 = &unk_1F5AFE168;
  if (!v66[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerElu]";
    *(&v528 + 1) = 96;
    v67 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v67)
    {
      v68 = v67;
    }

    else
    {
      v68 = *(&v528 + 1);
    }

    v69 = v528 + v68;
    v70 = *(&v528 + 1) - v68;
    if (*(&v528 + 1) - v68 >= 0x12)
    {
      v71 = 18;
    }

    else
    {
      v71 = *(&v528 + 1) - v68;
    }

    v72 = v69 + v71;
    v73 = v70 - v71;
    if (v73 >= v73 - 1)
    {
      --v73;
    }

    v66[8] = v72;
    v66[9] = v73;
  }

  v74 = *(v66 + 22);
  if (v74 > *(v66 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v66 + 10), (v66 + 12), v74, 16);
    LODWORD(v74) = *(v66 + 22);
  }

  *(v66 + 22) = v74;
  v76 = a1[2];
  v75 = a1[3];
  if (v76 >= v75)
  {
    v78 = a1[1];
    v79 = v76 - v78;
    v80 = (v76 - v78) >> 3;
    v81 = v80 + 1;
    if ((v80 + 1) >> 61)
    {
      goto LABEL_652;
    }

    v82 = v75 - v78;
    if (v82 >> 2 > v81)
    {
      v81 = v82 >> 2;
    }

    if (v82 >= 0x7FFFFFFFFFFFFFF8)
    {
      v83 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v83 = v81;
    }

    if (v83)
    {
      if (v83 >> 61)
      {
        goto LABEL_653;
      }

      v84 = operator new(8 * v83);
    }

    else
    {
      v84 = 0;
    }

    v85 = &v84[8 * v80];
    *v85 = v66;
    v77 = v85 + 8;
    memcpy(v84, v78, v79);
    a1[1] = v84;
    a1[2] = v77;
    a1[3] = &v84[8 * v83];
    if (v78)
    {
      operator delete(v78);
    }
  }

  else
  {
    *v76 = v66;
    v77 = v76 + 8;
  }

  a1[2] = v77;
  v86 = *a1;
  v87 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  v528 = xmmword_1E86D2E58;
  v529 = *&off_1E86D2E68;
  mlir::Pattern::Pattern((v87 + 1), "mps.floor_divide", 16, v527, v86, &v528, 2uLL);
  *v87 = &unk_1F5AFE1A8;
  if (!v87[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerFloorDiv]";
    *(&v528 + 1) = 101;
    v88 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v88)
    {
      v89 = v88;
    }

    else
    {
      v89 = *(&v528 + 1);
    }

    v90 = v528 + v89;
    v91 = *(&v528 + 1) - v89;
    if (*(&v528 + 1) - v89 >= 0x12)
    {
      v92 = 18;
    }

    else
    {
      v92 = *(&v528 + 1) - v89;
    }

    v93 = v90 + v92;
    v94 = v91 - v92;
    if (v94 >= v94 - 1)
    {
      --v94;
    }

    v87[8] = v93;
    v87[9] = v94;
  }

  v95 = *(v87 + 22);
  if (v95 > *(v87 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v87 + 10), (v87 + 12), v95, 16);
    LODWORD(v95) = *(v87 + 22);
  }

  *(v87 + 22) = v95;
  v97 = a1[2];
  v96 = a1[3];
  if (v97 >= v96)
  {
    v99 = a1[1];
    v100 = v97 - v99;
    v101 = (v97 - v99) >> 3;
    v102 = v101 + 1;
    if ((v101 + 1) >> 61)
    {
      goto LABEL_652;
    }

    v103 = v96 - v99;
    if (v103 >> 2 > v102)
    {
      v102 = v103 >> 2;
    }

    if (v103 >= 0x7FFFFFFFFFFFFFF8)
    {
      v104 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v104 = v102;
    }

    if (v104)
    {
      if (v104 >> 61)
      {
        goto LABEL_653;
      }

      v105 = operator new(8 * v104);
    }

    else
    {
      v105 = 0;
    }

    v106 = &v105[8 * v101];
    *v106 = v87;
    v98 = v106 + 8;
    memcpy(v105, v99, v100);
    a1[1] = v105;
    a1[2] = v98;
    a1[3] = &v105[8 * v104];
    if (v99)
    {
      operator delete(v99);
    }
  }

  else
  {
    *v97 = v87;
    v98 = v97 + 8;
  }

  a1[2] = v98;
  v107 = *a1;
  v108 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  v528 = xmmword_1E86D2E78;
  v529 = *&off_1E86D2E88;
  v530 = xmmword_1E86D2E98;
  v531 = *&off_1E86D2EA8;
  mlir::Pattern::Pattern((v108 + 1), "mps.gelu", 8, v527, v107, &v528, 4uLL);
  *v108 = &unk_1F5AFE1E8;
  if (!v108[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerGelu]";
    *(&v528 + 1) = 97;
    v109 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v109)
    {
      v110 = v109;
    }

    else
    {
      v110 = *(&v528 + 1);
    }

    v111 = v528 + v110;
    v112 = *(&v528 + 1) - v110;
    if (*(&v528 + 1) - v110 >= 0x12)
    {
      v113 = 18;
    }

    else
    {
      v113 = *(&v528 + 1) - v110;
    }

    v114 = v111 + v113;
    v115 = v112 - v113;
    if (v115 >= v115 - 1)
    {
      --v115;
    }

    v108[8] = v114;
    v108[9] = v115;
  }

  v116 = *(v108 + 22);
  if (v116 > *(v108 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v108 + 10), (v108 + 12), v116, 16);
    LODWORD(v116) = *(v108 + 22);
  }

  *(v108 + 22) = v116;
  v118 = a1[2];
  v117 = a1[3];
  if (v118 >= v117)
  {
    v120 = a1[1];
    v121 = v118 - v120;
    v122 = (v118 - v120) >> 3;
    v123 = v122 + 1;
    if ((v122 + 1) >> 61)
    {
      goto LABEL_652;
    }

    v124 = v117 - v120;
    if (v124 >> 2 > v123)
    {
      v123 = v124 >> 2;
    }

    if (v124 >= 0x7FFFFFFFFFFFFFF8)
    {
      v125 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v125 = v123;
    }

    if (v125)
    {
      if (v125 >> 61)
      {
        goto LABEL_653;
      }

      v126 = operator new(8 * v125);
    }

    else
    {
      v126 = 0;
    }

    v127 = &v126[8 * v122];
    *v127 = v108;
    v119 = v127 + 8;
    memcpy(v126, v120, v121);
    a1[1] = v126;
    a1[2] = v119;
    a1[3] = &v126[8 * v125];
    if (v120)
    {
      operator delete(v120);
    }
  }

  else
  {
    *v118 = v108;
    v119 = v118 + 8;
  }

  a1[2] = v119;
  v128 = *a1;
  v129 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  v528 = xmmword_1E86D2EB8;
  v529 = *&off_1E86D2EC8;
  v530 = xmmword_1E86D2ED8;
  mlir::Pattern::Pattern((v129 + 1), "mps.instance_norm", 17, v527, v128, &v528, 3uLL);
  *v129 = &unk_1F5AFE228;
  if (!v129[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerInstanceNorm]";
    *(&v528 + 1) = 105;
    v130 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v130)
    {
      v131 = v130;
    }

    else
    {
      v131 = *(&v528 + 1);
    }

    v132 = v528 + v131;
    v133 = *(&v528 + 1) - v131;
    if (*(&v528 + 1) - v131 >= 0x12)
    {
      v134 = 18;
    }

    else
    {
      v134 = *(&v528 + 1) - v131;
    }

    v135 = v132 + v134;
    v136 = v133 - v134;
    if (v136 >= v136 - 1)
    {
      --v136;
    }

    v129[8] = v135;
    v129[9] = v136;
  }

  v137 = *(v129 + 22);
  if (v137 > *(v129 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v129 + 10), (v129 + 12), v137, 16);
    LODWORD(v137) = *(v129 + 22);
  }

  *(v129 + 22) = v137;
  v139 = a1[2];
  v138 = a1[3];
  if (v139 >= v138)
  {
    v141 = a1[1];
    v142 = v139 - v141;
    v143 = (v139 - v141) >> 3;
    v144 = v143 + 1;
    if ((v143 + 1) >> 61)
    {
      goto LABEL_652;
    }

    v145 = v138 - v141;
    if (v145 >> 2 > v144)
    {
      v144 = v145 >> 2;
    }

    if (v145 >= 0x7FFFFFFFFFFFFFF8)
    {
      v146 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v146 = v144;
    }

    if (v146)
    {
      if (v146 >> 61)
      {
        goto LABEL_653;
      }

      v147 = operator new(8 * v146);
    }

    else
    {
      v147 = 0;
    }

    v148 = &v147[8 * v143];
    *v148 = v129;
    v140 = v148 + 8;
    memcpy(v147, v141, v142);
    a1[1] = v147;
    a1[2] = v140;
    a1[3] = &v147[8 * v146];
    if (v141)
    {
      operator delete(v141);
    }
  }

  else
  {
    *v139 = v129;
    v140 = v139 + 8;
  }

  a1[2] = v140;
  v149 = *a1;
  v150 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  v532 = xmmword_1E86D2F28;
  v533 = *&off_1E86D2F38;
  v534 = xmmword_1E86D2F48;
  v528 = xmmword_1E86D2EE8;
  v529 = *&off_1E86D2EF8;
  v530 = xmmword_1E86D2F08;
  v531 = *&off_1E86D2F18;
  mlir::Pattern::Pattern((v150 + 1), "mps.lp_norm", 11, v527, v149, &v528, 7uLL);
  *v150 = &unk_1F5AFE268;
  if (!v150[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerLPNorm]";
    *(&v528 + 1) = 99;
    v151 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v151)
    {
      v152 = v151;
    }

    else
    {
      v152 = *(&v528 + 1);
    }

    v153 = v528 + v152;
    v154 = *(&v528 + 1) - v152;
    if (*(&v528 + 1) - v152 >= 0x12)
    {
      v155 = 18;
    }

    else
    {
      v155 = *(&v528 + 1) - v152;
    }

    v156 = v153 + v155;
    v157 = v154 - v155;
    if (v157 >= v157 - 1)
    {
      --v157;
    }

    v150[8] = v156;
    v150[9] = v157;
  }

  v158 = *(v150 + 22);
  if (v158 > *(v150 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v150 + 10), (v150 + 12), v158, 16);
    LODWORD(v158) = *(v150 + 22);
  }

  *(v150 + 22) = v158;
  v160 = a1[2];
  v159 = a1[3];
  if (v160 >= v159)
  {
    v162 = a1[1];
    v163 = v160 - v162;
    v164 = (v160 - v162) >> 3;
    v165 = v164 + 1;
    if ((v164 + 1) >> 61)
    {
      goto LABEL_652;
    }

    v166 = v159 - v162;
    if (v166 >> 2 > v165)
    {
      v165 = v166 >> 2;
    }

    if (v166 >= 0x7FFFFFFFFFFFFFF8)
    {
      v167 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v167 = v165;
    }

    if (v167)
    {
      if (v167 >> 61)
      {
        goto LABEL_653;
      }

      v168 = operator new(8 * v167);
    }

    else
    {
      v168 = 0;
    }

    v169 = &v168[8 * v164];
    *v169 = v150;
    v161 = v169 + 8;
    memcpy(v168, v162, v163);
    a1[1] = v168;
    a1[2] = v161;
    a1[3] = &v168[8 * v167];
    if (v162)
    {
      operator delete(v162);
    }
  }

  else
  {
    *v160 = v150;
    v161 = v160 + 8;
  }

  a1[2] = v161;
  v170 = *a1;
  v171 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  v528 = xmmword_1E86D2F58;
  v529 = *&off_1E86D2F68;
  v530 = xmmword_1E86D2F78;
  mlir::Pattern::Pattern((v171 + 1), "mps.leaky_relu", 14, v527, v170, &v528, 3uLL);
  *v171 = &unk_1F5AFE2A8;
  if (!v171[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerLeakyRelu]";
    *(&v528 + 1) = 102;
    v172 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v172)
    {
      v173 = v172;
    }

    else
    {
      v173 = *(&v528 + 1);
    }

    v174 = v528 + v173;
    v175 = *(&v528 + 1) - v173;
    if (*(&v528 + 1) - v173 >= 0x12)
    {
      v176 = 18;
    }

    else
    {
      v176 = *(&v528 + 1) - v173;
    }

    v177 = v174 + v176;
    v178 = v175 - v176;
    if (v178 >= v178 - 1)
    {
      --v178;
    }

    v171[8] = v177;
    v171[9] = v178;
  }

  v179 = *(v171 + 22);
  if (v179 > *(v171 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v171 + 10), (v171 + 12), v179, 16);
    LODWORD(v179) = *(v171 + 22);
  }

  *(v171 + 22) = v179;
  v181 = a1[2];
  v180 = a1[3];
  if (v181 >= v180)
  {
    v183 = a1[1];
    v184 = v181 - v183;
    v185 = (v181 - v183) >> 3;
    v186 = v185 + 1;
    if ((v185 + 1) >> 61)
    {
      goto LABEL_652;
    }

    v187 = v180 - v183;
    if (v187 >> 2 > v186)
    {
      v186 = v187 >> 2;
    }

    if (v187 >= 0x7FFFFFFFFFFFFFF8)
    {
      v188 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v188 = v186;
    }

    if (v188)
    {
      if (v188 >> 61)
      {
        goto LABEL_653;
      }

      v189 = operator new(8 * v188);
    }

    else
    {
      v189 = 0;
    }

    v190 = &v189[8 * v185];
    *v190 = v171;
    v182 = v190 + 8;
    memcpy(v189, v183, v184);
    a1[1] = v189;
    a1[2] = v182;
    a1[3] = &v189[8 * v188];
    if (v183)
    {
      operator delete(v183);
    }
  }

  else
  {
    *v181 = v171;
    v182 = v181 + 8;
  }

  a1[2] = v182;
  v191 = *a1;
  v192 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  v528 = xmmword_1E86D2F88;
  v529 = *&off_1E86D2F98;
  v530 = xmmword_1E86D2FA8;
  v531 = *&off_1E86D2FB8;
  mlir::Pattern::Pattern((v192 + 1), "mps.n_relu", 10, v527, v191, &v528, 4uLL);
  *v192 = &unk_1F5AFE2E8;
  if (!v192[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerNRelu]";
    *(&v528 + 1) = 98;
    v193 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v193)
    {
      v194 = v193;
    }

    else
    {
      v194 = *(&v528 + 1);
    }

    v195 = v528 + v194;
    v196 = *(&v528 + 1) - v194;
    if (*(&v528 + 1) - v194 >= 0x12)
    {
      v197 = 18;
    }

    else
    {
      v197 = *(&v528 + 1) - v194;
    }

    v198 = v195 + v197;
    v199 = v196 - v197;
    if (v199 >= v199 - 1)
    {
      --v199;
    }

    v192[8] = v198;
    v192[9] = v199;
  }

  v200 = *(v192 + 22);
  if (v200 > *(v192 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v192 + 10), (v192 + 12), v200, 16);
    LODWORD(v200) = *(v192 + 22);
  }

  *(v192 + 22) = v200;
  v202 = a1[2];
  v201 = a1[3];
  if (v202 >= v201)
  {
    v204 = a1[1];
    v205 = v202 - v204;
    v206 = (v202 - v204) >> 3;
    v207 = v206 + 1;
    if ((v206 + 1) >> 61)
    {
      goto LABEL_652;
    }

    v208 = v201 - v204;
    if (v208 >> 2 > v207)
    {
      v207 = v208 >> 2;
    }

    if (v208 >= 0x7FFFFFFFFFFFFFF8)
    {
      v209 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v209 = v207;
    }

    if (v209)
    {
      if (v209 >> 61)
      {
        goto LABEL_653;
      }

      v210 = operator new(8 * v209);
    }

    else
    {
      v210 = 0;
    }

    v211 = &v210[8 * v206];
    *v211 = v192;
    v203 = v211 + 8;
    memcpy(v210, v204, v205);
    a1[1] = v210;
    a1[2] = v203;
    a1[3] = &v210[8 * v209];
    if (v204)
    {
      operator delete(v204);
    }
  }

  else
  {
    *v202 = v192;
    v203 = v202 + 8;
  }

  a1[2] = v203;
  v212 = *a1;
  v213 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  v530 = xmmword_1E86D2FE8;
  v531 = *&off_1E86D2FF8;
  v532 = xmmword_1E86D3008;
  v533 = *&off_1E86D3018;
  v528 = xmmword_1E86D2FC8;
  v529 = *&off_1E86D2FD8;
  mlir::Pattern::Pattern((v213 + 1), "mps.normalization", 17, v527, v212, &v528, 6uLL);
  *v213 = &unk_1F5AFE328;
  if (!v213[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerNormalization]";
    *(&v528 + 1) = 106;
    v214 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v214)
    {
      v215 = v214;
    }

    else
    {
      v215 = *(&v528 + 1);
    }

    v216 = v528 + v215;
    v217 = *(&v528 + 1) - v215;
    if (*(&v528 + 1) - v215 >= 0x12)
    {
      v218 = 18;
    }

    else
    {
      v218 = *(&v528 + 1) - v215;
    }

    v219 = v216 + v218;
    v220 = v217 - v218;
    if (v220 >= v220 - 1)
    {
      --v220;
    }

    v213[8] = v219;
    v213[9] = v220;
  }

  v221 = *(v213 + 22);
  if (v221 > *(v213 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v213 + 10), (v213 + 12), v221, 16);
    LODWORD(v221) = *(v213 + 22);
  }

  *(v213 + 22) = v221;
  v223 = a1[2];
  v222 = a1[3];
  if (v223 >= v222)
  {
    v225 = a1[1];
    v226 = v223 - v225;
    v227 = (v223 - v225) >> 3;
    v228 = v227 + 1;
    if ((v227 + 1) >> 61)
    {
      goto LABEL_652;
    }

    v229 = v222 - v225;
    if (v229 >> 2 > v228)
    {
      v228 = v229 >> 2;
    }

    if (v229 >= 0x7FFFFFFFFFFFFFF8)
    {
      v230 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v230 = v228;
    }

    if (v230)
    {
      if (v230 >> 61)
      {
        goto LABEL_653;
      }

      v231 = operator new(8 * v230);
    }

    else
    {
      v231 = 0;
    }

    v232 = &v231[8 * v227];
    *v232 = v213;
    v224 = v232 + 8;
    memcpy(v231, v225, v226);
    a1[1] = v231;
    a1[2] = v224;
    a1[3] = &v231[8 * v230];
    if (v225)
    {
      operator delete(v225);
    }
  }

  else
  {
    *v223 = v213;
    v224 = v223 + 8;
  }

  a1[2] = v224;
  v233 = *a1;
  v234 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  v528 = xmmword_1E86D3028;
  v529 = *&off_1E86D3038;
  v530 = xmmword_1E86D3048;
  v531 = *&off_1E86D3058;
  mlir::Pattern::Pattern((v234 + 1), "mps.prelu", 9, v527, v233, &v528, 4uLL);
  *v234 = &unk_1F5AFE368;
  if (!v234[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerPRelu]";
    *(&v528 + 1) = 98;
    v235 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v235)
    {
      v236 = v235;
    }

    else
    {
      v236 = *(&v528 + 1);
    }

    v237 = v528 + v236;
    v238 = *(&v528 + 1) - v236;
    if (*(&v528 + 1) - v236 >= 0x12)
    {
      v239 = 18;
    }

    else
    {
      v239 = *(&v528 + 1) - v236;
    }

    v240 = v237 + v239;
    v241 = v238 - v239;
    if (v241 >= v241 - 1)
    {
      --v241;
    }

    v234[8] = v240;
    v234[9] = v241;
  }

  v242 = *(v234 + 22);
  if (v242 > *(v234 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v234 + 10), (v234 + 12), v242, 16);
    LODWORD(v242) = *(v234 + 22);
  }

  *(v234 + 22) = v242;
  v244 = a1[2];
  v243 = a1[3];
  if (v244 >= v243)
  {
    v246 = a1[1];
    v247 = v244 - v246;
    v248 = (v244 - v246) >> 3;
    v249 = v248 + 1;
    if ((v248 + 1) >> 61)
    {
      goto LABEL_652;
    }

    v250 = v243 - v246;
    if (v250 >> 2 > v249)
    {
      v249 = v250 >> 2;
    }

    if (v250 >= 0x7FFFFFFFFFFFFFF8)
    {
      v251 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v251 = v249;
    }

    if (v251)
    {
      if (v251 >> 61)
      {
        goto LABEL_653;
      }

      v252 = operator new(8 * v251);
    }

    else
    {
      v252 = 0;
    }

    v253 = &v252[8 * v248];
    *v253 = v234;
    v245 = v253 + 8;
    memcpy(v252, v246, v247);
    a1[1] = v252;
    a1[2] = v245;
    a1[3] = &v252[8 * v251];
    if (v246)
    {
      operator delete(v246);
    }
  }

  else
  {
    *v244 = v234;
    v245 = v244 + 8;
  }

  a1[2] = v245;
  v254 = *a1;
  v255 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  v530 = xmmword_1E86D3088;
  v531 = *&off_1E86D3098;
  v532 = xmmword_1E86D30A8;
  v528 = xmmword_1E86D3068;
  v529 = *&off_1E86D3078;
  mlir::Pattern::Pattern((v255 + 1), "mps.quantize", 12, v527, v254, &v528, 5uLL);
  *v255 = &unk_1F5AFE3A8;
  if (!v255[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerQuantize]";
    *(&v528 + 1) = 101;
    v256 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v256)
    {
      v257 = v256;
    }

    else
    {
      v257 = *(&v528 + 1);
    }

    v258 = v528 + v257;
    v259 = *(&v528 + 1) - v257;
    if (*(&v528 + 1) - v257 >= 0x12)
    {
      v260 = 18;
    }

    else
    {
      v260 = *(&v528 + 1) - v257;
    }

    v261 = v258 + v260;
    v262 = v259 - v260;
    if (v262 >= v262 - 1)
    {
      --v262;
    }

    v255[8] = v261;
    v255[9] = v262;
  }

  v263 = *(v255 + 22);
  if (v263 > *(v255 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v255 + 10), (v255 + 12), v263, 16);
    LODWORD(v263) = *(v255 + 22);
  }

  *(v255 + 22) = v263;
  v265 = a1[2];
  v264 = a1[3];
  if (v265 >= v264)
  {
    v267 = a1[1];
    v268 = v265 - v267;
    v269 = (v265 - v267) >> 3;
    v270 = v269 + 1;
    if ((v269 + 1) >> 61)
    {
      goto LABEL_652;
    }

    v271 = v264 - v267;
    if (v271 >> 2 > v270)
    {
      v270 = v271 >> 2;
    }

    if (v271 >= 0x7FFFFFFFFFFFFFF8)
    {
      v272 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v272 = v270;
    }

    if (v272)
    {
      if (v272 >> 61)
      {
        goto LABEL_653;
      }

      v273 = operator new(8 * v272);
    }

    else
    {
      v273 = 0;
    }

    v274 = &v273[8 * v269];
    *v274 = v255;
    v266 = v274 + 8;
    memcpy(v273, v267, v268);
    a1[1] = v273;
    a1[2] = v266;
    a1[3] = &v273[8 * v272];
    if (v267)
    {
      operator delete(v267);
    }
  }

  else
  {
    *v265 = v255;
    v266 = v265 + 8;
  }

  a1[2] = v266;
  v275 = *a1;
  v276 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  v528 = xmmword_1E86D30B8;
  v529 = *&off_1E86D30C8;
  v530 = xmmword_1E86D30D8;
  v531 = *&off_1E86D30E8;
  mlir::Pattern::Pattern((v276 + 1), "mps.quantize", 12, v527, v275, &v528, 4uLL);
  *v276 = &unk_1F5AFE3E8;
  if (!v276[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerQuantizeWithMPSXQuantDAG]";
    *(&v528 + 1) = 117;
    v277 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v277)
    {
      v278 = v277;
    }

    else
    {
      v278 = *(&v528 + 1);
    }

    v279 = v528 + v278;
    v280 = *(&v528 + 1) - v278;
    if (*(&v528 + 1) - v278 >= 0x12)
    {
      v281 = 18;
    }

    else
    {
      v281 = *(&v528 + 1) - v278;
    }

    v282 = v279 + v281;
    v283 = v280 - v281;
    if (v283 >= v283 - 1)
    {
      --v283;
    }

    v276[8] = v282;
    v276[9] = v283;
  }

  v284 = *(v276 + 22);
  if (v284 > *(v276 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v276 + 10), (v276 + 12), v284, 16);
    LODWORD(v284) = *(v276 + 22);
  }

  *(v276 + 22) = v284;
  v286 = a1[2];
  v285 = a1[3];
  if (v286 >= v285)
  {
    v288 = a1[1];
    v289 = v286 - v288;
    v290 = (v286 - v288) >> 3;
    v291 = v290 + 1;
    if ((v290 + 1) >> 61)
    {
      goto LABEL_652;
    }

    v292 = v285 - v288;
    if (v292 >> 2 > v291)
    {
      v291 = v292 >> 2;
    }

    if (v292 >= 0x7FFFFFFFFFFFFFF8)
    {
      v293 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v293 = v291;
    }

    if (v293)
    {
      if (v293 >> 61)
      {
        goto LABEL_653;
      }

      v294 = operator new(8 * v293);
    }

    else
    {
      v294 = 0;
    }

    v295 = &v294[8 * v290];
    *v295 = v276;
    v287 = v295 + 8;
    memcpy(v294, v288, v289);
    a1[1] = v294;
    a1[2] = v287;
    a1[3] = &v294[8 * v293];
    if (v288)
    {
      operator delete(v288);
    }
  }

  else
  {
    *v286 = v276;
    v287 = v286 + 8;
  }

  a1[2] = v287;
  v296 = *a1;
  v297 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  v532 = xmmword_1E86D3138;
  v533 = *&off_1E86D3148;
  v534 = xmmword_1E86D3158;
  v535 = *&off_1E86D3168;
  v528 = xmmword_1E86D30F8;
  v529 = *&off_1E86D3108;
  v530 = xmmword_1E86D3118;
  v531 = *&off_1E86D3128;
  mlir::Pattern::Pattern((v297 + 1), "mps.reduction_logsumexp", 23, v527, v296, &v528, 8uLL);
  *v297 = &unk_1F5AFE428;
  if (!v297[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerReductionLogSumExp]";
    *(&v528 + 1) = 111;
    v298 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v298)
    {
      v299 = v298;
    }

    else
    {
      v299 = *(&v528 + 1);
    }

    v300 = v528 + v299;
    v301 = *(&v528 + 1) - v299;
    if (*(&v528 + 1) - v299 >= 0x12)
    {
      v302 = 18;
    }

    else
    {
      v302 = *(&v528 + 1) - v299;
    }

    v303 = v300 + v302;
    v304 = v301 - v302;
    if (v304 >= v304 - 1)
    {
      --v304;
    }

    v297[8] = v303;
    v297[9] = v304;
  }

  v305 = *(v297 + 22);
  if (v305 > *(v297 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v297 + 10), (v297 + 12), v305, 16);
    LODWORD(v305) = *(v297 + 22);
  }

  *(v297 + 22) = v305;
  v307 = a1[2];
  v306 = a1[3];
  if (v307 >= v306)
  {
    v309 = a1[1];
    v310 = v307 - v309;
    v311 = (v307 - v309) >> 3;
    v312 = v311 + 1;
    if ((v311 + 1) >> 61)
    {
      goto LABEL_652;
    }

    v313 = v306 - v309;
    if (v313 >> 2 > v312)
    {
      v312 = v313 >> 2;
    }

    if (v313 >= 0x7FFFFFFFFFFFFFF8)
    {
      v314 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v314 = v312;
    }

    if (v314)
    {
      if (v314 >> 61)
      {
        goto LABEL_653;
      }

      v315 = operator new(8 * v314);
    }

    else
    {
      v315 = 0;
    }

    v316 = &v315[8 * v311];
    *v316 = v297;
    v308 = v316 + 8;
    memcpy(v315, v309, v310);
    a1[1] = v315;
    a1[2] = v308;
    a1[3] = &v315[8 * v314];
    if (v309)
    {
      operator delete(v309);
    }
  }

  else
  {
    *v307 = v297;
    v308 = v307 + 8;
  }

  a1[2] = v308;
  v317 = *a1;
  v318 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  *&v528 = "mps.maximum";
  *(&v528 + 1) = 11;
  mlir::Pattern::Pattern((v318 + 1), "mps.relu", 8, v527, v317, &v528, 1uLL);
  *v318 = &unk_1F5AFE468;
  if (!v318[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerRelu]";
    *(&v528 + 1) = 97;
    v319 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v319)
    {
      v320 = v319;
    }

    else
    {
      v320 = *(&v528 + 1);
    }

    v321 = v528 + v320;
    v322 = *(&v528 + 1) - v320;
    if (*(&v528 + 1) - v320 >= 0x12)
    {
      v323 = 18;
    }

    else
    {
      v323 = *(&v528 + 1) - v320;
    }

    v324 = v321 + v323;
    v325 = v322 - v323;
    if (v325 >= v325 - 1)
    {
      --v325;
    }

    v318[8] = v324;
    v318[9] = v325;
  }

  v326 = *(v318 + 22);
  if (v326 > *(v318 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v318 + 10), (v318 + 12), v326, 16);
    LODWORD(v326) = *(v318 + 22);
  }

  *(v318 + 22) = v326;
  v328 = a1[2];
  v327 = a1[3];
  if (v328 >= v327)
  {
    v330 = a1[1];
    v331 = v328 - v330;
    v332 = (v328 - v330) >> 3;
    v333 = v332 + 1;
    if ((v332 + 1) >> 61)
    {
      goto LABEL_652;
    }

    v334 = v327 - v330;
    if (v334 >> 2 > v333)
    {
      v333 = v334 >> 2;
    }

    if (v334 >= 0x7FFFFFFFFFFFFFF8)
    {
      v335 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v335 = v333;
    }

    if (v335)
    {
      if (v335 >> 61)
      {
        goto LABEL_653;
      }

      v336 = operator new(8 * v335);
    }

    else
    {
      v336 = 0;
    }

    v337 = &v336[8 * v332];
    *v337 = v318;
    v329 = v337 + 8;
    memcpy(v336, v330, v331);
    a1[1] = v336;
    a1[2] = v329;
    a1[3] = &v336[8 * v335];
    if (v330)
    {
      operator delete(v330);
    }
  }

  else
  {
    *v328 = v318;
    v329 = v328 + 8;
  }

  a1[2] = v329;
  v338 = *a1;
  v339 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  v528 = xmmword_1E86D3178;
  v529 = *&off_1E86D3188;
  mlir::Pattern::Pattern((v339 + 1), "mps.relu6", 9, v527, v338, &v528, 2uLL);
  *v339 = &unk_1F5AFE4A8;
  if (!v339[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerRelu6]";
    *(&v528 + 1) = 98;
    v340 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v340)
    {
      v341 = v340;
    }

    else
    {
      v341 = *(&v528 + 1);
    }

    v342 = v528 + v341;
    v343 = *(&v528 + 1) - v341;
    if (*(&v528 + 1) - v341 >= 0x12)
    {
      v344 = 18;
    }

    else
    {
      v344 = *(&v528 + 1) - v341;
    }

    v345 = v342 + v344;
    v346 = v343 - v344;
    if (v346 >= v346 - 1)
    {
      --v346;
    }

    v339[8] = v345;
    v339[9] = v346;
  }

  v347 = *(v339 + 22);
  if (v347 > *(v339 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v339 + 10), (v339 + 12), v347, 16);
    LODWORD(v347) = *(v339 + 22);
  }

  *(v339 + 22) = v347;
  v349 = a1[2];
  v348 = a1[3];
  if (v349 >= v348)
  {
    v351 = a1[1];
    v352 = v349 - v351;
    v353 = (v349 - v351) >> 3;
    v354 = v353 + 1;
    if ((v353 + 1) >> 61)
    {
      goto LABEL_652;
    }

    v355 = v348 - v351;
    if (v355 >> 2 > v354)
    {
      v354 = v355 >> 2;
    }

    if (v355 >= 0x7FFFFFFFFFFFFFF8)
    {
      v356 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v356 = v354;
    }

    if (v356)
    {
      if (v356 >> 61)
      {
        goto LABEL_653;
      }

      v357 = operator new(8 * v356);
    }

    else
    {
      v357 = 0;
    }

    v358 = &v357[8 * v353];
    *v358 = v339;
    v350 = v358 + 8;
    memcpy(v357, v351, v352);
    a1[1] = v357;
    a1[2] = v350;
    a1[3] = &v357[8 * v356];
    if (v351)
    {
      operator delete(v351);
    }
  }

  else
  {
    *v349 = v339;
    v350 = v349 + 8;
  }

  a1[2] = v350;
  v359 = *a1;
  v360 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  v528 = xmmword_1E86D3198;
  v529 = *&off_1E86D31A8;
  mlir::Pattern::Pattern((v360 + 1), "mps.relu_grad", 13, v527, v359, &v528, 2uLL);
  *v360 = &unk_1F5AFE4E8;
  if (!v360[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerReluGrad]";
    *(&v528 + 1) = 101;
    v361 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v361)
    {
      v362 = v361;
    }

    else
    {
      v362 = *(&v528 + 1);
    }

    v363 = v528 + v362;
    v364 = *(&v528 + 1) - v362;
    if (*(&v528 + 1) - v362 >= 0x12)
    {
      v365 = 18;
    }

    else
    {
      v365 = *(&v528 + 1) - v362;
    }

    v366 = v363 + v365;
    v367 = v364 - v365;
    if (v367 >= v367 - 1)
    {
      --v367;
    }

    v360[8] = v366;
    v360[9] = v367;
  }

  v368 = *(v360 + 22);
  if (v368 > *(v360 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v360 + 10), (v360 + 12), v368, 16);
    LODWORD(v368) = *(v360 + 22);
  }

  *(v360 + 22) = v368;
  v370 = a1[2];
  v369 = a1[3];
  if (v370 >= v369)
  {
    v372 = a1[1];
    v373 = v370 - v372;
    v374 = (v370 - v372) >> 3;
    v375 = v374 + 1;
    if ((v374 + 1) >> 61)
    {
      goto LABEL_652;
    }

    v376 = v369 - v372;
    if (v376 >> 2 > v375)
    {
      v375 = v376 >> 2;
    }

    if (v376 >= 0x7FFFFFFFFFFFFFF8)
    {
      v377 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v377 = v375;
    }

    if (v377)
    {
      if (v377 >> 61)
      {
        goto LABEL_653;
      }

      v378 = operator new(8 * v377);
    }

    else
    {
      v378 = 0;
    }

    v379 = &v378[8 * v374];
    *v379 = v360;
    v371 = v379 + 8;
    memcpy(v378, v372, v373);
    a1[1] = v378;
    a1[2] = v371;
    a1[3] = &v378[8 * v377];
    if (v372)
    {
      operator delete(v372);
    }
  }

  else
  {
    *v370 = v360;
    v371 = v370 + 8;
  }

  a1[2] = v371;
  v380 = *a1;
  v381 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  v528 = xmmword_1E86D31B8;
  v529 = *&off_1E86D31C8;
  v530 = xmmword_1E86D31D8;
  mlir::Pattern::Pattern((v381 + 1), "mps.sigmoid_gradient", 20, v527, v380, &v528, 3uLL);
  *v381 = &unk_1F5AFE528;
  if (!v381[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerSigmoidGradient]";
    *(&v528 + 1) = 108;
    v382 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v382)
    {
      v383 = v382;
    }

    else
    {
      v383 = *(&v528 + 1);
    }

    v384 = v528 + v383;
    v385 = *(&v528 + 1) - v383;
    if (*(&v528 + 1) - v383 >= 0x12)
    {
      v386 = 18;
    }

    else
    {
      v386 = *(&v528 + 1) - v383;
    }

    v387 = v384 + v386;
    v388 = v385 - v386;
    if (v388 >= v388 - 1)
    {
      --v388;
    }

    v381[8] = v387;
    v381[9] = v388;
  }

  v389 = *(v381 + 22);
  if (v389 > *(v381 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v381 + 10), (v381 + 12), v389, 16);
    LODWORD(v389) = *(v381 + 22);
  }

  *(v381 + 22) = v389;
  v391 = a1[2];
  v390 = a1[3];
  if (v391 >= v390)
  {
    v393 = a1[1];
    v394 = v391 - v393;
    v395 = (v391 - v393) >> 3;
    v396 = v395 + 1;
    if ((v395 + 1) >> 61)
    {
      goto LABEL_652;
    }

    v397 = v390 - v393;
    if (v397 >> 2 > v396)
    {
      v396 = v397 >> 2;
    }

    if (v397 >= 0x7FFFFFFFFFFFFFF8)
    {
      v398 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v398 = v396;
    }

    if (v398)
    {
      if (v398 >> 61)
      {
        goto LABEL_653;
      }

      v399 = operator new(8 * v398);
    }

    else
    {
      v399 = 0;
    }

    v400 = &v399[8 * v395];
    *v400 = v381;
    v392 = v400 + 8;
    memcpy(v399, v393, v394);
    a1[1] = v399;
    a1[2] = v392;
    a1[3] = &v399[8 * v398];
    if (v393)
    {
      operator delete(v393);
    }
  }

  else
  {
    *v391 = v381;
    v392 = v391 + 8;
  }

  a1[2] = v392;
  v401 = *a1;
  v402 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  v528 = xmmword_1E86D31E8;
  v529 = *&off_1E86D31F8;
  mlir::Pattern::Pattern((v402 + 1), "mps.sigmoid_gradient_with_sigmoid", 33, v527, v401, &v528, 2uLL);
  *v402 = &unk_1F5AFE568;
  if (!v402[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerSigmoidGradientWithSigmoid]";
    *(&v528 + 1) = 119;
    v403 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v403)
    {
      v404 = v403;
    }

    else
    {
      v404 = *(&v528 + 1);
    }

    v405 = v528 + v404;
    v406 = *(&v528 + 1) - v404;
    if (*(&v528 + 1) - v404 >= 0x12)
    {
      v407 = 18;
    }

    else
    {
      v407 = *(&v528 + 1) - v404;
    }

    v408 = v405 + v407;
    v409 = v406 - v407;
    if (v409 >= v409 - 1)
    {
      --v409;
    }

    v402[8] = v408;
    v402[9] = v409;
  }

  v410 = *(v402 + 22);
  if (v410 > *(v402 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v402 + 10), (v402 + 12), v410, 16);
    LODWORD(v410) = *(v402 + 22);
  }

  *(v402 + 22) = v410;
  v412 = a1[2];
  v411 = a1[3];
  if (v412 >= v411)
  {
    v414 = a1[1];
    v415 = v412 - v414;
    v416 = (v412 - v414) >> 3;
    v417 = v416 + 1;
    if ((v416 + 1) >> 61)
    {
      goto LABEL_652;
    }

    v418 = v411 - v414;
    if (v418 >> 2 > v417)
    {
      v417 = v418 >> 2;
    }

    if (v418 >= 0x7FFFFFFFFFFFFFF8)
    {
      v419 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v419 = v417;
    }

    if (v419)
    {
      if (v419 >> 61)
      {
        goto LABEL_653;
      }

      v420 = operator new(8 * v419);
    }

    else
    {
      v420 = 0;
    }

    v421 = &v420[8 * v416];
    *v421 = v402;
    v413 = v421 + 8;
    memcpy(v420, v414, v415);
    a1[1] = v420;
    a1[2] = v413;
    a1[3] = &v420[8 * v419];
    if (v414)
    {
      operator delete(v414);
    }
  }

  else
  {
    *v412 = v402;
    v413 = v412 + 8;
  }

  a1[2] = v413;
  v422 = *a1;
  v423 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  v528 = xmmword_1E86D3208;
  v529 = *&off_1E86D3218;
  v530 = xmmword_1E86D3228;
  v531 = *&off_1E86D3238;
  mlir::Pattern::Pattern((v423 + 1), "mps.sigmoid_hard", 16, v527, v422, &v528, 4uLL);
  *v423 = &unk_1F5AFE5A8;
  if (!v423[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerSigmoidHard]";
    *(&v528 + 1) = 104;
    v424 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v424)
    {
      v425 = v424;
    }

    else
    {
      v425 = *(&v528 + 1);
    }

    v426 = v528 + v425;
    v427 = *(&v528 + 1) - v425;
    if (*(&v528 + 1) - v425 >= 0x12)
    {
      v428 = 18;
    }

    else
    {
      v428 = *(&v528 + 1) - v425;
    }

    v429 = v426 + v428;
    v430 = v427 - v428;
    if (v430 >= v430 - 1)
    {
      --v430;
    }

    v423[8] = v429;
    v423[9] = v430;
  }

  v431 = *(v423 + 22);
  if (v431 > *(v423 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v423 + 10), (v423 + 12), v431, 16);
    LODWORD(v431) = *(v423 + 22);
  }

  *(v423 + 22) = v431;
  v433 = a1[2];
  v432 = a1[3];
  if (v433 >= v432)
  {
    v435 = a1[1];
    v436 = v433 - v435;
    v437 = (v433 - v435) >> 3;
    v438 = v437 + 1;
    if ((v437 + 1) >> 61)
    {
      goto LABEL_652;
    }

    v439 = v432 - v435;
    if (v439 >> 2 > v438)
    {
      v438 = v439 >> 2;
    }

    if (v439 >= 0x7FFFFFFFFFFFFFF8)
    {
      v440 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v440 = v438;
    }

    if (v440)
    {
      if (v440 >> 61)
      {
        goto LABEL_653;
      }

      v441 = operator new(8 * v440);
    }

    else
    {
      v441 = 0;
    }

    v442 = &v441[8 * v437];
    *v442 = v423;
    v434 = v442 + 8;
    memcpy(v441, v435, v436);
    a1[1] = v441;
    a1[2] = v434;
    a1[3] = &v441[8 * v440];
    if (v435)
    {
      operator delete(v435);
    }
  }

  else
  {
    *v433 = v423;
    v434 = v433 + 8;
  }

  a1[2] = v434;
  v443 = *a1;
  v444 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  v530 = xmmword_1E86D3268;
  v531 = *&off_1E86D3278;
  v532 = xmmword_1E86D3288;
  v528 = xmmword_1E86D3248;
  v529 = *&off_1E86D3258;
  mlir::Pattern::Pattern((v444 + 1), "mps.softmax", 11, v527, v443, &v528, 5uLL);
  *v444 = &unk_1F5AFE5E8;
  if (!v444[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerSoftmax]";
    *(&v528 + 1) = 100;
    v445 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v445)
    {
      v446 = v445;
    }

    else
    {
      v446 = *(&v528 + 1);
    }

    v447 = v528 + v446;
    v448 = *(&v528 + 1) - v446;
    if (*(&v528 + 1) - v446 >= 0x12)
    {
      v449 = 18;
    }

    else
    {
      v449 = *(&v528 + 1) - v446;
    }

    v450 = v447 + v449;
    v451 = v448 - v449;
    if (v451 >= v451 - 1)
    {
      --v451;
    }

    v444[8] = v450;
    v444[9] = v451;
  }

  v452 = *(v444 + 22);
  if (v452 > *(v444 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v444 + 10), (v444 + 12), v452, 16);
    LODWORD(v452) = *(v444 + 22);
  }

  *(v444 + 22) = v452;
  v454 = a1[2];
  v453 = a1[3];
  if (v454 >= v453)
  {
    v456 = a1[1];
    v457 = v454 - v456;
    v458 = (v454 - v456) >> 3;
    v459 = v458 + 1;
    if ((v458 + 1) >> 61)
    {
      goto LABEL_652;
    }

    v460 = v453 - v456;
    if (v460 >> 2 > v459)
    {
      v459 = v460 >> 2;
    }

    if (v460 >= 0x7FFFFFFFFFFFFFF8)
    {
      v461 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v461 = v459;
    }

    if (v461)
    {
      if (v461 >> 61)
      {
        goto LABEL_653;
      }

      v462 = operator new(8 * v461);
    }

    else
    {
      v462 = 0;
    }

    v463 = &v462[8 * v458];
    *v463 = v444;
    v455 = v463 + 8;
    memcpy(v462, v456, v457);
    a1[1] = v462;
    a1[2] = v455;
    a1[3] = &v462[8 * v461];
    if (v456)
    {
      operator delete(v456);
    }
  }

  else
  {
    *v454 = v444;
    v455 = v454 + 8;
  }

  a1[2] = v455;
  v464 = *a1;
  v465 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  v528 = xmmword_1E86D3298;
  v529 = *&off_1E86D32A8;
  v530 = xmmword_1E86D32B8;
  mlir::Pattern::Pattern((v465 + 1), "mps.softsign", 12, v527, v464, &v528, 3uLL);
  *v465 = &unk_1F5AFE628;
  if (!v465[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerSoftsign]";
    *(&v528 + 1) = 101;
    v466 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v466)
    {
      v467 = v466;
    }

    else
    {
      v467 = *(&v528 + 1);
    }

    v468 = v528 + v467;
    v469 = *(&v528 + 1) - v467;
    if (*(&v528 + 1) - v467 >= 0x12)
    {
      v470 = 18;
    }

    else
    {
      v470 = *(&v528 + 1) - v467;
    }

    v471 = v468 + v470;
    v472 = v469 - v470;
    if (v472 >= v472 - 1)
    {
      --v472;
    }

    v465[8] = v471;
    v465[9] = v472;
  }

  v473 = *(v465 + 22);
  if (v473 > *(v465 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v465 + 10), (v465 + 12), v473, 16);
    LODWORD(v473) = *(v465 + 22);
  }

  *(v465 + 22) = v473;
  v475 = a1[2];
  v474 = a1[3];
  if (v475 >= v474)
  {
    v477 = a1[1];
    v478 = v475 - v477;
    v479 = (v475 - v477) >> 3;
    v480 = v479 + 1;
    if ((v479 + 1) >> 61)
    {
      goto LABEL_652;
    }

    v481 = v474 - v477;
    if (v481 >> 2 > v480)
    {
      v480 = v481 >> 2;
    }

    if (v481 >= 0x7FFFFFFFFFFFFFF8)
    {
      v482 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v482 = v480;
    }

    if (v482)
    {
      if (v482 >> 61)
      {
        goto LABEL_653;
      }

      v483 = operator new(8 * v482);
    }

    else
    {
      v483 = 0;
    }

    v484 = &v483[8 * v479];
    *v484 = v465;
    v476 = v484 + 8;
    memcpy(v483, v477, v478);
    a1[1] = v483;
    a1[2] = v476;
    a1[3] = &v483[8 * v482];
    if (v477)
    {
      operator delete(v477);
    }
  }

  else
  {
    *v475 = v465;
    v476 = v475 + 8;
  }

  a1[2] = v476;
  v485 = *a1;
  v486 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  v528 = xmmword_1E86D32C8;
  v529 = *&off_1E86D32D8;
  mlir::Pattern::Pattern((v486 + 1), "mps.swish", 9, v527, v485, &v528, 2uLL);
  *v486 = &unk_1F5AFE668;
  if (!v486[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerSwish]";
    *(&v528 + 1) = 98;
    v487 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v487)
    {
      v488 = v487;
    }

    else
    {
      v488 = *(&v528 + 1);
    }

    v489 = v528 + v488;
    v490 = *(&v528 + 1) - v488;
    if (*(&v528 + 1) - v488 >= 0x12)
    {
      v491 = 18;
    }

    else
    {
      v491 = *(&v528 + 1) - v488;
    }

    v492 = v489 + v491;
    v493 = v490 - v491;
    if (v493 >= v493 - 1)
    {
      --v493;
    }

    v486[8] = v492;
    v486[9] = v493;
  }

  v494 = *(v486 + 22);
  if (v494 > *(v486 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v486 + 10), (v486 + 12), v494, 16);
    LODWORD(v494) = *(v486 + 22);
  }

  *(v486 + 22) = v494;
  v496 = a1[2];
  v495 = a1[3];
  if (v496 >= v495)
  {
    v498 = a1[1];
    v499 = v496 - v498;
    v500 = (v496 - v498) >> 3;
    v501 = v500 + 1;
    if ((v500 + 1) >> 61)
    {
      goto LABEL_652;
    }

    v502 = v495 - v498;
    if (v502 >> 2 > v501)
    {
      v501 = v502 >> 2;
    }

    if (v502 >= 0x7FFFFFFFFFFFFFF8)
    {
      v503 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v503 = v501;
    }

    if (v503)
    {
      if (v503 >> 61)
      {
        goto LABEL_653;
      }

      v504 = operator new(8 * v503);
    }

    else
    {
      v504 = 0;
    }

    v505 = &v504[8 * v500];
    *v505 = v486;
    v497 = v505 + 8;
    memcpy(v504, v498, v499);
    a1[1] = v504;
    a1[2] = v497;
    a1[3] = &v504[8 * v503];
    if (v498)
    {
      operator delete(v498);
    }
  }

  else
  {
    *v496 = v486;
    v497 = v496 + 8;
  }

  a1[2] = v497;
  v506 = *a1;
  v507 = operator new(0x60uLL);
  mlir::PatternBenefit::PatternBenefit(&v527, 1);
  v528 = xmmword_1E86D32E8;
  v529 = *&off_1E86D32F8;
  v530 = xmmword_1E86D3308;
  v531 = *&off_1E86D3318;
  mlir::Pattern::Pattern((v507 + 1), "mps.truncate", 12, v527, v506, &v528, 4uLL);
  *v507 = &unk_1F5AFE6A8;
  if (!v507[9])
  {
    *&v528 = "StringRef llvm::getTypeName() [DesiredTypeName = mlir::mps::(anonymous namespace)::MPS_LowerTruncate]";
    *(&v528 + 1) = 101;
    v508 = llvm::StringRef::find(&v528, "DesiredTypeName = ", 0x12uLL, 0);
    if (*(&v528 + 1) >= v508)
    {
      v509 = v508;
    }

    else
    {
      v509 = *(&v528 + 1);
    }

    v510 = v528 + v509;
    v511 = *(&v528 + 1) - v509;
    if (*(&v528 + 1) - v509 >= 0x12)
    {
      v512 = 18;
    }

    else
    {
      v512 = *(&v528 + 1) - v509;
    }

    v513 = v510 + v512;
    v514 = v511 - v512;
    if (v514 >= v514 - 1)
    {
      --v514;
    }

    v507[8] = v513;
    v507[9] = v514;
  }

  v515 = *(v507 + 22);
  if (v515 > *(v507 + 23))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod((v507 + 10), (v507 + 12), v515, 16);
    LODWORD(v515) = *(v507 + 22);
  }

  *(v507 + 22) = v515;
  v517 = a1[2];
  v516 = a1[3];
  if (v517 < v516)
  {
    *v517 = v507;
    v518 = v517 + 8;
    goto LABEL_651;
  }

  v519 = a1[1];
  v520 = v517 - v519;
  v521 = (v517 - v519) >> 3;
  v522 = v521 + 1;
  if ((v521 + 1) >> 61)
  {
LABEL_652:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v523 = v516 - v519;
  if (v523 >> 2 > v522)
  {
    v522 = v523 >> 2;
  }

  if (v523 >= 0x7FFFFFFFFFFFFFF8)
  {
    v524 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v524 = v522;
  }

  if (v524)
  {
    if (!(v524 >> 61))
    {
      v525 = operator new(8 * v524);
      goto LABEL_649;
    }

LABEL_653:
    std::vector<mlir::CallGraphNode *>::__throw_length_error[abi:nn200100]();
  }

  v525 = 0;
LABEL_649:
  v526 = &v525[8 * v521];
  *v526 = v507;
  v518 = v526 + 8;
  memcpy(v525, v519, v520);
  a1[1] = v525;
  a1[2] = v518;
  a1[3] = &v525[8 * v524];
  if (v519)
  {
    operator delete(v519);
  }

LABEL_651:
  a1[2] = v518;
}

mlir::mps::MPSConversionTarget *mlir::mps::MPSConversionTarget::MPSConversionTarget(mlir::mps::MPSConversionTarget *this, mlir::MLIRContext *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 6) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 4) = this + 48;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 11) = 0x1000000000;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0x2800000000;
  *(this + 18) = 0;
  *(this + 19) = a2;
  *this = &unk_1F5AFD790;
  v5 = "mps";
  v6 = 3;
  mlir::ConversionTarget::setDialectAction(this, &v5, 1, 0);
  v5 = "mps_spi";
  v6 = 7;
  mlir::ConversionTarget::setDialectAction(this, &v5, 1, 0);
  v5 = "mpsx";
  v6 = 4;
  mlir::ConversionTarget::setDialectAction(this, &v5, 1, 0);
  v4[0] = &v5;
  v5 = "scf";
  v6 = 3;
  v4[1] = 0x200000001;
  mlir::ConversionTarget::setDialectAction(this, &v5, 1, 0);
  mlir::OperationName::OperationName(v4, "tensor.extract", 14, *(this + 19));
  mlir::ConversionTarget::setOpAction(this, v4[0], 0);
  mlir::OperationName::OperationName(v4, "func.func", 9, *(this + 19));
  mlir::ConversionTarget::setOpAction(this, v4[0], 0);
  mlir::OperationName::OperationName(v4, "builtin.module", 14, *(this + 19));
  mlir::ConversionTarget::setOpAction(this, v4[0], 0);
  mlir::OperationName::OperationName(v4, "func.return", 11, *(this + 19));
  mlir::ConversionTarget::setOpAction(this, v4[0], 0);
  mlir::OperationName::OperationName(v4, "tensor.cast", 11, *(this + 19));
  mlir::ConversionTarget::setOpAction(this, v4[0], 0);
  mlir::OperationName::OperationName(v4, "tensor.from_elements", 20, *(this + 19));
  mlir::ConversionTarget::setOpAction(this, v4[0], 0);
  mlir::OperationName::OperationName(v4, "placement.region_call", 21, *(this + 19));
  mlir::ConversionTarget::setOpAction(this, v4[0], 0);
  mlir::OperationName::OperationName(v4, "placement.tensor_to_memref", 26, *(this + 19));
  mlir::ConversionTarget::setOpAction(this, v4[0], 0);
  mlir::OperationName::OperationName(v4, "placement.memref_to_tensor", 26, *(this + 19));
  mlir::ConversionTarget::setOpAction(this, v4[0], 0);
  mlir::OperationName::OperationName(v4, "mpsx.tensor_to_buffer", 21, *(this + 19));
  mlir::ConversionTarget::setOpAction(this, v4[0], 0);
  mlir::OperationName::OperationName(v4, "mpsx.buffer_to_tensor", 21, *(this + 19));
  mlir::ConversionTarget::setOpAction(this, v4[0], 0);
  return this;
}

void sub_1DFCC8408(void *__p)
{

  operator delete(__p);
}

_BYTE *_ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4mpsx17QuantizedMatMulOpEZNS2_3mps12_GLOBAL__N_112LoweringPass5lowerEPNS2_9OperationEE3__0EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_SB_EEvE4typeEOSE_EUlSB_E_NS_9allocatorISI_EEFNS_8optionalIbEESB_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  *result = &unk_1F5AFD7D0;
  result[8] = *(a1 + 8);
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4mpsx17QuantizedMatMulOpEZNS2_3mps12_GLOBAL__N_112LoweringPass5lowerEPNS2_9OperationEE3__0EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_SB_EEvE4typeEOSE_EUlSB_E_NS_9allocatorISI_EEFNS_8optionalIbEESB_EE7__cloneEPNS0_6__baseISN_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5AFD7D0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_4mpsx17QuantizedMatMulOpEZNS2_3mps12_GLOBAL__N_112LoweringPass5lowerEPNS2_9OperationEE3__0EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_SB_EEvE4typeEOSE_EUlSB_E_NS_9allocatorISI_EEFNS_8optionalIbEESB_EEclEOSB_(uint64_t a1, mlir::Operation **a2)
{
  v50 = *a2;
  v44 = 0;
  if (!mlir::mpsx::QuantizedMatMulOp::isInputAffneQuantized(&v50) || (AttrDictionary = mlir::Operation::getAttrDictionary(v50), v2 = mlir::ArrayAttr::getValue(&AttrDictionary), AttrDictionary = mlir::Operation::getAttrDictionary(v50), v3 = mlir::ArrayAttr::getValue(&AttrDictionary), (v5 = mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(v2, (v3 + 16 * v4 - 32), **(*(v50 + 6) + 96))) == 0) || *(*v5 + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerAttr,void>::id || ((v6 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v50, 0), (v7 = (*(*(*(v50 + 9) + 32 * v6 + 24) + 8) & 0xFFFFFFFFFFFFFFF8)) == 0) ? (v8 = 0) : (v8 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v7 + 8)), (v48 = v7, v49 = v8, (mlir::CallOpInterface::getArgOperands(&v48) & 1) == 0) || ((mlir::CallableOpInterface::getArgAttrsAttr(&v48), v10 = v9, v11 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v50, 1), (v12 = (*(*(*(v50 + 9) + 32 * v11 + 24) + 8) & 0xFFFFFFFFFFFFFFF8)) == 0) ? (v13 = 0) : (v13 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v12 + 8)), ((AttrDictionary = v12, v52 = v13, (mlir::CallOpInterface::getArgOperands(&AttrDictionary) & 1) == 0) || (mlir::CallableOpInterface::getArgAttrsAttr(&AttrDictionary), v10 == 1) || v14 != 1) && ((v15 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v50, 2), (v16 = (*(*(*(v50 + 9) + 32 * v15 + 24) + 8) & 0xFFFFFFFFFFFFFFF8)) == 0) ? (v17 = 0) : (v17 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v16 + 8)), ((AttrDictionary = v16, v52 = v17, (mlir::CallOpInterface::getArgOperands(&AttrDictionary) & 1) == 0) || (mlir::CallableOpInterface::getArgAttrsAttr(&AttrDictionary), v10 == 1) || v18 != 1) && ((v19 = mlir::mpsx::QuantizedMatMulOp::getODSOperandIndexAndLength(&v50, 3), (v20 = (*(*(*(v50 + 9) + 32 * v19 + 24) + 8) & 0xFFFFFFFFFFFFFFF8)) == 0) ? (v21 = 0) : (v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8)), (AttrDictionary = v20, v52 = v21, (mlir::CallOpInterface::getArgOperands(&AttrDictionary) & 1) == 0) || (mlir::CallableOpInterface::getArgAttrsAttr(&AttrDictionary), v10 == 1) || v22 != 1)))))
  {
    {
      v44 = 1;
    }
  }

  return v44 | 0x100u;
}

uint64_t mlir::mps::anonymous namespace::LowerQuantizedMatmul::requiresConvertParamToND(uint64_t a1, uint64_t a2)
{
  v3 = (*(a1 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v3)
  {
    v4 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  v8[0] = v3;
  v8[1] = v4;
  result = mlir::CallOpInterface::getArgOperands(v8);
  if (result)
  {
    mlir::CallableOpInterface::getArgAttrsAttr(v8);
    return a2 != 1 && v6 == 1;
  }

  return result;
}

uint64_t mlir::impl::getAttrFromSortedRange<mlir::NamedAttribute const*,mlir::StringAttr>(mlir::CallGraphNode *this, mlir::CallGraphNode *a2, uint64_t a3)
{
  v3 = this;
  v18 = a3;
  v4 = a2 - this;
  if (a2 - this >= 257)
  {
    AttrData = mlir::OpaqueAttr::getAttrData(&v18);
    v7 = v6;
    v8 = v4 >> 4;
    while (1)
    {
      v9 = v8 >> 1;
      CallableRegion = mlir::CallGraphNode::getCallableRegion((v3 + 16 * (v8 >> 1)));
      v10 = mlir::OpaqueAttr::getAttrData(&CallableRegion);
      v12 = v11;
      v13 = v7 >= v11 ? v11 : v7;
      if (v13)
      {
        v14 = memcmp(v10, AttrData, v13);
        if (v14)
        {
          break;
        }
      }

      if (v12 == v7)
      {
        v3 = (v3 + 16 * (v8 >> 1));
        return *(v3 + 1);
      }

      if (v12 < v7)
      {
        goto LABEL_3;
      }

LABEL_4:
      v8 = v9;
      if (v9 <= 0)
      {
        return 0;
      }
    }

    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    v3 = (v3 + 16 * (v8 >> 1) + 16);
    v9 = v8 + ~v9;
    goto LABEL_4;
  }

  if (this != a2)
  {
    do
    {
      if (mlir::CallGraphNode::getCallableRegion(v3) == a3)
      {
        return *(v3 + 1);
      }

      v3 = (v3 + 16);
    }

    while (v3 != a2);
  }

  return 0;
}

_BYTE *_ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_3mps9SoftmaxOpEZNS5_12_GLOBAL__N_112LoweringPass5lowerEPNS2_9OperationEE3__1EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_SA_EEvE4typeEOSD_EUlSA_E_NS_9allocatorISH_EEFNS_8optionalIbEESA_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  *result = &unk_1F5AFD818;
  result[8] = *(a1 + 8);
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_3mps9SoftmaxOpEZNS5_12_GLOBAL__N_112LoweringPass5lowerEPNS2_9OperationEE3__1EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_SA_EEvE4typeEOSD_EUlSA_E_NS_9allocatorISH_EEFNS_8optionalIbEESA_EE7__cloneEPNS0_6__baseISM_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5AFD818;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_3mps9SoftmaxOpEZNS5_12_GLOBAL__N_112LoweringPass5lowerEPNS2_9OperationEE3__1EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_SA_EEvE4typeEOSD_EUlSA_E_NS_9allocatorISH_EEFNS_8optionalIbEESA_EEclEOSA_(uint64_t a1, uint64_t a2)
{
  v2 = (*(*(*(*a2 + 72) + 56) + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v2)
  {
    v3 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v8[0] = v2;
  v8[1] = v3;
  if (!mlir::CallOpInterface::getArgOperands(v8))
  {
    goto LABEL_8;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v8);
  if (!v4)
  {
    v6 = 1;
    return v6 | 0x100u;
  }

  mlir::CallableOpInterface::getArgAttrsAttr(v8);
  if (v5 == 1)
  {
    v6 = *mlir::CallableOpInterface::getArgAttrsAttr(v8) == 1;
  }

  else
  {
LABEL_8:
    v6 = 0;
  }

  return v6 | 0x100u;
}

void *_ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_3mps12DequantizeOpEZNS5_12_GLOBAL__N_112LoweringPass5lowerEPNS2_9OperationEE3__2EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_SA_EEvE4typeEOSD_EUlSA_E_NS_9allocatorISH_EEFNS_8optionalIbEESA_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5AFD860;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_3mps12DequantizeOpEZNS5_12_GLOBAL__N_112LoweringPass5lowerEPNS2_9OperationEE3__2EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_SA_EEvE4typeEOSD_EUlSA_E_NS_9allocatorISH_EEFNS_8optionalIbEESA_EE7__cloneEPNS0_6__baseISM_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5AFD860;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_3mps12DequantizeOpEZNS5_12_GLOBAL__N_112LoweringPass5lowerEPNS2_9OperationEE3__2EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_SA_EEvE4typeEOSD_EUlSA_E_NS_9allocatorISH_EEFNS_8optionalIbEESA_EEclEOSA_(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (*(*(mlir::Block::getParentOp(*(*a2 + 16)) + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mpsx::FusionOp,void>::id)
  {
    goto LABEL_39;
  }

  ElementTypeOrSelf = mlir::getElementTypeOrSelf(*(*(v2 + 72) + 24));
  if (*(*ElementTypeOrSelf + 136) != &mlir::detail::TypeIDResolver<mlir::IntegerType,void>::id || mlir::Type::getIntOrFloatBitWidth(&ElementTypeOrSelf) != 4)
  {
    if (*(v2 + 36))
    {
      v5 = v2 - 16;
    }

    else
    {
      v5 = 0;
    }

    for (i = *mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0); i; i = *i)
    {
      v7 = i[2];
      v8 = *(*(v7 + 48) + 16);
      if (v7)
      {
        v9 = v8 == &mlir::detail::TypeIDResolver<mlir::mps::Conv2DOp,void>::id;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        if (*v3 != 1)
        {
          goto LABEL_38;
        }

        v14 = &v15;
        v15 = v7;
        ElementTypeOrSelf = v3;
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v7)
        {
          v10 = v8 == &mlir::detail::TypeIDResolver<mlir::mps::MatMulOp,void>::id;
        }

        else
        {
          v10 = 0;
        }

        if (v10)
        {
          if (v3[1] != 1)
          {
            goto LABEL_38;
          }

          v14 = &v15;
          v15 = v7;
          ElementTypeOrSelf = v3;
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v7)
          {
            v11 = v8 == &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DOp,void>::id;
          }

          else
          {
            v11 = 0;
          }

          if (v11)
          {
            {
              goto LABEL_38;
            }
          }

          else
          {
            v4 = 0;
            if (!v7 || v8 != &mlir::detail::TypeIDResolver<mlir::mps::DepthwiseConv3DDataGradientOp,void>::id)
            {
              return v4 | 0x100u;
            }

            {
LABEL_38:
              v4 = 0;
              return v4 | 0x100u;
            }
          }
        }
      }
    }

LABEL_39:
    v4 = 1;
    return v4 | 0x100u;
  }

  v4 = *(v2 + 16 * ((*(v2 + 44) >> 23) & 1) + 64) == 0;
  return v4 | 0x100u;
}

uint64_t mlir::mps::anonymous namespace::isDequantSupportedForLayer<mlir::mps::Conv2DOp>(mlir::mps::MPSRuntimeCapabilities const&,mlir::mps::Conv2DOp)::{lambda(mlir::Value,BOOL)#1}::operator()(uint64_t *a1, uint64_t a2, char a3)
{
  v25 = a2;
  result = mlir::Value::getDefiningOp(&v25);
  if (result)
  {
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
    {
      return 0;
    }

    v6 = result;
    v7 = *(*(result + 72) + 56);
    v26 = 0;
    v27 = 0;
    v28 = &v26;
    v29 = v7;
    DefiningOp = mlir::Value::getDefiningOp(&v29);
    if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v28, DefiningOp) & 1) == 0)
    {
      return 0;
    }

    SplatFloat = mlir::getSplatFloatValue<float>(v26, v27);
    result = 0;
    if ((SplatFloat & 0x100000000) != 0 && *&SplatFloat == 1.0)
    {
      v10 = *(v6[9] + 88);
      v24 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
      v26 = v10;
      v11 = mlir::Value::getDefiningOp(&v26);
      if (v11 && (mlir::detail::constant_int_predicate_matcher::match(&v24, v11) & 1) != 0)
      {
        return 1;
      }

      v12 = *a1;
      v13 = *a1[1];
      v28 = v6;
      v29 = v13;
      if (*(v12 + 2))
      {
        v14 = v6[9];
        if ((*(*(v14 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*(*(*(v14 + 24) + 8) & 0xFFFFFFFFFFFFFFF8) + 8);
          v14 = v6[9];
        }

        v15 = (*(*(v14 + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v15)
        {
          v16 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v15 + 8);
        }

        else
        {
          v16 = 0;
        }

        v26 = v15;
        v27 = v16;
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v26);
        NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v18);
        if (NumElements != 1 && (a3 & 1) == 0)
        {
          Axis = mlir::mps::DequantizeLUTOp::getAxis(&v28);
          if (Axis < 0)
          {
            v21 = Axis;
          }

          else
          {
            v21 = Axis - 4;
          }

          WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v29);
          v23 = -4;
          if (WeightsLayout != 2)
          {
            v23 = -1;
          }

          return v21 == v23;
        }

        if (NumElements == 1)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t mlir::getSplatFloatValue<float>(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v23 = a2;
  if (mlir::ElementsAttr::isSplat(&v22) && ((v21[0] = mlir::CallOpInterface::getArgOperands(&v22), v21[1] = v2, v3 = *(*mlir::ElementsAttr::isSplat(v21) + 136), v3 != &mlir::detail::TypeIDResolver<mlir::Float4E2M1FNType,void>::id) ? (v4 = v3 == &mlir::detail::TypeIDResolver<mlir::Float6E2M3FNType,void>::id) : (v4 = 1), !v4 ? (v5 = v3 == &mlir::detail::TypeIDResolver<mlir::Float6E3M2FNType,void>::id) : (v5 = 1), !v5 ? (v6 = v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2Type,void>::id) : (v6 = 1), !v6 ? (v7 = v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3Type,void>::id) : (v7 = 1), !v7 ? (v8 = v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNType,void>::id) : (v8 = 1), !v8 ? (v9 = v3 == &mlir::detail::TypeIDResolver<mlir::Float8E5M2FNUZType,void>::id) : (v9 = 1), !v9 ? (v10 = v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3FNUZType,void>::id) : (v10 = 1), !v10 ? (v11 = v3 == &mlir::detail::TypeIDResolver<mlir::Float8E4M3B11FNUZType,void>::id) : (v11 = 1), !v11 ? (v12 = v3 == &mlir::detail::TypeIDResolver<mlir::Float8E3M4Type,void>::id) : (v12 = 1), !v12 ? (v13 = v3 == &mlir::detail::TypeIDResolver<mlir::BFloat16Type,void>::id) : (v13 = 1), !v13 ? (v14 = v3 == &mlir::detail::TypeIDResolver<mlir::Float16Type,void>::id) : (v14 = 1), !v14 ? (v15 = v3 == &mlir::detail::TypeIDResolver<mlir::FloatTF32Type,void>::id) : (v15 = 1), !v15 ? (v16 = v3 == &mlir::detail::TypeIDResolver<mlir::Float32Type,void>::id) : (v16 = 1), !v16 ? (v17 = v3 == &mlir::detail::TypeIDResolver<mlir::Float64Type,void>::id) : (v17 = 1), v17 || v3 == &mlir::detail::TypeIDResolver<mlir::Float80Type,void>::id || v3 == &mlir::detail::TypeIDResolver<mlir::Float128Type,void>::id))
  {
    LODWORD(v21[0]) = 0;
    mlir::copyElementsAttrData<float>(v22, v23, v21, 0);
    v18 = LODWORD(v21[0]);
    v19 = 0x100000000;
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  return v18 | v19;
}

void mlir::copyElementsAttrData<float>(uint64_t a1, uint64_t a2, float *a3, int a4)
{
  v108[5] = *MEMORY[0x1E69E9840];
  v105 = a1;
  v106 = a2;
  Type = mlir::ElementsAttr::getType(&v105);
  v7 = Type;
  if (Type)
  {
    Type = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*Type + 8);
  }

  v104[0] = v7;
  v104[1] = Type;
  isSplat = mlir::ElementsAttr::isSplat(v104);
  v8 = mlir::ElementsAttr::isSplat(&v105);
  ElementsAttrRawData = mlir::getElementsAttrRawData(v105);
  v11 = v10;
  if (!v8 || a4)
  {
    NumElements = mlir::ElementsAttr::getNumElements(v105, v106);
    if (mlir::Type::isUnsignedInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_9;
    }

    if (mlir::Type::isInteger(&isSplat, 8))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_20;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return;
      }

      if (NumElements >= 2)
      {
        v22 = 0;
        v21 = NumElements & 0x7FFFFFFFFFFFFFFELL;
        v23 = a3 + 1;
        do
        {
          if (v8)
          {
            v24 = 0;
          }

          else
          {
            v24 = v22;
          }

          if (v8)
          {
            v25 = 0;
          }

          else
          {
            v25 = v22 + 1;
          }

          LOWORD(v19) = *&ElementsAttrRawData[2 * v24];
          v19 = LODWORD(v19);
          LOWORD(v20) = *&ElementsAttrRawData[2 * v25];
          v20 = LODWORD(v20);
          *(v23 - 1) = v19;
          *v23 = v20;
          v23 += 2;
          v22 += 2;
        }

        while (v22 != v21);
        goto LABEL_192;
      }

      goto LABEL_29;
    }

    if (mlir::Type::isInteger(&isSplat, 16))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_46;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_53;
    }

    if (mlir::Type::isInteger(&isSplat, 32))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_69;
    }

    if (mlir::Type::isUnsignedInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_85;
    }

    if (mlir::Type::isInteger(&isSplat, 64))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_101;
    }

    if (mlir::Type::isF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_117;
    }

    if (mlir::Type::isF32(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_133;
    }

    if (mlir::Type::isF64(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_153;
    }

    if (mlir::Type::isBF16(&isSplat))
    {
      if (NumElements < 1)
      {
        return;
      }

      goto LABEL_159;
    }

LABEL_161:
    if (mlir::Type::isInteger(&isSplat, 1))
    {
      if (v8)
      {
        v74 = 1;
      }

      else
      {
        v74 = NumElements;
      }

      llvm::SmallVector<char,40u>::SmallVector(v107, v74);
      mlir::detail::unpackBooleanData(ElementsAttrRawData, v11, v107[0], v107[1]);
      v76 = v107[0];
      if (NumElements >= 1)
      {
        for (i = 0; i != NumElements; ++i)
        {
          if (v8)
          {
            v78 = 0;
          }

          else
          {
            v78 = i;
          }

          v75.i8[0] = v76[v78];
          v75 = vmovl_s16(*&vmovl_s8(v75)).u64[0];
          *v75.i32 = v75.i32[0];
          a3[i] = *v75.i32;
        }
      }

      if (v76 != v108)
      {
        free(v76);
      }
    }

    else
    {
      mlir::Type::getIntOrFloatBitWidth(&isSplat);
      IntOrFloatBitWidth = mlir::Type::getIntOrFloatBitWidth(&isSplat);
      mlir::detail::unpackQuantizedData<float>(ElementsAttrRawData, v11, a3, NumElements, IntOrFloatBitWidth);
    }

    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_9:
    for (j = 0; j != NumElements; ++j)
    {
      if (v8)
      {
        v15 = 0;
      }

      else
      {
        v15 = j;
      }

      LOBYTE(v12) = ElementsAttrRawData[v15];
      v12 = LODWORD(v12);
      a3[j] = v12;
    }

    return;
  }

  if (mlir::Type::isInteger(&isSplat, 8))
  {
    NumElements = 1;
LABEL_20:
    for (k = 0; k != NumElements; ++k)
    {
      if (v8)
      {
        v18 = 0;
      }

      else
      {
        v18 = k;
      }

      v16.i8[0] = ElementsAttrRawData[v18];
      v16 = vmovl_s16(*&vmovl_s8(v16)).u64[0];
      *v16.i32 = v16.i32[0];
      a3[k] = *v16.i32;
    }

    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_29:
    v21 = 0;
    do
    {
      if (v8)
      {
        v91 = 0;
      }

      else
      {
        v91 = v21;
      }

      LOWORD(v19) = *&ElementsAttrRawData[2 * v91];
      v19 = LODWORD(v19);
      a3[v21++] = v19;
LABEL_192:
      ;
    }

    while (NumElements != v21);
    return;
  }

  if (mlir::Type::isInteger(&isSplat, 16))
  {
    NumElements = 1;
LABEL_46:
    if (NumElements >= 2)
    {
      v30 = 0;
      v28 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v31 = a3 + 1;
      do
      {
        if (v8)
        {
          v32 = 0;
        }

        else
        {
          v32 = v30;
        }

        v26.i16[0] = *&ElementsAttrRawData[2 * v32];
        if (v8)
        {
          v33 = 0;
        }

        else
        {
          v33 = v30 + 1;
        }

        v26 = vmovl_s16(v26).u64[0];
        *v26.i32 = v26.i32[0];
        v27.i16[0] = *&ElementsAttrRawData[2 * v33];
        v27 = vmovl_s16(v27).u64[0];
        *v27.i32 = v27.i32[0];
        *(v31 - 1) = v26.i32[0];
        *v31 = v27.i32[0];
        v31 += 2;
        v30 += 2;
      }

      while (v30 != v28);
      goto LABEL_197;
    }

    v28 = 0;
    do
    {
      if (v8)
      {
        v92 = 0;
      }

      else
      {
        v92 = v28;
      }

      v26.i16[0] = *&ElementsAttrRawData[2 * v92];
      v26 = vmovl_s16(v26).u64[0];
      *v26.i32 = v26.i32[0];
      a3[v28++] = *v26.i32;
LABEL_197:
      ;
    }

    while (NumElements != v28);
    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_53:
    if (NumElements >= 2)
    {
      v35 = 0;
      v29 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v36 = a3 + 1;
      do
      {
        if (v8)
        {
          v37 = 0;
        }

        else
        {
          v37 = v35;
        }

        if (v8)
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

      while (v35 != v29);
      goto LABEL_202;
    }

    v29 = 0;
    do
    {
      if (v8)
      {
        v93 = 0;
      }

      else
      {
        v93 = v29;
      }

      a3[v29++] = *&ElementsAttrRawData[4 * v93];
LABEL_202:
      ;
    }

    while (NumElements != v29);
    return;
  }

  if (mlir::Type::isInteger(&isSplat, 32))
  {
    NumElements = 1;
LABEL_69:
    if (NumElements >= 2)
    {
      v41 = 0;
      v34 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v42 = a3 + 1;
      do
      {
        if (v8)
        {
          v43 = 0;
        }

        else
        {
          v43 = v41;
        }

        if (v8)
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
      goto LABEL_207;
    }

    v34 = 0;
    do
    {
      if (v8)
      {
        v94 = 0;
      }

      else
      {
        v94 = v34;
      }

      a3[v34++] = *&ElementsAttrRawData[4 * v94];
LABEL_207:
      ;
    }

    while (NumElements != v34);
    return;
  }

  if (mlir::Type::isUnsignedInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_85:
    if (NumElements >= 2)
    {
      v47 = 0;
      v40 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v48 = a3 + 1;
      do
      {
        if (v8)
        {
          v49 = 0;
        }

        else
        {
          v49 = v47;
        }

        if (v8)
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
      goto LABEL_212;
    }

    v40 = 0;
    do
    {
      if (v8)
      {
        v95 = 0;
      }

      else
      {
        v95 = v40;
      }

      a3[v40++] = *&ElementsAttrRawData[8 * v95];
LABEL_212:
      ;
    }

    while (NumElements != v40);
    return;
  }

  if (mlir::Type::isInteger(&isSplat, 64))
  {
    NumElements = 1;
LABEL_101:
    if (NumElements >= 2)
    {
      v53 = 0;
      v46 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v54 = a3 + 1;
      do
      {
        if (v8)
        {
          v55 = 0;
        }

        else
        {
          v55 = v53;
        }

        if (v8)
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
      goto LABEL_217;
    }

    v46 = 0;
    do
    {
      if (v8)
      {
        v96 = 0;
      }

      else
      {
        v96 = v46;
      }

      a3[v46++] = *&ElementsAttrRawData[8 * v96];
LABEL_217:
      ;
    }

    while (NumElements != v46);
    return;
  }

  if (mlir::Type::isF16(&isSplat))
  {
    NumElements = 1;
LABEL_117:
    if (NumElements >= 2)
    {
      v60 = 0;
      v52 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v61 = a3 + 1;
      do
      {
        if (v8)
        {
          v62 = 0;
        }

        else
        {
          v62 = v60;
        }

        if (v8)
        {
          v63 = 0;
        }

        else
        {
          v63 = v60 + 1;
        }

        _H0 = *&ElementsAttrRawData[2 * v62];
        _H1 = *&ElementsAttrRawData[2 * v63];
        __asm
        {
          FCVT            S0, H0
          FCVT            S1, H1
        }

        *(v61 - 1) = _S0;
        *v61 = _S1;
        v61 += 2;
        v60 += 2;
      }

      while (v60 != v52);
      goto LABEL_222;
    }

    v52 = 0;
    do
    {
      if (v8)
      {
        v97 = 0;
      }

      else
      {
        v97 = v52;
      }

      _H0 = *&ElementsAttrRawData[2 * v97];
      __asm { FCVT            S0, H0 }

      a3[v52++] = _S0;
LABEL_222:
      ;
    }

    while (NumElements != v52);
    return;
  }

  if (mlir::Type::isF32(&isSplat))
  {
    NumElements = 1;
LABEL_133:
    for (m = 0; m != NumElements; ++m)
    {
      if (v8)
      {
        v59 = 0;
      }

      else
      {
        v59 = m;
      }

      a3[m] = *&ElementsAttrRawData[4 * v59];
    }

    return;
  }

  if (mlir::Type::isF64(&isSplat))
  {
    NumElements = 1;
LABEL_153:
    if (NumElements >= 2)
    {
      v79 = 0;
      v72 = NumElements & 0x7FFFFFFFFFFFFFFELL;
      v80 = a3 + 1;
      do
      {
        if (v8)
        {
          v81 = 0;
        }

        else
        {
          v81 = v79;
        }

        if (v8)
        {
          v82 = 0;
        }

        else
        {
          v82 = v79 + 1;
        }

        v83 = *&ElementsAttrRawData[8 * v81];
        v84 = *&ElementsAttrRawData[8 * v82];
        *(v80 - 1) = v83;
        *v80 = v84;
        v80 += 2;
        v79 += 2;
      }

      while (v79 != v72);
      goto LABEL_227;
    }

    v72 = 0;
    do
    {
      if (v8)
      {
        v100 = 0;
      }

      else
      {
        v100 = v72;
      }

      v101 = *&ElementsAttrRawData[8 * v100];
      a3[v72++] = v101;
LABEL_227:
      ;
    }

    while (NumElements != v72);
    return;
  }

  NumElements = 1;
  if (!mlir::Type::isBF16(&isSplat))
  {
    goto LABEL_161;
  }

LABEL_159:
  if (NumElements >= 2)
  {
    v86 = 0;
    v73 = NumElements & 0x7FFFFFFFFFFFFFFELL;
    v87 = (a3 + 1);
    do
    {
      if (v8)
      {
        v88 = 0;
      }

      else
      {
        v88 = v86;
      }

      if (v8)
      {
        v89 = 0;
      }

      else
      {
        v89 = v86 + 1;
      }

      v90 = *&ElementsAttrRawData[2 * v89] << 16;
      *(v87 - 1) = *&ElementsAttrRawData[2 * v88] << 16;
      *v87 = v90;
      v87 += 2;
      v86 += 2;
    }

    while (v86 != v73);
    goto LABEL_232;
  }

  v73 = 0;
  do
  {
    if (v8)
    {
      v102 = 0;
    }

    else
    {
      v102 = v73;
    }

    LODWORD(a3[v73++]) = *&ElementsAttrRawData[2 * v102] << 16;
LABEL_232:
    ;
  }

  while (NumElements != v73);
}

unsigned __int8 *mlir::detail::unpackQuantizedData<float>(unsigned __int8 *result, unint64_t a2, float *a3, uint64_t a4, unint64_t a5)
{
  if (a5 == 6 || a5 == 3)
  {
    if (a4)
    {
      v5 = 0;
      v6 = 2;
      if (a5 == 3)
      {
        v6 = 5;
      }

      do
      {
        v7 = result[v5 >> 3] >> (v5 & 7);
        if ((v5 & 7) > v6)
        {
          v8 = (v5 >> 3) + 1;
          if (v8 < a2)
          {
            v7 |= result[v8] << (8 - (v5 & 7));
          }
        }

        *a3++ = (v7 & ~(-1 << a5));
        v5 += a5;
        --a4;
      }

      while (a4);
    }
  }

  else if (a2)
  {
    v9 = 0;
    v10 = ~(-1 << a5);
    v11 = 8 / a5;
    do
    {
      if (a4 - v9 * v11 >= v11)
      {
        v12 = 8 / a5;
      }

      else
      {
        v12 = a4 - v9 * v11;
      }

      if (v12)
      {
        v13 = *result;
        v14 = vdupq_n_s64(v12 - 1);
        v15 = &a3[v9 * v11];
        v16 = vmovn_s64(vcgeq_u64(v14, xmmword_1E09700F0));
        if (vuzp1_s16(v16, 0).u8[0])
        {
          *v15 = (v10 & v13);
        }

        if (vuzp1_s16(v16, 0).i8[2])
        {
          v15[1] = ((v13 >> a5) & v10);
        }

        if (vuzp1_s16(0, vmovn_s64(vcgeq_u64(v14, xmmword_1E096E650))).i32[1])
        {
          v15[2] = ((v13 >> (2 * a5)) & v10);
          v15[3] = ((v13 >> (3 * a5)) & v10);
        }

        if (((v12 + 3) & 0x1C) != 4)
        {
          v17 = vmovn_s64(vcgtq_u64(v14, xmmword_1E0970230));
          if (vuzp1_s16(v17, 0).u8[0])
          {
            v15[4] = ((v13 >> (4 * a5)) & v10);
          }

          if (vuzp1_s16(v17, 0).i8[2])
          {
            v15[5] = ((v13 >> (5 * a5)) & v10);
          }

          if (vuzp1_s16(0, vmovn_s64(vcgtq_u64(v14, xmmword_1E0971C10))).i32[1])
          {
            v15[6] = ((v13 >> (6 * a5)) & v10);
            v15[7] = ((v13 >> (7 * a5)) & v10);
          }
        }
      }

      ++v9;
      ++result;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::isDequantSupportedForLayer<mlir::mps::MatMulOp>(mlir::mps::MPSRuntimeCapabilities const&,mlir::mps::MatMulOp)::{lambda(mlir::Value,BOOL)#1}::operator()(uint64_t *a1, uint64_t a2, char a3)
{
  v26 = a2;
  result = mlir::Value::getDefiningOp(&v26);
  if (result)
  {
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
    {
      return 0;
    }

    v6 = result;
    v7 = *(*(result + 72) + 56);
    v28 = 0;
    v29 = 0;
    v31 = &v28;
    v27[0] = v7;
    DefiningOp = mlir::Value::getDefiningOp(v27);
    if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v31, DefiningOp) & 1) == 0)
    {
      return 0;
    }

    SplatFloat = mlir::getSplatFloatValue<float>(v28, v29);
    result = 0;
    if ((SplatFloat & 0x100000000) != 0 && *&SplatFloat == 1.0)
    {
      v10 = *(*(v6 + 72) + 88);
      v25 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
      v28 = v10;
      v11 = mlir::Value::getDefiningOp(&v28);
      if (!v11 || (mlir::detail::constant_int_predicate_matcher::match(&v25, v11) & 1) == 0)
      {
        v12 = *a1;
        v31 = *a1[1];
        v30 = v6;
        if ((*(v12 + 3) & 1) == 0)
        {
          return 0;
        }

        v13 = (*(*(*(v6 + 72) + 88) + 8) & 0xFFFFFFFFFFFFFFF8);
        if (v13)
        {
          v14 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v13 + 8);
        }

        else
        {
          v14 = 0;
        }

        v28 = v13;
        v29 = v14;
        ArgAttrsAttr = mlir::CallableOpInterface::getArgAttrsAttr(&v28);
        NumElements = mlir::ShapedType::getNumElements(ArgAttrsAttr, v16);
        if (NumElements != 1 && (a3 & 1) == 0)
        {
          Axis = mlir::mps::DequantizeLUTOp::getAxis(&v30);
          v19 = Axis;
          if (Axis < 0)
          {
LABEL_26:
            if (v19 >= -2)
            {
              TransposeRhs = mlir::mps::MatMulOp::getTransposeRhs(&v31);
              v24 = -2;
              if (!TransposeRhs)
              {
                v24 = -1;
              }

              if (v19 == v24)
              {
                return 1;
              }
            }

            return 0;
          }

          v20 = (*(v30 - 8) & 0xFFFFFFFFFFFFFFF8);
          v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
          if (v21)
          {
            v21 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v20 + 8);
          }

          else
          {
            v20 = 0;
          }

          v27[0] = v20;
          v27[1] = v21;
          if (v20 && (mlir::CallOpInterface::getArgOperands(v27) & 1) != 0)
          {
            mlir::CallableOpInterface::getArgAttrsAttr(v27);
            v19 -= v22;
            goto LABEL_26;
          }

          return 0;
        }

        if (NumElements != 1)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t mlir::mps::anonymous namespace::isDequantSupportedForLayer<mlir::mps::DepthwiseConv3DOp>(mlir::mps::MPSRuntimeCapabilities const&,mlir::mps::DepthwiseConv3DOp)::{lambda(mlir::Value,BOOL)#1}::operator()(uint64_t a1)
{
  v8 = a1;
  result = mlir::Value::getDefiningOp(&v8);
  if (result)
  {
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::mps::DequantizeOp,void>::id)
    {
      return 0;
    }

    v2 = result;
    v3 = *(*(result + 72) + 56);
    v10 = 0;
    v11 = 0;
    v9 = &v10;
    v12 = v3;
    DefiningOp = mlir::Value::getDefiningOp(&v12);
    if (!DefiningOp || (mlir::detail::constant_op_binder<mlir::ElementsAttr>::match(&v9, DefiningOp) & 1) == 0)
    {
      return 0;
    }

    SplatFloat = mlir::getSplatFloatValue<float>(v10, v11);
    result = 0;
    if ((SplatFloat & 0x100000000) != 0 && *&SplatFloat == 1.0)
    {
      v6 = *(*(v2 + 72) + 88);
      v12 = mlir::m_Zero(void)::{lambda(llvm::APInt const&)#1}::__invoke;
      v10 = v6;
      v7 = mlir::Value::getDefiningOp(&v10);
      return v7 && (mlir::detail::constant_int_predicate_matcher::match(&v12, v7) & 1) != 0;
    }
  }

  return result;
}

_BYTE *_ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_3mps15DequantizeLUTOpEZNS5_12_GLOBAL__N_112LoweringPass5lowerEPNS2_9OperationEE3__3EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_SA_EEvE4typeEOSD_EUlSA_E_NS_9allocatorISH_EEFNS_8optionalIbEESA_EE7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  *result = &unk_1F5AFD8A8;
  result[8] = *(a1 + 8);
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_3mps15DequantizeLUTOpEZNS5_12_GLOBAL__N_112LoweringPass5lowerEPNS2_9OperationEE3__3EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_SA_EEvE4typeEOSD_EUlSA_E_NS_9allocatorISH_EEFNS_8optionalIbEESA_EE7__cloneEPNS0_6__baseISM_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5AFD8A8;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN4mlir16ConversionTarget21addDynamicallyLegalOpINS2_3mps15DequantizeLUTOpEZNS5_12_GLOBAL__N_112LoweringPass5lowerEPNS2_9OperationEE3__3EENS_9enable_ifIXntsr3stdE14is_invocable_vIT0_SA_EEvE4typeEOSD_EUlSA_E_NS_9allocatorISH_EEFNS_8optionalIbEESA_EEclEOSA_(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*(*a2 + 72) + 24) + 8) & 0xFFFFFFFFFFFFFFF8;
  ElementType = mlir::TensorType::getElementType(&v4);
  v2 = mlir::Type::isUnsignedInteger(&ElementType, 2) || mlir::Type::isUnsignedInteger(&ElementType, 4) || mlir::Type::isUnsignedInteger(&ElementType, 8);
  return v2 | 0x100u;
}

uint64_t mlir::mps::anonymous namespace::LoweringTypeConverter::materializeTypeConstraint(mlir::OpBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12[0] = a3;
  v12[1] = a4;
  v10 = mlir::ValueRange::dereference_iterator(v12, 0);
  v9 = mlir::TypeAttr::get(a2);
  return mlir::OpBuilder::create<mlir::mps::TypeConstraintOp,mlir::Type &,mlir::Value,mlir::TypeAttr>(a1, a5, &v11, &v10, &v9) - 16;
}

void sub_1DFCCA070(void *__p)
{

  operator delete(__p);
}

void *_ZNKSt3__110__function6__funcIZNK4mlir13TypeConverter12wrapCallbackINS2_4TypeEZNKS3_12wrapCallbackIS5_ZNS2_3mps12_GLOBAL__N_121LoweringTypeConverterC1EvEUlS5_E_EENS_9enable_ifIXsr3stdE14is_invocable_vIT0_T_EENS_8functionIFNS_8optionalIN4llvm13LogicalResultEEES5_RNSG_15SmallVectorImplIS5_EEEEEE4typeEOSC_EUlS5_SL_E_EENSB_IXsr3stdE14is_invocable_vISC_SD_SL_EESN_E4typeESQ_EUlS5_SL_E_NS_9allocatorISU_EESM_E7__cloneEv(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5AFD930;
  result[1] = v3;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4mlir13TypeConverter12wrapCallbackINS2_4TypeEZNKS3_12wrapCallbackIS5_ZNS2_3mps12_GLOBAL__N_121LoweringTypeConverterC1EvEUlS5_E_EENS_9enable_ifIXsr3stdE14is_invocable_vIT0_T_EENS_8functionIFNS_8optionalIN4llvm13LogicalResultEEES5_RNSG_15SmallVectorImplIS5_EEEEEE4typeEOSC_EUlS5_SL_E_EENSB_IXsr3stdE14is_invocable_vISC_SD_SL_EESN_E4typeESQ_EUlS5_SL_E_NS_9allocatorISU_EESM_E7__cloneEPNS0_6__baseISM_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5AFD930;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZNK4mlir13TypeConverter12wrapCallbackINS2_4TypeEZNKS3_12wrapCallbackIS5_ZNS2_3mps12_GLOBAL__N_121LoweringTypeConverterC1EvEUlS5_E_EENS_9enable_ifIXsr3stdE14is_invocable_vIT0_T_EENS_8functionIFNS_8optionalIN4llvm13LogicalResultEEES5_RNSG_15SmallVectorImplIS5_EEEEEE4typeEOSC_EUlS5_SL_E_EENSB_IXsr3stdE14is_invocable_vISC_SD_SL_EESN_E4typeESQ_EUlS5_SL_E_NS_9allocatorISU_EESM_EclEOS5_SL_(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *(a3 + 8);
    if (v4 >= *(a3 + 12))
    {
      v7 = a3;
      llvm::SmallVectorBase<unsigned int>::grow_pod(a3, a3 + 16, v4 + 1, 8);
      a3 = v7;
      LODWORD(v4) = *(v7 + 8);
    }

    *(*a3 + 8 * v4) = v3;
    ++*(a3 + 8);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 | (v5 << 8);
}

void *std::__function::__func<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)> mlir::TypeConverter::wrapMaterialization<mlir::Type,std::optional<mlir::Value> (*)(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>(std::optional<mlir::Value> (*)(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location) &&)::{lambda(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)#1},std::allocator<std::optional<mlir::Value> (*)(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location) &&>,std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_1F5AFD978;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)> mlir::TypeConverter::wrapMaterialization<mlir::Type,std::optional<mlir::Value> (*)(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>(std::optional<mlir::Value> (*)(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location) &&)::{lambda(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)#1},std::allocator<std::optional<mlir::Value> (*)(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location) &&>,std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5AFD978;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::function<std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)> mlir::TypeConverter::wrapMaterialization<mlir::Type,std::optional<mlir::Value> (*)(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>(std::optional<mlir::Value> (*)(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location) &&)::{lambda(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)#1},std::allocator<std::optional<mlir::Value> (*)(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location) &&>,std::optional<mlir::Value> ()(mlir::OpBuilder &,mlir::Type,mlir::ValueRange,mlir::Location)>::operator()(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3)
  {
    return (*(a1 + 8))(a2, *a3, *a4, a4[1], *a5);
  }

  else
  {
    return 0;
  }
}

uint64_t mlir::OpBuilder::create<mlir::mps::TypeConstraintOp,mlir::Type &,mlir::Value,mlir::TypeAttr>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::TypeConstraintOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::TypeConstraintOp,mlir::mps::BroadcastToOp &,mlir::Type>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::TypeConstraintOp::build(a1, v19, *a3, *a4, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::TypeConstraintOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

void mlir::mps::anonymous namespace::LowerBiasAddGradNCHW::~LowerBiasAddGradNCHW(mlir::mps::_anonymous_namespace_::LowerBiasAddGradNCHW *this)
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

uint64_t mlir::OpConversionPattern<mlir::mps::BiasAddGradOp>::rewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 72))(a1, a2, v12, a5);
}

uint64_t mlir::OpConversionPattern<mlir::mps::BiasAddGradOp>::matchAndRewrite(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x1E69E9840];
  mlir::ValueRange::ValueRange(v11, a3, a4);
  v8 = v11[0];
  v9 = v11[1];
  mlir::arith::detail::AddFOpGenericAdaptorBase::AddFOpGenericAdaptorBase(v12, a2);
  v13 = v8;
  v14 = v9;
  return (*(*a1 + 80))(a1, a2, v12, a5);
}

uint64_t mlir::mps::anonymous namespace::LowerBiasAddGradNCHW::matchAndRewrite(uint64_t a1, mlir::Operation *a2, uint64_t a3, uint64_t a4)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v25 = *(*(a2 + 9) + 24);
  v26 = a2;
  if (mlir::mps::MaterializeSparseTensorOp::getStorageType(&v26))
  {
    return 0;
  }

  v24 = mlir::OpBuilder::create<mlir::mps::RankOp,mlir::Value &>((a4 + 8), *(v26 + 3), &v25);
  v7 = *(v26 + 3);
  IntegerType = mlir::Builder::getIntegerType((a4 + 8), 32, 1);
  v9 = mlir::RankedTensorType::get(0, 0, IntegerType, 0);
  if (v9)
  {
    v10 = v9;
    v11 = mlir::detail::InterfaceMap::lookup<mlir::ShapedType>(*v9 + 8);
    v9 = v10;
  }

  else
  {
    v11 = 0;
  }

  LODWORD(v27[0]) = 0;
  v6 = 1;
  v28[0] = mlir::DenseElementsAttr::getFromRawBuffer(v9, v11, v27, 4, 4, 1, 1);
  v23 = mlir::OpBuilder::create<mlir::mps::ConstantOp,mlir::DenseElementsAttr &>((a4 + 8), v7, v28);
  v22 = mlir::OpBuilder::create<mlir::mps::GetCoordOp,mlir::mps::RankOp &,mlir::mps::ConstantOp &>((a4 + 8), *(v26 + 3), &v24, &v23);
  v12 = *(v26 + 3);
  LODWORD(v28[0]) = 0;
  LODWORD(v27[0]) = 0;
  LODWORD(v21) = 3;
  Coord = mlir::OpBuilder::create<mlir::mps::CropOp,mlir::mps::GetCoordOp &,int,int,int>((a4 + 8), v12, &v22, v28, v27, &v21);
  v14 = *(v26 + 3);
  LODWORD(v28[0]) = 0;
  LODWORD(v27[0]) = -2;
  LODWORD(v21) = 2;
  v15 = mlir::OpBuilder::create<mlir::mps::SliceOp,mlir::mps::GetCoordOp &,int,int,int>((a4 + 8), v14, &v22, v28, v27, &v21);
  v16 = *(v26 + 3);
  v27[0] = Coord - 16;
  v27[1] = v15 - 16;
  mlir::ValueRange::ValueRange(v28, v27, 2uLL);
  v20 = 0;
  v21 = mlir::OpBuilder::create<mlir::mps::ConcatOp,mlir::ValueRange,mlir::mps::ConstantOp &,BOOL>((a4 + 8), v16, v28, &v23, &v20);
  v17 = *(v26 + 3);
  LOBYTE(v28[0]) = 0;
  v18 = mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::Value &,mlir::mps::ConcatOp &,BOOL>((a4 + 8), v17, &v25, &v21, v28);
  mlir::ConversionPatternRewriter::replaceOp(a4, a2, v18);
  return v6;
}

uint64_t mlir::OpBuilder::create<mlir::mps::RankOp,mlir::Value &>(mlir::OpBuilder *a1, uint64_t a2, uint64_t *a3)
{
  v15[38] = *MEMORY[0x1E69E9840];
  v12 = a2;
  Context = mlir::Attribute::getContext(&v12);
  v7 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::RankOp,void>::id, Context);
  if ((v8 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::RankOp,mlir::Value &>(v15, v14, v13);
  }

  mlir::OperationState::OperationState(v15, a2, v7);
  mlir::mps::RankOp::build(a1, v15, *a3);
  v9 = mlir::OpBuilder::create(a1, v15);
  if (*(*(v9 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::RankOp,void>::id)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  mlir::OperationState::~OperationState(v15);
  return v10;
}

uint64_t mlir::OpBuilder::create<mlir::mps::GetCoordOp,mlir::mps::RankOp &,mlir::mps::ConstantOp &>(uint64_t **a1, uint64_t a2, void *a3, void *a4)
{
  v17[38] = *MEMORY[0x1E69E9840];
  v14 = a2;
  Context = mlir::Attribute::getContext(&v14);
  v9 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::GetCoordOp,void>::id, Context);
  if ((v10 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::GetCoordOp,mlir::mps::RankOp &,mlir::mps::ConstantOp &>(v17, v16, v15);
  }

  mlir::OperationState::OperationState(v17, a2, v9);
  mlir::mps::GetCoordOp::build(a1, v17, *a3 - 16, *a4 - 16);
  v11 = mlir::OpBuilder::create(a1, v17);
  if (*(*(v11 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::GetCoordOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::CropOp,mlir::mps::GetCoordOp &,int,int,int>(uint64_t **a1, uint64_t a2, void *a3, int *a4, int *a5, int *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::CropOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::CropOp,mlir::mps::GetCoordOp &,int,int,int>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::CropOp::build(a1, v21, *a3 - 16, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::CropOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::SliceOp,mlir::mps::GetCoordOp &,int,int,int>(uint64_t **a1, uint64_t a2, void *a3, int *a4, int *a5, int *a6)
{
  v21[38] = *MEMORY[0x1E69E9840];
  v18 = a2;
  Context = mlir::Attribute::getContext(&v18);
  v13 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id, Context);
  if ((v14 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::SliceOp,mlir::mps::GetCoordOp &,int,int,int>(v21, v20, v19);
  }

  mlir::OperationState::OperationState(v21, a2, v13);
  mlir::mps::SliceOp::build(a1, v21, *a3 - 16, *a4, *a5, *a6);
  v15 = mlir::OpBuilder::create(a1, v21);
  if (*(*(v15 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::SliceOp,void>::id)
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

uint64_t mlir::OpBuilder::create<mlir::mps::ConcatOp,mlir::ValueRange,mlir::mps::ConstantOp &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ConcatOp,llvm::SmallVector<mlir::Value,4u> &,mlir::Value,BOOL>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::ConcatOp::build(a1, v19, *a3, *(a3 + 8), *a4 - 16, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ConcatOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

uint64_t mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::Value &,mlir::mps::ConcatOp &,BOOL>(mlir::UnitAttr **a1, uint64_t a2, uint64_t *a3, void *a4, unsigned __int8 *a5)
{
  v19[38] = *MEMORY[0x1E69E9840];
  v16 = a2;
  Context = mlir::Attribute::getContext(&v16);
  v11 = mlir::RegisteredOperationName::lookup(&mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id, Context);
  if ((v12 & 1) == 0)
  {
    mlir::OpBuilder::create<mlir::mps::ReductionSumOp,mlir::Value &,mlir::mps::ConcatOp &,BOOL>(v19, v18, v17);
  }

  mlir::OperationState::OperationState(v19, a2, v11);
  mlir::mps::ReductionSumOp::build(a1, v19, *a3, *a4 - 16, *a5);
  v13 = mlir::OpBuilder::create(a1, v19);
  if (*(*(v13 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::ReductionSumOp,void>::id)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  mlir::OperationState::~OperationState(v19);
  return v14;
}

void mlir::mps::anonymous namespace::LowerBiasAddGradNHWC::~LowerBiasAddGradNHWC(mlir::mps::_anonymous_namespace_::LowerBiasAddGradNHWC *this)
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