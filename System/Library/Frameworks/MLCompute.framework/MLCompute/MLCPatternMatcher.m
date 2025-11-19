@interface MLCPatternMatcher
+ (BOOL)canTransformToGELUFromLayer:(id)a3 stopGradientTensorList:(id)a4 fusedLayers:(id)a5 inputTensor:(id *)a6;
+ (BOOL)canTransformToGELUType1FromLayer:(id)a3 fusedLayers:(id)a4 inputTensor:(id)a5 withAccuracy:(float)a6;
+ (BOOL)canTransformToGELUType2FromLayer:(id)a3 fusedLayers:(id)a4 inputTensor:(id)a5 withAccuracy:(float)a6;
+ (BOOL)canTransformToHardSwishFromLayer:(id)a3 stopGradientTensorList:(id)a4 fusedLayers:(id)a5 inputTensor:(id *)a6;
+ (BOOL)canTransformToReLUNFromLayer:(id)a3 stopGradientTensorList:(id)a4 fusedLayers:(id)a5 alpha:(float *)a6 beta:(float *)a7;
+ (BOOL)checkIntermediateTensorsOfFusedLayers:(id)a3 stopGradientTensorList:(id)a4 forPattern:(id)a5;
+ (BOOL)isActivationLayer:(id)a3 withActivationType:(int)a4;
+ (BOOL)isArithmeticLayer:(id)a3 withOperation:(int)a4;
+ (BOOL)isConstTensor:(id)a3 withValue:(float)a4 withAccuracy:(float)a5;
+ (float)getAccuracyForLayer:(id)a3;
@end

@implementation MLCPatternMatcher

+ (BOOL)canTransformToReLUNFromLayer:(id)a3 stopGradientTensorList:(id)a4 fusedLayers:(id)a5 alpha:(float *)a6 beta:(float *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [v14 count];
  v16 = [a1 isActivationLayer:v12 withActivationType:1];
  v17 = v12;
  if (v15 && [v14 count] != 3)
  {
    if (v16 && [v14 count] == 4)
    {
      v18 = [v14 objectAtIndexedSubscript:1];
      v111 = 2;
      goto LABEL_15;
    }

LABEL_19:
    v35 = 0;
    v28 = v17;
    goto LABEL_76;
  }

  if (!v16)
  {
    if ([a1 isActivationLayer:v17 withActivationType:2])
    {
      v111 = 1;
      v28 = v17;
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  v18 = [v17 sourceTensors];
  if ([v18 count] != 1)
  {
LABEL_32:
    v35 = 0;
    v28 = v17;
LABEL_75:

    goto LABEL_76;
  }

  v112 = v16;
  v107 = a7;
  v19 = [v17 sourceTensors];
  v20 = [v19 objectAtIndexedSubscript:0];
  v21 = [v20 parentLayers];
  if ([v21 count] != 1)
  {
LABEL_31:

    goto LABEL_32;
  }

  v103 = a1;
  v22 = [v17 resultTensors];
  if ([v22 count] != 1)
  {

    goto LABEL_31;
  }

  v98 = v15;
  v101 = v13;
  v100 = [v17 resultTensors];
  v23 = [v100 objectAtIndexedSubscript:0];
  v24 = [v23 childLayers];
  v110 = [v24 count];

  if (v110 != 1)
  {
    v35 = 0;
    v28 = v17;
    v13 = v101;
    goto LABEL_76;
  }

  v25 = [v17 resultTensors];
  v26 = [v25 objectAtIndexedSubscript:0];
  v27 = [v26 childLayers];
  v18 = [v27 objectAtIndexedSubscript:0];

  a1 = v103;
  if (([v103 isActivationLayer:v18 withActivationType:2] & 1) == 0)
  {
    v35 = 0;
    v28 = v17;
    v13 = v101;
    goto LABEL_75;
  }

  v111 = 1;
  v13 = v101;
  v15 = v98;
  a7 = v107;
  v16 = v112;
LABEL_15:

  v28 = v18;
LABEL_16:
  *a6 = 0.0;
  [a1 getAccuracyForLayer:v17];
  v30 = v29;
  v18 = [v28 descriptor];
  [v18 a];
  if (fabsf(v31 + 1.0) > v30)
  {
    goto LABEL_74;
  }

  v113 = v16;
  v32 = [v28 descriptor];
  [v32 b];
  v34 = fabsf(v33);

  if (v34 <= v30)
  {
    if (v113)
    {
      v18 = v17;
    }

    else
    {
      v18 = [v28 sourceTensors];
      if ([v18 count] != 1)
      {
        goto LABEL_74;
      }

      v40 = a7;
      v99 = v15;
      v104 = a1;
      v41 = [v28 sourceTensors];
      v42 = [v41 objectAtIndexedSubscript:0];
      v43 = [v42 parentLayers];
      v44 = [v43 count];

      if (v44 != 1)
      {
        goto LABEL_18;
      }

      v45 = [v28 sourceTensors];
      v46 = [v45 objectAtIndexedSubscript:0];
      v47 = [v46 parentLayers];
      v18 = [v47 objectAtIndexedSubscript:0];

      v48 = [v18 fusedLayers];
      v49 = [v48 count];

      a7 = v40;
      if (v49)
      {
        v50 = [v18 fusedLayers];
        v51 = [v50 lastObject];

        v18 = v51;
      }

      a1 = v104;
      v15 = v99;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![v18 operation])
    {
      goto LABEL_54;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_74;
      }

      v52 = [v18 operation];
      v35 = 0;
      if (v52 > 0x17 || ((1 << v52) & 0xC10180) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    }

    v108 = a7;
    v36 = v15;
    v37 = v18;
    v18 = v18;
    v38 = [v18 descriptor];
    v39 = [v38 activationType];

    if (v39 <= 8)
    {
      v15 = v36;
      if ((v39 - 3) < 2)
      {
LABEL_53:

        a7 = v108;
        v18 = v37;
LABEL_54:
        v62 = v15;
        v63 = [v28 resultTensors];
        v64 = [v63 count];

        if (v64 == 1)
        {
          if (v62)
          {
            v65 = [v14 objectAtIndexedSubscript:?];

            ++v111;
            v28 = v65;
          }

          else
          {
            v102 = v18;
            v78 = [v28 resultTensors];
            v79 = [v78 objectAtIndexedSubscript:0];

            v80 = [v79 childLayers];
            if ([v80 count] != 1)
            {
              goto LABEL_81;
            }

            v106 = a1;
            v109 = a7;
            v81 = [v79 childLayers];
            v82 = [v81 objectAtIndexedSubscript:0];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) == 0)
            {
              goto LABEL_82;
            }

            a7 = v109;
            if (v113)
            {
              [v14 addObject:v28];
            }

            v84 = [v79 childLayers];
            v85 = [v84 objectAtIndexedSubscript:0];

            [v14 addObject:v85];
            LOBYTE(v84) = [v85 skipLayer];

            a1 = v106;
            if (v84)
            {
LABEL_70:
              v35 = 0;
              v18 = v102;
              v28 = v85;
              goto LABEL_75;
            }

            v28 = v85;
            v18 = v102;
          }

          v66 = [v28 descriptor];
          if ([v66 activationType] != 17)
          {
LABEL_64:

            goto LABEL_74;
          }

          v105 = a1;
          v67 = [v28 descriptor];
          [v67 a];
          v69 = v68;
          v70 = [v28 descriptor];
          [v70 b];
          v72 = vabds_f32(v69, v71);

          if (v72 < v30)
          {
            v73 = [v28 descriptor];
            [v73 b];
            *a7 = -v74;

            if (v62)
            {
              v75 = [v14 objectAtIndexedSubscript:v111];

              v28 = v75;
              goto LABEL_61;
            }

            v102 = v18;
            v88 = [v28 resultTensors];
            v79 = [v88 objectAtIndexedSubscript:0];

            v80 = [v79 childLayers];
            if ([v80 count] == 1)
            {
              v89 = [v79 childLayers];
              v90 = [v89 objectAtIndexedSubscript:0];
              objc_opt_class();
              v91 = objc_opt_isKindOfClass();

              if (v91)
              {
                v92 = [v79 childLayers];
                v85 = [v92 objectAtIndexedSubscript:0];

                [v14 addObject:v85];
                LOBYTE(v92) = [v85 skipLayer];

                if ((v92 & 1) == 0)
                {
                  v28 = v85;
                  v18 = v102;
LABEL_61:
                  v66 = [v28 descriptor];
                  if ([v66 activationType] == 2)
                  {
                    v76 = [v28 descriptor];
                    [v76 a];
                    if (fabsf(v77 + 1.0) <= v30)
                    {
                      v93 = [v28 descriptor];
                      [v93 b];
                      v95 = fabsf(v94);

                      if (v95 <= v30)
                      {
                        if (v62 || (v96 = [v14 mutableCopy], objc_msgSend(v96, "insertObject:atIndex:", v17, 0), v97 = objc_msgSend(v105, "checkIntermediateTensorsOfFusedLayers:stopGradientTensorList:forPattern:", v96, v13, @"ReLUN"), v96, v97))
                        {
                          v35 = 1;
                          goto LABEL_75;
                        }
                      }

                      goto LABEL_74;
                    }
                  }

                  goto LABEL_64;
                }

                goto LABEL_70;
              }

LABEL_82:

              v35 = 0;
              v18 = v102;
              goto LABEL_75;
            }

LABEL_81:

            goto LABEL_82;
          }
        }

LABEL_74:
        v35 = 0;
        goto LABEL_75;
      }

      if (v39 != 1)
      {
        if (v39 != 6)
        {
          goto LABEL_73;
        }

        goto LABEL_53;
      }

      v53 = [v18 descriptor];
      [v53 a];
      v57 = v61;
      goto LABEL_52;
    }

    switch(v39)
    {
      case 9:
        v58 = [v18 descriptor];
        [v58 a];
        v60 = v59;

        v15 = v36;
        if (v60 > 0.0)
        {
          goto LABEL_73;
        }

        goto LABEL_53;
      case 10:
        v53 = [v18 descriptor];
        [v53 a];
        if (v86 <= 0.0)
        {
LABEL_48:
          v55 = [v18 descriptor];
          [v55 b];
          v57 = v56;

          v15 = v36;
LABEL_52:

          if (v57 >= 0.0)
          {
            goto LABEL_53;
          }

LABEL_73:

          goto LABEL_74;
        }

        break;
      case 17:
        v53 = [v18 descriptor];
        [v53 a];
        if (v54 >= 0.0)
        {
          goto LABEL_48;
        }

        break;
      default:
        goto LABEL_73;
    }

    goto LABEL_73;
  }

LABEL_18:
  v35 = 0;
LABEL_76:

  return v35;
}

+ (BOOL)canTransformToHardSwishFromLayer:(id)a3 stopGradientTensorList:(id)a4 fusedLayers:(id)a5 inputTensor:(id *)a6
{
  v127 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 count];
  v14 = v13 == 0;
  if (v13)
  {
    if ([v12 count] != 4 && objc_msgSend(v12, "count") != 6)
    {
      goto LABEL_12;
    }

    v15 = [v12 objectAtIndexedSubscript:0];

    v16 = 1;
    v10 = v15;
  }

  else
  {
    v16 = 0;
  }

  [a1 getAccuracyForLayer:v10];
  v18 = v17;
  if ([a1 isArithmeticLayer:v10 withOperation:0])
  {
    v19 = [v10 sourceTensors];
    v20 = [v19 count];

    if (v20 == 2)
    {
      v106 = v13;
      v110 = v16;
      if (v13)
      {
        v21 = [v12 objectAtIndexedSubscript:v16];

        v10 = v21;
        v22 = [v21 sourceTensors];
        v23 = [v22 objectAtIndexedSubscript:0];

        goto LABEL_10;
      }

      v101 = v12;
      v23 = *a6;
      v120 = 0u;
      v121 = 0u;
      v122 = 0u;
      v123 = 0u;
      v35 = [v10 sourceTensors];
      v36 = [v35 countByEnumeratingWithState:&v120 objects:v126 count:16];
      if (v36)
      {
        v39 = v36;
        v108 = v13 == 0;
        v98 = v11;
        v40 = 0;
        v41 = *v121;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v121 != v41)
            {
              objc_enumerationMutation(v35);
            }

            v43 = *(*(&v120 + 1) + 8 * i);
            LODWORD(v37) = 3.0;
            *&v38 = v18;
            if ([a1 isConstTensor:v43 withValue:v37 withAccuracy:v38])
            {
              v40 = 1;
            }

            else
            {
              v44 = v43;

              v23 = v44;
            }
          }

          v39 = [v35 countByEnumeratingWithState:&v120 objects:v126 count:16];
        }

        while (v39);

        v45 = v23;
        *a6 = v23;
        if (v40)
        {
          v46 = [v10 resultTensors];
          v11 = v98;
          if ([v46 count] == 1)
          {
            v47 = [v10 resultTensors];
            v48 = [v47 objectAtIndexedSubscript:0];
            v49 = [v48 childLayers];
            v50 = [v49 count];

            if (v50 == 1)
            {
              [v101 addObject:v10];
              v51 = [v10 resultTensors];
              v52 = [v51 objectAtIndexedSubscript:0];
              v53 = [v52 childLayers];
              v54 = [v53 objectAtIndexedSubscript:0];

              v10 = v54;
              if (([v54 skipLayer] & 1) == 0)
              {
                v12 = v101;
                v13 = 0;
                v14 = v108;
LABEL_10:
                v24 = [MEMORY[0x277CBEBF8] mutableCopy];
                v107 = v14;
                if ([a1 isActivationLayer:v10 withActivationType:10])
                {
                  v25 = v10;
                  [v25 descriptor];
                  v27 = v26 = v10;
                  [v27 a];
                  v29 = v28;

                  v30 = [v25 descriptor];
                  [v30 b];
                  v32 = v31;

                  v10 = v26;
                  [v24 addObject:v25];

                  v33 = v32 + -6.0;
                }

                else
                {
                  v33 = -7.0;
                  v29 = -1.0;
                }

                v34 = 0;
                if (fabsf(v29) >= v18 || fabsf(v33) >= v18)
                {
                  goto LABEL_92;
                }

                if (v13)
                {
                  v97 = v24;
                  v99 = v11;
                  v55 = [v12 objectAtIndexedSubscript:{objc_msgSend(v24, "count") + v110}];
                  v56 = v10;
                  v10 = v55;

                  goto LABEL_33;
                }

                [v12 addObjectsFromArray:v24];
                [v10 resultTensors];
                v87 = v61 = v10;
                if ([v87 count] == 1)
                {
                  v103 = v12;
                  v99 = v11;
                  v88 = [v61 resultTensors];
                  v89 = [v88 objectAtIndexedSubscript:0];
                  v90 = [v89 childLayers];
                  v91 = [v90 count];

                  if (v91 == 1)
                  {
                    v92 = [v61 resultTensors];
                    v93 = [v92 objectAtIndexedSubscript:0];
                    v94 = [v93 childLayers];
                    v10 = [v94 objectAtIndexedSubscript:0];

                    if (([v10 skipLayer] & 1) == 0)
                    {
                      v97 = v24;
                      v12 = v103;
LABEL_33:
                      v57 = 0;
                      v58 = 1;
                      v59 = 1;
                      v60 = 1;
                      v102 = v12;
                      while (1)
                      {
                        while (1)
                        {
                          v111 = v58;
                          v104 = v57;
                          if ((v60 & 1) != 0 && [a1 isArithmeticLayer:v10 withOperation:3])
                          {
                            v118 = 0u;
                            v119 = 0u;
                            v116 = 0u;
                            v117 = 0u;
                            v61 = v10;
                            v62 = [v10 sourceTensors];
                            v63 = [v62 countByEnumeratingWithState:&v116 objects:v125 count:16];
                            if (v63)
                            {
                              v66 = v63;
                              v67 = *v117;
                              while (2)
                              {
                                for (j = 0; j != v66; ++j)
                                {
                                  if (*v117 != v67)
                                  {
                                    objc_enumerationMutation(v62);
                                  }

                                  LODWORD(v64) = 6.0;
                                  *&v65 = v18;
                                  if ([a1 isConstTensor:*(*(&v116 + 1) + 8 * j) withValue:v64 withAccuracy:{v65, v97}])
                                  {
                                    v60 = 0;
                                    v10 = v61;
                                    goto LABEL_61;
                                  }
                                }

                                v66 = [v62 countByEnumeratingWithState:&v116 objects:v125 count:16];
                                if (v66)
                                {
                                  continue;
                                }

                                break;
                              }
                            }

                            v34 = 0;
                            v11 = v99;
                            goto LABEL_90;
                          }

                          if (![a1 isArithmeticLayer:v10 withOperation:{2, v97}])
                          {
                            goto LABEL_87;
                          }

                          v114 = 0u;
                          v115 = 0u;
                          v112 = 0u;
                          v113 = 0u;
                          v62 = [v10 sourceTensors];
                          v69 = [v62 countByEnumeratingWithState:&v112 objects:v124 count:16];
                          if (v69)
                          {
                            v72 = v69;
                            v73 = *v113;
                            while (2)
                            {
                              for (k = 0; k != v72; ++k)
                              {
                                if (*v113 != v73)
                                {
                                  objc_enumerationMutation(v62);
                                }

                                if ((v59 & (*(*(&v112 + 1) + 8 * k) == v23)) != 0)
                                {
                                  v59 = 0;
LABEL_61:

                                  goto LABEL_62;
                                }

                                if (v60)
                                {
                                  LODWORD(v70) = 1042983595;
                                  *&v71 = v18;
                                  if ([a1 isConstTensor:v70 withValue:v71 withAccuracy:?])
                                  {
                                    v60 = 0;
                                    goto LABEL_61;
                                  }
                                }
                              }

                              v72 = [v62 countByEnumeratingWithState:&v112 objects:v124 count:16];
                              if (v72)
                              {
                                continue;
                              }

                              break;
                            }
                          }

                          if ((v107 & 1) == 0)
                          {
                            goto LABEL_87;
                          }

LABEL_62:
                          if (!v106)
                          {
                            break;
                          }

                          v75 = [v12 lastObject];

                          v58 = 0;
                          v57 = 1;
                          v10 = v75;
                          v107 = 1;
                          if ((v111 & 1) == 0)
                          {
                            goto LABEL_71;
                          }
                        }

                        v76 = [v10 resultTensors];
                        if ([v76 count] != 1)
                        {

LABEL_87:
                          v34 = 0;
LABEL_88:
                          v24 = v97;
                          v11 = v99;
                          goto LABEL_92;
                        }

                        v77 = [v10 resultTensors];
                        v78 = [v77 objectAtIndexedSubscript:0];
                        [v78 childLayers];
                        v79 = v61 = v10;
                        if ((v111 & ([v79 count] != 1)) != 0)
                        {

                          v34 = 0;
                          v11 = v99;
                          v12 = v102;
LABEL_90:
                          v24 = v97;
                          goto LABEL_91;
                        }

                        v109 = v61;
                        v80 = [v61 resultTensors];
                        v81 = [v80 objectAtIndexedSubscript:0];
                        [v81 childLayers];
                        v82 = v100 = v76;
                        v105 = v104 & ([v82 count] > 1);

                        if (v105)
                        {
                          break;
                        }

                        v12 = v102;
                        [v102 addObject:v109];
                        v83 = [v109 resultTensors];
                        v84 = [v83 objectAtIndexedSubscript:0];
                        v85 = [v84 childLayers];
                        v75 = [v85 lastObject];

                        if ([v75 skipLayer])
                        {
                          goto LABEL_83;
                        }

                        v58 = 0;
                        v57 = 1;
                        v10 = v75;
                        v107 = 1;
                        if ((v111 & 1) == 0)
                        {
                          if ([a1 checkIntermediateTensorsOfFusedLayers:v102 stopGradientTensorList:v99 forPattern:@"Hardswish"])
                          {
LABEL_71:
                            v34 = 1;
                          }

                          else
                          {
LABEL_83:
                            v34 = 0;
                          }

                          v10 = v75;
                          goto LABEL_88;
                        }
                      }

                      v34 = 0;
                      v24 = v97;
                      v11 = v99;
                      v12 = v102;
                      v10 = v109;
                      goto LABEL_92;
                    }

                    v34 = 0;
                    v12 = v103;
LABEL_92:

                    goto LABEL_93;
                  }

                  v34 = 0;
                  v12 = v103;
                }

                else
                {

                  v34 = 0;
                }

LABEL_91:
                v10 = v61;
                goto LABEL_92;
              }
            }
          }

          else
          {
          }

          v34 = 0;
        }

        else
        {
          v34 = 0;
          v11 = v98;
        }
      }

      else
      {

        v86 = v23;
        v34 = 0;
        *a6 = v23;
      }

      v12 = v101;
LABEL_93:

      goto LABEL_94;
    }
  }

LABEL_12:
  v34 = 0;
LABEL_94:

  v95 = *MEMORY[0x277D85DE8];
  return v34;
}

+ (BOOL)canTransformToGELUFromLayer:(id)a3 stopGradientTensorList:(id)a4 fusedLayers:(id)a5 inputTensor:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v12 count];
  [a1 getAccuracyForLayer:v10];
  v15 = v14;
  if (v13)
  {
    v16 = [v12 objectAtIndexedSubscript:0];

    v17 = 1;
    v10 = v16;
  }

  else
  {
    v17 = 0;
  }

  if ([a1 isArithmeticLayer:v10 withOperation:2])
  {
    v18 = [v10 sourceTensors];
    v19 = [v18 objectAtIndexedSubscript:1];

    if (v13)
    {
      v20 = [v12 objectAtIndexedSubscript:v17];
      ++v17;
    }

    else
    {
      v58 = v11;
      if (a6)
      {
        v22 = v19;
        *a6 = v19;
      }

      [v12 addObject:v10];
      v23 = [v10 sourceTensors];
      [v23 objectAtIndexedSubscript:0];
      v25 = v24 = v19;
      v26 = [v25 parentLayers];
      v20 = [v26 lastObject];

      v19 = v24;
      v10 = v23;
      v11 = v58;
    }

    if (![a1 isArithmeticLayer:v20 withOperation:2])
    {
      goto LABEL_27;
    }

    v27 = [v20 sourceTensors];
    v28 = [v27 objectAtIndexedSubscript:1];
    LODWORD(v29) = 0.5;
    LODWORD(v30) = v15;
    v31 = [a1 isConstTensor:v28 withValue:v29 withAccuracy:v30];

    if (!v31)
    {
      goto LABEL_27;
    }

    if (v13)
    {
      v32 = [v12 objectAtIndexedSubscript:v17];
      ++v17;
    }

    else
    {
      [v12 addObject:v20];
      v33 = [v20 sourceTensors];
      v34 = [v33 objectAtIndexedSubscript:0];
      [v34 parentLayers];
      v59 = v11;
      v36 = v35 = v19;
      v32 = [v36 lastObject];

      v19 = v35;
      v11 = v59;

      v20 = v33;
    }

    if (![a1 isArithmeticLayer:v32 withOperation:0])
    {
      goto LABEL_23;
    }

    v37 = [v32 sourceTensors];
    v38 = [v37 objectAtIndexedSubscript:1];
    LODWORD(v39) = 1.0;
    LODWORD(v40) = v15;
    v41 = [a1 isConstTensor:v38 withValue:v39 withAccuracy:v40];

    if (!v41)
    {
LABEL_23:
      v21 = 0;
      v20 = v32;
LABEL_28:

      v10 = v20;
      goto LABEL_29;
    }

    if (v13)
    {
      v20 = [v12 objectAtIndexedSubscript:v17];

      if ([a1 isActivationLayer:v20 withActivationType:5])
      {
        v42 = [v12 objectAtIndexedSubscript:v17 + 1];

        v43 = [MEMORY[0x277CBEBF8] mutableCopy];
        v44 = [v12 subarrayWithRange:{v17 + 2, objc_msgSend(v12, "count") - (v17 + 2)}];
        v45 = [v44 mutableCopy];

        LODWORD(v46) = v15;
        if (([a1 canTransformToGELUType1FromLayer:v42 fusedLayers:v45 inputTensor:v19 withAccuracy:v46] & 1) == 0)
        {
          LODWORD(v47) = v15;
          if (([a1 canTransformToGELUType2FromLayer:v42 fusedLayers:v45 inputTensor:v19 withAccuracy:v47] & 1) == 0)
          {
            goto LABEL_33;
          }
        }

LABEL_32:
        v21 = 1;
LABEL_34:

        v20 = v42;
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    [v12 addObject:v32];
    v48 = [v32 sourceTensors];
    v49 = [v48 objectAtIndexedSubscript:0];
    v50 = [v49 parentLayers];
    v20 = [v50 lastObject];

    if (([a1 isActivationLayer:v20 withActivationType:5] & 1) == 0)
    {
LABEL_27:
      v21 = 0;
      goto LABEL_28;
    }

    [v12 addObject:v20];
    v51 = [v20 sourceTensors];
    v52 = [v51 objectAtIndexedSubscript:0];
    v53 = [v52 parentLayers];
    v42 = [v53 lastObject];

    v54 = [MEMORY[0x277CBEBF8] mutableCopy];
    LODWORD(v55) = v15;
    if ([a1 canTransformToGELUType1FromLayer:v42 fusedLayers:v54 inputTensor:v19 withAccuracy:v55])
    {
      v45 = v54;
    }

    else
    {
      v45 = [MEMORY[0x277CBEBF8] mutableCopy];

      LODWORD(v57) = v15;
      if (([a1 canTransformToGELUType2FromLayer:v42 fusedLayers:v45 inputTensor:v19 withAccuracy:v57] & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    [v12 addObjectsFromArray:v45];
    if ([a1 checkIntermediateTensorsOfFusedLayers:v12 stopGradientTensorList:v11 forPattern:@"GELU"])
    {
      goto LABEL_32;
    }

LABEL_33:
    v21 = 0;
    goto LABEL_34;
  }

  v21 = 0;
LABEL_29:

  return v21;
}

+ (float)getAccuracyForLayer:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [a3 sourceTensors];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = 0.00000001;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        v9 = v7;
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) descriptor];
        v11 = [v10 dataType];

        if (v11 == 3)
        {
          v7 = fminf(v7, 0.0001);
        }

        else
        {
          v7 = 0.0;
          if (v11 == 1)
          {
            v7 = fminf(v9, 0.00000001);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.00000001;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (BOOL)isArithmeticLayer:(id)a3 withOperation:(int)a4
{
  v5 = a3;
  v6 = v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v5 operation] == a4;

  return v6;
}

+ (BOOL)isActivationLayer:(id)a3 withActivationType:(int)a4
{
  v5 = a3;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v5 descriptor];
    v7 = [v6 activationType] == a4;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isConstTensor:(id)a3 withValue:(float)a4 withAccuracy:(float)a5
{
  v8 = a3;
  if (([v8 computeFlags] & 2) == 0)
  {
    goto LABEL_24;
  }

  v9 = [v8 descriptor];
  v10 = [v9 elementCount];

  if (v10 != 1)
  {
    goto LABEL_24;
  }

  v11 = [v8 descriptor];
  v12 = [v11 dataType];

  if (v12 != 3)
  {
    if (v12 == 1)
    {
      v13 = [v8 data];
      v14 = [v13 bytes];

      v15 = [v8 descriptor];
      v16 = [v15 elementCount];

      if (v16)
      {
        v17 = v16 - 1;
        do
        {
          v18 = *v14++;
          v19 = vabds_f32(v18, a4);
          _CF = v17-- != 0;
          v21 = _CF;
          v22 = v19 < a5;
        }

        while (v19 < a5 && (v21 & 1) != 0);
        goto LABEL_25;
      }

LABEL_26:
      v22 = 1;
      goto LABEL_25;
    }

    v36 = +[MLCLog framework];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [MLCPatternMatcher isConstTensor:a2 withValue:v8 withAccuracy:v36];
    }

LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }

  v23 = [v8 data];
  v24 = [v23 bytes];

  v25 = [v8 descriptor];
  v26 = [v25 elementCount];

  if (!v26)
  {
    goto LABEL_26;
  }

  v27 = v26 - 1;
  do
  {
    v28 = *v24++;
    _H0 = v28;
    __asm { FCVT            S0, H0 }

    v34 = vabds_f32(_S0, a4);
    _CF = v27-- != 0;
    v35 = _CF;
    v22 = v34 < a5;
  }

  while (v34 < a5 && (v35 & 1) != 0);
LABEL_25:

  return v22;
}

+ (BOOL)canTransformToGELUType1FromLayer:(id)a3 fusedLayers:(id)a4 inputTensor:(id)a5 withAccuracy:(float)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 count];
  if (![a1 isArithmeticLayer:v10 withOperation:2])
  {
    goto LABEL_14;
  }

  v14 = [v10 sourceTensors];
  v15 = [v14 objectAtIndexedSubscript:1];
  LODWORD(v16) = 1061962281;
  *&v17 = a6;
  v18 = [a1 isConstTensor:v15 withValue:v16 withAccuracy:v17];

  if (!v18)
  {
    goto LABEL_14;
  }

  if (v13)
  {
    v19 = [v11 objectAtIndexedSubscript:0];
    v20 = 1;
  }

  else
  {
    [v11 addObject:v10];
    v21 = [v10 sourceTensors];
    v22 = [v21 objectAtIndexedSubscript:0];
    v23 = [v22 parentLayers];
    v19 = [v23 lastObject];

    v20 = 0;
    v10 = v21;
  }

  if (![a1 isArithmeticLayer:v19 withOperation:0])
  {
    goto LABEL_8;
  }

  v24 = [v19 sourceTensors];
  v25 = [v24 objectAtIndexedSubscript:1];

  if (v25 != v12)
  {
    goto LABEL_8;
  }

  if (v13)
  {
    v10 = [v11 objectAtIndexedSubscript:v20];
    ++v20;
  }

  else
  {
    [v11 addObject:v19];
    v27 = [v19 sourceTensors];
    v28 = [v27 objectAtIndexedSubscript:0];
    v29 = [v28 parentLayers];
    v10 = [v29 lastObject];

    v19 = v27;
  }

  if (![a1 isArithmeticLayer:v10 withOperation:2])
  {
    goto LABEL_14;
  }

  v30 = [v10 sourceTensors];
  v31 = [v30 objectAtIndexedSubscript:1];

  if (v31 != v12)
  {
    goto LABEL_14;
  }

  if (v13)
  {
    v19 = [v11 objectAtIndexedSubscript:v20];
    ++v20;
  }

  else
  {
    [v11 addObject:v10];
    v33 = [v10 sourceTensors];
    v34 = [v33 objectAtIndexedSubscript:0];
    v35 = [v34 parentLayers];
    v19 = [v35 lastObject];

    v10 = v33;
  }

  if (![a1 isArithmeticLayer:v19 withOperation:2])
  {
    goto LABEL_8;
  }

  v36 = [v19 sourceTensors];
  v37 = [v36 objectAtIndexedSubscript:0];
  LODWORD(v38) = 1027024659;
  *&v39 = a6;
  v40 = [a1 isConstTensor:v37 withValue:v38 withAccuracy:v39];

  if (!v40)
  {
LABEL_8:
    v26 = 0;
    v10 = v19;
    goto LABEL_15;
  }

  if (v13)
  {
    v10 = [v11 objectAtIndexedSubscript:v20];
  }

  else
  {
    [v11 addObject:v19];
    v41 = [v19 sourceTensors];
    v42 = [v41 objectAtIndexedSubscript:1];
    v43 = [v42 parentLayers];
    v10 = [v43 lastObject];

    v19 = v41;
  }

  if (![a1 isArithmeticLayer:v10 withOperation:2])
  {
LABEL_14:
    v26 = 0;
    goto LABEL_15;
  }

  v44 = [v10 sourceTensors];
  v45 = [v44 objectAtIndexedSubscript:0];
  v46 = v45;
  if (v45 != v12)
  {

    goto LABEL_14;
  }

  v47 = [v10 sourceTensors];
  v48 = [v47 objectAtIndexedSubscript:1];

  v26 = v48 == v12;
  if (v48 == v12 && !v13)
  {
    [v11 addObject:v10];
    v26 = 1;
  }

LABEL_15:

  return v26;
}

+ (BOOL)canTransformToGELUType2FromLayer:(id)a3 fusedLayers:(id)a4 inputTensor:(id)a5 withAccuracy:(float)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 count];
  if (![a1 isArithmeticLayer:v10 withOperation:2])
  {
    goto LABEL_3;
  }

  v14 = [v10 sourceTensors];
  v15 = [v14 objectAtIndexedSubscript:1];

  if (v15 != v12)
  {
    goto LABEL_3;
  }

  if (v13)
  {
    v18 = [v11 objectAtIndexedSubscript:0];
    v19 = 1;
  }

  else
  {
    [v11 addObject:v10];
    v20 = [v10 sourceTensors];
    v21 = [v20 objectAtIndexedSubscript:0];
    v22 = [v21 parentLayers];
    v18 = [v22 lastObject];

    v19 = 0;
    v10 = v20;
  }

  if (![a1 isArithmeticLayer:v18 withOperation:2])
  {
    goto LABEL_20;
  }

  v23 = [v18 sourceTensors];
  v24 = [v23 objectAtIndexedSubscript:1];
  LODWORD(v25) = 1027024659;
  *&v26 = a6;
  v27 = [a1 isConstTensor:v24 withValue:v25 withAccuracy:v26];

  if (!v27)
  {
    goto LABEL_20;
  }

  if (v13)
  {
    v10 = [v11 objectAtIndexedSubscript:v19];
    ++v19;
  }

  else
  {
    [v11 addObject:v18];
    v28 = [v18 sourceTensors];
    v29 = [v28 objectAtIndexedSubscript:0];
    v30 = [v29 parentLayers];
    v10 = [v30 lastObject];

    v18 = v28;
  }

  if (![a1 isArithmeticLayer:v10 withOperation:0])
  {
    goto LABEL_3;
  }

  v31 = [v10 sourceTensors];
  v32 = [v31 objectAtIndexedSubscript:1];
  LODWORD(v33) = 1.0;
  *&v34 = a6;
  v35 = [a1 isConstTensor:v32 withValue:v33 withAccuracy:v34];

  if (!v35)
  {
    goto LABEL_3;
  }

  if (v13)
  {
    v18 = [v11 objectAtIndexedSubscript:v19];
    ++v19;
  }

  else
  {
    [v11 addObject:v10];
    v36 = [v10 sourceTensors];
    v37 = [v36 objectAtIndexedSubscript:0];
    v38 = [v37 parentLayers];
    v18 = [v38 lastObject];

    v10 = v36;
  }

  if (![a1 isArithmeticLayer:v18 withOperation:2] || (objc_msgSend(v18, "sourceTensors"), v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v39, "objectAtIndexedSubscript:", 1), v40 = objc_claimAutoreleasedReturnValue(), v40, v39, v40 != v12))
  {
LABEL_20:
    v16 = 0;
    v10 = v18;
    goto LABEL_4;
  }

  if (v13)
  {
    v10 = [v11 objectAtIndexedSubscript:v19];
  }

  else
  {
    [v11 addObject:v18];
    v41 = [v18 sourceTensors];
    v42 = [v41 objectAtIndexedSubscript:0];
    v43 = [v42 parentLayers];
    v10 = [v43 lastObject];

    v18 = v41;
  }

  if (![a1 isArithmeticLayer:v10 withOperation:2])
  {
LABEL_3:
    v16 = 0;
    goto LABEL_4;
  }

  v44 = [v10 sourceTensors];
  v45 = [v44 objectAtIndexedSubscript:1];
  LODWORD(v46) = 1340983747;
  *&v47 = a6;
  v16 = [a1 isConstTensor:v45 withValue:v46 withAccuracy:v47];

  if ((v16 & 1) != 0 && !v13)
  {
    [v11 addObject:v10];
    v16 = 1;
  }

LABEL_4:

  return v16 & 1;
}

+ (BOOL)checkIntermediateTensorsOfFusedLayers:(id)a3 stopGradientTensorList:(id)a4 forPattern:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    [MEMORY[0x277CBEB98] setWithArray:v9];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v11 = ;
  v12 = [v8 count];
  v13 = v12 - 1;
  if (v12 == 1)
  {
    v15 = 1;
  }

  else
  {
    v14 = v12;
    aSelector = a2;
    v33 = v9;
    v34 = v10;
    v15 = 0;
    v16 = 1;
    while (1)
    {
      v17 = [v8 objectAtIndexedSubscript:v16 - 1];
      if ([v17 skipLayer])
      {
        break;
      }

      v18 = [v17 resultTensors];
      v19 = [v18 objectAtIndexedSubscript:0];
      v20 = [v19 computeFlags];

      if (v20)
      {
        v24 = +[MLCLog framework];
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        v26 = NSStringFromSelector(aSelector);
        v27 = [v17 resultTensors];
        v28 = [v27 objectAtIndexedSubscript:0];
        *buf = 138413058;
        v36 = v26;
        v37 = 2112;
        v38 = v8;
        v39 = 2112;
        v40 = v34;
        v41 = 2112;
        v42 = v28;
        v29 = "%@: cannot fuse layers = %@ to %@, because tensor = %@ is output";
LABEL_18:
        _os_log_impl(&dword_238C1D000, v24, OS_LOG_TYPE_INFO, v29, buf, 0x2Au);

        goto LABEL_19;
      }

      v21 = [v17 resultTensors];
      v22 = [v21 objectAtIndexedSubscript:0];
      v23 = [v11 containsObject:v22];

      if (v23)
      {
        v24 = +[MLCLog framework];
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        v26 = NSStringFromSelector(aSelector);
        v27 = [v17 resultTensors];
        v28 = [v27 objectAtIndexedSubscript:0];
        *buf = 138413058;
        v36 = v26;
        v37 = 2112;
        v38 = v8;
        v39 = 2112;
        v40 = v34;
        v41 = 2112;
        v42 = v28;
        v29 = "%@: cannot fuse layers = %@ to %@, because tensor = %@ is in stop gradient list";
        goto LABEL_18;
      }

      v15 = v16++ >= v13;
      if (v14 == v16)
      {
        v15 = 1;
        v9 = v33;
        goto LABEL_20;
      }
    }

    v24 = +[MLCLog framework];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = NSStringFromSelector(aSelector);
      *buf = 138412802;
      v36 = v25;
      v37 = 2112;
      v38 = v34;
      v39 = 2112;
      v40 = v17;
      _os_log_impl(&dword_238C1D000, v24, OS_LOG_TYPE_INFO, "%@: cannot fuse layers to %@, because layer = %@ was previously fused", buf, 0x20u);
    }

LABEL_19:
    v9 = v33;

LABEL_20:
    v10 = v34;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (void)isConstTensor:(const char *)a1 withValue:(void *)a2 withAccuracy:(NSObject *)a3 .cold.1(const char *a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = [a2 descriptor];
  v8 = 138412546;
  v9 = v5;
  v10 = 1024;
  v11 = [v6 dataType];
  _os_log_error_impl(&dword_238C1D000, a3, OS_LOG_TYPE_ERROR, "%@: Unsupported data type = %d", &v8, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

@end