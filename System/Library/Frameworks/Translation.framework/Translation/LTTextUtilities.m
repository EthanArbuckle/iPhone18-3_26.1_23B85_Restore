@interface LTTextUtilities
+ (id)trimPrependingPunctuation:(id)a3 locale:(id)a4;
@end

@implementation LTTextUtilities

+ (id)trimPrependingPunctuation:(id)a3 locale:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", .?!:。，"}];;
  v8 = [v5 mutableCopy];
  v9 = MEMORY[0x277CBEAF8];
  v10 = [v6 languageCode];
  v11 = 4 * ([v9 characterDirectionForLanguage:v10] == 2);

  while (![v8 rangeOfCharacterFromSet:v7 options:v11])
  {
    [v8 replaceCharactersInRange:0 withString:{v12, &stru_284DBB9B8}];
  }

  v13 = [MEMORY[0x277CCACA8] stringWithString:v8];

  return v13;
}

@end