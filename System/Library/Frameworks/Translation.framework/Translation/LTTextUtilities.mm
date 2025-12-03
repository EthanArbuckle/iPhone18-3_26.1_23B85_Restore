@interface LTTextUtilities
+ (id)trimPrependingPunctuation:(id)punctuation locale:(id)locale;
@end

@implementation LTTextUtilities

+ (id)trimPrependingPunctuation:(id)punctuation locale:(id)locale
{
  punctuationCopy = punctuation;
  localeCopy = locale;
  v7 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", .?!:。，"}];;
  v8 = [punctuationCopy mutableCopy];
  v9 = MEMORY[0x277CBEAF8];
  languageCode = [localeCopy languageCode];
  v11 = 4 * ([v9 characterDirectionForLanguage:languageCode] == 2);

  while (![v8 rangeOfCharacterFromSet:v7 options:v11])
  {
    [v8 replaceCharactersInRange:0 withString:{v12, &stru_284DBB9B8}];
  }

  v13 = [MEMORY[0x277CCACA8] stringWithString:v8];

  return v13;
}

@end