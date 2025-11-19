@interface AMDJSONLoader
- (AMDJSONLoader)initWithPath:(id)a3;
- (id)loadDataFromFileForClass:(Class)a3;
@end

@implementation AMDJSONLoader

- (AMDJSONLoader)initWithPath:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AMDJSONLoader;
  v9 = [(AMDJSONLoader *)&v7 init];
  objc_storeStrong(&v9, v9);
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = 0;
  if (([v6 fileExistsAtPath:location[0] isDirectory:&v5] & 1) != 0 && (v5 & 1) == 0)
  {
    [v9 setPath:location[0]];
    v10 = MEMORY[0x277D82BE0](v9);
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v10;
}

- (id)loadDataFromFileForClass:(Class)a3
{
  v20 = self;
  v19[2] = a2;
  v19[1] = a3;
  v19[0] = 0;
  v11 = MEMORY[0x277CBEA90];
  v13 = [(AMDJSONLoader *)self path];
  v17 = v19[0];
  v12 = [v11 dataWithContentsOfFile:? options:? error:?];
  objc_storeStrong(v19, v17);
  v18 = v12;
  MEMORY[0x277D82BD8](v13);
  if (v19[0])
  {
    v10 = [(AMDJSONLoader *)v20 path];
    v9 = [v19[0] localizedDescription];
    NSLog(&cfstr_ErrorReadingFi.isa, v10, v9);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    v21 = 0;
    v16 = 1;
  }

  else
  {
    v14 = 0;
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v18 options:0 error:&v14];
    objc_storeStrong(v19, v14);
    v15 = v8;
    if (v19[0])
    {
      v7 = [(AMDJSONLoader *)v20 path];
      v6 = [v19[0] localizedDescription];
      NSLog(&cfstr_ErrorParsingDa.isa, v7, v6);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      v21 = 0;
      v16 = 1;
    }

    else if (v15 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v21 = MEMORY[0x277D82BE0](v15);
      v16 = 1;
    }

    else
    {
      v5 = [(AMDJSONLoader *)v20 path];
      NSLog(&cfstr_DataFromFileIs.isa, v5);
      MEMORY[0x277D82BD8](v5);
      v21 = 0;
      v16 = 1;
    }

    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(v19, 0);
  v3 = v21;

  return v3;
}

@end