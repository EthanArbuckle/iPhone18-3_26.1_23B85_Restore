@interface ADLKTStatistics
- (BOOL)writeToFile:(id)file atomically:(BOOL)atomically;
- (id)dictionaryRepresentation;
@end

@implementation ADLKTStatistics

- (BOOL)writeToFile:(id)file atomically:(BOOL)atomically
{
  atomicallyCopy = atomically;
  v18 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  dictionaryRepresentation = [(ADLKTStatistics *)self dictionaryRepresentation];
  lowercaseString = [fileCopy lowercaseString];
  v9 = [lowercaseString hasSuffix:@".json"];

  if (v9)
  {
    v15 = 0;
    v10 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionaryRepresentation options:1 error:&v15];
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
      v12 = [v10 writeToFile:fileCopy atomically:atomicallyCopy];
    }
  }

  else
  {
    v12 = [dictionaryRepresentation writeToFile:fileCopy atomically:atomicallyCopy];
  }

  return v12;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_meanIntensityDiffAtCoarsestScale];
  [dictionary setValue:v4 forKey:@"meanIntensityDiffAtCoarsestScale"];

  return dictionary;
}

@end