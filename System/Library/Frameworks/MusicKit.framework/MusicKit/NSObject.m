@interface NSObject
@end

@implementation NSObject

__CFString *__68__NSObject_MusicKit_SoftLinking_MPIdentifierSet__musicKit_formerIDs__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  quot = [a2 longLongValue];
  if (quot)
  {
    v3 = quot;
    v4 = &v10;
    do
    {
      v5 = lldiv(quot, 10);
      quot = v5.quot;
      if (v5.rem >= 0)
      {
        LOBYTE(v6) = v5.rem;
      }

      else
      {
        v6 = -v5.rem;
      }

      *v4-- = v6 + 48;
    }

    while (v5.quot);
    if (v3 < 0)
    {
      *v4 = 45;
    }

    else
    {
      ++v4;
    }

    v7 = CFStringCreateWithBytes(0, v4, &v11 - v4, 0x8000100u, 0);
  }

  else
  {
    v7 = @"0";
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void __91__NSObject_MusicKit_SoftLinking_MPArtworkCatalog__musicKit_requestImageDataWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = v5;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v8 = getUIImagePNGRepresentationSymbolLoc_ptr;
    v16 = getUIImagePNGRepresentationSymbolLoc_ptr;
    if (!getUIImagePNGRepresentationSymbolLoc_ptr)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __getUIImagePNGRepresentationSymbolLoc_block_invoke;
      v12[3] = &unk_278229610;
      v12[4] = &v13;
      __getUIImagePNGRepresentationSymbolLoc_block_invoke(v12);
      v8 = v14[3];
    }

    _Block_object_dispose(&v13, 8);
    if (!v8)
    {
      v11 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
      _Block_object_dispose(&v13, 8);
      _Unwind_Resume(v11);
    }

    v9 = v8(v7);

    if (v9)
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1017 userInfo:0];
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end