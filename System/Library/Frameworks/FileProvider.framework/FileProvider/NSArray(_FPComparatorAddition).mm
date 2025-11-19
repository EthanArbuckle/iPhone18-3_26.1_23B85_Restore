@interface NSArray(_FPComparatorAddition)
- (id)fp_comparator;
- (uint64_t)fp_compareItem:()_FPComparatorAddition toItem:;
@end

@implementation NSArray(_FPComparatorAddition)

- (id)fp_comparator
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__NSArray__FPComparatorAddition__fp_comparator__block_invoke;
  aBlock[3] = &unk_1E793CC10;
  aBlock[4] = a1;
  v1 = _Block_copy(aBlock);

  return v1;
}

- (uint64_t)fp_compareItem:()_FPComparatorAddition toItem:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 fp_comparator];
  v9 = (v8)[2](v8, v7, v6);

  return v9;
}

@end