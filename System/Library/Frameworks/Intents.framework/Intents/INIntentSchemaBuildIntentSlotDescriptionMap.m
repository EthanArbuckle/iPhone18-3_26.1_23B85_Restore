@interface INIntentSchemaBuildIntentSlotDescriptionMap
@end

@implementation INIntentSchemaBuildIntentSlotDescriptionMap

void ___INIntentSchemaBuildIntentSlotDescriptionMap_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v7 = [v5 numberWithUnsignedInteger:a3 + 1];
  [v6 setRank:v7];

  v8 = *(a1 + 32);
  v9 = [v6 name];
  [v8 setObject:v6 forKey:v9];
}

@end