@interface AMDPirTest
+ (id)testPir:(id)a3;
@end

@implementation AMDPirTest

+ (id)testPir:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (![location[0] count])
  {
    [v17 setObject:@"Nothing to do" forKey:@"error"];
  }

  v16 = [location[0] objectForKey:TEST_PIR];
  if (!v16)
  {
    goto LABEL_19;
  }

  obj = v18;
  v10 = [AMDJSCipherMLQueryHandler triggerPIRKVFetch:v16 withError:&obj];
  objc_storeStrong(&v18, obj);
  v15 = v10;
  if (v18)
  {
    v23 = @"error";
    v9 = [v18 localizedDescription];
    v24[0] = v9;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    MEMORY[0x277D82BD8](v9);
    v13 = 1;
  }

  else
  {
    [v17 setObject:v15 forKey:TEST_PIR];
    v13 = 0;
  }

  objc_storeStrong(&v15, 0);
  if (!v13)
  {
LABEL_19:
    v3 = [location[0] objectForKey:TEST_PEC];
    v4 = v16;
    v16 = v3;
    MEMORY[0x277D82BD8](v4);
    if (!v16)
    {
      goto LABEL_13;
    }

    v11 = v18;
    v8 = [AMDJSCipherMLQueryHandler triggerPECCall:v16 withError:&v11];
    objc_storeStrong(&v18, v11);
    v12 = v8;
    if (v18)
    {
      v21 = @"error";
      v7 = [v18 localizedDescription];
      v22 = v7;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      MEMORY[0x277D82BD8](v7);
      v13 = 1;
    }

    else
    {
      [v17 setObject:v12 forKey:TEST_PEC];
      v13 = 0;
    }

    objc_storeStrong(&v12, 0);
    if (!v13)
    {
LABEL_13:
      v20 = MEMORY[0x277D82BE0](v17);
      v13 = 1;
    }
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v5 = v20;

  return v5;
}

@end