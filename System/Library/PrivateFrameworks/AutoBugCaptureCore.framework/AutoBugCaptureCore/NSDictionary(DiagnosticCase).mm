@interface NSDictionary(DiagnosticCase)
- (id)logSignatureDescription;
@end

@implementation NSDictionary(DiagnosticCase)

- (id)logSignatureDescription
{
  if (logSignatureDescription_onceToken != -1)
  {
    [NSDictionary(DiagnosticCase) logSignatureDescription];
  }

  v2 = [a1 objectForKeyedSubscript:@"domain"];
  v3 = [a1 objectForKeyedSubscript:@"type"];
  v4 = [a1 objectForKeyedSubscript:@"detected"];
  v5 = logSignatureDescription_isInternal;
  v6 = [a1 objectForKeyedSubscript:@"subtype"];
  v7 = v6;
  if (v5 == 1)
  {
    v8 = [a1 objectForKeyedSubscript:@"additional"];
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"{domain:%@, type:%@, subtype:%@, subtypeContext:%@, process:%@}", v2, v3, v7, v8, v4];
  }

  else
  {
    if (v6)
    {
      v10 = @"…";
    }

    else
    {
      v10 = &stru_285368168;
    }

    v11 = v10;

    v12 = [a1 objectForKeyedSubscript:@"additional"];
    if (v12)
    {
      v13 = @"…";
    }

    else
    {
      v13 = &stru_285368168;
    }

    v8 = v13;

    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"{domain:%@, type:%@, %@%@, process:%@}", v2, v3, v11, v8, v4];
    v7 = v11;
  }

  return v9;
}

@end