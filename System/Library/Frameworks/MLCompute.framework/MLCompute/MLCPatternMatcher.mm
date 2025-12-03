@interface MLCPatternMatcher
+ (BOOL)canTransformToGELUFromLayer:(id)layer stopGradientTensorList:(id)list fusedLayers:(id)layers inputTensor:(id *)tensor;
+ (BOOL)canTransformToGELUType1FromLayer:(id)layer fusedLayers:(id)layers inputTensor:(id)tensor withAccuracy:(float)accuracy;
+ (BOOL)canTransformToGELUType2FromLayer:(id)layer fusedLayers:(id)layers inputTensor:(id)tensor withAccuracy:(float)accuracy;
+ (BOOL)canTransformToHardSwishFromLayer:(id)layer stopGradientTensorList:(id)list fusedLayers:(id)layers inputTensor:(id *)tensor;
+ (BOOL)canTransformToReLUNFromLayer:(id)layer stopGradientTensorList:(id)list fusedLayers:(id)layers alpha:(float *)alpha beta:(float *)beta;
+ (BOOL)checkIntermediateTensorsOfFusedLayers:(id)layers stopGradientTensorList:(id)list forPattern:(id)pattern;
+ (BOOL)isActivationLayer:(id)layer withActivationType:(int)type;
+ (BOOL)isArithmeticLayer:(id)layer withOperation:(int)operation;
+ (BOOL)isConstTensor:(id)tensor withValue:(float)value withAccuracy:(float)accuracy;
+ (float)getAccuracyForLayer:(id)layer;
@end

@implementation MLCPatternMatcher

+ (BOOL)canTransformToReLUNFromLayer:(id)layer stopGradientTensorList:(id)list fusedLayers:(id)layers alpha:(float *)alpha beta:(float *)beta
{
  layerCopy = layer;
  listCopy = list;
  layersCopy = layers;
  v15 = [layersCopy count];
  v16 = [self isActivationLayer:layerCopy withActivationType:1];
  v17 = layerCopy;
  if (v15 && [layersCopy count] != 3)
  {
    if (v16 && [layersCopy count] == 4)
    {
      sourceTensors = [layersCopy objectAtIndexedSubscript:1];
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
    if ([self isActivationLayer:v17 withActivationType:2])
    {
      v111 = 1;
      v28 = v17;
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  sourceTensors = [v17 sourceTensors];
  if ([sourceTensors count] != 1)
  {
LABEL_32:
    v35 = 0;
    v28 = v17;
LABEL_75:

    goto LABEL_76;
  }

  v112 = v16;
  betaCopy = beta;
  sourceTensors2 = [v17 sourceTensors];
  v20 = [sourceTensors2 objectAtIndexedSubscript:0];
  parentLayers = [v20 parentLayers];
  if ([parentLayers count] != 1)
  {
LABEL_31:

    goto LABEL_32;
  }

  selfCopy = self;
  resultTensors = [v17 resultTensors];
  if ([resultTensors count] != 1)
  {

    goto LABEL_31;
  }

  v98 = v15;
  v101 = listCopy;
  resultTensors2 = [v17 resultTensors];
  v23 = [resultTensors2 objectAtIndexedSubscript:0];
  childLayers = [v23 childLayers];
  v110 = [childLayers count];

  if (v110 != 1)
  {
    v35 = 0;
    v28 = v17;
    listCopy = v101;
    goto LABEL_76;
  }

  resultTensors3 = [v17 resultTensors];
  v26 = [resultTensors3 objectAtIndexedSubscript:0];
  childLayers2 = [v26 childLayers];
  sourceTensors = [childLayers2 objectAtIndexedSubscript:0];

  self = selfCopy;
  if (([selfCopy isActivationLayer:sourceTensors withActivationType:2] & 1) == 0)
  {
    v35 = 0;
    v28 = v17;
    listCopy = v101;
    goto LABEL_75;
  }

  v111 = 1;
  listCopy = v101;
  v15 = v98;
  beta = betaCopy;
  v16 = v112;
LABEL_15:

  v28 = sourceTensors;
LABEL_16:
  *alpha = 0.0;
  [self getAccuracyForLayer:v17];
  v30 = v29;
  sourceTensors = [v28 descriptor];
  [sourceTensors a];
  if (fabsf(v31 + 1.0) > v30)
  {
    goto LABEL_74;
  }

  v113 = v16;
  descriptor = [v28 descriptor];
  [descriptor b];
  v34 = fabsf(v33);

  if (v34 <= v30)
  {
    if (v113)
    {
      sourceTensors = v17;
    }

    else
    {
      sourceTensors = [v28 sourceTensors];
      if ([sourceTensors count] != 1)
      {
        goto LABEL_74;
      }

      betaCopy2 = beta;
      v99 = v15;
      selfCopy2 = self;
      sourceTensors3 = [v28 sourceTensors];
      v42 = [sourceTensors3 objectAtIndexedSubscript:0];
      parentLayers2 = [v42 parentLayers];
      v44 = [parentLayers2 count];

      if (v44 != 1)
      {
        goto LABEL_18;
      }

      sourceTensors4 = [v28 sourceTensors];
      v46 = [sourceTensors4 objectAtIndexedSubscript:0];
      parentLayers3 = [v46 parentLayers];
      sourceTensors = [parentLayers3 objectAtIndexedSubscript:0];

      fusedLayers = [sourceTensors fusedLayers];
      v49 = [fusedLayers count];

      beta = betaCopy2;
      if (v49)
      {
        fusedLayers2 = [sourceTensors fusedLayers];
        lastObject = [fusedLayers2 lastObject];

        sourceTensors = lastObject;
      }

      self = selfCopy2;
      v15 = v99;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![sourceTensors operation])
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

      operation = [sourceTensors operation];
      v35 = 0;
      if (operation > 0x17 || ((1 << operation) & 0xC10180) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    }

    betaCopy3 = beta;
    v36 = v15;
    v37 = sourceTensors;
    sourceTensors = sourceTensors;
    descriptor2 = [sourceTensors descriptor];
    activationType = [descriptor2 activationType];

    if (activationType <= 8)
    {
      v15 = v36;
      if ((activationType - 3) < 2)
      {
LABEL_53:

        beta = betaCopy3;
        sourceTensors = v37;
LABEL_54:
        v62 = v15;
        resultTensors4 = [v28 resultTensors];
        v64 = [resultTensors4 count];

        if (v64 == 1)
        {
          if (v62)
          {
            v65 = [layersCopy objectAtIndexedSubscript:?];

            ++v111;
            v28 = v65;
          }

          else
          {
            v102 = sourceTensors;
            resultTensors5 = [v28 resultTensors];
            v79 = [resultTensors5 objectAtIndexedSubscript:0];

            childLayers3 = [v79 childLayers];
            if ([childLayers3 count] != 1)
            {
              goto LABEL_81;
            }

            selfCopy3 = self;
            betaCopy4 = beta;
            childLayers4 = [v79 childLayers];
            v82 = [childLayers4 objectAtIndexedSubscript:0];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) == 0)
            {
              goto LABEL_82;
            }

            beta = betaCopy4;
            if (v113)
            {
              [layersCopy addObject:v28];
            }

            childLayers5 = [v79 childLayers];
            v85 = [childLayers5 objectAtIndexedSubscript:0];

            [layersCopy addObject:v85];
            LOBYTE(childLayers5) = [v85 skipLayer];

            self = selfCopy3;
            if (childLayers5)
            {
LABEL_70:
              v35 = 0;
              sourceTensors = v102;
              v28 = v85;
              goto LABEL_75;
            }

            v28 = v85;
            sourceTensors = v102;
          }

          descriptor3 = [v28 descriptor];
          if ([descriptor3 activationType] != 17)
          {
LABEL_64:

            goto LABEL_74;
          }

          selfCopy4 = self;
          descriptor4 = [v28 descriptor];
          [descriptor4 a];
          v69 = v68;
          descriptor5 = [v28 descriptor];
          [descriptor5 b];
          v72 = vabds_f32(v69, v71);

          if (v72 < v30)
          {
            descriptor6 = [v28 descriptor];
            [descriptor6 b];
            *beta = -v74;

            if (v62)
            {
              v75 = [layersCopy objectAtIndexedSubscript:v111];

              v28 = v75;
              goto LABEL_61;
            }

            v102 = sourceTensors;
            resultTensors6 = [v28 resultTensors];
            v79 = [resultTensors6 objectAtIndexedSubscript:0];

            childLayers3 = [v79 childLayers];
            if ([childLayers3 count] == 1)
            {
              childLayers6 = [v79 childLayers];
              v90 = [childLayers6 objectAtIndexedSubscript:0];
              objc_opt_class();
              v91 = objc_opt_isKindOfClass();

              if (v91)
              {
                childLayers7 = [v79 childLayers];
                v85 = [childLayers7 objectAtIndexedSubscript:0];

                [layersCopy addObject:v85];
                LOBYTE(childLayers7) = [v85 skipLayer];

                if ((childLayers7 & 1) == 0)
                {
                  v28 = v85;
                  sourceTensors = v102;
LABEL_61:
                  descriptor3 = [v28 descriptor];
                  if ([descriptor3 activationType] == 2)
                  {
                    descriptor7 = [v28 descriptor];
                    [descriptor7 a];
                    if (fabsf(v77 + 1.0) <= v30)
                    {
                      descriptor8 = [v28 descriptor];
                      [descriptor8 b];
                      v95 = fabsf(v94);

                      if (v95 <= v30)
                      {
                        if (v62 || (v96 = [layersCopy mutableCopy], objc_msgSend(v96, "insertObject:atIndex:", v17, 0), v97 = objc_msgSend(selfCopy4, "checkIntermediateTensorsOfFusedLayers:stopGradientTensorList:forPattern:", v96, listCopy, @"ReLUN"), v96, v97))
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
              sourceTensors = v102;
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

      if (activationType != 1)
      {
        if (activationType != 6)
        {
          goto LABEL_73;
        }

        goto LABEL_53;
      }

      descriptor9 = [sourceTensors descriptor];
      [descriptor9 a];
      v57 = v61;
      goto LABEL_52;
    }

    switch(activationType)
    {
      case 9:
        descriptor10 = [sourceTensors descriptor];
        [descriptor10 a];
        v60 = v59;

        v15 = v36;
        if (v60 > 0.0)
        {
          goto LABEL_73;
        }

        goto LABEL_53;
      case 10:
        descriptor9 = [sourceTensors descriptor];
        [descriptor9 a];
        if (v86 <= 0.0)
        {
LABEL_48:
          descriptor11 = [sourceTensors descriptor];
          [descriptor11 b];
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
        descriptor9 = [sourceTensors descriptor];
        [descriptor9 a];
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

+ (BOOL)canTransformToHardSwishFromLayer:(id)layer stopGradientTensorList:(id)list fusedLayers:(id)layers inputTensor:(id *)tensor
{
  v127 = *MEMORY[0x277D85DE8];
  layerCopy = layer;
  listCopy = list;
  layersCopy = layers;
  v13 = [layersCopy count];
  v14 = v13 == 0;
  if (v13)
  {
    if ([layersCopy count] != 4 && objc_msgSend(layersCopy, "count") != 6)
    {
      goto LABEL_12;
    }

    v15 = [layersCopy objectAtIndexedSubscript:0];

    v16 = 1;
    layerCopy = v15;
  }

  else
  {
    v16 = 0;
  }

  [self getAccuracyForLayer:layerCopy];
  v18 = v17;
  if ([self isArithmeticLayer:layerCopy withOperation:0])
  {
    sourceTensors = [layerCopy sourceTensors];
    v20 = [sourceTensors count];

    if (v20 == 2)
    {
      v106 = v13;
      v110 = v16;
      if (v13)
      {
        v21 = [layersCopy objectAtIndexedSubscript:v16];

        layerCopy = v21;
        sourceTensors2 = [v21 sourceTensors];
        v23 = [sourceTensors2 objectAtIndexedSubscript:0];

        goto LABEL_10;
      }

      v101 = layersCopy;
      v23 = *tensor;
      v120 = 0u;
      v121 = 0u;
      v122 = 0u;
      v123 = 0u;
      sourceTensors3 = [layerCopy sourceTensors];
      v36 = [sourceTensors3 countByEnumeratingWithState:&v120 objects:v126 count:16];
      if (v36)
      {
        v39 = v36;
        v108 = v13 == 0;
        v98 = listCopy;
        v40 = 0;
        v41 = *v121;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v121 != v41)
            {
              objc_enumerationMutation(sourceTensors3);
            }

            v43 = *(*(&v120 + 1) + 8 * i);
            LODWORD(v37) = 3.0;
            *&v38 = v18;
            if ([self isConstTensor:v43 withValue:v37 withAccuracy:v38])
            {
              v40 = 1;
            }

            else
            {
              v44 = v43;

              v23 = v44;
            }
          }

          v39 = [sourceTensors3 countByEnumeratingWithState:&v120 objects:v126 count:16];
        }

        while (v39);

        v45 = v23;
        *tensor = v23;
        if (v40)
        {
          resultTensors = [layerCopy resultTensors];
          listCopy = v98;
          if ([resultTensors count] == 1)
          {
            resultTensors2 = [layerCopy resultTensors];
            v48 = [resultTensors2 objectAtIndexedSubscript:0];
            childLayers = [v48 childLayers];
            v50 = [childLayers count];

            if (v50 == 1)
            {
              [v101 addObject:layerCopy];
              resultTensors3 = [layerCopy resultTensors];
              v52 = [resultTensors3 objectAtIndexedSubscript:0];
              childLayers2 = [v52 childLayers];
              v54 = [childLayers2 objectAtIndexedSubscript:0];

              layerCopy = v54;
              if (([v54 skipLayer] & 1) == 0)
              {
                layersCopy = v101;
                v13 = 0;
                v14 = v108;
LABEL_10:
                v24 = [MEMORY[0x277CBEBF8] mutableCopy];
                v107 = v14;
                if ([self isActivationLayer:layerCopy withActivationType:10])
                {
                  v25 = layerCopy;
                  [v25 descriptor];
                  v27 = v26 = layerCopy;
                  [v27 a];
                  v29 = v28;

                  descriptor = [v25 descriptor];
                  [descriptor b];
                  v32 = v31;

                  layerCopy = v26;
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
                  v99 = listCopy;
                  v55 = [layersCopy objectAtIndexedSubscript:{objc_msgSend(v24, "count") + v110}];
                  v56 = layerCopy;
                  layerCopy = v55;

                  goto LABEL_33;
                }

                [layersCopy addObjectsFromArray:v24];
                [layerCopy resultTensors];
                v87 = v61 = layerCopy;
                if ([v87 count] == 1)
                {
                  v103 = layersCopy;
                  v99 = listCopy;
                  resultTensors4 = [v61 resultTensors];
                  v89 = [resultTensors4 objectAtIndexedSubscript:0];
                  childLayers3 = [v89 childLayers];
                  v91 = [childLayers3 count];

                  if (v91 == 1)
                  {
                    resultTensors5 = [v61 resultTensors];
                    v93 = [resultTensors5 objectAtIndexedSubscript:0];
                    childLayers4 = [v93 childLayers];
                    layerCopy = [childLayers4 objectAtIndexedSubscript:0];

                    if (([layerCopy skipLayer] & 1) == 0)
                    {
                      v97 = v24;
                      layersCopy = v103;
LABEL_33:
                      v57 = 0;
                      v58 = 1;
                      v59 = 1;
                      v60 = 1;
                      v102 = layersCopy;
                      while (1)
                      {
                        while (1)
                        {
                          v111 = v58;
                          v104 = v57;
                          if ((v60 & 1) != 0 && [self isArithmeticLayer:layerCopy withOperation:3])
                          {
                            v118 = 0u;
                            v119 = 0u;
                            v116 = 0u;
                            v117 = 0u;
                            v61 = layerCopy;
                            sourceTensors4 = [layerCopy sourceTensors];
                            v63 = [sourceTensors4 countByEnumeratingWithState:&v116 objects:v125 count:16];
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
                                    objc_enumerationMutation(sourceTensors4);
                                  }

                                  LODWORD(v64) = 6.0;
                                  *&v65 = v18;
                                  if ([self isConstTensor:*(*(&v116 + 1) + 8 * j) withValue:v64 withAccuracy:{v65, v97}])
                                  {
                                    v60 = 0;
                                    layerCopy = v61;
                                    goto LABEL_61;
                                  }
                                }

                                v66 = [sourceTensors4 countByEnumeratingWithState:&v116 objects:v125 count:16];
                                if (v66)
                                {
                                  continue;
                                }

                                break;
                              }
                            }

                            v34 = 0;
                            listCopy = v99;
                            goto LABEL_90;
                          }

                          if (![self isArithmeticLayer:layerCopy withOperation:{2, v97}])
                          {
                            goto LABEL_87;
                          }

                          v114 = 0u;
                          v115 = 0u;
                          v112 = 0u;
                          v113 = 0u;
                          sourceTensors4 = [layerCopy sourceTensors];
                          v69 = [sourceTensors4 countByEnumeratingWithState:&v112 objects:v124 count:16];
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
                                  objc_enumerationMutation(sourceTensors4);
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
                                  if ([self isConstTensor:v70 withValue:v71 withAccuracy:?])
                                  {
                                    v60 = 0;
                                    goto LABEL_61;
                                  }
                                }
                              }

                              v72 = [sourceTensors4 countByEnumeratingWithState:&v112 objects:v124 count:16];
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

                          lastObject = [layersCopy lastObject];

                          v58 = 0;
                          v57 = 1;
                          layerCopy = lastObject;
                          v107 = 1;
                          if ((v111 & 1) == 0)
                          {
                            goto LABEL_71;
                          }
                        }

                        resultTensors6 = [layerCopy resultTensors];
                        if ([resultTensors6 count] != 1)
                        {

LABEL_87:
                          v34 = 0;
LABEL_88:
                          v24 = v97;
                          listCopy = v99;
                          goto LABEL_92;
                        }

                        resultTensors7 = [layerCopy resultTensors];
                        v78 = [resultTensors7 objectAtIndexedSubscript:0];
                        [v78 childLayers];
                        v79 = v61 = layerCopy;
                        if ((v111 & ([v79 count] != 1)) != 0)
                        {

                          v34 = 0;
                          listCopy = v99;
                          layersCopy = v102;
LABEL_90:
                          v24 = v97;
                          goto LABEL_91;
                        }

                        v109 = v61;
                        resultTensors8 = [v61 resultTensors];
                        v81 = [resultTensors8 objectAtIndexedSubscript:0];
                        [v81 childLayers];
                        v82 = v100 = resultTensors6;
                        v105 = v104 & ([v82 count] > 1);

                        if (v105)
                        {
                          break;
                        }

                        layersCopy = v102;
                        [v102 addObject:v109];
                        resultTensors9 = [v109 resultTensors];
                        v84 = [resultTensors9 objectAtIndexedSubscript:0];
                        childLayers5 = [v84 childLayers];
                        lastObject = [childLayers5 lastObject];

                        if ([lastObject skipLayer])
                        {
                          goto LABEL_83;
                        }

                        v58 = 0;
                        v57 = 1;
                        layerCopy = lastObject;
                        v107 = 1;
                        if ((v111 & 1) == 0)
                        {
                          if ([self checkIntermediateTensorsOfFusedLayers:v102 stopGradientTensorList:v99 forPattern:@"Hardswish"])
                          {
LABEL_71:
                            v34 = 1;
                          }

                          else
                          {
LABEL_83:
                            v34 = 0;
                          }

                          layerCopy = lastObject;
                          goto LABEL_88;
                        }
                      }

                      v34 = 0;
                      v24 = v97;
                      listCopy = v99;
                      layersCopy = v102;
                      layerCopy = v109;
                      goto LABEL_92;
                    }

                    v34 = 0;
                    layersCopy = v103;
LABEL_92:

                    goto LABEL_93;
                  }

                  v34 = 0;
                  layersCopy = v103;
                }

                else
                {

                  v34 = 0;
                }

LABEL_91:
                layerCopy = v61;
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
          listCopy = v98;
        }
      }

      else
      {

        v86 = v23;
        v34 = 0;
        *tensor = v23;
      }

      layersCopy = v101;
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

+ (BOOL)canTransformToGELUFromLayer:(id)layer stopGradientTensorList:(id)list fusedLayers:(id)layers inputTensor:(id *)tensor
{
  layerCopy = layer;
  listCopy = list;
  layersCopy = layers;
  v13 = [layersCopy count];
  [self getAccuracyForLayer:layerCopy];
  v15 = v14;
  if (v13)
  {
    v16 = [layersCopy objectAtIndexedSubscript:0];

    v17 = 1;
    layerCopy = v16;
  }

  else
  {
    v17 = 0;
  }

  if ([self isArithmeticLayer:layerCopy withOperation:2])
  {
    sourceTensors = [layerCopy sourceTensors];
    v19 = [sourceTensors objectAtIndexedSubscript:1];

    if (v13)
    {
      lastObject = [layersCopy objectAtIndexedSubscript:v17];
      ++v17;
    }

    else
    {
      v58 = listCopy;
      if (tensor)
      {
        v22 = v19;
        *tensor = v19;
      }

      [layersCopy addObject:layerCopy];
      sourceTensors2 = [layerCopy sourceTensors];
      [sourceTensors2 objectAtIndexedSubscript:0];
      v25 = v24 = v19;
      parentLayers = [v25 parentLayers];
      lastObject = [parentLayers lastObject];

      v19 = v24;
      layerCopy = sourceTensors2;
      listCopy = v58;
    }

    if (![self isArithmeticLayer:lastObject withOperation:2])
    {
      goto LABEL_27;
    }

    sourceTensors3 = [lastObject sourceTensors];
    v28 = [sourceTensors3 objectAtIndexedSubscript:1];
    LODWORD(v29) = 0.5;
    LODWORD(v30) = v15;
    v31 = [self isConstTensor:v28 withValue:v29 withAccuracy:v30];

    if (!v31)
    {
      goto LABEL_27;
    }

    if (v13)
    {
      lastObject2 = [layersCopy objectAtIndexedSubscript:v17];
      ++v17;
    }

    else
    {
      [layersCopy addObject:lastObject];
      sourceTensors4 = [lastObject sourceTensors];
      v34 = [sourceTensors4 objectAtIndexedSubscript:0];
      [v34 parentLayers];
      v59 = listCopy;
      v36 = v35 = v19;
      lastObject2 = [v36 lastObject];

      v19 = v35;
      listCopy = v59;

      lastObject = sourceTensors4;
    }

    if (![self isArithmeticLayer:lastObject2 withOperation:0])
    {
      goto LABEL_23;
    }

    sourceTensors5 = [lastObject2 sourceTensors];
    v38 = [sourceTensors5 objectAtIndexedSubscript:1];
    LODWORD(v39) = 1.0;
    LODWORD(v40) = v15;
    v41 = [self isConstTensor:v38 withValue:v39 withAccuracy:v40];

    if (!v41)
    {
LABEL_23:
      v21 = 0;
      lastObject = lastObject2;
LABEL_28:

      layerCopy = lastObject;
      goto LABEL_29;
    }

    if (v13)
    {
      lastObject = [layersCopy objectAtIndexedSubscript:v17];

      if ([self isActivationLayer:lastObject withActivationType:5])
      {
        lastObject3 = [layersCopy objectAtIndexedSubscript:v17 + 1];

        v43 = [MEMORY[0x277CBEBF8] mutableCopy];
        v44 = [layersCopy subarrayWithRange:{v17 + 2, objc_msgSend(layersCopy, "count") - (v17 + 2)}];
        v45 = [v44 mutableCopy];

        LODWORD(v46) = v15;
        if (([self canTransformToGELUType1FromLayer:lastObject3 fusedLayers:v45 inputTensor:v19 withAccuracy:v46] & 1) == 0)
        {
          LODWORD(v47) = v15;
          if (([self canTransformToGELUType2FromLayer:lastObject3 fusedLayers:v45 inputTensor:v19 withAccuracy:v47] & 1) == 0)
          {
            goto LABEL_33;
          }
        }

LABEL_32:
        v21 = 1;
LABEL_34:

        lastObject = lastObject3;
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    [layersCopy addObject:lastObject2];
    sourceTensors6 = [lastObject2 sourceTensors];
    v49 = [sourceTensors6 objectAtIndexedSubscript:0];
    parentLayers2 = [v49 parentLayers];
    lastObject = [parentLayers2 lastObject];

    if (([self isActivationLayer:lastObject withActivationType:5] & 1) == 0)
    {
LABEL_27:
      v21 = 0;
      goto LABEL_28;
    }

    [layersCopy addObject:lastObject];
    sourceTensors7 = [lastObject sourceTensors];
    v52 = [sourceTensors7 objectAtIndexedSubscript:0];
    parentLayers3 = [v52 parentLayers];
    lastObject3 = [parentLayers3 lastObject];

    v54 = [MEMORY[0x277CBEBF8] mutableCopy];
    LODWORD(v55) = v15;
    if ([self canTransformToGELUType1FromLayer:lastObject3 fusedLayers:v54 inputTensor:v19 withAccuracy:v55])
    {
      v45 = v54;
    }

    else
    {
      v45 = [MEMORY[0x277CBEBF8] mutableCopy];

      LODWORD(v57) = v15;
      if (([self canTransformToGELUType2FromLayer:lastObject3 fusedLayers:v45 inputTensor:v19 withAccuracy:v57] & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    [layersCopy addObjectsFromArray:v45];
    if ([self checkIntermediateTensorsOfFusedLayers:layersCopy stopGradientTensorList:listCopy forPattern:@"GELU"])
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

+ (float)getAccuracyForLayer:(id)layer
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  sourceTensors = [layer sourceTensors];
  v4 = [sourceTensors countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(sourceTensors);
        }

        descriptor = [*(*(&v14 + 1) + 8 * i) descriptor];
        dataType = [descriptor dataType];

        if (dataType == 3)
        {
          v7 = fminf(v7, 0.0001);
        }

        else
        {
          v7 = 0.0;
          if (dataType == 1)
          {
            v7 = fminf(v9, 0.00000001);
          }
        }
      }

      v5 = [sourceTensors countByEnumeratingWithState:&v14 objects:v18 count:16];
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

+ (BOOL)isArithmeticLayer:(id)layer withOperation:(int)operation
{
  layerCopy = layer;
  v6 = layerCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [layerCopy operation] == operation;

  return v6;
}

+ (BOOL)isActivationLayer:(id)layer withActivationType:(int)type
{
  layerCopy = layer;
  if (layerCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    descriptor = [layerCopy descriptor];
    v7 = [descriptor activationType] == type;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isConstTensor:(id)tensor withValue:(float)value withAccuracy:(float)accuracy
{
  tensorCopy = tensor;
  if (([tensorCopy computeFlags] & 2) == 0)
  {
    goto LABEL_24;
  }

  descriptor = [tensorCopy descriptor];
  elementCount = [descriptor elementCount];

  if (elementCount != 1)
  {
    goto LABEL_24;
  }

  descriptor2 = [tensorCopy descriptor];
  dataType = [descriptor2 dataType];

  if (dataType != 3)
  {
    if (dataType == 1)
    {
      data = [tensorCopy data];
      bytes = [data bytes];

      descriptor3 = [tensorCopy descriptor];
      elementCount2 = [descriptor3 elementCount];

      if (elementCount2)
      {
        v17 = elementCount2 - 1;
        do
        {
          v18 = *bytes++;
          v19 = vabds_f32(v18, value);
          _CF = v17-- != 0;
          v21 = _CF;
          v22 = v19 < accuracy;
        }

        while (v19 < accuracy && (v21 & 1) != 0);
        goto LABEL_25;
      }

LABEL_26:
      v22 = 1;
      goto LABEL_25;
    }

    v36 = +[MLCLog framework];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [MLCPatternMatcher isConstTensor:a2 withValue:tensorCopy withAccuracy:v36];
    }

LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }

  data2 = [tensorCopy data];
  bytes2 = [data2 bytes];

  descriptor4 = [tensorCopy descriptor];
  elementCount3 = [descriptor4 elementCount];

  if (!elementCount3)
  {
    goto LABEL_26;
  }

  v27 = elementCount3 - 1;
  do
  {
    v28 = *bytes2++;
    _H0 = v28;
    __asm { FCVT            S0, H0 }

    v34 = vabds_f32(_S0, value);
    _CF = v27-- != 0;
    v35 = _CF;
    v22 = v34 < accuracy;
  }

  while (v34 < accuracy && (v35 & 1) != 0);
LABEL_25:

  return v22;
}

+ (BOOL)canTransformToGELUType1FromLayer:(id)layer fusedLayers:(id)layers inputTensor:(id)tensor withAccuracy:(float)accuracy
{
  layerCopy = layer;
  layersCopy = layers;
  tensorCopy = tensor;
  v13 = [layersCopy count];
  if (![self isArithmeticLayer:layerCopy withOperation:2])
  {
    goto LABEL_14;
  }

  sourceTensors = [layerCopy sourceTensors];
  v15 = [sourceTensors objectAtIndexedSubscript:1];
  LODWORD(v16) = 1061962281;
  *&v17 = accuracy;
  v18 = [self isConstTensor:v15 withValue:v16 withAccuracy:v17];

  if (!v18)
  {
    goto LABEL_14;
  }

  if (v13)
  {
    lastObject = [layersCopy objectAtIndexedSubscript:0];
    v20 = 1;
  }

  else
  {
    [layersCopy addObject:layerCopy];
    sourceTensors2 = [layerCopy sourceTensors];
    v22 = [sourceTensors2 objectAtIndexedSubscript:0];
    parentLayers = [v22 parentLayers];
    lastObject = [parentLayers lastObject];

    v20 = 0;
    layerCopy = sourceTensors2;
  }

  if (![self isArithmeticLayer:lastObject withOperation:0])
  {
    goto LABEL_8;
  }

  sourceTensors3 = [lastObject sourceTensors];
  v25 = [sourceTensors3 objectAtIndexedSubscript:1];

  if (v25 != tensorCopy)
  {
    goto LABEL_8;
  }

  if (v13)
  {
    layerCopy = [layersCopy objectAtIndexedSubscript:v20];
    ++v20;
  }

  else
  {
    [layersCopy addObject:lastObject];
    sourceTensors4 = [lastObject sourceTensors];
    v28 = [sourceTensors4 objectAtIndexedSubscript:0];
    parentLayers2 = [v28 parentLayers];
    layerCopy = [parentLayers2 lastObject];

    lastObject = sourceTensors4;
  }

  if (![self isArithmeticLayer:layerCopy withOperation:2])
  {
    goto LABEL_14;
  }

  sourceTensors5 = [layerCopy sourceTensors];
  v31 = [sourceTensors5 objectAtIndexedSubscript:1];

  if (v31 != tensorCopy)
  {
    goto LABEL_14;
  }

  if (v13)
  {
    lastObject = [layersCopy objectAtIndexedSubscript:v20];
    ++v20;
  }

  else
  {
    [layersCopy addObject:layerCopy];
    sourceTensors6 = [layerCopy sourceTensors];
    v34 = [sourceTensors6 objectAtIndexedSubscript:0];
    parentLayers3 = [v34 parentLayers];
    lastObject = [parentLayers3 lastObject];

    layerCopy = sourceTensors6;
  }

  if (![self isArithmeticLayer:lastObject withOperation:2])
  {
    goto LABEL_8;
  }

  sourceTensors7 = [lastObject sourceTensors];
  v37 = [sourceTensors7 objectAtIndexedSubscript:0];
  LODWORD(v38) = 1027024659;
  *&v39 = accuracy;
  v40 = [self isConstTensor:v37 withValue:v38 withAccuracy:v39];

  if (!v40)
  {
LABEL_8:
    v26 = 0;
    layerCopy = lastObject;
    goto LABEL_15;
  }

  if (v13)
  {
    layerCopy = [layersCopy objectAtIndexedSubscript:v20];
  }

  else
  {
    [layersCopy addObject:lastObject];
    sourceTensors8 = [lastObject sourceTensors];
    v42 = [sourceTensors8 objectAtIndexedSubscript:1];
    parentLayers4 = [v42 parentLayers];
    layerCopy = [parentLayers4 lastObject];

    lastObject = sourceTensors8;
  }

  if (![self isArithmeticLayer:layerCopy withOperation:2])
  {
LABEL_14:
    v26 = 0;
    goto LABEL_15;
  }

  sourceTensors9 = [layerCopy sourceTensors];
  v45 = [sourceTensors9 objectAtIndexedSubscript:0];
  v46 = v45;
  if (v45 != tensorCopy)
  {

    goto LABEL_14;
  }

  sourceTensors10 = [layerCopy sourceTensors];
  v48 = [sourceTensors10 objectAtIndexedSubscript:1];

  v26 = v48 == tensorCopy;
  if (v48 == tensorCopy && !v13)
  {
    [layersCopy addObject:layerCopy];
    v26 = 1;
  }

LABEL_15:

  return v26;
}

+ (BOOL)canTransformToGELUType2FromLayer:(id)layer fusedLayers:(id)layers inputTensor:(id)tensor withAccuracy:(float)accuracy
{
  layerCopy = layer;
  layersCopy = layers;
  tensorCopy = tensor;
  v13 = [layersCopy count];
  if (![self isArithmeticLayer:layerCopy withOperation:2])
  {
    goto LABEL_3;
  }

  sourceTensors = [layerCopy sourceTensors];
  v15 = [sourceTensors objectAtIndexedSubscript:1];

  if (v15 != tensorCopy)
  {
    goto LABEL_3;
  }

  if (v13)
  {
    lastObject = [layersCopy objectAtIndexedSubscript:0];
    v19 = 1;
  }

  else
  {
    [layersCopy addObject:layerCopy];
    sourceTensors2 = [layerCopy sourceTensors];
    v21 = [sourceTensors2 objectAtIndexedSubscript:0];
    parentLayers = [v21 parentLayers];
    lastObject = [parentLayers lastObject];

    v19 = 0;
    layerCopy = sourceTensors2;
  }

  if (![self isArithmeticLayer:lastObject withOperation:2])
  {
    goto LABEL_20;
  }

  sourceTensors3 = [lastObject sourceTensors];
  v24 = [sourceTensors3 objectAtIndexedSubscript:1];
  LODWORD(v25) = 1027024659;
  *&v26 = accuracy;
  v27 = [self isConstTensor:v24 withValue:v25 withAccuracy:v26];

  if (!v27)
  {
    goto LABEL_20;
  }

  if (v13)
  {
    layerCopy = [layersCopy objectAtIndexedSubscript:v19];
    ++v19;
  }

  else
  {
    [layersCopy addObject:lastObject];
    sourceTensors4 = [lastObject sourceTensors];
    v29 = [sourceTensors4 objectAtIndexedSubscript:0];
    parentLayers2 = [v29 parentLayers];
    layerCopy = [parentLayers2 lastObject];

    lastObject = sourceTensors4;
  }

  if (![self isArithmeticLayer:layerCopy withOperation:0])
  {
    goto LABEL_3;
  }

  sourceTensors5 = [layerCopy sourceTensors];
  v32 = [sourceTensors5 objectAtIndexedSubscript:1];
  LODWORD(v33) = 1.0;
  *&v34 = accuracy;
  v35 = [self isConstTensor:v32 withValue:v33 withAccuracy:v34];

  if (!v35)
  {
    goto LABEL_3;
  }

  if (v13)
  {
    lastObject = [layersCopy objectAtIndexedSubscript:v19];
    ++v19;
  }

  else
  {
    [layersCopy addObject:layerCopy];
    sourceTensors6 = [layerCopy sourceTensors];
    v37 = [sourceTensors6 objectAtIndexedSubscript:0];
    parentLayers3 = [v37 parentLayers];
    lastObject = [parentLayers3 lastObject];

    layerCopy = sourceTensors6;
  }

  if (![self isArithmeticLayer:lastObject withOperation:2] || (objc_msgSend(lastObject, "sourceTensors"), v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v39, "objectAtIndexedSubscript:", 1), v40 = objc_claimAutoreleasedReturnValue(), v40, v39, v40 != tensorCopy))
  {
LABEL_20:
    v16 = 0;
    layerCopy = lastObject;
    goto LABEL_4;
  }

  if (v13)
  {
    layerCopy = [layersCopy objectAtIndexedSubscript:v19];
  }

  else
  {
    [layersCopy addObject:lastObject];
    sourceTensors7 = [lastObject sourceTensors];
    v42 = [sourceTensors7 objectAtIndexedSubscript:0];
    parentLayers4 = [v42 parentLayers];
    layerCopy = [parentLayers4 lastObject];

    lastObject = sourceTensors7;
  }

  if (![self isArithmeticLayer:layerCopy withOperation:2])
  {
LABEL_3:
    v16 = 0;
    goto LABEL_4;
  }

  sourceTensors8 = [layerCopy sourceTensors];
  v45 = [sourceTensors8 objectAtIndexedSubscript:1];
  LODWORD(v46) = 1340983747;
  *&v47 = accuracy;
  v16 = [self isConstTensor:v45 withValue:v46 withAccuracy:v47];

  if ((v16 & 1) != 0 && !v13)
  {
    [layersCopy addObject:layerCopy];
    v16 = 1;
  }

LABEL_4:

  return v16 & 1;
}

+ (BOOL)checkIntermediateTensorsOfFusedLayers:(id)layers stopGradientTensorList:(id)list forPattern:(id)pattern
{
  v43 = *MEMORY[0x277D85DE8];
  layersCopy = layers;
  listCopy = list;
  patternCopy = pattern;
  if (listCopy)
  {
    [MEMORY[0x277CBEB98] setWithArray:listCopy];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v11 = ;
  v12 = [layersCopy count];
  v13 = v12 - 1;
  if (v12 == 1)
  {
    v15 = 1;
  }

  else
  {
    v14 = v12;
    aSelector = a2;
    v33 = listCopy;
    v34 = patternCopy;
    v15 = 0;
    v16 = 1;
    while (1)
    {
      v17 = [layersCopy objectAtIndexedSubscript:v16 - 1];
      if ([v17 skipLayer])
      {
        break;
      }

      resultTensors = [v17 resultTensors];
      v19 = [resultTensors objectAtIndexedSubscript:0];
      computeFlags = [v19 computeFlags];

      if (computeFlags)
      {
        v24 = +[MLCLog framework];
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        v26 = NSStringFromSelector(aSelector);
        resultTensors2 = [v17 resultTensors];
        v28 = [resultTensors2 objectAtIndexedSubscript:0];
        *buf = 138413058;
        v36 = v26;
        v37 = 2112;
        v38 = layersCopy;
        v39 = 2112;
        v40 = v34;
        v41 = 2112;
        v42 = v28;
        v29 = "%@: cannot fuse layers = %@ to %@, because tensor = %@ is output";
LABEL_18:
        _os_log_impl(&dword_238C1D000, v24, OS_LOG_TYPE_INFO, v29, buf, 0x2Au);

        goto LABEL_19;
      }

      resultTensors3 = [v17 resultTensors];
      v22 = [resultTensors3 objectAtIndexedSubscript:0];
      v23 = [v11 containsObject:v22];

      if (v23)
      {
        v24 = +[MLCLog framework];
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        v26 = NSStringFromSelector(aSelector);
        resultTensors2 = [v17 resultTensors];
        v28 = [resultTensors2 objectAtIndexedSubscript:0];
        *buf = 138413058;
        v36 = v26;
        v37 = 2112;
        v38 = layersCopy;
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
        listCopy = v33;
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
    listCopy = v33;

LABEL_20:
    patternCopy = v34;
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