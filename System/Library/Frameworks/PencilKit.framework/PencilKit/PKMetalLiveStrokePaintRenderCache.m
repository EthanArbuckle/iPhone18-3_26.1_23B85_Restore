@interface PKMetalLiveStrokePaintRenderCache
- (void)addBuffer:(uint64_t)a1;
- (void)initWithRenderZoomFactor:(void *)a1;
@end

@implementation PKMetalLiveStrokePaintRenderCache

- (void)initWithRenderZoomFactor:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v9.receiver = a1;
  v9.super_class = PKMetalLiveStrokePaintRenderCache;
  v3 = objc_msgSendSuper2(&v9, sel_init);
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = v3[1];
    v3[1] = v4;

    v6 = *MEMORY[0x1E695F050];
    v7 = *(MEMORY[0x1E695F050] + 16);
    *(v3 + 2) = xmmword_1C8019980;
    *(v3 + 3) = v6;
    *(v3 + 4) = v7;
    v3[3] = a2;
  }

  return v3;
}

- (void)addBuffer:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v5 = v3;
    [*(a1 + 8) addObject:v3];
    v3 = v5;
    if (v5)
    {
      v4 = 40 * v5[6];
    }

    else
    {
      v4 = 0;
    }

    *(a1 + 16) += v4;
  }
}

@end