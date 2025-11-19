@interface _CNiOSPersonFetcherPosterDataFetchInterceptor
- (_CNiOSPersonFetcherPosterDataFetchInterceptor)initWithMainStoreFetcher:(id)a3 posterDataStore:(id)a4;
- (id)executeFetchRequest:(id)a3 error:(id *)a4;
@end

@implementation _CNiOSPersonFetcherPosterDataFetchInterceptor

- (_CNiOSPersonFetcherPosterDataFetchInterceptor)initWithMainStoreFetcher:(id)a3 posterDataStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _CNiOSPersonFetcherPosterDataFetchInterceptor;
  v9 = [(_CNiOSPersonFetcherPosterDataFetchInterceptor *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mainStoreFetcher, a3);
    objc_storeStrong(&v10->_posterDataStore, a4);
    v11 = v10;
  }

  return v10;
}

- (id)executeFetchRequest:(id)a3 error:(id *)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = [(CNiOSPersonFetching *)self->_mainStoreFetcher executeFetchRequest:a3 error:a4];
  v6 = [v5 people];
  v7 = [v6 _cn_map:&__block_literal_global_113_1];

  v43 = v7;
  v41 = [CNContactPosterFetchRequest currentPostersRequestForContactIdentifiers:v7];
  v42 = self;
  posterDataStore = self->_posterDataStore;
  v62 = 0;
  v9 = [CNContactPosterDataStore executeFetchRequest:"executeFetchRequest:error:" error:?];
  v40 = v62;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v59;
    property = *MEMORY[0x1E698A640];
    v47 = *MEMORY[0x1E698A638];
    v45 = *MEMORY[0x1E698A658];
    do
    {
      v13 = 0;
      do
      {
        if (*v59 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v58 + 1) + 8 * v13);
        v15 = [v5 people];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __75___CNiOSPersonFetcherPosterDataFetchInterceptor_executeFetchRequest_error___block_invoke_2;
        v57[3] = &unk_1E7413740;
        v57[4] = v14;
        v16 = [v15 _cn_firstObjectPassingTest:v57];

        if (v16)
        {
          error = 0;
          v17 = [v14 posterData];
          v18 = ABRecordSetValue(v16, property, v17, &error);

          v19 = [v14 posterMetadata];
          v20 = ABRecordSetValue(v16, v47, v19, &error);

          v21 = [v14 watchPosterImageData];
          v22 = ABRecordSetValue(v16, v45, v21, &error);

          if (!v18 && !v20 && !v22)
          {
            v23 = +[CNContactPosterDataStore log];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v65 = error;
              _os_log_error_impl(&dword_1954A0000, v23, OS_LOG_TYPE_ERROR, "Error integrating data from poster store during fetch: %@", buf, 0xCu);
            }
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v11);
  }

  v24 = [CNContactImageFetchRequest currentImagesRequestForContactIdentifiers:v43];
  v25 = v42->_posterDataStore;
  v55 = 0;
  v48 = v24;
  v26 = [CNContactPosterDataStore executeFetchRequest:v25 error:"executeFetchRequest:error:"];
  v46 = v55;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v27 = v26;
  v28 = [v27 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v52;
    do
    {
      v31 = 0;
      do
      {
        if (*v52 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v51 + 1) + 8 * v31);
        v33 = [v5 people];
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __75___CNiOSPersonFetcherPosterDataFetchInterceptor_executeFetchRequest_error___block_invoke_117;
        v50[3] = &unk_1E7413740;
        v50[4] = v32;
        v34 = [v33 _cn_firstObjectPassingTest:v50];

        if (v34)
        {
          error = 0;
          v35 = *MEMORY[0x1E698A150];
          v36 = [v32 imageData];
          v37 = ABRecordSetValue(v34, v35, v36, &error);

          if (!v37)
          {
            v38 = +[CNContactPosterDataStore log];
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v65 = error;
              _os_log_error_impl(&dword_1954A0000, v38, OS_LOG_TYPE_ERROR, "Error integrating data from poster store during fetch: %@", buf, 0xCu);
            }
          }
        }

        ++v31;
      }

      while (v29 != v31);
      v29 = [v27 countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v29);
  }

  return v5;
}

@end