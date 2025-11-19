@interface LSDReadClient
@end

@implementation LSDReadClient

void __49___LSDReadClient_getDiskUsage_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) XPCConnection];
  v8 = 0;
  LODWORD(v2) = [v2 _fetchWithXPCConnection:v3 error:&v8];
  v4 = v8;

  if (v2)
  {
    v5 = 0;
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
    v5 = v4;
  }

  v7 = (*(*(a1 + 48) + 16))(*(a1 + 48), v6, v5);
  MEMORY[0x1865D7C50](v7);
}

void __80___LSDReadClient_getExtensionPointRecordForCurrentProcessWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v4 extensionPointRecord];
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void __98___LSDReadClient_getRelatedTypesOfTypeWithIdentifier_maximumDegreeOfSeparation_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  [*(a1 + 32) addObject:?];
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v5 addObject:v6];
}

void __90___LSDReadClient_getResourceValuesForKeys_mimic_preferredLocalizations_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = _LSReplaceURLPropertyValueForEncoding(v5);

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

void __70___LSDReadClient_mapBundleIdentifiers_orMachOUUIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [(_LSDatabase *)**(a1 + 56) store];
  v3 = _CSStringCopyCFString();
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v3];
    if (v4)
    {
      v5 = *(a1 + 32);
      if (!v5 || [v5 containsObject:v4])
      {
        [*(a1 + 40) addObject:v4];
        [*(a1 + 48) addObject:v6];
      }
    }
  }
}

void __70___LSDReadClient_mapBundleIdentifiers_orMachOUUIDs_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  [(_LSDatabase *)**(a1 + 40) store];
  v7 = *(a4 + 92);
  v9 = *(a1 + 32);
  v8 = v6;
  _CSArrayEnumerateAllValues();
}

void __70___LSDReadClient_mapBundleIdentifiers_orMachOUUIDs_completionHandler___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  [(_LSDatabase *)**(a1 + 40) store];
  v7 = *(a4 + 92);
  v9 = *(a1 + 32);
  v8 = v6;
  _CSArrayEnumerateAllValues();
}

uint64_t __70___LSDReadClient_mapBundleIdentifiers_orMachOUUIDs_completionHandler___block_invoke_6(uint64_t a1, uint64_t a2, int a3)
{
  result = _LSGetPlugin(**(a1 + 48), a3);
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 40) + 16);

    return v6();
  }

  return result;
}

uint64_t __70___LSDReadClient_mapBundleIdentifiers_orMachOUUIDs_completionHandler___block_invoke_7(uint64_t a1, uint64_t a2, int a3)
{
  result = _LSBundleGet(**(a1 + 48), a3);
  if (result)
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 40) + 16);

    return v6();
  }

  return result;
}

void __70___LSDReadClient_mapBundleIdentifiers_orMachOUUIDs_completionHandler___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 12);
  [(_LSDatabase *)**(a1 + 40) store];
  v5 = _CSStringCopyCFString();
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __70___LSDReadClient_mapBundleIdentifiers_orMachOUUIDs_completionHandler___block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 12);
  [(_LSDatabase *)**(a1 + 40) store];
  v5 = _CSStringCopyCFString();
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __92___LSDReadClient_mapPlugInBundleIdentifiersToContainingBundleIdentifiers_completionHandler___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v4 = _LSGetPlugin(**(a1 + 48), a3);
  if (v4 && (v5 = _LSBundleGet(**(a1 + 48), *(v4 + 224))) != 0 && (v6 = *(v5 + 12), [(_LSDatabase *)**(a1 + 48) store], (v7 = _CSStringCopyCFString()) != 0))
  {
    v8 = v7;
    [*(a1 + 32) setObject:v7 forKeyedSubscript:*(a1 + 40)];
  }

  else
  {
    v8 = 0;
  }
}

@end