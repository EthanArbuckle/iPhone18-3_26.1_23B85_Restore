@interface ASDTExclavesStatusProperty
+ (id)config;
- (ASDTExclavesStatusProperty)initWithConfig:(id)a3;
- (id)retrievePropertyValue;
- (void)addedToDevice:(id)a3;
@end

@implementation ASDTExclavesStatusProperty

+ (id)config
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"Subclass";
  v5[1] = @"Selector";
  v6[0] = @"ASDTExclavesStatusProperty";
  v6[1] = &unk_285354768;
  v5[2] = @"Scope";
  v5[3] = @"Element";
  v6[2] = &unk_285354780;
  v6[3] = &unk_285354798;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (ASDTExclavesStatusProperty)initWithConfig:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ASDTExclavesStatusProperty;
  v5 = [(ASDTCustomProperty *)&v8 initWithConfig:v4 propertyDataType:1886155636 qualifierDataType:0];
  v6 = v5;
  if (v5)
  {
    [(ASDTCustomProperty *)v5 setCacheMode:0];
    [(ASDCustomProperty *)v6 setSettable:0];
  }

  return v6;
}

- (void)addedToDevice:(id)a3
{
  location[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_285364AE8])
  {
    [(ASDTExclavesStatusProperty *)self setStatusTrackerHost:v4];
    v5 = [(ASDTExclavesStatusProperty *)self statusTrackerHost];
    v6 = [v5 exclavesStatusTracker];

    if (v6)
    {
      objc_initWeak(location, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __44__ASDTExclavesStatusProperty_addedToDevice___block_invoke;
      aBlock[3] = &unk_278CE6068;
      objc_copyWeak(&v11, location);
      ASDT::Exclaves::StatusTracker::SetSignalBlock(v6, aBlock);
      objc_destroyWeak(&v11);
      objc_destroyWeak(location);
    }

    else if (asdt_exclaves_available())
    {
      v7 = ASDTBaseLogType();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [v4 exclavesSensorName];
        [(ASDTExclavesStatusProperty *)v8 addedToDevice:v7];
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __44__ASDTExclavesStatusProperty_addedToDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sensorStatusChanged];
}

- (id)retrievePropertyValue
{
  v18[5] = *MEMORY[0x277D85DE8];
  v2 = [(ASDTExclavesStatusProperty *)self statusTrackerHost];
  v3 = [v2 exclavesStatusTracker];

  if (v3)
  {
    ASDT::Exclaves::StatusTracker::Pop(v3, 0, &__p);
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:0xCCCCCCCCCCCCCCCDLL * ((v16 - __p) >> 3)];
    v5 = __p;
    v6 = v16;
    if (__p != v16)
    {
      do
      {
        v17[0] = @"machAbsoluteTime";
        v7 = [MEMORY[0x277CCABB0] numberWithLongLong:v5[2]];
        v18[0] = v7;
        v17[1] = @"timeNanoseconds";
        v8 = [MEMORY[0x277CCABB0] numberWithLongLong:v5[1]];
        v18[1] = v8;
        v17[2] = @"sampleTime";
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v5];
        v18[2] = v9;
        v17[3] = @"statusRawValue";
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v5 + 8)];
        v18[3] = v10;
        v17[4] = @"operation";
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v5 + 9)];
        v18[4] = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
        [v4 addObject:v12];

        v5 += 5;
      }

      while (v5 != v6);
    }

    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)addedToDevice:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "ASDTExclavesStatusProperty(%@): Failed to create sensor manager.", buf, 0xCu);
}

@end