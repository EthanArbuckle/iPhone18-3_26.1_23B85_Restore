@interface ADEspressoInferenceDescriptor
- (ADEspressoInferenceDescriptor)initWithUrl:(id)url layoutNames:(id)names;
- (NSString)configurationName;
- (id)configurationNameForLayout:(unint64_t)layout;
@end

@implementation ADEspressoInferenceDescriptor

- (NSString)configurationName
{
  if ([(NSDictionary *)self->_layoutNames count]== 1)
  {
    allValues = [(NSDictionary *)self->_layoutNames allValues];
    v4 = [allValues objectAtIndexedSubscript:0];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_240463000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Inference descriptor contains several configurations. Please use -[configurationNameForLayout:] instead.", v6, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (id)configurationNameForLayout:(unint64_t)layout
{
  layoutNames = self->_layoutNames;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:layout];
  v5 = [(NSDictionary *)layoutNames objectForKeyedSubscript:v4];

  return v5;
}

- (ADEspressoInferenceDescriptor)initWithUrl:(id)url layoutNames:(id)names
{
  urlCopy = url;
  namesCopy = names;
  v12.receiver = self;
  v12.super_class = ADEspressoInferenceDescriptor;
  v9 = [(ADEspressoInferenceDescriptor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_networkURL, url);
    objc_storeStrong(&v10->_layoutNames, names);
  }

  return v10;
}

@end