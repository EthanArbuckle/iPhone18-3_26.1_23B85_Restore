@interface ACHRemoteTemplateAvailabilityKeyProvider
- (ACHRemoteTemplateAvailabilityKeyProvider)initWithHealthStore:(id)a3 creatorDevice:(unsigned __int8)a4;
- (BOOL)markTemplateAvailable:(id)a3 error:(id *)a4;
- (BOOL)templateAvailableOnPairedDevice:(id)a3 error:(id *)a4;
- (id)availabilityStateKeyFromUniqueName:(id)a3 creatorDevice:(unsigned __int8)a4;
@end

@implementation ACHRemoteTemplateAvailabilityKeyProvider

- (ACHRemoteTemplateAvailabilityKeyProvider)initWithHealthStore:(id)a3 creatorDevice:(unsigned __int8)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = ACHRemoteTemplateAvailabilityKeyProvider;
  v7 = [(ACHRemoteTemplateAvailabilityKeyProvider *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_creatorDevice = a4;
    v9 = objc_alloc(MEMORY[0x277CCD570]);
    v10 = [v9 initWithCategory:4 domainName:*MEMORY[0x277CE8AD8] healthStore:v6];
    keyValueDomain = v8->_keyValueDomain;
    v8->_keyValueDomain = v10;
  }

  return v8;
}

- (BOOL)markTemplateAvailable:(id)a3 error:(id *)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = [a3 uniqueName];
  v7 = [(ACHRemoteTemplateAvailabilityKeyProvider *)self availabilityStateKeyFromUniqueName:v6 creatorDevice:[(ACHRemoteTemplateAvailabilityKeyProvider *)self creatorDevice]];

  if (v7)
  {
    v8 = [(ACHRemoteTemplateAvailabilityKeyProvider *)self keyValueDomain];
    v9 = [v8 setNumber:MEMORY[0x277CBEC38] forKey:v7 error:a4];
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
      if (a4)
      {
        v14 = v13;
        *a4 = v13;
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

- (BOOL)templateAvailableOnPairedDevice:(id)a3 error:(id *)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = [a3 uniqueName];
  v7 = [(ACHRemoteTemplateAvailabilityKeyProvider *)self availabilityStateKeyFromUniqueName:v6 creatorDevice:[(ACHRemoteTemplateAvailabilityKeyProvider *)self creatorDevice]];

  if (v7)
  {
    v8 = [(ACHRemoteTemplateAvailabilityKeyProvider *)self keyValueDomain];
    v9 = [v8 numberForKey:v7 error:a4];

    if (v9)
    {
      v10 = [v9 BOOLValue];
    }

    else
    {
      v10 = 0;
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

    v10 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)availabilityStateKeyFromUniqueName:(id)a3 creatorDevice:(unsigned __int8)a4
{
  v4 = MEMORY[0x277CE8AE8];
  if (a4 != 1)
  {
    v4 = MEMORY[0x277CE8AE0];
  }

  v5 = [a3 stringByAppendingString:*v4];

  return v5;
}

@end