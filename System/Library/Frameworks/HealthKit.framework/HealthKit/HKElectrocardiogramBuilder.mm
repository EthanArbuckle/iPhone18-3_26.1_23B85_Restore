@interface HKElectrocardiogramBuilder
- (HKElectrocardiogramBuilder)initWithStartDate:(id)a3 frequency:(id)a4;
- (id).cxx_construct;
- (id)finishWithDevice:(id)a3 metadata:(id)a4;
- (void)addValue:(float)a3 lead:(int64_t)a4;
@end

@implementation HKElectrocardiogramBuilder

- (HKElectrocardiogramBuilder)initWithStartDate:(id)a3 frequency:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKElectrocardiogramBuilder;
  v9 = [(HKElectrocardiogramBuilder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startDate, a3);
    objc_storeStrong(&v10->_frequency, a4);
  }

  return v10;
}

- (void)addValue:(float)a3 lead:(int64_t)a4
{
  v28 = a4;
  left = self->_leads.__tree_.__end_node_.__left_;
  p_end_node = &self->_leads.__tree_.__end_node_;
  v6 = left;
  v8 = &p_end_node[-1];
  if (!left)
  {
    goto LABEL_8;
  }

  v9 = p_end_node;
  do
  {
    if (SLODWORD(v6[4].__left_) >= a4)
    {
      v9 = v6;
    }

    v6 = v6[SLODWORD(v6[4].__left_) < a4].__left_;
  }

  while (v6);
  if (v9 == p_end_node || SLODWORD(v9[4].__left_) > a4)
  {
LABEL_8:
    v29 = &v28;
    v10 = std::__tree<std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>,std::__map_value_compare<binarysample::ElectrocardiogramLead_Name,std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>,std::less<binarysample::ElectrocardiogramLead_Name>,true>,std::allocator<std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>>>::__emplace_unique_key_args<binarysample::ElectrocardiogramLead_Name,std::piecewise_construct_t const&,std::tuple<binarysample::ElectrocardiogramLead_Name const&>,std::tuple<>>(&p_end_node[-1], &v28);
    v11 = v28;
    *(v10 + 100) |= 1u;
    *(v10 + 24) = v11;
  }

  v29 = &v28;
  v12 = std::__tree<std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>,std::__map_value_compare<binarysample::ElectrocardiogramLead_Name,std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>,std::less<binarysample::ElectrocardiogramLead_Name>,true>,std::allocator<std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>>>::__emplace_unique_key_args<binarysample::ElectrocardiogramLead_Name,std::piecewise_construct_t const&,std::tuple<binarysample::ElectrocardiogramLead_Name const&>,std::tuple<>>(v8, &v28);
  v13 = v12;
  v15 = v12[10];
  v14 = v12[11];
  if (v15 >= v14)
  {
    v17 = v12[9];
    v18 = v15 - v17;
    v19 = (v15 - v17) >> 2;
    v20 = v19 + 1;
    if ((v19 + 1) >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v21 = v14 - v17;
    if (v21 >> 1 > v20)
    {
      v20 = v21 >> 1;
    }

    v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
    v23 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v22)
    {
      v23 = v20;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>((v12 + 9), v23);
    }

    v24 = (v15 - v17) >> 2;
    v25 = (4 * v19);
    v26 = (4 * v19 - 4 * v24);
    *v25 = a3;
    v16 = v25 + 1;
    memcpy(v26, v17, v18);
    v27 = v13[9];
    v13[9] = v26;
    v13[10] = v16;
    v13[11] = 0;
    if (v27)
    {
      operator delete(v27);
    }
  }

  else
  {
    *v15 = a3;
    v16 = v15 + 1;
  }

  v13[10] = v16;
}

- (id)finishWithDevice:(id)a3 metadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  binarysample::Electrocardiogram::Electrocardiogram(v15);
  v8 = +[HKUnit hertzUnit];
  v9 = [(HKElectrocardiogramBuilder *)self frequency];
  [v9 doubleValueForUnit:v8];
  v17 |= 1u;
  v16 = v10;

  if (self->_leads.__tree_.__begin_node_ != &self->_leads.__tree_.__end_node_)
  {
    PB::PtrVector<binarysample::ElectrocardiogramLead>::emplace_back<binarysample::ElectrocardiogramLead const>();
  }

  v11 = [(HKElectrocardiogramBuilder *)self startDate];
  v12 = [HKElectrocardiogram _electrocardiogramWithStartDate:v11 device:v6 metadata:v7];

  binarysample::Electrocardiogram::Electrocardiogram(v14, v15);
  [v12 setReading:v14];
  binarysample::Electrocardiogram::~Electrocardiogram(v14);
  [v12 _setPrivateClassification:self->_classification];
  [v12 _setAverageHeartRate:self->_averageHeartRate];

  binarysample::Electrocardiogram::~Electrocardiogram(v15);

  return v12;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

@end