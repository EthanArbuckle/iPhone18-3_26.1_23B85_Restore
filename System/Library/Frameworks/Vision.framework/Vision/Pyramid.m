@interface Pyramid
@end

@implementation Pyramid

unsigned __int8 *__Pyramid_loadImage_block_invoke(unsigned __int8 *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v9 = result;
  v10 = *(result + 4);
  v11 = *v10;
  if (*v10)
  {
    result = filterSubsampling1channel((*&v10[4 * v11 + 8] + *(a3 + 8 * v11)), *&v10[4 * v11 + 168], *(a2 + 8 * v11), *&v10[4 * v11 + 88], a4, a5, *(result + 5) + *(a3 + 8 * (v11 - 1)), *(result + 6), *(result + 14), *(result + 15));
    v10 = *(v9 + 4);
  }

  if (v11 < v10[1])
  {
    v12 = 8 * v11 + 176;
    v13 = a2 + 8;
    v14 = a3 + 8;
    do
    {
      ++v11;
      v15 = v10 + v12;
      result = filterSubsampling1channel((*(v15 - 19) + *(v14 + v12 - 176)), *(v15 + 21), *(v13 + v12 - 176), *(v15 + 1), a4, a5, *(v15 - 20) + *(v14 + v12 - 184), *v15, a4, a5);
      v10 = *(v9 + 4);
      v12 += 8;
    }

    while (v11 < v10[1]);
  }

  return result;
}

@end