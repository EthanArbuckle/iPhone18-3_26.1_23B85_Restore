@interface APRKUtilities
+ (id)baseDictionaryForResponseToRequestWithDictionary:(id)a3;
+ (id)baseDictionaryForUpstreamMessageWithType:(id)a3;
+ (id)dictionaryForError:(id)a3;
+ (id)secureStopURL;
@end

@implementation APRKUtilities

+ (id)baseDictionaryForResponseToRequestWithDictionary:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
    v5 = [v3 objectForKey:@"type"];
    if (v5)
    {
      [v4 setObject:v5 forKey:@"type"];
    }

    [v4 setObject:@"response" forKey:@"kind"];
    v6 = [v3 objectForKey:@"messageID"];

    if (v6)
    {
      [v4 setObject:v6 forKey:@"messageID"];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)baseDictionaryForUpstreamMessageWithType:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CBEB38];
    v4 = a3;
    v5 = [[v3 alloc] initWithCapacity:2];
    [v5 setObject:v4 forKey:@"type"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)dictionaryForError:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = [v3 domain];

    if (v5)
    {
      v6 = [v3 domain];
      [v4 setObject:v6 forKey:@"domain"];
    }

    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "code")}];
    [v4 setObject:v7 forKey:@"code"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)secureStopURL
{
  if (secureStopURL_onceToken != -1)
  {
    +[APRKUtilities secureStopURL];
  }

  v3 = secureStopURL_url;

  return v3;
}

void __30__APRKUtilities_secureStopURL__block_invoke()
{
  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v0 temporaryDirectory];

  v1 = [v3 URLByAppendingPathComponent:@"FPSSecureStop"];
  v2 = secureStopURL_url;
  secureStopURL_url = v1;
}

@end