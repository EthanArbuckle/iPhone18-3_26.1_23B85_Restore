@interface AXShotflowNetwork
+ (id)cpuNetworkWithModelPath:(id)path configuration:(id)configuration version:(int)version modelType:(int64_t)type;
+ (id)gpuNetworkWithModelPath:(id)path configuration:(id)configuration preferredMetalDeviceID:(int)d version:(int)version modelType:(int64_t)type;
- (AXShotflowNetwork)initWithModelPath:(id)path espressoEngineID:(int)d espressoDeviceID:(int)iD configuration:(id)configuration version:(int)version modelType:(int64_t)type;
- (id).cxx_construct;
- (id)processCIImage:(id)image;
- (id)processVImage:(vImage_Buffer *)image inputIsBGR:(BOOL)r;
- (id)resizeAndProcessVImage:(vImage_Buffer *)image inputIsBGR:(BOOL)r;
- (int)setInputShape:(unint64_t)shape height:(unint64_t)height;
- (void)dealloc;
- (void)runNetwork:(vImage_Buffer *)network inputIsBGR:(BOOL)r;
@end

@implementation AXShotflowNetwork

+ (id)cpuNetworkWithModelPath:(id)path configuration:(id)configuration version:(int)version modelType:(int64_t)type
{
  v7 = *&version;
  pathCopy = path;
  configurationCopy = configuration;
  v12 = [[self alloc] initWithModelPath:pathCopy espressoEngineID:0 espressoDeviceID:0xFFFFFFFFLL configuration:configurationCopy version:v7 modelType:type];

  return v12;
}

+ (id)gpuNetworkWithModelPath:(id)path configuration:(id)configuration preferredMetalDeviceID:(int)d version:(int)version modelType:(int64_t)type
{
  v8 = *&version;
  v9 = *&d;
  pathCopy = path;
  configurationCopy = configuration;
  NSLog(&cfstr_TryingAneBacke.isa, pathCopy);
  v14 = [[self alloc] initWithModelPath:pathCopy espressoEngineID:10007 espressoDeviceID:v9 configuration:configurationCopy version:v8 modelType:type];

  return v14;
}

- (AXShotflowNetwork)initWithModelPath:(id)path espressoEngineID:(int)d espressoDeviceID:(int)iD configuration:(id)configuration version:(int)version modelType:(int64_t)type
{
  v130 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  configurationCopy = configuration;
  v109.receiver = self;
  v109.super_class = AXShotflowNetwork;
  v91 = [(AXShotflowNetwork *)&v109 init];
  if (v91)
  {
    networkThreshold = [configurationCopy networkThreshold];
    [networkThreshold floatValue];
    *(v91 + 341) = v13;

    v14 = v91;
    *(v91 + 46) = version;
    *(v91 + 1) = type;
    *(v91 + 98) = 1;
    *(v91 + 678) = 257;
    *(v91 + 340) = 1140064256;
    v91[198] = 0;
    __src[0] = xmmword_1AE451E60;
    *&__src[1] = 0x43DB999943926667;
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 36, __src, &__src[1] + 8, 6uLL);
    __src[0] = xmmword_1AE451E78;
    *&__src[1] = 0x3F6666663F19999ALL;
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 39, __src, &__src[1] + 8, 6uLL);
    if (type == 2)
    {
      v91[196] = 0;
      *(v91 + 47) = 0;
      *(v91 + 50) = 17;
      __src[0] = xmmword_1AE452014;
      __src[1] = unk_1AE452024;
      v120 = xmmword_1AE452034;
      v121 = unk_1AE452044;
      LODWORD(v122) = 17;
      std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(v91 + 26, __src, &v122 + 4, 0x11uLL);
      v112[0] = @"1";
      v112[1] = @"2";
      v112[2] = @"3";
      v112[3] = @"4";
      v112[4] = @"5";
      v112[5] = @"6";
      v112[6] = @"7";
      v112[7] = @"8";
      v112[8] = @"9";
      v112[9] = @"10";
      v112[10] = @"11";
      v112[11] = @"12";
      v112[12] = @"13";
      v112[13] = @"14";
      v112[14] = @"15";
      v112[15] = @"16";
      v112[16] = @"17";
      std::vector<NSString * {__strong}>::__assign_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>((v91 + 232), v112, &v113, 0x11uLL);
      for (i = 16; i != -1; --i)
      {
      }

      *(v91 + 34) = *(v91 + 33);
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      ratios = [configurationCopy ratios];
      v18 = [ratios countByEnumeratingWithState:&v97 objects:v111 count:16];
      if (v18)
      {
        v19 = *v98;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v98 != v19)
            {
              objc_enumerationMutation(ratios);
            }

            [*(*(&v97 + 1) + 8 * j) floatValue];
            LODWORD(__src[0]) = v21;
            std::vector<float>::push_back[abi:ne200100](v91 + 33, __src);
          }

          v18 = [ratios countByEnumeratingWithState:&v97 objects:v111 count:16];
        }

        while (v18);
      }

      ratios2 = [configurationCopy ratios];
      *(v91 + 64) = [ratios2 count];

      *(v91 + 37) = *(v91 + 36);
      *(v91 + 40) = *(v91 + 39);
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      defaultBoxesSidesNormalized = [configurationCopy defaultBoxesSidesNormalized];
      v24 = [defaultBoxesSidesNormalized countByEnumeratingWithState:&v93 objects:v110 count:16];
      if (v24)
      {
        v25 = *v94;
        do
        {
          for (k = 0; k != v24; ++k)
          {
            if (*v94 != v25)
            {
              objc_enumerationMutation(defaultBoxesSidesNormalized);
            }

            v27 = *(*(&v93 + 1) + 8 * k);
            [v27 floatValue];
            LODWORD(__src[0]) = v28;
            std::vector<float>::push_back[abi:ne200100](v91 + 39, __src);
            [v27 floatValue];
            *__src = v29 * 488.0;
            std::vector<float>::push_back[abi:ne200100](v91 + 36, __src);
          }

          v24 = [defaultBoxesSidesNormalized countByEnumeratingWithState:&v93 objects:v110 count:16];
        }

        while (v24);
      }

      __src[0] = xmmword_1AE452058;
      *&__src[1] = 0x433F800042FF0000;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 163, __src, &__src[1] + 8, 6uLL);
      __src[0] = xmmword_1AE452058;
      *&__src[1] = 0x433F800042FF0000;
      v14 = v91;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 166, __src, &__src[1] + 8, 6uLL);
      IsPad = AXDeviceIsPad();
      goto LABEL_28;
    }

    if (type != 1)
    {
LABEL_96:
      context = espresso_create_context();
      *(v14 + 3) = context;
      if (context)
      {
        plan = espresso_create_plan();
        *(v14 + 2) = plan;
        if (plan)
        {
          v71 = pathCopy;
          [pathCopy UTF8String];
          if (!espresso_plan_add_network() && !espresso_plan_build())
          {
            memset(__src, 0, sizeof(__src));
            if (!espresso_network_query_blob_dimensions())
            {
              if (*(v91 + 47))
              {
                operator new();
              }

              operator new();
            }

            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x1B27000E0](exception, "esp error");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v87 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x1B27000E0](v87, "esp error");
          __cxa_throw(v87, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }
      }

      v86 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B27000E0](v86, "esp error");
      __cxa_throw(v86, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (version > 8)
    {
      if (version <= 11)
      {
        if (version == 9)
        {
          *(v91 + 47) = 0;
          *(v91 + 50) = 6;
          __src[0] = xmmword_1AE451F08;
          LODWORD(__src[1]) = 5;
          std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(v91 + 26, __src, &__src[1] + 4, 5uLL);
          v124[0] = @"face";
          v124[1] = @"head";
          v124[2] = @"human_body";
          v124[3] = @"cat";
          v124[4] = @"dog";
          std::vector<NSString * {__strong}>::__assign_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>((v91 + 232), v124, v125, 5uLL);
          for (m = 4; m != -1; --m)
          {
          }
        }

        else
        {
          if (version != 10)
          {
            v91[196] = 0;
            *(v91 + 50) = 20;
            *(v91 + 47) = 0;
            v120 = xmmword_1AE451F3C;
            v121 = unk_1AE451F4C;
            v122 = xmmword_1AE451F5C;
            __src[1] = unk_1AE451F2C;
            __src[0] = xmmword_1AE451F1C;
            std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(v91 + 26, __src, v123, 0x14uLL);
            v118[0] = @"aeroplane";
            v118[1] = @"bicycle";
            v118[2] = @"bird";
            v118[3] = @"boat";
            v118[4] = @"bottle";
            v118[5] = @"bus";
            v118[6] = @"car";
            v118[7] = @"cat";
            v118[8] = @"chair";
            v118[9] = @"cow";
            v118[10] = @"dining_table";
            v118[11] = @"dog";
            v118[12] = @"horse";
            v118[13] = @"motorbike";
            v118[14] = @"person";
            v118[15] = @"potted_plant";
            v118[16] = @"sheep";
            v118[17] = @"sofa";
            v118[18] = @"train";
            v118[19] = @"tv_monitor";
            std::vector<NSString * {__strong}>::__assign_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>((v91 + 232), v118, __src, 0x14uLL);
            for (n = 19; n != -1; --n)
            {
            }

LABEL_82:
            LODWORD(__src[1]) = 1051372203;
            __src[0] = xmmword_1AE451FD0;
            std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 33, __src, &__src[1] + 4, 5uLL);
            v14 = v91;
            *(v91 + 64) = 5;
            __src[0] = xmmword_1AE452058;
            *&__src[1] = 0x433F800042FF0000;
            std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 163, __src, &__src[1] + 8, 6uLL);
            __src[0] = xmmword_1AE452058;
            *&__src[1] = 0x433F800042FF0000;
            std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 166, __src, &__src[1] + 8, 6uLL);
            *(v91 + 338) = 1065353216;
LABEL_31:
            *(v14 + 678) = 0;
            goto LABEL_96;
          }

          v91[197] = 1;
          *(v91 + 47) = 0;
          *(v91 + 50) = 6;
          __src[0] = xmmword_1AE451F08;
          LODWORD(__src[1]) = 5;
          std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(v91 + 26, __src, &__src[1] + 4, 5uLL);
          v123[0] = @"face";
          v123[1] = @"head";
          v123[2] = @"human_body";
          v123[3] = @"cat";
          v123[4] = @"dog";
          std::vector<NSString * {__strong}>::__assign_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>((v91 + 232), v123, v124, 5uLL);
          for (ii = 4; ii != -1; --ii)
          {
          }
        }

        goto LABEL_91;
      }

      switch(version)
      {
        case 12:
          v91[197] = 1;
          *(v91 + 47) = 0;
          *(v91 + 50) = 8;
          __src[0] = xmmword_1AE451F6C;
          *(__src + 12) = *(&xmmword_1AE451F6C + 12);
          std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(v91 + 26, __src, &__src[1] + 12, 7uLL);
          v117[0] = @"face";
          v117[1] = @"head";
          v117[2] = @"human_body";
          v117[3] = @"cat";
          v117[4] = @"dog";
          v117[5] = @"food";
          v117[6] = @"drink";
          std::vector<NSString * {__strong}>::__assign_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>((v91 + 232), v117, v118, 7uLL);
          for (jj = 6; jj != -1; --jj)
          {
          }

LABEL_91:
          LODWORD(__src[1]) = 1051372203;
          __src[0] = xmmword_1AE451FD0;
          std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 33, __src, &__src[1] + 4, 5uLL);
          v14 = v91;
          *(v91 + 64) = 5;
          __src[0] = xmmword_1AE451F88;
          *&__src[1] = 0x431F800042BF0000;
          std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 163, __src, &__src[1] + 8, 6uLL);
          __src[0] = xmmword_1AE452058;
          *&__src[1] = 0x433F800042FF0000;
          std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 166, __src, &__src[1] + 8, 6uLL);
          v68 = 1068349147;
LABEL_95:
          *(v14 + 338) = v68;
          goto LABEL_96;
        case 13:
          v91[196] = 0;
          *(v91 + 47) = 0;
          *(v91 + 50) = 12;
          __src[0] = xmmword_1AE451FA0;
          __src[1] = unk_1AE451FB0;
          v120 = xmmword_1AE451FC0;
          std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(v91 + 26, __src, &v121, 0xCuLL);
          v116[0] = @"1";
          v116[1] = @"2";
          v116[2] = @"3";
          v116[3] = @"4";
          v116[4] = @"5";
          v116[5] = @"6";
          v116[6] = @"7";
          v116[7] = @"8";
          v116[8] = @"9";
          v116[9] = @"10";
          v116[10] = @"11";
          v116[11] = @"12";
          std::vector<NSString * {__strong}>::__assign_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>((v91 + 232), v116, v117, 0xCuLL);
          for (kk = 11; kk != -1; --kk)
          {
          }

          goto LABEL_82;
        case 14:
          v91[196] = 0;
          *(v91 + 47) = 0;
          filterThresholds = [configurationCopy filterThresholds];
          *(v91 + 50) = [filterThresholds count];

          v35 = (v91 + 208);
          v34 = *(v91 + 26);
          if (v34)
          {
            *(v91 + 27) = v34;
            operator delete(v34);
            *v35 = 0;
            *(v91 + 27) = 0;
            *(v91 + 28) = 0;
          }

          *v35 = 0;
          *(v91 + 27) = 0;
          *(v91 + 28) = 0;
          memset(__src, 0, 24);
          v36 = v91 + 232;
          std::vector<NSString * {__strong}>::__vdeallocate(v91 + 29);
          *(v91 + 232) = __src[0];
          *(v91 + 31) = *&__src[1];
          memset(__src, 0, 24);
          v92 = __src;
          std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v92);
          for (mm = 1; ; ++mm)
          {
            filterThresholds2 = [configurationCopy filterThresholds];
            v39 = [filterThresholds2 count] > (mm - 1);

            if (!v39)
            {
              break;
            }

            v41 = *(v91 + 27);
            v40 = *(v91 + 28);
            if (v41 >= v40)
            {
              v43 = *v35;
              v44 = v41 - *v35;
              v45 = (v44 >> 2) + 1;
              if (v45 >> 62)
              {
                std::vector<BOOL>::__throw_length_error[abi:ne200100]();
              }

              v46 = v40 - v43;
              if (v46 >> 1 > v45)
              {
                v45 = v46 >> 1;
              }

              v47 = v46 >= 0x7FFFFFFFFFFFFFFCLL;
              v48 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v47)
              {
                v48 = v45;
              }

              if (v48)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(v35, v48);
              }

              v49 = (4 * (v44 >> 2));
              *v49 = mm;
              v42 = v49 + 1;
              memcpy(0, v43, v44);
              v50 = *(v91 + 26);
              *(v91 + 26) = 0;
              *(v91 + 27) = v42;
              *(v91 + 28) = 0;
              if (v50)
              {
                operator delete(v50);
              }
            }

            else
            {
              *v41 = mm;
              v42 = v41 + 1;
            }

            *(v91 + 27) = v42;
            v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", mm];
            v52 = v91;
            v54 = *(v91 + 30);
            v53 = *(v91 + 31);
            if (v54 >= v53)
            {
              v56 = (v54 - *v36) >> 3;
              if ((v56 + 1) >> 61)
              {
                std::vector<BOOL>::__throw_length_error[abi:ne200100]();
              }

              v57 = v53 - *v36;
              v58 = v57 >> 2;
              if (v57 >> 2 <= (v56 + 1))
              {
                v58 = v56 + 1;
              }

              if (v57 >= 0x7FFFFFFFFFFFFFF8)
              {
                v59 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v59 = v58;
              }

              *&v120 = v91 + 232;
              if (v59)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<NSString * {__strong}>>(v36, v59);
              }

              *&__src[0] = 0;
              *(&__src[0] + 1) = 8 * v56;
              *(&__src[1] + 1) = 0;
              **(&__src[0] + 1) = v51;
              *&__src[1] = 8 * v56 + 8;
              std::vector<NSString * {__strong}>::__swap_out_circular_buffer(v36, __src);
              v52 = v91;
              v55 = *(v91 + 30);
              std::__split_buffer<NSString * {__strong}>::~__split_buffer(__src);
            }

            else
            {
              *v54 = v51;
              v55 = v54 + 1;
              *(v91 + 30) = v55;
            }

            *(v52 + 30) = v55;
          }

          *(v91 + 34) = *(v91 + 33);
          v105 = 0u;
          v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          ratios3 = [configurationCopy ratios];
          v74 = [ratios3 countByEnumeratingWithState:&v105 objects:v115 count:16];
          if (v74)
          {
            v75 = *v106;
            do
            {
              for (nn = 0; nn != v74; ++nn)
              {
                if (*v106 != v75)
                {
                  objc_enumerationMutation(ratios3);
                }

                [*(*(&v105 + 1) + 8 * nn) floatValue];
                LODWORD(__src[0]) = v77;
                std::vector<float>::push_back[abi:ne200100](v91 + 33, __src);
              }

              v74 = [ratios3 countByEnumeratingWithState:&v105 objects:v115 count:16];
            }

            while (v74);
          }

          ratios4 = [configurationCopy ratios];
          *(v91 + 64) = [ratios4 count];

          *(v91 + 37) = *(v91 + 36);
          *(v91 + 40) = *(v91 + 39);
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          v104 = 0u;
          defaultBoxesSidesNormalized2 = [configurationCopy defaultBoxesSidesNormalized];
          v80 = [defaultBoxesSidesNormalized2 countByEnumeratingWithState:&v101 objects:v114 count:16];
          if (v80)
          {
            v81 = *v102;
            do
            {
              for (i1 = 0; i1 != v80; ++i1)
              {
                if (*v102 != v81)
                {
                  objc_enumerationMutation(defaultBoxesSidesNormalized2);
                }

                v83 = *(*(&v101 + 1) + 8 * i1);
                [v83 floatValue];
                LODWORD(__src[0]) = v84;
                std::vector<float>::push_back[abi:ne200100](v91 + 39, __src);
                [v83 floatValue];
                *__src = v85 * 488.0;
                std::vector<float>::push_back[abi:ne200100](v91 + 36, __src);
              }

              v80 = [defaultBoxesSidesNormalized2 countByEnumeratingWithState:&v101 objects:v114 count:16];
            }

            while (v80);
          }

          __src[0] = xmmword_1AE452058;
          *&__src[1] = 0x433F800042FF0000;
          std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 163, __src, &__src[1] + 8, 6uLL);
          __src[0] = xmmword_1AE452058;
          *&__src[1] = 0x433F800042FF0000;
          v14 = v91;
          std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 166, __src, &__src[1] + 8, 6uLL);
          IsPad = AXDeviceIsPad();
LABEL_28:
          v31 = 0.5;
          if (IsPad)
          {
            v31 = 1.0;
          }

          *(v14 + 338) = v31;
          *(v14 + 340) = 1147142144;
          goto LABEL_31;
      }

      goto LABEL_92;
    }

    if (version <= 5)
    {
      if (version == 2)
      {
        __src[0] = xmmword_1AE451FE4;
        *&__src[1] = 0x432B800042D70000;
        std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 166, __src, &__src[1] + 8, 6uLL);
        __src[0] = xmmword_1AE451FFC;
        *&__src[1] = 0x433B800042F70000;
        std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 163, __src, &__src[1] + 8, 6uLL);
        *(v91 + 188) = 0x400000002;
        *(v91 + 50) = 1;
        LODWORD(__src[0]) = 1;
        std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(v91 + 26, __src, __src + 4, 1uLL);
        v129 = @"face";
        std::vector<NSString * {__strong}>::__assign_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>((v91 + 232), &v129, &v130, 1uLL);

        LODWORD(__src[0]) = 1065353216;
        v61 = 1;
        std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 33, __src, __src + 4, 1uLL);
        goto LABEL_93;
      }

      if (version != 5)
      {
LABEL_92:
        __src[0] = xmmword_1AE451FE4;
        *&__src[1] = 0x432B800042D70000;
        std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 166, __src, &__src[1] + 8, 6uLL);
        __src[0] = xmmword_1AE451FFC;
        *&__src[1] = 0x433B800042F70000;
        std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 163, __src, &__src[1] + 8, 6uLL);
        *(v91 + 47) = 0;
        v91[196] = 1;
        v91[198] = 0;
        *(v91 + 50) = 1;
        LODWORD(__src[0]) = 1;
        std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(v91 + 26, __src, __src + 4, 1uLL);
        v113 = @"face";
        std::vector<NSString * {__strong}>::__assign_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>((v91 + 232), &v113, v114, 1uLL);

        LODWORD(__src[0]) = 1065353216;
        v61 = 1;
        std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 33, __src, __src + 4, 1uLL);
        goto LABEL_93;
      }

      __src[0] = xmmword_1AE451E90;
      *&__src[1] = 0x4344800043048000;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 163, __src, &__src[1] + 8, 6uLL);
      __src[0] = xmmword_1AE451EA8;
      *&__src[1] = 0x432F800042DF0000;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 166, __src, &__src[1] + 8, 6uLL);
      *(v91 + 188) = 0x400000002;
      v91[196] = 0;
      *(v91 + 50) = 4;
      *&__src[0] = 0x200000001;
      DWORD2(__src[0]) = 3;
      std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(v91 + 26, __src, __src + 12, 3uLL);
      v128[0] = @"human_body";
      v128[1] = @"cat";
      v128[2] = @"dog";
      std::vector<NSString * {__strong}>::__assign_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>((v91 + 232), v128, &v129, 3uLL);
      for (i2 = 2; i2 != -1; --i2)
      {
      }
    }

    else
    {
      if (version != 6)
      {
        if (version == 7)
        {
          *(v91 + 188) = 0x400000002;
          v91[196] = 0;
          v91[198] = 1;
          *(v91 + 50) = 4;
          *&__src[0] = 0x200000001;
          DWORD2(__src[0]) = 3;
          std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(v91 + 26, __src, __src + 12, 3uLL);
          v126[0] = @"human_body";
          v126[1] = @"cat";
          v126[2] = @"dog";
          std::vector<NSString * {__strong}>::__assign_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>((v91 + 232), v126, v127, 3uLL);
          for (i3 = 2; i3 != -1; --i3)
          {
          }

          LODWORD(__src[1]) = 1051372203;
          __src[0] = xmmword_1AE451FD0;
          std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 33, __src, &__src[1] + 4, 5uLL);
          v14 = v91;
          *(v91 + 64) = 5;
          __src[0] = xmmword_1AE451EC0;
          *&__src[1] = 0x4307800041FC0000;
          std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 163, __src, &__src[1] + 8, 6uLL);
          __src[0] = xmmword_1AE451ED8;
          *&__src[1] = 0x433F8000427E0000;
          std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 166, __src, &__src[1] + 8, 6uLL);
        }

        else
        {
          *(v91 + 188) = 0x500000002;
          v91[196] = 0;
          *(v91 + 50) = 6;
          __src[0] = xmmword_1AE451F08;
          LODWORD(__src[1]) = 5;
          std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(v91 + 26, __src, &__src[1] + 4, 5uLL);
          v125[0] = @"face";
          v125[1] = @"head";
          v125[2] = @"human_body";
          v125[3] = @"cat";
          v125[4] = @"dog";
          std::vector<NSString * {__strong}>::__assign_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>((v91 + 232), v125, v126, 5uLL);
          for (i4 = 4; i4 != -1; --i4)
          {
          }

          LODWORD(__src[1]) = 1051372203;
          __src[0] = xmmword_1AE451FD0;
          std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 33, __src, &__src[1] + 4, 5uLL);
          v14 = v91;
          *(v91 + 64) = 5;
          __src[0] = xmmword_1AE451EF0;
          *&__src[1] = 0x4314800042A90000;
          std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 163, __src, &__src[1] + 8, 6uLL);
          __src[0] = xmmword_1AE452058;
          *&__src[1] = 0x433F800042FF0000;
          std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 166, __src, &__src[1] + 8, 6uLL);
        }

        goto LABEL_94;
      }

      __src[0] = xmmword_1AE451FE4;
      *&__src[1] = 0x432B800042D70000;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 166, __src, &__src[1] + 8, 6uLL);
      __src[0] = xmmword_1AE451FFC;
      *&__src[1] = 0x433B800042F70000;
      std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 163, __src, &__src[1] + 8, 6uLL);
      *(v91 + 188) = 0x400000002;
      v91[196] = 0;
      *(v91 + 50) = 2;
      *&__src[0] = 0x200000001;
      std::vector<int>::__assign_with_size[abi:ne200100]<int const*,int const*>(v91 + 26, __src, __src + 8, 2uLL);
      v127[0] = @"face";
      v127[1] = @"head";
      std::vector<NSString * {__strong}>::__assign_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>((v91 + 232), v127, v128, 2uLL);
      for (i5 = 1; i5 != -1; --i5)
      {
      }
    }

    LODWORD(__src[1]) = 1051372203;
    __src[0] = xmmword_1AE451FD0;
    v61 = 5;
    std::vector<float>::__assign_with_size[abi:ne200100]<float const*,float const*>(v91 + 33, __src, &__src[1] + 4, 5uLL);
LABEL_93:
    v14 = v91;
    *(v91 + 64) = v61;
LABEL_94:
    v68 = 1068149419;
    goto LABEL_95;
  }

  return 0;
}

- (void)dealloc
{
  espresso_plan_destroy();
  espresso_context_destroy();
  v3.receiver = self;
  v3.super_class = AXShotflowNetwork;
  [(AXShotflowNetwork *)&v3 dealloc];
}

- (int)setInputShape:(unint64_t)shape height:(unint64_t)height
{
  heightCopy = height;
  shapeCopy = shape;
  if (*&self->_currentNetworkWidth == __PAIR128__(height, shape))
  {
    return 0;
  }

  LODWORD(v20) = height;
  HIDWORD(v20) = shape;
  v19 = 0x300000001;
  v18 = "image";
  v8 = espresso_plan_build_clean();
  if (v8)
  {
    return v8;
  }

  v8 = espresso_network_change_input_blob_shapes();
  if (v8)
  {
    return v8;
  }

  v8 = espresso_plan_build();
  if (v8)
  {
    return v8;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    if (v11 >= self->_maxout_layers)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"logits_%ld", v11, v18, v19, v20];
      [v12 UTF8String];
      v14 = espresso_network_bind_buffer();
    }

    else
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"logits_pos_%ld", v11];
      [v12 UTF8String];
      v7 = espresso_network_bind_buffer();
      if (v7)
      {
        break;
      }

      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"logits_neg_%ld", v11];

      v12 = v13;
      [v13 UTF8String];
      v14 = espresso_network_bind_buffer();
    }

    v7 = v14;
    if (v14)
    {
      break;
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"offsets_%ld", v11];

    v12 = v15;
    [v15 UTF8String];
    v7 = espresso_network_bind_buffer();
    if (v7)
    {
      break;
    }

    if (self->_has_pose)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"logits_roll_%ld", v11];

      v12 = v16;
      [v16 UTF8String];
      v7 = espresso_network_bind_buffer();
      if (v7)
      {
        break;
      }

      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"logits_yaw_%ld", v11];

      v12 = v17;
      [v17 UTF8String];
      v7 = espresso_network_bind_buffer();
      if (v7)
      {
        break;
      }
    }

    ++v11;
    v10 += 16;
    if (v11 == 6)
    {
      v7 = 0;
      self->_currentNetworkWidth = shapeCopy;
      self->_currentNetworkHeight = heightCopy;
      return v7;
    }
  }

  return v7;
}

- (void)runNetwork:(vImage_Buffer *)network inputIsBGR:(BOOL)r
{
  if (espresso_network_bind_input_vimagebuffer_bgra8() || espresso_plan_execute_sync())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B27000E0](exception, "esp error");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }
}

- (id)processVImage:(vImage_Buffer *)image inputIsBGR:(BOOL)r
{
  rCopy = r;
  height = image->height;
  width = image->width;
  if ([(AXShotflowNetwork *)self setInputShape:width height:height])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B27000E0](exception, "esp error");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v67 = [MEMORY[0x1E695DF00] now];
  v9 = *&image->width;
  v90[0] = *&image->data;
  v90[1] = v9;
  [(AXShotflowNetwork *)self runNetwork:v90 inputIsBGR:rCopy];
  v10 = [MEMORY[0x1E695DF00] now];
  [v10 timeIntervalSinceDate:v67];
  v12 = v11;

  v86 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(AXShotflowNetwork *)self threshold];
  v14 = v13;
  if (v13 == 1.0)
  {
    v64 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B27000E0](v64, "esp error");
    __cxa_throw(v64, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v15 = 0;
  v66 = v12 * 1000.0;
  v89 = width;
  v88 = height;
  v85 = v13;
  do
  {
    v16 = *(self->_logitsPosOutputs.__begin_ + 2 * v15);
    v17 = *v16;
    if (v15 >= self->_maxout_layers)
    {
      v84 = &v17[*(v16 + 136)];
      v72 = *(v16 + 136);
      v73 = v72;
    }

    else
    {
      v18 = *(self->_logitsNegOutputs.__begin_ + 2 * v15);
      v84 = *v16;
      v17 = *v18;
      v72 = *(v16 + 136);
      v73 = *(v18 + 136);
    }

    if (self->_has_pose)
    {
      v81 = **(self->_rollOutputs.__begin_ + 2 * v15);
      v80 = **(self->_yawOutputs.__begin_ + 2 * v15);
    }

    else
    {
      v80 = 0;
      v81 = 0;
    }

    num_ratios = self->_num_ratios;
    v20 = num_ratios << (v15 != 5);
    v21 = 3 * num_ratios;
    if (!v15)
    {
      v21 = 4 * num_ratios;
    }

    if (v15 != 5)
    {
      num_ratios = v21;
    }

    if (self->_extra_default_boxes)
    {
      v22 = num_ratios;
    }

    else
    {
      v22 = v20;
    }

    if (self->_has_pose)
    {
      v69 = 44 * *(*(self->_rollOutputs.__begin_ + 2 * v15) + 136);
      v68 = 16 * *(*(self->_yawOutputs.__begin_ + 2 * v15) + 136);
    }

    else
    {
      v68 = 0;
      v69 = 0;
    }

    v23 = *(self->_offsetsOutputs.__begin_ + 2 * v15);
    v24 = *v23;
    v74 = self->_cell_starts_y.__begin_[v15];
    v82 = *(v16 + 80);
    v75 = *(v16 + 88);
    v78 = self->_cell_starts_x.__begin_[v15];
    v79 = STRIDES[v15];
    v87 = *(v23 + 136);
    std::vector<float>::vector[abi:ne200100](v90, self->_num_pos_classes + 1);
    v71 = v22;
    if (v22)
    {
      v77 = 0;
      v25 = 4 * v73;
      v70 = self->_defaultBoxSizes[v15];
      v26 = v15;
      do
      {
        if (v75)
        {
          v76 = 0;
          v27 = v70[v77];
          do
          {
            if (v82)
            {
              for (i = 0; i != v82; ++i)
              {
                v83 = v17;
                if (v15 >= self->_maxout_layers)
                {
                  v30 = *v17;
                }

                else
                {
                  bins_neg_maxout = self->_bins_neg_maxout;
                  if (bins_neg_maxout)
                  {
                    v30 = 1.1755e-38;
                    v31 = v17;
                    do
                    {
                      v30 = fmaxf(v30, *v31);
                      v31 = (v31 + v25);
                      --bins_neg_maxout;
                    }

                    while (bins_neg_maxout);
                  }

                  else
                  {
                    v30 = 1.1755e-38;
                  }
                }

                v32 = *&v90[0];
                **&v90[0] = v30;
                num_pos_classes = self->_num_pos_classes;
                if (num_pos_classes >= 1)
                {
                  v34 = v32 + 1;
                  v35 = self->_num_pos_classes;
                  v36 = v84;
                  do
                  {
                    v30 = fmaxf(v30, *v36);
                    *v34++ = *v36;
                    v36 += v72;
                    --v35;
                  }

                  while (v35);
                }

                if (num_pos_classes < 0)
                {
                  v38 = 0.0;
                }

                else
                {
                  v37 = (num_pos_classes + 1);
                  v38 = 0.0;
                  do
                  {
                    v39 = expf(*v32 - v30);
                    *v32++ = v39;
                    v38 = v38 + v39;
                    --v37;
                  }

                  while (v37);
                }

                begin = self->_important_classes.__begin_;
                end = self->_important_classes.__end_;
                if (end != begin)
                {
                  v42 = 0;
                  do
                  {
                    v43 = begin[v42];
                    v44 = *(*&v90[0] + 4 * v43) / v38;
                    if (v44 > v14)
                    {
                      v45 = *v27;
                      v46 = v27[1];
                      v47 = v24[v87];
                      v48 = *v24;
                      v49 = v24[2 * v87];
                      v50 = v24[3 * v87];
                      v51 = [AXElementDetection alloc];
                      v52 = v46 / v88;
                      v53 = v45 / v89;
                      v54 = v52 * expf(v50);
                      v55 = v53 * expf(v49);
                      *&v65 = v44;
                      v56 = [(AXElementDetection *)v51 initWithBox:v26 defaultBox:(self->_important_classes.__end_ - self->_important_classes.__begin_) > 4 confidence:v43 scale:self->_model_labels.__begin_[v42] hasLabel:((((v78 + (i * v79)) / v89) + (v48 * v53)) - (v55 * 0.5)) label:((1.0 - (((v74 + (v76 * v79)) / v88) + (v47 * v52))) - (v54 * 0.5)) labelName:v55, v54, (((v78 + (i * v79)) / v89) - (v53 * 0.5)), ((1.0 - ((v74 + (v76 * v79)) / v88)) - (v52 * 0.5)), v53, v52, v65];
                      [v86 addObject:v56];

                      begin = self->_important_classes.__begin_;
                      end = self->_important_classes.__end_;
                      v14 = v85;
                    }

                    ++v42;
                  }

                  while (v42 < end - begin);
                }

                if (self->_has_pose)
                {
                  v15 = v26;
                  v57 = v83;
                  v25 = 4 * v73;
                  if (!self->_pose_square || v77 == 5 || !v77)
                  {
                    v80 += 4;
                    v81 += 4;
                  }
                }

                else
                {
                  v15 = v26;
                  v57 = v83;
                  v25 = 4 * v73;
                }

                ++v84;
                v17 = v57 + 1;
                ++v24;
              }
            }

            ++v76;
          }

          while (v76 != v75);
        }

        if (v15 >= self->_maxout_layers)
        {
          v59 = self->_num_pos_classes;
          v58 = v59;
        }

        else
        {
          v58 = self->_bins_neg_maxout - 1;
          v59 = self->_num_pos_classes - 1;
        }

        if (self->_has_pose && (!self->_pose_square || v77 == 5 || !v77))
        {
          v81 += v69;
          v80 += v68;
        }

        v17 += v58 * v73;
        v84 += v59 * v72;
        v24 += 3 * v87;
        ++v77;
      }

      while (v77 != v71);
    }

    if (*&v90[0])
    {
      *(&v90[0] + 1) = *&v90[0];
      operator delete(*&v90[0]);
    }

    ++v15;
  }

  while (v15 != 6);
  v60 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v60 setValue:v86 forKey:@"boxes"];
  v61 = [MEMORY[0x1E696AD98] numberWithDouble:v66];
  [v60 setValue:v61 forKey:@"timing"];

  return v60;
}

- (id)resizeAndProcessVImage:(vImage_Buffer *)image inputIsBGR:(BOOL)r
{
  v67 = *MEMORY[0x1E69E9840];
  height = image->height;
  width = image->width;
  if (width)
  {
    v6 = height == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B27000E0](exception, "Invalid input");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  rCopy = r;
  v10 = width;
  v11 = height;
  if (self->_can_rotate && v11 > v10)
  {
    LODWORD(backColor.data) = 0;
    if (MEMORY[0x1B2700DA0](&dest, v10, v11, 32, 0))
    {
      v56 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B27000E0](v56, "Intermediate buffer allocation failed");
      __cxa_throw(v56, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    vImageRotate90_ARGB8888(image, &dest, 1u, &backColor, 0);
    v10 = dest.width;
    v11 = dest.height;
    v12 = 1;
  }

  else
  {
    v12 = 0;
    v13 = *&image->width;
    *&dest.data = *&image->data;
    *&dest.width = v13;
  }

  input_height = self->_input_height;
  input_aspect_ratio = self->_input_aspect_ratio;
  v16 = (input_height * input_aspect_ratio);
  v17 = input_height;
  v18 = v16;
  v19 = input_height;
  if (self->_keep_aspect_ratio)
  {
    if ((v10 / v11) >= input_aspect_ratio)
    {
      v19 = ((v11 / v10) * v16);
      v18 = (input_height * input_aspect_ratio);
    }

    else
    {
      v18 = ((v10 / v11) * v17);
      v19 = input_height;
    }
  }

  if (MEMORY[0x1B2700DA0](&backColor, v19, v18, 32, 0))
  {
    v53 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B27000E0](v53, "Intermediate buffer allocation failed");
    __cxa_throw(v53, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  vImageScale_ARGB8888(&dest, &backColor, 0, 0x20u);
  if (MEMORY[0x1B2700DA0](&v63, v17, v16, 32, 0))
  {
    v54 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B27000E0](v54, "Intermediate buffer allocation failed");
    __cxa_throw(v54, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *color = -16777216;
  if (vImageBufferFill_ARGB8888(&v63, color, 0))
  {
    v55 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B27000E0](v55, "esp error");
    __cxa_throw(v55, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (SLODWORD(backColor.height) >= 1)
  {
    v20 = 0;
    do
    {
      memcpy(v63.data + v63.rowBytes * v20, backColor.data + backColor.rowBytes * v20, 4 * backColor.width);
      ++v20;
    }

    while (v20 < SLODWORD(backColor.height));
  }

  if (v16 > 0x4000 || v17 > 0x4000)
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  else
  {
    v61 = v63;
    v21 = [(AXShotflowNetwork *)self processVImage:&v61 inputIsBGR:rCopy];
    [v21 objectForKeyedSubscript:@"boxes"];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v22 = v58 = 0u;
    v23 = [v22 countByEnumeratingWithState:&v57 objects:v66 count:16];
    if (v23)
    {
      v24 = *v58;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v58 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v57 + 1) + 8 * i);
          [v26 box];
          v28 = (v63.width / backColor.width);
          v30 = v29 * v28;
          v32 = 1.0 - (1.0 - v31) * v63.height / backColor.height;
          v34 = v33 * v28;
          v35 = (v63.height / backColor.height);
          v36 = v27 * v35;
          if (v12)
          {
            v37 = 1.0 - (v30 + v34);
            v38 = v34;
          }

          else
          {
            v38 = v27 * v35;
            v36 = v34;
            v37 = v32;
            v32 = v30;
          }

          [v26 setBox:{v32, v37, v36, v38}];
          [v26 defaultBox];
          v40 = (v63.width / backColor.width);
          v42 = v41 * v40;
          v44 = 1.0 - (1.0 - v43) * v63.height / backColor.height;
          v46 = v45 * v40;
          v47 = (v63.height / backColor.height);
          v48 = v39 * v47;
          if (v12)
          {
            v49 = 1.0 - (v42 + v46);
            v50 = v46;
          }

          else
          {
            v50 = v39 * v47;
            v48 = v46;
            v49 = v44;
            v44 = v42;
          }

          [v26 setDefaultBox:{v44, v49, v48, v50}];
        }

        v23 = [v22 countByEnumeratingWithState:&v57 objects:v66 count:16];
      }

      while (v23);
    }

    free(v63.data);
    v63.data = 0;
    free(backColor.data);
    backColor.data = 0;
    if (v12)
    {
      free(dest.data);
      dest.data = 0;
    }
  }

  return v21;
}

- (id)processCIImage:(id)image
{
  imageCopy = image;
  [imageCopy extent];
  v7 = v6;
  if (v7 == 0.0 || (v8 = v5, v8 == 0.0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B27000E0](exception, "esp error");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v9 = [AXShotflowHelpers createVImageBuffer:imageCopy];
  v10 = *&v9->width;
  v14[0] = *&v9->data;
  v14[1] = v10;
  v11 = [(AXShotflowNetwork *)self resizeAndProcessVImage:v14 inputIsBGR:0];
  if (v9->data)
  {
    free(v9->data);
  }

  MEMORY[0x1B2700150](v9, 0x1080C40ABB4582ELL);

  return v11;
}

- (id).cxx_construct
{
  *(self + 20) = 0;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 3) = 0u;
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 41) = 0;
  *(self + 264) = 0u;
  *(self + 280) = 0u;
  *(self + 296) = 0u;
  *(self + 312) = 0u;
  *(self + 1304) = 0u;
  *(self + 1320) = 0u;
  *(self + 1336) = 0u;
  return self;
}

@end