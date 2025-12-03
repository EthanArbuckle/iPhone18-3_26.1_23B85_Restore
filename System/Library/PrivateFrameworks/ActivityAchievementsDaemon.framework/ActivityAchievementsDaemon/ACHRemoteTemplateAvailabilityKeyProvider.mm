@interface ACHRemoteTemplateAvailabilityKeyProvider
- (ACHRemoteTemplateAvailabilityKeyProvider)initWithHealthStore:(id)store creatorDevice:(unsigned __int8)device;
- (BOOL)markTemplateAvailable:(id)available error:(id *)error;
- (BOOL)templateAvailableOnPairedDevice:(id)device error:(id *)error;
- (id)availabilityStateKeyFromUniqueName:(id)name creatorDevice:(unsigned __int8)device;
@end

@implementation ACHRemoteTemplateAvailabilityKeyProvider

- (ACHRemoteTemplateAvailabilityKeyProvider)initWithHealthStore:(id)store creatorDevice:(unsigned __int8)device
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = ACHRemoteTemplateAvailabilityKeyProvider;
  v7 = [(ACHRemoteTemplateAvailabilityKeyProvider *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_creatorDevice = device;
    v9 = objc_alloc(MEMORY[0x277CCD570]);
    v10 = [v9 initWithCategory:4 domainName:*MEMORY[0x277CE8AD8] healthStore:storeCopy];
    keyValueDomain = v8->_keyValueDomain;
    v8->_keyValueDomain = v10;
  }

  return v8;
}

- (BOOL)markTemplateAvailable:(id)available error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  uniqueName = [available uniqueName];
  v7 = [(ACHRemoteTemplateAvailabilityKeyProvider *)self availabilityStateKeyFromUniqueName:uniqueName creatorDevice:[(ACHRemoteTemplateAvailabilityKeyProvider *)self creatorDevice]];

  if (v7)
  {
    keyValueDomain = [(ACHRemoteTemplateAvailabilityKeyProvider *)self keyValueDomain];
    v9 = [keyValueDomain setNumber:MEMORY[0x277CBEC38] forKey:v7 error:error];
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"Unable to mark template as available because its unique name is nil.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v12 = [v10 errorWithDomain:@"com.apple.Achievements.availability" code:101 userInfo:v11];

    v13 = v12;
    if (v13)
    {
      if (error)
      {
        v14 = v13;
        *error = v13;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v9 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)templateAvailableOnPairedDevice:(id)device error:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  uniqueName = [device uniqueName];
  v7 = [(ACHRemoteTemplateAvailabilityKeyProvider *)self availabilityStateKeyFromUniqueName:uniqueName creatorDevice:[(ACHRemoteTemplateAvailabilityKeyProvider *)self creatorDevice]];

  if (v7)
  {
    keyValueDomain = [(ACHRemoteTemplateAvailabilityKeyProvider *)self keyValueDomain];
    v9 = [keyValueDomain numberForKey:v7 error:error];

    if (v9)
    {
      bOOLValue = [v9 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    v11 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA450];
    v19[0] = @"Unable to read template availability on paired device because its unique name is nil.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v13 = [v11 errorWithDomain:@"com.apple.Achievements.availability" code:101 userInfo:v12];

    v14 = v13;
    if (v14)
    {
      if (error)
      {
        v15 = v14;
        *error = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    bOOLValue = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (id)availabilityStateKeyFromUniqueName:(id)name creatorDevice:(unsigned __int8)device
{
  v4 = MEMORY[0x277CE8AE8];
  if (device != 1)
  {
    v4 = MEMORY[0x277CE8AE0];
  }

  v5 = [name stringByAppendingString:*v4];

  return v5;
}

@end