id ABLoadResourcesWithCompletion(void *a1)
{
  v1 = a1;
  v2 = +[ABDeviceSceneResourceLoader sharedLoader];
  v3 = [(ABDeviceSceneResourceLoader *)v2 loadResourcesWithCompletion:v1];

  return v3;
}

id ABLogger()
{
  if (ABLogger_onceToken != -1)
  {
    ABLogger_cold_1();
  }

  v1 = ABLogger_logger;

  return v1;
}

uint64_t __ABLogger_block_invoke()
{
  ABLogger_logger = os_log_create("com.apple.ActionButtonSelector", "General");

  return MEMORY[0x2821F96F8]();
}

void sub_23DE19534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ABLoadDeviceSceneModel(void *a1@<X0>, uint64_t a2@<X8>)
{
  v187[1] = *MEMORY[0x277D85DE8];
  v168 = a1;
  v3 = ABDeviceModelResourceName();
  v169 = [v168 URLForResource:v3 withExtension:@"usdz"];

  if (v169)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [v169 path];
    v6 = [v4 isReadableFileAtPath:v5];

    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CD7AD0]) initWithURL:v169];
      v8 = v7;
      if (!v7)
      {
        *(a2 + 112) = 0u;
        *(a2 + 128) = 0u;
        *(a2 + 80) = 0u;
        *(a2 + 96) = 0u;
        *(a2 + 48) = 0u;
        *(a2 + 64) = 0u;
        *(a2 + 16) = 0u;
        *(a2 + 32) = 0u;
        *a2 = 0u;
LABEL_75:

        goto LABEL_76;
      }

      [v7 loadTextures];
      v9 = MEMORY[0x277CDBAA8];
      v155 = v8;
      v10 = [v8 objectAtIndex:0];
      v165 = [v9 nodeWithMDLObject:v10];

      if ((ABDeviceIsD23() & 1) == 0 && (ABDeviceIsV5x() & 1) == 0)
      {
        v11 = ABDegreesToRadians(180.0);
        SCNMatrix4MakeRotation(&v183, v11, 0.0, 1.0, 0.0);
        v182 = v183;
        [v165 setTransform:&v182];
      }

      v12 = [MEMORY[0x277CDBAA8] node];
      [v12 addChildNode:v165];
      v13 = [MEMORY[0x277CDBAF8] scene];
      v14 = [MEMORY[0x277D75348] blackColor];
      [v13 setFogColor:v14];

      v160 = [v168 URLForResource:@"Precomputed IBL" withExtension:0];
      v181 = 0;
      v159 = [MEMORY[0x277CDBA98] precomputedLightingEnvironmentContentsWithURL:v160 error:&v181];
      v154 = v181;
      v15 = [v13 lightingEnvironment];
      [v15 setContents:v159];

      v166 = [MEMORY[0x277CDBAA8] node];
      [v166 setName:@"camera"];
      v158 = [MEMORY[0x277CDBA48] camera];
      [v166 setCamera:v158];
      [v166 setPosition:{0.0, 0.0, 0.0}];
      v16 = [v13 rootNode];
      [v16 addChildNode:v166];

      v17 = [v13 rootNode];
      [v17 addChildNode:v12];

      v170 = +[ABDeviceSceneModelNodeMap thisDeviceModelNodeIdentifiers];
      v18 = [v170 actionButton];
      v19 = [v165 childNodeWithName:v18 recursively:1];

      v167 = [v19 clone];
      v20 = [v167 name];
      v21 = [v20 stringByAppendingString:@"_highlight"];
      [v167 setName:v21];

      v22 = [v19 geometry];
      v23 = [v22 copy];
      [v167 setGeometry:v23];

      if (ABDeviceIsD23())
      {
        v24 = -0.002;
      }

      else if (ABDeviceIsV5x())
      {
        v24 = -0.002;
      }

      else
      {
        v24 = 0.002;
      }

      IsD23 = ABDeviceIsD23();
      IsV5x = ABDeviceIsV5x();
      memset(&v182, 0, sizeof(v182));
      v27 = *"1\b,=";
      if (((IsV5x | IsD23) & 1) == 0)
      {
        v27 = 0.0;
      }

      *&a.m14 = 0;
      *&a.m12 = 0;
      a.m11 = 1.0;
      a.m22 = 1.0;
      *&a.m23 = 0;
      *&a.m31 = 0;
      *&a.m33 = 1065353216;
      a.m41 = v24;
      a.m42 = 0.0;
      a.m43 = v27;
      a.m44 = 1.0;
      memset(&b.m22, 0, 40);
      *&b.m12 = 0uLL;
      b.m11 = 1.0;
      b.m22 = 1.0;
      b.m33 = 1.01;
      b.m44 = 1.0;
      SCNMatrix4Mult(&v182, &a, &b);
      a = v182;
      [v167 setTransform:&a];
      v28 = [v19 parentNode];
      [v28 addChildNode:v167];

      v29 = [v170 actionButtonSides];
      v30 = [v170 actionButton];
      if ([v29 isEqualToString:v30])
      {

        v162 = 0;
        v157 = 0;
      }

      else
      {
        v31 = [v170 actionButtonSides];
        v32 = v31 == 0;

        if (v32)
        {
          v162 = 0;
          v157 = 0;
LABEL_21:
          v38 = [v170 glassOpaque];
          v39 = v38 == 0;

          if (!v39)
          {
            v40 = [v170 glassOpaque];
            v41 = [v12 childNodeWithName:v40 recursively:1];
            v42 = [v41 geometry];
            v43 = [v42 firstMaterial];

            v44 = [v43 ambientOcclusion];
            [v44 setTextureComponents:15];

            v45 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.7];
            v46 = [v43 transparent];
            [v46 setContents:v45];

            v47 = [v43 metalness];
            [v47 setContents:&unk_28501F118];

            v48 = [v43 roughness];
            [v48 setContents:&unk_28501F128];
          }

          v49 = [v170 frontCamera];
          v50 = v49 == 0;

          if (!v50)
          {
            v51 = [v170 frontCamera];
            v52 = [v12 childNodeWithName:v51 recursively:1];
            v53 = [v52 geometry];
            v54 = [v53 firstMaterial];
            v55 = [v54 ambientOcclusion];
            [v55 setTextureComponents:15];
          }

          v56 = [v170 bodyHoles];
          v57 = [v12 childNodeWithName:v56 recursively:1];
          v58 = [v57 geometry];
          v59 = [v58 firstMaterial];
          v60 = [v59 ambientOcclusion];
          [v60 setIntensity:1.8];

          v61 = [v170 muteWall];
          v62 = [v12 childNodeWithName:v61 recursively:1];
          v63 = [v62 geometry];
          v64 = [v63 firstMaterial];
          v65 = [v64 ambientOcclusion];
          [v65 setIntensity:1.8];

          v66 = [MEMORY[0x277D75348] colorWithWhite:0.5 alpha:1.0];
          v67 = ABDeviceIsD23();
          if (ABDeviceIsV5x())
          {
            v68 = [MEMORY[0x277CBEB18] array];
            v69 = [v170 body];
            v70 = v69 == 0;

            if (!v70)
            {
              v71 = [v170 body];
              [v68 addObject:v71];
            }

            v72 = [v170 button1Top];
            v73 = v72 == 0;

            if (!v73)
            {
              v74 = [v170 button1Top];
              [v68 addObject:v74];
            }

            v75 = [v170 button2Top];
            v76 = v75 == 0;

            if (!v76)
            {
              v77 = [v170 button2Top];
              [v68 addObject:v77];
            }

            v78 = [v170 buttonSides];
            v79 = v78 == 0;

            if (!v79)
            {
              v80 = [v170 buttonSides];
              [v68 addObject:v80];
            }

            v81 = [v170 bodyHoles];
            v82 = v81 == 0;

            if (!v82)
            {
              v83 = [v170 bodyHoles];
              [v68 addObject:v83];
            }

            v84 = [v170 muteWall];
            v85 = v84 == 0;

            if (!v85)
            {
              v86 = [v170 muteWall];
              [v68 addObject:v86];
            }

            v87 = [v170 actionButton];
            v88 = v87 == 0;

            if (!v88)
            {
              v89 = [v170 actionButton];
              [v68 addObject:v89];
            }

            v90 = [v170 actionButtonSides];
            v91 = v90 == 0;

            if (!v91)
            {
              v92 = [v170 actionButtonSides];
              [v68 addObject:v92];
            }

            v175[0] = MEMORY[0x277D85DD0];
            v175[1] = 3221225472;
            v175[2] = __ABLoadDeviceSceneModel_block_invoke;
            v175[3] = &unk_278BFFE78;
            v176 = v12;
            v177 = v66;
            v163 = xmmword_23DE28940;
            v178 = xmmword_23DE28940;
            [v68 enumerateObjectsUsingBlock:v175];

            if (v67)
            {
              goto LABEL_62;
            }
          }

          else
          {
            v163 = xmmword_23DE28930;
            if (v67)
            {
LABEL_62:
              v118 = [v170 body];
              v119 = [v12 childNodeWithName:v118 recursively:1];
              v120 = [v119 geometry];
              v156 = [v120 firstMaterial];

              if (ABDeviceIsD23())
              {
                v121 = [@"Action_Button_glow_modifier" stringByAppendingString:@"-D23"];
              }

              else
              {
                v121 = @"Action_Button_glow_modifier";
              }

              if (ABDeviceIsV5x())
              {
                v122 = [(__CFString *)v121 stringByAppendingString:@"-V53-V54"];

                v123 = v122;
              }

              else
              {
                v123 = v121;
              }

              v153 = v123;
              v161 = [v168 URLForResource:? withExtension:?];
              if (v161)
              {
                v124 = [MEMORY[0x277CCACA8] stringWithContentsOfURL:v161 encoding:4 error:0];
                if ([v124 length])
                {
                  v186 = *MEMORY[0x277CDBC20];
                  v187[0] = v124;
                  v125 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v187 forKeys:&v186 count:1];
                  [v156 setShaderModifiers:v125];
                }
              }

              v126 = [MEMORY[0x277CDBA90] material];
              [v126 setLightingModelName:*MEMORY[0x277CDBBA0]];
              v127 = [MEMORY[0x277D75348] blackColor];
              v128 = [v126 diffuse];
              [v128 setContents:v127];

              v129 = [MEMORY[0x277D755B8] imageNamed:@"Action_Button_glow_normal" inBundle:v168 withConfiguration:0];
              v130 = [v126 normal];
              [v130 setContents:v129];

              v131 = [MEMORY[0x277D755B8] imageNamed:@"Action_Button_glow_normal" inBundle:v168 withConfiguration:0];
              v132 = [v126 roughness];
              [v132 setContents:v131];

              v133 = [MEMORY[0x277D75348] colorWithRed:0.0941176471 green:0.0862745098 blue:0.0745098039 alpha:1.0];
              v134 = [v126 emission];
              [v134 setContents:v133];

              v135 = [v126 emission];
              [v135 setIntensity:1.2];

              v136 = [v126 transparent];
              [v136 setContents:&unk_28501F138];

              if (v126)
              {
                v185 = v126;
                v137 = [MEMORY[0x277CBEA60] arrayWithObjects:&v185 count:1];
                v138 = [v167 geometry];
                [v138 setMaterials:v137];

                v184 = v126;
                v139 = [MEMORY[0x277CBEA60] arrayWithObjects:&v184 count:1];
                v140 = [v162 geometry];
                [v140 setMaterials:v139];
              }

              v141 = v19;
              v152 = v13;
              *a2 = v152;
              v164 = v12;
              *(a2 + 8) = v164;
              v142 = [v170 screenOpaque];
              v143 = [v165 childNodeWithName:v142 recursively:1];
              *(a2 + 16) = v143;
              v144 = [v170 body];
              [v164 childNodeWithName:v144 recursively:1];
              *(a2 + 24) = v145 = v66;
              v146 = [v170 muteWall];
              *(a2 + 32) = [v164 childNodeWithName:v146 recursively:1];
              v147 = [v170 actionButtonBlocking];
              *(a2 + 40) = [v164 childNodeWithName:v147 recursively:1];
              *(a2 + 48) = v141;
              *(a2 + 56) = v167;
              *(a2 + 64) = v157;
              *(a2 + 72) = v162;
              v148 = *&v182.m21;
              *(a2 + 80) = *&v182.m11;
              *(a2 + 96) = v148;
              v149 = *&v182.m41;
              *(a2 + 112) = *&v182.m31;
              *(a2 + 128) = v149;
              v150 = v157;

              v8 = v155;
              goto LABEL_75;
            }
          }

          v93 = [MEMORY[0x277CBEB18] array];
          v94 = [v170 body];
          v95 = v94 == 0;

          if (!v95)
          {
            v96 = [v170 body];
            [v93 addObject:v96];
          }

          v97 = [v170 button1Top];
          v98 = v97 == 0;

          if (!v98)
          {
            v99 = [v170 button1Top];
            [v93 addObject:v99];
          }

          v100 = [v170 button2Top];
          v101 = v100 == 0;

          if (!v101)
          {
            v102 = [v170 button2Top];
            [v93 addObject:v102];
          }

          v103 = [v170 buttonSides];
          v104 = v103 == 0;

          if (!v104)
          {
            v105 = [v170 buttonSides];
            [v93 addObject:v105];
          }

          v106 = [v170 bodyHoles];
          v107 = v106 == 0;

          if (!v107)
          {
            v108 = [v170 bodyHoles];
            [v93 addObject:v108];
          }

          v109 = [v170 muteWall];
          v110 = v109 == 0;

          if (!v110)
          {
            v111 = [v170 muteWall];
            [v93 addObject:v111];
          }

          v112 = [v170 actionButton];
          v113 = v112 == 0;

          if (!v113)
          {
            v114 = [v170 actionButton];
            [v93 addObject:v114];
          }

          v115 = [v170 actionButtonSides];
          v116 = v115 == 0;

          if (!v116)
          {
            v117 = [v170 actionButtonSides];
            [v93 addObject:v117];
          }

          v171[0] = MEMORY[0x277D85DD0];
          v171[1] = 3221225472;
          v171[2] = __ABLoadDeviceSceneModel_block_invoke_2;
          v171[3] = &unk_278BFFE78;
          v172 = v12;
          v173 = v66;
          v174 = v163;
          [v93 enumerateObjectsUsingBlock:v171];

          goto LABEL_62;
        }

        v33 = [v170 actionButtonSides];
        v157 = [v165 childNodeWithName:v33 recursively:1];

        v162 = [v157 clone];
        v34 = [v162 name];
        v35 = [v34 stringByAppendingString:@"_highlight"];
        [v162 setName:v35];

        v36 = [v157 geometry];
        v37 = [v36 copy];
        [v162 setGeometry:v37];

        a = v182;
        [v162 setTransform:&a];
        v29 = [v157 parentNode];
        [v29 addChildNode:v162];
      }

      goto LABEL_21;
    }
  }

  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
LABEL_76:

  v151 = *MEMORY[0x277D85DE8];
}

__CFString *ABDeviceModelResourceName()
{
  v2 = *MEMORY[0x277D85DE8];
  if (ABDeviceIsV59_onceToken != -1)
  {
    ABDeviceModelResourceName_cold_1();
  }

  if (ABDeviceIsV59_sIsDevice)
  {
    result = @"iPhone15_Pro_NaturalTitanium_v0006-V59";
  }

  else
  {
    if (ABDeviceIsV57_onceToken != -1)
    {
      ABDeviceModelResourceName_cold_2();
    }

    if (ABDeviceIsV57_sIsDevice)
    {
      result = @"iPhone15_Pro_NaturalTitanium_v0006-V57";
    }

    else
    {
      if (ABDeviceIsV5x_onceToken != -1)
      {
        ABDeviceModelResourceName_cold_3();
      }

      if (ABDeviceIsV5x_sIsDevice)
      {
        result = @"iPhoneXX_White_v0007-V53-V54";
      }

      else
      {
        if (ABDeviceIsD23_onceToken != -1)
        {
          ABDeviceModelResourceName_cold_4();
        }

        if (ABDeviceIsD23_sIsDevice)
        {
          result = @"iPhoneXX_White_v0027-D23";
        }

        else if ((MGIsDeviceOfType() & 1) != 0 || MGIsDeviceOfType())
        {
          result = @"iPhone15_Pro_NaturalTitanium_v0005-D83-D84";
        }

        else
        {
          result = @"iPhone15_Pro_NaturalTitanium_v0006-D47-D48-D93-D94";
        }
      }
    }
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23DE1AC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id carouselItems(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [ABCarouselItem alloc];
        v10 = [v8 image];
        v11 = [v8 canBeHighlighted];
        v12 = [v8 identifier];
        v13 = [(ABCarouselItem *)&v9->super.isa initWithImage:v10 canBeHighlighted:v11 identifier:v12];
        [v2 addObject:v13];
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v14 = [v2 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void sub_23DE1CA78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, uint64_t a23, uint64_t a24, char a25)
{
  objc_destroyWeak((v26 + 48));
  _Block_object_dispose(&a25, 8);
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23DE1CDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double __move_assignment_8_8_s0_s8_s16_S_s24_s32_s40_s48_s56_s64_s72_t80w64(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;

  v6 = a2[1];
  a2[1] = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;

  v8 = a2[2];
  a2[2] = 0;
  v9 = *(a1 + 16);
  *(a1 + 16) = v8;

  *&result = __move_assignment_8_8_s0_s8_s16_s24_s32_s40_s48_t56w64(a1 + 24, a2 + 3).n128_u64[0];
  return result;
}

__n128 __move_assignment_8_8_s0_s8_s16_s24_s32_s40_s48_t56w64(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;

  v6 = a2[1];
  a2[1] = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;

  v8 = a2[2];
  a2[2] = 0;
  v9 = *(a1 + 16);
  *(a1 + 16) = v8;

  v10 = a2[3];
  a2[3] = 0;
  v11 = *(a1 + 24);
  *(a1 + 24) = v10;

  v12 = a2[4];
  a2[4] = 0;
  v13 = *(a1 + 32);
  *(a1 + 32) = v12;

  v14 = a2[5];
  a2[5] = 0;
  v15 = *(a1 + 40);
  *(a1 + 40) = v14;

  v16 = a2[6];
  a2[6] = 0;
  v17 = *(a1 + 48);
  *(a1 + 48) = v16;

  result = *(a2 + 7);
  v19 = *(a2 + 9);
  v20 = *(a2 + 11);
  *(a1 + 104) = *(a2 + 13);
  *(a1 + 88) = v20;
  *(a1 + 72) = v19;
  *(a1 + 56) = result;
  return result;
}

__n128 __copy_constructor_8_8_s0_s8_s16_s24_s32_s40_s48_t56w64(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 72);
  v5 = *(a2 + 88);
  v6 = *(a2 + 104);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 104) = v6;
  *(a1 + 88) = v5;
  *(a1 + 72) = result;
  return result;
}

void __destructor_8_s0_s8_s16_s24_s32_s40_s48(uint64_t a1)
{
  v2 = *(a1 + 48);
}

double __copy_assignment_8_8_s0_s8_s16_S_s24_s32_s40_s48_s56_s64_s72_t80w64(id *a1, id *a2)
{
  objc_storeStrong(a1, *a2);
  objc_storeStrong(a1 + 1, a2[1]);
  objc_storeStrong(a1 + 2, a2[2]);

  *&result = __copy_assignment_8_8_s0_s8_s16_s24_s32_s40_s48_t56w64((a1 + 3), (a2 + 3)).n128_u64[0];
  return result;
}

__n128 __copy_assignment_8_8_s0_s8_s16_s24_s32_s40_s48_t56w64(uint64_t a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  objc_storeStrong((a1 + 8), *(a2 + 8));
  objc_storeStrong((a1 + 16), *(a2 + 16));
  objc_storeStrong((a1 + 24), *(a2 + 24));
  objc_storeStrong((a1 + 32), *(a2 + 32));
  objc_storeStrong((a1 + 40), *(a2 + 40));
  objc_storeStrong((a1 + 48), *(a2 + 48));
  result = *(a2 + 56);
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 56) = result;
  return result;
}

void __destructor_8_s0_s8_s16_S_s24_s32_s40_s48_s56_s64_s72(id *a1)
{

  __destructor_8_s0_s8_s16_s24_s32_s40_s48((a1 + 3));
}

double __copy_constructor_8_8_s0_s8_s16_S_s24_s32_s40_s48_s56_s64_s72_t80w64(void *a1, id *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  *&result = __copy_constructor_8_8_s0_s8_s16_s24_s32_s40_s48_t56w64((a1 + 3), (a2 + 3)).n128_u64[0];
  return result;
}

void ABReleaseResources()
{
  v0 = +[ABDeviceSceneResourceLoader sharedLoader];
  [(ABDeviceSceneResourceLoader *)v0 releaseResources];
}

void sub_23DE1D8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

void sub_23DE1F7EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_23DE207B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __ABLoadDeviceSceneModel_block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = [*(a1 + 32) childNodeWithName:a2 recursively:1];
  v3 = [v11 geometry];
  v4 = [v3 firstMaterial];

  v5 = *(a1 + 48);
  v6 = [v4 normal];
  [v6 setIntensity:v5];

  v7 = *(a1 + 40);
  v8 = [v4 diffuse];
  [v8 setContents:v7];

  v9 = *(a1 + 56);
  v10 = [v4 roughness];
  [v10 setIntensity:v9];
}

void __ABLoadDeviceSceneModel_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = [*(a1 + 32) childNodeWithName:a2 recursively:1];
  v3 = [v11 geometry];
  v4 = [v3 firstMaterial];

  v5 = *(a1 + 48);
  v6 = [v4 normal];
  [v6 setIntensity:v5];

  v7 = *(a1 + 40);
  v8 = [v4 diffuse];
  [v8 setContents:v7];

  v9 = *(a1 + 56);
  v10 = [v4 roughness];
  [v10 setIntensity:v9];
}

void ABDeviceSceneButtonModelSetColor(id *a1, void *a2, double a3)
{
  v5 = a2;
  v33 = 0.0;
  v34 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
  [v5 getRed:&v34 green:&v33 blue:&v32 alpha:&v31];
  v6 = [*a1 geometry];
  v7 = [v6 firstMaterial];

  HIDWORD(v9) = HIDWORD(v33);
  HIDWORD(v8) = HIDWORD(v34);
  *&v8 = v34;
  *&v9 = v33;
  HIDWORD(v10) = HIDWORD(v32);
  *&v10 = v32;
  v11 = [MEMORY[0x277CCAE60] valueWithSCNVector3:{v8, v9, v10}];
  [v7 setValue:v11 forKey:@"glowColor"];

  [v7 setValue:&unk_28501F148 forKey:@"glowDistance"];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v31 * 0.4];
  [v7 setValue:v12 forKey:@"glowAmount"];

  if (ABDeviceIsD23())
  {
    [v7 setValue:&unk_28501F158 forKey:@"glowFalloff"];
    [v7 setValue:&unk_28501F168 forKey:@"glowScaleFactor"];
    [v7 setValue:&unk_28501F178 forKey:@"glowAmount"];
  }

  if (ABDeviceIsV5x())
  {
    [v7 setValue:&unk_28501F188 forKey:@"glowFalloff"];
    [v7 setValue:&unk_28501F198 forKey:@"glowScaleFactor"];
    [v7 setValue:&unk_28501F1A8 forKey:@"glowAmount"];
  }

  v13 = [a1[1] geometry];
  v14 = [v13 firstMaterial];

  v15 = [v14 emission];
  [v15 setContents:v5];

  v16 = [v14 emission];
  [v16 setIntensity:a3 * 0.35];

  v17 = [a1[2] geometry];
  v18 = [v17 firstMaterial];

  v19 = [v18 emission];
  [v19 setContents:v5];

  v20 = [v18 emission];
  [v20 setIntensity:a3 * 0.35];

  if (v5)
  {
    v21 = [a1[4] geometry];
    v22 = [v21 firstMaterial];
    v23 = [v22 emission];
    [v23 setContents:v5];

    v24 = [a1[6] geometry];
    v25 = [v24 firstMaterial];
    v26 = [v25 emission];
    [v26 setContents:v5];
  }

  [a1[4] setOpacity:a3];
  [a1[6] setOpacity:a3];
  v28 = a3 == 1.0 && v5 != 0;
  [a1[3] setHidden:v28];
  [a1[5] setHidden:v28];
  v30 = a3 == 0.0 && v5 == 0;
  [a1[4] setHidden:v30];
  [a1[6] setHidden:v30];

  __destructor_8_s0_s8_s16_s24_s32_s40_s48(a1);
}

void sub_23DE21E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ABDefaultZoomedOutSceneParams()
{
  if (ABDefaultZoomedOutSceneParams_onceToken != -1)
  {
    ABDefaultZoomedOutSceneParams_cold_1();
  }

  v1 = ABDefaultZoomedOutSceneParams_params;

  return v1;
}

void __ABDefaultZoomedOutSceneParams_block_invoke()
{
  v7[16] = *MEMORY[0x277D85DE8];
  v6[0] = @"Scale";
  v6[1] = @"Rotation";
  v7[0] = &unk_28501EF78;
  v7[1] = &unk_28501EF90;
  v6[2] = @"xOffset";
  v6[3] = @"yOffset";
  v7[2] = &unk_28501EFA8;
  v7[3] = &unk_28501F1B8;
  v6[4] = @"zOffset";
  v6[5] = @"Damping";
  v7[4] = &unk_28501EFC0;
  v7[5] = &unk_28501EF78;
  v6[6] = @"DampingSmooth";
  v6[7] = @"Response";
  v7[6] = &unk_28501EFD8;
  v7[7] = &unk_28501EF78;
  v6[8] = @"ResponseSmooth";
  v6[9] = @"TimeFactor";
  v7[8] = &unk_28501EFD8;
  v7[9] = &unk_28501EF78;
  v6[10] = @"FocusDistance";
  v6[11] = @"FocalLength";
  v7[10] = &unk_28501F1C8;
  v7[11] = &unk_28501F1D8;
  v6[12] = @"fStop";
  v6[13] = @"ApertureBlades";
  v7[12] = &unk_28501F1E8;
  v7[13] = &unk_28501EFF0;
  v6[14] = @"LightingIntensity";
  v6[15] = @"ZoomInProgress";
  v7[14] = &unk_28501EF78;
  v7[15] = &unk_28501EFD8;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:16];
  v1 = ABDefaultZoomedOutSceneParams_params;
  ABDefaultZoomedOutSceneParams_params = v0;

  if (ABDeviceIsD23())
  {
    v2 = [ABDefaultZoomedOutSceneParams_params mutableCopy];
    [v2 setObject:&unk_28501F1F8 forKeyedSubscript:@"xOffset"];
    [v2 setObject:&unk_28501F208 forKeyedSubscript:@"yOffset"];
    [v2 setObject:&unk_28501EFC0 forKeyedSubscript:@"zOffset"];
    v3 = [v2 copy];
    v4 = ABDefaultZoomedOutSceneParams_params;
    ABDefaultZoomedOutSceneParams_params = v3;
  }

  v5 = *MEMORY[0x277D85DE8];
}

id ABDefaultZoomedInSceneParams()
{
  if (ABDefaultZoomedInSceneParams_onceToken != -1)
  {
    ABDefaultZoomedInSceneParams_cold_1();
  }

  v1 = ABDefaultZoomedInSceneParams_params;

  return v1;
}

void __ABDefaultZoomedInSceneParams_block_invoke()
{
  v10[16] = *MEMORY[0x277D85DE8];
  v9[0] = @"Scale";
  v9[1] = @"Rotation";
  v10[0] = &unk_28501EF78;
  v10[1] = &unk_28501F008;
  v9[2] = @"xOffset";
  v9[3] = @"yOffset";
  v10[2] = &unk_28501EFD8;
  v10[3] = &unk_28501F218;
  v9[4] = @"zOffset";
  v9[5] = @"Damping";
  v10[4] = &unk_28501F228;
  v10[5] = &unk_28501EF78;
  v9[6] = @"DampingSmooth";
  v9[7] = @"Response";
  v10[6] = &unk_28501EFD8;
  v10[7] = &unk_28501EF78;
  v9[8] = @"ResponseSmooth";
  v9[9] = @"TimeFactor";
  v10[8] = &unk_28501EFD8;
  v10[9] = &unk_28501EF78;
  v9[10] = @"FocusDistance";
  v9[11] = @"FocalLength";
  v10[10] = &unk_28501F1C8;
  v10[11] = &unk_28501F1D8;
  v9[12] = @"fStop";
  v9[13] = @"ApertureBlades";
  v10[12] = &unk_28501F1E8;
  v10[13] = &unk_28501EFF0;
  v9[14] = @"LightingIntensity";
  v9[15] = @"ZoomInProgress";
  v10[14] = &unk_28501F238;
  v10[15] = &unk_28501EF78;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:16];
  v1 = ABDefaultZoomedInSceneParams_params;
  ABDefaultZoomedInSceneParams_params = v0;

  if (ABDeviceIsD23())
  {
    v2 = [ABDefaultZoomedInSceneParams_params mutableCopy];
    [v2 setObject:&unk_28501F208 forKeyedSubscript:@"yOffset"];
    [v2 setObject:&unk_28501F248 forKeyedSubscript:@"zOffset"];
    v3 = [v2 copy];
    v4 = ABDefaultZoomedInSceneParams_params;
    ABDefaultZoomedInSceneParams_params = v3;
  }

  if (ABDeviceIsV5x())
  {
    v5 = [ABDefaultZoomedInSceneParams_params mutableCopy];
    [v5 setObject:&unk_28501F258 forKeyedSubscript:@"Scale"];
    [v5 setObject:&unk_28501F268 forKeyedSubscript:@"yOffset"];
    v6 = [v5 copy];
    v7 = ABDefaultZoomedInSceneParams_params;
    ABDefaultZoomedInSceneParams_params = v6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

id ABWelcomeModeZoomedOutSceneParams()
{
  if (ABWelcomeModeZoomedOutSceneParams_onceToken != -1)
  {
    ABWelcomeModeZoomedOutSceneParams_cold_1();
  }

  v1 = ABWelcomeModeZoomedOutSceneParams_params;

  return v1;
}

void __ABWelcomeModeZoomedOutSceneParams_block_invoke()
{
  v25[16] = *MEMORY[0x277D85DE8];
  if (ABDeviceIsV59())
  {
    v0 = 0.9;
  }

  else
  {
    v0 = 0.0;
  }

  v1 = ABDefaultZoomedOutSceneParams();
  v25[0] = &unk_28501EF78;
  v2 = MEMORY[0x277CCABB0];
  v3 = [v1 objectForKeyedSubscript:{@"Scale", @"Rotation"}];
  [v3 doubleValue];
  v5 = [v2 numberWithDouble:(1.0 - v0) * 62.0 + v4 * v0];
  v25[1] = v5;
  v24[2] = @"xOffset";
  v6 = MEMORY[0x277CCABB0];
  v7 = [v1 objectForKeyedSubscript:?];
  [v7 doubleValue];
  v9 = [v6 numberWithDouble:(1.0 - v0) * 0.5 + v8 * v0];
  v25[2] = v9;
  v24[3] = @"yOffset";
  v10 = MEMORY[0x277CCABB0];
  v11 = [v1 objectForKeyedSubscript:?];
  [v11 doubleValue];
  v13 = [v10 numberWithDouble:(1.0 - v0) * -3.35 + v12 * v0];
  v25[3] = v13;
  v24[4] = @"zOffset";
  v14 = MEMORY[0x277CCABB0];
  v15 = [v1 objectForKeyedSubscript:?];
  [v15 doubleValue];
  v17 = [v14 numberWithDouble:(1.0 - v0) * -10.5 + v16 * v0];
  v25[4] = v17;
  v25[5] = &unk_28501EF78;
  v24[5] = @"Damping";
  v24[6] = @"DampingSmooth";
  v24[7] = @"Response";
  v24[8] = @"ResponseSmooth";
  v24[9] = @"TimeFactor";
  v24[10] = @"FocusDistance";
  v25[10] = &unk_28501F1C8;
  v25[11] = &unk_28501F1D8;
  v24[11] = @"FocalLength";
  v24[12] = @"fStop";
  v25[12] = &unk_28501F1E8;
  v25[13] = &unk_28501EFF0;
  v25[6] = &unk_28501EFD8;
  v25[7] = &unk_28501EF78;
  v24[13] = @"ApertureBlades";
  v24[14] = @"LightingIntensity";
  v25[8] = &unk_28501EFD8;
  v25[9] = &unk_28501EF78;
  v24[15] = @"ZoomInProgress";
  v25[14] = &unk_28501EF78;
  v25[15] = &unk_28501EFD8;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:16];
  v19 = ABWelcomeModeZoomedOutSceneParams_params;
  ABWelcomeModeZoomedOutSceneParams_params = v18;

  if (ABDeviceIsD23())
  {
    v20 = [ABWelcomeModeZoomedOutSceneParams_params mutableCopy];
    [v20 setObject:&unk_28501F278 forKeyedSubscript:@"LightingIntensity"];
    v21 = [v20 copy];
    v22 = ABWelcomeModeZoomedOutSceneParams_params;
    ABWelcomeModeZoomedOutSceneParams_params = v21;
  }

  v23 = *MEMORY[0x277D85DE8];
}

id ABWelcomeModeZoomedInSceneParams()
{
  if (ABWelcomeModeZoomedInSceneParams_onceToken != -1)
  {
    ABWelcomeModeZoomedInSceneParams_cold_1();
  }

  v1 = ABWelcomeModeZoomedInSceneParams_params;

  return v1;
}

void __ABWelcomeModeZoomedInSceneParams_block_invoke()
{
  v0 = ABDefaultZoomedInSceneParams();
  v3 = [v0 mutableCopy];

  [v3 setObject:&unk_28501F020 forKeyedSubscript:@"Response"];
  v1 = [v3 copy];
  v2 = ABWelcomeModeZoomedInSceneParams_params;
  ABWelcomeModeZoomedInSceneParams_params = v1;
}

id ABScrollDraggingStateParams(void *a1, void *a2, double a3, double a4)
{
  v30[3] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v29[0] = @"TimeFactor";
  v29[1] = @"Damping";
  v30[0] = &unk_28501EF78;
  v30[1] = &unk_28501EF78;
  v29[2] = @"DampingSmooth";
  v30[2] = &unk_28501EFD8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v10 = v8;
  v11 = v9;
  v12 = v7;
  v13 = objc_opt_new();
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __transitionStateParams_block_invoke;
  v23 = &unk_278BFFF40;
  v24 = v11;
  v25 = v10;
  v26 = v13;
  v27 = a4;
  v28 = a3;
  v14 = v11;
  v15 = v10;
  v16 = v13;
  [v12 enumerateKeysAndObjectsUsingBlock:&v20];

  v17 = [v16 copy];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

id ABStateParamLimits()
{
  if (ABStateParamLimits_onceToken != -1)
  {
    ABStateParamLimits_cold_1();
  }

  v1 = ABStateParamLimits_limits;

  return v1;
}

void __transitionStateParams_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];
  if (v6)
  {
    [*(a1 + 48) setObject:v6 forKeyedSubscript:v7];
  }

  else
  {
    __transitionStateParams_block_invoke_cold_1(a1, v7, v5);
  }
}

id OUTLINED_FUNCTION_0_2(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, objc_super a13)
{
  v16 = *(v14 + 3120);
  a13.receiver = a1;
  a13.super_class = v16;

  return objc_msgSendSuper2(&a13, (v13 + 2936));
}

float64x2_t SCNMatrix4FromCATransform3D@<Q0>(float64x2_t *a1@<X0>, float32x4_t *a2@<X8>)
{
  v2 = vcvt_hight_f32_f64(vcvt_f32_f64(a1[2]), a1[3]);
  *a2 = vcvt_hight_f32_f64(vcvt_f32_f64(*a1), a1[1]);
  a2[1] = v2;
  result = a1[7];
  v4 = vcvt_hight_f32_f64(vcvt_f32_f64(a1[6]), result);
  a2[2] = vcvt_hight_f32_f64(vcvt_f32_f64(a1[4]), a1[5]);
  a2[3] = v4;
  return result;
}

float64x2_t CATransform3DFromSCNMatrix4@<Q0>(float32x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  v2 = vcvtq_f64_f32(a1[1]);
  *a2 = vcvtq_f64_f32(*a1);
  a2[1] = v2;
  v3 = vcvtq_f64_f32(a1[3]);
  a2[2] = vcvtq_f64_f32(a1[2]);
  a2[3] = v3;
  v4 = vcvtq_f64_f32(a1[5]);
  a2[4] = vcvtq_f64_f32(a1[4]);
  a2[5] = v4;
  result = vcvtq_f64_f32(a1[6]);
  v6 = vcvtq_f64_f32(a1[7]);
  a2[6] = result;
  a2[7] = v6;
  return result;
}

double ABClamp(double result, double a2, double a3)
{
  if (result >= a3)
  {
    result = a3;
  }

  if (result < a2)
  {
    return a2;
  }

  return result;
}

uint64_t ABEqualObjects(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    if (v3 && v4)
    {
      v6 = [v3 isEqual:v4];
    }
  }

  return v6;
}

id ABSnapshotImageName(int a1)
{
  v2 = deviceSuffix();
  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    if (a1)
    {
      v4 = @"assistant";
    }

    else
    {
      v4 = @"settings";
    }

    v5 = deviceSuffix();
    v6 = [v3 stringWithFormat:@"scene_snapshot_%@-%@.png", v4, v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

__CFString *deviceSuffix()
{
  if (deviceSuffix_onceToken != -1)
  {
    deviceSuffix_cold_1();
  }

  if (deviceSuffix_sCachedSuffix)
  {
    v0 = deviceSuffix_sCachedSuffix;
  }

  else
  {
    v1 = ABLogger();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 0;
      _os_log_impl(&dword_23DE18000, v1, OS_LOG_TYPE_DEFAULT, "Unsupported device. Fallback to using screen size.", v6, 2u);
    }

    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 bounds];
    v3 = @"D83";
    if (v4 == 932.0)
    {
      v3 = @"D84";
    }

    v0 = v3;
  }

  return v0;
}

uint64_t ABDeviceIsV59()
{
  if (ABDeviceIsV59_onceToken != -1)
  {
    ABDeviceModelResourceName_cold_1();
  }

  return ABDeviceIsV59_sIsDevice;
}

uint64_t ABDeviceIsV5x()
{
  if (ABDeviceIsV5x_onceToken != -1)
  {
    ABDeviceModelResourceName_cold_3();
  }

  return ABDeviceIsV5x_sIsDevice;
}

uint64_t ABDeviceIsD23()
{
  if (ABDeviceIsD23_onceToken != -1)
  {
    ABDeviceModelResourceName_cold_4();
  }

  return ABDeviceIsD23_sIsDevice;
}

__CFString *ABDisplayPackageName()
{
  if (ABDeviceIsV59_onceToken != -1)
  {
    ABDeviceModelResourceName_cold_1();
  }

  if (ABDeviceIsV59_sIsDevice == 1)
  {
    v0 = MEMORY[0x277CCACA8];
    v1 = deviceSuffix();
    v2 = [v0 stringWithFormat:@"Display-%@", v1];
  }

  else
  {
    v2 = @"Display";
  }

  return v2;
}

uint64_t __ABDeviceIsV59_block_invoke()
{
  v2 = *MEMORY[0x277D85DE8];
  result = MGIsDeviceOfType();
  ABDeviceIsV59_sIsDevice = result;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ABDeviceIsD23_block_invoke()
{
  v2 = *MEMORY[0x277D85DE8];
  result = MGIsDeviceOfType();
  ABDeviceIsD23_sIsDevice = result;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ABDeviceIsV5x_block_invoke()
{
  v2 = *MEMORY[0x277D85DE8];
  ABDeviceIsV5x_sIsDevice = 0;
  ABDeviceIsV5x_sIsDevice = MGIsDeviceOfType();
  if (ABDeviceIsV5x_sIsDevice)
  {
    result = 1;
  }

  else
  {
    result = MGIsDeviceOfType();
  }

  ABDeviceIsV5x_sIsDevice = result;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ABDeviceIsV57_block_invoke()
{
  v2 = *MEMORY[0x277D85DE8];
  result = MGIsDeviceOfType();
  ABDeviceIsV57_sIsDevice = result;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void __deviceSuffix_block_invoke()
{
  v12 = *MEMORY[0x277D85DE8];
  if (MGIsDeviceOfType())
  {
    v0 = deviceSuffix_sCachedSuffix;
    deviceSuffix_sCachedSuffix = @"D84";
  }

  if (MGIsDeviceOfType())
  {
    v1 = deviceSuffix_sCachedSuffix;
    deviceSuffix_sCachedSuffix = @"D83";
  }

  if (MGIsDeviceOfType())
  {
    v2 = deviceSuffix_sCachedSuffix;
    deviceSuffix_sCachedSuffix = @"D93";
  }

  if (MGIsDeviceOfType())
  {
    v3 = deviceSuffix_sCachedSuffix;
    deviceSuffix_sCachedSuffix = @"D94";
  }

  if (MGIsDeviceOfType())
  {
    v4 = deviceSuffix_sCachedSuffix;
    deviceSuffix_sCachedSuffix = @"D47";
  }

  if (MGIsDeviceOfType())
  {
    v5 = deviceSuffix_sCachedSuffix;
    deviceSuffix_sCachedSuffix = @"D48";
  }

  if (MGIsDeviceOfType())
  {
    v6 = deviceSuffix_sCachedSuffix;
    deviceSuffix_sCachedSuffix = @"V59";
  }

  if (MGIsDeviceOfType())
  {
    v7 = deviceSuffix_sCachedSuffix;
    deviceSuffix_sCachedSuffix = @"D23";
  }

  if (MGIsDeviceOfType())
  {
    v8 = deviceSuffix_sCachedSuffix;
    deviceSuffix_sCachedSuffix = @"V53";
  }

  if (MGIsDeviceOfType())
  {
    v9 = deviceSuffix_sCachedSuffix;
    deviceSuffix_sCachedSuffix = @"V54";
  }

  if (MGIsDeviceOfType())
  {
    v10 = deviceSuffix_sCachedSuffix;
    deviceSuffix_sCachedSuffix = @"V57";
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_23DE24494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __ABStateParamLimits_block_invoke()
{
  v116[11] = *MEMORY[0x277D85DE8];
  v115[0] = @"Scale";
  v0 = [ABParameterLimits alloc];
  if (v0)
  {
    v0 = OUTLINED_FUNCTION_0_2(v0, v1, v2, v3, v4, v5, v6, v7, v107, v108, v110, v112, v114);
    if (v0)
    {
      *&v0->_minValue = xmmword_23DE289A0;
    }
  }

  v113 = v0;
  v116[0] = v0;
  v115[1] = @"Damping";
  v8 = [ABParameterLimits alloc];
  if (v8)
  {
    v8 = OUTLINED_FUNCTION_0_2(v8, v9, v10, v11, v12, v13, v14, v15, v107, v108, v110, v113, v114);
    if (v8)
    {
      *&v8->_minValue = xmmword_23DE289B0;
    }
  }

  v111 = v8;
  v116[1] = v8;
  v115[2] = @"DampingSmooth";
  v16 = [ABParameterLimits alloc];
  if (v16)
  {
    v16 = OUTLINED_FUNCTION_0_2(v16, v17, v18, v19, v20, v21, v22, v23, v107, v108, v111, v113, v114);
    if (v16)
    {
      *&v16->_minValue = xmmword_23DE289B0;
    }
  }

  v109 = v16;
  v116[2] = v16;
  v115[3] = @"Response";
  v24 = [ABParameterLimits alloc];
  if (v24)
  {
    v32 = OUTLINED_FUNCTION_0_2(v24, v25, v26, v27, v28, v29, v30, v31, v107, v109, v111, v113, v114);
    v33 = v32;
    if (v32)
    {
      *(v32 + 8) = xmmword_23DE289B0;
    }
  }

  else
  {
    v33 = 0;
  }

  v116[3] = v33;
  v115[4] = @"ResponseSmooth";
  v34 = [ABParameterLimits alloc];
  if (v34)
  {
    v42 = OUTLINED_FUNCTION_0_2(v34, v35, v36, v37, v38, v39, v40, v41, v107, v109, v111, v113, v114);
    v43 = v42;
    if (v42)
    {
      *(v42 + 8) = xmmword_23DE289B0;
    }
  }

  else
  {
    v43 = 0;
  }

  v116[4] = v43;
  v115[5] = @"TimeFactor";
  v44 = [ABParameterLimits alloc];
  if (v44)
  {
    v52 = OUTLINED_FUNCTION_0_2(v44, v45, v46, v47, v48, v49, v50, v51, v107, v109, v111, v113, v114);
    v53 = v52;
    if (v52)
    {
      *(v52 + 8) = xmmword_23DE289B0;
    }
  }

  else
  {
    v53 = 0;
  }

  v116[5] = v53;
  v115[6] = @"FocusDistance";
  v54 = [ABParameterLimits alloc];
  if (v54)
  {
    v62 = OUTLINED_FUNCTION_0_2(v54, v55, v56, v57, v58, v59, v60, v61, v107, v109, v111, v113, v114);
    v63 = v62;
    if (v62)
    {
      *(v62 + 8) = xmmword_23DE289A0;
    }
  }

  else
  {
    v63 = 0;
  }

  v116[6] = v63;
  v115[7] = @"FocalLength";
  v64 = [ABParameterLimits alloc];
  if (v64)
  {
    v72 = OUTLINED_FUNCTION_0_2(v64, v65, v66, v67, v68, v69, v70, v71, v107, v109, v111, v113, v114);
    v73 = v72;
    if (v72)
    {
      *(v72 + 8) = xmmword_23DE289A0;
    }
  }

  else
  {
    v73 = 0;
  }

  v116[7] = v73;
  v115[8] = @"ApertureBlades";
  v74 = [ABParameterLimits alloc];
  if (v74)
  {
    v82 = OUTLINED_FUNCTION_0_2(v74, v75, v76, v77, v78, v79, v80, v81, v107, v109, v111, v113, v114);
    v83 = v82;
    if (v82)
    {
      *(v82 + 8) = xmmword_23DE289B0;
    }
  }

  else
  {
    v83 = 0;
  }

  v116[8] = v83;
  v115[9] = @"fStop";
  v84 = [ABParameterLimits alloc];
  if (v84)
  {
    v92 = OUTLINED_FUNCTION_0_2(v84, v85, v86, v87, v88, v89, v90, v91, v107, v109, v111, v113, v114);
    v93 = v92;
    if (v92)
    {
      *(v92 + 8) = xmmword_23DE289A0;
    }
  }

  else
  {
    v93 = 0;
  }

  v116[9] = v93;
  v115[10] = @"LightingIntensity";
  v94 = [ABParameterLimits alloc];
  if (v94)
  {
    v102 = OUTLINED_FUNCTION_0_2(v94, v95, v96, v97, v98, v99, v100, v101, v107, v109, v111, v113, v114);
    v103 = v102;
    if (v102)
    {
      *(v102 + 8) = xmmword_23DE289B0;
    }
  }

  else
  {
    v103 = 0;
  }

  v116[10] = v103;
  v104 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v116 forKeys:v115 count:11];
  v105 = ABStateParamLimits_limits;
  ABStateParamLimits_limits = v104;

  v106 = *MEMORY[0x277D85DE8];
}

void __transitionStateParams_block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [*(a1 + 40) objectForKeyedSubscript:a2];
  [v6 doubleValue];
  v8 = v7;
  [a3 doubleValue];
  v10 = (v8 - v9) * *(a1 + 56);

  v11 = ABStateParamLimits();
  v12 = [v11 objectForKeyedSubscript:a2];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = +[ABParameterLimits unlimited];
  }

  v21 = v14;

  v15 = MEMORY[0x277CCABB0];
  [a3 doubleValue];
  v17 = v16 + v10 * *(a1 + 64);
  if (v21)
  {
    v18 = v21[1];
    v19 = v21[2];
  }

  else
  {
    v18 = 0.0;
    v19 = 0.0;
  }

  v20 = [v15 numberWithDouble:{ABClamp(v17, v18, v19)}];
  [*(a1 + 48) setObject:v20 forKeyedSubscript:a2];
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x282128850](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}