@interface CFDateFormatterCreateSkeletonFromTemplate
@end

@implementation CFDateFormatterCreateSkeletonFromTemplate

void ___CFDateFormatterCreateSkeletonFromTemplate_block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = 2 * v3;
  if ((2 * v3) < 0x301)
  {
    if (v3 < 1)
    {
      v5 = 0;
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1, a2);
      v5 = &v13[-4] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v5, v4);
    }
  }

  else
  {
    v5 = malloc_type_malloc(2 * v3, 0x1000040BDFB0063uLL);
  }

  if (!CFStringGetCharactersPtr(*(a1 + 48)))
  {
    v15.length = *(a1 + 40);
    v15.location = 0;
    CFStringGetCharacters(*(a1 + 48), v15, v5);
  }

  bzero(v13, 0x600uLL);
  v6 = *(a1 + 40);
  HIDWORD(v12) = 0;
  Skeleton = __cficu_udatpg_getSkeleton();
  if (SHIDWORD(v12) <= 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, v13, Skeleton);
  }

  else if (HIDWORD(v12) == 15)
  {
    v8 = malloc_type_calloc(Skeleton + 1, 2uLL, 0x1000040BDFB0063uLL);
    v9 = __cficu_udatpg_getSkeleton();
    if (SHIDWORD(v12) <= 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, v8, v9);
    }

    else
    {
      v10 = *(a1 + 56);
      if (v10)
      {
        *v10 = HIDWORD(v12);
      }
    }

    free(v8);
  }

  else
  {
    **(a1 + 56) = HIDWORD(v12);
  }

  if (v4 >= 0x301)
  {
    free(v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end