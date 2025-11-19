@interface NSAttributedString
@end

@implementation NSAttributedString

void __81__NSAttributedString_BSUIPartialStylingAdditions___bsui_rangesOfTextAttachments___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && a3 != -1 && a4 != -1)
  {
    v7 = *(*(a1[4] + 8) + 40);
    v8 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];
    [v7 addObject:v8];

    v9 = *(*(a1[5] + 8) + 40);
    if (v9)
    {
      v10 = *(*(a1[6] + 8) + 40) + *(*(a1[6] + 8) + 32);
      v11 = [MEMORY[0x1E696B098] valueWithRange:{v10, a3 - v10}];
      [v9 addObject:v11];

      v12 = *(a1[6] + 8);
      *(v12 + 32) = a3;
      *(v12 + 40) = a4;
    }
  }
}

@end