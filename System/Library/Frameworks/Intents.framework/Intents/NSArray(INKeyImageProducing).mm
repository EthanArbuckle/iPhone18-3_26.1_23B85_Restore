@interface NSArray(INKeyImageProducing)
- (id)_keyImage;
- (uint64_t)_compareSubProducerOne:()INKeyImageProducing subProducerTwo:;
@end

@implementation NSArray(INKeyImageProducing)

- (uint64_t)_compareSubProducerOne:()INKeyImageProducing subProducerTwo:
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(a1, "indexOfObject:", a3)}];
  v9 = MEMORY[0x1E696AD98];
  v10 = [a1 indexOfObject:v7];

  v11 = [v9 numberWithUnsignedInteger:v10];
  v12 = [v8 compare:v11];

  return v12;
}

- (id)_keyImage
{
  v2 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_4339];
  v3 = [a1 filteredArrayUsingPredicate:v2];

  v4 = INKeyImageUtilitiesKeyImageBySubProducerComparison(a1, v3);

  return v4;
}

@end