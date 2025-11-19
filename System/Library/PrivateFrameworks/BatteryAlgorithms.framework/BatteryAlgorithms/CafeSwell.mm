@interface CafeSwell
+ (id)algorithmWithData:(id)a3;
- (id)init:(id)a3;
- (id)output;
- (id)preRun:(id)a3;
- (int)freshInitWithData:(id)a3;
- (int)runWithData:(id)a3;
- (void)multiLog:(id)a3;
@end

@implementation CafeSwell

+ (id)algorithmWithData:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __31__CafeSwell_algorithmWithData___block_invoke;
  v10[3] = &unk_278D050D8;
  v11 = v4;
  v12 = a1;
  v5 = +[CafeSwell algorithmWithData:]::onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&+[CafeSwell algorithmWithData:]::onceToken, v10);
  }

  v7 = +[CafeSwell algorithmWithData:]::instance;
  v8 = +[CafeSwell algorithmWithData:]::instance;

  return v7;
}

uint64_t __31__CafeSwell_algorithmWithData___block_invoke(uint64_t a1)
{
  +[CafeSwell algorithmWithData:]::instance = [objc_alloc(*(a1 + 40)) init:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

- (int)freshInitWithData:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"smcData"];
  CafeSwellAlgo::Deserialization::setSMCKeyDataFromDictionary(v7, v5);

  CafeSwellAlgo::CoreEngine::freshInit([(CafeSwell *)self model], v7);
  return 0;
}

- (id)init:(id)a3
{
  v3 = MEMORY[0x28223BE20](self, a2, a3);
  v15 = *MEMORY[0x277D85DE8];
  v13 = v4;
  [v13 objectForKey:@"smcData"];
  objc_claimAutoreleasedReturnValue();
  [v13 objectForKey:@"systemState"];
  objc_claimAutoreleasedReturnValue();
  v14.receiver = v3;
  v14.super_class = CafeSwell;
  v5 = [(CafeSwell *)&v14 init];
  name = v5->_name;
  v5->_name = @"CafeSwell";

  algoDescription = v5->_algoDescription;
  v5->_algoDescription = @"Model-based algorithm to provide adaptively insight to charging controller and optimize user-experience";

  v8 = [MEMORY[0x277CCABB0] numberWithInt:86400];
  runPeriod = v5->_runPeriod;
  v5->_runPeriod = v8;

  v5->_dataOnDemand = 1;
  v10 = os_log_create("com.apple.batteryalgorithms.cafeswell", "CafeSwell");
  logger = v5->_logger;
  v5->_logger = v10;

  operator new();
}

- (int)runWithData:(id)a3
{
  *v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  *v98 = 0u;
  *__p = 0u;
  *v96 = 0u;
  v89 = a3;
  v3 = [v89 objectForKeyedSubscript:@"smcData"];
  CafeSwellAlgo::Deserialization::setSMCKeyDataFromDictionary(&v91, v3);

  v4 = v89;
  v5 = [v4 objectForKeyedSubscript:@"BDC_OBC"];
  v6 = [v5 count];

  std::vector<AugmentedBatteryHealthLib::ACAMDailyData>::reserve(__p, v6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = [v4 objectForKeyedSubscript:@"BDC_OBC"];
      v9 = [v8 objectAtIndex:i];

      if (CafeSwellAlgo::Deserialization::setOBCDataFromDictionary(&v101, v9))
      {
        v10 = __p[1];
        if (__p[1] >= v96[0])
        {
          v12 = (__p[1] - __p[0]) >> 4;
          v13 = v12 + 1;
          if ((v12 + 1) >> 60)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          v14 = v96[0] - __p[0];
          if ((v96[0] - __p[0]) >> 3 > v13)
          {
            v13 = v14 >> 3;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF0)
          {
            v15 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<AugmentedBatteryHealthLib::ACAMDailyData>>(__p, v15);
          }

          v16 = (16 * v12);
          *v16 = v101;
          v11 = (16 * v12 + 16);
          v17 = (16 * v12 - (__p[1] - __p[0]));
          memcpy(v16 - (__p[1] - __p[0]), __p[0], __p[1] - __p[0]);
          v18 = __p[0];
          __p[0] = v17;
          __p[1] = v11;
          v96[0] = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *__p[1] = v101;
          v11 = v10 + 16;
        }

        __p[1] = v11;
      }
    }
  }

  [(CafeSwell *)self multiLog:@"%lu valid OBC data received.", (__p[1] - __p[0]) >> 4];
  v19 = v4;
  v20 = [v19 objectForKeyedSubscript:@"BDC_SBC"];
  v21 = [v20 count];

  std::vector<AugmentedBatteryHealthLib::ACAMDailyData>::reserve(&v96[1], v21);
  if (v21)
  {
    for (j = 0; j != v21; ++j)
    {
      v23 = [v19 objectForKeyedSubscript:@"BDC_SBC"];
      v24 = [v23 objectAtIndex:j];

      if (CafeSwellAlgo::Deserialization::setSBCDataFromDictionary(&v101, v24))
      {
        v25 = v97;
        if (v97 >= *(&v97 + 1))
        {
          v27 = (v97 - v96[1]) >> 4;
          v28 = v27 + 1;
          if ((v27 + 1) >> 60)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          v29 = *(&v97 + 1) - v96[1];
          if ((*(&v97 + 1) - v96[1]) >> 3 > v28)
          {
            v28 = v29 >> 3;
          }

          if (v29 >= 0x7FFFFFFFFFFFFFF0)
          {
            v30 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v28;
          }

          if (v30)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<AugmentedBatteryHealthLib::ACAMDailyData>>(&v96[1], v30);
          }

          v31 = (16 * v27);
          *v31 = v101;
          v26 = 16 * v27 + 16;
          v32 = (16 * v27 - (v97 - v96[1]));
          memcpy(v31 - (v97 - v96[1]), v96[1], v97 - v96[1]);
          v33 = v96[1];
          v96[1] = v32;
          v97 = v26;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          *v97 = v101;
          v26 = v25 + 16;
        }

        *&v97 = v26;
      }
    }
  }

  [(CafeSwell *)self multiLog:@"%lu valid SBC data received.", (v97 - v96[1]) >> 4];
  v34 = v19;
  v35 = [v34 objectForKeyedSubscript:@"OnDeviceACAMSBC"];
  v36 = [v35 count];

  std::vector<AugmentedBatteryHealthLib::ACAMDailyData>::reserve(v98, v36);
  if (v36)
  {
    for (k = 0; k != v36; ++k)
    {
      v38 = [v34 objectForKeyedSubscript:@"OnDeviceACAMSBC"];
      v39 = [v38 objectAtIndex:k];

      if (CafeSwellAlgo::Deserialization::setACAMSBCDataFromDictionary(&v101, v39))
      {
        v40 = v98[1];
        if (v98[1] >= v99[0])
        {
          v42 = (v98[1] - v98[0]) >> 4;
          v43 = v42 + 1;
          if ((v42 + 1) >> 60)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          v44 = v99[0] - v98[0];
          if ((v99[0] - v98[0]) >> 3 > v43)
          {
            v43 = v44 >> 3;
          }

          if (v44 >= 0x7FFFFFFFFFFFFFF0)
          {
            v45 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v45 = v43;
          }

          if (v45)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<AugmentedBatteryHealthLib::ACAMDailyData>>(v98, v45);
          }

          v46 = (16 * v42);
          *v46 = v101;
          v41 = (16 * v42 + 16);
          v47 = (16 * v42 - (v98[1] - v98[0]));
          memcpy(v46 - (v98[1] - v98[0]), v98[0], v98[1] - v98[0]);
          v48 = v98[0];
          v98[0] = v47;
          v98[1] = v41;
          v99[0] = 0;
          if (v48)
          {
            operator delete(v48);
          }
        }

        else
        {
          *v98[1] = v101;
          v41 = v40 + 16;
        }

        v98[1] = v41;
      }
    }
  }

  [(CafeSwell *)self multiLog:@"%lu valid ACAMSBC data received.", (v98[1] - v98[0]) >> 4];
  v49 = v34;
  v50 = [v49 objectForKeyedSubscript:@"OnDeviceACAMDaily"];
  v51 = [v50 count];

  std::vector<CafeSwellAlgo::ACAMDailyData>::reserve(&v99[1], v51);
  if (v51)
  {
    for (m = 0; m != v51; ++m)
    {
      v53 = [v49 objectForKeyedSubscript:@"OnDeviceACAMDaily"];
      v54 = [v53 objectAtIndex:m];

      if (CafeSwellAlgo::Deserialization::setACAMDailyDataFromDictionary(&v101, v54))
      {
        v55 = v100;
        if (v100 >= *(&v100 + 1))
        {
          v59 = 0xAAAAAAAAAAAAAAABLL * ((v100 - v99[1]) >> 4);
          v60 = v59 + 1;
          if (v59 + 1 > 0x555555555555555)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((*(&v100 + 1) - v99[1]) >> 4) > v60)
          {
            v60 = 0x5555555555555556 * ((*(&v100 + 1) - v99[1]) >> 4);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((*(&v100 + 1) - v99[1]) >> 4) >= 0x2AAAAAAAAAAAAAALL)
          {
            v61 = 0x555555555555555;
          }

          else
          {
            v61 = v60;
          }

          if (v61)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<CafeSwellAlgo::ACAMDailyData>>(&v99[1], v61);
          }

          v62 = (16 * ((v100 - v99[1]) >> 4));
          v63 = v101;
          v64 = v103;
          v62[1] = v102;
          v62[2] = v64;
          *v62 = v63;
          v58 = 48 * v59 + 48;
          v65 = (48 * v59 - (v100 - v99[1]));
          memcpy(v62 - (v100 - v99[1]), v99[1], v100 - v99[1]);
          v66 = v99[1];
          v99[1] = v65;
          v100 = v58;
          if (v66)
          {
            operator delete(v66);
          }
        }

        else
        {
          v56 = v101;
          v57 = v103;
          *(v100 + 16) = v102;
          *(v55 + 32) = v57;
          *v55 = v56;
          v58 = v55 + 48;
        }

        *&v100 = v58;
      }
    }
  }

  [(CafeSwell *)self multiLog:@"%lu valid ACAMDaily data received.", 0xAAAAAAAAAAAAAAABLL * ((v100 - v99[1]) >> 4)];
  v67 = v99[1];
  if (v99[1] == v100)
  {
LABEL_82:
    v77 = [(CafeSwell *)self model];
    if ((v77[177] & 1) == 0)
    {
      if ((*&v94 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_90;
      }

      v78 = 0;
      if (v94 < 4.2 || v94 > 4.6)
      {
        goto LABEL_105;
      }

      if ((*&v92 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_90;
      }

      v78 = 0;
      if (v92 < 996364800.0 || v92 > 2556144000.0)
      {
        goto LABEL_105;
      }

      if ((*&v91 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_90;
      }

      v78 = 0;
      if (v91 < 0.0 || v91 > 2500.0)
      {
        goto LABEL_105;
      }

      if ((*&v93 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_90:
        v78 = 0;
        goto LABEL_105;
      }

      v78 = 0;
      if (v93 < 996364800.0 || v93 > 2556144000.0)
      {
        goto LABEL_105;
      }
    }

    if (v100 != v99[1] && v98[1] != v98[0] && __p[1] != __p[0] && v97 != v96[1])
    {
      if (v77[176])
      {
LABEL_88:
        v78 = 3;
LABEL_105:
        CafeSwellAlgo::CoreEngine::runOnce([(CafeSwell *)self model], __p, &v91, v78);
        goto LABEL_106;
      }

      v79 = *(v97 - 8);
      if ((*&v79 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v81 = v92 + 172800.0;
        v82 = v92 + -172800.0;
        v78 = 2;
        if (v79 < v92 + -172800.0 || v79 > v81)
        {
          goto LABEL_105;
        }

        if (v79 - *(v96[1] + 1) < 2419200.0)
        {
          goto LABEL_105;
        }

        v84 = *(__p[1] - 1);
        if ((*&v84 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_105;
        }

        if (v84 < v82)
        {
          goto LABEL_105;
        }

        if (v84 > v81)
        {
          goto LABEL_105;
        }

        if (v84 - *(__p[0] + 1) < 2419200.0)
        {
          goto LABEL_105;
        }

        v85 = *(v98[1] - 2);
        if ((*&v85 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_105;
        }

        if (v85 < v82)
        {
          goto LABEL_105;
        }

        if (v85 > v81)
        {
          goto LABEL_105;
        }

        if (v85 - *v98[0] < 2419200.0)
        {
          goto LABEL_105;
        }

        v86 = *(v100 - 48);
        if ((*&v86 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_105;
        }

        v87 = v86 > v81 || v86 - *v99[1] < 2419200.0;
        if (v87 || v86 < v82)
        {
          goto LABEL_105;
        }

        goto LABEL_88;
      }
    }

    v78 = 2;
    goto LABEL_105;
  }

  v68 = 0;
  v69 = 0.0;
  do
  {
    while (1)
    {
      v70 = *(v67 + 10);
      if (v70 >> 28 != 2)
      {
        break;
      }

LABEL_78:
      v76 = *v67;
      v67 += 6;
      v69 = v76;
      v68 = 1;
      if (v67 == v100)
      {
        goto LABEL_81;
      }
    }

    v71 = -1;
    v72 = 24;
    v73 = &dword_241AB14BC;
    while (v71 != 4)
    {
      v74 = *v73++;
      v75 = (v74 & v70) >> v72;
      ++v71;
      v72 -= 4;
      if (v75 == 2)
      {
        if (v71 < 5)
        {
          goto LABEL_78;
        }

        break;
      }
    }

    v67 += 6;
  }

  while (v67 != v100);
  if ((v68 & 1) == 0)
  {
    goto LABEL_82;
  }

LABEL_81:
  CafeSwellAlgo::CoreEngine::freshInit([(CafeSwell *)self model], &v91);
  self->_previousACAMInitializationTime = v69;
LABEL_106:
  if (v99[1])
  {
    *&v100 = v99[1];
    operator delete(v99[1]);
  }

  if (v98[0])
  {
    v98[1] = v98[0];
    operator delete(v98[0]);
  }

  if (v96[1])
  {
    *&v97 = v96[1];
    operator delete(v96[1]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 0;
}

- (id)output
{
  v29[4] = *MEMORY[0x277D85DE8];
  v28[0] = @"savedAlgoState";
  v26[0] = @"kSavedAlgoStateCafeSwellInterface";
  v24 = @"previousACAMInitializationTime";
  v3 = MEMORY[0x277CCABB0];
  [(CafeSwell *)self previousACAMInitializationTime];
  v18 = [v3 numberWithDouble:?];
  v25 = v18;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v26[1] = @"kSavedAlgoStateCafeSwellCoreAlgo";
  v27[0] = v4;
  v5 = [(CafeSwell *)self model];
  v7 = CafeSwellAlgo::Serialization::createDiskStateFromPersistentState((v5 + 184), v6);
  v27[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v29[0] = v8;
  v28[1] = @"kBDCOutputData";
  v22 = @"Daily";
  v19[0] = @"VCafe";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:{*(-[CafeSwell model](self, "model") + 184)}];
  v20[0] = v9;
  v19[1] = @"mCafe";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:{*(-[CafeSwell model](self, "model") + 192)}];
  v20[1] = v10;
  v19[2] = @"longevityPredict";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:{*(-[CafeSwell model](self, "model") + 200)}];
  v20[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v21 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v23 = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v29[1] = v14;
  v29[2] = MEMORY[0x277CBEC10];
  v28[2] = @"kPowerLogData";
  v28[3] = @"kCoreAnalyticsData";
  v29[3] = MEMORY[0x277CBEC10];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)preRun:(id)a3
{
  v21[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"streamCurrentDate"];
  v6 = [MEMORY[0x277CBEB68] null];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    [MEMORY[0x277CBEAA8] now];
  }

  else
  {
    [v4 objectForKeyedSubscript:@"streamCurrentDate"];
  }
  v8 = ;
  v9 = [MEMORY[0x277CBEA80] currentCalendar];
  v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v10 setDay:-30];
  v11 = [v9 dateByAddingComponents:v10 toDate:v8 options:0];
  [v11 timeIntervalSince1970];
  v13 = v12;
  [(CafeSwell *)self previousACAMInitializationTime];
  if (v14 > v13)
  {
    [(CafeSwell *)self previousACAMInitializationTime];
    v13 = v15;
  }

  v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v13];

  v20[0] = @"streamDateStart";
  v20[1] = @"streamDateEnd";
  v21[0] = v16;
  v21[1] = v8;
  v20[2] = @"streamRequest";
  v21[2] = &unk_2853A8270;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)multiLog:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v5 setDateFormat:@"YYYY-MM-dd HH:m:s.SSS"];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v4 arguments:&v12];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&dword_241A71000, logger, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end