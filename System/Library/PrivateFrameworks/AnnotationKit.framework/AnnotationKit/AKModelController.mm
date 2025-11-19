@interface AKModelController
- (AKModelController)init;
- (BOOL)hasHDRAnnotation;
- (BOOL)populateFromArchivedPageModelControllers:(id)a3;
- (double)annotationHeadroom;
- (id)allSelectedAnnotations;
- (id)archivedPageModelControllers;
- (id)pageModelControllerForAnnotation:(id)a3;
- (id)pageModelControllerForPage:(unint64_t)a3;
- (void)deleteAllSelectedAnnotations;
- (void)deselectAllAnnotations;
- (void)insertPageModelControllers:(id)a3 atIndexes:(id)a4;
- (void)replacePageModelControllersAtIndexes:(id)a3 withPageModelControllers:(id)a4;
@end

@implementation AKModelController

- (AKModelController)init
{
  v6.receiver = self;
  v6.super_class = AKModelController;
  v2 = [(AKModelController *)&v6 init];
  if (v2)
  {
    v3 = +[AKSparseMutableControllerArray array];
    mutablePageModelControllers = v2->_mutablePageModelControllers;
    v2->_mutablePageModelControllers = v3;
  }

  return v2;
}

- (void)insertPageModelControllers:(id)a3 atIndexes:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([(AKSparseMutableControllerArray *)self->_mutablePageModelControllers containsObject:v6]& 1) != 0)
  {
    v8 = [v7 firstIndex];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(AKModelController *)self insertObject:*(*(&v14 + 1) + 8 * v13) inPageModelControllersAtIndex:v8, v14];
          v8 = [v7 indexGreaterThanIndex:v8];
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }

  else
  {
    [(AKSparseMutableControllerArray *)self->_mutablePageModelControllers insertObjects:v6 atIndexes:v7];
  }
}

- (void)replacePageModelControllersAtIndexes:(id)a3 withPageModelControllers:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (([(AKSparseMutableControllerArray *)self->_mutablePageModelControllers containsObject:v7]& 1) != 0)
  {
    v8 = [v6 firstIndex];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(AKModelController *)self replaceObjectInPageModelControllersAtIndex:v8 withObject:*(*(&v14 + 1) + 8 * v13), v14];
          v8 = [v6 indexGreaterThanIndex:v8];
          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }

  else
  {
    [(AKSparseMutableControllerArray *)self->_mutablePageModelControllers replaceObjectsAtIndexes:v6 withObjects:v7];
  }
}

- (id)pageModelControllerForPage:(unint64_t)a3
{
  v4 = [(AKModelController *)self pageModelControllers];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

- (id)pageModelControllerForAnnotation:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(AKModelController *)self pageModelControllers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 containsAnnotation:v4])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)allSelectedAnnotations
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(AKModelController *)self pageModelControllers];
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 annotations];
        v10 = [v8 selectedAnnotations];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = sub_23F4592CC;
        v16[3] = &unk_278C7BDA0;
        v17 = v10;
        v11 = v10;
        v12 = [v9 indexesOfObjectsPassingTest:v16];
        v13 = [v9 objectsAtIndexes:v12];
        [v3 addObjectsFromArray:v13];
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)deleteAllSelectedAnnotations
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [(AKModelController *)self pageModelControllers];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v15 + 1) + 8 * i);
        v7 = [v6 annotations];
        v8 = [v6 selectedAnnotations];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = sub_23F45949C;
        v13[3] = &unk_278C7BDA0;
        v14 = v8;
        v9 = v8;
        v10 = [v7 indexesOfObjectsPassingTest:v13];
        v11 = [v6 mutableArrayValueForKey:@"annotations"];
        [v11 removeObjectsAtIndexes:v10];
      }

      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }
}

- (BOOL)hasHDRAnnotation
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(AKModelController *)self pageModelControllers];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) hasHDRAnnotation])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (double)annotationHeadroom
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(AKModelController *)self pageModelControllers];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = 1.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v10 + 1) + 8 * i) annotationHeadroom];
        if (v6 < v8)
        {
          v6 = v8;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (void)deselectAllAnnotations
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(AKModelController *)self pageModelControllers];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [v7 selectedAnnotations];
        v9 = [v8 count];

        if (v9)
        {
          v10 = [v7 mutableSetValueForKey:@"selectedAnnotations"];
          v11 = [MEMORY[0x277CBEB98] set];
          [v10 setSet:v11];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

- (id)archivedPageModelControllers
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [(AKModelController *)self pageModelControllers];
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v23 + 1) + 8 * i) archivableRepresentation];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x277CBEA60] arrayWithArray:v3];
  v11 = [AKSecureSerializationHelper dataForSecureCodingCompliantObject:v10 withOptionalKey:qword_27E399D98];
  v12 = [v11 length];
  v13 = malloc_type_calloc(v12, 1uLL, 0x100004077774924uLL);
  if (v13)
  {
    v14 = v13;
    v15 = compression_encode_buffer(v13, v12, [v11 bytes], v12, 0, COMPRESSION_LZMA);
    if (v15)
    {
      v16 = [MEMORY[0x277CBEA90] dataWithBytes:v14 length:v15];
      v27[0] = qword_27E399DA8;
      v27[1] = qword_27E399DB0;
      v28[0] = v16;
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
      v28[1] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];

      v19 = [AKSecureSerializationHelper dataForSecureCodingCompliantObject:v18 withOptionalKey:qword_27E399DA0];
      v20 = [v19 length];
      if (v20 < [v11 length])
      {
        v21 = v19;

        v11 = v21;
      }
    }

    free(v14);
  }

  return v11;
}

- (BOOL)populateFromArchivedPageModelControllers:(id)a3
{
  v32[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v4 error:0];
  v7 = v6;
  if (v6 && (([v6 containsValueForKey:qword_27E399DA0] & 1) != 0 || (objc_msgSend(v7, "containsValueForKey:", qword_27E399D98) & 1) != 0))
  {
    v8 = 0x278C7A000uLL;
    v9 = v4;
    if (![v7 containsValueForKey:qword_27E399DA0])
    {
LABEL_24:
      [v7 finishDecoding];

      objc_autoreleasePoolPop(v5);
      if (v9)
      {
        v20 = *(v8 + 2808);
        v31[0] = objc_opt_class();
        v31[1] = objc_opt_class();
        v31[2] = objc_opt_class();
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
        v22 = [v20 secureCodingCompliantObjectForData:v9 ofClasses:v21 withOptionalKey:qword_27E399D98];

        if (v22)
        {
          v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v22, "count")}];
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = sub_23F459F48;
          v29[3] = &unk_278C7B928;
          v30 = v23;
          v24 = v23;
          [v22 enumerateObjectsUsingBlock:v29];
          v25 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v24, "count")}];
          [(AKModelController *)self insertPageModelControllers:v24 atIndexes:v25];
        }
      }

      v19 = 1;
      goto LABEL_29;
    }

    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v32[2] = objc_opt_class();
    v32[3] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
    v11 = [AKSecureSerializationHelper secureCodingCompliantObjectForData:v4 ofClasses:v10 withOptionalKey:qword_27E399DA0];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 objectForKeyedSubscript:qword_27E399DA8];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v12 = 0;
      }

      v8 = 0x278C7A000uLL;
      v13 = [v11 objectForKeyedSubscript:qword_27E399DB0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = [v13 unsignedIntegerValue];

        v9 = 0;
        if (!v12 || !v14)
        {
          goto LABEL_23;
        }

        v15 = [v12 length];
        src_buffer = [v12 bytes];
        v16 = malloc_type_calloc(v14, 1uLL, 0x4383102FuLL);
        if (v16)
        {
          v27 = v16;
          v17 = compression_decode_buffer(v16, v14, src_buffer, v15, 0, COMPRESSION_LZMA);
          if (v17 && v17 == v14)
          {
            v9 = [MEMORY[0x277CBEA90] dataWithBytes:v27 length:v14];
          }

          else
          {
            NSLog(&cfstr_SDecompressing.isa, "[AKModelController populateFromArchivedPageModelControllers:]", v15, v14, v17);
            v9 = 0;
          }

          free(v27);
          goto LABEL_23;
        }
      }

      else
      {
      }

      v9 = 0;
    }

    else
    {
      v12 = 0;
      v9 = 0;
      v8 = 0x278C7A000;
    }

LABEL_23:

    goto LABEL_24;
  }

  [v7 finishDecoding];

  v18 = os_log_create("com.apple.annotationkit", "Serialization");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_23F4BD0E0(v18);
  }

  objc_autoreleasePoolPop(v5);
  v19 = 0;
  v9 = v4;
LABEL_29:

  return v19;
}

@end