@interface ABTachogramClassifier
- (ABTachogramClassifier)init;
- (id)classifyTachogram:(id)a3;
- (void)logToFileForTacho:(const void *)a3 withClassification:(id)a4;
@end

@implementation ABTachogramClassifier

- (ABTachogramClassifier)init
{
  v3.receiver = self;
  v3.super_class = ABTachogramClassifier;
  if ([(ABTachogramClassifier *)&v3 init])
  {
    espresso_enable_autoinitialize();
    operator new();
  }

  return 0;
}

- (id)classifyTachogram:(id)a3
{
  v35[6] = *MEMORY[0x277D85DE8];
  v4 = a3;
  memset(v27, 0, sizeof(v27));
  v29 = 0;
  v30 = &v29;
  v31 = 0x6012000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = "";
  memset(v35, 0, 24);
  v18 = 0;
  v19 = &v18;
  v20 = 0x4812000000;
  v21 = __Block_byref_object_copy__317;
  v22 = __Block_byref_object_dispose__318;
  v23 = "";
  v25 = 0;
  v26 = 0;
  __p = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __43__ABTachogramClassifier_classifyTachogram___block_invoke;
  v17[3] = &unk_278C5CB70;
  v17[4] = &v18;
  v17[5] = &v29;
  [v4 _enumerateHeartbeatDataWithBlock:v17];
  if (v19[6] != v19[7])
  {
    std::vector<std::vector<double>>::push_back[abi:ne200100]((v30 + 6), v19 + 6);
    v19[7] = v19[6];
  }

  if (v30[6] == v30[7])
  {
    v14 = ab_get_framework_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [ABTachogramClassifier classifyTachogram:v14];
    }

    v13 = 0;
  }

  else
  {
    v5 = [v4 UUID];
    [v5 getUUIDBytes:v30 + 10];

    v6 = ab_get_framework_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 UUID];
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v7;
      _os_log_impl(&dword_23E83E000, v6, OS_LOG_TYPE_DEFAULT, "Classifying tachogram with UUID : %@", buf, 0xCu);
    }

    [v4 _startTimestamp];
    v9 = v30;
    v30[9] = v8;
    std::vector<Tellurium::tellurium_input_t>::push_back[abi:ne200100](v27, (v9 + 6));
    Tellurium::tellurium_classifier_t::tellurium_classifier_process(self->_classifier.__ptr_, v27);
    Tellurium::tellurium_classifier_t::tellurium_get_outputs(self->_classifier.__ptr_, buf);
    if (*(&buf[0] + 1) - *&buf[0] == 17)
    {
      v10 = objc_opt_new();
      if (v10)
      {
        v11 = [v4 UUID];
        [v10 setUuid:v11];

        v12 = [v4 startDate];
        [v10 setDate:v12];

        [v10 setAFibDetected:*(*&buf[0] + 16)];
        [(ABTachogramClassifier *)self logToFileForTacho:v30 + 6 withClassification:v10];
        v10 = v10;
        v13 = v10;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v10 = ab_get_framework_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [(ABTachogramClassifier *)buf + 1 classifyTachogram:buf, v10];
      }

      v13 = 0;
    }

    if (*&buf[0])
    {
      *(&buf[0] + 1) = *&buf[0];
      operator delete(*&buf[0]);
    }
  }

  _Block_object_dispose(&v18, 8);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v29, 8);
  v18 = v35;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v29 = v27;
  std::vector<Tellurium::tellurium_input_t>::__destroy_vector::operator()[abi:ne200100](&v29);

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __43__ABTachogramClassifier_classifyTachogram___block_invoke(uint64_t a1, int a2, double a3)
{
  if (a2)
  {
    v5 = *(*(a1 + 32) + 8);
    v7 = *(v5 + 48);
    v8 = *(v5 + 56);
    v6 = (v5 + 48);
    if (v8 != v7)
    {
      std::vector<std::vector<double>>::push_back[abi:ne200100](*(*(a1 + 40) + 8) + 48, v6);
      *(*(*(a1 + 32) + 8) + 56) = *(*(*(a1 + 32) + 8) + 48);
    }
  }

  v9 = *(*(a1 + 32) + 8);
  v11 = v9[7];
  v10 = v9[8];
  if (v11 >= v10)
  {
    v13 = v9[6];
    v14 = v11 - v13;
    v15 = (v11 - v13) >> 3;
    v16 = v15 + 1;
    if ((v15 + 1) >> 61)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v17 = v10 - v13;
    if (v17 >> 2 > v16)
    {
      v16 = v17 >> 2;
    }

    v18 = v17 >= 0x7FFFFFFFFFFFFFF8;
    v19 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v18)
    {
      v19 = v16;
    }

    if (v19)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>((v9 + 6), v19);
    }

    v20 = (v11 - v13) >> 3;
    v21 = (8 * v15);
    v22 = (8 * v15 - 8 * v20);
    *v21 = a3;
    v12 = v21 + 1;
    memcpy(v22, v13, v14);
    v23 = v9[6];
    v9[6] = v22;
    v9[7] = v12;
    v9[8] = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    *v11 = a3;
    v12 = v11 + 1;
  }

  v9[7] = v12;
  return 1;
}

- (void)logToFileForTacho:(const void *)a3 withClassification:(id)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v4 = a4;
  out_token = -1;
  notify_register_check("com.apple.AfibBurden.ForceAnalysis.WriteToJson", &out_token);
  state64 = 0;
  notify_get_state(out_token, &state64);
  if (state64)
  {
    v5 = ab_get_framework_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 134217984;
      *(buf[0].__r_.__value_.__r.__words + 4) = state64;
      _os_log_impl(&dword_23E83E000, v5, OS_LOG_TYPE_DEFAULT, "ABTachogramClassifier : logging to file. notifyState is set to %llu", buf, 0xCu);
    }

    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v25 = *MEMORY[0x277CCA1B0];
    v26[0] = *MEMORY[0x277CCA198];
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v21 = 0;
    v8 = [v6 createDirectoryAtPath:@"/var/mobile/Library/Logs/AfBHIDDiagnostics/" withIntermediateDirectories:1 attributes:v7 error:&v21];
    v9 = v21;

    if (v8)
    {
      std::to_string(__p, state64);
      v10 = std::string::insert(__p, 0, "process_tacho_");
      v11 = *&v10->__r_.__value_.__l.__data_;
      buf[0].__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&buf[0].__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = std::string::append(buf, ".json");
      v13 = *&v12->__r_.__value_.__l.__data_;
      v20 = v12->__r_.__value_.__r.__words[2];
      *v19 = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      [@"/var/mobile/Library/Logs/AfBHIDDiagnostics/" UTF8String];
      std::operator+<char>();
      std::ofstream::basic_ofstream(buf, &v18);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(v17, 0, 0, 0, 2);
    }

    v14 = ab_get_framework_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ABTachogramClassifier logToFileForTacho:v9 withClassification:v14];
    }

    notify_cancel(out_token);
  }

  else
  {
    notify_cancel(out_token);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)classifyTachogram:(os_log_t)log .cold.1(void *a1, void *a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = (*a1 - *a2) / 17;
  v5 = 134217984;
  v6 = v3;
  _os_log_fault_impl(&dword_23E83E000, log, OS_LOG_TYPE_FAULT, "Unexpected length of output classifications received from TelluriumForBeryllium computation. Expected : 1, Observed : %lu", &v5, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)logToFileForTacho:(uint64_t)a1 withClassification:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23E83E000, a2, OS_LOG_TYPE_ERROR, "failed to create directory: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end