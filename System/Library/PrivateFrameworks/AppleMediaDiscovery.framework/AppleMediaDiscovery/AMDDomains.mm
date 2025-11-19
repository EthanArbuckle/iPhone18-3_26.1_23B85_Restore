@interface AMDDomains
+ (int64_t)getCodeForDomain:(id)a3;
@end

@implementation AMDDomains

+ (int64_t)getCodeForDomain:(id)a3
{
  v12[8] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    if (!getCodeForDomain__domainMap)
    {
      v11[0] = @"apps";
      v12[0] = &unk_2852BA728;
      v11[1] = @"books";
      v12[1] = &unk_2852BA740;
      v11[2] = @"commerce";
      v12[2] = &unk_2852BA758;
      v11[3] = @"music";
      v12[3] = &unk_2852BA770;
      v11[4] = @"fitness";
      v12[4] = &unk_2852BA788;
      v11[5] = @"podcasts";
      v12[5] = &unk_2852BA7A0;
      v11[6] = @"video";
      v12[6] = &unk_2852BA7B8;
      v11[7] = @"common";
      v12[7] = &unk_2852BA7D0;
      v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:8];
      v4 = getCodeForDomain__domainMap;
      getCodeForDomain__domainMap = v3;
      MEMORY[0x277D82BD8](v4);
    }

    v7 = [getCodeForDomain__domainMap objectForKey:location[0]];
    if (v7)
    {
      v6 = [v7 unsignedIntValue];
    }

    else
    {
      v6 = 0;
    }

    v10 = v6;
    v8 = 1;
    objc_storeStrong(&v7, 0);
  }

  else
  {
    v10 = 0;
    v8 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v10;
}

@end