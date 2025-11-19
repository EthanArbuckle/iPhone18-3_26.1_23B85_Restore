@interface AKSignatureModelController
- (AKController)controller;
- (AKSignatureModelController)initWithController:(id)a3;
- (BOOL)_createNewKeychainItemWithSignature:(id)a3;
- (BOOL)_deleteSignatureFromKeychain:(id)a3;
- (NSArray)signatures;
- (id)_createAKSignatureFromItemRef:(id)a3;
- (void)_loadSignaturesFromPersistentStorage;
- (void)_saveSignatureToPersistentStorage:(id)a3;
- (void)insertObject:(id)a3 inSignaturesAtIndex:(unint64_t)a4;
- (void)reloadSignaturesFromSource;
- (void)removeObjectFromSignaturesAtIndex:(unint64_t)a3;
@end

@implementation AKSignatureModelController

- (AKSignatureModelController)initWithController:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AKSignatureModelController;
  v5 = [(AKSignatureModelController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(AKSignatureModelController *)v5 setController:v4];
  }

  return v6;
}

- (void)insertObject:(id)a3 inSignaturesAtIndex:(unint64_t)a4
{
  signatures = self->_signatures;
  v7 = a3;
  [(NSMutableArray *)signatures insertObject:v7 atIndex:a4];
  [(AKSignatureModelController *)self _saveSignatureToPersistentStorage:v7];
}

- (void)removeObjectFromSignaturesAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableArray *)self->_signatures objectAtIndex:?];
  [(NSMutableArray *)self->_signatures removeObjectAtIndex:a3];
  [(AKSignatureModelController *)self _deleteSignatureFromKeychain:v5];
}

- (NSArray)signatures
{
  signatures = self->_signatures;
  if (!signatures)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = self->_signatures;
    self->_signatures = v4;

    [(AKSignatureModelController *)self _loadSignaturesFromPersistentStorage];
    signatures = self->_signatures;
  }

  return signatures;
}

- (void)reloadSignaturesFromSource
{
  v3 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, -[NSMutableArray count](self->_signatures, "count")}];
  if ([v3 count])
  {
    [(AKSignatureModelController *)self willChange:3 valuesAtIndexes:v3 forKey:@"signatures"];
  }

  [(NSMutableArray *)self->_signatures removeAllObjects];
  if ([v3 count])
  {
    [(AKSignatureModelController *)self didChange:3 valuesAtIndexes:v3 forKey:@"signatures"];
  }

  [(AKSignatureModelController *)self _loadSignaturesFromPersistentStorage];
}

- (void)_loadSignaturesFromPersistentStorage
{
  v35[6] = *MEMORY[0x277D85DE8];
  result = 0;
  v3 = *MEMORY[0x277CDC238];
  v4 = *MEMORY[0x277CDC550];
  v30 = *MEMORY[0x277CDC228];
  v34[0] = *MEMORY[0x277CDC228];
  v34[1] = v4;
  v28 = v4;
  v5 = *MEMORY[0x277CBED28];
  v29 = v3;
  v35[0] = v3;
  v35[1] = v5;
  v6 = *MEMORY[0x277CDC140];
  v34[2] = *MEMORY[0x277CDBEC8];
  v34[3] = v6;
  v35[2] = @"com.apple.AnnotationKit";
  v35[3] = v5;
  v27 = v5;
  v7 = *MEMORY[0x277CDC428];
  v34[4] = *MEMORY[0x277CDC120];
  v34[5] = v7;
  v26 = v7;
  v8 = *MEMORY[0x277CDC430];
  v35[4] = @"Signature Annotation Privacy Service";
  v35[5] = v8;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:6];
  v9 = SecItemCopyMatching(v31, &result);
  if (v9 == -25300)
  {
    NSLog(&cfstr_NoItemsFoundIn.isa);
  }

  else if (v9)
  {
    NSLog(&cfstr_Secitemcopymat.isa, v9, &stru_28519E870);
  }

  else
  {
    v24 = self;
    v23 = [MEMORY[0x277CBEB18] array];
    Count = CFArrayGetCount(result);
    if (Count >= 1)
    {
      v11 = Count;
      v12 = 0;
      v13 = *MEMORY[0x277CDBF20];
      v14 = *MEMORY[0x277CDC558];
      v15 = *MEMORY[0x277CDC438];
      v25 = *MEMORY[0x277CDC5E8];
      do
      {
        v16 = [CFArrayGetValueAtIndex(result v12)];
        v17 = [v16 objectForKey:v13];
        v18 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v31];
        [v18 removeObjectForKey:v28];
        [v18 setObject:v27 forKey:v14];
        [v18 setObject:v15 forKey:v26];
        [v18 setObject:v29 forKey:v30];
        [v18 setValue:v17 forKey:v13];
        v32 = 0;
        if (SecItemCopyMatching(v18, &v32))
        {
          NSLog(&cfstr_Secitemcopymat.isa, 0, &stru_28519E870);
        }

        else
        {
          v19 = v32;
          if (v32)
          {
            v20 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedData:v32 options:0];
            [v16 setValue:v20 forKey:v25];

            if (v20)
            {
              v21 = [(AKSignatureModelController *)v24 _createAKSignatureFromItemRef:v20];
              if (v21)
              {
                [v23 addObject:v21];
              }
            }
          }
        }

        ++v12;
      }

      while (v11 != v12);
    }

    if ([v23 count])
    {
      v22 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v23, "count")}];
      if ([v22 count])
      {
        [(AKSignatureModelController *)v24 willChange:2 valuesAtIndexes:v22 forKey:@"signatures"];
      }

      [(NSMutableArray *)v24->_signatures addObjectsFromArray:v23];
      if ([v22 count])
      {
        [(AKSignatureModelController *)v24 didChange:2 valuesAtIndexes:v22 forKey:@"signatures"];
      }
    }

    CFRelease(result);
  }
}

- (void)_saveSignatureToPersistentStorage:(id)a3
{
  if (a3)
  {
    MEMORY[0x2821F9670](self, sel__createNewKeychainItemWithSignature_);
  }
}

- (BOOL)_deleteSignatureFromKeychain:(id)a3
{
  v21[7] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CDC238];
  v4 = *MEMORY[0x277CDC560];
  v20[0] = *MEMORY[0x277CDC228];
  v20[1] = v4;
  v5 = *MEMORY[0x277CBED28];
  v6 = *MEMORY[0x277CDBEC8];
  v20[2] = *MEMORY[0x277CDC120];
  v20[3] = v6;
  v21[0] = v3;
  v21[1] = v5;
  v21[2] = @"Signature Annotation Privacy Service";
  v21[3] = @"com.apple.AnnotationKit";
  v7 = *MEMORY[0x277CDC140];
  v21[4] = v5;
  v8 = *MEMORY[0x277CDBF20];
  v20[4] = v7;
  v20[5] = v8;
  v9 = [a3 uniqueID];
  v10 = [v9 UUIDString];
  v20[6] = *MEMORY[0x277CDC428];
  v11 = *MEMORY[0x277CDC438];
  v21[5] = v10;
  v21[6] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:7];

  result = 0;
  SecItemCopyMatching(v12, &result);
  if (result)
  {
    v18 = *MEMORY[0x277CDC5F0];
    v19 = result;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v14 = SecItemDelete(v13);
    v15 = v14 == 0;
    if (v14)
    {
      NSLog(&cfstr_SecitemdeleteR.isa, v14, &stru_28519E870);
    }
  }

  else
  {
    NSLog(&cfstr_Secitemcopymat_0.isa);
    v15 = 0;
  }

  return v15;
}

- (BOOL)_createNewKeychainItemWithSignature:(id)a3
{
  v25[8] = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v23 = 0;
    v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v23];
    v6 = v23;
    v7 = v6;
    if (v6)
    {
      NSLog(&cfstr_FailedToEncode.isa, v6);
    }

    v8 = [v5 base64EncodedDataWithOptions:0];
    v9 = v8;
    if (v8 && [v8 length])
    {
      v10 = *MEMORY[0x277CDC238];
      v11 = *MEMORY[0x277CDC120];
      v24[0] = *MEMORY[0x277CDC228];
      v24[1] = v11;
      v25[0] = v10;
      v25[1] = @"Signature Annotation Privacy Service";
      v12 = *MEMORY[0x277CDBEC8];
      v24[2] = *MEMORY[0x277CDC080];
      v24[3] = v12;
      v25[2] = @"Signature Annotation Privacy";
      v25[3] = @"com.apple.AnnotationKit";
      v25[4] = *MEMORY[0x277CBED28];
      v13 = *MEMORY[0x277CDBF88];
      v24[4] = *MEMORY[0x277CDC140];
      v24[5] = v13;
      v14 = +[AKController akBundle];
      v15 = [v14 localizedStringForKey:@"Signatures for AnnotationKit (shared by e.g. Markup & Preview). Deletion will remove all signatures from the list." value:&stru_28519E870 table:@"AKSignatureModelController"];
      v25[5] = v15;
      v24[6] = *MEMORY[0x277CDBF20];
      v16 = [v3 uniqueID];
      v17 = [v16 UUIDString];
      v24[7] = *MEMORY[0x277CDC5E8];
      v25[6] = v17;
      v25[7] = v9;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:8];

      result = 0;
      v19 = SecItemAdd(v18, &result);
      if (v19)
      {
        NSLog(&cfstr_CouldnTAddSign.isa, v19);
      }

      else
      {
        NSLog(&cfstr_SuccessfullyWr.isa, v21);
      }

      if (result)
      {
        CFRelease(result);
      }
    }

    else
    {
      NSLog(&cfstr_CouldnTAddSign_0.isa);
    }

    objc_autoreleasePoolPop(v4);
  }

  return 0;
}

- (id)_createAKSignatureFromItemRef:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CCAAC8];
    v4 = a3;
    v5 = [[v3 alloc] initForReadingFromData:v4 error:0];

    v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
    [v5 finishDecoding];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (AKController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end