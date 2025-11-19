@interface AMDJSPIRResponseHandler
+ (id)persistPIRData:(id)a3 error:(id *)a4;
@end

@implementation AMDJSPIRResponseHandler

+ (id)persistPIRData:(id)a3 error:(id *)a4
{
  v75 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v65 = a4;
  v64 = [location[0] objectForKey:@"PIRKeywordArray"];
  if (v64)
  {
    v61 = [location[0] objectForKey:@"PIRDataArray"];
    if (v61)
    {
      v59 = [location[0] objectForKey:@"CipherMLCallHandle"];
      if (v59)
      {
        v57 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v64 options:4 error:v65];
        if (*v65)
        {
          v56 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
          type = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            log = v56;
            v29 = type;
            v30 = [*v65 localizedDescription];
            v54 = MEMORY[0x277D82BE0](v30);
            __os_log_helper_16_2_1_8_64(v74, v54);
            _os_log_error_impl(&dword_240CB9000, log, v29, "Error deserializing PIR keyword: %@", v74, 0xCu);
            MEMORY[0x277D82BD8](v30);
            objc_storeStrong(&v54, 0);
          }

          objc_storeStrong(&v56, 0);
          v67 = 0;
          v62 = 1;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v52 = MEMORY[0x277D82BE0](v57);
            v51 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v61 options:4 error:v65];
            if (*v65)
            {
              oslog = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
              v49 = OS_LOG_TYPE_ERROR;
              if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
              {
                v24 = oslog;
                v25 = v49;
                v26 = [*v65 localizedDescription];
                v48 = MEMORY[0x277D82BE0](v26);
                __os_log_helper_16_2_2_8_64_8_64(v73, v52, v48);
                _os_log_error_impl(&dword_240CB9000, v24, v25, "Error deserializing PIR data for keyword %@: %@", v73, 0x16u);
                MEMORY[0x277D82BD8](v26);
                objc_storeStrong(&v48, 0);
              }

              objc_storeStrong(&oslog, 0);
              v67 = 0;
              v62 = 1;
            }

            else
            {
              v47 = [AMDKVStore fetchValueForKey:v59 error:v65];
              if (*v65)
              {
                v46 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                v45 = OS_LOG_TYPE_ERROR;
                if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                {
                  v21 = v46;
                  v22 = v45;
                  v23 = [*v65 localizedDescription];
                  v44 = MEMORY[0x277D82BE0](v23);
                  __os_log_helper_16_2_1_8_64(v72, v44);
                  _os_log_error_impl(&dword_240CB9000, v21, v22, "KVStore fetch failed: %@", v72, 0xCu);
                  MEMORY[0x277D82BD8](v23);
                  objc_storeStrong(&v44, 0);
                }

                objc_storeStrong(&v46, 0);
                v67 = 0;
                v62 = 1;
              }

              else if (v47)
              {
                v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"key == %@", v59];
                v9 = [AMDKVStore deleteWithPredicate:"deleteWithPredicate:error:" error:?];
                MEMORY[0x277D82BD8](v19);
                if (*v65)
                {
                  v42 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                  v41 = OS_LOG_TYPE_ERROR;
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                  {
                    v16 = v42;
                    v17 = v41;
                    v18 = [*v65 localizedDescription];
                    v40 = MEMORY[0x277D82BE0](v18);
                    __os_log_helper_16_2_1_8_64(v71, v40);
                    _os_log_error_impl(&dword_240CB9000, v16, v17, "KVStore cleanup failed: %@", v71, 0xCu);
                    MEMORY[0x277D82BD8](v18);
                    objc_storeStrong(&v40, 0);
                  }

                  objc_storeStrong(&v42, 0);
                  v67 = 0;
                  v62 = 1;
                }

                else
                {
                  v39 = [v47 objectForKey:@"domain"];
                  v69 = v52;
                  v70 = v51;
                  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
                  v38 = [AMDTasteProfile saveTasteProfileEntriesFromDict:"saveTasteProfileEntriesFromDict:inDomain:forSource:error:" inDomain:? forSource:? error:?];
                  MEMORY[0x277D82BD8](v15);
                  if (*v65)
                  {
                    v37 = MEMORY[0x277D82BE0](MEMORY[0x277D86220]);
                    v36 = OS_LOG_TYPE_ERROR;
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                    {
                      v12 = v37;
                      v13 = v36;
                      v14 = [*v65 localizedDescription];
                      v35 = MEMORY[0x277D82BE0](v14);
                      __os_log_helper_16_2_1_8_64(v68, v35);
                      _os_log_error_impl(&dword_240CB9000, v12, v13, "Taste profile save failed: %@", v68, 0xCu);
                      MEMORY[0x277D82BD8](v14);
                      objc_storeStrong(&v35, 0);
                    }

                    objc_storeStrong(&v37, 0);
                    v67 = 0;
                    v62 = 1;
                  }

                  else
                  {
                    v67 = MEMORY[0x277D82BE0](v38);
                    v62 = 1;
                  }

                  objc_storeStrong(&v38, 0);
                  objc_storeStrong(&v39, 0);
                }
              }

              else
              {
                v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"PIR Error: Unrecognized call handler"];
                v20 = [AMDMiscHelpers logAndCreateError:18 errorMessage:v43];
                v8 = v20;
                *v65 = v20;
                v67 = 0;
                v62 = 1;
                objc_storeStrong(&v43, 0);
              }

              objc_storeStrong(&v47, 0);
            }

            objc_storeStrong(&v51, 0);
            objc_storeStrong(&v52, 0);
          }

          else
          {
            v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"Non string keyword present in PIR response"];
            v27 = [AMDMiscHelpers logAndCreateError:18 errorMessage:v53];
            v7 = v27;
            *v65 = v27;
            v67 = 0;
            v62 = 1;
            objc_storeStrong(&v53, 0);
          }
        }

        objc_storeStrong(&v57, 0);
      }

      else
      {
        v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"Nil call handle present in PIR response"];
        v31 = [AMDMiscHelpers logAndCreateError:18 errorMessage:v58];
        v6 = v31;
        *v65 = v31;
        v67 = 0;
        v62 = 1;
        objc_storeStrong(&v58, 0);
      }

      objc_storeStrong(&v59, 0);
    }

    else
    {
      v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"Nil data present in PIR response"];
      v32 = [AMDMiscHelpers logAndCreateError:18 errorMessage:v60];
      v5 = v32;
      *v65 = v32;
      v67 = 0;
      v62 = 1;
      objc_storeStrong(&v60, 0);
    }

    objc_storeStrong(&v61, 0);
  }

  else
  {
    v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"Nil keyword present in PIR response"];
    v33 = [AMDMiscHelpers logAndCreateError:18 errorMessage:v63];
    v4 = v33;
    *v65 = v33;
    v67 = 0;
    v62 = 1;
    objc_storeStrong(&v63, 0);
  }

  objc_storeStrong(&v64, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v10 = v67;

  return v10;
}

@end