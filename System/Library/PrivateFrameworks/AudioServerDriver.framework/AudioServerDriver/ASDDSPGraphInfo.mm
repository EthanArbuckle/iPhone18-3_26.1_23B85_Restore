@interface ASDDSPGraphInfo
- (ASDDSPGraphInfo)initWithDictionary:(id)dictionary resourcePath:(id)path;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation ASDDSPGraphInfo

- (ASDDSPGraphInfo)initWithDictionary:(id)dictionary resourcePath:(id)path
{
  v60 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  pathCopy = path;
  v57.receiver = self;
  v57.super_class = ASDDSPGraphInfo;
  v8 = [(ASDDSPGraphInfo *)&v57 init];
  if (v8)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"Path"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [pathCopy stringByAppendingPathComponent:v9];
      path = v8->_path;
      v8->_path = v10;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"Text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v8->_text, v12);
    }

    v48 = v12;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"IncludePaths"];
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
    v28 = [dictionaryCopy objectForKeyedSubscript:@"Substitutions"];
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
          v33 = pathCopy;
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
              pathCopy = v33;
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
          pathCopy = v33;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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

  v9 = equalCopy;
  path = [(ASDDSPGraphInfo *)self path];
  if (path || ([(ASDDSPGraphInfo *)v9 path], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    path2 = [(ASDDSPGraphInfo *)self path];
    path3 = [(ASDDSPGraphInfo *)v9 path];
    if (([path2 isEqual:path3] & 1) == 0)
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

  text = [(ASDDSPGraphInfo *)self text];
  if (!text)
  {
    text2 = [(ASDDSPGraphInfo *)v9 text];
    if (!text2)
    {
      text2 = 0;
      v38 = 0;
      goto LABEL_21;
    }
  }

  v13 = v3;
  text3 = [(ASDDSPGraphInfo *)self text];
  text4 = [(ASDDSPGraphInfo *)v9 text];
  if ([text3 isEqual:text4])
  {
    v33 = text3;
    v38 = 1;
    v3 = v13;
    v6 = text4;
LABEL_21:
    includePaths = [(ASDDSPGraphInfo *)self includePaths];
    if (includePaths || ([(ASDDSPGraphInfo *)v9 includePaths], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v36 = path;
      v17 = text;
      v18 = path3;
      v19 = path2;
      v20 = v6;
      includePaths2 = [(ASDDSPGraphInfo *)self includePaths];
      includePaths3 = [(ASDDSPGraphInfo *)v9 includePaths];
      v35 = includePaths2;
      if (![includePaths2 isEqual:?])
      {
        v11 = 0;
        v6 = v20;
        path2 = v19;
        path3 = v18;
        text = v17;
        path = v36;
LABEL_36:

LABEL_37:
        if (!includePaths)
        {
        }

        if (v38)
        {
        }

        if (!text)
        {
        }

        if (!v40)
        {
          goto LABEL_45;
        }

        goto LABEL_44;
      }

      v32 = includePaths;
      v31 = 1;
      v6 = v20;
      path2 = v19;
      path3 = v18;
      text = v17;
      path = v36;
    }

    else
    {
      v32 = 0;
      v29 = 0;
      v31 = 0;
    }

    substitutions = [(ASDDSPGraphInfo *)self substitutions];
    if (substitutions || ([(ASDDSPGraphInfo *)v9 substitutions], (v27 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v30 = v6;
      v37 = v3;
      v23 = [(ASDDSPGraphInfo *)self substitutions:v27];
      substitutions2 = [(ASDDSPGraphInfo *)v9 substitutions];
      v11 = [v23 isEqual:substitutions2];

      if (substitutions)
      {

        v6 = v30;
        if (!v31)
        {
          v3 = v37;
          includePaths = v32;
          goto LABEL_37;
        }

        v3 = v37;
        includePaths = v32;
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

    includePaths = v32;
    if ((v31 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (text)
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
  if (!path)
  {
  }

LABEL_48:
  return v11;
}

- (unint64_t)hash
{
  path = [(ASDDSPGraphInfo *)self path];
  v4 = [path hash];
  text = [(ASDDSPGraphInfo *)self text];
  v6 = [text hash] ^ v4;
  includePaths = [(ASDDSPGraphInfo *)self includePaths];
  v8 = [includePaths hash];
  substitutions = [(ASDDSPGraphInfo *)self substitutions];
  v10 = v8 ^ [substitutions hash];

  return v6 ^ v10;
}

@end