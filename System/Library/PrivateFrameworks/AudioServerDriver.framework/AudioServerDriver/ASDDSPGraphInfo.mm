@interface ASDDSPGraphInfo
- (ASDDSPGraphInfo)initWithDictionary:(id)a3 resourcePath:(id)a4;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation ASDDSPGraphInfo

- (ASDDSPGraphInfo)initWithDictionary:(id)a3 resourcePath:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v57.receiver = self;
  v57.super_class = ASDDSPGraphInfo;
  v8 = [(ASDDSPGraphInfo *)&v57 init];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"Path"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v7 stringByAppendingPathComponent:v9];
      path = v8->_path;
      v8->_path = v10;
    }

    v12 = [v6 objectForKeyedSubscript:@"Text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v8->_text, v12);
    }

    v48 = v12;
    v13 = [v6 objectForKeyedSubscript:@"IncludePaths"];
    objc_opt_class();
    obj = v13;
    if (objc_opt_isKindOfClass())
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v53 objects:v59 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v54;
        while (2)
        {
          v18 = 0;
          do
          {
            if (*v54 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v53 + 1) + 8 * v18);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v20 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              v13 = obj;
              if (v20)
              {
                [(ASDDSPGraphInfo *)v20 initWithDictionary:v21 resourcePath:v22, v23, v24, v25, v26, v27];
              }

              goto LABEL_18;
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v53 objects:v59 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      v13 = obj;
      objc_storeStrong(&v8->_includePaths, obj);
    }

LABEL_18:
    v28 = [v6 objectForKeyedSubscript:@"Substitutions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v9;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v29 = v28;
      v30 = [v29 countByEnumeratingWithState:&v49 objects:v58 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v50;
        while (2)
        {
          v33 = v7;
          v34 = 0;
          do
          {
            if (*v50 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v35 = *(*(&v49 + 1) + 8 * v34);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v36 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
              v7 = v33;
              v9 = v46;
              v13 = obj;
              if (v36)
              {
                [(ASDDSPGraphInfo *)v36 initWithDictionary:v37 resourcePath:v38, v39, v40, v41, v42, v43];
              }

              goto LABEL_30;
            }

            ++v34;
          }

          while (v31 != v34);
          v31 = [v29 countByEnumeratingWithState:&v49 objects:v58 count:16];
          v7 = v33;
          if (v31)
          {
            continue;
          }

          break;
        }
      }

      objc_storeStrong(&v8->_substitutions, v28);
      v9 = v46;
      v13 = obj;
    }

LABEL_30:
  }

  v44 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  if (self == v8)
  {
    v11 = 1;
    goto LABEL_48;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    goto LABEL_48;
  }

  v9 = v8;
  v10 = [(ASDDSPGraphInfo *)self path];
  if (v10 || ([(ASDDSPGraphInfo *)v9 path], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = [(ASDDSPGraphInfo *)self path];
    v5 = [(ASDDSPGraphInfo *)v9 path];
    if (([v4 isEqual:v5] & 1) == 0)
    {

      v11 = 0;
      goto LABEL_45;
    }

    v40 = 1;
  }

  else
  {
    v40 = 0;
  }

  v12 = [(ASDDSPGraphInfo *)self text];
  if (!v12)
  {
    v39 = [(ASDDSPGraphInfo *)v9 text];
    if (!v39)
    {
      v39 = 0;
      v38 = 0;
      goto LABEL_21;
    }
  }

  v13 = v3;
  v14 = [(ASDDSPGraphInfo *)self text];
  v15 = [(ASDDSPGraphInfo *)v9 text];
  if ([v14 isEqual:v15])
  {
    v33 = v14;
    v38 = 1;
    v3 = v13;
    v6 = v15;
LABEL_21:
    v16 = [(ASDDSPGraphInfo *)self includePaths];
    if (v16 || ([(ASDDSPGraphInfo *)v9 includePaths], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v36 = v10;
      v17 = v12;
      v18 = v5;
      v19 = v4;
      v20 = v6;
      v21 = [(ASDDSPGraphInfo *)self includePaths];
      v34 = [(ASDDSPGraphInfo *)v9 includePaths];
      v35 = v21;
      if (![v21 isEqual:?])
      {
        v11 = 0;
        v6 = v20;
        v4 = v19;
        v5 = v18;
        v12 = v17;
        v10 = v36;
LABEL_36:

LABEL_37:
        if (!v16)
        {
        }

        if (v38)
        {
        }

        if (!v12)
        {
        }

        if (!v40)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }

      v32 = v16;
      v31 = 1;
      v6 = v20;
      v4 = v19;
      v5 = v18;
      v12 = v17;
      v10 = v36;
    }

    else
    {
      v32 = 0;
      v29 = 0;
      v31 = 0;
    }

    v22 = [(ASDDSPGraphInfo *)self substitutions];
    if (v22 || ([(ASDDSPGraphInfo *)v9 substitutions], (v27 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v30 = v6;
      v37 = v3;
      v23 = [(ASDDSPGraphInfo *)self substitutions:v27];
      v24 = [(ASDDSPGraphInfo *)v9 substitutions];
      v11 = [v23 isEqual:v24];

      if (v22)
      {

        v6 = v30;
        if (!v31)
        {
          v3 = v37;
          v16 = v32;
          goto LABEL_37;
        }

        v3 = v37;
        v16 = v32;
        goto LABEL_36;
      }

      v3 = v37;
      v6 = v30;
      v25 = v28;
    }

    else
    {
      v25 = 0;
      v11 = 1;
    }

    v16 = v32;
    if ((v31 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v12)
  {
  }

  else
  {
  }

  v11 = 0;
  v3 = v13;
  if (v40)
  {
LABEL_44:
  }

LABEL_45:
  if (!v10)
  {
  }

LABEL_48:
  return v11;
}

- (unint64_t)hash
{
  v3 = [(ASDDSPGraphInfo *)self path];
  v4 = [v3 hash];
  v5 = [(ASDDSPGraphInfo *)self text];
  v6 = [v5 hash] ^ v4;
  v7 = [(ASDDSPGraphInfo *)self includePaths];
  v8 = [v7 hash];
  v9 = [(ASDDSPGraphInfo *)self substitutions];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

@end