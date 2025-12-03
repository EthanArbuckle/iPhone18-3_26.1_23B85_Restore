@interface DSP_HAL_Mock_Factory
- (DSP_HAL_Mock_Factory)init;
- (double)createProcessor:withHost:;
- (id)createProcessor:(id)processor withHost:(id)host;
- (uint64_t)createProcessor:withHost:;
- (void)dealloc;
@end

@implementation DSP_HAL_Mock_Factory

- (id)createProcessor:(id)processor withHost:(id)host
{
  v9[4] = *MEMORY[0x1E69E9840];
  hostCopy = host;
  v6 = objc_alloc_init(DSP_HAL_Mock_IOProcessor);
  [(DSP_HAL_Mock_IOProcessor *)v6 setHostCallbacks:hostCopy];
  [(DSP_HAL_Mock_IOProcessor *)v6 setFeatureFlag:[(DSP_HAL_Mock_Factory *)self featureFlag]];
  v9[0] = &unk_1F59722A0;
  v9[3] = v9;
  [(DSP_HAL_Mock_IOProcessor *)v6 setTestHookFetcher:v9];
  std::__function::__value_func<DSP_HAL_Mock_TestHooks ()(void)>::~__value_func[abi:ne200100](v9);

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (uint64_t)createProcessor:withHost:
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "Z49-[DSP_HAL_Mock_Factory createProcessor:withHost:]E3$_4"))
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (double)createProcessor:withHost:
{
  v2 = gMockTestHooks;
  if (gMockTestHooks)
  {
    std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::__value_func[abi:ne200100](self, gMockTestHooks);
    std::__function::__value_func<BOOL ()(applesauce::CF::DictionaryRef const&)>::__value_func[abi:ne200100]((self + 2), v2 + 32);
    std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100]((self + 4), v2 + 64);
    std::__function::__value_func<void ()(DSP_HAL_Bypass_Utils::AMCP_IOData_Helper<(DSP_HAL_Bypass_Utils::InterleavePolicy)0> &,applesauce::CF::DictionaryRef const&)>::__value_func[abi:ne200100]((self + 6), v2 + 96);
    std::__function::__value_func<unsigned int ()(AudioObjectPropertyAddress const&,unsigned int)>::__value_func[abi:ne200100]((self + 8), v2 + 128);
  }

  else
  {
    result = 0.0;
    self[8] = 0u;
    self[9] = 0u;
    self[6] = 0u;
    self[7] = 0u;
    self[4] = 0u;
    self[5] = 0u;
    self[2] = 0u;
    self[3] = 0u;
    *self = 0u;
    self[1] = 0u;
  }

  return result;
}

- (void)dealloc
{
  libraryProperties = self->_libraryProperties;
  self->_libraryProperties = 0;

  v4.receiver = self;
  v4.super_class = DSP_HAL_Mock_Factory;
  [(DSP_HAL_Mock_Factory *)&v4 dealloc];
}

- (DSP_HAL_Mock_Factory)init
{
  v7.receiver = self;
  v7.super_class = DSP_HAL_Mock_Factory;
  v2 = [(DSP_HAL_Mock_Factory *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_featureFlag = 97;
    v4 = objc_alloc_init(DSP_HAL_Mock_PropertySet);
    libraryProperties = v3->_libraryProperties;
    v3->_libraryProperties = v4;

    [(DSP_HAL_Mock_PropertySet *)v3->_libraryProperties configureForFeatureFlag:v3->_featureFlag];
  }

  return v3;
}

@end