@interface Predictor
- (BOOL)predict:(void *)predict afib:(void *)afib be_mode:(BOOL *)be_mode with_error_status:(BOOL *)with_error_status;
- (Predictor)init;
- (void)resample:(void *)resample output:(void *)output;
@end

@implementation Predictor

- (Predictor)init
{
  v21.receiver = self;
  v21.super_class = Predictor;
  v2 = [(Predictor *)&v21 init];
  if (v2)
  {
    v20 = 0;
    v3 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_285119838 dataType:65600 error:&v20];
    v4 = v20;
    TeModelInput = v2->_TeModelInput;
    v2->_TeModelInput = v3;

    if (v4)
    {
      v6 = 0;
LABEL_13:

      goto LABEL_14;
    }

    v7 = objc_alloc_init(MEMORY[0x277CBFF38]);
    v8 = v7;
    if (v7)
    {
      [v7 setComputeUnits:0];
      v19 = 0;
      v9 = [[Te_c3seuakuh8 alloc] initWithConfiguration:v8 error:&v19];
      v10 = v19;
      mTe_c3seuakuh8 = v2->_mTe_c3seuakuh8;
      v2->_mTe_c3seuakuh8 = v9;

      v18 = v10;
      v12 = [[Te_tjejjxf8q3 alloc] initWithConfiguration:v8 error:&v18];
      v4 = v18;

      mTe_tjejjxf8q3 = v2->_mTe_tjejjxf8q3;
      v2->_mTe_tjejjxf8q3 = v12;

      if (v2->_mTe_c3seuakuh8)
      {
        if (v2->_mTe_tjejjxf8q3)
        {
          v14 = objc_alloc_init(MEMORY[0x277CBFF68]);
          modelOptions = v2->_modelOptions;
          v2->_modelOptions = v14;

          v16 = v2->_modelOptions;
          if (v16)
          {
            [(MLPredictionOptions *)v16 setUsesCPUOnly:1];
            v6 = v2;
LABEL_12:

            goto LABEL_13;
          }
        }
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_12;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

- (BOOL)predict:(void *)predict afib:(void *)afib be_mode:(BOOL *)be_mode with_error_status:(BOOL *)with_error_status
{
  v78[2] = *MEMORY[0x277D85DE8];
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v72 = 0;
  v73 = 0uLL;
  [(Predictor *)self resample:predict output:&v74];
  for (i = 0; i != 240; ++i)
  {
    TeModelInput = self->_TeModelInput;
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:*(v74 + i)];
    [(MLMultiArray *)TeModelInput setObject:v12 atIndexedSubscript:i];
  }

  v13 = [[Te_c3seuakuh8Input alloc] initWithPlaceholder:self->_TeModelInput];
  TeModelInput_c3seuakuh8 = self->_TeModelInput_c3seuakuh8;
  self->_TeModelInput_c3seuakuh8 = v13;

  v15 = [[Te_tjejjxf8q3Input alloc] initWithPlaceholder:self->_TeModelInput];
  TeModelInput_tjejjxf8q3 = self->_TeModelInput_tjejjxf8q3;
  self->_TeModelInput_tjejjxf8q3 = v15;

  mTe_c3seuakuh8 = self->_mTe_c3seuakuh8;
  v18 = self->_TeModelInput_c3seuakuh8;
  modelOptions = self->_modelOptions;
  v71 = 0;
  v20 = [mTe_c3seuakuh8 predictionFromFeatures:v18 options:modelOptions error:&v71];
  v21 = v71;
  TeModelOutput_c3seuakuh8 = self->_TeModelOutput_c3seuakuh8;
  self->_TeModelOutput_c3seuakuh8 = v20;

  mTe_tjejjxf8q3 = self->_mTe_tjejjxf8q3;
  v24 = self->_TeModelInput_tjejjxf8q3;
  v25 = self->_modelOptions;
  v70 = 0;
  v26 = [mTe_tjejjxf8q3 predictionFromFeatures:v24 options:v25 error:&v70];
  v27 = v70;
  TeModelOutput_tjejjxf8q3 = self->_TeModelOutput_tjejjxf8q3;
  self->_TeModelOutput_tjejjxf8q3 = v26;

  if (v21 | v27)
  {
    v29 = 0;
    *with_error_status = 1;
  }

  else
  {
    *with_error_status = 0;
    rHYTHM_TYPE_HEAD_FC_1_fully_connected_BiasAdd = [(Te_c3seuakuh8Output *)self->_TeModelOutput_c3seuakuh8 RHYTHM_TYPE_HEAD_FC_1_fully_connected_BiasAdd];
    v31 = [rHYTHM_TYPE_HEAD_FC_1_fully_connected_BiasAdd objectAtIndexedSubscript:1];
    [v31 doubleValue];
    v33 = exp(v32 * -1.62473583 + 0.976720872);

    rHYTHM_TYPE_HEAD_FC_1_fully_connected_BiasAdd2 = [(Te_tjejjxf8q3Output *)self->_TeModelOutput_tjejjxf8q3 RHYTHM_TYPE_HEAD_FC_1_fully_connected_BiasAdd];
    v35 = [rHYTHM_TYPE_HEAD_FC_1_fully_connected_BiasAdd2 objectAtIndexedSubscript:1];
    [v35 doubleValue];
    v37 = exp(v36 * -1.51426294 + 0.182884028);

    v38 = 1.0 / (v33 + 1.0);
    v39 = 1.0 / (v37 + 1.0);
    v40 = (v38 + v39) * 0.5;
    v41 = v40;
    v43 = *(afib + 1);
    v42 = *(afib + 2);
    if (v43 >= v42)
    {
      v45 = *afib;
      v46 = v43 - *afib;
      v47 = v46 >> 2;
      v48 = (v46 >> 2) + 1;
      if (v48 >> 62)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v49 = v42 - v45;
      if (v49 >> 1 > v48)
      {
        v48 = v49 >> 1;
      }

      v50 = v49 >= 0x7FFFFFFFFFFFFFFCLL;
      v51 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v50)
      {
        v51 = v48;
      }

      if (v51)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(afib, v51);
      }

      *(4 * v47) = v41;
      v44 = 4 * v47 + 4;
      memcpy(0, v45, v46);
      v52 = *afib;
      *afib = 0;
      *(afib + 1) = v44;
      *(afib + 2) = 0;
      if (v52)
      {
        operator delete(v52);
      }
    }

    else
    {
      *v43 = v41;
      v44 = (v43 + 1);
    }

    *(afib + 1) = v44;
    std::to_string(&v68, v38);
    v53 = std::string::insert(&v68, 0, "Tellurium AFib probabilities from two models: ");
    v54 = *&v53->__r_.__value_.__l.__data_;
    v69.__r_.__value_.__r.__words[2] = v53->__r_.__value_.__r.__words[2];
    *&v69.__r_.__value_.__l.__data_ = v54;
    v53->__r_.__value_.__l.__size_ = 0;
    v53->__r_.__value_.__r.__words[2] = 0;
    v53->__r_.__value_.__r.__words[0] = 0;
    v55 = std::string::append(&v69, " ");
    v56 = *&v55->__r_.__value_.__l.__data_;
    v77.__r_.__value_.__r.__words[2] = v55->__r_.__value_.__r.__words[2];
    *&v77.__r_.__value_.__l.__data_ = v56;
    v55->__r_.__value_.__l.__size_ = 0;
    v55->__r_.__value_.__r.__words[2] = 0;
    v55->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, v39);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v59 = std::string::append(&v77, p_p, size);
    v60 = v59->__r_.__value_.__r.__words[0];
    v78[0] = v59->__r_.__value_.__l.__size_;
    *(v78 + 7) = *(&v59->__r_.__value_.__r.__words[1] + 7);
    v61 = SHIBYTE(v59->__r_.__value_.__r.__words[2]);
    v59->__r_.__value_.__l.__size_ = 0;
    v59->__r_.__value_.__r.__words[2] = 0;
    v59->__r_.__value_.__r.__words[0] = 0;
    *(&v73 + 7) = *(v78 + 7);
    v72 = v60;
    *&v73 = v78[0];
    HIBYTE(v73) = v61;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v69.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v68.__r_.__value_.__l.__data_);
    }

    v62 = hws_get_log();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = &v72;
      if (v61 < 0)
      {
        v63 = v60;
      }

      LODWORD(v77.__r_.__value_.__l.__data_) = 136446210;
      *(v77.__r_.__value_.__r.__words + 4) = v63;
      _os_log_impl(&dword_23E83E000, v62, OS_LOG_TYPE_DEFAULT, "%{public}s", &v77, 0xCu);
    }

    v64 = 0.930000007;
    if (*be_mode)
    {
      v64 = 0.150000006;
    }

    v29 = v40 > v64;
    if (SHIBYTE(v73) < 0)
    {
      operator delete(v72);
    }
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  v65 = *MEMORY[0x277D85DE8];
  return v29;
}

- (void)resample:(void *)resample output:(void *)output
{
  __p = 0;
  v19 = 0;
  v20 = 0;
  std::vector<double>::reserve(output, 0xF0uLL);
  v6 = *resample;
  v7 = *(resample + 1);
  if (v7 - *resample != 8)
  {
    v15 = 0;
    do
    {
      v17 = 60.0 / (v6[v15 + 1] - v6[v15]);
      std::vector<double>::push_back[abi:ne200100](&__p, &v17);
      v6 = *resample;
      v16 = *(*resample + 8 * v15++);
      v7 = *(resample + 1);
    }

    while (((v7 - *resample) >> 3) - 1 > v15);
  }

  v8 = v7 - 8;
  *(resample + 1) = v8;
  v9 = 0.0;
  if (*v6 > 0.0)
  {
    do
    {
      v17 = 0.0;
      std::vector<double>::push_back[abi:ne200100](output, &v17);
      v9 = v9 + 0.25;
      v6 = *resample;
    }

    while (v9 < **resample);
    v8 = *(resample + 1);
  }

  if (v8 - v6 != 8)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v17 = *(__p + v10) + (*(__p + v11 + 1) - *(__p + v10)) / (v6[v11 + 1] - v6[v10]) * (v9 - v6[v10]);
      std::vector<double>::push_back[abi:ne200100](output, &v17);
      v9 = v9 + 0.25;
      v6 = *resample;
      if (v9 >= *(*resample + 8 * (v11 + 1)))
      {
        ++v11;
      }

      v10 = v11;
    }

    while (((*(resample + 1) - v6) >> 3) - 1 > v11);
  }

  v13 = *output;
  v12 = *(output + 1);
  if (v12 - *output <= 0x77F)
  {
    do
    {
      v17 = 0.0;
      std::vector<double>::push_back[abi:ne200100](output, &v17);
      v13 = *output;
      v12 = *(output + 1);
    }

    while (v12 - *output < 0x780);
  }

  while (v13 != v12)
  {
    v14 = *v13++;
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }
}

@end