@interface UTDeclaredTypeRecord
@end

@implementation UTDeclaredTypeRecord

uint64_t __107___UTDeclaredTypeRecord__enumerateRelatedTypeStructuresWithContext_unitID_maximumDegreeOfSeparation_block___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = 0;
  result = (*(*(a1 + 32) + 16))(*(a1 + 32), *(a1 + 40), a2, a3, a4, &v7);
  *a5 = v7;
  return result;
}

uint64_t __107___UTDeclaredTypeRecord__enumerateRelatedTypeStructuresWithContext_unitID_maximumDegreeOfSeparation_block___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = 0;
  result = (*(*(a1 + 32) + 16))(*(a1 + 32), *(a1 + 40), a2, a3, -a4, &v7);
  *a5 = v7;
  return result;
}

uint64_t __50___UTDeclaredTypeRecord_conformsToTypeIdentifier___block_invoke(uint64_t a1, void **a2, uint64_t a3, int a4)
{
  v8 = 0;
  result = _UTGetActiveTypeForCFStringIdentifier(*a2, *(a1 + 32), &v8);
  if (result)
  {
    result = _UTTypeConformsTo(*a2, a4, v8);
    *(*(*(a1 + 40) + 8) + 24) = result != 0;
  }

  return result;
}

void __50___UTDeclaredTypeRecord_conformsToTypeIdentifier___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _resolvedPropertyValueForGetter:sel_pedigree];
  if (v2)
  {
    v4 = v2;
    v3 = [*(a1 + 40) lowercaseString];
    *(*(*(a1 + 48) + 8) + 24) = [v4 containsObject:v3];

    v2 = v4;
  }
}

void __83___UTDeclaredTypeRecord_parentTypeIdentifiersWithContext_tableID_unitID_unitBytes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 1)
  {
    v5 = *(a3 + 12);
    [(_LSDatabase *)**(a1 + 40) store];
    v6 = _CSStringCopyCFString();
    if (v6 && [v6 length])
    {
      [*(a1 + 32) addObject:v6];
    }
  }
}

void __82___UTDeclaredTypeRecord_childTypeIdentifiersWithContext_tableID_unitID_unitBytes___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 1)
  {
    v5 = *(a3 + 12);
    [(_LSDatabase *)**(a1 + 40) store];
    v6 = _CSStringCopyCFString();
    if (v6 && [v6 length])
    {
      [*(a1 + 32) addObject:v6];
    }
  }
}

uint64_t __42___UTDeclaredTypeRecord__isOneTapOpenable__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 __isDirectlyOneTapOpenable];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t __114___UTDeclaredTypeRecord__enumerateRelatedTypeUnitsOrDynamicIdsWithContext_unitID_maximumDegreeOfSeparation_block___block_invoke(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v5 = *(result + 32);
    v6 = 0;
    v7 = a5;
    v8 = a3;
    v9 = 1;
    return (*(v5 + 16))();
  }

  return result;
}

@end