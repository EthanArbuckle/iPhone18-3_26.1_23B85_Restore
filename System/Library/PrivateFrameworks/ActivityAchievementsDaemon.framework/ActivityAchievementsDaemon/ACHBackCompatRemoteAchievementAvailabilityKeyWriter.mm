@interface ACHBackCompatRemoteAchievementAvailabilityKeyWriter
- (ACHBackCompatRemoteAchievementAvailabilityKeyWriter)initWithHealthStore:(id)store creatorDevice:(unsigned __int8)device;
- (BOOL)markTemplateAvailable:(id)available error:(id *)error;
@end

@implementation ACHBackCompatRemoteAchievementAvailabilityKeyWriter

- (ACHBackCompatRemoteAchievementAvailabilityKeyWriter)initWithHealthStore:(id)store creatorDevice:(unsigned __int8)device
{
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = ACHBackCompatRemoteAchievementAvailabilityKeyWriter;
  v7 = [(ACHBackCompatRemoteAchievementAvailabilityKeyWriter *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_creatorDevice = device;
    v9 = [objc_alloc(MEMORY[0x277CCD570]) initWithCategory:4 domainName:@"HDKeyValueEntityDefaultDomain" healthStore:storeCopy];
    keyValueDomain = v8->_keyValueDomain;
    v8->_keyValueDomain = v9;
  }

  return v8;
}

- (BOOL)markTemplateAvailable:(id)available error:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  availableCopy = available;
  if ([(ACHBackCompatRemoteAchievementAvailabilityKeyWriter *)self creatorDevice]== 1)
  {
    v7 = 1;
  }

  else
  {
    uniqueName = [availableCopy uniqueName];
    v9 = [(ACHBackCompatRemoteAchievementAvailabilityKeyWriter *)self companionAvailabilityStateKeyFromUniqueName:uniqueName];

    if (v9)
    {
      keyValueDomain = [(ACHBackCompatRemoteAchievementAvailabilityKeyWriter *)self keyValueDomain];
      v7 = [keyValueDomain setNumber:MEMORY[0x277CBEC38] forKey:v9 error:error];
    }

    else
    {
      v11 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA450];
      v19[0] = @"Unable to mark template as available because its unique name is nil.";
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v13 = [v11 errorWithDomain:@"com.apple.Achievements.BackCompatRemoteAvailability" code:101 userInfo:v12];

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

      v7 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

@end