@interface HDClinicalIngestionFileImportOperation
- (HDClinicalIngestionFileImportOperation)initWithFileHandle:(id)handle;
- (void)main;
@end

@implementation HDClinicalIngestionFileImportOperation

- (HDClinicalIngestionFileImportOperation)initWithFileHandle:(id)handle
{
  handleCopy = handle;
  v8.receiver = self;
  v8.super_class = HDClinicalIngestionFileImportOperation;
  v5 = [(HDClinicalIngestionFileImportOperation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HDClinicalIngestionFileImportOperation *)v5 setFileHandle:handleCopy];
  }

  return v6;
}

- (void)main
{
  selfCopy = self;
  fileHandle = self->_fileHandle;
  _HKInitializeLogging();
  v4 = HKLogHealthRecords;
  if (fileHandle)
  {
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [(HDClinicalIngestionFileImportOperation *)selfCopy debugDescription];
      *buf = 138543362;
      v68 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ file import beginning", buf, 0xCu);
    }

    readDataToEndOfFile = [(NSFileHandle *)selfCopy->_fileHandle readDataToEndOfFile];
    if (readDataToEndOfFile)
    {
      v64 = 0;
      v8 = [NSJSONSerialization hk_JSONObjectFromFHIRData:readDataToEndOfFile options:0 error:&v64];
      v9 = v64;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    objc_opt_class();
    v63 = v9;
    v10 = HKSafeObject();
    v11 = v9;

    if (v10)
    {
      v12 = +[NSMutableArray array];
      v13 = [v10 objectForKeyedSubscript:@"resourceType"];
      v50 = v13;
      if (v13)
      {
        if ([v13 isEqualToString:@"Bundle"])
        {
          v14 = v10;
        }

        else
        {
          v75 = @"resource";
          v76 = v10;
          v38 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
          [v12 addObject:v38];

          v14 = 0;
        }
      }

      else
      {
        v48 = v11;
        v49 = readDataToEndOfFile;
        v51 = selfCopy;
        v15 = [v10 objectForKey:@"resources"];
        objc_opt_class();
        v47 = v15;
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = v8;
        }

        v17 = v16;

        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v46 = v17;
        obj = [v17 allValues];
        v18 = [obj countByEnumeratingWithState:&v59 objects:v74 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v60;
          v21 = &BiomeLibrary_ptr;
          do
          {
            v22 = 0;
            v52 = v19;
            do
            {
              if (*v60 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v59 + 1) + 8 * v22);
              v24 = v21[258];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v25 = v20;
                v57 = 0u;
                v58 = 0u;
                v55 = 0u;
                v56 = 0u;
                v26 = v23;
                v27 = [v26 countByEnumeratingWithState:&v55 objects:v73 count:16];
                if (v27)
                {
                  v28 = v27;
                  v29 = *v56;
                  do
                  {
                    for (i = 0; i != v28; i = i + 1)
                    {
                      if (*v56 != v29)
                      {
                        objc_enumerationMutation(v26);
                      }

                      v31 = *(*(&v55 + 1) + 8 * i);
                      v71 = @"resource";
                      v72 = v31;
                      v32 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
                      [v12 addObject:v32];
                    }

                    v28 = [v26 countByEnumeratingWithState:&v55 objects:v73 count:16];
                  }

                  while (v28);
                }

                v20 = v25;
                v21 = &BiomeLibrary_ptr;
                v19 = v52;
              }

              else
              {
                _HKInitializeLogging();
                v33 = HKLogHealthRecords;
                if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
                {
                  v34 = v33;
                  v35 = [(HDClinicalIngestionFileImportOperation *)v51 debugDescription];
                  v36 = objc_opt_class();
                  *buf = 138543618;
                  v68 = v35;
                  v69 = 2114;
                  v70 = v36;
                  v37 = v36;
                  _os_log_error_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%{public}@ invalid resource object array: %{public}@", buf, 0x16u);
                }
              }

              v22 = v22 + 1;
            }

            while (v22 != v19);
            v19 = [obj countByEnumeratingWithState:&v59 objects:v74 count:16];
          }

          while (v19);
        }

        v14 = 0;
        v8 = v46;
        selfCopy = v51;
        v11 = v48;
        readDataToEndOfFile = v49;
      }

      _HKInitializeLogging();
      v39 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
      {
        v40 = v39;
        v41 = [(HDClinicalIngestionFileImportOperation *)selfCopy debugDescription];
        v42 = [v12 count];
        *buf = 138543618;
        v68 = v41;
        v69 = 2048;
        v70 = v42;
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ found %ld resources in file", buf, 0x16u);
      }

      if (!v14 && v12)
      {
        v65[0] = @"resourceType";
        v65[1] = @"entry";
        v66[0] = @"Bundle";
        v66[1] = v12;
        v14 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:2];
      }

      if (v14)
      {
        v54 = v11;
        v43 = [NSJSONSerialization dataWithJSONObject:v14 options:0 error:&v54];
        v44 = v54;

        v11 = v44;
      }

      else
      {
        v43 = 0;
      }

      [(HDClinicalIngestionFileImportOperation *)selfCopy setDocumentData:v43];
      documentData = [(HDClinicalIngestionFileImportOperation *)selfCopy documentData];

      if (!documentData)
      {
        [(HDClinicalIngestionFileImportOperation *)selfCopy setOperationError:v11];
      }
    }

    else
    {
      [(HDClinicalIngestionFileImportOperation *)selfCopy setOperationError:v11];
    }
  }

  else if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEBUG))
  {
    sub_A5FA8(v4, selfCopy);
  }
}

@end