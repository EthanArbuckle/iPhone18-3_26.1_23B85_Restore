@interface ASTUploadFilesResult
+ (id)resultFromSource:(id)a3 andUploadDictionaries:(id)a4;
- (ASTUploadFilesResult)initWithCoder:(id)a3;
- (ASTUploadFilesResult)initWithSource:(id)a3 andCerts:(id)a4 andFiles:(id)a5;
- (BOOL)isEmpty;
- (id)generatePayload;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASTUploadFilesResult

+ (id)resultFromSource:(id)a3 andUploadDictionaries:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v5 = a4;
  v28 = [MEMORY[0x277CBEB58] set];
  v27 = [MEMORY[0x277CBEB18] array];
  v31 = [MEMORY[0x277CBEB18] array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v5;
  v32 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v32)
  {
    v30 = *v35;
    do
    {
      v6 = 0;
      do
      {
        if (*v35 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v34 + 1) + 8 * v6);
        v8 = [v7 objectForKeyedSubscript:@"cert"];
        if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v9 = [v8 objectForKeyedSubscript:@"certString"];
          if (v9)
          {
            v10 = v9;
            objc_opt_class();
            v33 = v10;
            if ((objc_opt_isKindOfClass() & 1) != 0 && ([v28 containsObject:v10] & 1) == 0)
            {
              v11 = [v8 objectForKeyedSubscript:@"pubKeyDigest"];
              v12 = [v8 objectForKeyedSubscript:@"sigAlgo"];
              v13 = [[ASTUploadFilesCertsEntry alloc] initWithCert:v10 andPubKeyDigest:v11 andSigAlgo:v12];
              [v28 addObject:v10];
              [v27 addObject:v13];
            }
          }

          else
          {
            v33 = 0;
          }
        }

        else
        {
          v33 = &stru_2852CD800;
        }

        v14 = [v7 objectForKeyedSubscript:@"id"];
        v15 = [v7 objectForKeyedSubscript:@"name"];
        v16 = [v7 objectForKeyedSubscript:@"sig"];
        v17 = [v7 objectForKeyedSubscript:@"pubKeyDigest"];
        v18 = [v7 objectForKeyedSubscript:@"status"];
        v19 = [v7 objectForKeyedSubscript:@"size"];
        v20 = [v7 objectForKeyedSubscript:@"uploadUrl"];
        v21 = [[ASTUploadFilesItemEntry alloc] initWithId:v14 andName:v15 andSig:v16 andPubKeyDigest:v17 andStatus:v18 andSize:v19 andUploadUrl:v20];
        [v31 addObject:v21];

        ++v6;
      }

      while (v32 != v6);
      v22 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      v32 = v22;
    }

    while (v22);
  }

  v23 = [[ASTUploadFilesResult alloc] initWithSource:v26 andCerts:v27 andFiles:v31];
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (ASTUploadFilesResult)initWithSource:(id)a3 andCerts:(id)a4 andFiles:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ASTUploadFilesResult;
  v12 = [(ASTUploadFilesResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_source, a3);
    objc_storeStrong(&v13->_certs, a4);
    objc_storeStrong(&v13->_files, a5);
  }

  return v13;
}

- (id)generatePayload
{
  v59 = *MEMORY[0x277D85DE8];
  v35 = [MEMORY[0x277CBEB18] array];
  v34 = [MEMORY[0x277CBEB18] array];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v31 = self;
  v3 = [(ASTUploadFilesResult *)self certs];
  v4 = [v3 countByEnumeratingWithState:&v47 objects:v58 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v48;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v48 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v47 + 1) + 8 * i);
        v9 = [v8 sigAlgo];
        if (v9)
        {
          [v8 sigAlgo];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v10 = ;

        v56[0] = @"cert";
        v11 = [v8 certString];
        v57[0] = v11;
        v56[1] = @"pubKeyDigest";
        v12 = [v8 pubKeyDigest];
        v56[2] = @"sigAlgo";
        v57[1] = v12;
        v57[2] = v10;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:3];

        [v35 addObject:v13];
      }

      v5 = [v3 countByEnumeratingWithState:&v47 objects:v58 count:16];
    }

    while (v5);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [(ASTUploadFilesResult *)v31 files];
  v36 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
  if (v36)
  {
    v33 = *v44;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v44 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v43 + 1) + 8 * j);
        v53[0] = @"id";
        v42 = [v15 uploadId];
        if (v42)
        {
          [v15 uploadId];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v41 = ;
        v54[0] = v41;
        v53[1] = @"name";
        v40 = [v15 name];
        if (v40)
        {
          [v15 name];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v39 = ;
        v54[1] = v39;
        v53[2] = @"sig";
        v38 = [v15 sig];
        if (v38)
        {
          [v15 sig];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v37 = ;
        v54[2] = v37;
        v53[3] = @"pubKeyDigest";
        v16 = [v15 pubKeyDigest];
        if (v16)
        {
          [v15 pubKeyDigest];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v17 = ;
        v54[3] = v17;
        v53[4] = @"status";
        v18 = [v15 status];
        if (v18)
        {
          [v15 status];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v19 = ;
        v54[4] = v19;
        v53[5] = @"size";
        v20 = [v15 size];
        if (v20)
        {
          [v15 size];
        }

        else
        {
          [MEMORY[0x277CCABB0] numberWithLong:0];
        }
        v21 = ;
        v54[5] = v21;
        v53[6] = @"uploadUrl";
        v22 = [v15 uploadUrl];
        if (v22)
        {
          [v15 uploadUrl];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v23 = ;
        v54[6] = v23;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:7];

        [v34 addObject:v24];
      }

      v36 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v36);
  }

  v51[0] = @"source";
  v25 = [(ASTUploadFilesResult *)v31 source];
  v52[0] = v25;
  v51[1] = @"certs";
  v26 = [v35 copy];
  v52[1] = v26;
  v51[2] = @"files";
  v27 = [v34 copy];
  v52[2] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (BOOL)isEmpty
{
  v2 = [(ASTUploadFilesResult *)self files];
  v3 = [v2 count] == 0;

  return v3;
}

- (ASTUploadFilesResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASTUploadFilesResult *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"certs"];
    certs = v5->_certs;
    v5->_certs = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"files"];
    files = v5->_files;
    v5->_files = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASTUploadFilesResult *)self certs];
  [v4 encodeObject:v5 forKey:@"certs"];

  v6 = [(ASTUploadFilesResult *)self files];
  [v4 encodeObject:v6 forKey:@"files"];
}

@end