@interface ACHBackCompatRemoteAchievementAvailabilityKeyWriter
- (ACHBackCompatRemoteAchievementAvailabilityKeyWriter)initWithHealthStore:(id)a3 creatorDevice:(unsigned __int8)a4;
- (BOOL)markTemplateAvailable:(id)a3 error:(id *)a4;
@end

@implementation ACHBackCompatRemoteAchievementAvailabilityKeyWriter

- (ACHBackCompatRemoteAchievementAvailabilityKeyWriter)initWithHealthStore:(id)a3 creatorDevice:(unsigned __int8)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = ACHBackCompatRemoteAchievementAvailabilityKeyWriter;
  v7 = [(ACHBackCompatRemoteAchievementAvailabilityKeyWriter *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_creatorDevice = a4;
    v9 = [objc_alloc(MEMORY[0x277CCD570]) initWithCategory:4 domainName:@"HDKeyValueEntityDefaultDomain" healthStore:v6];
    keyValueDomain = v8->_keyValueDomain;
    v8->_keyValueDomain = v9;
  }

  return v8;
}

- (BOOL)markTemplateAvailable:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(ACHBackCompatRemoteAchievementAvailabilityKeyWriter *)self creatorDevice]== 1)
  {
    v7 = 1;
  }

  else
  {
    v8 = [v6 uniqueName];
    v9 = [(ACHBackCompatRemoteAchievementAvailabilityKeyWriter *)self companionAvailabilityStateKeyFromUniqueName:v8];

    if (v9)
    {
      v10 = [(ACHBackCompatRemoteAchievementAvailabilityKeyWriter *)self keyValueDomain];
      v7 = [v10 setNumber:MEMORY[0x277CBEC38] forKey:v9 error:a4];
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
        if (a4)
        {
          v15 = v14;
          *a4 = v14;
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