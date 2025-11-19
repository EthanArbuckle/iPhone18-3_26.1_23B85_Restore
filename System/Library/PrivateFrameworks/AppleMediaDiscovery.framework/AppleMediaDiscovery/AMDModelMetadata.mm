@interface AMDModelMetadata
- (AMDModelMetadata)initWithMetadataJSON:(id)a3 error:(id *)a4;
- (BOOL)isValid;
@end

@implementation AMDModelMetadata

- (AMDModelMetadata)initWithMetadataJSON:(id)a3 error:(id *)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v60 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v58 = a4;
  v4 = v60;
  v60 = 0;
  v57.receiver = v4;
  v57.super_class = AMDModelMetadata;
  v60 = [(AMDModelMetadata *)&v57 init];
  objc_storeStrong(&v60, v60);
  [v60 setModelArchType:0];
  v56[1] = 4;
  v56[0] = [MEMORY[0x277CCAAA0] JSONObjectWithData:location[0] options:4 error:v58];
  if (*v58)
  {
    v61 = 0;
    v55 = 1;
  }

  else if (v56[0])
  {
    v30 = [v56[0] objectForKey:@"model_id"];
    [v60 setModelId:?];
    MEMORY[0x277D82BD8](v30);
    v31 = [v56[0] objectForKey:@"model_uid"];
    [v60 setModelUid:?];
    MEMORY[0x277D82BD8](v31);
    v32 = [v56[0] objectForKey:@"arch_type"];
    [v60 setModelArchType:{objc_msgSend(v32, "unsignedCharValue")}];
    MEMORY[0x277D82BD8](v32);
    v33 = [v56[0] objectForKey:@"mapping_files_required"];
    [v60 setMappingFilesRequired:?];
    MEMORY[0x277D82BD8](v33);
    v51 = [v56[0] objectForKey:@"assets"];
    if (v51)
    {
      v29 = [[AMDModelAssetsMetadata alloc] initWithDictionary:v51];
      [v60 setAssetsMetadata:?];
      MEMORY[0x277D82BD8](v29);
    }

    v50 = [v56[0] objectForKey:@"model_inputs"];
    if (v50)
    {
      v26 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v50, "count")}];
      [v60 setInputsMetadata:?];
      MEMORY[0x277D82BD8](v26);
      memset(__b, 0, sizeof(__b));
      v27 = MEMORY[0x277D82BE0](v50);
      v28 = [v27 countByEnumeratingWithState:__b objects:v66 count:16];
      if (v28)
      {
        v23 = *__b[2];
        v24 = 0;
        v25 = v28;
        while (1)
        {
          v22 = v24;
          if (*__b[2] != v23)
          {
            objc_enumerationMutation(v27);
          }

          v49 = *(__b[1] + 8 * v24);
          v47 = [v50 objectForKey:v49];
          v46 = [[AMDModelInputMetadata alloc] initWithDictionary:v47];
          if ([v46 isValid])
          {
            v21 = [v60 inputsMetadata];
            [v21 setObject:v46 forKey:v49];
            MEMORY[0x277D82BD8](v21);
          }

          else
          {
            v45 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v44 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              v20 = v45;
              __os_log_helper_16_2_2_8_64_8_64(v65, v47, v49);
              _os_log_error_impl(&dword_240CB9000, v20, v44, "invalid input metadata in %@ for %@", v65, 0x16u);
            }

            objc_storeStrong(&v45, 0);
          }

          objc_storeStrong(&v46, 0);
          objc_storeStrong(&v47, 0);
          ++v24;
          if (v22 + 1 >= v25)
          {
            v24 = 0;
            v25 = [v27 countByEnumeratingWithState:__b objects:v66 count:16];
            if (!v25)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](v27);
    }

    v43 = [v56[0] objectForKey:@"model_outputs"];
    if (v43)
    {
      v17 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v43, "count")}];
      [v60 setOutputsMetadata:?];
      MEMORY[0x277D82BD8](v17);
      memset(v41, 0, sizeof(v41));
      v18 = MEMORY[0x277D82BE0](v43);
      v19 = [v18 countByEnumeratingWithState:v41 objects:v64 count:16];
      if (v19)
      {
        v14 = *v41[2];
        v15 = 0;
        v16 = v19;
        while (1)
        {
          v13 = v15;
          if (*v41[2] != v14)
          {
            objc_enumerationMutation(v18);
          }

          v42 = *(v41[1] + 8 * v15);
          v40 = [v43 objectForKey:v42];
          v6 = [AMDModelOutputMetadata alloc];
          v39 = [(AMDModelOutputMetadata *)v6 initWithDictionary:v40];
          if ([v39 isValid])
          {
            v12 = [v60 outputsMetadata];
            [v12 setObject:v39 forKey:v42];
            MEMORY[0x277D82BD8](v12);
          }

          else
          {
            oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
            v37 = OS_LOG_TYPE_ERROR;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
            {
              v11 = oslog;
              __os_log_helper_16_2_2_8_64_8_64(v63, v40, v42);
              _os_log_error_impl(&dword_240CB9000, v11, v37, "invalid output metadata in %@ for %@", v63, 0x16u);
            }

            objc_storeStrong(&oslog, 0);
          }

          objc_storeStrong(&v39, 0);
          objc_storeStrong(&v40, 0);
          ++v15;
          if (v13 + 1 >= v16)
          {
            v15 = 0;
            v16 = [v18 countByEnumeratingWithState:v41 objects:v64 count:16];
            if (!v16)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x277D82BD8](v18);
    }

    v36 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v60 inputsMetadata];
      v8 = [v10 count];
      v9 = [v60 outputsMetadata];
      __os_log_helper_16_0_2_8_0_8_0(v62, v8, [v9 count]);
      _os_log_debug_impl(&dword_240CB9000, v36, OS_LOG_TYPE_DEBUG, "From JSON metadata: %lu inputs, %lu outputs", v62, 0x16u);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
    }

    objc_storeStrong(&v36, 0);
    v61 = MEMORY[0x277D82BE0](v60);
    v55 = 1;
    objc_storeStrong(&v43, 0);
    objc_storeStrong(&v50, 0);
    objc_storeStrong(&v51, 0);
  }

  else
  {
    v54 = MEMORY[0x277D82BE0](@"Model Metadata json could not be deserialized");
    v53 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v67, v54);
      _os_log_error_impl(&dword_240CB9000, v53, type, "%@", v67, 0xCu);
    }

    objc_storeStrong(&v53, 0);
    v34 = [AMDError allocError:15 withMessage:v54];
    v5 = v34;
    *v58 = v34;
    v61 = 0;
    v55 = 1;
    objc_storeStrong(&v54, 0);
  }

  objc_storeStrong(v56, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v60, 0);
  *MEMORY[0x277D85DE8];
  return v61;
}

- (BOOL)isValid
{
  v10 = [(AMDModelMetadata *)self inputsMetadata];
  v17 = 0;
  v11 = 0;
  if (v10)
  {
    v18 = [(AMDModelMetadata *)self inputsMetadata];
    v17 = 1;
    v11 = [(NSMutableDictionary *)v18 count]!= 0;
  }

  if (v17)
  {
    MEMORY[0x277D82BD8](v18);
  }

  MEMORY[0x277D82BD8](v10);
  v8 = [(AMDModelMetadata *)self outputsMetadata];
  v15 = 0;
  v9 = 0;
  if (v8)
  {
    v16 = [(AMDModelMetadata *)self outputsMetadata];
    v15 = 1;
    v9 = [(NSMutableDictionary *)v16 count]!= 0;
  }

  if (v15)
  {
    MEMORY[0x277D82BD8](v16);
  }

  MEMORY[0x277D82BD8](v8);
  v6 = [(AMDModelMetadata *)self assetsMetadata];
  v13 = 0;
  v7 = 0;
  if (v6)
  {
    v14 = [(AMDModelMetadata *)self assetsMetadata];
    v13 = 1;
    v7 = [(AMDModelAssetsMetadata *)v14 isValid];
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  MEMORY[0x277D82BD8](v6);
  v12 = [(AMDModelMetadata *)self modelArchType]!= 0;
  v2 = [(AMDModelMetadata *)self modelUid];
  v4 = v2 != 0;
  MEMORY[0x277D82BD8](v2);
  v5 = 0;
  if (v11)
  {
    v5 = 0;
    if (v9)
    {
      v5 = 0;
      if (v7)
      {
        v5 = 0;
        if (v12)
        {
          return v4;
        }
      }
    }
  }

  return v5;
}

@end