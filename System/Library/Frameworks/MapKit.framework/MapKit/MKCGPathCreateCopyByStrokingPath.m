@interface MKCGPathCreateCopyByStrokingPath
@end

@implementation MKCGPathCreateCopyByStrokingPath

void ___MKCGPathCreateCopyByStrokingPath_block_invoke(uint64_t a1, uint64_t a2)
{
  if (*a2 == 1)
  {
    v8 = *(a2 + 8);
    v4 = *v8;
    v5 = v8[1];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 24);
    if (!v10)
    {
      v15.x = v4;
      v15.y = v5;
      _MKCGPathAddLineCap(*(a1 + 56), *(*(*(a1 + 40) + 8) + 48), v15, *(a1 + 64), *(a1 + 76), 1);
      v9 = *(*(a1 + 32) + 8);
      v10 = *(v9 + 24);
    }

    *(v9 + 24) = v10 + 1;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v7 = a1 + 40;
    *(*(v12 + 8) + 48) = *(*(v11 + 8) + 48);
  }

  else
  {
    if (*a2)
    {
      return;
    }

    v3 = *(a2 + 8);
    v4 = *v3;
    v5 = v3[1];
    v6 = *(*(a1 + 32) + 8);
    if (*(v6 + 24))
    {
      v14.x = v4;
      v14.y = v5;
      _MKCGPathAddLineCap(*(a1 + 56), *(*(*(a1 + 40) + 8) + 48), v14, *(a1 + 64), *(a1 + 72), 0);
      v6 = *(*(a1 + 32) + 8);
    }

    *(v6 + 24) = 0;
    *(*(*(a1 + 48) + 8) + 48) = *MEMORY[0x1E695EFF8];
    v7 = a1 + 40;
  }

  v13 = *(*v7 + 8);
  *(v13 + 48) = v4;
  *(v13 + 56) = v5;
}

@end