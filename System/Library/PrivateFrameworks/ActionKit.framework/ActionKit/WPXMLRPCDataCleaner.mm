@interface WPXMLRPCDataCleaner
- (WPXMLRPCDataCleaner)initWithData:(id)data;
- (_NSRange)rangeOfLastValidClosingTagInString:(id)string;
- (id)appendClosingTags:(id)tags toResponseString:(id)string;
- (id)cleanCharactersBeforePreamble:(id)preamble;
- (id)cleanClosingTagIfNeeded:(id)needed lengthOfCharactersPrecedingPreamble:(int64_t)preamble;
- (id)cleanData;
- (id)cleanInvalidUTF8:(id)f8;
- (id)cleanInvalidXMLCharacters:(id)characters;
- (id)cleanWithTidyIfPresent:(id)present;
- (id)cloingTagsForString:(id)string;
- (id)repairTruncatedClosingTags:(id)tags inResponseString:(id)string;
@end

@implementation WPXMLRPCDataCleaner

- (id)cleanData
{
  if (self->xmlData)
  {
    v3 = [(WPXMLRPCDataCleaner *)self cleanInvalidUTF8:?];
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];
    if (!v4)
    {
      v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:5];
    }

    v5 = [v4 length];
    v6 = [(WPXMLRPCDataCleaner *)self cleanCharactersBeforePreamble:v4];

    v7 = v5 - [v6 length];
    v8 = [(WPXMLRPCDataCleaner *)self cleanInvalidXMLCharacters:v6];

    v9 = [(WPXMLRPCDataCleaner *)self cleanWithTidyIfPresent:v8];

    v10 = [(WPXMLRPCDataCleaner *)self cleanClosingTagIfNeeded:v9 lengthOfCharactersPrecedingPreamble:v7];

    v11 = [v10 dataUsingEncoding:4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (WPXMLRPCDataCleaner)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = WPXMLRPCDataCleaner;
  v6 = [(WPXMLRPCDataCleaner *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->xmlData, data);
  }

  return v7;
}

- (id)appendClosingTags:(id)tags toResponseString:(id)string
{
  tagsCopy = tags;
  stringCopy = string;
  v7 = [stringCopy rangeOfString:@"<" options:4];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = stringCopy;
  }

  else
  {
    v9 = [stringCopy substringFromIndex:v7];
    v10 = [tagsCopy rangeOfString:v9];
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = 0;
    }

    else
    {
      v12 = v10 + v11;
    }

    v13 = MEMORY[0x277CCACA8];
    v14 = [tagsCopy substringFromIndex:v12];
    v8 = [v13 stringWithFormat:@"%@%@", stringCopy, v14];
  }

  return v8;
}

- (id)repairTruncatedClosingTags:(id)tags inResponseString:(id)string
{
  tagsCopy = tags;
  stringCopy = string;
  v8 = [(WPXMLRPCDataCleaner *)self rangeOfLastValidClosingTagInString:stringCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = stringCopy;
  }

  else
  {
    v11 = v8;
    v12 = [stringCopy substringWithRange:{v8, v9}];
    v13 = [tagsCopy rangeOfString:v12];
    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v14 = v13;
      v15 = [stringCopy substringToIndex:v11];
      v16 = [tagsCopy substringFromIndex:v14];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v15, v16];
    }
  }

  return v10;
}

- (_NSRange)rangeOfLastValidClosingTagInString:(id)string
{
  v3 = rangeOfLastValidClosingTagInString__onceToken;
  stringCopy = string;
  if (v3 != -1)
  {
    dispatch_once(&rangeOfLastValidClosingTagInString__onceToken, &__block_literal_global_17286);
  }

  v5 = [rangeOfLastValidClosingTagInString__regex rangeOfFirstMatchInString:stringCopy options:2 range:{0, objc_msgSend(stringCopy, "length")}];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

void __73__WPXMLRPCDataCleaner_CleaningSteps__rangeOfLastValidClosingTagInString___block_invoke()
{
  v3 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"</[^>]+>[^>]*$" options:1 error:&v3];
  v1 = v3;
  v2 = rangeOfLastValidClosingTagInString__regex;
  rangeOfLastValidClosingTagInString__regex = v0;
}

- (id)cloingTagsForString:(id)string
{
  if ([string rangeOfString:@"<params>"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    return @"</value></fault></methodResponse>";
  }

  else
  {
    return @"</param></params></methodResponse>";
  }
}

- (id)cleanClosingTagIfNeeded:(id)needed lengthOfCharactersPrecedingPreamble:(int64_t)preamble
{
  neededCopy = needed;
  if ([neededCopy rangeOfString:@"methodResponse"] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(neededCopy, "rangeOfString:", @"</methodResponse>") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = neededCopy;
  }

  else
  {
    v7 = [(WPXMLRPCDataCleaner *)self cloingTagsForString:neededCopy];
    if ([v7 length] >= preamble)
    {
      v9 = [(WPXMLRPCDataCleaner *)self repairTruncatedClosingTags:v7 inResponseString:neededCopy];
      if (!v9)
      {
        v9 = [(WPXMLRPCDataCleaner *)self appendClosingTags:v7 toResponseString:neededCopy];
      }

      v8 = v9;
    }

    else
    {
      v8 = neededCopy;
    }
  }

  return v8;
}

- (id)cleanWithTidyIfPresent:(id)present
{
  presentCopy = present;
  v4 = NSClassFromString(&cfstr_Ctidy.isa);
  v5 = NSSelectorFromString(&cfstr_Tidy.isa);
  v6 = NSSelectorFromString(&cfstr_TidystringInpu.isa);
  if (v4)
  {
    v7 = v6;
    if (objc_opt_respondsToSelector())
    {
      v8 = [v4 performSelector:v5];
      if (v8)
      {
        if (objc_opt_respondsToSelector())
        {
          v12 = 0;
          v9 = ([v8 methodForSelector:v7])(v8, v7, presentCopy, 1, 1, @"utf8", &v12);
          if (v9)
          {
            v10 = v9;

            goto LABEL_9;
          }
        }
      }
    }
  }

  v10 = presentCopy;
LABEL_9:

  return v10;
}

- (id)cleanInvalidXMLCharacters:(id)characters
{
  charactersCopy = characters;
  v4 = [charactersCopy length];
  v5 = [MEMORY[0x277CCAB68] stringWithCapacity:v4];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = [charactersCopy characterAtIndex:i];
      v8 = v7 > 0xD || ((1 << v7) & 0x2600) == 0;
      if (!v8 || (v7 - 32) >> 5 < 0x6BF || (v7 - 57344) >> 1 <= 0xFFE)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", v7];
        [v5 appendString:v9];
      }
    }
  }

  return v5;
}

- (id)cleanCharactersBeforePreamble:(id)preamble
{
  preambleCopy = preamble;
  v4 = [preambleCopy rangeOfString:@"<?xml"];
  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [preambleCopy substringFromIndex:v4];

    preambleCopy = v8;
  }

  return preambleCopy;
}

- (id)cleanInvalidUTF8:(id)f8
{
  f8Copy = f8;
  v4 = MEMORY[0x23EF06700]("UTF-8", "UTF-8");
  v15 = 1;
  MEMORY[0x23EF06710](v4, 4, &v15);
  v13 = [f8Copy length];
  v14 = v13;
  bytes = [f8Copy bytes];
  v5 = malloc_type_malloc([f8Copy length], 0x100004077774924uLL);
  v11 = v5;
  if (MEMORY[0x23EF066E0](v4, &bytes, &v14, &v11, &v13) == -1)
  {
    v8 = f8Copy;
  }

  else
  {
    v6 = MEMORY[0x277CBEA90];
    v7 = [f8Copy length];
    v8 = [v6 dataWithBytes:v5 length:v7 - v13];
  }

  v9 = v8;
  MEMORY[0x23EF066F0](v4);
  free(v5);

  return v9;
}

@end