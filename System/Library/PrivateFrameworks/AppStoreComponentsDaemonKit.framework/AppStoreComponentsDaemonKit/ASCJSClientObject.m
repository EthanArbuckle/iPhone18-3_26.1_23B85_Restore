@interface ASCJSClientObject
- (ASCJSClientObject)initWithAccountStore:(id)a3;
- (BOOL)isActivePairedWatchSystemVersionAtLeastMajorVersion:(id)a3 minorVersion:(id)a4 patchVersion:(id)a5;
- (BOOL)isAutomaticDownloadingEnabled;
- (CGSize)screenSize;
- (NSString)deviceType;
- (NSString)storefrontIdentifier;
- (id)isPairedSystemVersionAtLeast:(id)a3;
- (void)accountStoreDidChange:(id)a3;
- (void)dealloc;
@end

@implementation ASCJSClientObject

- (ASCJSClientObject)initWithAccountStore:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = ASCJSClientObject;
  v6 = [(ASCJSClientObject *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, a3);
    v8 = [v5 ams_activeiTunesAccount];
    activeiTunesAccount = v7->_activeiTunesAccount;
    v7->_activeiTunesAccount = v8;

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v7 selector:sel_accountStoreDidChange_ name:*MEMORY[0x277CB8DB8] object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASCJSClientObject;
  [(ASCJSClientObject *)&v4 dealloc];
}

- (void)accountStoreDidChange:(id)a3
{
  v5 = [(ASCJSClientObject *)self accountStore];
  v4 = [v5 ams_activeiTunesAccount];
  [(ASCJSClientObject *)self setActiveiTunesAccount:v4];
}

- (CGSize)screenSize
{
  +[ASCMobileGestalt mainScreenPointSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (NSString)storefrontIdentifier
{
  v3 = [(ASCJSClientObject *)self activeiTunesAccount];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(ASCJSClientObject *)self accountStore];
    v5 = [v6 ams_localiTunesAccount];
  }

  v7 = [v5 ams_storefront];

  return v7;
}

- (NSString)deviceType
{
  if (+[ASCMobileGestalt isPad])
  {
    v2 = @"pad";
  }

  else
  {
    v2 = @"phone";
  }

  return v2;
}

- (BOOL)isActivePairedWatchSystemVersionAtLeastMajorVersion:(id)a3 minorVersion:(id)a4 patchVersion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[ASCMobileGestalt activePairedSystemVersion];
  if (v10)
  {
    v29 = v10;
    v11 = [v10 componentsSeparatedByString:@"."];
    if ([v11 count])
    {
      v12 = [v11 objectAtIndexedSubscript:0];
      v28 = [v12 integerValue];
    }

    else
    {
      v28 = 0;
    }

    if ([v11 count] < 2)
    {
      v15 = 0;
    }

    else
    {
      v14 = [v11 objectAtIndexedSubscript:1];
      v15 = [v14 integerValue];
    }

    if ([v11 count] < 3)
    {
      v17 = 0;
    }

    else
    {
      v16 = [v11 objectAtIndexedSubscript:2];
      v17 = [v16 integerValue];
    }

    v18 = [v7 toInt32];
    v19 = [v8 toInt32];
    v20 = [v9 toInt32];
    v21 = v9;
    v22 = v7;
    v23 = v20;
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld.%ld.%ld", v28, v15, v17];
    v27 = v23;
    v7 = v22;
    v9 = v21;
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld.%ld.%ld", v18, v19, v27];
    v13 = [v24 compare:v25 options:64] != -1;

    v10 = v29;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)isPairedSystemVersionAtLeast:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CD4640] currentContext];
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%s called with no active JSContext", "-[ASCJSClientObject isPairedSystemVersionAtLeast:]"}];
  }

  if ([v3 isString])
  {
    v5 = +[ASCMobileGestalt activePairedSystemVersion];
    v6 = __50__ASCJSClientObject_isPairedSystemVersionAtLeast___block_invoke(v5, v5);

    if (v6)
    {
      v7 = [v3 toString];
      v8 = __50__ASCJSClientObject_isPairedSystemVersionAtLeast___block_invoke(v7, v7);
      v9 = [v6 compare:v8 options:64] != -1;
    }

    else
    {
      v9 = 0;
    }

    v11 = [MEMORY[0x277CD4658] valueWithBool:v9 inContext:v4];
  }

  else
    v6 = {;
    v10 = [MEMORY[0x277CD4658] valueWithNewErrorFromMessage:v6 inContext:v4];
    [v4 setException:v10];

    v11 = [MEMORY[0x277CD4658] valueWithUndefinedInContext:v4];
  }

  v12 = v11;

  return v12;
}

id __50__ASCJSClientObject_isPairedSystemVersionAtLeast___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (!v2)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v4 = [v2 componentsSeparatedByString:@"."];
  v5 = [v4 count];
  if (v5 >= 4)
  {
    v6 = [v4 subarrayWithRange:{0, 3}];
    v7 = v6;
LABEL_11:
    v8 = [v6 componentsJoinedByString:@"."];

    goto LABEL_12;
  }

  v9 = v5 - 3;
  if (v5 != 3)
  {
    v7 = [v4 mutableCopy];
    do
    {
      [v7 addObject:@"0"];
    }

    while (!__CFADD__(v9++, 1));
    v6 = v7;
    goto LABEL_11;
  }

  v8 = v3;
LABEL_12:

LABEL_13:

  return v8;
}

- (BOOL)isAutomaticDownloadingEnabled
{
  v2 = [(ASCJSClientObject *)self activeiTunesAccount];
  v3 = [v2 accountPropertyForKey:@"automaticDownloadKinds"];

  LOBYTE(v2) = [v3 containsObject:@"software"];
  return v2;
}

@end