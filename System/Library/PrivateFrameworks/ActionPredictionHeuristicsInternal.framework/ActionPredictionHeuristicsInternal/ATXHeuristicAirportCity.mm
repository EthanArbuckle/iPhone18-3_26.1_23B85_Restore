@interface ATXHeuristicAirportCity
+ (id)cityForAirport:(id)airport;
+ (id)cityForAirport:(id)airport language:(id)language;
+ (id)supportedLanguages;
@end

@implementation ATXHeuristicAirportCity

+ (id)supportedLanguages
{
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = [CFSTR(""ar de];
  v4 = [v2 initWithArray:v3];

  return v4;
}

+ (id)cityForAirport:(id)airport language:(id)language
{
  airportCopy = airport;
  languageCopy = language;
  if ([airportCopy length] == 3 && objc_msgSend(airportCopy, "canBeConvertedToEncoding:", 1))
  {
    uppercaseString = [airportCopy uppercaseString];

    supportedLanguages = [self supportedLanguages];
    v11 = [supportedLanguages containsObject:languageCopy];

    if (v11)
    {
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:self];
      v13 = [v12 pathForResource:@"airport-names" ofType:@"dat"];

      if (!v13)
      {
        [ATXHeuristicAirportCity cityForAirport:a2 language:self];
      }

      v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v13 options:1 error:0];
      if (!v14)
      {
        goto LABEL_25;
      }

      __little = 0;
      uTF8String = [uppercaseString UTF8String];
      v16 = *(uTF8String + 2);
      v35 = *uTF8String;
      v36 = v16;
      v17 = memmem([v14 bytes], objc_msgSend(v14, "length"), &__little, 4uLL);
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = v17;
      bytes = [v14 bytes];
      v20 = bytes + [v14 length];
      v21 = v18 + 9;
      if ((v18 + 9) < v20)
      {
        v32 = v18[8];
        v33 = *(v18 + 1);
        v22 = languageCopy;
        v23 = v18 + 12;
        if ((v18 + 12) < v20)
        {
          v24 = (v18 + 11);
          do
          {
            if (!*v21)
            {
              break;
            }

            v37 = *v21;
            v25 = *v24;
            if (&v23[v25] >= v20)
            {
              break;
            }

            uTF8String2 = [v22 UTF8String];
            if (v37 == *uTF8String2)
            {
              v30 = v22;
              v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v23 length:v25 encoding:4];

              if (!v22)
              {
                goto LABEL_25;
              }

              v31 = objc_opt_new();
              v28 = v31;
              if (v31)
              {
                objc_storeStrong((v31 + 8), uppercaseString);
                objc_storeStrong((v28 + 16), v22);
                objc_storeStrong((v28 + 24), language);
                *(v28 + 32) = ((v33 | (v32 << 32)) >> 20) * 0.000171661377 + -90.0;
                *(v28 + 40) = (v33 & 0xFFFFF) * 0.000343322754 + -180.0;
              }

              goto LABEL_16;
            }

            v27 = &v21[v25];
            v21 += v25 + 3;
            v24 = v27 + 5;
            v23 = v27 + 6;
          }

          while ((v27 + 6) < v20);
        }

        v28 = 0;
LABEL_16:
      }

      else
      {
LABEL_25:
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
    uppercaseString = airportCopy;
  }

  return v28;
}

+ (id)cityForAirport:(id)airport
{
  v4 = MEMORY[0x277CBEAF8];
  airportCopy = airport;
  autoupdatingCurrentLocale = [v4 autoupdatingCurrentLocale];
  languageCode = [autoupdatingCurrentLocale languageCode];

  v8 = [self cityForAirport:airportCopy language:languageCode];

  return v8;
}

+ (void)cityForAirport:(uint64_t)a1 language:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXHeuristicAirportCity.m" lineNumber:31 description:@"Airport name data not found"];
}

@end