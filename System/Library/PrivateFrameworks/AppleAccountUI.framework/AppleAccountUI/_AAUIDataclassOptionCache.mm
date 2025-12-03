@interface _AAUIDataclassOptionCache
+ (BOOL)_hasPrescriptionEnrollment;
- (NSArray)filteredDataclasses;
- (NSDictionary)dataclassDetails;
- (_AAUIDataclassOptionCache)initWithDataclassOptions:(id)options;
- (void)setDataclassOptions:(id)options;
@end

@implementation _AAUIDataclassOptionCache

- (_AAUIDataclassOptionCache)initWithDataclassOptions:(id)options
{
  optionsCopy = options;
  v9.receiver = self;
  v9.super_class = _AAUIDataclassOptionCache;
  v5 = [(_AAUIDataclassOptionCache *)&v9 init];
  if (v5)
  {
    v6 = [optionsCopy copy];
    dataclassOptions = v5->_dataclassOptions;
    v5->_dataclassOptions = v6;
  }

  return v5;
}

- (void)setDataclassOptions:(id)options
{
  v4 = [options copy];
  dataclassOptions = self->_dataclassOptions;
  self->_dataclassOptions = v4;

  filteredDataclasses = self->_filteredDataclasses;
  self->_filteredDataclasses = 0;
}

- (NSArray)filteredDataclasses
{
  filteredDataclasses = self->_filteredDataclasses;
  if (!filteredDataclasses)
  {
    v4 = [(NSDictionary *)self->_dataclassOptions aaf_filter:&__block_literal_global_12];
    allKeys = [v4 allKeys];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48___AAUIDataclassOptionCache_filteredDataclasses__block_invoke_2;
    v9[3] = &unk_1E820CE18;
    v9[4] = self;
    v6 = [allKeys sortedArrayUsingComparator:v9];
    v7 = self->_filteredDataclasses;
    self->_filteredDataclasses = v6;

    filteredDataclasses = self->_filteredDataclasses;
  }

  return filteredDataclasses;
}

- (NSDictionary)dataclassDetails
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (!self->_dataclassDetails)
  {
    v5 = *MEMORY[0x1E6959670];
    v6 = [(NSDictionary *)self->_dataclassOptions objectForKeyedSubscript:*MEMORY[0x1E6959670]];
    if (v6)
    {
      v7 = v6;
      v8 = +[_AAUIDataclassOptionCache _hasPrescriptionEnrollment];

      if (v8)
      {
        v13 = v5;
        v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v10 = [v9 localizedStringForKey:@"SIGN_OUT_HEALTH_ROW_DETAIL_TEXT" value:&stru_1F447F790 table:@"Localizable"];
        v14[0] = v10;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
        dataclassDetails = self->_dataclassDetails;
        self->_dataclassDetails = v11;
      }
    }
  }

  v3 = self->_dataclassDetails;

  return v3;
}

+ (BOOL)_hasPrescriptionEnrollment
{
  if (_hasPrescriptionEnrollment_onceToken != -1)
  {
    +[_AAUIDataclassOptionCache _hasPrescriptionEnrollment];
  }

  return 0;
}

@end