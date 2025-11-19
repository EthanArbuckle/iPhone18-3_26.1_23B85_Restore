@interface ABAfibBurdenAnalyzer
+ (void)removeDiagnosticLogFiles;
- (ABAfibBurdenAnalyzer)init;
- (id).cxx_construct;
- (id)determineBurdenForTachogramClassificationBuckets:(id)a3;
- (id)processResults:(void *)a3 withAlgsAnalytics:(core_analytics_t *)a4;
- (void)logToFileForTachoList:(id)a3 withBurdenResults:(id)a4;
@end

@implementation ABAfibBurdenAnalyzer

- (ABAfibBurdenAnalyzer)init
{
  v7.receiver = self;
  v7.super_class = ABAfibBurdenAnalyzer;
  v2 = [(ABAfibBurdenAnalyzer *)&v7 init];
  if (v2)
  {
    out_token = -1;
    v5 = 0;
    notify_register_check("com.apple.AfibBurden.ForceAnalysis.WriteToJson", &out_token);
    notify_get_state(out_token, &v5);
    if (!v5)
    {
      +[ABAfibBurdenAnalyzer removeDiagnosticLogFiles];
    }

    v3 = v2;
  }

  return v2;
}

- (id)processResults:(void *)a3 withAlgsAnalytics:(core_analytics_t *)a4
{
  v49 = *MEMORY[0x277D85DE8];
  LOBYTE(v35) = 0;
  v36 = 0;
  LOBYTE(v33) = 0;
  v34 = 0;
  *buf = &v35;
  v48 = &v33;
  v4 = *(a3 + 1);
  if (v4 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v37 = buf;
  (off_285118900[v4])(&v37, a3);
  v7 = objc_opt_new();
  v8 = v7;
  if (!v7)
  {
    goto LABEL_14;
  }

  if (!v36)
  {
    if (v34)
    {
      [v7 setBurdenPercentage:0];
      if ((v34 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v12 = v33;
      goto LABEL_18;
    }

    v15 = ab_get_framework_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [ABAfibBurdenAnalyzer processResults:v15 withAlgsAnalytics:?];
    }

LABEL_14:
    v16 = 0;
    goto LABEL_36;
  }

  v9 = v35;
  v10 = v35 / 100.0;
  if (v10 >= 0.0199999996)
  {
    if (modff(v35, buf) <= 0.5)
    {
      *&v13 = floorf(v9) / 100.0;
    }

    else
    {
      *&v13 = ceilf(v9) / 100.0;
    }

    v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
    [v8 setBurdenPercentage:v14];
  }

  else
  {
    LODWORD(v10) = 1017370378;
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
    [v8 setBurdenPercentage:v11];
  }

  v12 = 0;
LABEL_18:
  [v8 setUnavailabilityReason:v12];
  self->_rawBurdenValue.var0.__val_.Afib_burden = v35;
  self->_rawBurdenValue.__engaged_ = v36;
  v38[0] = @"reasonNoReport";
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "unavailabilityReason")}];
  v38[1] = @"segmentsCount";
  v30 = v39;
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[ABAfibBurdenAnalyzer segmentsCount](self, "segmentsCount")}];
  v38[2] = @"segmentsWith5TachCount";
  v29 = v40;
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[ABAfibBurdenAnalyzer segmentsWith5TachCount](self, "segmentsWith5TachCount")}];
  v38[3] = @"AFBurden";
  v28 = v41;
  if (v36)
  {
    *&v17 = v35;
    [MEMORY[0x277CCABB0] numberWithFloat:v17];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v32 = ;
  v42 = v32;
  v38[4] = @"AFDensity";
  if ((LODWORD(a4->var1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    [MEMORY[0x277CBEB68] null];
  }

  else
  {
    *&v18 = a4->var1;
    [MEMORY[0x277CCABB0] numberWithFloat:v18];
  }
  v31 = ;
  v43 = v31;
  v38[5] = @"timeBetweenTachs";
  if ((LODWORD(a4->var0) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    [MEMORY[0x277CBEB68] null];
  }

  else
  {
    *&v19 = a4->var0;
    [MEMORY[0x277CCABB0] numberWithFloat:v19];
  }
  v20 = ;
  v44 = v20;
  v38[6] = @"countTimezoneShifts";
  if ((*&a4->var2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x277CBEB68] null];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithDouble:a4->var2];
  }
  v21 = ;
  v45 = v21;
  v38[7] = @"highestTimezoneShift";
  if ((*&a4->var3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    [MEMORY[0x277CBEB68] null];
  }

  else
  {
    [MEMORY[0x277CCABB0] numberWithDouble:a4->var3 / 3600.0];
  }
  v22 = ;
  v46 = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:v38 count:8];
  [v8 setMetricsForCoreAnalytics:v23];

  v24 = ab_get_framework_log();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = [v8 metricsForCoreAnalytics];
    [(ABAfibBurdenAnalyzer *)v25 processResults:buf withAlgsAnalytics:v24];
  }

  v16 = v8;
LABEL_36:

  v26 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)determineBurdenForTachogramClassificationBuckets:(id)a3
{
  v76[8] = *MEMORY[0x277D85DE8];
  v44 = a3;
  if ([v44 count])
  {
    v73 = 0u;
    v74 = 0u;
    *v72 = 0u;
    -[ABAfibBurdenAnalyzer setSegmentsCount:](self, "setSegmentsCount:", [v44 count]);
    [(ABAfibBurdenAnalyzer *)self setSegmentsWith5TachCount:0];
    v3 = ab_get_framework_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E83E000, v3, OS_LOG_TYPE_DEFAULT, "bucketIndex, timestamp, UUID :", buf, 2u);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v44;
    v4 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
    if (v4)
    {
      v50 = 0;
      v47 = *v62;
      while (2)
      {
        v51 = 0;
        v46 = v4;
        do
        {
          if (*v62 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v61 + 1) + 8 * v51);
          if (![v5 count])
          {
            v41 = ab_get_framework_log();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              [ABAfibBurdenAnalyzer determineBurdenForTachogramClassificationBuckets:v41];
            }

            v32 = 0;
            goto LABEL_56;
          }

          if ([v5 count] >= 5)
          {
            [(ABAfibBurdenAnalyzer *)self setSegmentsWith5TachCount:([(ABAfibBurdenAnalyzer *)self segmentsWith5TachCount]+ 1)];
          }

          v49 = [v5 sortedArrayUsingComparator:&__block_literal_global_0];
          if (([v49 isEqualToArray:v5] & 1) == 0)
          {
            v6 = ab_get_framework_log();
            if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
            {
              [(ABAfibBurdenAnalyzer *)&v59 determineBurdenForTachogramClassificationBuckets:v60, v6];
            }
          }

          *__p = 0u;
          v58 = 0u;
          v55 = 0u;
          *buf = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v7 = v49;
          v8 = [v7 countByEnumeratingWithState:&v52 objects:v70 count:16];
          if (v8)
          {
            v9 = *v53;
            do
            {
              for (i = 0; i != v8; ++i)
              {
                if (*v53 != v9)
                {
                  objc_enumerationMutation(v7);
                }

                v11 = *(*(&v52 + 1) + 8 * i);
                v12 = ab_get_framework_log();
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                {
                  v13 = [v11 date];
                  [v13 timeIntervalSince1970];
                  v15 = v14;
                  v16 = [v11 uuid];
                  *v65 = 67109634;
                  *&v65[4] = v50;
                  v66 = 2048;
                  v67 = v15;
                  v68 = 2112;
                  v69 = v16;
                  _os_log_impl(&dword_23E83E000, v12, OS_LOG_TYPE_DEFAULT, "%d, %f, %@", v65, 0x1Cu);
                }

                v65[0] = [v11 aFibDetected];
                std::vector<BOOL>::push_back(&__p[1], v65);
                v17 = [v11 date];
                [v17 timeIntervalSince1970];
                v19 = *&buf[8];
                if (*&buf[8] >= __p[0])
                {
                  v21 = *buf;
                  v22 = *&buf[8] - *buf;
                  v23 = (*&buf[8] - *buf) >> 3;
                  v24 = v23 + 1;
                  if ((v23 + 1) >> 61)
                  {
                    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
                  }

                  v25 = __p[0] - *buf;
                  if ((__p[0] - *buf) >> 2 > v24)
                  {
                    v24 = v25 >> 2;
                  }

                  v26 = v25 >= 0x7FFFFFFFFFFFFFF8;
                  v27 = 0x1FFFFFFFFFFFFFFFLL;
                  if (!v26)
                  {
                    v27 = v24;
                  }

                  if (v27)
                  {
                    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(buf, v27);
                  }

                  *(8 * v23) = v18;
                  v20 = 8 * v23 + 8;
                  memcpy(0, v21, v22);
                  v28 = *buf;
                  *buf = 0;
                  *&buf[8] = v20;
                  __p[0] = 0;
                  if (v28)
                  {
                    operator delete(v28);
                  }
                }

                else
                {
                  **&buf[8] = v18;
                  v20 = v19 + 8;
                }

                *&buf[8] = v20;
              }

              v8 = [v7 countByEnumeratingWithState:&v52 objects:v70 count:16];
            }

            while (v8);
          }

          v29 = v74;
          if (v74 >= *(&v74 + 1))
          {
            v30 = std::vector<std::vector<BOOL>>::__emplace_back_slow_path<std::vector<BOOL> const&>(&v73 + 8, &__p[1]);
          }

          else
          {
            std::vector<BOOL>::vector(v74, &__p[1]);
            v30 = v29 + 24;
          }

          *&v74 = v30;
          std::vector<std::vector<double>>::push_back[abi:ne200100](v72, buf);
          if (__p[1])
          {
            operator delete(__p[1]);
          }

          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }

          ++v50;
          ++v51;
        }

        while (v51 != v46);
        v4 = [obj countByEnumeratingWithState:&v61 objects:v71 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    memset(buf, 0, sizeof(buf));
    __p[0] = 0;
    *v65 = beryllium::process(v72, buf, v31);
    v32 = [(ABAfibBurdenAnalyzer *)self processResults:v65 withAlgsAnalytics:buf];
    [(ABAfibBurdenAnalyzer *)self logToFileForTachoList:obj withBurdenResults:v32];
LABEL_56:
    *buf = &v73 + 8;
    std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100](buf);
    *buf = v72;
    std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  else
  {
    v33 = ab_get_framework_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *v72 = 0;
      _os_log_impl(&dword_23E83E000, v33, OS_LOG_TYPE_DEFAULT, "Empty list of classification buckets received", v72, 2u);
    }

    v32 = objc_opt_new();
    [v32 setBurdenPercentage:0];
    [v32 setUnavailabilityReason:1];
    if (self->_rawBurdenValue.__engaged_)
    {
      self->_rawBurdenValue.__engaged_ = 0;
    }

    [(ABAfibBurdenAnalyzer *)self logToFileForTachoList:v44 withBurdenResults:v32];
    v75[0] = @"reasonNoReport";
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v32, "unavailabilityReason")}];
    v76[0] = v34;
    v75[1] = @"segmentsCount";
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[ABAfibBurdenAnalyzer segmentsCount](self, "segmentsCount")}];
    v76[1] = v35;
    v75[2] = @"segmentsWith5TachCount";
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[ABAfibBurdenAnalyzer segmentsWith5TachCount](self, "segmentsWith5TachCount")}];
    v76[2] = v36;
    v75[3] = @"AFBurden";
    v37 = [MEMORY[0x277CBEB68] null];
    v76[3] = v37;
    v76[4] = &unk_285119790;
    v75[4] = @"AFDensity";
    v75[5] = @"timeBetweenTachs";
    v76[5] = &unk_285119790;
    v76[6] = &unk_285119790;
    v75[6] = @"countTimezoneShifts";
    v75[7] = @"highestTimezoneShift";
    v76[7] = &unk_285119790;
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:8];
    [v32 setMetricsForCoreAnalytics:v38];

    v39 = ab_get_framework_log();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      v40 = [v32 metricsForCoreAnalytics];
      [(ABAfibBurdenAnalyzer *)v40 processResults:v72 withAlgsAnalytics:v39];
    }
  }

  v42 = *MEMORY[0x277D85DE8];

  return v32;
}

uint64_t __73__ABAfibBurdenAnalyzer_determineBurdenForTachogramClassificationBuckets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 date];
  v6 = [v4 date];
  v7 = [v5 compare:v6];

  return v7;
}

- (void)logToFileForTachoList:(id)a3 withBurdenResults:(id)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  out_token = -1;
  state64 = 0;
  notify_register_check("com.apple.AfibBurden.ForceAnalysis.WriteToJson", &out_token);
  notify_get_state(out_token, &state64);
  if (state64)
  {
    v5 = ab_get_framework_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 134217984;
      *(buf[0].__r_.__value_.__r.__words + 4) = state64;
      _os_log_impl(&dword_23E83E000, v5, OS_LOG_TYPE_DEFAULT, "ABAfibBurdenAnalyzer : logging to file. notifyState is set to %llu", buf, 0xCu);
    }

    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v28 = *MEMORY[0x277CCA1B0];
    v29[0] = *MEMORY[0x277CCA198];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v24 = 0;
    v8 = [v6 createDirectoryAtPath:@"/var/mobile/Library/Logs/AfBHIDDiagnostics/" withIntermediateDirectories:1 attributes:v7 error:&v24];
    v16 = v24;

    if (v8)
    {
      std::to_string(&v19, state64);
      v9 = std::string::insert(&v19, 0, "process_burden_");
      v10 = *&v9->__r_.__value_.__l.__data_;
      buf[0].__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&buf[0].__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      v11 = std::string::append(buf, ".json");
      v12 = *&v11->__r_.__value_.__l.__data_;
      v23 = v11->__r_.__value_.__r.__words[2];
      v22 = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      [@"/var/mobile/Library/Logs/AfBHIDDiagnostics/" UTF8String];
      std::operator+<char>();
      std::ofstream::basic_ofstream(buf, &__p);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v20, 0, 0, 0, 1);
    }

    v13 = ab_get_framework_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ABTachogramClassifier logToFileForTacho:v16 withClassification:v13];
    }

    notify_cancel(out_token);
  }

  else
  {
    notify_cancel(out_token);
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)removeDiagnosticLogFiles
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = @"/var/mobile/Library/Logs/AfBHIDDiagnostics/";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_23E83E000, a2, OS_LOG_TYPE_ERROR, "Failed to retrieve files at path : %@ with error : %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 12) = 0;
  return self;
}

- (void)processResults:(os_log_t)log withAlgsAnalytics:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_23E83E000, log, OS_LOG_TYPE_DEBUG, "CA Metrics : %@", buf, 0xCu);
}

- (void)determineBurdenForTachogramClassificationBuckets:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_fault_impl(&dword_23E83E000, log, OS_LOG_TYPE_FAULT, "input tachogram classification bucket is not in ascending order", buf, 2u);
}

@end