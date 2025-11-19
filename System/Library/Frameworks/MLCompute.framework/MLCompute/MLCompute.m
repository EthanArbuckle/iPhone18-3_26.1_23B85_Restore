id ANE_BuildNeuronParams(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEBF8] mutableCopy];
  v3 = [MEMORY[0x277CBEC10] mutableCopy];
  [v3 setObject:@"Neuron" forKeyedSubscript:kMLCANENetUnitType[0]];
  switch([v1 activationType])
  {
    case 1u:
      [v1 a];
      if (fabsf(v4) < 0.000001)
      {
        v5 = @"ReLU";
        goto LABEL_19;
      }

      [v3 setObject:@"LeakyReLU" forKeyedSubscript:@"Type"];
      [v1 a];
      v57 = v49;
      v56 = 0;
      if (ANE_ConvertFp32ToInt16(&v57, &v56))
      {
        v50 = [MEMORY[0x277CCABB0] numberWithShort:v56];
        [v3 setObject:v50 forKeyedSubscript:@"ReluSlope"];

        v56 = 0;
        v12 = [MEMORY[0x277CCABB0] numberWithShort:0];
        v13 = @"ReluOffset";
        goto LABEL_46;
      }

      v15 = +[MLCLog framework];
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_68;
      }

      goto LABEL_64;
    case 2u:
      v33 = ANE_BuildLinearParams(v1);
      if (v33)
      {
        goto LABEL_33;
      }

      v15 = +[MLCLog framework];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        ANE_BuildNeuronParams_cold_10(v1);
      }

      goto LABEL_68;
    case 3u:
      v5 = @"SigmoidHighPrecision";
      goto LABEL_19;
    case 4u:
      [v1 a];
      v23 = v22;
      [v1 b];
      LODWORD(v25) = v24;
      LODWORD(v26) = v23;
      v15 = [MLCActivationDescriptor descriptorWithType:2 a:v26 b:v25];
      v27 = ANE_BuildLinearParams(v15);
      if (v27)
      {
        v28 = v27;
        [v2 addObjectsFromArray:v27];
        [v3 setObject:@"ClampedReLU" forKeyedSubscript:@"Type"];
        v57 = 1065353216;
        v56 = 0;
        ANE_ConvertFp32ToInt16(&v57, &v56);
        v29 = [MEMORY[0x277CCABB0] numberWithShort:0];
        [v3 setObject:v29 forKeyedSubscript:@"ReluMin"];

        v30 = [MEMORY[0x277CCABB0] numberWithShort:v56];
        [v3 setObject:v30 forKeyedSubscript:@"ReluMax"];

        v31 = v2;
        v32 = v3;
        goto LABEL_37;
      }

      v54 = +[MLCLog framework];
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        ANE_BuildNeuronParams_cold_10(v1);
      }

      goto LABEL_67;
    case 5u:
      [v1 a];
      if (fabsf(v6 + -1.0) < 0.000001)
      {
        [v1 b];
        if (fabsf(v7 + -1.0) < 0.000001)
        {
          v5 = @"Tanh";
LABEL_19:
          [v3 setObject:v5 forKeyedSubscript:@"Type"];
          goto LABEL_47;
        }
      }

      [v1 b];
      v57 = v42;
      v56 = 0;
      if (!ANE_ConvertFp32ToInt16(&v57, &v56))
      {
        v15 = +[MLCLog framework];
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }

        goto LABEL_64;
      }

      v15 = [MEMORY[0x277CBEC10] mutableCopy];
      [v15 setObject:@"GOC" forKeyedSubscript:kMLCANENetUnitType[0]];
      v43 = [MEMORY[0x277CCABB0] numberWithShort:v56];
      [v15 setObject:v43 forKeyedSubscript:@"ScaleScalar"];

      [v2 addObject:v15];
      [v3 setObject:@"Tanh" forKeyedSubscript:@"Type"];
      [v2 addObject:v3];
      [v1 a];
      v57 = v44;
      v56 = 0;
      if (ANE_ConvertFp32ToInt16(&v57, &v56))
      {
        v28 = [MEMORY[0x277CBEC10] mutableCopy];
        [v28 setObject:@"GOC" forKeyedSubscript:kMLCANENetUnitType[0]];
        v45 = [MEMORY[0x277CCABB0] numberWithShort:v56];
        [v28 setObject:v45 forKeyedSubscript:@"ScaleScalar"];

        v31 = v2;
        v32 = v28;
LABEL_37:
        [v31 addObject:v32];

LABEL_38:
        goto LABEL_48;
      }

      v54 = +[MLCLog framework];
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        ANE_BuildNeuronParams_cold_1(&v57);
      }

LABEL_67:

      goto LABEL_68;
    case 6u:
      [v3 setObject:@"ElementWise" forKeyedSubscript:kMLCANENetUnitType[0]];
      v5 = @"Abs";
      goto LABEL_19;
    case 9u:
      [v3 setObject:@"ELU" forKeyedSubscript:@"Type"];
      [v1 a];
      v57 = v34;
      v56 = 0;
      if (ANE_ConvertFp32ToInt16(&v57, &v56))
      {
        v12 = [MEMORY[0x277CCABB0] numberWithShort:v56];
        v13 = @"EluAlpha";
        goto LABEL_46;
      }

      v15 = +[MLCLog framework];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }

      goto LABEL_68;
    case 0xAu:
      if (![MLCPlatformInfo isAneSubTypeVersionGreaterThanOrEqualTo:13])
      {
        [v1 a];
        if (v52 <= -0.000001 || ([v1 b], v53 < 0.000001))
        {
          v15 = +[MLCLog framework];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            ANE_BuildNeuronParams_cold_3();
          }

LABEL_68:

          v51 = 0;
          goto LABEL_69;
        }
      }

      [v1 a];
      if (fabsf(v35) >= 0.000001 || ([v1 b], v36 < 0.000001) || (objc_msgSend(v1, "b"), v38 = v37, objc_msgSend(v1, "a"), v38 <= v39))
      {
        [v3 setObject:@"ReLUN" forKeyedSubscript:@"Type"];
        [v1 b];
        v57 = v46;
        v56 = 0;
        if (ANE_ConvertFp32ToInt16(&v57, &v56))
        {
          v47 = [MEMORY[0x277CCABB0] numberWithShort:v56];
          [v3 setObject:v47 forKeyedSubscript:@"ReluMax"];

          [v1 a];
          v57 = v48;
          v56 = 0;
          if (ANE_ConvertFp32ToInt16(&v57, &v56))
          {
            v12 = [MEMORY[0x277CCABB0] numberWithShort:v56];
            v13 = @"ReluSlope";
            goto LABEL_46;
          }

          v15 = +[MLCLog framework];
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_68;
          }
        }

        else
        {
          v15 = +[MLCLog framework];
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_68;
          }
        }
      }

      else
      {
        [v3 setObject:@"ClampedReLU" forKeyedSubscript:@"Type"];
        [v3 setObject:&unk_284BA5708 forKeyedSubscript:@"ReluMin"];
        [v1 b];
        v57 = v40;
        v56 = 0;
        if (ANE_ConvertFp32ToInt16(&v57, &v56))
        {
          v11 = MEMORY[0x277CCABB0];
          goto LABEL_11;
        }

        v15 = +[MLCLog framework];
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }
      }

      ANE_BuildNeuronParams_cold_4(&v57);
      goto LABEL_68;
    case 0xBu:
      [v3 setObject:@"SigmoidHighPrecision" forKeyedSubscript:@"Type"];
      [v2 addObject:v3];
      v33 = ANE_BuildArithmeticParams(24);
LABEL_33:
      v15 = v33;
      [v2 addObjectsFromArray:v33];
      goto LABEL_38;
    case 0x10u:
      [v3 setObject:@"Tanh" forKeyedSubscript:@"Type"];
      [v2 addObject:v3];
      v41 = [MEMORY[0x277CBEC10] mutableCopy];
      [v41 setObject:@"ElementWise" forKeyedSubscript:kMLCANENetUnitType[0]];
      [v41 setObject:@"Sub" forKeyedSubscript:@"Type"];
      [v2 addObject:v41];

      goto LABEL_48;
    case 0x12u:
      v5 = @"GELU";
      goto LABEL_19;
    case 0x13u:
      v14 = MEMORY[0x277CBEC10];
      v15 = [MEMORY[0x277CBEC10] mutableCopy];
      [v15 setObject:@"GOC" forKeyedSubscript:kMLCANENetUnitType[0]];
      v57 = 1077936128;
      v56 = 0;
      ANE_ConvertFp32ToInt16(&v57, &v56);
      v16 = [MEMORY[0x277CCABB0] numberWithShort:v56];
      [v15 setObject:v16 forKeyedSubscript:@"BiasScalar"];

      [v2 addObject:v15];
      v17 = [v14 mutableCopy];
      [v17 setObject:@"Neuron" forKeyedSubscript:kMLCANENetUnitType[0]];
      [v17 setObject:@"ClampedReLU" forKeyedSubscript:@"Type"];
      [v17 setObject:&unk_284BA5708 forKeyedSubscript:@"ReluMin"];
      v57 = 1086324736;
      ANE_ConvertFp32ToInt16(&v57, &v56);
      v18 = [MEMORY[0x277CCABB0] numberWithShort:v56];
      [v17 setObject:v18 forKeyedSubscript:@"ReluMax"];

      [v2 addObject:v17];
      v19 = [v14 mutableCopy];
      [v19 setObject:@"GOC" forKeyedSubscript:kMLCANENetUnitType[0]];
      v57 = 1042983595;
      ANE_ConvertFp32ToInt16(&v57, &v56);
      v20 = [MEMORY[0x277CCABB0] numberWithShort:v56];
      [v19 setObject:v20 forKeyedSubscript:@"ScaleScalar"];

      [v2 addObject:v19];
      v21 = [v14 mutableCopy];
      [v21 setObject:@"ElementWise" forKeyedSubscript:kMLCANENetUnitType[0]];
      [v21 setObject:@"Mult" forKeyedSubscript:@"Type"];
      [v2 addObject:v21];

      goto LABEL_38;
    case 0x14u:
      [v3 setObject:@"ClampedReLU" forKeyedSubscript:@"Type"];
      [v1 a];
      v57 = v8;
      v56 = 0;
      if (!ANE_ConvertFp32ToInt16(&v57, &v56))
      {
        v15 = +[MLCLog framework];
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }

LABEL_64:
        ANE_BuildNeuronParams_cold_1(&v57);
        goto LABEL_68;
      }

      v9 = [MEMORY[0x277CCABB0] numberWithShort:v56];
      [v3 setObject:v9 forKeyedSubscript:@"ReluMin"];

      [v1 b];
      v57 = v10;
      v56 = 0;
      if (!ANE_ConvertFp32ToInt16(&v57, &v56))
      {
        v15 = +[MLCLog framework];
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_68;
        }

        goto LABEL_64;
      }

      v11 = MEMORY[0x277CCABB0];
LABEL_11:
      v12 = [v11 numberWithShort:v56];
      v13 = @"ReluMax";
LABEL_46:
      [v3 setObject:v12 forKeyedSubscript:v13];

LABEL_47:
      [v2 addObject:v3];
LABEL_48:
      v51 = [v2 copy];
LABEL_69:

      return v51;
    default:
      v15 = +[MLCLog framework];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        ANE_BuildNeuronParams_cold_13(v1);
      }

      goto LABEL_68;
  }
}

id ANE_BuildLinearParams(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEBF8] mutableCopy];
  [v1 a];
  if (fabsf(v3) < 0.0001)
  {
    v4 = +[MLCLog framework];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      ANE_BuildLinearParams_cold_3(v1, v4);
    }

    [v1 a];
    v24 = v5;
    v23 = 0;
    if (ANE_ConvertFp32ToInt16(&v24, &v23))
    {
      v6 = MEMORY[0x277CBEC10];
      v7 = [MEMORY[0x277CBEC10] mutableCopy];
      [v7 setObject:@"GOC" forKeyedSubscript:kMLCANENetUnitType[0]];
      v8 = [MEMORY[0x277CCABB0] numberWithShort:v23];
      [v7 setObject:v8 forKeyedSubscript:@"ScaleScalar"];

      [v2 addObject:v7];
      v9 = [v6 mutableCopy];
      [v9 setObject:@"Pooling" forKeyedSubscript:kMLCANENetUnitType[0]];
      [v9 setObject:@"Max" forKeyedSubscript:@"Type"];
      [v9 setObject:@"Zero" forKeyedSubscript:@"PaddingMode"];
      [v9 setObject:&unk_284BA5720 forKeyedSubscript:@"KernelWidth"];
      [v9 setObject:&unk_284BA5720 forKeyedSubscript:@"KernelHeight"];
      [v9 setObject:&unk_284BA5F48 forKeyedSubscript:@"Step"];
      [v2 addObject:v9];
      [v1 b];
      v24 = v10;
      v22 = 0;
      if (ANE_ConvertFp32ToInt16(&v24, &v22))
      {
        v11 = [MEMORY[0x277CBEC10] mutableCopy];
        [v11 setObject:@"GOC" forKeyedSubscript:kMLCANENetUnitType[0]];
        v12 = [MEMORY[0x277CCABB0] numberWithShort:v22];
        [v11 setObject:v12 forKeyedSubscript:@"BiasScalar"];

        [v2 addObject:v11];
LABEL_10:

        v19 = [v2 copy];
        goto LABEL_21;
      }

      v20 = +[MLCLog framework];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        ANE_BuildLinearParams_cold_1(&v24);
      }

      goto LABEL_20;
    }

    v7 = +[MLCLog framework];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

LABEL_12:
    ANE_BuildLinearParams_cold_1(&v24);
    goto LABEL_20;
  }

  [v1 a];
  v24 = v13;
  v23 = 0;
  if (!ANE_ConvertFp32ToInt16(&v24, &v23))
  {
    v7 = +[MLCLog framework];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  [v1 b];
  v15 = v14;
  [v1 a];
  v24 = v15 / v16;
  v22 = 0;
  if (ANE_ConvertFp32ToInt16(&v24, &v22))
  {
    v7 = [MEMORY[0x277CBEC10] mutableCopy];
    [v7 setObject:@"GOC" forKeyedSubscript:kMLCANENetUnitType[0]];
    v17 = [MEMORY[0x277CCABB0] numberWithShort:v23];
    [v7 setObject:v17 forKeyedSubscript:@"ScaleScalar"];

    v18 = [MEMORY[0x277CCABB0] numberWithShort:v22];
    [v7 setObject:v18 forKeyedSubscript:@"BiasScalar"];

    [v2 addObject:v7];
    goto LABEL_10;
  }

  v7 = +[MLCLog framework];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    ANE_BuildLinearParams_cold_1(&v24);
  }

LABEL_20:

  v19 = 0;
LABEL_21:

  return v19;
}

id ANE_CreateNeuronLayer(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x277CBEBF8];
  v3 = [MEMORY[0x277CBEBF8] mutableCopy];
  v4 = ANE_BuildNeuronParams(v1);
  if (v4)
  {
    v5 = +[_MLCANENeuronParameters neuronUnitParametersWith:neuronType:](_MLCANENeuronParameters, "neuronUnitParametersWith:neuronType:", v4, [v1 activationType]);
    v6 = [MLCANEDeviceOps deviceOpsWithType:10 params:v5];
    if (v6)
    {
      [v3 addObject:v6];
    }

    v2 = v3;
  }

  return v2;
}

id ANE_CreateUnitsWithNeuronLayer(void *a1, void *a2, int a3)
{
  v133[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = [MEMORY[0x277CBEBF8] mutableCopy];
  if (a3 <= 8)
  {
    if (a3 > 3)
    {
      switch(a3)
      {
        case 4:
          v9 = [v6 subarrayWithRange:{0, objc_msgSend(v6, "count") - 1}];
          v83 = ANE_CreateUnitsOfLinear(v5, v9);
          if (!v83)
          {
            v39 = +[MLCLog framework];
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              ANE_CreateUnitsWithNeuronLayer_cold_6();
            }

            goto LABEL_30;
          }

          v39 = v83;
          v84 = [v83 count];
          v85 = [v6 objectAtIndexedSubscript:v84];
          v86 = [_MLCANEPlistBuilder createUnitWithLayer:v5 unitParams:v85];

          v87 = [v5 label];
          v88 = [v87 stringByAppendingFormat:@"_%lu", v84];
          [v86 setObject:v88 forKeyedSubscript:@"Name"];

          v89 = [v39 objectAtIndexedSubscript:[v39 count]- 1];
          v90 = [v89 objectForKeyedSubscript:@"Name"];
          v129 = v90;
          v91 = [MEMORY[0x277CBEA60] arrayWithObjects:&v129 count:1];
          [v86 setObject:v91 forKeyedSubscript:@"Bottom"];

          [v7 addObjectsFromArray:v39];
          [v7 addObject:v86];

          break;
        case 5:
          if ([v6 count] != 3)
          {
            if ([v6 count] != 1)
            {
              v9 = +[MLCLog framework];
              if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                ANE_CreateUnitsWithNeuronLayer_cold_10();
              }

              goto LABEL_31;
            }

            v111 = [v6 objectAtIndexedSubscript:0];
            v9 = [_MLCANEPlistBuilder createUnitWithLayer:v5 unitParams:v111];

            v112 = [v5 sourceTensors];
            v113 = ANE_ValidateNeuronUnit(v112, v9, 1);

            if (v113)
            {
              goto LABEL_19;
            }

            v39 = +[MLCLog framework];
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
LABEL_29:
              ANE_CreateUnitsWithNeuronLayer_cold_1();
            }

LABEL_30:

LABEL_31:
LABEL_32:
            v33 = 0;
            goto LABEL_33;
          }

          v93 = [v6 objectAtIndexedSubscript:0];
          v9 = [_MLCANEPlistBuilder createUnitWithLayer:v5 unitParams:v93];

          v94 = [v5 label];
          v95 = [v94 stringByAppendingString:@"_0"];
          [v9 setObject:v95 forKeyedSubscript:@"Name"];

          v96 = [v5 sourceTensors];
          LOBYTE(v95) = ANE_ValidateGOCUnit(v96, v9, 1);

          if ((v95 & 1) == 0)
          {
            v39 = +[MLCLog framework];
            if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_30;
            }

            goto LABEL_29;
          }

          v121 = v7;
          v97 = [v6 objectAtIndexedSubscript:1];
          v39 = [_MLCANEPlistBuilder createUnitWithLayer:v5 unitParams:v97];

          v98 = [v5 label];
          v99 = [v98 stringByAppendingString:@"_1"];
          [v39 setObject:v99 forKeyedSubscript:@"Name"];

          v100 = [v9 objectForKeyedSubscript:@"Name"];
          v133[0] = v100;
          v101 = [MEMORY[0x277CBEA60] arrayWithObjects:v133 count:1];
          [v39 setObject:v101 forKeyedSubscript:@"Bottom"];

          v102 = [v5 sourceTensors];
          LOBYTE(v101) = ANE_ValidateNeuronUnit(v102, v39, 1);

          if ((v101 & 1) == 0)
          {
            v116 = +[MLCLog framework];
            if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
            {
              ANE_CreateUnitsWithNeuronLayer_cold_1();
            }

            goto LABEL_88;
          }

          v103 = [v6 objectAtIndexedSubscript:2];
          v86 = [_MLCANEPlistBuilder createUnitWithLayer:v5 unitParams:v103];

          v104 = [v5 label];
          v105 = [v104 stringByAppendingString:@"_2"];
          [v86 setObject:v105 forKeyedSubscript:@"Name"];

          v106 = [v39 objectForKeyedSubscript:@"Name"];
          v132 = v106;
          v107 = [MEMORY[0x277CBEA60] arrayWithObjects:&v132 count:1];
          [v86 setObject:v107 forKeyedSubscript:@"Bottom"];

          v108 = [v5 sourceTensors];
          LOBYTE(v107) = ANE_ValidateGOCUnit(v108, v86, 1);

          if ((v107 & 1) == 0)
          {
            v117 = +[MLCLog framework];
            if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
            {
              ANE_CreateUnitsWithNeuronLayer_cold_1();
            }

            goto LABEL_30;
          }

          [v7 addObject:v9];
          [v7 addObject:v39];
          [v7 addObject:v86];
          break;
        case 6:
          v34 = [v6 objectAtIndexedSubscript:0];
          v9 = [_MLCANEPlistBuilder createUnitWithLayer:v5 unitParams:v34];

          v35 = [v5 sourceTensors];
          v36 = [v35 objectAtIndexedSubscript:0];
          v127 = v36;
          v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v127 count:1];
          v38 = ANE_ValidateElementWiseUnit(v37, v9, 1);

          if (v38)
          {
            goto LABEL_19;
          }

          v39 = +[MLCLog framework];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            ANE_CreateUnitsWithNeuronLayer_cold_1();
          }

          goto LABEL_30;
        default:
          goto LABEL_55;
      }

      goto LABEL_20;
    }

    switch(a3)
    {
      case 1:
        goto LABEL_18;
      case 2:
        v92 = ANE_CreateUnitsOfLinear(v5, v6);
        if (!v92)
        {
          v9 = +[MLCLog framework];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            ANE_CreateUnitsWithNeuronLayer_cold_6();
          }

          goto LABEL_31;
        }

        v9 = v92;
        [v7 addObjectsFromArray:v92];
LABEL_20:

LABEL_21:
        v33 = v7;
        goto LABEL_33;
      case 3:
LABEL_18:
        v31 = [v6 objectAtIndexedSubscript:0];
        v9 = [_MLCANEPlistBuilder createUnitWithLayer:v5 unitParams:v31];

        v32 = [v5 sourceTensors];
        LOBYTE(v31) = ANE_ValidateNeuronUnit(v32, v9, 1);

        if (v31)
        {
LABEL_19:
          [v7 addObject:v9];
          goto LABEL_20;
        }

        v39 = +[MLCLog framework];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        goto LABEL_30;
    }

LABEL_55:
    v109 = +[MLCLog framework];
    if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
    {
      ANE_CreateUnitsWithNeuronLayer_cold_16();
    }

    goto LABEL_32;
  }

  if (a3 > 17)
  {
    switch(a3)
    {
      case 18:
        goto LABEL_18;
      case 19:
        if ([v6 count] == 4)
        {
          v55 = [v6 objectAtIndexedSubscript:0];
          v56 = [_MLCANEPlistBuilder createUnitWithLayer:v5 unitParams:v55];

          v57 = [v5 label];
          v58 = [v57 stringByAppendingFormat:@"_%lu", objc_msgSend(v7, "count")];
          [v56 setObject:v58 forKeyedSubscript:@"Name"];

          [v7 addObject:v56];
          v59 = [v6 objectAtIndexedSubscript:1];
          v60 = [_MLCANEPlistBuilder createUnitWithLayer:v5 unitParams:v59];

          v61 = [v5 label];
          v62 = [v61 stringByAppendingFormat:@"_%lu", objc_msgSend(v7, "count")];
          [v60 setObject:v62 forKeyedSubscript:@"Name"];

          v63 = [v56 objectForKeyedSubscript:@"Name"];
          v126 = v63;
          v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v126 count:1];
          [v60 setObject:v64 forKeyedSubscript:@"Bottom"];

          v65 = [v5 sourceTensors];
          LOBYTE(v64) = ANE_ValidateNeuronUnit(v65, v60, 1);

          if (v64)
          {
            [v7 addObject:v60];
            v66 = [v6 objectAtIndexedSubscript:2];
            v67 = [_MLCANEPlistBuilder createUnitWithLayer:v5 unitParams:v66];

            v68 = [v5 label];
            v69 = [v7 count];
            v123 = v7;
            v70 = v5;
            v71 = [v68 stringByAppendingFormat:@"_%lu", v69];
            [v67 setObject:v71 forKeyedSubscript:@"Name"];

            v72 = [v60 objectForKeyedSubscript:@"Name"];
            v125 = v72;
            [MEMORY[0x277CBEA60] arrayWithObjects:&v125 count:1];
            v73 = v120 = v56;
            [v67 setObject:v73 forKeyedSubscript:@"Bottom"];

            [v123 addObject:v67];
            v74 = [v6 objectAtIndexedSubscript:3];
            v75 = [_MLCANEPlistBuilder createUnitWithLayer:v5 unitParams:v74];

            v76 = [v5 label];
            v77 = [v76 stringByAppendingFormat:@"_%lu", objc_msgSend(v123, "count")];
            [v75 setObject:v77 forKeyedSubscript:@"Name"];

            v78 = [v5 sourceTensors];
            v79 = [v78 objectAtIndexedSubscript:0];
            v80 = [v79 label];
            v124[0] = v80;
            v81 = [v67 objectForKeyedSubscript:@"Name"];
            v124[1] = v81;
            v82 = [MEMORY[0x277CBEA60] arrayWithObjects:v124 count:2];
            [v75 setObject:v82 forKeyedSubscript:@"Bottom"];

            v5 = v70;
            v7 = v123;
            [v123 addObject:v75];

            goto LABEL_21;
          }

          v114 = +[MLCLog framework];
          if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
          {
            ANE_CreateUnitsWithNeuronLayer_cold_1();
          }

          goto LABEL_32;
        }

        v9 = +[MLCLog framework];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          ANE_CreateUnitsWithNeuronLayer_cold_2();
        }

        goto LABEL_31;
      case 20:
        goto LABEL_18;
    }

    goto LABEL_55;
  }

  if ((a3 - 9) < 2)
  {
    goto LABEL_18;
  }

  if (a3 == 11)
  {
    v42 = [v6 objectAtIndexedSubscript:0];
    v43 = [_MLCANEPlistBuilder createUnitWithLayer:v5 unitParams:v42];

    v44 = [v5 label];
    v45 = [v44 stringByAppendingFormat:@"_%lu", objc_msgSend(v7, "count")];
    [v43 setObject:v45 forKeyedSubscript:@"Name"];

    v46 = [v5 sourceTensors];
    LOBYTE(v45) = ANE_ValidateNeuronUnit(v46, v43, 1);

    if (v45)
    {
      v122 = v43;
      [v7 addObject:v43];
      v119 = v6;
      v118 = [v6 subarrayWithRange:{1, objc_msgSend(v6, "count") - 1}];
      v47 = ANE_CreateUnitsWithArithmeticOpeartion(24, v5, v118);
      if ([v47 count])
      {
        v48 = 0;
        do
        {
          v49 = [v47 objectAtIndexedSubscript:v48];
          v50 = [v5 label];
          v51 = [v50 stringByAppendingFormat:@"_%lu", objc_msgSend(v7, "count"), v118];
          [v49 setObject:v51 forKeyedSubscript:@"Name"];

          v52 = [v7 objectAtIndexedSubscript:{objc_msgSend(v7, "count") - 1}];
          v53 = [v52 objectForKeyedSubscript:@"Name"];

          v128 = v53;
          v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v128 count:1];
          [v49 setObject:v54 forKeyedSubscript:@"Bottom"];

          [v7 addObject:v49];
          ++v48;
        }

        while (v48 < [v47 count]);
      }

      goto LABEL_41;
    }

    v110 = +[MLCLog framework];
    if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
    {
      ANE_CreateUnitsWithNeuronLayer_cold_1();
    }

    goto LABEL_32;
  }

  if (a3 != 16)
  {
    goto LABEL_55;
  }

  if ([v6 count] != 2)
  {
    v9 = +[MLCLog framework];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      ANE_CreateUnitsWithNeuronLayer_cold_7();
    }

    goto LABEL_31;
  }

  v121 = v7;
  v8 = [v6 objectAtIndexedSubscript:0];
  v9 = [_MLCANEPlistBuilder createUnitWithLayer:v5 unitParams:v8];

  v10 = [v5 label];
  v11 = [v10 stringByAppendingString:@"_0"];
  [v9 setObject:v11 forKeyedSubscript:@"Name"];

  v12 = [v5 sourceTensors];
  LOBYTE(v11) = ANE_ValidateNeuronUnit(v12, v9, 1);

  if ((v11 & 1) == 0)
  {
    v39 = +[MLCLog framework];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      ANE_CreateUnitsWithNeuronLayer_cold_1();
    }

LABEL_88:

    v33 = 0;
    v7 = v121;
    goto LABEL_33;
  }

  v119 = v6;
  v13 = [v6 objectAtIndexedSubscript:1];
  v14 = [_MLCANEPlistBuilder createUnitWithLayer:v5 unitParams:v13];

  v15 = [v5 label];
  v16 = [v15 stringByAppendingString:@"_1"];
  [v14 setObject:v16 forKeyedSubscript:@"Name"];

  v17 = [v5 sourceTensors];
  v18 = [v17 objectAtIndexedSubscript:0];
  v19 = [v18 label];
  v131[0] = v19;
  v20 = [v9 objectForKeyedSubscript:@"Name"];
  v131[1] = v20;
  [MEMORY[0x277CBEA60] arrayWithObjects:v131 count:2];
  v22 = v21 = v5;
  [v14 setObject:v22 forKeyedSubscript:@"Bottom"];

  v23 = [v21 sourceTensors];
  v24 = [v23 objectAtIndexedSubscript:0];
  v130[0] = v24;
  v25 = v21;
  v26 = v21;
  v27 = v14;
  v28 = [v26 sourceTensors];
  v29 = [v28 objectAtIndexedSubscript:0];
  v130[1] = v29;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:2];
  LOBYTE(v14) = ANE_ValidateElementWiseUnit(v30, v14, 1);

  if (v14)
  {
    [v7 addObject:v9];
    [v7 addObject:v27];

    v5 = v25;
LABEL_41:
    v6 = v119;
    goto LABEL_21;
  }

  v115 = +[MLCLog framework];
  v5 = v25;
  if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
  {
    ANE_CreateUnitsWithNeuronLayer_cold_1();
  }

  v33 = 0;
  v6 = v119;
LABEL_33:

  v40 = *MEMORY[0x277D85DE8];

  return v33;
}

id ANE_CreateUnitsOfLinear(void *a1, void *a2)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  if ([v4 count] == 3)
  {
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = [_MLCANEPlistBuilder createUnitWithLayer:v3 unitParams:v6];

    v8 = [v3 label];
    v9 = [v8 stringByAppendingString:@"_0"];
    [v7 setObject:v9 forKeyedSubscript:@"Name"];

    v10 = [v3 sourceTensors];
    LOBYTE(v9) = ANE_ValidateGOCUnit(v10, v7, 1);

    if (v9)
    {
      v11 = [v4 objectAtIndexedSubscript:1];
      v12 = [_MLCANEPlistBuilder createUnitWithLayer:v3 unitParams:v11];

      v13 = [v3 label];
      v14 = [v13 stringByAppendingString:@"_1"];
      [v12 setObject:v14 forKeyedSubscript:@"Name"];

      v15 = [v7 objectForKeyedSubscript:@"Name"];
      v33[0] = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
      [v12 setObject:v16 forKeyedSubscript:@"Bottom"];

      v17 = [v3 sourceTensors];
      LOBYTE(v16) = ANE_ValidatePoolingUnit(v17, v12, 1);

      if (v16)
      {
        v18 = [v4 objectAtIndexedSubscript:2];
        v19 = [_MLCANEPlistBuilder createUnitWithLayer:v3 unitParams:v18];

        v20 = [v3 label];
        v21 = [v20 stringByAppendingString:@"_2"];
        [v19 setObject:v21 forKeyedSubscript:@"Name"];

        v22 = [v12 objectForKeyedSubscript:@"Name"];
        v32 = v22;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
        [v19 setObject:v23 forKeyedSubscript:@"Bottom"];

        v24 = [v3 sourceTensors];
        LOBYTE(v23) = ANE_ValidateGOCUnit(v24, v19, 1);

        if (v23)
        {
          [v5 addObject:v7];
          [v5 addObject:v12];
          [v5 addObject:v19];

LABEL_9:
          v28 = [v5 copy];
          goto LABEL_24;
        }

        v29 = +[MLCLog framework];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          ANE_CreateUnitsOfLinear_cold_2();
        }
      }

      else
      {
        v19 = +[MLCLog framework];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          ANE_CreateUnitsOfLinear_cold_4();
        }
      }

      goto LABEL_22;
    }

    v12 = +[MLCLog framework];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }
  }

  else
  {
    if ([v4 count] != 1)
    {
      v7 = +[MLCLog framework];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        ANE_CreateUnitsOfLinear_cold_1();
      }

      goto LABEL_23;
    }

    v25 = [v4 objectAtIndexedSubscript:0];
    v7 = [_MLCANEPlistBuilder createUnitWithLayer:v3 unitParams:v25];

    v26 = [v3 sourceTensors];
    v27 = ANE_ValidateGOCUnit(v26, v7, 1);

    if (v27)
    {
      [v5 addObject:v7];
      goto LABEL_9;
    }

    v12 = +[MLCLog framework];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      ANE_CreateUnitsOfLinear_cold_2();
    }
  }

LABEL_22:

LABEL_23:
  v28 = 0;
LABEL_24:

  v30 = *MEMORY[0x277D85DE8];

  return v28;
}

id ANE_CompileNeuronLayer(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = [a3 parentLayers];
  v6 = [v5 objectAtIndexedSubscript:0];

  v7 = [v4 objectAtIndexedSubscript:0];

  v8 = [v7 params];
  v9 = [v8 neuronParams];

  v10 = [v7 params];
  v11 = [v10 type];

  v12 = ANE_CreateUnitsWithNeuronLayer(v6, v9, v11);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  return v13;
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id GPU_CreateLossLayer(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  MPSLossType = getMPSLossType([v4 lossType]);
  if (MPSLossType == 10)
  {
    v6 = +[MLCLog framework];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      GPU_CreateLossLayer_cold_2(v4);
    }

LABEL_13:

    v11 = MEMORY[0x277CBEBF8];
    goto LABEL_34;
  }

  v7 = MPSLossType;
  v8 = v4;
  v9 = [v4 reductionType];
  [v8 lossType];
  if (v9 >= 3)
  {
    v6 = +[MLCLog framework];
    v4 = v8;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      GPU_CreateLossLayer_cold_1(v8);
    }

    goto LABEL_13;
  }

  v10 = [MEMORY[0x277CD7690] cnnLossDescriptorWithType:v7 reductionType:v9];
  [v10 setReduceAcrossBatch:{objc_msgSend(v8, "reductionType") != 0}];
  v4 = v8;
  if ((v7 & 0xE) == 2)
  {
    [v8 labelSmoothing];
    [v10 setLabelSmoothing:?];
  }

  switch(v7)
  {
    case 8:
      [v8 epsilon];
      [v10 setEpsilon:?];
      break;
    case 6:
      [v8 delta];
      [v10 setDelta:?];
      break;
    case 2:
      [v10 setNumberOfClasses:{objc_msgSend(v8, "classCount")}];
      break;
  }

  v12 = [v3 deviceList];
  v13 = [v12 count];

  v30 = [MEMORY[0x277CBEBF8] mutableCopy];
  if (v13)
  {
    v14 = 0;
    v15 = 0x277CD7000uLL;
    v28 = v13;
    v29 = v3;
    do
    {
      v16 = [v3 deviceList];
      v17 = [v16 objectAtIndexedSubscript:v14];

      [v4 weight];
      [v10 setWeight:?];
      v18 = [objc_alloc(*(v15 + 1808)) initWithDevice:v17 lossDescriptor:v10];
      v19 = [objc_alloc(MEMORY[0x277CD7748]) initWithDevice:v17 lossDescriptor:v10];
      v32 = [objc_alloc(MEMORY[0x277CD7738]) initWithDevice:v17];
      v31 = [objc_alloc(MEMORY[0x277CD7680]) initWithDevice:v17 lossDescriptor:v10];
      if (([v4 lossType] == 2 || objc_msgSend(v4, "lossType") == 4) && !objc_msgSend(v4, "reductionType"))
      {
        v20 = [objc_alloc(MEMORY[0x277CD7778]) initWithDevice:v17];
        if (!v18)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v20 = 0;
        if (!v18)
        {
          goto LABEL_32;
        }
      }

      if (v19)
      {
        if ([v4 reductionType] != 2 || v13 == 1)
        {
          v26 = [MLCGPUDeviceOps deviceOpsWithForwardKernel:v18 gradientKernel:v19];
          if (v26)
          {
            goto LABEL_30;
          }
        }

        else
        {
          LODWORD(v21) = 0.5;
          v22 = [MEMORY[0x277CD7758] cnnNeuronDescriptorWithType:2 a:v21 b:0.0];
          v23 = v10;
          v24 = v4;
          v25 = [objc_alloc(MEMORY[0x277CD76A8]) initWithDevice:v17 neuronDescriptor:v22];
          v26 = [MLCGPUDeviceOps deviceOpsWithForwardKernel:v18 gradientKernel:v19 secondaryGradientKernel:v25];

          v4 = v24;
          v10 = v23;
          v13 = v28;

          v3 = v29;
          if (!v26)
          {
            goto LABEL_31;
          }

LABEL_30:
          [v26 setLossInitialGradientKernel:v32];
          [v26 setCombinedForwardAndGradientLossKernel:v31];
          [v26 setReduceLossKernel:v20];
          [v26 setSourceOfForwardNeededForGradient:1];
          [v26 setResultOfForwardNeededForGradient:0];
          [v30 addObject:v26];
        }

LABEL_31:

        v15 = 0x277CD7000;
      }

LABEL_32:

      ++v14;
    }

    while (v13 != v14);
  }

  v11 = [v30 copy];

LABEL_34:

  return v11;
}

uint64_t getMPSLossType(uint64_t result)
{
  if (result >= 9)
  {
    return 10;
  }

  else
  {
    return result;
  }
}

id GPU_CreateYOLOLossLayer(void *a1, void *a2)
{
  v119 = a1;
  v3 = a2;
  v4 = [v3 spatialPositionLossDescriptor];
  MPSLossType = getMPSLossType([v4 lossType]);

  v6 = [v3 spatialSizeLossDescriptor];
  v7 = getMPSLossType([v6 lossType]);

  v8 = [v3 confidenceLossDescriptor];
  v9 = getMPSLossType([v8 lossType]);

  v11 = [v3 classesLossDescriptor];
  v10 = getMPSLossType([v11 lossType]);

  LODWORD(v11) = [v3 reductionType];
  v12 = [v3 spatialPositionLossDescriptor];
  [v12 lossType];
  if (v11 >= 3)
  {
    v11 = 4;
  }

  else
  {
    v11 = v11;
  }

  v13 = MEMORY[0x277CD76E8];
  v14 = [v3 anchorBoxes];
  v15 = [v13 cnnLossDescriptorWithXYLossType:MPSLossType WHLossType:v7 confidenceLossType:v9 classesLossType:v10 reductionType:v11 anchorBoxes:v14 numberOfAnchorBoxes:{objc_msgSend(v3, "anchorBoxCount")}];

  [v15 setReduceAcrossBatch:1];
  v16 = [v3 spatialPositionLossDescriptor];
  [v16 weight];
  v18 = v17;
  v19 = [v15 XYLossDescriptor];
  LODWORD(v20) = v18;
  [v19 setWeight:v20];

  v21 = [v3 spatialSizeLossDescriptor];
  [v21 weight];
  v23 = v22;
  v24 = [v15 WHLossDescriptor];
  LODWORD(v25) = v23;
  [v24 setWeight:v25];

  v26 = [v3 confidenceLossDescriptor];
  [v26 weight];
  v28 = v27;
  v29 = [v15 confidenceLossDescriptor];
  LODWORD(v30) = v28;
  [v29 setWeight:v30];

  v31 = [v3 classesLossDescriptor];
  [v31 weight];
  v33 = v32;
  v34 = [v15 classesLossDescriptor];
  LODWORD(v35) = v33;
  [v34 setWeight:v35];

  if ((MPSLossType & 0xE) == 2)
  {
    v36 = [v3 spatialPositionLossDescriptor];
    [v36 labelSmoothing];
    v38 = v37;
    v39 = [v15 XYLossDescriptor];
    LODWORD(v40) = v38;
    [v39 setLabelSmoothing:v40];
  }

  if ((v7 & 0xE) == 2)
  {
    v41 = [v3 spatialSizeLossDescriptor];
    [v41 labelSmoothing];
    v43 = v42;
    v44 = [v15 WHLossDescriptor];
    LODWORD(v45) = v43;
    [v44 setLabelSmoothing:v45];
  }

  if ((v9 & 0xE) == 2)
  {
    v46 = [v3 confidenceLossDescriptor];
    [v46 labelSmoothing];
    v48 = v47;
    v49 = [v15 confidenceLossDescriptor];
    LODWORD(v50) = v48;
    [v49 setLabelSmoothing:v50];
  }

  if ((v10 & 0xE) == 2)
  {
    v51 = [v3 classesLossDescriptor];
    [v51 labelSmoothing];
    v53 = v52;
    v54 = [v15 classesLossDescriptor];
    LODWORD(v55) = v53;
    [v54 setLabelSmoothing:v55];
  }

  if (MPSLossType == 2)
  {
    v56 = [v3 spatialPositionLossDescriptor];
    v57 = [v56 classCount];
    v58 = [v15 XYLossDescriptor];
    [v58 setNumberOfClasses:v57];
  }

  if (v7 == 2)
  {
    v59 = [v3 spatialSizeLossDescriptor];
    v60 = [v59 classCount];
    v61 = [v15 WHLossDescriptor];
    [v61 setNumberOfClasses:v60];
  }

  if (v9 == 2)
  {
    v62 = [v3 confidenceLossDescriptor];
    v63 = [v62 classCount];
    v64 = [v15 confidenceLossDescriptor];
    [v64 setNumberOfClasses:v63];
  }

  if (v10 == 2)
  {
    v65 = [v3 classesLossDescriptor];
    v66 = [v65 classCount];
    v67 = [v15 classesLossDescriptor];
    [v67 setNumberOfClasses:v66];
  }

  if (MPSLossType == 8)
  {
    v68 = [v3 spatialPositionLossDescriptor];
    [v68 epsilon];
    v70 = v69;
    v71 = [v15 XYLossDescriptor];
    LODWORD(v72) = v70;
    [v71 setEpsilon:v72];
  }

  if (v7 == 8)
  {
    v73 = [v3 spatialSizeLossDescriptor];
    [v73 epsilon];
    v75 = v74;
    v76 = [v15 WHLossDescriptor];
    LODWORD(v77) = v75;
    [v76 setEpsilon:v77];
  }

  if (v9 == 8)
  {
    v78 = [v3 confidenceLossDescriptor];
    [v78 epsilon];
    v80 = v79;
    v81 = [v15 confidenceLossDescriptor];
    LODWORD(v82) = v80;
    [v81 setEpsilon:v82];
  }

  if (v10 == 8)
  {
    v83 = [v3 classesLossDescriptor];
    [v83 epsilon];
    v85 = v84;
    v86 = [v15 classesLossDescriptor];
    LODWORD(v87) = v85;
    [v86 setEpsilon:v87];
  }

  if (MPSLossType == 6)
  {
    v88 = [v3 spatialPositionLossDescriptor];
    [v88 delta];
    v90 = v89;
    v91 = [v15 XYLossDescriptor];
    LODWORD(v92) = v90;
    [v91 setDelta:v92];
  }

  if (v7 == 6)
  {
    v93 = [v3 spatialSizeLossDescriptor];
    [v93 delta];
    v95 = v94;
    v96 = [v15 WHLossDescriptor];
    LODWORD(v97) = v95;
    [v96 setDelta:v97];
  }

  if (v9 == 6)
  {
    v98 = [v3 confidenceLossDescriptor];
    [v98 delta];
    v100 = v99;
    v101 = [v15 confidenceLossDescriptor];
    LODWORD(v102) = v100;
    [v101 setDelta:v102];
  }

  if (v10 == 6)
  {
    v103 = [v3 classesLossDescriptor];
    [v103 delta];
    v105 = v104;
    v106 = [v15 classesLossDescriptor];
    LODWORD(v107) = v105;
    [v106 setDelta:v107];
  }

  [v15 setRescore:{objc_msgSend(v3, "shouldRescore")}];
  [v3 scaleSpatialPositionLoss];
  [v15 setScaleXY:?];
  [v3 scaleSpatialSizeLoss];
  [v15 setScaleWH:?];
  [v3 scaleNoObjectConfidenceLoss];
  [v15 setScaleNoObject:?];
  [v3 scaleObjectConfidenceLoss];
  [v15 setScaleObject:?];
  [v3 scaleClassLoss];
  [v15 setScaleClass:?];
  [v3 minimumIOUForObjectPresence];
  [v15 setMinIOUForObjectPresence:?];
  [v3 maximumIOUForObjectAbsence];
  [v15 setMaxIOUForObjectAbsence:?];
  v108 = [v119 deviceList];
  v109 = [v108 count];

  v110 = [MEMORY[0x277CBEBF8] mutableCopy];
  if (v109)
  {
    for (i = 0; i != v109; ++i)
    {
      v112 = [v119 deviceList];
      v113 = [v112 objectAtIndexedSubscript:i];

      v114 = [objc_alloc(MEMORY[0x277CD76E0]) initWithDevice:v113 lossDescriptor:v15];
      if (v114)
      {
        v115 = [MLCGPUDeviceOps deviceOpsWithForwardKernel:v114 gradientKernel:v114];
        v116 = v115;
        if (v115)
        {
          [v115 setLossInitialGradientKernel:0];
          [v116 setCombinedForwardAndGradientLossKernel:v114];
          [v116 setSourceOfForwardNeededForGradient:1];
          [v116 setResultOfForwardNeededForGradient:0];
          [v110 addObject:v116];
        }
      }
    }
  }

  v117 = [v110 copy];

  return v117;
}

uint64_t CPU_BNNSDataTypeSizeInBytes(int a1)
{
  result = 4;
  if (a1 > 131103)
  {
    if (a1 <= 262159)
    {
      if (a1 == 131104)
      {
        return result;
      }

      if (a1 != 262152)
      {
        goto LABEL_17;
      }
    }

    else if (a1 != 1048584)
    {
      if (a1 == 262176)
      {
        return result;
      }

      v7 = 262160;
      goto LABEL_12;
    }

    return 1;
  }

  if (a1 > 131079)
  {
    if (a1 != 131080)
    {
      v7 = 131088;
LABEL_12:
      if (a1 == v7)
      {
        return 2;
      }

LABEL_17:
      v8 = [MLCLog framework:v2];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        CPU_BNNSDataTypeSizeInBytes_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      }

      return 0;
    }

    return 1;
  }

  if (a1 == 65552)
  {
    return 2;
  }

  if (a1 != 65568)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t CPU_BNNSDataType(int a1)
{
  v2 = a1 - 1;
  if (a1 - 1) < 9 && ((0x1EDu >> v2))
  {
    return dword_238D45B70[v2];
  }

  v4 = +[MLCLog framework];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    CPU_BNNSDataType_cold_1(a1, v4);
  }

  return 0;
}

uint64_t CPU_BuildBNNSNDArrayLastMajorDescriptor(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = MEMORY[0x277CBEBF8];
  v13 = [MEMORY[0x277CBEBF8] mutableCopy];
  v14 = [v12 mutableCopy];
  v15 = [v9 count];
  if (v15 > 2)
  {
    if (v15 == 3)
    {
      v62 = v11;
      v42 = [v9 objectAtIndexedSubscript:0];
      [v13 setObject:v42 atIndexedSubscript:0];

      v43 = [v9 objectAtIndexedSubscript:1];
      [v13 setObject:v43 atIndexedSubscript:1];

      v44 = [v9 objectAtIndexedSubscript:2];
      [v13 setObject:v44 atIndexedSubscript:2];

      if (v10)
      {
        v45 = [v10 objectAtIndexedSubscript:0];
        [v14 setObject:v45 atIndexedSubscript:0];

        v46 = [v10 objectAtIndexedSubscript:1];
        [v14 setObject:v46 atIndexedSubscript:1];

        v47 = [v10 objectAtIndexedSubscript:2];
        [v14 setObject:v47 atIndexedSubscript:2];
      }

      v31 = 229376;
    }

    else
    {
      if (v15 != 4)
      {
        goto LABEL_11;
      }

      v62 = v11;
      v23 = [v9 objectAtIndexedSubscript:0];
      [v13 setObject:v23 atIndexedSubscript:0];

      v24 = [v9 objectAtIndexedSubscript:1];
      [v13 setObject:v24 atIndexedSubscript:1];

      v25 = [v9 objectAtIndexedSubscript:2];
      [v13 setObject:v25 atIndexedSubscript:2];

      v26 = [v9 objectAtIndexedSubscript:3];
      [v13 setObject:v26 atIndexedSubscript:3];

      if (v10)
      {
        v27 = [v10 objectAtIndexedSubscript:0];
        [v14 setObject:v27 atIndexedSubscript:0];

        v28 = [v10 objectAtIndexedSubscript:1];
        [v14 setObject:v28 atIndexedSubscript:1];

        v29 = [v10 objectAtIndexedSubscript:2];
        [v14 setObject:v29 atIndexedSubscript:2];

        v30 = [v10 objectAtIndexedSubscript:3];
        [v14 setObject:v30 atIndexedSubscript:3];
      }

      v31 = 294912;
    }

    *(a1 + 4) = v31;
    goto LABEL_21;
  }

  if (v15 == 1)
  {
    v62 = v11;
    *(a1 + 4) = 98304;
    v41 = [v9 objectAtIndexedSubscript:0];
    [v13 setObject:v41 atIndexedSubscript:0];

    if (v10)
    {
      v19 = [v10 objectAtIndexedSubscript:0];
      v20 = v14;
      v21 = v19;
      v22 = 0;
      goto LABEL_16;
    }

LABEL_21:
    v48 = CPU_BNNSDataType(a5);
    *(a1 + 144) = v48;
    v49 = CPU_BNNSDataTypeSizeInBytes(v48);
    v50 = [v13 count];
    if (v50)
    {
      v51 = v50;
      v52 = (a1 + 8);
      v53 = -1;
      do
      {
        v54 = [v13 objectAtIndexedSubscript:{objc_msgSend(v13, "count") + v53}];
        *v52++ = [v54 unsignedIntegerValue];

        --v53;
      }

      while (v51 + v53 != -1);
      v55 = (a1 + 72);
      if (v10)
      {
        v56 = -1;
        do
        {
          v57 = [v14 objectAtIndexedSubscript:{objc_msgSend(v13, "count") + v56}];
          *v55++ = [v57 unsignedIntegerValue] / v49;

          --v56;
          --v51;
        }

        while (v51);
      }

      else
      {
        *v55 = 1;
        v58 = v51 - 1;
        if (v51 != 1)
        {
          v59 = (a1 + 80);
          v60 = 1;
          do
          {
            v60 *= *(v59 - 9);
            *v59++ = v60;
            --v58;
          }

          while (v58);
        }
      }
    }

    else if (!v10)
    {
      *(a1 + 72) = 1;
    }

    v11 = v62;
    if (v62)
    {
      *(a1 + 136) = [v62 bytes];
    }

    *(a1 + 164) = 1065353216;
    v40 = 1;
    goto LABEL_36;
  }

  if (v15 == 2)
  {
    v62 = v11;
    *(a1 + 4) = 163840;
    v16 = [v9 objectAtIndexedSubscript:0];
    [v13 setObject:v16 atIndexedSubscript:0];

    v17 = [v9 objectAtIndexedSubscript:1];
    [v13 setObject:v17 atIndexedSubscript:1];

    if (v10)
    {
      v18 = [v10 objectAtIndexedSubscript:0];
      [v14 setObject:v18 atIndexedSubscript:0];

      v19 = [v10 objectAtIndexedSubscript:1];
      v20 = v14;
      v21 = v19;
      v22 = 1;
LABEL_16:
      [v20 setObject:v21 atIndexedSubscript:v22];

      goto LABEL_21;
    }

    goto LABEL_21;
  }

LABEL_11:
  v32 = +[MLCLog framework];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    CPU_BuildBNNSNDArrayLastMajorDescriptor_cold_1(v32, v33, v34, v35, v36, v37, v38, v39);
  }

  v40 = 0;
LABEL_36:

  return v40;
}

uint64_t CPU_BuildBNNSNDArrayDescriptor(uint64_t a1, void *a2, void *a3, void *a4, int a5, int a6, int a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = MEMORY[0x277CBEBF8];
  v17 = [MEMORY[0x277CBEBF8] mutableCopy];
  v18 = [v16 mutableCopy];
  v19 = [v13 count];
  if (v19 > 2)
  {
    if (v19 != 3)
    {
      if (v19 == 4)
      {
        v23 = [v13 objectAtIndexedSubscript:0];
        [v17 setObject:v23 atIndexedSubscript:0];

        v24 = [v13 objectAtIndexedSubscript:1];
        [v17 setObject:v24 atIndexedSubscript:1];

        v25 = [v13 objectAtIndexedSubscript:2];
        [v17 setObject:v25 atIndexedSubscript:2];

        v26 = [v13 objectAtIndexedSubscript:3];
        [v17 setObject:v26 atIndexedSubscript:3];

        if (v14)
        {
          v27 = [v14 objectAtIndexedSubscript:0];
          [v18 setObject:v27 atIndexedSubscript:0];

          v28 = [v14 objectAtIndexedSubscript:1];
          [v18 setObject:v28 atIndexedSubscript:1];

          v29 = [v14 objectAtIndexedSubscript:2];
          [v18 setObject:v29 atIndexedSubscript:2];

          v30 = [v14 objectAtIndexedSubscript:3];
          [v18 setObject:v30 atIndexedSubscript:3];
        }

        *(a1 + 4) = 196608;
        goto LABEL_28;
      }

      goto LABEL_12;
    }

    v75 = a6;
    v45 = [v13 objectAtIndexedSubscript:0];
    [v17 setObject:v45 atIndexedSubscript:0];

    v46 = [v13 objectAtIndexedSubscript:1];
    [v17 setObject:v46 atIndexedSubscript:1];

    if (a7)
    {
      v47 = [v13 objectAtIndexedSubscript:2];
      [v17 setObject:v47 atIndexedSubscript:2];

      if (v14)
      {
        v48 = 0;
        v49 = 1;
        [v14 objectAtIndexedSubscript:{0, 2}];
        v56 = LABEL_26:;
        [v18 setObject:v56 atIndexedSubscript:v48];

        v57 = [v14 objectAtIndexedSubscript:1];
        [v18 setObject:v57 atIndexedSubscript:v49];

        v58 = [v14 objectAtIndexedSubscript:2];
        [v18 setObject:v58 atIndexedSubscript:v74];
      }
    }

    else
    {
      v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
      [v17 setObject:v53 atIndexedSubscript:2];

      v54 = [v13 objectAtIndexedSubscript:2];
      [v17 setObject:v54 atIndexedSubscript:3];

      if (v14)
      {
        v55 = [v14 objectAtIndexedSubscript:0];
        [v18 setObject:v55 atIndexedSubscript:0];

        v49 = 2;
        v48 = 1;
        [v14 objectAtIndexedSubscript:{1, 3}];
        goto LABEL_26;
      }
    }

    *(a1 + 4) = 196608;
    LOBYTE(a6) = v75;
    goto LABEL_28;
  }

  if (v19 == 1)
  {
    *(a1 + 4) = 0x10000;
    v40 = [v13 objectAtIndexedSubscript:0];
    [v17 setObject:v40 atIndexedSubscript:0];

    if (v14)
    {
      v21 = v14;
      v22 = 0;
      goto LABEL_17;
    }

LABEL_28:
    v76 = v13;
    v59 = CPU_BNNSDataType(a5);
    *(a1 + 144) = v59;
    v60 = CPU_BNNSDataTypeSizeInBytes(v59);
    if ([v17 count] == 4 && (a6 & 1) != 0)
    {
      v61 = v15;
      v62 = 3;
    }

    else
    {
      v61 = v15;
      v62 = [v17 count];
      if (!v62)
      {
        v66 = 1;
        if (v14)
        {
          goto LABEL_35;
        }

        goto LABEL_40;
      }
    }

    v63 = (a1 + 8);
    v64 = -1;
    do
    {
      v65 = [v17 objectAtIndexedSubscript:{objc_msgSend(v17, "count") + v64}];
      *v63++ = [v65 unsignedIntegerValue];

      --v64;
    }

    while (v62 + v64 != -1);
    v66 = 0;
    if (v14)
    {
LABEL_35:
      if ((v66 & 1) == 0)
      {
        v67 = (a1 + 72);
        v68 = -1;
        do
        {
          v69 = [v18 objectAtIndexedSubscript:{objc_msgSend(v17, "count") + v68}];
          *v67++ = [v69 unsignedIntegerValue] / v60;

          --v68;
          --v62;
        }

        while (v62);
      }

LABEL_43:
      v15 = v61;
      if (v61)
      {
        *(a1 + 136) = [v61 bytes];
      }

      *(a1 + 164) = 1065353216;
      v39 = 1;
      v13 = v76;
      goto LABEL_46;
    }

LABEL_40:
    *(a1 + 72) = 1;
    if (v62 >= 2)
    {
      v70 = v62 - 1;
      v71 = (a1 + 80);
      v72 = 1;
      do
      {
        v72 *= *(v71 - 9);
        *v71++ = v72;
        --v70;
      }

      while (v70);
    }

    goto LABEL_43;
  }

  if (v19 == 2)
  {
    if (a6)
    {
      *(a1 + 4) = 0x10000;
      v20 = [v13 objectAtIndexedSubscript:1];
      [v17 setObject:v20 atIndexedSubscript:0];

      if (v14)
      {
        v21 = v14;
        v22 = 1;
LABEL_17:
        v41 = [v21 objectAtIndexedSubscript:v22];
        v42 = v18;
        v43 = v41;
        v44 = 0;
LABEL_23:
        [v42 setObject:v43 atIndexedSubscript:v44];

        goto LABEL_28;
      }
    }

    else
    {
      *(a1 + 4) = 0x20000;
      v50 = [v13 objectAtIndexedSubscript:0];
      [v17 setObject:v50 atIndexedSubscript:0];

      v51 = [v13 objectAtIndexedSubscript:1];
      [v17 setObject:v51 atIndexedSubscript:1];

      if (v14)
      {
        v52 = [v14 objectAtIndexedSubscript:0];
        [v18 setObject:v52 atIndexedSubscript:0];

        v41 = [v14 objectAtIndexedSubscript:1];
        v42 = v18;
        v43 = v41;
        v44 = 1;
        goto LABEL_23;
      }
    }

    goto LABEL_28;
  }

LABEL_12:
  v31 = +[MLCLog framework];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    CPU_BuildBNNSNDArrayDescriptor_cold_1(v31, v32, v33, v34, v35, v36, v37, v38);
  }

  v39 = 0;
LABEL_46:

  return v39;
}

uint64_t CPU_BuildPermuteBNNSNDArrayDescriptor(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = MEMORY[0x277CBEBF8];
  v13 = [MEMORY[0x277CBEBF8] mutableCopy];
  v14 = [v12 mutableCopy];
  v15 = [v9 count];
  switch(v15)
  {
    case 4:
      v27 = [v9 objectAtIndexedSubscript:0];
      [v13 setObject:v27 atIndexedSubscript:0];

      v28 = [v9 objectAtIndexedSubscript:1];
      [v13 setObject:v28 atIndexedSubscript:1];

      v29 = [v9 objectAtIndexedSubscript:2];
      [v13 setObject:v29 atIndexedSubscript:2];

      v30 = [v9 objectAtIndexedSubscript:3];
      [v13 setObject:v30 atIndexedSubscript:3];

      if (v10)
      {
        v31 = [v10 objectAtIndexedSubscript:0];
        [v14 setObject:v31 atIndexedSubscript:0];

        v32 = [v10 objectAtIndexedSubscript:1];
        [v14 setObject:v32 atIndexedSubscript:1];

        v33 = [v10 objectAtIndexedSubscript:2];
        [v14 setObject:v33 atIndexedSubscript:2];

        v34 = [v10 objectAtIndexedSubscript:3];
        [v14 setObject:v34 atIndexedSubscript:3];
      }

      v58 = v11;
      v26 = 294912;
      goto LABEL_12;
    case 3:
      v20 = [v9 objectAtIndexedSubscript:0];
      [v13 setObject:v20 atIndexedSubscript:0];

      v21 = [v9 objectAtIndexedSubscript:1];
      [v13 setObject:v21 atIndexedSubscript:1];

      v22 = [v9 objectAtIndexedSubscript:2];
      [v13 setObject:v22 atIndexedSubscript:2];

      if (v10)
      {
        v23 = [v10 objectAtIndexedSubscript:0];
        [v14 setObject:v23 atIndexedSubscript:0];

        v24 = [v10 objectAtIndexedSubscript:1];
        [v14 setObject:v24 atIndexedSubscript:1];

        v25 = [v10 objectAtIndexedSubscript:2];
        [v14 setObject:v25 atIndexedSubscript:2];
      }

      v58 = v11;
      v26 = 229376;
LABEL_12:
      *(a1 + 4) = v26;
LABEL_13:
      v35 = CPU_BNNSDataType(a5);
      *(a1 + 144) = v35;
      v36 = CPU_BNNSDataTypeSizeInBytes(v35);
      v37 = [v13 count];
      if (v37)
      {
        v38 = v37;
        v39 = (a1 + 8);
        v40 = -1;
        do
        {
          v41 = [v13 objectAtIndexedSubscript:{objc_msgSend(v13, "count") + v40}];
          *v39++ = [v41 unsignedIntegerValue];

          --v40;
        }

        while (v38 + v40 != -1);
        v42 = (a1 + 72);
        if (v10)
        {
          v43 = -1;
          do
          {
            v44 = [v14 objectAtIndexedSubscript:{objc_msgSend(v13, "count") + v43}];
            *v42++ = [v44 unsignedIntegerValue] / v36;

            --v43;
            --v38;
          }

          while (v38);
        }

        else
        {
          *v42 = 1;
          v54 = v38 - 1;
          if (v38 != 1)
          {
            v55 = (a1 + 80);
            v56 = 1;
            do
            {
              v56 *= *(v55 - 9);
              *v55++ = v56;
              --v54;
            }

            while (v54);
          }
        }
      }

      else if (!v10)
      {
        *(a1 + 72) = 1;
      }

      v11 = v58;
      if (v58)
      {
        *(a1 + 136) = [v58 bytes];
      }

      *(a1 + 164) = 1065353216;
      v53 = 1;
      goto LABEL_31;
    case 2:
      v58 = v11;
      *(a1 + 4) = 163840;
      v16 = [v9 objectAtIndexedSubscript:0];
      [v13 setObject:v16 atIndexedSubscript:0];

      v17 = [v9 objectAtIndexedSubscript:1];
      [v13 setObject:v17 atIndexedSubscript:1];

      if (v10)
      {
        v18 = [v10 objectAtIndexedSubscript:0];
        [v14 setObject:v18 atIndexedSubscript:0];

        v19 = [v10 objectAtIndexedSubscript:1];
        [v14 setObject:v19 atIndexedSubscript:1];
      }

      goto LABEL_13;
  }

  v45 = +[MLCLog framework];
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    CPU_BuildPermuteBNNSNDArrayDescriptor_cold_1(v45, v46, v47, v48, v49, v50, v51, v52);
  }

  v53 = 0;
LABEL_31:

  return v53;
}

BOOL CPU_BuildBNNSNDArrayDescriptorRowMajor(uint64_t a1, void *a2, void *a3, void *a4, int a5, uint64_t a6, void *a7)
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = [a2 mutableCopy];
  v17 = [v13 mutableCopy];
  if (v15)
  {
    [v16 removeObjectAtIndex:{objc_msgSend(v15, "unsignedIntegerValue")}];
    [v17 removeObjectAtIndex:{objc_msgSend(v15, "unsignedIntegerValue")}];
  }

  v18 = [v16 count];
  v19 = v18 - a6;
  if (v18 != a6)
  {
    do
    {
      [v16 removeObjectAtIndex:0];
      [v17 removeObjectAtIndex:0];
      --v19;
    }

    while (v19);
  }

  v20 = [v16 count];
  v21 = v20 - 1;
  if ((v20 - 1) >= 8)
  {
    v30 = +[MLCLog framework];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      CPU_BuildBNNSNDArrayDescriptorRowMajor_cold_1(v30, v31, v32, v33, v34, v35, v36, v37);
    }
  }

  else
  {
    v22 = v20;
    v41 = v14;
    v42 = v13;
    *(a1 + 4) = dword_238D45B94[v21];
    v23 = CPU_BNNSDataType(a5);
    *(a1 + 144) = v23;
    v24 = CPU_BNNSDataTypeSizeInBytes(v23);
    v25 = 0;
    do
    {
      v26 = [v16 objectAtIndexedSubscript:{v25, v41}];
      *(a1 + 8 + 8 * v25) = [v26 unsignedIntegerValue];

      ++v25;
    }

    while (v22 != v25);
    v27 = (a1 + 72);
    if (v17)
    {
      v28 = v21;
      v14 = v41;
      do
      {
        v29 = [v17 objectAtIndexedSubscript:v28];
        *v27++ = [v29 unsignedIntegerValue] / v24;

        --v28;
      }

      while (v28 != -1);
    }

    else
    {
      *v27 = 1;
      v14 = v41;
      if (v22 >= 2)
      {
        v38 = 1;
        v39 = 80;
        do
        {
          v38 *= *(a1 + 8 * v22);
          *(a1 + v39) = v38;
          --v22;
          v39 += 8;
        }

        while (v22 != 1);
      }
    }

    if (v14)
    {
      *(a1 + 136) = [v14 bytes];
    }

    *(a1 + 164) = 1065353216;
    v13 = v42;
  }

  return v21 < 8;
}

BOOL CPU_BuildBNNSNDArrayDescriptorColMajor(uint64_t a1, void *a2, void *a3, void *a4, int a5, uint64_t a6)
{
  v11 = a3;
  v12 = a4;
  v13 = [a2 mutableCopy];
  v14 = [v11 mutableCopy];
  for (i = [v13 count] - a6; i; --i)
  {
    [v13 removeObjectAtIndex:0];
    [v14 removeObjectAtIndex:0];
  }

  v16 = [v13 count];
  v17 = v16 - 1;
  if ((v16 - 1) >= 8)
  {
    v25 = +[MLCLog framework];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      CPU_BuildBNNSNDArrayDescriptorColMajor_cold_1(v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  else
  {
    v18 = v16;
    *(a1 + 4) = dword_238D45BB4[v17];
    v19 = CPU_BNNSDataType(a5);
    v20 = 0;
    *(a1 + 144) = v19;
    do
    {
      v21 = [v13 objectAtIndexedSubscript:v20];
      *(a1 + 8 + 8 * v20) = [v21 unsignedIntegerValue];

      ++v20;
    }

    while (v18 != v20);
    *(a1 + 72) = 1;
    if (v18 >= 2)
    {
      v22 = (a1 + 80);
      v23 = 1;
      v24 = v17;
      do
      {
        v23 *= *(v22 - 9);
        *v22++ = v23;
        --v24;
      }

      while (v24);
    }

    if (v12)
    {
      *(a1 + 136) = [v12 bytes];
    }

    *(a1 + 164) = 1065353216;
  }

  return v17 < 8;
}

unint64_t CPU_SetBatchStride(void *a1)
{
  v1 = a1;
  v2 = [v1 descriptor];
  v3 = [v2 stride];
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 unsignedIntegerValue];

  v6 = [v1 descriptor];
  v7 = [v6 shape];
  v8 = [v7 count];

  if (v8 == 1)
  {
    v9 = [v1 descriptor];
    v10 = [v9 shape];
    v11 = [v10 objectAtIndexedSubscript:0];
    v5 *= [v11 unsignedIntegerValue];
  }

  v12 = [v1 descriptor];
  v13 = [v12 dataType];

  v14 = v5 >> 2;
  if (v13 != 1)
  {
    v14 = v5;
  }

  if (v13 == 3)
  {
    v15 = v5 >> 1;
  }

  else
  {
    v15 = v14;
  }

  return v15;
}

void convertDataLayout(void *a1, void *a2, void *a3, int a4, int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = v11;
  if (!v10 || !v11)
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      convertDataLayout_cold_4();
    }

    goto LABEL_11;
  }

  v13 = [v10 length];
  if (v13 != [v12 length])
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      convertDataLayout_cold_1();
    }

    goto LABEL_11;
  }

  v14 = [v9 tensorAllocationSizeInBytes];
  if (v14 > [v10 length])
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      convertDataLayout_cold_3();
    }

LABEL_11:

    goto LABEL_12;
  }

  v16 = [v9 shape];
  v17 = [v16 objectAtIndexedSubscript:3];
  v18 = [v17 unsignedIntegerValue];

  v19 = [v9 shape];
  v20 = [v19 objectAtIndexedSubscript:2];
  v21 = [v20 unsignedIntegerValue];

  v22 = [v9 shape];
  v23 = [v22 objectAtIndexedSubscript:1];
  v24 = [v23 unsignedIntegerValue];

  v55 = v9;
  v25 = [v9 shape];
  v26 = [v25 objectAtIndexedSubscript:0];
  v27 = [v26 unsignedIntegerValue];

  if (a4 || a5 != 1)
  {
    if (a4 != 1 || a5)
    {
      v15 = +[MLCLog framework];
      v9 = v55;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        convertDataLayout_cold_2();
      }

      goto LABEL_11;
    }

    v41 = [v10 bytes];
    v42 = [v12 bytes];
    v9 = v55;
    if (v27)
    {
      v43 = 0;
      v44 = 4 * v21 * v18 * v24;
      do
      {
        if (v21)
        {
          v45 = 0;
          v46 = v41;
          v47 = v42;
          do
          {
            if (v18)
            {
              v48 = 0;
              v49 = v46;
              v50 = v47;
              do
              {
                v51 = v49;
                v52 = v50;
                for (i = v24; i; --i)
                {
                  v54 = *v51++;
                  *v52 = v54;
                  v52 += v21 * v18;
                }

                ++v48;
                ++v50;
                v49 += v24;
              }

              while (v48 != v18);
            }

            ++v45;
            v47 += 4 * v18;
            v46 += 4 * v24 * v18;
          }

          while (v45 != v21);
        }

        ++v43;
        v42 += v44;
        v41 += v44;
      }

      while (v43 != v27);
    }
  }

  else
  {
    v28 = [v10 bytes];
    v29 = [v12 bytes];
    v9 = v55;
    if (v27)
    {
      v30 = 0;
      v31 = 4 * v21 * v18 * v24;
      do
      {
        if (v21)
        {
          v32 = 0;
          v33 = v29;
          v34 = v28;
          do
          {
            if (v18)
            {
              v35 = 0;
              v36 = v33;
              v37 = v34;
              do
              {
                v38 = v36;
                v39 = v37;
                for (j = v24; j; --j)
                {
                  *v38++ = *v39;
                  v39 += v21 * v18;
                }

                ++v35;
                ++v37;
                v36 += v24;
              }

              while (v35 != v18);
            }

            ++v32;
            v34 += 4 * v18;
            v33 += 4 * v24 * v18;
          }

          while (v32 != v21);
        }

        ++v30;
        v28 += v31;
        v29 += v31;
      }

      while (v30 != v27);
    }
  }

LABEL_12:
}

void convertNCHWtoTNC(void *a1, unint64_t a2, uint64_t a3, _DWORD *a4)
{
  v5 = a1;
  v6 = [v5 descriptor];
  v7 = [v6 shape];
  v8 = [v7 objectAtIndexedSubscript:1];
  v31 = [v8 unsignedIntegerValue];

  v9 = [v5 descriptor];
  v10 = [v9 shape];
  v11 = [v10 objectAtIndexedSubscript:3];
  v12 = [v11 unsignedIntegerValue];

  v13 = [v5 descriptor];
  v14 = [v13 shape];
  v15 = [v14 objectAtIndexedSubscript:2];
  v16 = [v15 unsignedIntegerValue];

  if (v16 == 1)
  {
    v28 = v5;
    v17 = [v5 descriptor];
    v18 = [v17 batchSizePerSequenceStep];

    if (a2)
    {
      v19 = 0;
      do
      {
        if (v31)
        {
          v20 = 0;
          v21 = a3;
          v33 = a4;
          do
          {
            v32 = v20;
            if (v12)
            {
              v22 = 0;
              v23 = v33;
              do
              {
                v24 = a2;
                if (v18)
                {
                  v25 = [v18 objectAtIndexedSubscript:v22];
                  v24 = [v25 unsignedIntegerValue];
                }

                v26 = 0;
                if (v19 < v24)
                {
                  v26 = *(v21 + 4 * v22);
                }

                *v23 = v26;
                ++v22;
                v23 += v31 * a2;
              }

              while (v12 != v22);
            }

            v20 = v32 + 1;
            ++v33;
            v21 += 4 * v12;
          }

          while (v32 + 1 != v31);
        }

        ++v19;
        a4 += v31;
        a3 += 4 * v12 * v31;
      }

      while (v19 != a2);
    }

    v5 = v28;
  }

  else
  {
    v27 = +[MLCLog framework];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      convertNCHWtoTNC_cold_1(v5);
    }
  }
}

void convertNSEtoTNC(void *a1, unint64_t a2, int *a3, _DWORD *a4)
{
  v22 = a1;
  v5 = [v22 descriptor];
  v6 = [v5 shape];
  v7 = [v6 objectAtIndexedSubscript:1];
  v27 = [v7 unsignedIntegerValue];

  v8 = [v22 descriptor];
  v9 = [v8 shape];
  v10 = [v9 objectAtIndexedSubscript:2];
  v25 = [v10 unsignedIntegerValue];

  v11 = [v22 descriptor];
  v12 = [v11 batchSizePerSequenceStep];

  if (a2)
  {
    v13 = 0;
    v26 = 4 * v25;
    do
    {
      if (v27)
      {
        v14 = 0;
        v16 = a3;
        v15 = a4;
        do
        {
          v28 = v15;
          v17 = v16;
          for (i = v25; i; --i)
          {
            v19 = a2;
            if (v12)
            {
              v20 = [v12 objectAtIndexedSubscript:v14];
              v19 = [v20 unsignedIntegerValue];
            }

            v21 = 0;
            if (v13 < v19)
            {
              v21 = *v17;
            }

            *v15++ = v21;
            ++v17;
          }

          ++v14;
          v16 = (v16 + v26);
          v15 = &v28[v25 * a2];
        }

        while (v14 != v27);
      }

      ++v13;
      a3 += v25 * v27;
      a4 = (a4 + v26);
    }

    while (v13 != a2);
  }
}

void convertTNCtoNC(void *a1, void *a2, uint64_t a3, _DWORD *a4)
{
  v32 = a1;
  v7 = a2;
  v8 = [v7 descriptor];
  v9 = [v8 shape];
  v10 = [v9 objectAtIndexedSubscript:0];
  v11 = [v10 unsignedIntegerValue];

  v12 = [v32 descriptor];
  v13 = [v12 shape];
  v14 = [v13 objectAtIndexedSubscript:3];
  v15 = [v14 unsignedIntegerValue];

  v16 = [v7 descriptor];
  v17 = [v16 shape];
  v18 = [v17 objectAtIndexedSubscript:1];
  v19 = [v18 unsignedIntegerValue];

  v20 = [v32 descriptor];
  v21 = [v20 batchSizePerSequenceStep];

  v22 = v15 - 1;
  if (v21)
  {
    v23 = [v21 objectAtIndexedSubscript:v15 - 1];
    v24 = [v23 unsignedIntegerValue];

    if (!v24)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v24 = v11;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (a3 + 4 * v11 * v19 * v22);
  v27 = 4 * v19;
  do
  {
    v28 = a4;
    v29 = v26;
    for (i = v19; i; --i)
    {
      v31 = *v29++;
      *v28++ = v31;
    }

    ++v25;
    v26 = (v26 + v27);
    a4 = (a4 + v27);
  }

  while (v25 != v24);
LABEL_9:
}

void convertTNCtoNCHW(void *a1, void *a2, uint64_t a3, _DWORD *a4, _DWORD *a5, int a6)
{
  v45 = a1;
  v11 = a2;
  v12 = [v45 descriptor];
  v13 = [v12 shape];
  v14 = [v13 objectAtIndexedSubscript:3];
  v15 = [v14 unsignedIntegerValue];

  v16 = [v11 descriptor];
  v17 = [v16 shape];
  v18 = [v17 objectAtIndexedSubscript:1];
  v19 = [v18 unsignedIntegerValue];

  v20 = [v45 descriptor];
  v21 = [v20 batchSizePerSequenceStep];

  v22 = v19 * a3;
  v44 = v11;
  if (a6)
  {
    if (v15)
    {
      v23 = v15;
      v24 = 0;
      v25 = 4 * v19 * v15;
      v26 = 4 * v15;
      v46 = v23;
      do
      {
        v27 = a3;
        if (v21)
        {
          [v21 objectAtIndexedSubscript:v24];
          v28 = v47 = a4;
          v27 = [v28 unsignedIntegerValue];

          v23 = v46;
          a4 = v47;
        }

        if (a3)
        {
          v29 = 0;
          v30 = a4;
          v31 = a5;
          do
          {
            if (v29 < v27 && v19)
            {
              v32 = v30;
              v33 = v31;
              v34 = v19;
              do
              {
                v35 = *v32++;
                *v33 = v35;
                v33 = (v33 + v26);
                --v34;
              }

              while (v34);
            }

            ++v29;
            v31 = (v31 + v25);
            v30 += v19;
          }

          while (v29 != a3);
        }

        ++v24;
        ++a5;
        a4 += v22;
      }

      while (v24 != v23);
    }
  }

  else
  {
    if (v21)
    {
      v36 = [v21 objectAtIndexedSubscript:v15 - 1];
      a3 = [v36 unsignedIntegerValue];
    }

    if (a3)
    {
      v37 = 0;
      v38 = &a4[v22 * (v15 - 1)];
      v39 = 4 * v19;
      do
      {
        v40 = a5;
        v41 = v38;
        for (i = v19; i; --i)
        {
          v43 = *v41++;
          *v40++ = v43;
        }

        ++v37;
        v38 = (v38 + v39);
        a5 = (a5 + v39);
      }

      while (v37 != a3);
    }
  }
}

void convertTNCtoNTC(void *a1, void *a2, unint64_t a3, int *a4, _DWORD *a5)
{
  v31 = a1;
  v9 = a2;
  v10 = [v31 descriptor];
  v11 = [v10 shape];
  v12 = [v11 objectAtIndexedSubscript:1];
  v13 = [v12 unsignedIntegerValue];

  v14 = [v9 descriptor];
  v15 = [v14 shape];
  v16 = [v15 objectAtIndexedSubscript:2];
  v17 = [v16 unsignedIntegerValue];

  v18 = [v31 descriptor];
  v19 = [v18 batchSizePerSequenceStep];

  v32 = v13;
  if (v13)
  {
    v20 = 0;
    v21 = 4 * v17;
    do
    {
      v22 = a3;
      if (v19)
      {
        v23 = [v19 objectAtIndexedSubscript:v20];
        v22 = [v23 unsignedIntegerValue];
      }

      if (a3)
      {
        v24 = 0;
        v25 = a5;
        v26 = a4;
        do
        {
          if (v24 < v22 && v17)
          {
            v27 = v25;
            v28 = v26;
            v29 = v17;
            do
            {
              v30 = *v28++;
              *v27++ = v30;
              --v29;
            }

            while (v29);
          }

          ++v24;
          v26 = (v26 + v21);
          v25 += v17 * v32;
        }

        while (v24 != a3);
      }

      ++v20;
      a4 += v17 * a3;
      a5 = (a5 + v21);
    }

    while (v20 != v32);
  }
}

void convertHiddenBNNStoMLC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v22 = a3;
  v9 = [v22 descriptor];
  v10 = [v9 shape];
  v11 = [v10 objectAtIndexedSubscript:0];
  v12 = [v11 unsignedIntegerValue];

  v13 = [v22 descriptor];
  v14 = [v13 shape];
  v15 = [v14 objectAtIndexedSubscript:2];
  v16 = [v15 unsignedIntegerValue];

  if (v12)
  {
    v17 = 0;
    v18 = v16 / a5;
    if (a5 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = a5;
    }

    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (v16 >= a5)
        {
          v21 = 0;
          do
          {
            *(a2 + 4 * v16 / a5 * a5 * v17 + 4 * i * v18 + 4 * v21) = *(a1 + 4 * v16 / a5 * a5 * (a4 - 1) * v12 + 4 * v17 * v18 + 4 * v16 / a5 * v12 * i + 4 * v21);
            ++v21;
          }

          while (v21 < v18);
        }
      }

      ++v17;
    }

    while (v17 != v12);
  }
}

uint64_t convertNCtoTNC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  if (result)
  {
    v6 = 0;
    v7 = 4 * a3 * a2;
    do
    {
      if (a4)
      {
        v8 = 0;
        v9 = a5;
        v10 = a6;
        do
        {
          if (a3)
          {
            v11 = 0;
            v12 = v10;
            do
            {
              if (a2)
              {
                if (v11)
                {
                  v13 = 0;
                }

                else
                {
                  v13 = result - 1;
                }

                if (((v6 == 0) & v11) != 0)
                {
                  v14 = v11 * a2;
                }

                else
                {
                  v14 = 0;
                }

                v15 = (v9 + 4 * v14);
                v16 = a2;
                v17 = v12;
                do
                {
                  v18 = 0;
                  if (v6 == v13)
                  {
                    v18 = *v15;
                  }

                  *v17++ = v18;
                  ++v15;
                  --v16;
                }

                while (v16);
              }

              ++v11;
              v12 += a2;
            }

            while (v11 != a3);
          }

          ++v8;
          v10 = (v10 + v7);
          v9 += v7;
        }

        while (v8 != a4);
      }

      ++v6;
      a6 += a3 * a2 * a4;
    }

    while (v6 != result);
  }

  return result;
}

id CPU_GetDeviceMemoryData(void *a1)
{
  v1 = a1;
  v2 = [v1 deviceMemory];
  v3 = [v1 deviceIndex];

  v4 = [v2 objectAtIndexedSubscript:v3];

  return v4;
}

uint64_t adjustBatchSizeForFC(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 descriptor];
  v5 = [v4 shape];
  v6 = [v5 count];

  if (v6 == 4)
  {
    v7 = [v3 descriptor];
    v8 = [v7 shape];
    v9 = [v8 objectAtIndexedSubscript:3];
    if ([v9 unsignedIntegerValue] == 1)
    {
      v10 = [v3 descriptor];
      v11 = [v10 shape];
      v12 = [v11 objectAtIndexedSubscript:2];
      v13 = [v12 unsignedIntegerValue];

      if (v13 == 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v14 = 3;
  }

  else
  {
    v14 = v6 - 1;
    if ((v6 - 1) < 2)
    {
      goto LABEL_11;
    }
  }

  v15 = 1;
  do
  {
    v16 = [v3 descriptor];
    v17 = [v16 shape];
    v18 = [v17 objectAtIndexedSubscript:v15];
    a2 *= [v18 unsignedIntegerValue];

    ++v15;
  }

  while (v14 != v15);
LABEL_11:

  return a2;
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

unint64_t *hashCombine(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = &a9;
  v9 = *result;
  v10 = 4;
  do
  {
    v11 = v12;
    v12 += 8;
    v9 ^= *v11 + (v9 << 6) + (v9 >> 2) + 2654435769u;
    --v10;
  }

  while (v10);
  *result = v9;
  return result;
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

id ANE_CreateUpsampleLayer(int a1, float a2, double a3)
{
  if (a1)
  {
    v3 = +[MLCLog framework];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ANE_CreateUpsampleLayer_cold_1(v3);
    }

LABEL_18:

    v11 = MEMORY[0x277CBEBF8];
    goto LABEL_19;
  }

  v4 = *&a3;
  LODWORD(a3) = vcvtms_s32_f32(a2);
  v6 = vcnt_s8(*&a3);
  v6.i16[0] = vaddlv_u8(v6);
  if (floorf(a2) != a2 || v6.i32[0] >= 2u)
  {
    v3 = +[MLCLog framework];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ANE_CreateUpsampleLayer_cold_2();
    }

    goto LABEL_18;
  }

  v6.i32[0] = vcvtms_s32_f32(v4);
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  if (floorf(v4) != v4 || v8.i32[0] >= 2u)
  {
    v3 = +[MLCLog framework];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ANE_CreateUpsampleLayer_cold_3();
    }

    goto LABEL_18;
  }

  v11 = [MEMORY[0x277CBEBF8] mutableCopy];
  v12 = [MEMORY[0x277CBEC10] mutableCopy];
  [v12 setObject:@"Conv" forKeyedSubscript:kMLCANENetUnitType[0]];
  [v12 setObject:@"ChannelWiseDeConv" forKeyedSubscript:@"Type"];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v12 setObject:v13 forKeyedSubscript:@"KernelGroupReuse"];

  [v12 setObject:@"Unity" forKeyedSubscript:@"KernelMode"];
  [v12 setObject:&unk_284BA57E0 forKeyedSubscript:@"KernelWidth"];
  [v12 setObject:&unk_284BA57E0 forKeyedSubscript:@"KernelHeight"];
  [v12 setObject:&unk_284BA6038 forKeyedSubscript:@"Step"];
  [v12 setObject:&unk_284BA57F8 forKeyedSubscript:@"PadTop"];
  [v12 setObject:&unk_284BA5810 forKeyedSubscript:@"PadBot"];
  [v12 setObject:&unk_284BA57F8 forKeyedSubscript:@"PadLeft"];
  [v12 setObject:&unk_284BA5810 forKeyedSubscript:@"PadRight"];
  [v12 setObject:@"Zero" forKeyedSubscript:@"PaddingMode"];
  *&v14 = a2;
  *&v15 = v4;
  v16 = [_MLCANEUpsampleParameters upsampleUnitParametersWith:v12 scaleFactorX:v14 scaleFactorY:v15];
  v17 = [MLCANEDeviceOps deviceOpsWithType:16 params:v16];
  v18 = v17;
  if (v17)
  {
    [v11 addObject:v17];
  }

LABEL_19:

  return v11;
}

id ANE_CompileUpsampleLayer(void *a1, void *a2, void *a3)
{
  v63[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x277CBEBF8] mutableCopy];
  v9 = [v7 parentLayers];
  v10 = [v9 objectAtIndexedSubscript:0];

  v11 = [v5 objectAtIndexedSubscript:0];
  v12 = [v11 params];
  v13 = [v6 objectAtIndexedSubscript:0];
  v14 = [v13 descriptor];
  v15 = [v14 dimensionCount];
  if (v15 == 4)
  {
    v40 = ANE_CreateUpsampleUnits(v13, v10, v12);
    if (v40)
    {
      v41 = v40;
      v58 = v13;
      [v8 addObjectsFromArray:v40];

      goto LABEL_24;
    }

    v46 = +[MLCLog framework];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileUpsampleLayer_cold_1();
    }

    v44 = 0;
  }

  else
  {
    v59 = v5;
    if (v15 == 3)
    {
      v57 = v6;
      context = objc_autoreleasePoolPush();
      v60 = 0;
      v61 = 0;
      v16 = [_MLCANEPlistBuilder createReshapeUnitsWithLayer:v10 reshapeUnits:&v61 reshapeResultTensors:&v60];
      v17 = v61;
      v18 = v60;
      if (v16)
      {
        v51 = v14;
        v58 = v13;
        v19 = [v10 label];
        v20 = [v19 stringByAppendingFormat:@"_%lu", objc_msgSend(v8, "count")];
        [v17 objectAtIndexedSubscript:0];
        v21 = v55 = v12;
        [v21 setObject:v20 forKeyedSubscript:@"Name"];

        v12 = v55;
        v22 = [v17 objectAtIndexedSubscript:0];
        [v8 addObject:v22];

        v52 = [v18 objectAtIndexedSubscript:0];
        v23 = ANE_CreateUpsampleUnits(v52, v10, v55);
        v24 = v23;
        v53 = v18;
        v54 = v17;
        if (v23)
        {
          v49 = v11;
          v50 = v7;
          if ([v23 count])
          {
            v25 = 0;
            do
            {
              v26 = [v24 objectAtIndexedSubscript:v25];
              v27 = [v10 label];
              v28 = [v27 stringByAppendingFormat:@"_%lu", objc_msgSend(v8, "count")];
              [v26 setObject:v28 forKeyedSubscript:@"Name"];

              v29 = [v8 objectAtIndexedSubscript:{objc_msgSend(v8, "count") - 1}];
              v30 = [v29 objectForKeyedSubscript:@"Name"];
              v63[0] = v30;
              v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:1];
              [v26 setObject:v31 forKeyedSubscript:@"Bottom"];

              [v8 addObject:v26];
              ++v25;
            }

            while (v25 < [v24 count]);
          }

          v32 = [v10 label];
          v33 = [v32 stringByAppendingFormat:@"_%lu", objc_msgSend(v8, "count")];
          v34 = [v54 objectAtIndexedSubscript:1];
          [v34 setObject:v33 forKeyedSubscript:@"Name"];

          v35 = [v8 objectAtIndexedSubscript:{objc_msgSend(v8, "count") - 1}];
          v36 = [v35 objectForKeyedSubscript:@"Name"];
          v62 = v36;
          v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
          v38 = [v54 objectAtIndexedSubscript:1];
          [v38 setObject:v37 forKeyedSubscript:@"Bottom"];

          v39 = [v54 objectAtIndexedSubscript:1];
          [v8 addObject:v39];
          v6 = v57;
          v11 = v49;
          v7 = v50;
          v12 = v55;
          v14 = v51;
        }

        else
        {
          v39 = +[MLCLog framework];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            ANE_CompileUpsampleLayer_cold_3();
          }

          v14 = v51;
          v6 = v57;
        }

        objc_autoreleasePoolPop(context);
        v5 = v59;
        if (!v24)
        {
          v44 = 0;
          goto LABEL_25;
        }

LABEL_24:
        v44 = [v8 copy];
LABEL_25:
        v13 = v58;
        goto LABEL_26;
      }

      v45 = +[MLCLog framework];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        ANE_CompileUpsampleLayer_cold_2();
      }

      objc_autoreleasePoolPop(context);
      v44 = 0;
      v5 = v59;
      v6 = v57;
    }

    else
    {
      v42 = v14;
      v43 = +[MLCLog framework];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        ANE_CompileUpsampleLayer_cold_4();
      }

      v44 = 0;
      v14 = v42;
      v5 = v59;
    }
  }

LABEL_26:

  v47 = *MEMORY[0x277D85DE8];

  return v44;
}

id ANE_CreateUpsampleUnits(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  v9 = [v7 upsampleParams];
  v10 = [v9 mutableCopy];

  v11 = [v5 descriptor];
  v12 = [v11 dataType];

  v13 = ANE_GetANECIRDataTypeWithMLCDataType(v12);
  if (v13)
  {
    [v10 setObject:v13 forKeyedSubscript:@"KernelType"];
    v14 = [MEMORY[0x277CBEBF8] mutableCopy];
    [v7 scaleFactorX];
    v16 = log2f(v15);
    [v7 scaleFactorY];
    v18 = log2f(v17);
    v19 = v18;
    if (v16 < v18)
    {
      v18 = v16;
    }

    v20 = v18;
    v53 = v8;
    if (v18)
    {
      v57 = 0;
      v21 = ANE_CreateUpsampleUnitsWithParams(v10, v6, v14, v18, 1, 1, v5, &v57);
      v22 = v57;
      v23 = v22;
      if (v21)
      {
        v24 = v22;
        goto LABEL_15;
      }

      v40 = +[MLCLog framework];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        ANE_CreateUpsampleUnits_cold_1();
      }

      v25 = 0;
    }

    else
    {
      v26 = fabsf(v19);
      if (fabsf(v16) >= 0.000001 || v26 >= 0.000001)
      {
        v24 = 0;
LABEL_15:
        v28 = v16 - v20;
        v29 = v19 - v20;
        if (v24)
        {
          v30 = v24;
        }

        else
        {
          v30 = v5;
        }

        v31 = v30;

        if (v28 != 0.0 || v29 == 0.0)
        {
          if (v28 == 0.0 || v29 != 0.0)
          {
            goto LABEL_30;
          }

          v32 = [v10 mutableCopy];
          v52 = v31;
          v41 = v6;
          [v32 setObject:&unk_284BA57F8 forKeyedSubscript:@"KernelHeight"];
          v42 = [v32 objectForKeyedSubscript:@"Step"];
          v43 = [v42 mutableCopy];

          [v43 setObject:&unk_284BA57F8 atIndexedSubscript:1];
          v50 = v43;
          v44 = [v43 copy];
          [v32 setObject:v44 forKeyedSubscript:@"Step"];

          [v32 setObject:&unk_284BA5810 forKeyedSubscript:@"PadTop"];
          v54 = v24;
          v37 = v41;
          v45 = v41;
          v31 = v52;
          LOBYTE(v44) = ANE_CreateUpsampleUnitsWithParams(v32, v45, v14, v28, 1, 0, v52, &v54);
          v23 = v54;

          if ((v44 & 1) == 0)
          {
            v39 = +[MLCLog framework];
            v6 = v37;
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              ANE_CreateUpsampleUnits_cold_2();
            }

            goto LABEL_40;
          }
        }

        else
        {
          v32 = [v10 mutableCopy];
          [v32 setObject:&unk_284BA57F8 forKeyedSubscript:@"KernelWidth"];
          [v32 objectForKeyedSubscript:@"Step"];
          v51 = v31;
          v34 = v33 = v6;
          v35 = [v34 mutableCopy];

          [v35 setObject:&unk_284BA57F8 atIndexedSubscript:0];
          v50 = v35;
          v36 = [v35 copy];
          [v32 setObject:v36 forKeyedSubscript:@"Step"];

          [v32 setObject:&unk_284BA5810 forKeyedSubscript:@"PadLeft"];
          v55 = v24;
          v37 = v33;
          v38 = v33;
          v31 = v51;
          LOBYTE(v36) = ANE_CreateUpsampleUnitsWithParams(v32, v38, v14, v29, 0, 1, v51, &v55);
          v23 = v55;

          if ((v36 & 1) == 0)
          {
            v39 = +[MLCLog framework];
            v6 = v37;
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              ANE_CreateUpsampleUnits_cold_3();
            }

LABEL_40:

            v25 = 0;
            goto LABEL_41;
          }
        }

        v24 = v23;
        v6 = v37;
LABEL_30:
        v25 = [v14 copy];
        v23 = v24;
LABEL_41:

        v5 = v31;
        v8 = v53;
        goto LABEL_42;
      }

      v46 = [v10 mutableCopy];
      [v46 setObject:&unk_284BA57F8 forKeyedSubscript:@"KernelWidth"];
      [v46 setObject:&unk_284BA57F8 forKeyedSubscript:@"KernelHeight"];
      [v46 setObject:&unk_284BA6050 forKeyedSubscript:@"Step"];
      [v46 setObject:&unk_284BA5810 forKeyedSubscript:@"PadLeft"];
      [v46 setObject:&unk_284BA5810 forKeyedSubscript:@"PadTop"];
      v56 = 0;
      v47 = ANE_CreateUpsampleUnitsWithParams(v46, v6, v14, 1uLL, 0, 0, v5, &v56);
      v23 = v56;
      if (v47)
      {
        v25 = [v14 copy];
      }

      else
      {
        v48 = +[MLCLog framework];
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          ANE_CreateUpsampleUnits_cold_4();
        }

        v25 = 0;
      }
    }

    v31 = v5;
    goto LABEL_41;
  }

  v14 = +[MLCLog framework];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    ANE_CreateUpsampleUnits_cold_5(v5, v12, v14);
  }

  v25 = 0;
LABEL_42:

  objc_autoreleasePoolPop(v8);

  return v25;
}

uint64_t ANE_CreateUpsampleUnitsWithParams(void *a1, void *a2, void *a3, unint64_t a4, char a5, char a6, void *a7, void *a8)
{
  v71[1] = *MEMORY[0x277D85DE8];
  v61 = a1;
  v14 = a2;
  v15 = a3;
  v67 = 0;
  v60 = a7;
  ANE_GetTensor4DShapeWithBatchFirst(v60, &v67);
  v16 = v67;
  v17 = [v16 objectAtIndexedSubscript:0];
  v59 = [v17 unsignedIntegerValue];

  v18 = [v16 objectAtIndexedSubscript:1];
  v65 = [v18 unsignedIntegerValue];

  v19 = [v16 objectAtIndexedSubscript:2];
  v66 = [v19 unsignedIntegerValue];

  v55 = v16;
  v20 = v16;
  v21 = a4;
  v22 = [v20 objectAtIndexedSubscript:3];
  v23 = [v22 unsignedIntegerValue];

  if (!v21)
  {
LABEL_12:
    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v59];
    v68[0] = v44;
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v65];
    v68[1] = v45;
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v66];
    v68[2] = v46;
    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
    v68[3] = v47;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:4];

    v48 = v60;
    v49 = [v60 descriptor];
    *a8 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v26, [v49 dataType]);

    v50 = 1;
    goto LABEL_16;
  }

  v64 = 0;
  v62 = a6;
  v63 = a5;
  v24 = 1;
  v25 = v21;
  v57 = v14;
  v58 = v15;
  v56 = v21;
  while (1)
  {
    if (v24 == 1)
    {
      v26 = [_MLCANEPlistBuilder createUnitWithLayer:v14 unitParams:v61];
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v65];
      [v26 setObject:v27 forKeyedSubscript:@"OutputChannels"];

      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v65];
      [v26 setObject:v28 forKeyedSubscript:@"NumGroups"];
    }

    else
    {
      v28 = [v15 objectAtIndexedSubscript:{objc_msgSend(v15, "count") - 1}];
      v26 = [v28 mutableCopy];
    }

    v29 = MEMORY[0x277CCACA8];
    v30 = [v14 label];
    v31 = [v29 stringWithFormat:@"%@_%lu", v30, objc_msgSend(v15, "count")];
    [v26 setObject:v31 forKeyedSubscript:@"Name"];

    if ([v15 count])
    {
      v32 = [v15 objectAtIndexedSubscript:{objc_msgSend(v15, "count") - 1}];
      v33 = [v32 objectForKeyedSubscript:@"Name"];
      v71[0] = v33;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1];
      [v26 setObject:v34 forKeyedSubscript:@"Bottom"];
    }

    if (v25 != 1)
    {
      goto LABEL_11;
    }

    v35 = objc_autoreleasePoolPush();
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v59];
    v70[0] = v36;
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v65];
    v70[1] = v37;
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v66];
    v70[2] = v38;
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
    v70[3] = v39;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:4];

    v41 = [v60 descriptor];
    v42 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v40, [v41 dataType]);

    v69 = v42;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
    LOBYTE(v41) = ANE_ValidateConvolutionUnit(v43, v26, 0);

    if ((v41 & 1) == 0)
    {
      break;
    }

    objc_autoreleasePoolPop(v35);
    v14 = v57;
    v15 = v58;
    v21 = v56;
LABEL_11:
    [v15 addObject:v26];
    v23 <<= v63;
    v66 <<= v62;

    v64 = v24++ >= v21;
    if (!--v25)
    {
      goto LABEL_12;
    }
  }

  v51 = +[MLCLog framework];
  v14 = v57;
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
    ANE_CreateUpsampleUnitsWithParams_cold_1();
  }

  objc_autoreleasePoolPop(v35);
  v15 = v58;
  v48 = v60;
  v50 = v64;
LABEL_16:

  v52 = *MEMORY[0x277D85DE8];
  return v50 & 1;
}

BOOL activationIsFusableWithMPSGraph(void *a1)
{
  v1 = a1;
  v2 = [v1 activationType] - 2;
  v4 = 0;
  if (v2 >= 0x13 || ((0x7FFFDu >> v2) & 1) == 0)
  {
    [v1 a];
    if (v3 == 0.0 || [v1 activationType] != 1)
    {
      v4 = 1;
    }
  }

  return v4;
}

void OUTLINED_FUNCTION_0_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id ANE_CreateSliceLayer(void *a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = a3;
  v8 = [v7 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v38 + 1) + 8 * i) unsignedIntegerValue] != 1)
        {
          v13 = +[MLCLog framework];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            ANE_CreateSliceLayer_cold_1(v13);
          }

          v17 = MEMORY[0x277CBEBF8];
          v12 = v7;
          goto LABEL_34;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = [v5 mutableCopy];
  v13 = [v6 mutableCopy];
  v14 = [v7 mutableCopy];
  v15 = [v5 count];
  switch(v15)
  {
    case 4:
      goto LABEL_20;
    case 3:
      [v12 insertObject:&unk_284BA5828 atIndex:0];
      [v13 insertObject:&unk_284BA5840 atIndex:0];
      [v14 insertObject:&unk_284BA5840 atIndex:0];
LABEL_20:
      v35 = v5;
      v36 = v6;
      v37 = [MEMORY[0x277CBEBF8] mutableCopy];
      if ([v12 count])
      {
        v18 = 0;
        while (1)
        {
          v19 = [v14 objectAtIndexedSubscript:v18];
          v20 = [v19 unsignedIntegerValue];

          v21 = [v13 objectAtIndexedSubscript:v18];
          v22 = [v21 unsignedIntegerValue];
          v23 = [v12 objectAtIndexedSubscript:v18];
          v24 = [v23 unsignedIntegerValue];

          v25 = [MEMORY[0x277CBEC10] mutableCopy];
          [v25 setObject:@"InputView" forKeyedSubscript:kMLCANENetUnitType[0]];
          v26 = ANE_GetANECIRDimension(v18);
          if (!v26)
          {
            break;
          }

          v27 = v26;
          v28 = (v22 + ~v24) / v20;
          [v25 setObject:v26 forKeyedSubscript:@"Dimension"];
          v29 = [v12 objectAtIndexedSubscript:v18];
          [v25 setObject:v29 forKeyedSubscript:@"Offset"];

          v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v28 + 1];
          [v25 setObject:v30 forKeyedSubscript:@"Size"];

          v31 = [v25 copy];
          [v37 addObject:v31];

          if (++v18 >= [v12 count])
          {
            goto LABEL_24;
          }
        }

        v32 = +[MLCLog framework];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          ANE_CreateSliceLayer_cold_2(v32);
        }

        v17 = MEMORY[0x277CBEBF8];
      }

      else
      {
LABEL_24:
        v17 = [MEMORY[0x277CBEBF8] mutableCopy];
        v25 = [_MLCANESliceParameters sliceUnitParametersWith:v37];
        v32 = [MLCANEDeviceOps deviceOpsWithType:33 params:v25];
        if (v32)
        {
          [v17 addObject:v32];
        }
      }

      v5 = v35;

      v6 = v36;
      goto LABEL_33;
    case 2:
      if ([v5 count] != 4)
      {
        v16 = 0;
        do
        {
          [v12 insertObject:&unk_284BA5828 atIndex:0];
          [v13 insertObject:&unk_284BA5840 atIndex:0];
          [v14 insertObject:&unk_284BA5840 atIndex:0];
          ++v16;
        }

        while (v16 < 4 - [v5 count]);
      }

      goto LABEL_20;
  }

  v37 = +[MLCLog framework];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    ANE_CreateSliceLayer_cold_3(v5, v37);
  }

  v17 = MEMORY[0x277CBEBF8];
LABEL_33:

LABEL_34:
  v33 = *MEMORY[0x277D85DE8];

  return v17;
}

id ANE_CompileSliceLayer(void *a1, void *a2, void *a3)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v7 parentLayers];
  v9 = [v8 objectAtIndexedSubscript:0];

  v34 = v5;
  v32 = [v5 objectAtIndexedSubscript:0];
  v10 = [v32 params];
  v11 = [v10 sliceParams];

  v12 = [MEMORY[0x277CBEBF8] mutableCopy];
  v35 = v6;
  v13 = [v6 objectAtIndexedSubscript:0];
  v40 = 0;
  ANE_GetTensor4DShapeWithOnePrepended(v13, &v40);
  v38 = v40;

  v39 = 0;
  v33 = v7;
  ANE_GetTensor4DShapeWithOnePrepended(v7, &v39);
  v37 = v39;
  if (![v11 count])
  {
    v36 = 0;
LABEL_15:
    v26 = v36;
    if (![v12 count])
    {
      [v12 addObject:v36];
    }

    v27 = [v12 copy];
    v28 = v34;
    goto LABEL_23;
  }

  v36 = 0;
  v14 = 0;
  while (1)
  {
    v15 = [v11 objectAtIndexedSubscript:v14];
    v16 = [v9 label];
    v17 = [v16 stringByAppendingFormat:@"_%lu", objc_msgSend(v12, "count")];

    v18 = [_MLCANEPlistBuilder createUnitWithLayer:v9 unitParams:v15];
    [v18 setObject:v17 forKeyedSubscript:@"Name"];
    if ((v14 - 1) >= 3)
    {
      break;
    }

    if ([v12 count])
    {
      v19 = [v12 objectAtIndexedSubscript:{objc_msgSend(v12, "count") - 1}];
      v20 = [v19 objectForKeyedSubscript:@"Name"];

      v41[0] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
      [v18 setObject:v21 forKeyedSubscript:@"Bottom"];
    }

    if (v14 == 2)
    {
      v22 = v18;

      v36 = v22;
    }

LABEL_9:
    v23 = [v38 objectAtIndexedSubscript:v14];
    v24 = [v37 objectAtIndexedSubscript:v14];
    v25 = [v23 isEqualToNumber:v24];

    if ((v25 & 1) == 0)
    {
      if ((ANE_ValidateInputViewUnit(v35, v18, 1) & 1) == 0)
      {
        v29 = +[MLCLog framework];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          ANE_CompileSliceLayer_cold_1(v18, v9, v29);
        }

        goto LABEL_22;
      }

      [v12 addObject:v18];
    }

    if (++v14 >= [v11 count])
    {
      goto LABEL_15;
    }
  }

  if (!v14)
  {
    goto LABEL_9;
  }

  v29 = +[MLCLog framework];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    ANE_CompileSliceLayer_cold_2();
  }

LABEL_22:
  v28 = v34;

  v27 = 0;
  v26 = v36;
LABEL_23:

  v30 = *MEMORY[0x277D85DE8];

  return v27;
}

id ANE_CreateComparisonLayer(int a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEBF8];
  v3 = [MEMORY[0x277CBEBF8] mutableCopy];
  v4 = [v2 mutableCopy];
  v15 = kMLCANENetUnitType[0];
  v16[0] = @"ElementWise";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v6 = [v5 mutableCopy];

  if (a1 > 5)
  {
    if (a1 <= 8)
    {
      if (a1 == 6)
      {
        v7 = @"Mult";
      }

      else if (a1 == 7)
      {
        v7 = @"Add";
      }

      else
      {
        v7 = @"EqualZero";
      }

      goto LABEL_24;
    }

    switch(a1)
    {
      case 9:
        v8 = @"Mult";
        break;
      case 10:
        v8 = @"Add";
        break;
      case 11:
LABEL_17:
        v7 = @"NotEqual";
        goto LABEL_24;
      default:
        goto LABEL_33;
    }

    [v6 setObject:v8 forKeyedSubscript:@"Type"];
    [v4 addObject:v6];
    v14 = [v6 mutableCopy];

    [v14 setObject:@"EqualZero" forKeyedSubscript:@"Type"];
    v6 = v14;
    goto LABEL_25;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v7 = @"GreaterThan";
    }

    else if (a1 == 4)
    {
      v7 = @"LessThanEqual";
    }

    else
    {
      v7 = @"GreaterThanEqual";
    }

    goto LABEL_24;
  }

  switch(a1)
  {
    case 0:
      v7 = @"Equal";
      goto LABEL_24;
    case 1:
      goto LABEL_17;
    case 2:
      v7 = @"LessThan";
LABEL_24:
      [v6 setObject:v7 forKeyedSubscript:@"Type"];
LABEL_25:
      [v4 addObject:v6];
      v9 = [_MLCANEArithmeticParameters arithmeticUnitParametersWith:v4];
      v10 = [MLCANEDeviceOps deviceOpsWithType:34 params:v9];
      if (v10)
      {
        [v3 addObject:v10];
      }

      v11 = [v3 copy];

      goto LABEL_28;
  }

LABEL_33:
  v9 = +[MLCLog framework];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    ANE_CreateComparisonLayer_cold_1();
  }

  v11 = MEMORY[0x277CBEBF8];
LABEL_28:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id ANE_CompileComparisonLayer(void *a1, void *a2, void *a3)
{
  v68[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v7 parentLayers];
  v9 = [v8 objectAtIndexedSubscript:0];

  v10 = [v5 objectAtIndexedSubscript:0];
  v11 = [v10 params];
  v12 = [v11 arithmeticParams];

  v13 = MEMORY[0x277CBEBF8];
  v14 = [MEMORY[0x277CBEBF8] mutableCopy];
  v15 = [v9 operation];
  v65 = 0;
  v60 = [v13 mutableCopy];
  if ([v6 count] != 2)
  {
LABEL_10:
    if (v15 > 0xB)
    {
      v36 = +[MLCLog framework];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        ANE_CompileComparisonLayer_cold_10();
      }
    }

    else if (((1 << v15) & 0x8FF) != 0)
    {
      if ([v12 count] == 1)
      {
        [v12 objectAtIndexedSubscript:0];
        v33 = v32 = v14;
        v34 = [_MLCANEPlistBuilder createUnitWithLayer:v9 unitParams:v33];

        v14 = v32;
        if (ANE_ConnectBroadcastUnits(v34, v32, v9, &v65, v60))
        {
LABEL_14:

          v35 = [v14 copy];
          goto LABEL_34;
        }

        v47 = +[MLCLog framework];
        if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

LABEL_24:
        ANE_CompileComparisonLayer_cold_4();
LABEL_25:

        goto LABEL_26;
      }

      v36 = +[MLCLog framework];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        ANE_CompileComparisonLayer_cold_8();
      }
    }

    else if (((1 << v15) & 0x600) != 0)
    {
      if ([v12 count] == 2)
      {
        [v12 objectAtIndexedSubscript:0];
        v37 = v54 = v14;
        v34 = [_MLCANEPlistBuilder createUnitWithLayer:v9 unitParams:v37];

        v14 = v54;
        if (ANE_ConnectBroadcastUnits(v34, v54, v9, &v65, v60))
        {
          v38 = [v12 objectAtIndexedSubscript:1];
          v39 = [_MLCANEPlistBuilder createUnitWithLayer:v9 unitParams:v38];

          v40 = [v9 label];
          v41 = [v40 stringByAppendingFormat:@"_%lu", objc_msgSend(v54, "count")];
          [v39 setObject:v41 forKeyedSubscript:@"Name"];

          v42 = [v34 objectForKeyedSubscript:@"Name"];
          v68[0] = v42;
          v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:1];
          [v39 setObject:v43 forKeyedSubscript:@"Bottom"];

          v44 = [v34 objectForKeyedSubscript:@"OutputType"];
          v67 = v44;
          v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
          [v39 setObject:v45 forKeyedSubscript:@"InputType"];

          v66 = v7;
          v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
          LOBYTE(v45) = ANE_ValidateElementWiseUnit(v46, v39, 1);

          if ((v45 & 1) == 0)
          {
            v53 = +[MLCLog framework];
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              ANE_CompileComparisonLayer_cold_5();
            }

            v35 = 0;
            goto LABEL_33;
          }

          v14 = v54;
          [v54 addObject:v39];

          goto LABEL_14;
        }

        v47 = +[MLCLog framework];
        if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      v36 = +[MLCLog framework];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        ANE_CompileComparisonLayer_cold_3();
      }
    }

    else
    {
      if ([v12 count] == 1)
      {
        v51 = v14;
        v52 = [v12 objectAtIndexedSubscript:0];
        v34 = [_MLCANEPlistBuilder createUnitWithLayer:v9 unitParams:v52];

        if (ANE_ValidateElementWiseUnit(v6, v34, 1))
        {
          v14 = v51;
          [v51 addObject:v34];
          goto LABEL_14;
        }

        v47 = +[MLCLog framework];
        v14 = v51;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          ANE_CompileComparisonLayer_cold_5();
        }

        goto LABEL_25;
      }

      v36 = +[MLCLog framework];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        ANE_CompileComparisonLayer_cold_6();
      }
    }

LABEL_26:
    v35 = 0;
    goto LABEL_34;
  }

  v55 = v15;
  v58 = v5;
  v59 = v12;
  v56 = v10;
  v57 = v7;
  v64 = 0;
  ANE_GetTensor4DShapeWithOnePrepended(v7, &v64);
  v16 = v64;
  if (![v6 count])
  {
LABEL_9:

    v7 = v57;
    v5 = v58;
    v10 = v56;
    v12 = v59;
    v15 = v55;
    goto LABEL_10;
  }

  v17 = 0;
  v18 = 0x278A68000uLL;
  while (1)
  {
    v19 = [v6 objectAtIndexedSubscript:v17];
    v20 = *(v18 + 3432);
    v62 = 0;
    v63 = 0;
    v21 = [v20 createBroadcastUnitWithSourceTensor:v19 targetShape:v16 layer:v9 broadcastUnit:&v63 broadcastResultTensor:&v62];
    v22 = v63;
    v23 = v62;
    if (v21 == 1)
    {
      goto LABEL_8;
    }

    if (v21 != 2)
    {
      break;
    }

    if (!v22)
    {
      v54 = v14;
      v48 = +[MLCLog framework];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        ANE_CompileComparisonLayer_cold_1();
      }

      v22 = 0;
      goto LABEL_32;
    }

    *(&v65 + v17) = 1;
    v24 = [v9 label];
    [v24 stringByAppendingFormat:@"_%lu", objc_msgSend(v14, "count")];
    v61 = v23;
    v25 = v19;
    v26 = v16;
    v27 = v18;
    v28 = v6;
    v29 = v9;
    v31 = v30 = v14;
    [v22 setObject:v31 forKeyedSubscript:@"Name"];

    v14 = v30;
    v9 = v29;
    v6 = v28;
    v18 = v27;
    v16 = v26;
    v19 = v25;
    v23 = v61;

    [v14 addObject:v22];
    [v60 addObject:v61];
LABEL_8:

    if (++v17 >= [v6 count])
    {
      goto LABEL_9;
    }
  }

  v54 = v14;
  v48 = +[MLCLog framework];
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    ANE_CompileComparisonLayer_cold_2();
  }

LABEL_32:
  v5 = v58;
  v12 = v59;

  v35 = 0;
  v10 = v56;
  v7 = v57;
LABEL_33:
  v14 = v54;
LABEL_34:

  v49 = *MEMORY[0x277D85DE8];

  return v35;
}

uint64_t ANE_ConnectBroadcastUnits(void *a1, void *a2, void *a3, _BYTE *a4, void *a5)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a5;
  v13 = [v11 sourceTensors];
  v14 = [v9 objectForKeyedSubscript:@"Bottom"];
  v15 = a4[1];
  if (*a4 != 1)
  {
    if (!a4[1])
    {
      v22 = v13;
      goto LABEL_9;
    }

    v23 = [v11 label];
    v24 = [v23 stringByAppendingFormat:@"_%lu", objc_msgSend(v10, "count")];
    [v9 setObject:v24 forKeyedSubscript:@"Name"];

    v25 = [v13 objectAtIndexedSubscript:0];
    v26 = [v25 label];
    [v14 setObject:v26 atIndexedSubscript:0];

    v27 = [v10 objectAtIndexedSubscript:0];
    v28 = [v27 objectForKeyedSubscript:@"Name"];
    [v14 setObject:v28 atIndexedSubscript:1];

    v29 = [v13 objectAtIndexedSubscript:0];
    v40[0] = v29;
    v30 = [v12 objectAtIndexedSubscript:0];
    v40[1] = v30;
    v31 = MEMORY[0x277CBEA60];
    v32 = v40;
LABEL_7:
    v35 = [v31 arrayWithObjects:v32 count:2];

    goto LABEL_10;
  }

  v16 = [v11 label];
  v17 = [v16 stringByAppendingFormat:@"_%lu", objc_msgSend(v10, "count")];
  [v9 setObject:v17 forKeyedSubscript:@"Name"];

  v18 = [v10 objectAtIndexedSubscript:0];
  v19 = [v18 objectForKeyedSubscript:@"Name"];
  [v14 setObject:v19 atIndexedSubscript:0];

  if (!v15)
  {
    v33 = [v13 objectAtIndexedSubscript:1];
    v34 = [v33 label];
    [v14 setObject:v34 atIndexedSubscript:1];

    v29 = [v12 objectAtIndexedSubscript:0];
    v41[0] = v29;
    v30 = [v13 objectAtIndexedSubscript:1];
    v41[1] = v30;
    v31 = MEMORY[0x277CBEA60];
    v32 = v41;
    goto LABEL_7;
  }

  v20 = [v10 objectAtIndexedSubscript:1];
  v21 = [v20 objectForKeyedSubscript:@"Name"];
  [v14 setObject:v21 atIndexedSubscript:1];

  v22 = v12;
LABEL_9:
  v35 = v22;
LABEL_10:
  v36 = ANE_ValidateElementWiseUnit(v35, v9, 1);
  if (v36)
  {
    [v10 addObject:v9];
  }

  else
  {
    v37 = +[MLCLog framework];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      ANE_ConnectBroadcastUnits_cold_1();
    }
  }

  v38 = *MEMORY[0x277D85DE8];
  return v36;
}

id ANE_CreateReshapeLayer()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = [MLCANEDeviceOps deviceOpsWithType:18 params:MEMORY[0x277CBEC10]];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

id ANE_CompileReshapeLayer(uint64_t a1, void *a2, void *a3)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [v5 parentLayers];
  v7 = [v6 objectAtIndexedSubscript:0];

  v8 = [MEMORY[0x277CBEC10] mutableCopy];
  [v8 setObject:@"Reshape" forKeyedSubscript:kMLCANENetUnitType[0]];
  v9 = [v5 descriptor];
  v10 = [v9 shape];

  v11 = [v10 count];
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      [v8 setObject:&unk_284BA5858 forKeyedSubscript:@"ReshapedBatch"];
      v18 = [v10 objectAtIndexedSubscript:0];
      [v8 setObject:v18 forKeyedSubscript:@"ReshapedChannel"];

      v19 = [v10 objectAtIndexedSubscript:1];
      [v8 setObject:v19 forKeyedSubscript:@"ReshapedHeight"];

      v13 = 2;
      goto LABEL_12;
    }

    if (v11 == 4)
    {
      v14 = [v10 objectAtIndexedSubscript:0];
      [v8 setObject:v14 forKeyedSubscript:@"ReshapedBatch"];

      v15 = [v10 objectAtIndexedSubscript:1];
      [v8 setObject:v15 forKeyedSubscript:@"ReshapedChannel"];

      v16 = [v10 objectAtIndexedSubscript:2];
      [v8 setObject:v16 forKeyedSubscript:@"ReshapedHeight"];

      v13 = 3;
      goto LABEL_12;
    }

LABEL_8:
    v17 = +[MLCLog framework];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileReshapeLayer_cold_2();
    }

    goto LABEL_17;
  }

  if (v11 == 1)
  {
    [v8 setObject:&unk_284BA5858 forKeyedSubscript:@"ReshapedBatch"];
    [v8 setObject:&unk_284BA5858 forKeyedSubscript:@"ReshapedChannel"];
    [v8 setObject:&unk_284BA5858 forKeyedSubscript:@"ReshapedHeight"];
    v13 = 0;
    goto LABEL_12;
  }

  if (v11 != 2)
  {
    goto LABEL_8;
  }

  [v8 setObject:&unk_284BA5858 forKeyedSubscript:@"ReshapedBatch"];
  [v8 setObject:&unk_284BA5858 forKeyedSubscript:@"ReshapedChannel"];
  v12 = [v10 objectAtIndexedSubscript:0];
  [v8 setObject:v12 forKeyedSubscript:@"ReshapedHeight"];

  v13 = 1;
LABEL_12:
  v20 = [v10 objectAtIndexedSubscript:v13];
  [v8 setObject:v20 forKeyedSubscript:@"ReshapedWidth"];

  v17 = [_MLCANEPlistBuilder createUnitWithLayer:v7 unitParams:v8];
  if (ANE_ValidateReshapeUnit(v4, v17, 1))
  {
    v25[0] = v17;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    goto LABEL_18;
  }

  v22 = +[MLCLog framework];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    ANE_CompileReshapeLayer_cold_1();
  }

LABEL_17:
  v21 = 0;
LABEL_18:

  v23 = *MEMORY[0x277D85DE8];

  return v21;
}

id GPU_CreateOptimizerDeviceDataForTensor(void *a1, void *a2, void *a3)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v42 = a2;
  v47 = a3;
  v6 = [MEMORY[0x277CBEBF8] mutableCopy];
  v7 = [v5 deviceList];
  v8 = [v7 count];

  if (v8)
  {
    v9 = 0;
    v10 = 0x277CBE000uLL;
    v43 = v6;
    v44 = v5;
    while (1)
    {
      v11 = [v5 deviceList];
      v45 = v9;
      v12 = [v11 objectAtIndexedSubscript:v9];

      v46 = +[MLCTensorOptimizerDeviceData optimizerDeviceData];
      v13 = [MEMORY[0x277CBEBF8] mutableCopy];
      v14 = v47;
      if ([v47 count])
      {
        v15 = 0;
        do
        {
          v16 = *(v10 + 2704);
          v17 = [v14 objectAtIndexedSubscript:v15];
          v18 = [v17 bytes];
          v19 = [v47 objectAtIndexedSubscript:v15];
          v20 = [v16 dataWithBytesNoCopy:v18 length:objc_msgSend(v19 freeWhenDone:{"length"), 0}];

          v21 = [v20 length];
          v22 = [v12 newBufferWithBytes:objc_msgSend(v20 length:"bytes") options:{v21, +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
          v23 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:1 columns:v21 >> 2 rowBytes:v21 dataType:268435488];
          v24 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v22 descriptor:v23];
          [v13 setObject:v24 atIndexedSubscript:v15];

          v14 = v47;
          v10 = 0x277CBE000;

          ++v15;
        }

        while (v15 < [v47 count]);
      }

      if (![v13 count])
      {
        break;
      }

      v25 = [v13 objectAtIndexedSubscript:0];
      v51[0] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
      [v46 setMomentumVectors:v26];

      if ([v13 count] >= 2)
      {
        v27 = [v13 objectAtIndexedSubscript:1];
        v50 = v27;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
        [v46 setVelocityVectors:v28];

        if ([v13 count] >= 3)
        {
          v29 = [v13 objectAtIndexedSubscript:2];
          v49 = v29;
          v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
          [v46 setCenterWeightVectors:v30];
        }
      }

      v31 = +[MLCGPUDeviceOps deviceOps];
      v5 = v44;
      if (v31)
      {
        v32 = [v44 deviceList];
        v33 = [v32 count];

        if (v33 >= 2)
        {
          v34 = [MLCMultiGPUDeviceOps multiGPUDeviceOpsWithGPUDeviceOps:v31];

          v48 = v42;
          v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
          GPU_AllocateResourceForMultiGPUTraining(v44, v34, v35, v45);

          v31 = v34;
        }
      }

      v6 = v43;
      [v46 setGpuOps:v31];
      [v43 addObject:v46];

      v9 = v45 + 1;
      v36 = [v44 deviceList];
      v37 = [v36 count];

      v10 = 0x277CBE000;
      if (v45 + 1 >= v37)
      {
        goto LABEL_14;
      }
    }

    v39 = +[MLCLog framework];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      GPU_CreateOptimizerDeviceDataForTensor_cold_1(v39);
    }

    v38 = MEMORY[0x277CBEBF8];
    v6 = v43;
    v5 = v44;
  }

  else
  {
LABEL_14:
    v38 = [v6 copy];
  }

  v40 = *MEMORY[0x277D85DE8];

  return v38;
}

id GPU_CreateOptimizerDeviceVectorDataForTensor(void *a1, uint64_t a2, void *a3)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = a3;
  v6 = [MEMORY[0x277CBEBF8] mutableCopy];
  v7 = [v4 deviceList];
  v8 = [v7 count];

  if (v8)
  {
    v9 = 0;
    v34 = v6;
    v35 = v4;
    while (1)
    {
      v10 = [v4 deviceList];
      v36 = v9;
      v11 = [v10 objectAtIndexedSubscript:v9];

      v12 = +[MLCTensorOptimizerDeviceData optimizerDeviceData];
      v13 = [MEMORY[0x277CBEBF8] mutableCopy];
      if ([v5 count])
      {
        v14 = 0;
        do
        {
          v15 = MEMORY[0x277CBEA90];
          v16 = [v5 objectAtIndexedSubscript:v14];
          v17 = [v16 bytes];
          v18 = [v5 objectAtIndexedSubscript:v14];
          v19 = [v15 dataWithBytesNoCopy:v17 length:objc_msgSend(v18 freeWhenDone:{"length"), 0}];

          v20 = GPU_AllocateMemoryForMomentum(v11, v19, 268435488);
          [v13 setObject:v20 atIndexedSubscript:v14];

          ++v14;
        }

        while (v14 < [v5 count]);
      }

      if (![v13 count])
      {
        break;
      }

      v21 = [v13 objectAtIndexedSubscript:0];
      v39[0] = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
      [v12 setMomentumVectors:v22];

      v6 = v34;
      if ([v13 count] >= 2)
      {
        v23 = [v13 objectAtIndexedSubscript:1];
        v38 = v23;
        v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
        [v12 setVelocityVectors:v24];

        if ([v13 count] >= 3)
        {
          v25 = [v13 objectAtIndexedSubscript:2];
          v37 = v25;
          v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
          [v12 setCenterWeightVectors:v26];
        }
      }

      v27 = +[MLCGPUDeviceOps deviceOps];
      [v12 setGpuOps:v27];
      [v34 addObject:v12];

      v4 = v35;
      v9 = v36 + 1;
      v28 = [v35 deviceList];
      v29 = [v28 count];

      if (v36 + 1 >= v29)
      {
        goto LABEL_11;
      }
    }

    v31 = +[MLCLog framework];
    v6 = v34;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      GPU_CreateOptimizerDeviceVectorDataForTensor_cold_1(v31);
    }

    v30 = MEMORY[0x277CBEBF8];
    v4 = v35;
  }

  else
  {
LABEL_11:
    v30 = [v6 copy];
  }

  v32 = *MEMORY[0x277D85DE8];

  return v30;
}

id ANE_BuildArithmeticParams(int a1)
{
  v2 = [MEMORY[0x277CBEBF8] mutableCopy];
  switch(a1)
  {
    case 0:
      v3 = [MEMORY[0x277CBEC10] mutableCopy];
      [v3 setObject:@"ElementWise" forKeyedSubscript:kMLCANENetUnitType[0]];
      v4 = @"Add";
      goto LABEL_20;
    case 1:
      v3 = [MEMORY[0x277CBEC10] mutableCopy];
      [v3 setObject:@"ElementWise" forKeyedSubscript:kMLCANENetUnitType[0]];
      v4 = @"Sub";
      goto LABEL_20;
    case 2:
      v3 = [MEMORY[0x277CBEC10] mutableCopy];
      [v3 setObject:@"ElementWise" forKeyedSubscript:kMLCANENetUnitType[0]];
      v4 = @"Mult";
      goto LABEL_20;
    case 3:
      v5 = MEMORY[0x277CBEC10];
      v3 = [MEMORY[0x277CBEC10] mutableCopy];
      [v3 setObject:@"Neuron" forKeyedSubscript:kMLCANENetUnitType[0]];
      [v3 setObject:@"Inv" forKeyedSubscript:@"Type"];
      v6 = [v5 mutableCopy];
      [v6 setObject:@"ElementWise" forKeyedSubscript:kMLCANENetUnitType[0]];
      v7 = @"Mult";
      v8 = v6;
      goto LABEL_16;
    case 7:
      v3 = [MEMORY[0x277CBEC10] mutableCopy];
      [v3 setObject:@"Neuron" forKeyedSubscript:kMLCANENetUnitType[0]];
      v4 = @"Sqrt";
      goto LABEL_20;
    case 8:
      v3 = [MEMORY[0x277CBEC10] mutableCopy];
      [v3 setObject:@"Neuron" forKeyedSubscript:kMLCANENetUnitType[0]];
      v4 = @"Rsqrt";
      goto LABEL_20;
    case 17:
      v3 = [MEMORY[0x277CBEC10] mutableCopy];
      [v3 setObject:@"Neuron" forKeyedSubscript:kMLCANENetUnitType[0]];
      v4 = @"Tanh";
      goto LABEL_20;
    case 22:
      v11 = MEMORY[0x277CBEC10];
      v3 = [MEMORY[0x277CBEC10] mutableCopy];
      [v3 setObject:@"GOC" forKeyedSubscript:kMLCANENetUnitType[0]];
      v19 = 1069066811;
      v18 = 0;
      ANE_ConvertFp32ToInt16(&v19, &v18);
      v12 = [MEMORY[0x277CCABB0] numberWithShort:v18];
      [v3 setObject:v12 forKeyedSubscript:@"ScaleScalar"];

      v6 = [v11 mutableCopy];
      [v6 setObject:@"Neuron" forKeyedSubscript:kMLCANENetUnitType[0]];
      v7 = @"Exp2";
      v8 = v6;
LABEL_16:
      [v8 setObject:v7 forKeyedSubscript:@"Type"];
      goto LABEL_18;
    case 23:
      v3 = [MEMORY[0x277CBEC10] mutableCopy];
      [v3 setObject:@"Neuron" forKeyedSubscript:kMLCANENetUnitType[0]];
      v4 = @"Exp2";
      goto LABEL_20;
    case 24:
      v13 = MEMORY[0x277CBEC10];
      v3 = [MEMORY[0x277CBEC10] mutableCopy];
      [v3 setObject:@"Neuron" forKeyedSubscript:kMLCANENetUnitType[0]];
      [v3 setObject:@"Log2" forKeyedSubscript:@"Type"];
      v6 = [v13 mutableCopy];
      [v6 setObject:@"GOC" forKeyedSubscript:kMLCANENetUnitType[0]];
      v17 = 0.69315;
      v16 = 0;
      ANE_ConvertFp32ToInt16(&v17, &v16);
      v14 = [MEMORY[0x277CCABB0] numberWithShort:v16];
      [v6 setObject:v14 forKeyedSubscript:@"ScaleScalar"];

LABEL_18:
      [v2 addObject:v3];
      [v2 addObject:v6];

      goto LABEL_21;
    case 25:
      v3 = [MEMORY[0x277CBEC10] mutableCopy];
      [v3 setObject:@"Neuron" forKeyedSubscript:kMLCANENetUnitType[0]];
      v4 = @"Log2";
      goto LABEL_20;
    case 28:
      v3 = [MEMORY[0x277CBEC10] mutableCopy];
      [v3 setObject:@"ElementWise" forKeyedSubscript:kMLCANENetUnitType[0]];
      v4 = @"Min";
      goto LABEL_20;
    case 29:
      v3 = [MEMORY[0x277CBEC10] mutableCopy];
      [v3 setObject:@"ElementWise" forKeyedSubscript:kMLCANENetUnitType[0]];
      v4 = @"Max";
LABEL_20:
      [v3 setObject:v4 forKeyedSubscript:@"Type"];
      [v2 addObject:v3];
LABEL_21:

      v10 = [v2 copy];
      break;
    default:
      v9 = +[MLCLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ANE_BuildArithmeticParams_cold_1();
      }

      v10 = 0;
      break;
  }

  return v10;
}

id ANE_CreateArithmeticLayer(int a1)
{
  v2 = [MEMORY[0x277CBEBF8] mutableCopy];
  v3 = ANE_BuildArithmeticParams(a1);
  if (v3)
  {
    v4 = [_MLCANEArithmeticParameters arithmeticUnitParametersWith:v3];
    v5 = [MLCANEDeviceOps deviceOpsWithType:1 params:v4];
    if (v5)
    {
      [v2 addObject:v5];
    }

    v6 = v2;
  }

  else
  {
    v7 = +[MLCLog framework];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ANE_CreateArithmeticLayer_cold_1();
    }

    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

id ANE_CreateUnitsWithArithmeticOpeartion(int a1, void *a2, void *a3)
{
  v213[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CBEBF8];
  v8 = [MEMORY[0x277CBEBF8] mutableCopy];
  v9 = [v5 sourceTensors];
  v10 = [v5 resultTensors];
  v11 = [v10 objectAtIndexedSubscript:0];

  v182 = 0;
  v177 = [v7 mutableCopy];
  v176 = v9;
  if ([v9 count] != 2)
  {
LABEL_10:
    if (a1 <= 21)
    {
      if (a1 >= 3)
      {
        if (a1 == 3)
        {
          if ([v6 count] == 2)
          {
            v175 = v11;
            v22 = [v6 objectAtIndexedSubscript:0];
            [_MLCANEPlistBuilder createUnitWithLayer:v5 unitParams:v22];
            v24 = v23 = v9;

            v25 = [v5 label];
            v26 = [v25 stringByAppendingFormat:@"_%lu", objc_msgSend(v8, "count")];
            [v24 setObject:v26 forKeyedSubscript:@"Name"];

            v27 = [v6 objectAtIndexedSubscript:1];
            v28 = [_MLCANEPlistBuilder createUnitWithLayer:v5 unitParams:v27];

            v169 = v5;
            v29 = [v5 label];
            v30 = [v29 stringByAppendingFormat:@"_%lu", objc_msgSend(v8, "count") + 1];
            [v28 setObject:v30 forKeyedSubscript:@"Name"];

            v178 = 0;
            v31 = [v23 objectAtIndexedSubscript:1];
            ANE_GetTensorFeatureChannelsWithOnePrepended(v31, &v178);

            v32 = HIBYTE(v182);
            if (v182 == 1)
            {
              v33 = [v8 objectAtIndexedSubscript:0];
              if (v32)
              {
                [v8 objectAtIndexedSubscript:1];
                v34 = v172 = v6;
                v35 = [v24 objectForKeyedSubscript:@"InputType"];
                v36 = [v35 objectAtIndexedSubscript:1];
                v211 = v36;
                v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v211 count:1];
                [v24 setObject:v37 forKeyedSubscript:@"InputType"];

                v38 = [v176 objectAtIndexedSubscript:1];
                v39 = [v38 label];
                v210 = v39;
                v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v210 count:1];
                [v24 setObject:v40 forKeyedSubscript:@"Bottom"];

                v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v178];
                [v24 setObject:v41 forKeyedSubscript:@"OutputChannels"];

                v42 = [v176 objectAtIndexedSubscript:1];
                v209 = v42;
                v168 = [MEMORY[0x277CBEA60] arrayWithObjects:&v209 count:1];

                v43 = [v24 objectForKeyedSubscript:@"OutputType"];
                v208 = v43;
                v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v208 count:1];
                [v34 setObject:v44 forKeyedSubscript:@"InputType"];

                v45 = [v24 objectForKeyedSubscript:@"Name"];
                v207 = v45;
                v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v207 count:1];
                [v34 setObject:v46 forKeyedSubscript:@"Bottom"];

                v47 = [v33 objectForKeyedSubscript:@"OutputType"];
                v206[0] = v47;
                v48 = [v34 objectForKeyedSubscript:@"OutputType"];
                v206[1] = v48;
                v49 = [MEMORY[0x277CBEA60] arrayWithObjects:v206 count:2];
                [v28 setObject:v49 forKeyedSubscript:@"InputType"];

                v50 = [v33 objectForKeyedSubscript:@"Name"];
                v205[0] = v50;
                v51 = [v34 objectForKeyedSubscript:@"Name"];
                v205[1] = v51;
                v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v205 count:2];
                [v28 setObject:v52 forKeyedSubscript:@"Bottom"];

                v53 = v33;
                v54 = v177;

                v6 = v172;
              }

              else
              {
                v134 = [v24 objectForKeyedSubscript:@"InputType"];
                v135 = [v134 objectAtIndexedSubscript:1];
                v204 = v135;
                v136 = [MEMORY[0x277CBEA60] arrayWithObjects:&v204 count:1];
                [v24 setObject:v136 forKeyedSubscript:@"InputType"];

                v137 = [v176 objectAtIndexedSubscript:1];
                v138 = [v137 label];
                v203 = v138;
                v139 = [MEMORY[0x277CBEA60] arrayWithObjects:&v203 count:1];
                [v24 setObject:v139 forKeyedSubscript:@"Bottom"];

                v140 = [v176 objectAtIndexedSubscript:1];
                v202 = v140;
                v168 = [MEMORY[0x277CBEA60] arrayWithObjects:&v202 count:1];

                v141 = [v33 objectForKeyedSubscript:@"OutputType"];
                v201[0] = v141;
                v142 = [v24 objectForKeyedSubscript:@"OutputType"];
                v201[1] = v142;
                v143 = [MEMORY[0x277CBEA60] arrayWithObjects:v201 count:2];
                [v28 setObject:v143 forKeyedSubscript:@"InputType"];

                v144 = v33;
                v145 = [v33 objectForKeyedSubscript:@"Name"];
                v200[0] = v145;
                v146 = [v24 objectForKeyedSubscript:@"Name"];
                v200[1] = v146;
                v147 = [MEMORY[0x277CBEA60] arrayWithObjects:v200 count:2];
                [v28 setObject:v147 forKeyedSubscript:@"Bottom"];

                v148 = [v177 objectAtIndexedSubscript:0];
                v199[0] = v148;
                v149 = [v176 objectAtIndexedSubscript:1];
                v199[1] = v149;
                v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v199 count:2];
              }
            }

            else if (HIBYTE(v182))
            {
              [v8 objectAtIndexedSubscript:0];
              v110 = v173 = v6;
              v111 = [v24 objectForKeyedSubscript:@"InputType"];
              v112 = [v111 objectAtIndexedSubscript:1];
              v198 = v112;
              v113 = [MEMORY[0x277CBEA60] arrayWithObjects:&v198 count:1];
              [v24 setObject:v113 forKeyedSubscript:@"InputType"];

              v114 = [v176 objectAtIndexedSubscript:1];
              v115 = [v114 label];
              v197 = v115;
              v116 = [MEMORY[0x277CBEA60] arrayWithObjects:&v197 count:1];
              [v24 setObject:v116 forKeyedSubscript:@"Bottom"];

              v117 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v178];
              [v24 setObject:v117 forKeyedSubscript:@"OutputChannels"];

              v118 = [v176 objectAtIndexedSubscript:1];
              v196 = v118;
              v168 = [MEMORY[0x277CBEA60] arrayWithObjects:&v196 count:1];

              v119 = [v24 objectForKeyedSubscript:@"OutputType"];
              v195 = v119;
              v120 = [MEMORY[0x277CBEA60] arrayWithObjects:&v195 count:1];
              [v110 setObject:v120 forKeyedSubscript:@"InputType"];

              v121 = [v24 objectForKeyedSubscript:@"Name"];
              v194 = v121;
              v122 = [MEMORY[0x277CBEA60] arrayWithObjects:&v194 count:1];
              [v110 setObject:v122 forKeyedSubscript:@"Bottom"];

              v123 = [v28 objectForKeyedSubscript:@"InputType"];
              v124 = [v123 objectAtIndexedSubscript:0];
              v193[0] = v124;
              v125 = [v110 objectForKeyedSubscript:@"OutputType"];
              v193[1] = v125;
              v126 = [MEMORY[0x277CBEA60] arrayWithObjects:v193 count:2];
              [v28 setObject:v126 forKeyedSubscript:@"InputType"];

              v127 = [v176 objectAtIndexedSubscript:0];
              v128 = [v127 label];
              v192[0] = v128;
              v129 = [v110 objectForKeyedSubscript:@"Name"];
              v192[1] = v129;
              v130 = [MEMORY[0x277CBEA60] arrayWithObjects:v192 count:2];
              [v28 setObject:v130 forKeyedSubscript:@"Bottom"];

              v131 = [v176 objectAtIndexedSubscript:0];
              v191[0] = v131;
              v132 = [v177 objectAtIndexedSubscript:0];
              v191[1] = v132;
              v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v191 count:2];

              v6 = v173;
            }

            else
            {
              v150 = [v24 objectForKeyedSubscript:@"InputType"];
              v151 = [v150 objectAtIndexedSubscript:1];
              v190 = v151;
              v152 = [MEMORY[0x277CBEA60] arrayWithObjects:&v190 count:1];
              [v24 setObject:v152 forKeyedSubscript:@"InputType"];

              v153 = [v176 objectAtIndexedSubscript:1];
              v154 = [v153 label];
              v189 = v154;
              v155 = [MEMORY[0x277CBEA60] arrayWithObjects:&v189 count:1];
              [v24 setObject:v155 forKeyedSubscript:@"Bottom"];

              v156 = [v176 objectAtIndexedSubscript:1];
              v188 = v156;
              v168 = [MEMORY[0x277CBEA60] arrayWithObjects:&v188 count:1];

              v157 = [v28 objectForKeyedSubscript:@"InputType"];
              v158 = [v157 objectAtIndexedSubscript:0];
              v187[0] = v158;
              v159 = [v24 objectForKeyedSubscript:@"OutputType"];
              v187[1] = v159;
              v160 = [MEMORY[0x277CBEA60] arrayWithObjects:v187 count:2];
              [v28 setObject:v160 forKeyedSubscript:@"InputType"];

              v161 = [v176 objectAtIndexedSubscript:0];
              v162 = [v161 label];
              v186[0] = v162;
              v163 = [v24 objectForKeyedSubscript:@"Name"];
              v186[1] = v163;
              v164 = [MEMORY[0x277CBEA60] arrayWithObjects:v186 count:2];
              [v28 setObject:v164 forKeyedSubscript:@"Bottom"];

              v54 = v176;
            }

            v5 = v169;
            if (ANE_ValidateNeuronUnit(v168, v24, 1))
            {
              [v8 addObject:v24];
              if (ANE_ValidateElementWiseUnit(v54, v28, 1))
              {
                [v8 addObject:v28];

                v11 = v175;
                goto LABEL_54;
              }

              v165 = +[MLCLog framework];
              if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
              {
                ANE_CreateUnitsWithArithmeticOpeartion_cold_11();
              }
            }

            else
            {
              v165 = +[MLCLog framework];
              if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
              {
                ANE_CreateUnitsWithArithmeticOpeartion_cold_10();
              }
            }

            v80 = 0;
            v11 = v175;
            v9 = v176;
            goto LABEL_93;
          }

          v79 = +[MLCLog framework];
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            ANE_CreateUnitsWithArithmeticOpeartion_cold_9();
          }

LABEL_31:

          v80 = 0;
          goto LABEL_93;
        }

        goto LABEL_34;
      }

LABEL_25:
      if ([v6 count] == 1)
      {
        v67 = [v6 objectAtIndexedSubscript:0];
        v24 = [_MLCANEPlistBuilder createUnitWithLayer:v5 unitParams:v67];

        v68 = [v24 objectForKeyedSubscript:@"Bottom"];
        v69 = v5;
        v70 = HIBYTE(v182);
        if (v182 == 1)
        {
          v71 = v69;
          v72 = [v69 label];
          v73 = [v72 stringByAppendingFormat:@"_%lu", objc_msgSend(v8, "count")];
          [v24 setObject:v73 forKeyedSubscript:@"Name"];

          v74 = [v8 objectAtIndexedSubscript:0];
          v75 = [v74 objectForKeyedSubscript:@"Name"];
          [v68 setObject:v75 atIndexedSubscript:0];

          if (v70)
          {
            v76 = [v8 objectAtIndexedSubscript:1];
            v77 = [v76 objectForKeyedSubscript:@"Name"];
            [v68 setObject:v77 atIndexedSubscript:1];

            v78 = v177;
          }

          else
          {
            v102 = [v176 objectAtIndexedSubscript:1];
            v103 = [v102 label];
            [v68 setObject:v103 atIndexedSubscript:1];

            v104 = [v177 objectAtIndexedSubscript:0];
            v213[0] = v104;
            v105 = [v176 objectAtIndexedSubscript:1];
            v213[1] = v105;
            v78 = [MEMORY[0x277CBEA60] arrayWithObjects:v213 count:2];
          }

          v5 = v71;
        }

        else
        {
          v81 = v69;
          if (HIBYTE(v182))
          {
            v5 = v69;
            v82 = [v69 label];
            v83 = [v82 stringByAppendingFormat:@"_%lu", objc_msgSend(v8, "count")];
            [v24 setObject:v83 forKeyedSubscript:@"Name"];

            v84 = [v176 objectAtIndexedSubscript:0];
            v85 = [v84 label];
            [v68 setObject:v85 atIndexedSubscript:0];

            v86 = [v8 objectAtIndexedSubscript:0];
            v87 = [v86 objectForKeyedSubscript:@"Name"];
            [v68 setObject:v87 atIndexedSubscript:1];

            v88 = [v176 objectAtIndexedSubscript:0];
            v212[0] = v88;
            v89 = [v177 objectAtIndexedSubscript:0];
            v212[1] = v89;
            v78 = [MEMORY[0x277CBEA60] arrayWithObjects:v212 count:2];
          }

          else
          {
            v78 = v176;
            v5 = v81;
          }
        }

        if ((ANE_ValidateElementWiseUnit(v78, v24, 1) & 1) == 0)
        {
          v106 = +[MLCLog framework];
          if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
          {
            ANE_CreateUnitsWithArithmeticOpeartion_cold_11();
          }

          goto LABEL_91;
        }

        [v8 addObject:v24];

        goto LABEL_54;
      }

      v79 = +[MLCLog framework];
      if (!os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

LABEL_30:
      ANE_CreateUnitsWithArithmeticOpeartion_cold_12();
      goto LABEL_31;
    }

    if ((a1 - 28) < 2)
    {
      goto LABEL_25;
    }

    if (a1 == 22)
    {
      if ([v6 count] != 2)
      {
        v79 = +[MLCLog framework];
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          ANE_CreateUnitsWithArithmeticOpeartion_cold_6();
        }

        goto LABEL_31;
      }

      v92 = [v6 objectAtIndexedSubscript:0];
      [_MLCANEPlistBuilder createUnitWithLayer:v5 unitParams:v92];
      v24 = v93 = v9;

      v94 = [v5 label];
      v95 = [v94 stringByAppendingString:@"_0"];
      [v24 setObject:v95 forKeyedSubscript:@"Name"];

      if (ANE_ValidateGOCUnit(v93, v24, 1))
      {
        [v8 addObject:v24];
        v96 = [v6 objectAtIndexedSubscript:1];
        v60 = [_MLCANEPlistBuilder createUnitWithLayer:v5 unitParams:v96];

        v61 = v5;
        v97 = [v5 label];
        v98 = [v97 stringByAppendingString:@"_1"];
        [v60 setObject:v98 forKeyedSubscript:@"Name"];

        v99 = [v24 objectForKeyedSubscript:@"Name"];
        v185 = v99;
        v100 = [MEMORY[0x277CBEA60] arrayWithObjects:&v185 count:1];
        [v60 setObject:v100 forKeyedSubscript:@"Bottom"];

        if ((ANE_ValidateNeuronUnit(v93, v60, 1) & 1) == 0)
        {
          v66 = +[MLCLog framework];
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
LABEL_88:
            ANE_CreateUnitsWithArithmeticOpeartion_cold_4();
          }

LABEL_89:

LABEL_90:
          goto LABEL_91;
        }

LABEL_42:
        [v8 addObject:v60];

        v5 = v61;
        goto LABEL_54;
      }

      v133 = +[MLCLog framework];
      if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }
    }

    else
    {
      if (a1 != 24)
      {
LABEL_34:
        if ([v6 count] == 1)
        {
          v90 = [v6 objectAtIndexedSubscript:0];
          v24 = [_MLCANEPlistBuilder createUnitWithLayer:v5 unitParams:v90];

          v91 = [v24 objectForKeyedSubscript:@"Type"];
          LODWORD(v90) = [v91 isEqualToString:@"Neuron"];

          if (v90)
          {
            if ((ANE_ValidateNeuronUnit(v176, v24, 1) & 1) == 0)
            {
              v60 = +[MLCLog framework];
              if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
              {
                ANE_CreateUnitsWithArithmeticOpeartion_cold_16();
              }

              goto LABEL_90;
            }
          }

          else
          {
            v107 = [v176 objectAtIndexedSubscript:0];
            v183 = v107;
            v108 = [MEMORY[0x277CBEA60] arrayWithObjects:&v183 count:1];
            v109 = ANE_ValidateElementWiseUnit(v108, v24, 1);

            if ((v109 & 1) == 0)
            {
              v60 = +[MLCLog framework];
              if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
              {
                ANE_CreateUnitsWithArithmeticOpeartion_cold_15();
              }

              goto LABEL_90;
            }
          }

          [v8 addObject:v24];
LABEL_54:

          v80 = [v8 copy];
LABEL_92:
          v9 = v176;
          goto LABEL_93;
        }

        v79 = +[MLCLog framework];
        if (!os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if ([v6 count] != 2)
      {
        v79 = +[MLCLog framework];
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          ANE_CreateUnitsWithArithmeticOpeartion_cold_3();
        }

        goto LABEL_31;
      }

      v55 = [v6 objectAtIndexedSubscript:0];
      [_MLCANEPlistBuilder createUnitWithLayer:v5 unitParams:v55];
      v24 = v56 = v9;

      v57 = [v5 label];
      v58 = [v57 stringByAppendingString:@"_0"];
      [v24 setObject:v58 forKeyedSubscript:@"Name"];

      if (ANE_ValidateNeuronUnit(v56, v24, 1))
      {
        [v8 addObject:v24];
        v59 = [v6 objectAtIndexedSubscript:1];
        v60 = [_MLCANEPlistBuilder createUnitWithLayer:v5 unitParams:v59];

        v61 = v5;
        v62 = [v5 label];
        v63 = [v62 stringByAppendingString:@"_1"];
        [v60 setObject:v63 forKeyedSubscript:@"Name"];

        v64 = [v24 objectForKeyedSubscript:@"Name"];
        v184 = v64;
        v65 = [MEMORY[0x277CBEA60] arrayWithObjects:&v184 count:1];
        [v60 setObject:v65 forKeyedSubscript:@"Bottom"];

        if ((ANE_ValidateGOCUnit(v56, v60, 1) & 1) == 0)
        {
          v66 = +[MLCLog framework];
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_88;
          }

          goto LABEL_89;
        }

        goto LABEL_42;
      }

      v133 = +[MLCLog framework];
      if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
      {
LABEL_73:
        ANE_CreateUnitsWithArithmeticOpeartion_cold_4();
      }
    }

LABEL_91:
    v80 = 0;
    goto LABEL_92;
  }

  v170 = a1;
  v171 = v6;
  v174 = v11;
  v181 = 0;
  ANE_GetTensor4DShapeWithOnePrepended(v11, &v181);
  v12 = v181;
  if (![v9 count])
  {
LABEL_9:

    v6 = v171;
    v11 = v174;
    a1 = v170;
    goto LABEL_10;
  }

  v13 = 0;
  while (1)
  {
    v14 = [v9 objectAtIndexedSubscript:v13];
    v179 = 0;
    v180 = 0;
    v15 = [_MLCANEPlistBuilder createBroadcastUnitWithSourceTensor:v14 targetShape:v12 layer:v5 broadcastUnit:&v180 broadcastResultTensor:&v179];
    v16 = v180;
    v17 = v179;
    if (v15 == 1)
    {
      goto LABEL_8;
    }

    if (v15 != 2)
    {
      break;
    }

    if (!v16)
    {
      v101 = +[MLCLog framework];
      if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
      {
        ANE_CreateUnitsWithArithmeticOpeartion_cold_1();
      }

      v16 = 0;
      goto LABEL_48;
    }

    *(&v182 + v13) = 1;
    v18 = [v5 label];
    [v18 stringByAppendingFormat:@"_%lu", objc_msgSend(v8, "count")];
    v19 = v8;
    v21 = v20 = v5;
    [v16 setObject:v21 forKeyedSubscript:@"Name"];

    v5 = v20;
    v8 = v19;
    v9 = v176;

    [v8 addObject:v16];
    [v177 addObject:v17];
LABEL_8:

    if (++v13 >= [v9 count])
    {
      goto LABEL_9;
    }
  }

  v101 = +[MLCLog framework];
  if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
  {
    ANE_CreateUnitsWithArithmeticOpeartion_cold_2();
  }

LABEL_48:

  v80 = 0;
  v6 = v171;
  v11 = v174;
LABEL_93:

  v166 = *MEMORY[0x277D85DE8];

  return v80;
}

id ANE_CompileArithmeticLayer(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = [a3 parentLayers];
  v6 = [v5 objectAtIndexedSubscript:0];

  v7 = [v4 objectAtIndexedSubscript:0];

  v8 = [v7 params];
  v9 = [v8 arithmeticParams];

  v10 = ANE_CreateUnitsWithArithmeticOpeartion([v6 operation], v6, v9);
  v11 = v10;
  if (v10)
  {
    v12 = [v10 copy];
  }

  else
  {
    v13 = +[MLCLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileArithmeticLayer_cold_1();
    }

    v12 = 0;
  }

  return v12;
}

uint64_t ANE_IsSupportedLayer(void *a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (ANE_IsAneCompiledLayer(v1))
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0 && ![v1 skipLayer])
    {
      goto LABEL_28;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v5 = [v1 resultTensors];
    v6 = [v5 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v44;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v44 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v43 + 1) + 8 * i);
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v11 = [v10 childLayers];
          v12 = [v11 countByEnumeratingWithState:&v39 objects:v51 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v40;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v40 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                if (!ANE_IsSupportedLayer(*(*(&v39 + 1) + 8 * j)))
                {

LABEL_28:
                  v2 = 0;
                  goto LABEL_29;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v39 objects:v51 count:16];
            }

            while (v13);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v7);
    }

    if (isKindOfClass)
    {
      v2 = [v1 isLastLayer] ^ 1;
      goto LABEL_29;
    }

LABEL_2:
    v2 = 1;
    goto LABEL_29;
  }

  v3 = v1;
  if (([v3 isLastLayer] & 1) != 0 || objc_msgSend(v3, "paddingType"))
  {
    v2 = 0;
    goto LABEL_7;
  }

  v18 = [v3 resultTensors];
  v19 = [v18 objectAtIndexedSubscript:0];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v20 = [v19 childLayers];
  v21 = [v20 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (!v21)
  {
    v2 = 1;
    goto LABEL_55;
  }

  v22 = v21;
  v23 = *v48;
  v38 = v19;
  while (2)
  {
    for (k = 0; k != v22; ++k)
    {
      if (*v48 != v23)
      {
        objc_enumerationMutation(v20);
      }

      v25 = *(*(&v47 + 1) + 8 * k);
      if (!ANE_IsAneCompiledLayer(v25))
      {
LABEL_50:
        v2 = 0;
        v19 = v38;
        goto LABEL_55;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = [v25 deviceOps];
        v27 = [v26 objectAtIndexedSubscript:0];

        v28 = [v27 units];
        v29 = ANE_FindUnitWithType(@"Conv", v28);

        if (!v29 || !applyAndCheckPaddingSizes(v3, v29, 1))
        {
          goto LABEL_53;
        }

        continue;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_50;
      }

      v27 = v25;
      v30 = [v27 descriptor];
      v31 = [v30 poolingType];

      if (v31 != 1)
      {
        if (v31 == 2)
        {
          v32 = [v27 descriptor];
          v33 = [v32 countIncludesPadding];

          if (v33)
          {
            goto LABEL_44;
          }

          v19 = v38;
        }

        else
        {
          v29 = +[MLCLog framework];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            ANE_IsSupportedLayer_cold_1(v27, v29);
          }

LABEL_53:
          v19 = v38;
        }

        v2 = 0;
        goto LABEL_55;
      }

LABEL_44:
      v34 = [v27 deviceOps];
      v29 = [v34 objectAtIndexedSubscript:0];

      v35 = [v29 units];
      v36 = ANE_FindUnitWithType(@"Pooling", v35);

      if (!v36)
      {
        goto LABEL_53;
      }

      v37 = applyAndCheckPaddingSizes(v3, v36, 0);

      if (!v37)
      {
        goto LABEL_50;
      }
    }

    v22 = [v20 countByEnumeratingWithState:&v47 objects:v53 count:16];
    v2 = 1;
    v19 = v38;
    if (v22)
    {
      continue;
    }

    break;
  }

LABEL_55:

LABEL_7:
LABEL_29:

  v16 = *MEMORY[0x277D85DE8];
  return v2;
}

void buildANESubgraph(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7)
{
  v132 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = v15;
  v19 = v17;
  v20 = a6;
  v91 = [MEMORY[0x277CBEBF8] mutableCopy];
  [v14 addObject:v13];
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v87 = v13;
  v21 = v13;
  v22 = v16;
  v23 = [v21 sourceTensors];
  v24 = [v23 countByEnumeratingWithState:&v112 objects:v124 count:16];
  if (v24)
  {
    v26 = *v113;
    *&v25 = 136315394;
    v73 = v25;
    v94 = v19;
    v95 = v23;
    v86 = v15;
    v90 = v16;
    v80 = *v113;
    do
    {
      v27 = 0;
      v79 = v24;
      do
      {
        if (*v113 != v26)
        {
          v28 = v27;
          objc_enumerationMutation(v23);
          v27 = v28;
        }

        v83 = v27;
        v29 = *(*(&v112 + 1) + 8 * v27);
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v30 = v29;
        v31 = [MEMORY[0x277CBEBF8] mutableCopy];
        v32 = [v30 parentLayers];
        v33 = [v32 count];

        obj = v33;
        if (!v33)
        {
LABEL_24:
          v49 = v31;
          v22 = v90;
          goto LABEL_32;
        }

        v34 = 0;
        v92 = v30;
        while (1)
        {
          v35 = [v30 parentLayers];
          v36 = [v35 objectAtIndexedSubscript:v34];

          if ([v36 skipLayer])
          {
            break;
          }

          [v31 addObject:v36];
LABEL_23:

          ++v34;
          v30 = v92;
          if (v34 == obj)
          {
            goto LABEL_24;
          }
        }

        v84 = v34;
        if (v36)
        {
          while ([v36 skipLayer])
          {
            v37 = [v36 sourceTensors];
            v38 = [v37 count];

            if (v38 != 1)
            {
              v50 = +[MLCLog framework];
              v19 = v94;
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                *buf = v73;
                v129 = "getParentLayers";
                v130 = 2112;
                v131 = v36;
                _os_log_error_impl(&dword_238C1D000, v50, OS_LOG_TYPE_ERROR, "%s: Cannot find parents for a layer = %@", buf, 0x16u);
              }

              v22 = v90;
              goto LABEL_31;
            }

            v39 = [v36 sourceTensors];
            v40 = [v39 lastObject];
            v41 = [v40 parentLayers];
            v42 = [v41 lastObject];

            v36 = v42;
            if (!v42)
            {
              goto LABEL_25;
            }
          }

          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v43 = [v36 sourceTensors];
          v44 = [v43 countByEnumeratingWithState:&v116 objects:v125 count:16];
          if (v44)
          {
            v45 = v44;
            v46 = *v117;
            do
            {
              for (i = 0; i != v45; ++i)
              {
                if (*v117 != v46)
                {
                  objc_enumerationMutation(v43);
                }

                v48 = [*(*(&v116 + 1) + 8 * i) parentLayers];
                [v31 addObjectsFromArray:v48];
              }

              v45 = [v43 countByEnumeratingWithState:&v116 objects:v125 count:16];
            }

            while (v45);
          }

          v34 = v84;
          v18 = v86;
          v19 = v94;
          goto LABEL_23;
        }

LABEL_25:
        v36 = +[MLCLog framework];
        v22 = v90;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          buildANESubgraph_cold_1(v126, &v127, v36);
        }

        v19 = v94;
LABEL_31:

        v49 = MEMORY[0x277CBEBF8];
        v30 = v92;
LABEL_32:

        v51 = [v49 countByEnumeratingWithState:&v108 objects:v123 count:16];
        v23 = v95;
        if (v51)
        {
          v52 = *v109;
          v78 = *v109;
          while (2)
          {
            v53 = 0;
            v77 = v51;
            do
            {
              if (*v109 != v52)
              {
                objc_enumerationMutation(v49);
              }

              v54 = *(*(&v108 + 1) + 8 * v53);
              if ([v22 doesLayer:v54 dominatesSubgraph:{v18, v73}] & 1) != 0 || (objc_msgSend(v19, "containsObject:", v54))
              {
LABEL_70:

                goto LABEL_71;
              }

              v106 = 0u;
              v107 = 0u;
              v104 = 0u;
              v105 = 0u;
              obja = [v54 resultTensors];
              v81 = [obja countByEnumeratingWithState:&v104 objects:v122 count:16];
              if (v81)
              {
                v55 = *v105;
                v85 = v49;
                v74 = v54;
                v75 = v53;
                v76 = *v105;
                do
                {
                  v56 = 0;
                  do
                  {
                    if (*v105 != v55)
                    {
                      v57 = v56;
                      objc_enumerationMutation(obja);
                      v56 = v57;
                    }

                    v82 = v56;
                    v58 = *(*(&v104 + 1) + 8 * v56);
                    v100 = 0u;
                    v101 = 0u;
                    v102 = 0u;
                    v103 = 0u;
                    v93 = [v58 childLayers];
                    v59 = [v93 countByEnumeratingWithState:&v100 objects:v121 count:16];
                    if (v59)
                    {
                      v60 = v59;
                      v61 = *v101;
                      do
                      {
                        for (j = 0; j != v60; ++j)
                        {
                          if (*v101 != v61)
                          {
                            objc_enumerationMutation(v93);
                          }

                          v63 = *(*(&v100 + 1) + 8 * j);
                          v64 = [v63 key];
                          v65 = [v20 objectForKeyedSubscript:v64];
                          if ([v65 unsignedIntegerValue] >= a7)
                          {

                            v23 = v95;
                          }

                          else
                          {
                            v66 = [v14 containsObject:v63];

                            v23 = v95;
                            if ((v66 & 1) == 0)
                            {

                              v49 = v85;
                              v18 = v86;
                              v22 = v90;
                              v19 = v94;
                              goto LABEL_70;
                            }
                          }

                          v19 = v94;
                        }

                        v60 = [v93 countByEnumeratingWithState:&v100 objects:v121 count:16];
                      }

                      while (v60);
                    }

                    v56 = v82 + 1;
                    v49 = v85;
                    v18 = v86;
                    v22 = v90;
                    v54 = v74;
                    v53 = v75;
                    v55 = v76;
                  }

                  while (v82 + 1 != v81);
                  v67 = [obja countByEnumeratingWithState:&v104 objects:v122 count:16];
                  v55 = v76;
                  v81 = v67;
                }

                while (v67);
              }

              [v91 addObject:v54];
              ++v53;
              v52 = v78;
            }

            while (v53 != v77);
            v51 = [v49 countByEnumeratingWithState:&v108 objects:v123 count:16];
            v52 = v78;
            if (v51)
            {
              continue;
            }

            break;
          }
        }

        v27 = v83 + 1;
        v26 = v80;
      }

      while (v83 + 1 != v79);
      v24 = [v23 countByEnumeratingWithState:&v112 objects:v124 count:16];
      v26 = v80;
    }

    while (v24);
  }

  if ([v91 count])
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v23 = v91;
    v68 = [v23 countByEnumeratingWithState:&v96 objects:v120 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v97;
      do
      {
        for (k = 0; k != v69; ++k)
        {
          if (*v97 != v70)
          {
            objc_enumerationMutation(v23);
          }

          buildANESubgraph(*(*(&v96 + 1) + 8 * k), v14, v18, v22, v19, v20, a7);
        }

        v69 = [v23 countByEnumeratingWithState:&v96 objects:v120 count:16];
      }

      while (v69);
    }

LABEL_71:
  }

  v72 = *MEMORY[0x277D85DE8];
}

uint64_t applyAndCheckPaddingSizes(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = [a2 mutableCopy];
  ANE_ApplyPaddingSizes(v5, v6);
  if (a3)
  {
    v7 = ANE_ValidateConvolutionLayer(v5, v6);
  }

  else
  {
    v7 = ANE_ValidatePoolingLayer(v5, v6);
  }

  v8 = v7;

  return v8;
}

uint64_t canMergeANESubgraphsHelper(void *a1, void *a2, void *a3, void *a4)
{
  v69 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [v9 getDominanceFrontierForSubgraph:v8];
  v12 = [v11 mutableCopy];
  [v12 minusSet:v7];
  v13 = [v12 count];
  if (v13 == [v11 count] || (objc_msgSend(v9, "doesSubgraph:dominatesSubgraph:", v7, v12) & 1) != 0)
  {
    v14 = 0;
  }

  else
  {
    v47 = v12;
    v48 = v11;
    v50 = v7;
    v51 = v9;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    obj = v7;
    v15 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v63;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v63 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v62 + 1) + 8 * i);
          v21 = [v20 key];
          v22 = [v10 objectForKeyedSubscript:v21];
          if (v17 <= [v22 unsignedIntegerValue])
          {
            v23 = [v20 key];
            v24 = [v10 objectForKeyedSubscript:v23];
            v17 = [v24 unsignedIntegerValue];
          }
        }

        v16 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
      }

      while (v16);
    }

    else
    {
      v17 = 0;
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v49 = v8;
    v53 = v8;
    v25 = [v53 countByEnumeratingWithState:&v58 objects:v67 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = 0;
      v28 = *v59;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v59 != v28)
          {
            objc_enumerationMutation(v53);
          }

          v30 = *(*(&v58 + 1) + 8 * j);
          v31 = [v30 key];
          v32 = [v10 objectForKeyedSubscript:v31];
          if (v27 <= [v32 unsignedIntegerValue])
          {
            v33 = [v30 key];
            v34 = [v10 objectForKeyedSubscript:v33];
            v27 = [v34 unsignedIntegerValue];
          }
        }

        v26 = [v53 countByEnumeratingWithState:&v58 objects:v67 count:16];
      }

      while (v26);
    }

    else
    {
      v27 = 0;
    }

    if (v17 <= v27)
    {
      v35 = v27;
    }

    else
    {
      v35 = v17;
    }

    v9 = v51;
    [v51 getPostDominanceFrontierForSubgraph:obj];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v36 = v57 = 0u;
    v37 = [v36 countByEnumeratingWithState:&v54 objects:v66 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v55;
      v8 = v49;
      do
      {
        for (k = 0; k != v38; ++k)
        {
          if (*v55 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v54 + 1) + 8 * k);
          v42 = [v41 key];
          v43 = [v10 objectForKeyedSubscript:v42];
          if ([v43 unsignedIntegerValue] >= v35)
          {
          }

          else
          {
            v44 = [v53 containsObject:v41];

            if ((v44 & 1) == 0)
            {
              v14 = 0;
              goto LABEL_41;
            }
          }
        }

        v38 = [v36 countByEnumeratingWithState:&v54 objects:v66 count:16];
      }

      while (v38);
      v14 = 1;
LABEL_41:
      v9 = v51;
    }

    else
    {
      v14 = 1;
      v8 = v49;
    }

    v7 = v50;
    v12 = v47;
    v11 = v48;
  }

  v45 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __pruneANESubgraphs_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 count];

  v9 = [v7 numberWithUnsignedInteger:v8];
  v10 = [v9 compare:v6];

  return v10;
}

uint64_t setBNNSActivation(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 activationType];
  switch(v4)
  {
    case 0:
    case 3:
    case 6:
      goto LABEL_30;
    case 1:
      [v3 a];
      if (v5 == 0.0)
      {
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }

      goto LABEL_30;
    case 2:
      [v3 b];
      if (v6 == 0.0)
      {
        v4 = 7;
      }

      else
      {
        v4 = 20;
      }

      goto LABEL_30;
    case 4:
      v4 = 15;
      goto LABEL_30;
    case 5:
      [v3 a];
      v4 = 5;
      if (v9 == 1.0)
      {
        [v3 b];
        if (v10 == 1.0)
        {
          v4 = 4;
        }

        else
        {
          v4 = 5;
        }
      }

      goto LABEL_30;
    case 7:
      v4 = 16;
      goto LABEL_30;
    case 8:
      v4 = 17;
      goto LABEL_30;
    case 9:
      v4 = 18;
      goto LABEL_30;
    case 10:
      v4 = 19;
      goto LABEL_30;
    case 11:
      v4 = 22;
      goto LABEL_30;
    case 12:
      v4 = 23;
      goto LABEL_30;
    case 13:
      v4 = 24;
      goto LABEL_30;
    case 14:
      v4 = 25;
      goto LABEL_30;
    case 15:
      v4 = 26;
      goto LABEL_30;
    case 16:
      v4 = 27;
      goto LABEL_30;
    case 17:
      v4 = 28;
      goto LABEL_30;
    case 18:
      *a1 = 12;
      *(a1 + 4) = 0x3D3727133F4C422ALL;
      goto LABEL_31;
    case 19:
      v4 = 30;
      goto LABEL_30;
    case 20:
      v4 = 8;
LABEL_30:
      *a1 = v4;
      [v3 a];
      *(a1 + 4) = v11;
      [v3 b];
      *(a1 + 8) = v12;
LABEL_31:
      v8 = 1;
      break;
    default:
      v7 = +[MLCLog framework];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        setBNNSActivation_cold_1(v3);
      }

      v8 = 0;
      break;
  }

  return v8;
}

id softLinkClass_ANEIOSurfaceObject()
{
  if (softLinkClass_ANEIOSurfaceObject_onceToken != -1)
  {
    softLinkClass_ANEIOSurfaceObject_cold_1();
  }

  v1 = softLinkClass_ANEIOSurfaceObject_softLinkClass_ANEIOSurfaceObject;

  return v1;
}

void *__AppleNeuralEngineLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleNeuralEngine.framework/AppleNeuralEngine", 1);
  AppleNeuralEngineLibrary_frameworkLibrary = result;
  return result;
}

id softLinkClass_ANEDeviceInfo()
{
  if (softLinkClass_ANEDeviceInfo_onceToken != -1)
  {
    softLinkClass_ANEDeviceInfo_cold_1();
  }

  v1 = softLinkClass_ANEDeviceInfo_softLinkClass_ANEDeviceInfo;

  return v1;
}

void *__AppleNeuralEngineLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleNeuralEngine.framework/AppleNeuralEngine", 1);
  AppleNeuralEngineLibrary_frameworkLibrary_0 = result;
  return result;
}

void sub_238C5068C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return [v0 deviceOpType];
}

unint64_t *hashCombine_0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = &a9;
  v9 = *result;
  v10 = 11;
  do
  {
    v11 = v12;
    v12 += 8;
    v9 ^= *v11 + (v9 << 6) + (v9 >> 2) + 2654435769u;
    --v10;
  }

  while (v10);
  *result = v9;
  return result;
}

uint64_t ANE_BuildConvolutionParams(void *a1, void *a2, void *a3)
{
  v34[3] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  [v5 setObject:@"Conv" forKeyedSubscript:kMLCANENetUnitType[0]];
  v8 = [v6 convolutionType];
  switch(v8)
  {
    case 2:
      goto LABEL_4;
    case 1:
      [v5 setObject:@"DeConv" forKeyedSubscript:@"Type"];
      goto LABEL_8;
    case 0:
LABEL_4:
      [v5 setObject:@"Conv" forKeyedSubscript:@"Type"];
      if ([v6 dilationRateInX] > 1 || objc_msgSend(v6, "dilationRateInY") >= 2)
      {
        [v5 setObject:@"DilatedConv" forKeyedSubscript:@"Type"];
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "dilationRateInX")}];
        [v5 setObject:v9 forKeyedSubscript:@"KernelDilationX"];

        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "dilationRateInY")}];
        [v5 setObject:v10 forKeyedSubscript:@"KernelDilationY"];
      }

LABEL_8:
      v11 = [MEMORY[0x277CCABB0] numberWithBool:0];
      [v5 setObject:v11 forKeyedSubscript:@"KernelGroupReuse"];

      v12 = [v7 descriptor];
      v13 = ANE_GetANECIRDataTypeWithMLCDataType([v12 dataType]);
      if (!v13)
      {
        v22 = +[MLCLog framework];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          ANE_BuildConvolutionParams_cold_2(v12);
        }

        v29 = 0;
        goto LABEL_22;
      }

      [v5 setObject:v13 forKeyedSubscript:@"KernelType"];
      v14 = [v12 shape];
      v15 = [v14 objectAtIndexedSubscript:3];
      [v5 setObject:v15 forKeyedSubscript:@"KernelWidth"];

      v16 = [v12 shape];
      v17 = [v16 objectAtIndexedSubscript:2];
      [v5 setObject:v17 forKeyedSubscript:@"KernelHeight"];

      [v5 setObject:&unk_284BA5A08 forKeyedSubscript:@"KernelDepth"];
      if ([v6 convolutionType] == 1)
      {
        v33 = v13;
        v18 = [v7 data];
        v19 = v7;
        v20 = [v18 length];

        v21 = malloc_type_malloc(v20, 0x26A4D018uLL);
        v22 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v21 length:v20 freeWhenDone:1];
        v23 = [v19 data];
        v7 = v19;
        v24 = +[MLCDataHelper convertOIHWtoIOHW:sourceOIHW:resultIOHW:inputFeatureChannelCount:outputFeatureChannelCount:](MLCDataHelper, "convertOIHWtoIOHW:sourceOIHW:resultIOHW:inputFeatureChannelCount:outputFeatureChannelCount:", v19, [v23 bytes], v21, objc_msgSend(v6, "inputFeatureChannelCount") / objc_msgSend(v6, "groupCount"), objc_msgSend(v6, "outputFeatureChannelCount"));

        if (!v24)
        {
          v30 = +[MLCLog framework];
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            ANE_BuildConvolutionParams_cold_1();
          }

          v29 = 0;
          v13 = v33;
          goto LABEL_22;
        }

        v25 = [v19 deviceMemory];
        [v25 setObject:v22 atIndexedSubscript:{objc_msgSend(v19, "deviceIndex")}];

        v13 = v33;
      }

      [v5 setObject:@"Dense" forKeyedSubscript:@"KernelMode"];
      v26 = [MEMORY[0x277CCABB0] numberWithBool:0];
      [v5 setObject:v26 forKeyedSubscript:@"KernelMutable"];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "strideInX")}];
      v34[0] = v22;
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "strideInY")}];
      v34[1] = v27;
      v34[2] = &unk_284BA5A08;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:3];
      [v5 setObject:v28 forKeyedSubscript:@"Step"];

      v29 = 1;
LABEL_22:

      goto LABEL_23;
  }

  v12 = +[MLCLog framework];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    ANE_BuildConvolutionParams_cold_3(v6);
  }

  v29 = 0;
LABEL_23:

  v31 = *MEMORY[0x277D85DE8];
  return v29;
}

id ANE_CreateConvolutionLayer(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = a3;
  v10 = a1;
  v11 = MEMORY[0x277CBEBF8];
  v12 = [MEMORY[0x277CBEBF8] mutableCopy];
  v13 = [MEMORY[0x277CBEC10] mutableCopy];
  v14 = ANE_BuildConvolutionParams(v13, v9, v10);

  if (v14)
  {
    if (v7)
    {
      v15 = [_MLCANEPlistBuilder buildBiasParamsWithBiases:v7];
      if (!v15)
      {
        v15 = +[MLCLog framework];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          ANE_CreateConvolutionLayer_cold_1();
        }

        goto LABEL_17;
      }

      if (v8)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v15 = 0;
      if (v8)
      {
LABEL_5:
        v16 = ANE_BuildNeuronParams(v8);
        if (!v16)
        {
          v17 = +[MLCLog framework];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            ANE_CreateConvolutionLayer_cold_2();
          }

          goto LABEL_16;
        }

        v17 = v16;
        v18 = 5;
LABEL_9:
        v19 = [_MLCANEConvolutionParameters convolutionUnitParametersWith:v13 biasParams:v15 neuronParams:v17];
        v20 = [MLCANEDeviceOps deviceOpsWithType:v18 params:v19];
        if (v20)
        {
          [v12 addObject:v20];
        }

        v11 = v12;

LABEL_16:
LABEL_17:

        goto LABEL_18;
      }
    }

    v17 = 0;
    v18 = 4;
    goto LABEL_9;
  }

LABEL_18:

  return v11;
}

uint64_t ANE_ValidateConvolutionLayer(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 sourceTensors];
  v5 = ANE_ValidateConvolutionUnit(v4, v3, 0);

  return v5;
}

id ANE_CreateUnitsWithConvolutionLayer(void *a1, void *a2, void *a3)
{
  v87[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = MEMORY[0x277CBEBF8];
  v9 = [MEMORY[0x277CBEBF8] mutableCopy];
  v10 = v5;
  v11 = [v8 mutableCopy];
  v12 = 6;
  do
  {
    [v11 addObject:&unk_284BA5A20];
    --v12;
  }

  while (v12);
  objc_opt_class();
  v84 = v9;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v80 = v7;
  v82 = v6;
  v79 = v10;
  v13 = v10;
  v14 = [v13 descriptor];
  v15 = [v13 sourceTensors];
  v16 = [v15 objectAtIndexedSubscript:0];

  v17 = [v13 resultTensors];
  v18 = [v17 objectAtIndexedSubscript:0];

  v73 = [v14 paddingPolicy];
  v85 = 1;
  v86 = 1;
  v78 = v16;
  ANE_GetTensorWidthAndHeightWithBatchFirst(v16, &v86, &v85);
  v19 = v86;
  v76 = v85;
  v77 = v18;
  ANE_GetTensorWidthAndHeightWithBatchFirst(v18, &v86, &v85);
  v20 = v86;
  v75 = v85;
  v21 = [v13 kernelWidth];
  v74 = [v13 kernelHeight];
  v22 = [v13 dilationRateInX];
  v72 = [v13 dilationRateInY];
  v23 = [v13 strideInX];
  v24 = [v13 strideInY];
  v25 = v14;
  if ([v14 convolutionType] != 1)
  {
    if (v73 == 2)
    {
      v32 = [v14 paddingSizeInY];
      v31 = [v14 paddingSizeInY];
      v34 = [v25 paddingSizeInX];
      v33 = [v25 paddingSizeInX];
    }

    else
    {
      v35 = v22 * (v21 - 1) - v19 + v23 * (v20 - 1) + 1;
      v36 = v35 & ~(v35 >> 63);
      v37 = (v72 * (v74 - 1) - v76 + v24 * (v75 - 1) + 1) & ~((v72 * (v74 - 1) - v76 + v24 * (v75 - 1) + 1) >> 63);
      v32 = v37 >> 1;
      v31 = v37 - (v37 >> 1);
      v34 = v36 >> 1;
      v33 = v36 - (v36 >> 1);
    }

    goto LABEL_11;
  }

  v26 = v20 - v23 * v19;
  v27 = __OFADD__(v26, v21);
  v28 = v26 + v21;
  if ((v28 < 0) ^ v27 | (v28 == 0))
  {
    v71 = +[MLCLog framework];
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      ANE_CreateUnitsWithConvolutionLayer_cold_2();
    }
  }

  else
  {
    v29 = v75 - v24 * v76;
    v27 = __OFADD__(v29, v74);
    v30 = v29 + v74;
    if (!((v30 < 0) ^ v27 | (v30 == 0)))
    {
      v31 = (v30 - v24) / 2;
      v32 = v30 - 1 - v31;
      v33 = (v28 - v23) / 2;
      v34 = v28 - 1 - v33;
LABEL_11:
      v38 = [MEMORY[0x277CCABB0] numberWithLong:v32];
      [v11 setObject:v38 atIndexedSubscript:0];

      v39 = [MEMORY[0x277CCABB0] numberWithLong:v31];
      [v11 setObject:v39 atIndexedSubscript:1];

      v40 = [MEMORY[0x277CCABB0] numberWithLong:v34];
      [v11 setObject:v40 atIndexedSubscript:2];

      v41 = [MEMORY[0x277CCABB0] numberWithLong:v33];
      [v11 setObject:v41 atIndexedSubscript:3];

      v7 = v80;
      v6 = v82;
      v10 = v79;
      v9 = v84;
LABEL_12:
      v42 = v11;
      goto LABEL_13;
    }

    v71 = +[MLCLog framework];
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      ANE_CreateUnitsWithConvolutionLayer_cold_1();
    }
  }

  v7 = v80;
  v6 = v82;
  v10 = v79;
  v9 = v84;

  v42 = MEMORY[0x277CBEBF8];
LABEL_13:

  if ([v42 count])
  {
    v43 = [v42 objectAtIndexedSubscript:0];
    [v6 setObject:v43 forKeyedSubscript:@"PadTop"];

    v44 = [v42 objectAtIndexedSubscript:1];
    [v6 setObject:v44 forKeyedSubscript:@"PadBot"];

    v45 = [v42 objectAtIndexedSubscript:2];
    [v6 setObject:v45 forKeyedSubscript:@"PadLeft"];

    v46 = [v42 objectAtIndexedSubscript:3];
    [v6 setObject:v46 forKeyedSubscript:@"PadRight"];

    [v6 setObject:&unk_284BA5A20 forKeyedSubscript:@"PadFront"];
    [v6 setObject:&unk_284BA5A20 forKeyedSubscript:@"PadBack"];
    [v6 setObject:@"Zero" forKeyedSubscript:@"PaddingMode"];
    v47 = [_MLCANEPlistBuilder createUnitWithLayer:v10 unitParams:v6];
    v86 = 1;
    v48 = [v10 resultTensors];
    v49 = [v48 objectAtIndexedSubscript:0];
    ANE_GetTensorFeatureChannelsWithBatchFirst(v49, &v86);

    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v86];
    [v47 setObject:v50 forKeyedSubscript:@"OutputChannels"];

    v51 = [v10 descriptor];
    v52 = [v51 convolutionType];
    v53 = MEMORY[0x277CCABB0];
    if (v52 == 2)
    {
      v54 = [v51 inputFeatureChannelCount];
    }

    else
    {
      v54 = [v51 groupCount];
    }

    v56 = [v53 numberWithUnsignedInteger:v54];
    [v47 setObject:v56 forKeyedSubscript:@"NumGroups"];

    if (ANE_ValidateConvolutionLayer(v10, v47))
    {
      v57 = v84;
      [v84 addObject:v47];
      if (!v7)
      {
LABEL_24:
        v55 = [v57 copy];
        v9 = v57;
LABEL_32:

        goto LABEL_33;
      }

      v83 = v6;
      v58 = [v10 label];
      v59 = [v58 stringByAppendingFormat:@"%@", @"_0"];

      [v47 setObject:v59 forKeyedSubscript:@"Name"];
      v81 = v7;
      v60 = [_MLCANEPlistBuilder createUnitWithLayer:v10 unitParams:v7];
      v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v86];
      [v60 setObject:v61 forKeyedSubscript:@"OutputChannels"];

      v62 = [v10 label];
      v63 = [v62 stringByAppendingFormat:@"%@", @"_1"];

      [v60 setObject:v63 forKeyedSubscript:@"Name"];
      v87[0] = v59;
      v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:1];
      [v60 setObject:v64 forKeyedSubscript:@"Bottom"];

      v65 = [v10 resultTensors];
      v66 = ANE_ValidateGOCUnit(v65, v60, 0);

      if (v66)
      {
        v57 = v84;
        [v84 addObject:v60];

        v7 = v81;
        v6 = v83;
        goto LABEL_24;
      }

      v68 = +[MLCLog framework];
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        ANE_CreateUnitsWithConvolutionLayer_cold_4();
      }

      v55 = 0;
      v7 = v81;
      v6 = v83;
    }

    else
    {
      v67 = +[MLCLog framework];
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        ANE_CreateUnitsWithConvolutionLayer_cold_3();
      }

      v55 = 0;
    }

    v9 = v84;
    goto LABEL_32;
  }

  v47 = +[MLCLog framework];
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    ANE_CreateUnitsWithConvolutionLayer_cold_5();
  }

  v55 = 0;
LABEL_33:

  v69 = *MEMORY[0x277D85DE8];

  return v55;
}

id ANE_CompileConvolutionLayer(void *a1, void *a2, void *a3)
{
  v93[1] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 objectAtIndexedSubscript:0];
  v9 = [v7 parentLayers];
  v10 = [v9 objectAtIndexedSubscript:0];

  v11 = [v6 objectAtIndexedSubscript:0];
  v12 = [v11 descriptor];
  v13 = [v12 dimensionCount];

  v14 = [v8 params];
  v15 = [MEMORY[0x277CBEBF8] mutableCopy];
  v16 = [v14 convolutionParams];
  v88 = [v16 mutableCopy];

  v17 = [v14 biasParams];
  v87 = [v17 mutableCopy];

  v18 = [v14 neuronParams];
  v19 = v18;
  if (v13 != 4)
  {
    v85 = v11;
    if (v13 == 3)
    {
      v80 = v5;
      v20 = objc_autoreleasePoolPush();
      v89 = 0;
      v90 = 0;
      v21 = [_MLCANEPlistBuilder createReshapeUnitsWithLayer:v10 reshapeUnits:&v90 reshapeResultTensors:&v89];
      v22 = v90;
      v78 = v89;
      if (v21)
      {
        v77 = v20;
        v82 = v14;
        v83 = v19;
        v23 = [v10 label];
        v24 = [v23 stringByAppendingFormat:@"_%lu", objc_msgSend(v15, "count")];
        v25 = [v22 objectAtIndexedSubscript:0];
        [v25 setObject:v24 forKeyedSubscript:@"Name"];

        v26 = [v22 objectAtIndexedSubscript:0];
        [v15 addObject:v26];

        v27 = ANE_CreateUnitsWithConvolutionLayer(v10, v88, v87);
        v28 = v27;
        if (v27)
        {
          v73 = v22;
          v74 = v8;
          v75 = v7;
          v76 = v6;
          v29 = v10;
          if ([v27 count])
          {
            v30 = 0;
            do
            {
              v31 = [v28 objectAtIndexedSubscript:v30];
              v32 = [v29 label];
              v33 = [v32 stringByAppendingFormat:@"_%lu", objc_msgSend(v15, "count")];
              [v31 setObject:v33 forKeyedSubscript:@"Name"];

              v34 = [v15 objectAtIndexedSubscript:{objc_msgSend(v15, "count") - 1}];
              v35 = [v34 objectForKeyedSubscript:@"Name"];
              v93[0] = v35;
              v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:1];
              [v31 setObject:v36 forKeyedSubscript:@"Bottom"];

              [v15 addObject:v31];
              ++v30;
            }

            while (v30 < [v28 count]);
          }

          v37 = [v29 label];
          v38 = [v37 stringByAppendingFormat:@"_%lu", objc_msgSend(v15, "count")];
          v22 = v73;
          v39 = [v73 objectAtIndexedSubscript:1];
          [v39 setObject:v38 forKeyedSubscript:@"Name"];

          v40 = [v15 objectAtIndexedSubscript:{objc_msgSend(v15, "count") - 1}];
          v41 = [v40 objectForKeyedSubscript:@"Name"];
          v92 = v41;
          v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
          v43 = [v73 objectAtIndexedSubscript:1];
          [v43 setObject:v42 forKeyedSubscript:@"Bottom"];

          v44 = [v73 objectAtIndexedSubscript:1];
          [v15 addObject:v44];
          v7 = v75;
          v6 = v76;
          v8 = v74;
          v10 = v29;
        }

        else
        {
          v44 = +[MLCLog framework];
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            ANE_CompileConvolutionLayer_cold_1();
          }
        }

        v11 = v85;

        objc_autoreleasePoolPop(v77);
        v19 = v83;
        v5 = v80;
        if (!v28)
        {
          v54 = 0;
          goto LABEL_33;
        }

        goto LABEL_24;
      }

      v55 = +[MLCLog framework];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        ANE_CompileConvolutionLayer_cold_2();
      }

      objc_autoreleasePoolPop(v20);
      v54 = 0;
      v5 = v80;
    }

    else
    {
      v47 = v10;
      v48 = v8;
      v49 = v7;
      v50 = v6;
      v51 = v5;
      v52 = v18;
      v53 = +[MLCLog framework];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        ANE_CompileConvolutionLayer_cold_6();
      }

      v54 = 0;
      v19 = v52;
      v5 = v51;
      v6 = v50;
      v7 = v49;
      v8 = v48;
      v10 = v47;
    }

    v11 = v85;
    goto LABEL_38;
  }

  v45 = ANE_CreateUnitsWithConvolutionLayer(v10, v88, v87);
  if (!v45)
  {
    v56 = +[MLCLog framework];
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileConvolutionLayer_cold_1();
    }

    v54 = 0;
    goto LABEL_38;
  }

  v46 = v45;
  v82 = v14;
  [v15 addObjectsFromArray:v45];

LABEL_24:
  if (!v19)
  {
LABEL_28:
    v54 = [v15 copy];
LABEL_33:
    v14 = v82;
    goto LABEL_38;
  }

  v84 = v19;
  v86 = v11;
  v57 = [v10 fusedLayers];
  v58 = [v57 objectAtIndexedSubscript:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v14 = v82;
  if (isKindOfClass)
  {
    v81 = v10;
    v60 = [v10 fusedLayers];
    v61 = [v60 objectAtIndexedSubscript:0];

    v62 = [v61 descriptor];
    v63 = ANE_CreateUnitsWithNeuronLayer(v61, v84, [v62 activationType]);

    if (v63)
    {
      v79 = [v15 objectAtIndexedSubscript:{objc_msgSend(v15, "count") - 1}];
      v64 = [v79 objectForKeyedSubscript:@"Name"];
      v91 = v64;
      [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1];
      v66 = v65 = v7;
      [v63 objectAtIndexedSubscript:0];
      v68 = v67 = v8;
      [v68 setObject:v66 forKeyedSubscript:@"Bottom"];

      v8 = v67;
      v7 = v65;

      [v15 addObjectsFromArray:v63];
      v10 = v81;
      v19 = v84;
      v11 = v86;
      goto LABEL_28;
    }

    v70 = +[MLCLog framework];
    v11 = v86;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileConvolutionLayer_cold_5();
    }

    v54 = 0;
    v10 = v81;
  }

  else
  {
    v69 = +[MLCLog framework];
    v11 = v86;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileConvolutionLayer_cold_4(v10);
    }

    v54 = 0;
  }

  v19 = v84;
LABEL_38:

  v71 = *MEMORY[0x277D85DE8];

  return v54;
}

id ANE_CreateSelectionLayer()
{
  v13[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEBF8];
  v1 = [MEMORY[0x277CBEBF8] mutableCopy];
  v12[0] = kMLCANENetUnitType[0];
  v12[1] = @"Type";
  v13[0] = @"ElementWise";
  v13[1] = @"Mult";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v3 = [v2 mutableCopy];

  [v1 addObject:v3];
  [v1 addObject:v3];
  v4 = [v3 mutableCopy];

  [v4 setObject:@"EqualZero" forKeyedSubscript:@"Type"];
  [v1 addObject:v4];
  v5 = [v4 mutableCopy];

  [v5 setObject:@"Add" forKeyedSubscript:@"Type"];
  [v1 addObject:v5];
  v6 = [v0 mutableCopy];
  v7 = [_MLCANEArithmeticParameters arithmeticUnitParametersWith:v1];
  v8 = [MLCANEDeviceOps deviceOpsWithType:35 params:v7];
  if (v8)
  {
    [v6 addObject:v8];
  }

  v9 = [v6 copy];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id ANE_CompileSelectionLayer(void *a1, void *a2, void *a3)
{
  v188[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [a1 objectAtIndexedSubscript:0];
  v8 = [v7 params];

  v9 = [v8 arithmeticParams];
  if ([v9 count] != 4)
  {
    v11 = +[MLCLog framework];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      ANE_CompileSelectionLayer_cold_1(v11, v88, v89, v90, v91, v92, v93, v94);
    }

    v95 = 0;
    goto LABEL_71;
  }

  v161 = v9;
  v158 = v8;
  v10 = [v6 parentLayers];
  v11 = [v10 objectAtIndexedSubscript:0];

  v12 = MEMORY[0x277CBEBF8];
  v164 = [MEMORY[0x277CBEBF8] mutableCopy];
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v163 = [v12 mutableCopy];
  v170 = 0;
  v159 = v6;
  ANE_GetTensor4DShapeWithOnePrepended(v6, &v170);
  v166 = v170;
  v162 = v5;
  v165 = v13;
  if (![v5 count])
  {
LABEL_10:
    v16 = [v5 objectAtIndexedSubscript:0];
    v167 = 1;
    ANE_GetTensorFeatureChannelsWithOnePrepended(v16, &v167);
    v23 = [v5 objectAtIndexedSubscript:1];
    v24 = [v5 objectAtIndexedSubscript:2];
    v25 = [v16 descriptor];
    v26 = ANE_GetANECIRDataTypeWithMLCDataType([v25 dataType]);

    v27 = [v23 descriptor];
    v28 = ANE_GetANECIRDataTypeWithMLCDataType([v27 dataType]);

    v157 = v24;
    v29 = [v24 descriptor];
    v30 = ANE_GetANECIRDataTypeWithMLCDataType([v29 dataType]);

    v153 = v26;
    v154 = v30;
    v155 = v28;
    if (!v26 || !v28 || !v30)
    {
      v96 = +[MLCLog framework];
      v9 = v161;
      v39 = v164;
      v156 = v96;
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        ANE_CompileSelectionLayer_cold_8(v96, v97, v98, v99, v100, v101, v102, v103);
      }

      v95 = 0;
      v5 = v162;
      v8 = v158;
      v6 = v159;
      goto LABEL_69;
    }

    v151 = v23;
    v9 = v161;
    v31 = [v161 objectAtIndexedSubscript:0];
    v32 = [_MLCANEPlistBuilder createUnitWithLayer:v11 unitParams:v31];

    v33 = [v161 objectAtIndexedSubscript:1];
    v152 = [_MLCANEPlistBuilder createUnitWithLayer:v11 unitParams:v33];

    v34 = [v161 objectAtIndexedSubscript:2];
    v35 = [_MLCANEPlistBuilder createUnitWithLayer:v11 unitParams:v34];

    v36 = v35;
    v37 = [v161 objectAtIndexedSubscript:3];
    v147 = [_MLCANEPlistBuilder createUnitWithLayer:v11 unitParams:v37];

    v38 = [v11 label];
    v39 = v164;
    v40 = [v38 stringByAppendingFormat:@"_%lu", objc_msgSend(v164, "count")];
    [v36 setObject:v40 forKeyedSubscript:@"Name"];

    v41 = [v16 label];
    v188[0] = v41;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v188 count:1];
    [v36 setObject:v42 forKeyedSubscript:@"Bottom"];

    v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v167];
    [v36 setObject:v43 forKeyedSubscript:@"OutputChannels"];

    v187 = v26;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v187 count:1];
    [v36 setObject:v44 forKeyedSubscript:@"InputType"];

    [v36 setObject:v26 forKeyedSubscript:@"OutputType"];
    v186 = v16;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:&v186 count:1];
    LOBYTE(v42) = ANE_ValidateElementWiseUnit(v45, v36, 1);

    v156 = v32;
    v148 = v36;
    if ((v42 & 1) == 0)
    {
      v150 = +[MLCLog framework];
      v8 = v158;
      if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
      {
        ANE_CompileSelectionLayer_cold_4();
      }

      v95 = 0;
      v5 = v162;
      v6 = v159;
      goto LABEL_68;
    }

    [v164 addObject:v36];
    v46 = [v164 count];
    v47 = [v11 label];
    v48 = [v47 stringByAppendingFormat:@"_%lu", v46];
    [v32 setObject:v48 forKeyedSubscript:@"Name"];

    v49 = [v23 label];
    v185[0] = v49;
    v50 = [v16 label];
    v185[1] = v50;
    [MEMORY[0x277CBEA60] arrayWithObjects:v185 count:2];
    v52 = v51 = v26;
    v53 = v11;
    v54 = [v52 mutableCopy];
    [v32 setObject:v54 forKeyedSubscript:@"Bottom"];

    v184[0] = v155;
    v184[1] = v51;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v184 count:2];
    v56 = [v55 mutableCopy];
    [v32 setObject:v56 forKeyedSubscript:@"InputType"];

    v57 = [v53 label];
    v149 = v46 + 2;
    v58 = [v57 stringByAppendingFormat:@"_%lu", v46 + 1];
    [v152 setObject:v58 forKeyedSubscript:@"Name"];

    v59 = [v148 objectForKeyedSubscript:@"Name"];
    v183[0] = v59;
    v60 = [v157 label];
    v183[1] = v60;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v183 count:2];
    v62 = [v61 mutableCopy];
    [v152 setObject:v62 forKeyedSubscript:@"Bottom"];

    v63 = [v148 objectForKeyedSubscript:@"OutputType"];
    v182[0] = v63;
    v182[1] = v154;
    v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v182 count:2];
    v65 = [v64 mutableCopy];
    [v152 setObject:v65 forKeyedSubscript:@"InputType"];

    v144 = v53;
    v66 = [v53 label];
    v67 = [v66 stringByAppendingFormat:@"_%lu", v149];
    [v147 setObject:v67 forKeyedSubscript:@"Name"];

    v68 = [v32 objectForKeyedSubscript:@"Name"];
    v181[0] = v68;
    v69 = [v152 objectForKeyedSubscript:@"Name"];
    v181[1] = v69;
    v70 = [MEMORY[0x277CBEA60] arrayWithObjects:v181 count:2];
    [v147 setObject:v70 forKeyedSubscript:@"Bottom"];

    v71 = [v32 objectForKeyedSubscript:@"OutputType"];
    v180[0] = v71;
    v72 = [v152 objectForKeyedSubscript:@"OutputType"];
    v180[1] = v72;
    v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v180 count:2];
    [v147 setObject:v73 forKeyedSubscript:@"InputType"];

    v179[0] = v151;
    v179[1] = v16;
    v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v179 count:2];
    v150 = [v74 mutableCopy];

    v178[0] = v16;
    v178[1] = v157;
    v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v178 count:2];
    v145 = [v75 mutableCopy];

    v177[0] = v151;
    v177[1] = v157;
    v146 = [MEMORY[0x277CBEA60] arrayWithObjects:v177 count:2];
    v76 = [v165 objectAtIndexedSubscript:0];
    if ([v76 BOOLValue])
    {
      v77 = [v165 objectAtIndexedSubscript:1];
      if ([v77 BOOLValue])
      {
        v78 = [v165 objectAtIndexedSubscript:2];
        v79 = [v78 BOOLValue];

        if (v79)
        {
          v39 = v164;
          v140 = [v164 objectAtIndexedSubscript:0];
          v80 = [v164 objectAtIndexedSubscript:1];
          v81 = [v164 objectAtIndexedSubscript:2];
          v82 = [v163 objectAtIndexedSubscript:0];
          v83 = [v163 objectAtIndexedSubscript:1];
          v84 = [v163 objectAtIndexedSubscript:2];
          ANE_ConnectBroadcastUnitForSource0(v80, v83, v156, v150);
          ANE_ConnectBroadcastUnitForMask(v140, v82, v156, v148, v152, v150, v145, v164);
          v85 = v80;
          ANE_ConnectBroadcastUnitForSource1(v81, v84, v152, v145);
          v176[0] = v83;
          v176[1] = v84;
          v86 = [MEMORY[0x277CBEA60] arrayWithObjects:v176 count:2];

          v146 = v86;
          v8 = v158;
          v6 = v159;
          v87 = v140;
          v11 = v144;
LABEL_52:
          v23 = v151;
          goto LABEL_53;
        }

LABEL_36:
        v112 = [v165 objectAtIndexedSubscript:0];
        v39 = v164;
        if ([v112 BOOLValue])
        {
          v113 = [v165 objectAtIndexedSubscript:1];
          v114 = [v113 BOOLValue];

          v6 = v159;
          v11 = v144;
          if (v114)
          {
            v115 = [v164 objectAtIndexedSubscript:0];
            v141 = [v164 objectAtIndexedSubscript:1];
            v116 = [v163 objectAtIndexedSubscript:0];
            v117 = [v163 objectAtIndexedSubscript:1];
            ANE_ConnectBroadcastUnitForSource0(v141, v117, v32, v150);
            v87 = v115;
            ANE_ConnectBroadcastUnitForMask(v115, v116, v156, v148, v152, v150, v145, v164);
            v175[0] = v117;
            v175[1] = v157;
            v118 = [MEMORY[0x277CBEA60] arrayWithObjects:v175 count:2];

            v85 = v141;
            v146 = v118;
LABEL_51:
            v8 = v158;
            goto LABEL_52;
          }
        }

        else
        {

          v6 = v159;
          v11 = v144;
        }

        v119 = [v165 objectAtIndexedSubscript:1];
        if ([v119 BOOLValue])
        {
          v120 = [v165 objectAtIndexedSubscript:2];
          v121 = [v120 BOOLValue];

          v23 = v151;
          if (v121)
          {
            v87 = [v164 objectAtIndexedSubscript:0];
            v142 = [v164 objectAtIndexedSubscript:1];
            v122 = [v163 objectAtIndexedSubscript:0];
            v123 = [v163 objectAtIndexedSubscript:1];
            ANE_ConnectBroadcastUnitForSource0(v87, v122, v156, v150);
            ANE_ConnectBroadcastUnitForSource1(v142, v123, v152, v145);
            v174[0] = v122;
            v174[1] = v123;
            v124 = [MEMORY[0x277CBEA60] arrayWithObjects:v174 count:2];

            v85 = v142;
LABEL_47:
            v146 = v124;
            v8 = v158;
            goto LABEL_53;
          }
        }

        else
        {

          v23 = v151;
        }

        v125 = [v165 objectAtIndexedSubscript:0];
        if ([v125 BOOLValue])
        {
          v126 = [v165 objectAtIndexedSubscript:2];
          v127 = [v126 BOOLValue];

          if (v127)
          {
            v87 = [v164 objectAtIndexedSubscript:0];
            v143 = [v164 objectAtIndexedSubscript:1];
            v160 = [v163 objectAtIndexedSubscript:0];
            v128 = [v163 objectAtIndexedSubscript:1];
            ANE_ConnectBroadcastUnitForMask(v87, v160, v156, v148, v152, v150, v145, v164);
            ANE_ConnectBroadcastUnitForSource1(v143, v128, v152, v145);
            v173[0] = v23;
            v173[1] = v128;
            v124 = [MEMORY[0x277CBEA60] arrayWithObjects:v173 count:2];

            v85 = v143;
            goto LABEL_47;
          }
        }

        else
        {
        }

        v129 = [v165 objectAtIndexedSubscript:0];
        v130 = [v129 BOOLValue];

        if (v130)
        {
          v87 = [v164 objectAtIndexedSubscript:0];
          v85 = [v163 objectAtIndexedSubscript:0];
          ANE_ConnectBroadcastUnitForMask(v87, v85, v156, v148, v152, v150, v145, v164);
          goto LABEL_51;
        }

        v132 = [v165 objectAtIndexedSubscript:1];
        v133 = [v132 BOOLValue];

        v8 = v158;
        if (v133)
        {
          v87 = [v164 objectAtIndexedSubscript:0];
          v85 = [v163 objectAtIndexedSubscript:0];
          ANE_ConnectBroadcastUnitForSource0(v87, v85, v156, v150);
          v172[0] = v85;
          v172[1] = v157;
          v134 = [MEMORY[0x277CBEA60] arrayWithObjects:v172 count:2];

          v146 = v134;
          goto LABEL_52;
        }

        v137 = [v165 objectAtIndexedSubscript:2];
        v138 = [v137 BOOLValue];

        if (!v138)
        {
          v5 = v162;
          v23 = v151;
LABEL_54:
          if (ANE_ValidateElementWiseUnit(v150, v156, 1))
          {
            [v39 addObject:v156];
            if (ANE_ValidateElementWiseUnit(v145, v152, 1))
            {
              [v39 addObject:v152];
              if (ANE_ValidateElementWiseUnit(v146, v147, 1))
              {
                [v39 addObject:v147];
                v95 = [v39 copy];
LABEL_67:

LABEL_68:
LABEL_69:

                goto LABEL_70;
              }

              v131 = +[MLCLog framework];
              if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_65;
              }

LABEL_66:

              v95 = 0;
              goto LABEL_67;
            }

            v131 = +[MLCLog framework];
            if (!os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_66;
            }
          }

          else
          {
            v131 = +[MLCLog framework];
            if (!os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_66;
            }
          }

LABEL_65:
          ANE_CompileSelectionLayer_cold_4();
          goto LABEL_66;
        }

        v87 = [v164 objectAtIndexedSubscript:0];
        v85 = [v163 objectAtIndexedSubscript:0];
        ANE_ConnectBroadcastUnitForSource1(v87, v85, v152, v145);
        v23 = v151;
        v171[0] = v151;
        v171[1] = v85;
        v139 = [MEMORY[0x277CBEA60] arrayWithObjects:v171 count:2];

        v146 = v139;
LABEL_53:

        v5 = v162;
        goto LABEL_54;
      }
    }

    goto LABEL_36;
  }

  v14 = 0;
  v15 = MEMORY[0x277CBEC28];
  while (1)
  {
    v16 = [v5 objectAtIndexedSubscript:v14];
    v168 = 0;
    v169 = 0;
    v17 = v11;
    v18 = [_MLCANEPlistBuilder createBroadcastUnitWithSourceTensor:v16 targetShape:v166 layer:v11 broadcastUnit:&v169 broadcastResultTensor:&v168];
    v19 = v169;
    v20 = v168;
    if (v18 == 2)
    {
      break;
    }

    if (v18 != 1)
    {
      v104 = +[MLCLog framework];
      if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
      {
        ANE_CompileSelectionLayer_cold_3(v18, v104);
      }

      v9 = v161;
      v11 = v17;
      goto LABEL_33;
    }

    [v13 setObject:v15 atIndexedSubscript:v14];
LABEL_9:

    ++v14;
    v11 = v17;
    if (v14 >= [v5 count])
    {
      goto LABEL_10;
    }
  }

  if (v19)
  {
    [v13 setObject:MEMORY[0x277CBEC38] atIndexedSubscript:v14];
    v21 = [v17 label];
    v22 = [v21 stringByAppendingFormat:@"_%lu", objc_msgSend(v164, "count")];
    [v19 setObject:v22 forKeyedSubscript:@"Name"];

    v5 = v162;
    v13 = v165;
    [v164 addObject:v19];
    [v163 addObject:v20];
    goto LABEL_9;
  }

  v104 = +[MLCLog framework];
  v11 = v17;
  if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
  {
    ANE_CompileSelectionLayer_cold_2(v104, v105, v106, v107, v108, v109, v110, v111);
  }

  v19 = 0;
  v9 = v161;
LABEL_33:
  v39 = v164;

  v95 = 0;
  v8 = v158;
LABEL_70:

LABEL_71:
  v135 = *MEMORY[0x277D85DE8];

  return v95;
}

void ANE_ConnectBroadcastUnitForSource0(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v14 = a2;
  v9 = a1;
  v10 = [v9 objectForKeyedSubscript:@"Name"];
  v11 = [v8 objectForKeyedSubscript:@"Bottom"];
  [v11 setObject:v10 atIndexedSubscript:0];

  v12 = [v9 objectForKeyedSubscript:@"OutputType"];

  v13 = [v8 objectForKeyedSubscript:@"InputType"];

  [v13 setObject:v12 atIndexedSubscript:0];
  [v7 setObject:v14 atIndexedSubscript:0];
}

void ANE_ConnectBroadcastUnitForMask(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v15 = a1;
  v16 = a2;
  v17 = a8;
  v37 = a7;
  v35 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [v15 mutableCopy];
  v22 = v16;
  v23 = [v15 objectForKeyedSubscript:@"Name"];
  v36 = [v23 stringByAppendingString:@"_copy"];

  [v21 setObject:v36 forKeyedSubscript:@"Name"];
  v24 = [v19 objectForKeyedSubscript:@"Name"];

  v38[0] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
  [v21 setObject:v25 forKeyedSubscript:@"Bottom"];

  [v17 addObject:v21];
  v26 = [v15 objectForKeyedSubscript:@"Name"];
  v27 = [v20 objectForKeyedSubscript:@"Bottom"];
  [v27 setObject:v26 atIndexedSubscript:1];

  v28 = [v15 objectForKeyedSubscript:@"OutputType"];
  v29 = [v20 objectForKeyedSubscript:@"InputType"];

  [v29 setObject:v28 atIndexedSubscript:1];
  [v35 setObject:v22 atIndexedSubscript:1];

  v30 = [v21 objectForKeyedSubscript:@"Name"];
  v31 = [v18 objectForKeyedSubscript:@"Bottom"];
  [v31 setObject:v30 atIndexedSubscript:0];

  v32 = [v21 objectForKeyedSubscript:@"OutputType"];
  v33 = [v18 objectForKeyedSubscript:@"InputType"];

  [v33 setObject:v32 atIndexedSubscript:0];
  [v37 setObject:v22 atIndexedSubscript:0];

  v34 = *MEMORY[0x277D85DE8];
}

void ANE_ConnectBroadcastUnitForSource1(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v14 = a2;
  v9 = a1;
  v10 = [v9 objectForKeyedSubscript:@"Name"];
  v11 = [v8 objectForKeyedSubscript:@"Bottom"];
  [v11 setObject:v10 atIndexedSubscript:1];

  v12 = [v9 objectForKeyedSubscript:@"OutputType"];

  v13 = [v8 objectForKeyedSubscript:@"InputType"];

  [v13 setObject:v12 atIndexedSubscript:1];
  [v7 setObject:v14 atIndexedSubscript:1];
}

unint64_t *hashCombine_1(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = &a9;
  v9 = *result;
  v10 = 8;
  do
  {
    v11 = v12;
    v12 += 8;
    v9 ^= *v11 + (v9 << 6) + (v9 >> 2) + 2654435769u;
    --v10;
  }

  while (v10);
  *result = v9;
  return result;
}

id softLinkClass_ANEDeviceInfo_0()
{
  if (softLinkClass_ANEDeviceInfo_onceToken_0 != -1)
  {
    softLinkClass_ANEDeviceInfo_cold_1_0();
  }

  v1 = softLinkClass_ANEDeviceInfo_softLinkClass_ANEDeviceInfo_0;

  return v1;
}

uint64_t VerifyTensorBeforeRead(void *a1)
{
  v1 = a1;
  v2 = [v1 deviceMemory];
  v3 = [v2 count];

  if (!v3)
  {
    v8 = +[MLCLog framework];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      VerifyTensorBeforeRead_cold_3();
    }

    goto LABEL_10;
  }

  v4 = [v1 deviceMemory];
  v5 = [v4 objectAtIndexedSubscript:{objc_msgSend(v1, "deviceIndex")}];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v8 = +[MLCLog framework];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      VerifyTensorBeforeRead_cold_1(v8);
    }

LABEL_10:
    v11 = 0;
    goto LABEL_15;
  }

  v7 = [v1 deviceMemory];
  v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v1, "deviceIndex")}];

  v9 = [v8 liveIOStatus];
  v10 = v9;
  if (v9 && [v9 count])
  {
    v11 = 1;
  }

  else
  {
    v12 = +[MLCLog framework];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      VerifyTensorBeforeRead_cold_2();
    }

    v11 = 0;
  }

LABEL_15:
  return v11;
}

id softLinkClass_ANERequest()
{
  if (softLinkClass_ANERequest_onceToken != -1)
  {
    softLinkClass_ANERequest_cold_1();
  }

  v1 = softLinkClass_ANERequest_softLinkClass_ANERequest;

  return v1;
}

id softLinkClass_ANEQoSMapper()
{
  if (softLinkClass_ANEQoSMapper_onceToken != -1)
  {
    softLinkClass_ANEQoSMapper_cold_1();
  }

  v1 = softLinkClass_ANEQoSMapper_softLinkClass_ANEQoSMapper;

  return v1;
}

id softLinkClass_ANEInMemoryModelDescriptor()
{
  if (softLinkClass_ANEInMemoryModelDescriptor_onceToken != -1)
  {
    softLinkClass_ANEInMemoryModelDescriptor_cold_1();
  }

  v1 = softLinkClass_ANEInMemoryModelDescriptor_softLinkClass_ANEInMemoryModelDescriptor;

  return v1;
}

id softLinkClass_ANEInMemoryModel()
{
  if (softLinkClass_ANEInMemoryModel_onceToken != -1)
  {
    softLinkClass_ANEInMemoryModel_cold_1();
  }

  v1 = softLinkClass_ANEInMemoryModel_softLinkClass_ANEInMemoryModel;

  return v1;
}

void *__AppleNeuralEngineLibrary_block_invoke_1()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleNeuralEngine.framework/AppleNeuralEngine", 1);
  AppleNeuralEngineLibrary_frameworkLibrary_1 = result;
  return result;
}

void *__softLinkObjcConstantkANEFModelDescriptionKey_block_invoke()
{
  if (AppleNeuralEngineLibrary_onceToken_1 != -1)
  {
    __22__MLCDeviceANE_hasANE__block_invoke_cold_1();
  }

  result = dlsym(AppleNeuralEngineLibrary_frameworkLibrary_1, "kANEFModelDescriptionKey");
  softLinkObjcConstantkANEFModelDescriptionKey_constant = result;
  return result;
}

void *__softLinkObjcConstantkANEFModelProcedureNameToIDMapKey_block_invoke()
{
  if (AppleNeuralEngineLibrary_onceToken_1 != -1)
  {
    __22__MLCDeviceANE_hasANE__block_invoke_cold_1();
  }

  result = dlsym(AppleNeuralEngineLibrary_frameworkLibrary_1, "kANEFModelProcedureNameToIDMapKey");
  softLinkObjcConstantkANEFModelProcedureNameToIDMapKey_constant = result;
  return result;
}

void *__softLinkObjcConstantkANEFModelProceduresArrayKey_block_invoke()
{
  if (AppleNeuralEngineLibrary_onceToken_1 != -1)
  {
    __22__MLCDeviceANE_hasANE__block_invoke_cold_1();
  }

  result = dlsym(AppleNeuralEngineLibrary_frameworkLibrary_1, "kANEFModelProceduresArrayKey");
  softLinkObjcConstantkANEFModelProceduresArrayKey_constant = result;
  return result;
}

void *__softLinkObjcConstantkANEFModelInputSymbolIndexArrayKey_block_invoke()
{
  if (AppleNeuralEngineLibrary_onceToken_1 != -1)
  {
    __22__MLCDeviceANE_hasANE__block_invoke_cold_1();
  }

  result = dlsym(AppleNeuralEngineLibrary_frameworkLibrary_1, "kANEFModelInputSymbolIndexArrayKey");
  softLinkObjcConstantkANEFModelInputSymbolIndexArrayKey_constant = result;
  return result;
}

void *__softLinkObjcConstantkANEFModelInputSymbolsArrayKey_block_invoke()
{
  if (AppleNeuralEngineLibrary_onceToken_1 != -1)
  {
    __22__MLCDeviceANE_hasANE__block_invoke_cold_1();
  }

  result = dlsym(AppleNeuralEngineLibrary_frameworkLibrary_1, "kANEFModelInputSymbolsArrayKey");
  softLinkObjcConstantkANEFModelInputSymbolsArrayKey_constant = result;
  return result;
}

void *__softLinkObjcConstantkANEFModelOutputSymbolIndexArrayKey_block_invoke()
{
  if (AppleNeuralEngineLibrary_onceToken_1 != -1)
  {
    __22__MLCDeviceANE_hasANE__block_invoke_cold_1();
  }

  result = dlsym(AppleNeuralEngineLibrary_frameworkLibrary_1, "kANEFModelOutputSymbolIndexArrayKey");
  softLinkObjcConstantkANEFModelOutputSymbolIndexArrayKey_constant = result;
  return result;
}

void *__softLinkObjcConstantkANEFModelOutputSymbolsArrayKey_block_invoke()
{
  if (AppleNeuralEngineLibrary_onceToken_1 != -1)
  {
    __22__MLCDeviceANE_hasANE__block_invoke_cold_1();
  }

  result = dlsym(AppleNeuralEngineLibrary_frameworkLibrary_1, "kANEFModelOutputSymbolsArrayKey");
  softLinkObjcConstantkANEFModelOutputSymbolsArrayKey_constant = result;
  return result;
}

void OUTLINED_FUNCTION_6_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

id createMatrices(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, void *a7)
{
  v12 = a5;
  v13 = a7;
  v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a1];
  if (a1)
  {
    v15 = 0;
    v16 = 4 * a1 * a3;
    v17 = a1 - 1;
    do
    {
      v18 = a2;
      if (v12)
      {
        if (a6)
        {
          v19 = v17;
        }

        else
        {
          v19 = v15;
        }

        v20 = [v12 objectAtIndexedSubscript:v19];
        v18 = [v20 unsignedIntegerValue];
      }

      v21 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v18 columns:a4 rowBytes:v16 dataType:268435488];
      v22 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v13 descriptor:v21];
      [v14 addObject:v22];

      ++v15;
      --v17;
    }

    while (v17 != -1);
  }

  v23 = [v14 copy];

  return v23;
}

void copyNC1TtoNTCMTLBuffer(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v24 = a1;
  v13 = a2;
  v26 = a6;
  v25 = a7;
  context = objc_autoreleasePoolPush();
  v14 = [objc_alloc(MEMORY[0x277CD75C0]) initWithDevice:v13 count:a3];
  v22 = [objc_alloc(MEMORY[0x277CD75B8]) initWithDevice:v13 copyRows:a4 copyColumns:a5 sourcesAreTransposed:0 destinationsAreTransposed:1];
  v15 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:a4 columns:a5 rowBytes:4 * a5 dataType:268435488];
  v16 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:a5 columns:a4 rowBytes:4 * a4 dataType:268435488];
  if (a3)
  {
    v17 = 0;
    v18 = 0;
    v19 = 4 * a5 * a4;
    do
    {
      v20 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v26 offset:v17 descriptor:v15];
      v21 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v25 offset:v17 descriptor:v16];
      [v14 setCopyOperationAtIndex:v18 sourceMatrix:v20 destinationMatrix:v21 offsets:{0, 0}];

      ++v18;
      v17 += v19;
    }

    while (a3 != v18);
  }

  [v22 encodeToCommandBuffer:v24 copyDescriptor:v14];

  objc_autoreleasePoolPop(context);
}

id createMatricesForTNCBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v22 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a1];
  if (a1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 4 * a3;
    v15 = 4 * a2 * a3;
    do
    {
      v16 = a2;
      if (v9)
      {
        v17 = [v9 objectAtIndexedSubscript:v13];
        v16 = [v17 unsignedIntegerValue];
      }

      v18 = [MEMORY[0x277CD7258] matrixDescriptorWithRows:v16 columns:v22 rowBytes:v14 dataType:{268435488, v22}];
      v19 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:v10 offset:v12 descriptor:v18];
      [v11 addObject:v19];

      ++v13;
      v12 += v15;
    }

    while (a1 != v13);
  }

  v20 = [v11 copy];

  return v20;
}