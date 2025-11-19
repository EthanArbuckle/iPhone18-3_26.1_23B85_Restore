@interface ADLKTStatistics
- (BOOL)writeToFile:(id)a3 atomically:(BOOL)a4;
- (id)dictionaryRepresentation;
@end

@implementation ADLKTStatistics

- (BOOL)writeToFile:(id)a3 atomically:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ADLKTStatistics *)self dictionaryRepresentation];
  v8 = [v6 lowercaseString];
  v9 = [v8 hasSuffix:@".json"];

  if (v9)
  {
    v15 = 0;
    v10 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v7 options:1 error:&v15];
    v11 = v15;
    if (v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v14 = [v11 description];
        *buf = 138412290;
        v17 = v14;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to serialize ADLKT statistics to json with error:%@", buf, 0xCu);
      }

      v12 = 0;
    }

    else
    {
      v12 = [v10 writeToFile:v6 atomically:v4];
    }
  }

  else
  {
    v12 = [v7 writeToFile:v6 atomically:v4];
  }

  return v12;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_meanIntensityDiffAtCoarsestScale];
  [v3 setValue:v4 forKey:@"meanIntensityDiffAtCoarsestScale"];

  return v3;
}

@end