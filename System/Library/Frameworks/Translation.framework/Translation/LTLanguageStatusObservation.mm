@interface LTLanguageStatusObservation
@end

@implementation LTLanguageStatusObservation

id __53___LTLanguageStatusObservation_describeObservations___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  v6 = [v4 numberWithInteger:{objc_msgSend(v5, "status")}];
  v7 = [v3 objectForKeyedSubscript:v6];
  v8 = [v5 locale];
  v9 = [v8 _ltLocaleIdentifier];
  [v5 progress];
  v11 = v10;

  v12 = [v2 stringWithFormat:@"%@:%@:%.2f", v7, v9, v11];

  return v12;
}

@end