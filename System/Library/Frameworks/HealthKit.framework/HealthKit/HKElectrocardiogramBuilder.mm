@interface HKElectrocardiogramBuilder
- (HKElectrocardiogramBuilder)initWithStartDate:(id)date frequency:(id)frequency;
- (id).cxx_construct;
- (id)finishWithDevice:(id)device metadata:(id)metadata;
- (void)addValue:(float)value lead:(int64_t)lead;
@end

@implementation HKElectrocardiogramBuilder

- (HKElectrocardiogramBuilder)initWithStartDate:(id)date frequency:(id)frequency
{
  dateCopy = date;
  frequencyCopy = frequency;
  v12.receiver = self;
  v12.super_class = HKElectrocardiogramBuilder;
  v9 = [(HKElectrocardiogramBuilder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startDate, date);
    objc_storeStrong(&v10->_frequency, frequency);
  }

  return v10;
}

- (void)addValue:(float)value lead:(int64_t)lead
{
  leadCopy = lead;
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
    if (SLODWORD(v6[4].__left_) >= lead)
    {
      v9 = v6;
    }

    v6 = v6[SLODWORD(v6[4].__left_) < lead].__left_;
  }

  while (v6);
  if (v9 == p_end_node || SLODWORD(v9[4].__left_) > lead)
  {
LABEL_8:
    v29 = &leadCopy;
    v10 = std::__tree<std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>,std::__map_value_compare<binarysample::ElectrocardiogramLead_Name,std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>,std::less<binarysample::ElectrocardiogramLead_Name>,true>,std::allocator<std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>>>::__emplace_unique_key_args<binarysample::ElectrocardiogramLead_Name,std::piecewise_construct_t const&,std::tuple<binarysample::ElectrocardiogramLead_Name const&>,std::tuple<>>(&p_end_node[-1], &leadCopy);
    v11 = leadCopy;
    *(v10 + 100) |= 1u;
    *(v10 + 24) = v11;
  }

  v29 = &leadCopy;
  v12 = std::__tree<std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>,std::__map_value_compare<binarysample::ElectrocardiogramLead_Name,std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>,std::less<binarysample::ElectrocardiogramLead_Name>,true>,std::allocator<std::__value_type<binarysample::ElectrocardiogramLead_Name,binarysample::ElectrocardiogramLead>>>::__emplace_unique_key_args<binarysample::ElectrocardiogramLead_Name,std::piecewise_construct_t const&,std::tuple<binarysample::ElectrocardiogramLead_Name const&>,std::tuple<>>(v8, &leadCopy);
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
    *v25 = value;
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
    *v15 = value;
    v16 = v15 + 1;
  }

  v13[10] = v16;
}

- (id)finishWithDevice:(id)device metadata:(id)metadata
{
  deviceCopy = device;
  metadataCopy = metadata;
  binarysample::Electrocardiogram::Electrocardiogram(v15);
  v8 = +[HKUnit hertzUnit];
  frequency = [(HKElectrocardiogramBuilder *)self frequency];
  [frequency doubleValueForUnit:v8];
  v17 |= 1u;
  v16 = v10;

  if (self->_leads.__tree_.__begin_node_ != &self->_leads.__tree_.__end_node_)
  {
    PB::PtrVector<binarysample::ElectrocardiogramLead>::emplace_back<binarysample::ElectrocardiogramLead const>();
  }

  startDate = [(HKElectrocardiogramBuilder *)self startDate];
  v12 = [HKElectrocardiogram _electrocardiogramWithStartDate:startDate device:deviceCopy metadata:metadataCopy];

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