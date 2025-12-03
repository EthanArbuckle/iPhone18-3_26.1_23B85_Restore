@interface AMDJSONLoader
- (AMDJSONLoader)initWithPath:(id)path;
- (id)loadDataFromFileForClass:(Class)class;
@end

@implementation AMDJSONLoader

- (AMDJSONLoader)initWithPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, path);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AMDJSONLoader;
  selfCopy = [(AMDJSONLoader *)&v7 init];
  objc_storeStrong(&selfCopy, selfCopy);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = 0;
  if (([defaultManager fileExistsAtPath:location[0] isDirectory:&v5] & 1) != 0 && (v5 & 1) == 0)
  {
    [selfCopy setPath:location[0]];
    v10 = MEMORY[0x277D82BE0](selfCopy);
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(&defaultManager, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (id)loadDataFromFileForClass:(Class)class
{
  selfCopy = self;
  v19[2] = a2;
  v19[1] = class;
  v19[0] = 0;
  v11 = MEMORY[0x277CBEA90];
  path = [(AMDJSONLoader *)self path];
  v17 = v19[0];
  v12 = [v11 dataWithContentsOfFile:? options:? error:?];
  objc_storeStrong(v19, v17);
  v18 = v12;
  MEMORY[0x277D82BD8](path);
  if (v19[0])
  {
    path2 = [(AMDJSONLoader *)selfCopy path];
    localizedDescription = [v19[0] localizedDescription];
    NSLog(&cfstr_ErrorReadingFi.isa, path2, localizedDescription);
    MEMORY[0x277D82BD8](localizedDescription);
    MEMORY[0x277D82BD8](path2);
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
      path3 = [(AMDJSONLoader *)selfCopy path];
      localizedDescription2 = [v19[0] localizedDescription];
      NSLog(&cfstr_ErrorParsingDa.isa, path3, localizedDescription2);
      MEMORY[0x277D82BD8](localizedDescription2);
      MEMORY[0x277D82BD8](path3);
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
      path4 = [(AMDJSONLoader *)selfCopy path];
      NSLog(&cfstr_DataFromFileIs.isa, path4);
      MEMORY[0x277D82BD8](path4);
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