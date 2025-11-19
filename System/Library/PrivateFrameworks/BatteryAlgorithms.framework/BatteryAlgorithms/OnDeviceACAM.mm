@interface OnDeviceACAM
+ (id)algorithmWithData:(id)a3;
- (id)init:(id)a3;
- (id)output;
- (int)freshInitWithData:(id)a3;
- (int)runWithData:(id)a3;
- (void)addToBdcOutputBuffer:(const void *)a3 :(double)a4;
- (void)multiLog:(id)a3;
@end

@implementation OnDeviceACAM

+ (id)algorithmWithData:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__OnDeviceACAM_algorithmWithData___block_invoke;
  v10[3] = &unk_278D050D8;
  v11 = v4;
  v12 = a1;
  v5 = +[OnDeviceACAM algorithmWithData:]::onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&+[OnDeviceACAM algorithmWithData:]::onceToken, v10);
  }

  v7 = +[OnDeviceACAM algorithmWithData:]::instance;
  v8 = +[OnDeviceACAM algorithmWithData:]::instance;

  return v7;
}

uint64_t __34__OnDeviceACAM_algorithmWithData___block_invoke(uint64_t a1)
{
  +[OnDeviceACAM algorithmWithData:]::instance = [objc_alloc(*(a1 + 40)) init:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

- (int)freshInitWithData:(id)a3
{
  v65[35] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v47 = [v4 objectForKey:@"smcData"];
  v5 = [v4 objectForKey:@"sbcStreamData"];
  v6 = [v4 objectForKey:@"obcStreamData"];
  v46 = [v4 objectForKey:@"dailyStreamData"];
  v7 = [(OnDeviceACAM *)self model];
  ACAMSerialization::Deserialization::setSMCKeyDataFromDictionary(v65, v7 + 937, v47, 100.0);
  v8 = [MEMORY[0x277CBEB68] null];
  if (([v5 isEqual:v8] & 1) == 0 && objc_msgSend(v5, "count"))
  {
    v9 = [MEMORY[0x277CBEB68] null];
    if (([v6 isEqual:v9] & 1) == 0 && objc_msgSend(v6, "count"))
    {
      v10 = [MEMORY[0x277CBEB68] null];
      if (![v46 isEqual:v10])
      {
        v12 = [v46 count] == 0;

        if (!v12)
        {
          __p = 0;
          v59 = 0;
          v60 = 0;
          std::vector<AugmentedBatteryHealthLib::ACAMDailyData>::reserve(&__p, [v6 count]);
          for (i = 0; i < [v6 count]; ++i)
          {
            v14 = [v6 objectAtIndex:i];
            if (ACAMSerialization::Deserialization::setOBCDataFromDictionary(&v48, v14))
            {
              v15 = v59;
              if (v59 >= v60)
              {
                v17 = (v59 - __p) >> 4;
                v18 = v17 + 1;
                if ((v17 + 1) >> 60)
                {
                  std::vector<double>::__throw_length_error[abi:ne200100]();
                }

                v19 = v60 - __p;
                if ((v60 - __p) >> 3 > v18)
                {
                  v18 = v19 >> 3;
                }

                if (v19 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v20 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v20 = v18;
                }

                if (v20)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<AugmentedBatteryHealthLib::ACAMDailyData>>(&__p, v20);
                }

                v21 = (16 * v17);
                *v21 = v48;
                v16 = 16 * v17 + 16;
                v22 = (16 * v17 - (v59 - __p));
                memcpy(v21 - (v59 - __p), __p, v59 - __p);
                v23 = __p;
                __p = v22;
                v59 = v16;
                v60 = 0;
                if (v23)
                {
                  operator delete(v23);
                }
              }

              else
              {
                *v59 = v48;
                v16 = (v15 + 16);
              }

              v59 = v16;
            }
          }

          *&v62 = __p;
          *(&v62 + 1) = (v59 - __p) >> 4;
          __src = 0;
          v56 = 0;
          v57 = 0;
          std::vector<AugmentedBatteryHealthLib::DailyData>::reserve(&__src, [v5 count]);
          for (j = 0; j < [v5 count]; ++j)
          {
            v25 = [v5 objectAtIndex:j];
            if (ACAMSerialization::Deserialization::setSBCDataFromDictionary(&v48, v25))
            {
              v26 = v56;
              if (v56 >= v57)
              {
                v30 = __src;
                v31 = v56 - __src;
                v32 = 0xCCCCCCCCCCCCCCCDLL * ((v56 - __src) >> 3);
                v33 = v32 + 1;
                if (v32 + 1 > 0x666666666666666)
                {
                  std::vector<double>::__throw_length_error[abi:ne200100]();
                }

                if (0x999999999999999ALL * ((v57 - __src) >> 3) > v33)
                {
                  v33 = 0x999999999999999ALL * ((v57 - __src) >> 3);
                }

                if (0xCCCCCCCCCCCCCCCDLL * ((v57 - __src) >> 3) >= 0x333333333333333)
                {
                  v33 = 0x666666666666666;
                }

                if (v33)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<AugmentedBatteryHealthLib::DailyData>>(&__src, v33);
                }

                v34 = 8 * ((v56 - __src) >> 3);
                v35 = v48;
                v36 = v49;
                *(v34 + 32) = v50;
                *v34 = v35;
                *(v34 + 16) = v36;
                v29 = 40 * v32 + 40;
                v37 = (40 * v32 - v31);
                memcpy((v34 - v31), v30, v31);
                v38 = __src;
                __src = v37;
                v56 = v29;
                v57 = 0;
                if (v38)
                {
                  operator delete(v38);
                }
              }

              else
              {
                v27 = v48;
                v28 = v49;
                *(v56 + 32) = v50;
                *v26 = v27;
                v26[1] = v28;
                v29 = v26 + 40;
              }

              v56 = v29;
            }
          }

          *&v61 = __src;
          *(&v61 + 1) = 0xCCCCCCCCCCCCCCCDLL * ((v56 - __src) >> 3);
          v39 = [v46 objectAtIndexedSubscript:0];
          ACAMSerialization::Deserialization::setDailyDataFromDictionary(&v63, v7 + 937, v39, 100.0);

          [(OnDeviceACAM *)self multiLog:@"Performing BDC-based initialization."];
          v40 = [(OnDeviceACAM *)self runTimeOptions];
          v41 = [v40 objectForKeyedSubscript:@"SaveDebugInfo"];
          v42 = [v41 isEqual:MEMORY[0x277CBEC38]];

          if (v42)
          {
            v52 = 0;
            v53 = 0;
            v54 = 0;
            v43 = [(OnDeviceACAM *)self model];
            v48 = v61;
            v49 = v62;
            v50 = v63;
            v51 = v64;
            ACAM::init(v43, &v48);
          }

          v44 = [(OnDeviceACAM *)self model];
          v48 = v61;
          v49 = v62;
          v50 = v63;
          v51 = v64;
          ACAM::init(v44, &v48);
        }

LABEL_9:
        [(OnDeviceACAM *)self multiLog:@"BDC Data is not present. Performing fallback initialization"];
        v11 = [(OnDeviceACAM *)self model];
        ACAM::init(v11, v65[3], v65[1], v65[0]);
      }
    }
  }

  goto LABEL_9;
}

- (id)init:(id)a3
{
  v72 = MEMORY[0x28223BE20](self, a2, a3);
  v125[3] = *MEMORY[0x277D85DE8];
  v68 = v3;
  v69 = [v68 objectForKey:@"smcData"];
  v70 = [v68 objectForKey:@"systemState"];
  v71 = [v68 objectForKey:@"savedAlgoState"];
  v77.receiver = v72;
  v77.super_class = OnDeviceACAM;
  v4 = [(OnDeviceACAM *)&v77 init];
  v5 = os_log_create("com.apple.batteryalgorithms", "OnDeviceACAM");
  logger = v4->_logger;
  v73 = v4;
  v4->_logger = v5;

  [(OnDeviceACAM *)v4 multiLog:@"OnDeviceACAM: %@", v69];
  name = v4->_name;
  v4->_name = @"OnDeviceACAM";

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 2];
  version = v4->_version;
  v4->_version = v8;

  algoDescription = v4->_algoDescription;
  v4->_algoDescription = @"Physics-based battery aging model for on-device battery chemistry state.";

  v11 = [MEMORY[0x277CCABB0] numberWithInt:86400];
  runPeriod = v4->_runPeriod;
  v4->_runPeriod = v11;

  v14 = OnDeviceACAMUtility::createRuntimeOptions(v13);
  runTimeOptions = v4->_runTimeOptions;
  v4->_runTimeOptions = v14;

  v16 = [MEMORY[0x277CBEB18] array];
  debugLogBuffer = v4->_debugLogBuffer;
  v4->_debugLogBuffer = v16;

  v18 = [v71 objectForKeyedSubscript:@"kSavedAlgoStateOnDeviceACAMInterface"];
  LODWORD(v4) = v18 == 0;

  if (v4)
  {
    v22 = [MEMORY[0x277CBEB38] dictionary];
    lastBDCOutputTimestamp = v73->_lastBDCOutputTimestamp;
    v73->_lastBDCOutputTimestamp = v22;

    [(NSMutableDictionary *)v73->_lastBDCOutputTimestamp setObject:&unk_2853AFFC0 forKeyedSubscript:@"SBC"];
    [(NSMutableDictionary *)v73->_lastBDCOutputTimestamp setObject:&unk_2853AFFC0 forKeyedSubscript:@"Daily"];
    [(NSMutableDictionary *)v73->_lastBDCOutputTimestamp setObject:&unk_2853AFFC0 forKeyedSubscript:@"Weekly"];
  }

  else
  {
    v19 = [v71 objectForKeyedSubscript:@"kSavedAlgoStateOnDeviceACAMInterface"];
    v20 = [v19 mutableCopy];
    v21 = v73->_lastBDCOutputTimestamp;
    v73->_lastBDCOutputTimestamp = v20;
  }

  v24 = [v71 objectForKeyedSubscript:@"kSavedAlgoStateOnDeviceACAMFreshInitInfo"];
  v25 = v24 == 0;

  if (v25)
  {
    v29 = [MEMORY[0x277CBEAC0] dictionary];
    freshInitInfo = v73->_freshInitInfo;
    v73->_freshInitInfo = v29;
  }

  else
  {
    freshInitInfo = [v71 objectForKeyedSubscript:@"kSavedAlgoStateOnDeviceACAMFreshInitInfo"];
    v27 = [freshInitInfo copy];
    v28 = v73->_freshInitInfo;
    v73->_freshInitInfo = v27;
  }

  v30 = [v71 objectForKeyedSubscript:@"kSavedAlgoStateOnDeviceACAMRunningInfo"];
  v31 = v30 == 0;

  if (v31)
  {
    v35 = [MEMORY[0x277CBEB18] array];
    runningInfo = v73->_runningInfo;
    v73->_runningInfo = v35;
  }

  else
  {
    runningInfo = [v71 objectForKeyedSubscript:@"kSavedAlgoStateOnDeviceACAMRunningInfo"];
    v33 = [runningInfo mutableCopy];
    v34 = v73->_runningInfo;
    v73->_runningInfo = v33;
  }

  v124[0] = @"SBC";
  v36 = [MEMORY[0x277CBEB18] array];
  v125[0] = v36;
  v124[1] = @"Daily";
  v37 = [MEMORY[0x277CBEB18] array];
  v125[1] = v37;
  v124[2] = @"Weekly";
  v38 = [MEMORY[0x277CBEB18] array];
  v125[2] = v38;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:v124 count:3];
  bdcOutputBuffer = v73->_bdcOutputBuffer;
  v73->_bdcOutputBuffer = v39;

  v108[0] = @"D37";
  v106[0] = &unk_2853ADBC8;
  v107[0] = @"D37ATL";
  v106[1] = &unk_2853ADBE0;
  v107[1] = @"D37ATL";
  v106[2] = &unk_2853ADBF8;
  v107[2] = @"D37ATL";
  v106[3] = &unk_2853ADC10;
  v107[3] = @"D37ATL";
  v106[4] = &unk_2853ADC28;
  v107[4] = @"D37ATL";
  v106[5] = &unk_2853ADC40;
  v107[5] = @"D37ATL";
  v106[6] = &unk_2853ADC58;
  v107[6] = @"D37ATL";
  v106[7] = &unk_2853ADC70;
  v107[7] = @"D37ATL";
  v106[8] = &unk_2853ADC88;
  v107[8] = @"D37ATL";
  v106[9] = &unk_2853ADCA0;
  v107[9] = @"D37ATL";
  v106[10] = &unk_2853ADCB8;
  v107[10] = @"D37ATL";
  v106[11] = &unk_2853ADCD0;
  v107[11] = @"D37LGC";
  v106[12] = &unk_2853ADCE8;
  v107[12] = @"D37LGC";
  v106[13] = &unk_2853ADD00;
  v107[13] = @"D37LGC";
  v106[14] = &unk_2853ADD18;
  v107[14] = @"D37LGC";
  v106[15] = &unk_2853ADD30;
  v107[15] = @"D37LGC";
  v106[16] = &unk_2853ADD48;
  v107[16] = @"D37LGC";
  v106[17] = &unk_2853ADD60;
  v107[17] = @"D37LGC";
  v106[18] = &unk_2853ADD78;
  v107[18] = @"D37LGC";
  v106[19] = &unk_2853ADD90;
  v107[19] = @"D37LGC";
  v106[20] = &unk_2853ADDA8;
  v107[20] = @"D37LGC";
  v106[21] = &unk_2853ADDC0;
  v107[21] = @"D37LGC";
  v106[22] = &unk_2853ADDD8;
  v107[22] = @"D37LGC";
  v106[23] = &unk_2853ADDF0;
  v107[23] = @"D37LGC";
  v106[24] = &unk_2853ADE08;
  v107[24] = @"D37LGC";
  v106[25] = &unk_2853ADE20;
  v107[25] = @"D37LGC";
  v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:26];
  v108[1] = @"D38";
  v104[0] = &unk_2853ADE38;
  v105[0] = @"D38ATL";
  v104[1] = &unk_2853ADE50;
  v105[1] = @"D38ATL";
  v104[2] = &unk_2853ADE68;
  v105[2] = @"D38ATL";
  v104[3] = &unk_2853ADE80;
  v105[3] = @"D38ATL";
  v104[4] = &unk_2853ADE98;
  v105[4] = @"D38ATL";
  v104[5] = &unk_2853ADEB0;
  v105[5] = @"D38ATL";
  v104[6] = &unk_2853ADEC8;
  v105[6] = @"D38ATL";
  v104[7] = &unk_2853ADEE0;
  v105[7] = @"D38ATL";
  v104[8] = &unk_2853ADEF8;
  v105[8] = @"D38ATL";
  v104[9] = &unk_2853ADF10;
  v105[9] = @"D38ATL";
  v104[10] = &unk_2853ADF28;
  v105[10] = @"D38ATL";
  v104[11] = &unk_2853ADF40;
  v105[11] = @"D38ATL";
  v104[12] = &unk_2853ADF58;
  v105[12] = @"D38ATL";
  v104[13] = &unk_2853ADF70;
  v105[13] = @"D38ATL";
  v104[14] = &unk_2853ADF88;
  v105[14] = @"D38ATL";
  v104[15] = &unk_2853ADFA0;
  v105[15] = @"D38ATL";
  v104[16] = &unk_2853ADFB8;
  v105[16] = @"D38ATL";
  v104[17] = &unk_2853ADFD0;
  v105[17] = @"D38ATL";
  v104[18] = &unk_2853ADFE8;
  v105[18] = @"D38ATL";
  v104[19] = &unk_2853AE000;
  v105[19] = @"D38ATL";
  v104[20] = &unk_2853AE018;
  v105[20] = @"D38ATL";
  v104[21] = &unk_2853AE030;
  v105[21] = @"D38ATL";
  v104[22] = &unk_2853AE048;
  v105[22] = @"D38ATL";
  v104[23] = &unk_2853AE060;
  v105[23] = @"D38ATL";
  v104[24] = &unk_2853AE078;
  v105[24] = @"D38LGC";
  v104[25] = &unk_2853AE090;
  v105[25] = @"D38LGC";
  v104[26] = &unk_2853AE0A8;
  v105[26] = @"D38LGC";
  v104[27] = &unk_2853AE0C0;
  v105[27] = @"D38LGC";
  v104[28] = &unk_2853AE0D8;
  v105[28] = @"D38LGC";
  v104[29] = &unk_2853AE0F0;
  v105[29] = @"D38LGC";
  v104[30] = &unk_2853AE108;
  v105[30] = @"D38LGC";
  v104[31] = &unk_2853AE120;
  v105[31] = @"D38LGC";
  v104[32] = &unk_2853AE138;
  v105[32] = @"D38LGC";
  v104[33] = &unk_2853AE150;
  v105[33] = @"D38LGC";
  v104[34] = &unk_2853AE168;
  v105[34] = @"D38LGC";
  v104[35] = &unk_2853AE180;
  v105[35] = @"D38LGC";
  v104[36] = &unk_2853AE198;
  v105[36] = @"D38LGC";
  v104[37] = &unk_2853AE1B0;
  v105[37] = @"D38LGC";
  v104[38] = &unk_2853AE1C8;
  v105[38] = @"D38LGC";
  v104[39] = &unk_2853AE1E0;
  v105[39] = @"D38LGC";
  v104[40] = &unk_2853AE1F8;
  v105[40] = @"D38LGC";
  v104[41] = &unk_2853AE210;
  v105[41] = @"D38LGC";
  v63 = v109;
  v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:42];
  v108[2] = @"D83";
  v102[0] = &unk_2853AE228;
  v103[0] = @"D83ATL";
  v102[1] = &unk_2853AE240;
  v103[1] = @"D83ATL";
  v102[2] = &unk_2853AE258;
  v103[2] = @"D83ATL";
  v102[3] = &unk_2853AE270;
  v103[3] = @"D83ATL";
  v102[4] = &unk_2853AE288;
  v103[4] = @"D83ATL";
  v102[5] = &unk_2853AE2A0;
  v103[5] = @"D83ATL";
  v102[6] = &unk_2853AE2B8;
  v103[6] = @"D83ATL";
  v102[7] = &unk_2853AE2D0;
  v103[7] = @"D83ATL";
  v102[8] = &unk_2853AE2E8;
  v103[8] = @"D83ATL";
  v102[9] = &unk_2853AE300;
  v103[9] = @"D83ATL";
  v102[10] = &unk_2853AE318;
  v103[10] = @"D83ATL";
  v102[11] = &unk_2853AE330;
  v103[11] = @"D83ATL";
  v102[12] = &unk_2853AE348;
  v103[12] = @"D83ATL";
  v102[13] = &unk_2853AE360;
  v103[13] = @"D83ATL";
  v102[14] = &unk_2853AE378;
  v103[14] = @"D83ATL";
  v102[15] = &unk_2853AE390;
  v103[15] = @"D83ATL";
  v102[16] = &unk_2853AE3A8;
  v103[16] = @"D83COS";
  v102[17] = &unk_2853AE3C0;
  v103[17] = @"D83COS";
  v102[18] = &unk_2853AE3D8;
  v103[18] = @"D83COS";
  v102[19] = &unk_2853AE3F0;
  v103[19] = @"D83COS";
  v102[20] = &unk_2853AE408;
  v103[20] = @"D83COS";
  v102[21] = &unk_2853AE420;
  v103[21] = @"D83COS";
  v102[22] = &unk_2853AE438;
  v103[22] = @"D83COS";
  v102[23] = &unk_2853AE450;
  v103[23] = @"D83COS";
  v102[24] = &unk_2853AE468;
  v103[24] = @"D83COS";
  v102[25] = &unk_2853AE480;
  v103[25] = @"D83COS";
  v102[26] = &unk_2853AE498;
  v103[26] = @"D83COS";
  v102[27] = &unk_2853AE4B0;
  v103[27] = @"D83COS";
  v102[28] = &unk_2853AE4C8;
  v103[28] = @"D83COS";
  v102[29] = &unk_2853AE4E0;
  v103[29] = @"D83COS";
  v102[30] = &unk_2853AE4F8;
  v103[30] = @"D83COS";
  v62 = v110;
  v111 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:31];
  v108[3] = @"D84";
  v100[0] = &unk_2853AE510;
  v101[0] = @"D84ATL";
  v100[1] = &unk_2853AE528;
  v101[1] = @"D84ATL";
  v100[2] = &unk_2853AE540;
  v101[2] = @"D84ATL";
  v100[3] = &unk_2853AE558;
  v101[3] = @"D84ATL";
  v100[4] = &unk_2853AE570;
  v101[4] = @"D84ATL";
  v100[5] = &unk_2853AE588;
  v101[5] = @"D84ATL";
  v100[6] = &unk_2853AE5A0;
  v101[6] = @"D84ATL";
  v100[7] = &unk_2853AE5B8;
  v101[7] = @"D84ATL";
  v100[8] = &unk_2853AE5D0;
  v101[8] = @"D84ATL";
  v100[9] = &unk_2853AE5E8;
  v101[9] = @"D84ATL";
  v100[10] = &unk_2853AE600;
  v101[10] = @"D84ATL";
  v100[11] = &unk_2853AE618;
  v101[11] = @"D84ATL";
  v100[12] = &unk_2853AE630;
  v101[12] = @"D84ATL";
  v100[13] = &unk_2853AE648;
  v101[13] = @"D84ATL";
  v100[14] = &unk_2853AE660;
  v101[14] = @"D84ATL";
  v100[15] = &unk_2853AE678;
  v101[15] = @"D84ATL";
  v100[16] = &unk_2853AE690;
  v101[16] = @"D84ATL";
  v100[17] = &unk_2853AE6A8;
  v101[17] = @"D84ATL";
  v100[18] = &unk_2853AE6C0;
  v101[18] = @"D84ATL";
  v100[19] = &unk_2853AE6D8;
  v101[19] = @"D84ATL";
  v100[20] = &unk_2853AE6F0;
  v101[20] = @"D84ATL";
  v100[21] = &unk_2853AE708;
  v101[21] = @"D84ATL";
  v100[22] = &unk_2853AE720;
  v101[22] = @"D84ATL";
  v100[23] = &unk_2853AE738;
  v101[23] = @"D84ATL";
  v100[24] = &unk_2853AE750;
  v101[24] = @"D84LGC";
  v100[25] = &unk_2853AE768;
  v101[25] = @"D84LGC";
  v100[26] = &unk_2853AE780;
  v101[26] = @"D84LGC";
  v100[27] = &unk_2853AE798;
  v101[27] = @"D84LGC";
  v100[28] = &unk_2853AE7B0;
  v101[28] = @"D84LGC";
  v100[29] = &unk_2853AE7C8;
  v101[29] = @"D84LGC";
  v100[30] = &unk_2853AE7E0;
  v101[30] = @"D84LGC";
  v100[31] = &unk_2853AE7F8;
  v101[31] = @"D84LGC";
  v100[32] = &unk_2853AE810;
  v101[32] = @"D84LGC";
  v100[33] = &unk_2853AE828;
  v101[33] = @"D84LGC";
  v100[34] = &unk_2853AE840;
  v101[34] = @"D84LGC";
  v100[35] = &unk_2853AE858;
  v101[35] = @"D84LGC";
  v100[36] = &unk_2853AE870;
  v101[36] = @"D84LGC";
  v100[37] = &unk_2853AE888;
  v101[37] = @"D84LGC";
  v100[38] = &unk_2853AE8A0;
  v101[38] = @"D84LGC";
  v100[39] = &unk_2853AE8B8;
  v101[39] = @"D84LGC";
  v100[40] = &unk_2853AE8D0;
  v101[40] = @"D84LGC";
  v100[41] = &unk_2853AE8E8;
  v101[41] = @"D84LGC";
  v100[42] = &unk_2853AE900;
  v101[42] = @"D84LGC";
  v100[43] = &unk_2853AE918;
  v101[43] = @"D84LGC";
  v100[44] = &unk_2853AE930;
  v101[44] = @"D84LGC";
  v100[45] = &unk_2853AE948;
  v101[45] = @"D84LGC";
  v100[46] = &unk_2853AE960;
  v101[46] = @"D84LGC";
  v100[47] = &unk_2853AE978;
  v101[47] = @"D84LGC";
  v61 = v111;
  v112 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:48];
  v108[4] = @"D47";
  v98[0] = &unk_2853AE990;
  v99[0] = @"D47ATL";
  v98[1] = &unk_2853AE9A8;
  v99[1] = @"D47ATL";
  v98[2] = &unk_2853AE9C0;
  v99[2] = @"D47ATL";
  v98[3] = &unk_2853AE9D8;
  v99[3] = @"D47ATL";
  v98[4] = &unk_2853AE9F0;
  v99[4] = @"D47ATL";
  v98[5] = &unk_2853AEA08;
  v99[5] = @"D47ATL";
  v98[6] = &unk_2853AEA20;
  v99[6] = @"D47ATL";
  v98[7] = &unk_2853AEA38;
  v99[7] = @"D47ATL";
  v98[8] = &unk_2853AEA50;
  v99[8] = @"D47ATL";
  v98[9] = &unk_2853AEA68;
  v99[9] = @"D47ATL";
  v98[10] = &unk_2853AEA80;
  v99[10] = @"D47ATL";
  v98[11] = &unk_2853AEA98;
  v99[11] = @"D47ATL";
  v98[12] = &unk_2853AEAB0;
  v99[12] = @"D47ATL";
  v98[13] = &unk_2853AEAC8;
  v99[13] = @"D47ATL";
  v98[14] = &unk_2853AEAE0;
  v99[14] = @"D47ATL";
  v98[15] = &unk_2853AEAF8;
  v99[15] = @"D47ATL";
  v98[16] = &unk_2853AEB10;
  v99[16] = @"D47ATL";
  v98[17] = &unk_2853AEB28;
  v99[17] = @"D47ATL";
  v98[18] = &unk_2853AEB40;
  v99[18] = @"D47COS";
  v98[19] = &unk_2853AEB58;
  v99[19] = @"D47COS";
  v98[20] = &unk_2853AEB70;
  v99[20] = @"D47COS";
  v98[21] = &unk_2853AEB88;
  v99[21] = @"D47COS";
  v98[22] = &unk_2853AEBA0;
  v99[22] = @"D47COS";
  v98[23] = &unk_2853AEBB8;
  v99[23] = @"D47COS";
  v98[24] = &unk_2853AEBD0;
  v99[24] = @"D47COS";
  v98[25] = &unk_2853AEBE8;
  v99[25] = @"D47COS";
  v98[26] = &unk_2853AEC00;
  v99[26] = @"D47COS";
  v98[27] = &unk_2853AEC18;
  v99[27] = @"D47COS";
  v98[28] = &unk_2853AEC30;
  v99[28] = @"D47COS";
  v98[29] = &unk_2853AEC48;
  v99[29] = @"D47COS";
  v98[30] = &unk_2853AEC60;
  v99[30] = @"D47COS";
  v98[31] = &unk_2853AEC78;
  v99[31] = @"D47COS";
  v98[32] = &unk_2853AEC90;
  v99[32] = @"D47COS";
  v98[33] = &unk_2853AECA8;
  v99[33] = @"D47COS";
  v98[34] = &unk_2853AECC0;
  v99[34] = @"D47COS";
  v98[35] = &unk_2853AECD8;
  v99[35] = @"D47COS";
  v98[36] = &unk_2853AECF0;
  v99[36] = @"D47COS";
  v60 = v112;
  v113 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:37];
  v108[5] = @"D48";
  v96[0] = &unk_2853AED08;
  v97[0] = @"D48ATL";
  v96[1] = &unk_2853AED20;
  v97[1] = @"D48ATL";
  v96[2] = &unk_2853AED38;
  v97[2] = @"D48ATL";
  v96[3] = &unk_2853AED50;
  v97[3] = @"D48ATL";
  v96[4] = &unk_2853AED68;
  v97[4] = @"D48ATL";
  v96[5] = &unk_2853AED80;
  v97[5] = @"D48ATL";
  v96[6] = &unk_2853AED98;
  v97[6] = @"D48ATL";
  v96[7] = &unk_2853AEDB0;
  v97[7] = @"D48ATL";
  v96[8] = &unk_2853AEDC8;
  v97[8] = @"D48ATL";
  v96[9] = &unk_2853AEDE0;
  v97[9] = @"D48ATL";
  v96[10] = &unk_2853AEDF8;
  v97[10] = @"D48ATL";
  v96[11] = &unk_2853AEE10;
  v97[11] = @"D48ATL";
  v96[12] = &unk_2853AEE28;
  v97[12] = @"D48ATL";
  v96[13] = &unk_2853AEE40;
  v97[13] = @"D48ATL";
  v96[14] = &unk_2853AEE58;
  v97[14] = @"D48LGC";
  v96[15] = &unk_2853AEE70;
  v97[15] = @"D48LGC";
  v96[16] = &unk_2853AEE88;
  v97[16] = @"D48LGC";
  v96[17] = &unk_2853AEEA0;
  v97[17] = @"D48LGC";
  v96[18] = &unk_2853AEEB8;
  v97[18] = @"D48LGC";
  v96[19] = &unk_2853AEED0;
  v97[19] = @"D48LGC";
  v96[20] = &unk_2853AEEE8;
  v97[20] = @"D48LGC";
  v96[21] = &unk_2853AEF00;
  v97[21] = @"D48LGC";
  v96[22] = &unk_2853AEF18;
  v97[22] = @"D48LGC";
  v96[23] = &unk_2853AEF30;
  v97[23] = @"D48LGC";
  v96[24] = &unk_2853AEF48;
  v97[24] = @"D48LGC";
  v96[25] = &unk_2853AEF60;
  v97[25] = @"D48LGC";
  v96[26] = &unk_2853AEF78;
  v97[26] = @"D48LGC";
  v96[27] = &unk_2853AEF90;
  v97[27] = @"D48LGC";
  v96[28] = &unk_2853AEFA8;
  v97[28] = @"D48LGC";
  v96[29] = &unk_2853AEFC0;
  v97[29] = @"D48LGC";
  v96[30] = &unk_2853AEFD8;
  v97[30] = @"D48LGC";
  v96[31] = &unk_2853AEFF0;
  v97[31] = @"D48LGC";
  v59 = v113;
  v114 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:32];
  v108[6] = @"D93";
  v94[0] = &unk_2853AF008;
  v95[0] = @"D93ATL";
  v94[1] = &unk_2853AF020;
  v95[1] = @"D93ATL";
  v94[2] = &unk_2853AF038;
  v95[2] = @"D93ATL";
  v94[3] = &unk_2853AF050;
  v95[3] = @"D93ATL";
  v94[4] = &unk_2853AF068;
  v95[4] = @"D93ATL";
  v94[5] = &unk_2853AF080;
  v95[5] = @"D93ATL";
  v94[6] = &unk_2853AF098;
  v95[6] = @"D93ATL";
  v94[7] = &unk_2853AF0B0;
  v95[7] = @"D93ATL";
  v94[8] = &unk_2853AF0C8;
  v95[8] = @"D93ATL";
  v94[9] = &unk_2853AF0E0;
  v95[9] = @"D93ATL";
  v94[10] = &unk_2853AF0F8;
  v95[10] = @"D93ATL";
  v94[11] = &unk_2853AF110;
  v95[11] = @"D93ATL";
  v94[12] = &unk_2853AF128;
  v95[12] = @"D93ATL";
  v94[13] = &unk_2853AF140;
  v95[13] = @"D93ATL";
  v94[14] = &unk_2853AF158;
  v95[14] = @"D93ATL";
  v94[15] = &unk_2853AF170;
  v95[15] = @"D93ATL";
  v94[16] = &unk_2853AF188;
  v95[16] = @"D93ATL";
  v94[17] = &unk_2853AF1A0;
  v95[17] = @"D93ATL";
  v94[18] = &unk_2853AF1B8;
  v95[18] = @"D93ATL";
  v94[19] = &unk_2853AF1D0;
  v95[19] = @"D93ATL";
  v94[20] = &unk_2853AF1E8;
  v95[20] = @"D93ATL";
  v94[21] = &unk_2853AF200;
  v95[21] = @"D93ATL";
  v94[22] = &unk_2853AF218;
  v95[22] = @"D93ATL";
  v94[23] = &unk_2853AF230;
  v95[23] = @"D93ATL";
  v94[24] = &unk_2853AF248;
  v95[24] = @"D93ATL";
  v58 = v114;
  v115 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:25];
  v108[7] = @"D94";
  v92[0] = &unk_2853AF260;
  v93[0] = @"D94ATL";
  v92[1] = &unk_2853AF278;
  v93[1] = @"D94ATL";
  v92[2] = &unk_2853AF290;
  v93[2] = @"D94ATL";
  v92[3] = &unk_2853AF2A8;
  v93[3] = @"D94ATL";
  v92[4] = &unk_2853AF2C0;
  v93[4] = @"D94ATL";
  v92[5] = &unk_2853AF2D8;
  v93[5] = @"D94ATL";
  v92[6] = &unk_2853AF2F0;
  v93[6] = @"D94ATL";
  v92[7] = &unk_2853AF308;
  v93[7] = @"D94ATL";
  v92[8] = &unk_2853AF320;
  v93[8] = @"D94ATL";
  v92[9] = &unk_2853AF338;
  v93[9] = @"D94LGC";
  v92[10] = &unk_2853AF350;
  v93[10] = @"D94LGC";
  v92[11] = &unk_2853AF368;
  v93[11] = @"D94LGC";
  v92[12] = &unk_2853AF380;
  v93[12] = @"D94LGC";
  v92[13] = &unk_2853AF398;
  v93[13] = @"D94LGC";
  v92[14] = &unk_2853AF3B0;
  v93[14] = @"D94LGC";
  v92[15] = &unk_2853AF3C8;
  v93[15] = @"D94LGC";
  v92[16] = &unk_2853AF3E0;
  v93[16] = @"D94LGC";
  v92[17] = &unk_2853AF3F8;
  v93[17] = @"D94LGC";
  v92[18] = &unk_2853AF410;
  v93[18] = @"D94LGC";
  v92[19] = &unk_2853AF428;
  v93[19] = @"D94LGC";
  v92[20] = &unk_2853AF440;
  v93[20] = @"D94LGC";
  v57 = v115;
  v116 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:21];
  v108[8] = @"V59";
  v90[0] = &unk_2853AF458;
  v91[0] = @"V59ATL";
  v90[1] = &unk_2853AF470;
  v91[1] = @"V59ATL";
  v90[2] = &unk_2853AF488;
  v91[2] = @"V59ATL";
  v90[3] = &unk_2853AF4A0;
  v91[3] = @"V59ATL";
  v90[4] = &unk_2853AF4B8;
  v91[4] = @"V59ATL";
  v90[5] = &unk_2853AF4D0;
  v91[5] = @"V59ATL";
  v90[6] = &unk_2853AF4E8;
  v91[6] = @"V59ATL";
  v90[7] = &unk_2853AF500;
  v91[7] = @"V59ATL";
  v90[8] = &unk_2853AF518;
  v91[8] = @"V59LGC";
  v90[9] = &unk_2853AF530;
  v91[9] = @"V59LGC";
  v90[10] = &unk_2853AF548;
  v91[10] = @"V59LGC";
  v90[11] = &unk_2853AF560;
  v91[11] = @"V59LGC";
  v90[12] = &unk_2853AF578;
  v91[12] = @"V59LGC";
  v90[13] = &unk_2853AF590;
  v91[13] = @"V59LGC";
  v90[14] = &unk_2853AF5A8;
  v91[14] = @"V59LGC";
  v90[15] = &unk_2853AF5C0;
  v91[15] = @"V59LGC";
  v90[16] = &unk_2853AF5D8;
  v91[16] = @"V59LGC";
  v56 = v116;
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:17];
  v117 = v67;
  v108[9] = @"D23";
  v88[0] = &unk_2853AF5F0;
  v89[0] = @"D23ATL";
  v88[1] = &unk_2853AF608;
  v89[1] = @"D23ATL";
  v88[2] = &unk_2853AF620;
  v89[2] = @"D23ATL";
  v88[3] = &unk_2853AF638;
  v89[3] = @"D23ATL";
  v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:4];
  v118 = v66;
  v108[10] = @"V53";
  v87[0] = @"V53eATL";
  v86[0] = &unk_2853AF650;
  v86[1] = &unk_2853AF668;
  v87[1] = @"V53eCOS";
  v87[2] = @"V53pATL";
  v86[2] = &unk_2853AF680;
  v86[3] = &unk_2853AF698;
  v87[3] = @"V53pCOS";
  v87[4] = @"V53eATL";
  v86[4] = &unk_2853AF6B0;
  v86[5] = &unk_2853AF6C8;
  v87[5] = @"V53eCOS";
  v87[6] = @"V53pATL";
  v86[6] = &unk_2853AF6E0;
  v86[7] = &unk_2853AF6F8;
  v87[7] = @"V53pCOS";
  v86[8] = &unk_2853AF710;
  v87[8] = @"V53eATL";
  v86[9] = &unk_2853AF728;
  v87[9] = @"V53eCOS";
  v86[10] = &unk_2853AF740;
  v87[10] = @"V53pATL";
  v86[11] = &unk_2853AF758;
  v87[11] = @"V53pCOS";
  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:12];
  v119 = v65;
  v108[11] = @"V54";
  v84[0] = &unk_2853AF770;
  v84[1] = &unk_2853AF788;
  v85[0] = @"V54eATL";
  v85[1] = @"V54eLGC";
  v84[2] = &unk_2853AF7A0;
  v84[3] = &unk_2853AF7B8;
  v85[2] = @"V54pATL";
  v85[3] = @"V54pLGC";
  v84[4] = &unk_2853AF7D0;
  v84[5] = &unk_2853AF7E8;
  v85[4] = @"V54eATL";
  v85[5] = @"V54eLGC";
  v84[6] = &unk_2853AF800;
  v84[7] = &unk_2853AF818;
  v85[6] = @"V54pATL";
  v85[7] = @"V54pLGC";
  v84[8] = &unk_2853AF830;
  v84[9] = &unk_2853AF848;
  v85[8] = @"V54eATL";
  v85[9] = @"V54eLGC";
  v84[10] = &unk_2853AF860;
  v84[11] = &unk_2853AF878;
  v85[10] = @"V54pATL";
  v85[11] = @"V54pLGC";
  v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:12];
  v120 = v64;
  v108[12] = @"V57";
  v82[0] = &unk_2853AF890;
  v82[1] = &unk_2853AF8A8;
  v83[0] = @"V57ATL";
  v83[1] = @"V57COS";
  v82[2] = &unk_2853AF8C0;
  v82[3] = &unk_2853AF8D8;
  v83[2] = @"V57ATL";
  v83[3] = @"V57COS";
  v82[4] = &unk_2853AF8F0;
  v82[5] = &unk_2853AF908;
  v83[4] = @"V57ATL";
  v83[5] = @"V57COS";
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:6];
  v121 = v41;
  v108[13] = @"N227b";
  v80[0] = &unk_2853AF920;
  v80[1] = &unk_2853AF938;
  v81[0] = @"N227bATL";
  v81[1] = @"N227bMUR";
  v80[2] = &unk_2853AF950;
  v80[3] = &unk_2853AF968;
  v81[2] = @"N227bMUR";
  v81[3] = @"N227bATL";
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:4];
  v122 = v42;
  v108[14] = @"N228b";
  v78[0] = &unk_2853AF920;
  v78[1] = &unk_2853AF938;
  v79[0] = @"N227bATL";
  v79[1] = @"N227bMUR";
  v78[2] = &unk_2853AF950;
  v78[3] = &unk_2853AF968;
  v79[2] = @"N227bMUR";
  v79[3] = @"N227bATL";
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:4];
  v123 = v43;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v109 forKeys:v108 count:15];

  std::string::basic_string[abi:ne200100]<0>(&v76, "Default");
  v45 = [v70 objectForKeyedSubscript:@"DeviceType"];
  v46 = [v44 objectForKeyedSubscript:v45];
  LOBYTE(v41) = v46 == 0;

  if ((v41 & 1) == 0)
  {
    v48 = [v70 objectForKeyedSubscript:@"DeviceType"];
    v49 = [v44 objectForKeyedSubscript:v48];

    v50 = [v69 objectForKeyedSubscript:@"AlgoChemID"];
    v51 = [v49 objectForKeyedSubscript:v50];
    v52 = v51 == 0;

    if (!v52)
    {
      v53 = [v69 objectForKeyedSubscript:@"AlgoChemID"];
      v54 = [v49 objectForKeyedSubscript:v53];
      BACore::CommonSerialization::getCppStringFromNSString(v54, &v75);
      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      v76 = v75;
      *(&v75.__r_.__value_.__s + 23) = 0;
      v75.__r_.__value_.__s.__data_[0] = 0;
    }
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v74, v76.__r_.__value_.__l.__data_, v76.__r_.__value_.__l.__size_);
  }

  else
  {
    v74 = v76;
  }

  ACAMUtility::ACAMParameterPack::ACAMParameterPack(&v75, &v74, v47);
}

- (void)addToBdcOutputBuffer:(const void *)a3 :(double)a4
{
  std::string::basic_string[abi:ne200100]<0>(__p, "SBC");
  v7 = std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::find<std::string>(a3, __p);
  if (!v7)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v8 = *(v7 + 40);
  if (v34 < 0)
  {
    operator delete(__p[0]);
    if (!v8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (*(v7 + 40))
  {
LABEL_6:
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    v10 = [(OnDeviceACAM *)self lastBDCOutputTimestamp];
    [v10 setObject:v9 forKeyedSubscript:@"SBC"];

    v11 = [(OnDeviceACAM *)self bdcOutputBuffer];
    v12 = [v11 objectForKeyedSubscript:@"SBC"];
    v13 = [(OnDeviceACAM *)self model];
    v15 = ACAMSerialization::Serialization::createBDCSBCFromACAM(v13, v14, a4);
    [v12 addObject:v15];
  }

LABEL_7:
  std::string::basic_string[abi:ne200100]<0>(__p, "Daily");
  v16 = std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::find<std::string>(a3, __p);
  if (!v16)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v17 = *(v16 + 40);
  if (v34 < 0)
  {
    operator delete(__p[0]);
    if (!v17)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (*(v16 + 40))
  {
LABEL_12:
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    v19 = [(OnDeviceACAM *)self lastBDCOutputTimestamp];
    [v19 setObject:v18 forKeyedSubscript:@"Daily"];

    v20 = [(OnDeviceACAM *)self bdcOutputBuffer];
    v21 = [v20 objectForKeyedSubscript:@"Daily"];
    v22 = [(OnDeviceACAM *)self model];
    v26 = ACAMSerialization::Serialization::createBDCDailyFromACAM(v22, v23, a4, v24, v25);
    [v21 addObject:v26];

    *([(OnDeviceACAM *)self model]+ 37940) = 0;
  }

LABEL_13:
  std::string::basic_string[abi:ne200100]<0>(__p, "Weekly");
  v27 = std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::find<std::string>(a3, __p);
  if (!v27)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v28 = *(v27 + 40);
  if ((v34 & 0x80000000) == 0)
  {
    if (!*(v27 + 40))
    {
      return;
    }

LABEL_18:
    v29 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    v30 = [(OnDeviceACAM *)self lastBDCOutputTimestamp];
    [v30 setObject:v29 forKeyedSubscript:@"Weekly"];

    [(OnDeviceACAM *)self bdcOutputBuffer];
    [objc_claimAutoreleasedReturnValue() objectForKeyedSubscript:@"Weekly"];
    objc_claimAutoreleasedReturnValue();
    v31 = [(OnDeviceACAM *)self model];
    ACAMSerialization::Serialization::createBDCWeeklyFromACAM(v31, v32, a4);
  }

  operator delete(__p[0]);
  if (v28)
  {
    goto LABEL_18;
  }
}

- (int)runWithData:(id)a3
{
  v156 = *MEMORY[0x277D85DE8];
  v107 = a3;
  v112 = [v107 objectForKey:@"amaStreamData"];
  v108 = [v107 objectForKey:@"smcData"];
  ACAMSerialization::Deserialization::setSMCKeyDataFromDictionary(v139, ([(OnDeviceACAM *)self model]+ 7496), v108, 100.0);
  v4 = [v112 count];
  [(OnDeviceACAM *)self multiLog:@"%lu 1Hz data received ", v4];
  v136 = 0;
  v137 = 0;
  v138 = 0;
  std::string::basic_string[abi:ne200100]<0>(v141, "SBC");
  v122[1] = 0;
  *&v123 = 0;
  v122[0] = &v122[1];
  std::pair<std::string const,std::set<unsigned long>>::pair[abi:ne200100]<true,0>(&v150, v141, v122);
  std::string::basic_string[abi:ne200100]<0>(v132, "Daily");
  v130 = 0;
  v131 = 0;
  v129 = &v130;
  std::pair<std::string const,std::set<unsigned long>>::pair[abi:ne200100]<true,0>(v153, v132, &v129);
  std::string::basic_string[abi:ne200100]<0>(__p, "Weekly");
  v126[0] = 0;
  v126[1] = 0;
  v125 = v126;
  std::pair<std::string const,std::set<unsigned long>>::pair[abi:ne200100]<true,0>(v155, __p, &v125);
  std::unordered_map<std::string,std::set<unsigned long>>::unordered_map(v134, &v150, 3);
  for (i = 0; i != -144; i -= 48)
  {
    std::__tree<unsigned long>::destroy(&v155[i / 0x18 + 1], v155[1].__r_.__value_.__r.__words[i / 8 + 1]);
    if (SHIBYTE(v155[0].__r_.__value_.__r.__words[i / 8 + 2]) < 0)
    {
      operator delete(v155[i / 0x18].__r_.__value_.__l.__data_);
    }
  }

  std::__tree<unsigned long>::destroy(&v125, v126[0]);
  if (v128 < 0)
  {
    operator delete(__p[0]);
  }

  std::__tree<unsigned long>::destroy(&v129, v130);
  if (v133 < 0)
  {
    operator delete(v132[0]);
  }

  std::__tree<unsigned long>::destroy(v122, v122[1]);
  if (v142 < 0)
  {
    operator delete(v141[0]);
  }

  v110 = v4;
  v6 = [(OnDeviceACAM *)self model];
  if (v4)
  {
    v116 = 0;
    v118 = 0;
    v7 = 0;
    v8 = v6[4644];
    v109 = 0;
    v9 = -1.0;
    v10 = 1;
    v11 = -1.0;
    do
    {
      v114 = [v112 objectAtIndexedSubscript:v7];
      v12 = ACAMSerialization::Deserialization::setSmartBatteryDataFromDictionary(v122, v114);
      v13 = v12;
      if (v124 > v8)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0;
      }

      v113 = v14;
      if (v14)
      {
        if (!v109)
        {
          v9 = v124;
        }

        if (!__CFADD__(v109++, 1))
        {
          v11 = v124;
        }

        if (v10)
        {
          v150 = 0uLL;
          *&v151 = 0;
          std::vector<std::vector<SmartBatteryData>>::push_back[abi:ne200100](&v136, &v150);
          if (v150)
          {
            *(&v150 + 1) = v150;
            operator delete(v150);
          }
        }

        v16 = v137;
        v17 = *(v137 - 16);
        v18 = *(v137 - 8);
        if (v17 >= v18)
        {
          v22 = *(v137 - 24);
          v23 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - v22) >> 3);
          v24 = v23 + 1;
          if (v23 + 1 > 0x666666666666666)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          v25 = 0xCCCCCCCCCCCCCCCDLL * ((v18 - v22) >> 3);
          if (2 * v25 > v24)
          {
            v24 = 2 * v25;
          }

          if (v25 >= 0x333333333333333)
          {
            v26 = 0x666666666666666;
          }

          else
          {
            v26 = v24;
          }

          if (v26)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<AugmentedBatteryHealthLib::DailyData>>(v137 - 24, v26);
          }

          v27 = 40 * v23;
          v28 = *v122;
          v29 = v123;
          *(v27 + 32) = v124;
          *v27 = v28;
          *(v27 + 16) = v29;
          v21 = 40 * v23 + 40;
          v30 = *(v16 - 24);
          v31 = *(v16 - 16) - v30;
          v32 = 40 * v23 - v31;
          memcpy((v27 - v31), v30, v31);
          v33 = *(v16 - 24);
          *(v16 - 24) = v32;
          *(v16 - 16) = v21;
          *(v16 - 8) = 0;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          v19 = *v122;
          v20 = v123;
          *(v17 + 32) = v124;
          *v17 = v19;
          *(v17 + 16) = v20;
          v21 = v17 + 40;
        }

        *(v16 - 16) = v21;
        v120 = [(OnDeviceACAM *)self lastBDCOutputTimestamp];
        v111 = v112;
        v132[0] = (-1 - 0x5555555555555555 * ((v137 - v136) >> 3));
        std::string::basic_string[abi:ne200100]<0>(&v150, "SBC");
        *(&v151 + 1) = 0x4072C00000000000;
        std::string::basic_string[abi:ne200100]<0>(v152, "Daily");
        *&v153[8] = 0x40F5180000000000;
        std::string::basic_string[abi:ne200100]<0>(&v153[16], "Weekly");
        v154 = 0x4122750000000000;
        std::unordered_map<std::string,double>::unordered_map(v141, &v150, 3);
        for (j = 0; j != -96; j -= 32)
        {
          if (v153[j + 39] < 0)
          {
            operator delete(*&v153[j + 16]);
          }
        }

        v35 = [v111 objectAtIndexedSubscript:v7];
        v36 = [v35 objectForKeyedSubscript:@"Timestamp"];
        [v36 doubleValue];
        v38 = v37;

        v39 = v135;
        if (v135)
        {
          v10 = 0;
          do
          {
            if (*(v39 + 39) < 0)
            {
              std::string::__init_copy_ctor_external(&v150, v39[2], v39[3]);
            }

            else
            {
              v150 = *(v39 + 1);
              *&v151 = v39[4];
            }

            v40 = MEMORY[0x277CCACA8];
            v41 = SBYTE7(v151);
            v42 = v150;
            v43 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
            if (v41 >= 0)
            {
              v44 = &v150;
            }

            else
            {
              v44 = v42;
            }

            v45 = [v40 stringWithCString:v44 encoding:v43];
            if (v39[7])
            {
              v46 = v39 + 6;
              v47 = v39[6];
              if (v47)
              {
                do
                {
                  v48 = v47;
                  v47 = v47[1];
                }

                while (v47);
              }

              else
              {
                do
                {
                  v48 = v46[2];
                  v49 = *v48 == v46;
                  v46 = v48;
                }

                while (v49);
              }

              v50 = *(*(v136 + 24 * v48[4] + 8) - 8);
            }

            else
            {
              v51 = [v120 objectForKeyedSubscript:v45];
              [v51 doubleValue];
              v50 = v52;
            }

            v53 = std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::find<std::string>(v141, &v150);
            if (!v53)
            {
              std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
            }

            if (v38 - v50 > *(v53 + 5))
            {
              std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>((v39 + 5), v132);
              v10 = 1;
            }

            if (SBYTE7(v151) < 0)
            {
              operator delete(v150);
            }

            v39 = *v39;
          }

          while (v39);
        }

        else
        {
          v10 = 0;
        }

        std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::~__hash_table(v141);
      }

      v118 += v13 ^ 1;
      v116 += v13 ^ v113;
      ++v7;
    }

    while (v7 != v110);
  }

  else
  {
    v109 = 0;
    v116 = 0;
    v118 = 0;
    v11 = -1.0;
    v9 = -1.0;
  }

  [(OnDeviceACAM *)self multiLog:@"%lu valid 1Hz data found out of %lu.\n- %lu are invalid records\n- %lu have overlapping timestamp with SBC\n- %lu chunks identified\n", v109, v110, v118, v116, 0xAAAAAAAAAAAAAAABLL * ((v137 - v136) >> 3)];
  [(OnDeviceACAM *)self multiLog:@"Running OnDeviceACAM"];
  v54 = [(OnDeviceACAM *)self runTimeOptions];
  v55 = [v54 objectForKeyedSubscript:@"SaveDebugInfo"];
  v56 = [v55 isEqual:MEMORY[0x277CBEC38]];

  if (v56)
  {
    v57 = [(OnDeviceACAM *)self debugLogBuffer];
    v59 = OnDeviceACAMUtility::createDebugLogItem(@"SMC Key for Running OnDeviceACAM", v108, v58);
    [v57 addObject:v59];
  }

  if (v137 == v136)
  {
    goto LABEL_108;
  }

  v60 = 0;
  do
  {
    std::string::basic_string[abi:ne200100]<0>(v122, "SBC");
    v61 = std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned long>>>>::find<std::string>(v134, v122);
    if (!v61)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    for (k = v61[6]; k; k = *k)
    {
      v63 = k[4];
      if (v60 >= v63)
      {
        if (v63 >= v60)
        {
          v64 = 1;
          goto LABEL_79;
        }

        ++k;
      }
    }

    v64 = 0;
LABEL_79:
    std::string::basic_string[abi:ne200100]<0>(&v150, "SBC");
    BYTE8(v151) = v64;
    std::string::basic_string[abi:ne200100]<0>(v132, "Daily");
    v65 = std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned long>>>>::find<std::string>(v134, v132);
    if (!v65)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v66 = v65[6];
    if (!v66)
    {
LABEL_85:
      v68 = 0;
      goto LABEL_87;
    }

    while (1)
    {
      v67 = v66[4];
      if (v60 >= v67)
      {
        break;
      }

LABEL_84:
      v66 = *v66;
      if (!v66)
      {
        goto LABEL_85;
      }
    }

    if (v67 < v60)
    {
      ++v66;
      goto LABEL_84;
    }

    v68 = 1;
LABEL_87:
    std::string::basic_string[abi:ne200100]<0>(v152, "Daily");
    v153[8] = v68;
    std::string::basic_string[abi:ne200100]<0>(&v129, "Weekly");
    v69 = std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned long>>>>::find<std::string>(v134, &v129);
    if (!v69)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    for (m = v69[6]; m; m = *m)
    {
      v71 = m[4];
      if (v60 >= v71)
      {
        if (v71 >= v60)
        {
          v72 = 1;
          goto LABEL_95;
        }

        ++m;
      }
    }

    v72 = 0;
LABEL_95:
    std::string::basic_string[abi:ne200100]<0>(&v153[16], "Weekly");
    LOBYTE(v154) = v72;
    std::unordered_map<std::string,BOOL>::unordered_map(v141, &v150, 3);
    for (n = 0; n != -96; n -= 32)
    {
      if (v153[n + 39] < 0)
      {
        operator delete(*&v153[n + 16]);
      }
    }

    if (SHIBYTE(v131) < 0)
    {
      operator delete(v129);
    }

    if (v133 < 0)
    {
      operator delete(v132[0]);
    }

    if (SBYTE7(v123) < 0)
    {
      operator delete(v122[0]);
    }

    v122[0] = 0;
    v122[1] = 0;
    *&v123 = 0;
    v74 = [(OnDeviceACAM *)self runTimeOptions];
    v75 = [v74 objectForKeyedSubscript:@"SaveDebugInfo"];
    [v75 isEqual:MEMORY[0x277CBEC38]];

    v76 = [(OnDeviceACAM *)self model];
    v77 = v136 + 24 * v60;
    v78 = *v77;
    v79 = 0xCCCCCCCCCCCCCCCDLL * ((*(v77 + 8) - *v77) >> 3);
    v150 = v139[0];
    v151 = v139[1];
    v152[0] = v140;
    ACAM::runOnce(v76, v78, v79, &v150);
    v80 = v122[0];
    if (v122[0])
    {
      do
      {
        v81 = [MEMORY[0x277CCACA8] stringWithFormat:@"Running result: intermediate state #%lu", 1];
        saveSnapshotIntoDebugBuffer(self, v80, v81);

        v80 = *(v80 + 107);
      }

      while (v80);
    }

    [(OnDeviceACAM *)self addToBdcOutputBuffer:v141];
    simpleList<ACAMPersistentStates>::clear(v122);
    std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::~__hash_table(v141);
    ++v60;
  }

  while (v60 < 0xAAAAAAAAAAAAAAABLL * ((v137 - v136) >> 3));
LABEL_108:
  [(OnDeviceACAM *)self multiLog:@"Finished"];
  v82 = [(OnDeviceACAM *)self model];
  v119 = ACAMSerialization::Serialization::createBDCDailyFromACAM(v82, v83, v11, v84, v85);
  v149[0] = v108;
  v148[0] = @"rawSmcKey";
  v148[1] = @"parsedTeq";
  v86 = [MEMORY[0x277CCABB0] numberWithDouble:*v139];
  v149[1] = v86;
  v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v149 forKeys:v148 count:2];

  v146[0] = @"validDataCount";
  v115 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v109];
  v147[0] = v115;
  v146[1] = @"totalDataCount";
  v117 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v110];
  v147[1] = v117;
  v146[2] = @"numSubChunks";
  v87 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0xAAAAAAAAAAAAAAABLL * ((v137 - v136) >> 3)];
  v147[2] = v87;
  v146[3] = @"amaInterval";
  v88 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v145[0] = v88;
  v89 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  v145[1] = v89;
  v90 = [MEMORY[0x277CBEA60] arrayWithObjects:v145 count:2];
  v147[3] = v90;
  v146[4] = @"numBdcTriggers";
  v143[0] = @"SBC";
  v91 = MEMORY[0x277CCABB0];
  std::string::basic_string[abi:ne200100]<0>(&v150, "SBC");
  v92 = std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned long>>>>::find<std::string>(v134, &v150);
  if (!v92)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v93 = [v91 numberWithUnsignedLong:v92[7]];
  v144[0] = v93;
  v143[1] = @"Daily";
  v94 = MEMORY[0x277CCABB0];
  std::string::basic_string[abi:ne200100]<0>(v141, "Daily");
  v95 = std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned long>>>>::find<std::string>(v134, v141);
  if (!v95)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v96 = [v94 numberWithUnsignedLong:v95[7]];
  v144[1] = v96;
  v143[2] = @"Weekly";
  v97 = MEMORY[0x277CCABB0];
  std::string::basic_string[abi:ne200100]<0>(v122, "Weekly");
  v98 = std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned long>>>>::find<std::string>(v134, v122);
  if (!v98)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v99 = [v97 numberWithUnsignedLong:v98[7]];
  v144[2] = v99;
  v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v144 forKeys:v143 count:3];
  v147[4] = v100;
  v147[5] = v121;
  v146[5] = @"smcKeyInputs";
  v146[6] = @"postRunningSnapshot";
  v147[6] = v119;
  v101 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v147 forKeys:v146 count:7];

  if (SBYTE7(v123) < 0)
  {
    operator delete(v122[0]);
  }

  if (v142 < 0)
  {
    operator delete(v141[0]);
  }

  if (SBYTE7(v151) < 0)
  {
    operator delete(v150);
  }

  [(OnDeviceACAM *)self multiLog:@"Writing currentRunningInfo"];
  v102 = [(OnDeviceACAM *)self runningInfo];
  [v102 addObject:v101];
  while (1)
  {

    v103 = [(OnDeviceACAM *)self runningInfo];
    v104 = [v103 count] > 0xA;

    if (!v104)
    {
      break;
    }

    v102 = [(OnDeviceACAM *)self runningInfo];
    [v102 removeObjectAtIndex:0];
  }

  [(OnDeviceACAM *)self multiLog:@"Finished currentRunningInfo"];

  std::__hash_table<std::__hash_value_type<std::string,std::set<unsigned long>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::set<unsigned long>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::set<unsigned long>>>>::~__hash_table(v134);
  *&v150 = &v136;
  std::vector<std::vector<SmartBatteryData>>::__destroy_vector::operator()[abi:ne200100](&v150);

  v105 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)output
{
  v62[4] = *MEMORY[0x277D85DE8];
  v41 = 0;
  v47 = 0;
  v49 = 0;
  v48 = 0;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  v50 = 2;
  __p = 0u;
  v52 = 0u;
  v53 = 0u;
  ACAMPersistentStates::retrieve(v40, [(OnDeviceACAM *)self model]);
  v3 = [(OnDeviceACAM *)self runTimeOptions];
  v4 = [v3 objectForKeyedSubscript:@"SaveDebugInfo"];
  v5 = [v4 isEqual:MEMORY[0x277CBEC38]];

  if (v5)
  {
    [(OnDeviceACAM *)self multiLog:@"Persistent state is generated"];
  }

  v61[0] = @"savedAlgoState";
  v55[0] = @"kSavedAlgoStateOnDeviceACAMInterface";
  v56 = [(OnDeviceACAM *)self lastBDCOutputTimestamp];
  v55[1] = @"kSavedAlgoStateOnDeviceACAMCoreAlgo";
  v35 = v56;
  v57 = ACAMSerialization::Serialization::createDiskStateFromPersistentState(v40, v6);
  v55[2] = @"kSavedAlgoStateOnDeviceACAMDebugLog";
  v34 = v57;
  v33 = [(OnDeviceACAM *)self debugLogBuffer];
  v58 = deep_copy_object(v33);
  v55[3] = @"kSavedAlgoStateOnDeviceACAMRunningInfo";
  v32 = v58;
  v7 = [(OnDeviceACAM *)self runningInfo];
  v8 = deep_copy_object(v7);
  v59 = v8;
  v55[4] = @"kSavedAlgoStateOnDeviceACAMFreshInitInfo";
  v9 = [(OnDeviceACAM *)self freshInitInfo];
  v10 = deep_copy_object(v9);
  v60 = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:v55 count:5];
  v62[0] = v11;
  v61[1] = @"kBDCOutputData";
  v12 = [(OnDeviceACAM *)self bdcOutputBuffer];
  v13 = deep_copy_object(v12);
  v62[1] = v13;
  v62[2] = MEMORY[0x277CBEC10];
  v61[2] = @"kPowerLogData";
  v61[3] = @"kCoreAnalyticsData";
  v14 = [(OnDeviceACAM *)self model];
  v18 = ACAMSerialization::Serialization::createCoreAnalyticsFromACAM(v14, v15, v16, v17);
  v62[3] = v18;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:4];

  v19 = [(OnDeviceACAM *)self debugLogBuffer];
  [v19 removeAllObjects];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = [(OnDeviceACAM *)self bdcOutputBuffer];
  v21 = [v20 countByEnumeratingWithState:&v36 objects:v54 count:16];
  if (v21)
  {
    v22 = *v37;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v36 + 1) + 8 * i);
        v25 = [(OnDeviceACAM *)self bdcOutputBuffer];
        v26 = [v25 objectForKey:v24];
        [v26 removeAllObjects];
      }

      v21 = [v20 countByEnumeratingWithState:&v36 objects:v54 count:16];
    }

    while (v21);
  }

  v27 = *(&v52 + 1);
  if (*(&v52 + 1))
  {
    do
    {
      v28 = *(v27 + 48);
      MEMORY[0x245CF6740]();
      v27 = v28;
    }

    while (v28);
  }

  *(&v52 + 1) = 0;
  v53 = 0uLL;
  if (SBYTE7(v52) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v47);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v31;
}

- (void)multiLog:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v5 setDateFormat:@"YYYY-MM-dd HH:m:s.SSS"];
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = [v5 stringFromDate:v6];
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v4 arguments:&v30];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] %@", v7, v8];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_241A71000, logger, OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
  }

  v11 = [(OnDeviceACAM *)self runTimeOptions];
  v12 = [v11 objectForKeyedSubscript:@"WriteStdOut"];
  v13 = [v12 isEqual:MEMORY[0x277CBEC38]];

  if (v13)
  {
    BACore::CommonSerialization::getCppStringFromNSString(v9, &buf);
    v14 = (v28 & 0x80u) == 0 ? &buf : buf;
    v15 = (v28 & 0x80u) == 0 ? v28 : *(&buf + 1);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], v14, v15);
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v17 = std::locale::use_facet(&v26, MEMORY[0x277D82680]);
    (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(&v26);
    std::ostream::put();
    std::ostream::flush();
    if (v28 < 0)
    {
      operator delete(buf);
    }
  }

  v18 = [(OnDeviceACAM *)self runTimeOptions];
  v19 = [v18 objectForKeyedSubscript:@"SaveDebugInfo"];
  v20 = [v19 isEqual:MEMORY[0x277CBEC38]];

  if (v20)
  {
    debugLogBuffer = self->_debugLogBuffer;
    v22 = [MEMORY[0x277CBEB68] null];
    v24 = OnDeviceACAMUtility::createDebugLogItem(v9, v22, v23);
    [(NSMutableArray *)debugLogBuffer addObject:v24];
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end