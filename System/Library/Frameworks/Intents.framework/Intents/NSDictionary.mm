@interface NSDictionary
@end

@implementation NSDictionary

void __56__NSDictionary_Intents___intents_indexingRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 _intents_indexingRepresentation];
  [v4 setObject:v6 forKey:v5];
}

void __45__NSDictionary_Intents__descriptionAtIndent___block_invoke(void *a1, void *a2, void *a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2;
  v8 = [a3 descriptionAtIndent:v6 + 1];
  [v4 appendFormat:@"%@    %@ = %@;", v5, v7, v8];
}

@end