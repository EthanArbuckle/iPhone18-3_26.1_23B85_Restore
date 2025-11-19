@interface AFSpeakableUtteranceParser
@end

@implementation AFSpeakableUtteranceParser

void __80__AFSpeakableUtteranceParser_AssistantUIAdditions___domainsForStringWithFormat___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  if ([v12 isEqualToString:@"@"])
  {
    v3 = *(a1 + 40);
LABEL_5:
    *(*(v3 + 8) + 24) = 1;
    goto LABEL_6;
  }

  if ([v12 isEqualToString:@"{"])
  {
    v3 = *(a1 + 48);
    goto LABEL_5;
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1 && *(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v4 = [v12 isEqualToString:@"#"];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    if (v4)
    {
      if (v6)
      {
        [*(a1 + 32) addObject:?];
        v7 = *(*(a1 + 56) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = 0;

        *(*(*(a1 + 40) + 8) + 24) = 0;
        *(*(*(a1 + 48) + 8) + 24) = 0;
      }
    }

    else if (v6)
    {
      [*(v5 + 40) appendString:v12];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:v12];
      v10 = *(*(a1 + 56) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }
  }

LABEL_6:
}

@end