@interface ABVCardActivityAlertSerializer
+ (id)serializeDictionary:(id)a3;
+ (id)serializeString:(id)a3;
@end

@implementation ABVCardActivityAlertSerializer

+ (id)serializeDictionary:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AD60] string];
  v6 = [objc_msgSend(a3 "allKeys")];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [a3 objectForKey:v11];
        if (v11)
        {
          v13 = v12;
          if (([v11 isEqualToString:&stru_1F2FE2718] & 1) == 0 && v13 && (objc_msgSend(v13, "isEqualToString:", &stru_1F2FE2718) & 1) == 0)
          {
            if ([v5 length])
            {
              [v5 appendString:{@"\\, "}];
            }

            [v5 appendString:{objc_msgSend(a1, "serializeString:", v11)}];
            [v5 appendString:@"="];
            [v5 appendString:{objc_msgSend(a1, "serializeString:", v13)}];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)serializeString:(id)a3
{
  v4 = off_1E7CCAAD8;
  if (![ABVCardActivityAlertQuotingSerializationStrategy strategyWouldAlterString:?])
  {
    v4 = off_1E7CCAAD0;
    if (![ABVCardActivityAlertEscapingSerializationStrategy strategyWouldAlterString:a3])
    {
      return a3;
    }
  }

  v5 = *v4;

  return [(__objc2_class *)v5 serializeString:a3];
}

@end