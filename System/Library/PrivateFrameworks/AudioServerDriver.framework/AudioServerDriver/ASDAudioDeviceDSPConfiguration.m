@interface ASDAudioDeviceDSPConfiguration
- (ASDAudioDeviceDSPConfiguration)initWithDictionary:(id)a3 resourcePath:(id)a4 name:(id)a5;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation ASDAudioDeviceDSPConfiguration

- (ASDAudioDeviceDSPConfiguration)initWithDictionary:(id)a3 resourcePath:(id)a4 name:(id)a5
{
  v97 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v92.receiver = self;
  v92.super_class = ASDAudioDeviceDSPConfiguration;
  v11 = [(ASDAudioDeviceDSPConfiguration *)&v92 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_65;
  }

  objc_storeStrong(&v11->_name, a5);
  v13 = [MEMORY[0x277CBEB58] set];
  v14 = [MEMORY[0x277CBEB58] set];
  obj = [MEMORY[0x277CBEB18] array];
  v15 = [MEMORY[0x277CBEB18] array];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v88 objects:v96 count:16];
  if (!v17)
  {

LABEL_63:
    objc_storeStrong(&v12->_underlyingDeviceProperties, v13);
    objc_storeStrong(&v12->_dspDeviceProperties, v14);
    v61 = obj;
    objc_storeStrong(&v12->_inputDSP, obj);
    objc_storeStrong(&v12->_outputDSP, v15);
    goto LABEL_64;
  }

  v18 = v17;
  v74 = v14;
  v75 = v13;
  v64 = v12;
  v65 = v10;
  v66 = v8;
  v19 = 1;
  v72 = v15;
  v73 = *v89;
  v20 = obj;
  v71 = v16;
  v68 = v9;
  do
  {
    v21 = 0;
    v69 = v18;
    do
    {
      if (*v89 != v73)
      {
        objc_enumerationMutation(v16);
      }

      v22 = *(*(&v88 + 1) + 8 * v21);
      if (([v22 isEqualToString:{@"UnderlyingDeviceProperties", v64, v65, v66}] & 1) != 0 || objc_msgSend(v22, "isEqualToString:", @"DSPDeviceProperties"))
      {
        v23 = [v16 objectForKeyedSubscript:v22];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_58;
        }

        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v24 = v23;
        v25 = [v24 countByEnumeratingWithState:&v84 objects:v95 count:16];
        if (v25)
        {
          v26 = v25;
          v67 = v19;
          v27 = *v85;
          while (2)
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v85 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v84 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_25;
              }

              v30 = [[ASDPropertyAddress alloc] initWithDictionary:v29];
              v31 = [ASDProperty alloc];
              v32 = [v29 objectForKeyedSubscript:@"Value"];
              v33 = [(ASDProperty *)v31 initWithAddress:v30 value:v32];

              v34 = [(ASDProperty *)v33 address];
              if (!v34 || (v35 = v34, [(ASDProperty *)v33 value], v36 = objc_claimAutoreleasedReturnValue(), v36, v35, !v36))
              {

LABEL_25:
                v19 = 0;
                v9 = v68;
                v18 = v69;
                v20 = obj;
                v16 = v71;
                goto LABEL_26;
              }

              v37 = [v22 isEqualToString:@"UnderlyingDeviceProperties"];
              v38 = v75;
              if (v37 & 1) != 0 || (v39 = [v22 isEqualToString:@"DSPDeviceProperties"], v38 = v74, (v39))
              {
                [v38 addObject:v33];
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v84 objects:v95 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }

          v9 = v68;
          v18 = v69;
          v20 = obj;
          v16 = v71;
          v19 = v67;
        }

        goto LABEL_26;
      }

      if ([v22 isEqualToString:@"Input"])
      {
        v23 = [v16 objectForKeyedSubscript:v22];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_58;
        }

        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v24 = v23;
        v40 = [v24 countByEnumeratingWithState:&v80 objects:v94 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = v19;
          v43 = *v81;
LABEL_33:
          v44 = 0;
          while (1)
          {
            if (*v81 != v43)
            {
              objc_enumerationMutation(v24);
            }

            v45 = *(*(&v80 + 1) + 8 * v44);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_53;
            }

            v19 = [[ASDStreamDSPConfiguration alloc] initWithDictionary:v45 resourcePath:v9];
            if (!v19)
            {
              goto LABEL_54;
            }

            [v20 addObject:v19];

            if (v41 == ++v44)
            {
              v41 = [v24 countByEnumeratingWithState:&v80 objects:v94 count:16];
              if (v41)
              {
                goto LABEL_33;
              }

              goto LABEL_52;
            }
          }
        }

        goto LABEL_26;
      }

      if ([v22 isEqualToString:@"Output"])
      {
        v23 = [v16 objectForKeyedSubscript:v22];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
LABEL_58:

          v10 = v65;
          v8 = v66;
          v12 = v64;
          v14 = v74;
          v13 = v75;
          v15 = v72;
          goto LABEL_59;
        }

        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v24 = v23;
        v46 = [v24 countByEnumeratingWithState:&v76 objects:v93 count:16];
        if (v46)
        {
          v47 = v46;
          v42 = v19;
          v48 = *v77;
LABEL_45:
          v49 = 0;
          while (1)
          {
            if (*v77 != v48)
            {
              objc_enumerationMutation(v24);
            }

            v50 = *(*(&v76 + 1) + 8 * v49);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            v19 = [[ASDStreamDSPConfiguration alloc] initWithDictionary:v50 resourcePath:v9];
            if (!v19)
            {
              goto LABEL_54;
            }

            [v72 addObject:v19];

            if (v47 == ++v49)
            {
              v47 = [v24 countByEnumeratingWithState:&v76 objects:v93 count:16];
              if (v47)
              {
                goto LABEL_45;
              }

LABEL_52:
              v16 = v71;
              v19 = v42;
              goto LABEL_26;
            }
          }

LABEL_53:
          v19 = 0;
LABEL_54:
          v16 = v71;
        }

LABEL_26:
      }

      ++v21;
    }

    while (v21 != v18);
    v51 = [v16 countByEnumeratingWithState:&v88 objects:v96 count:16];
    v18 = v51;
  }

  while (v51);

  v52 = v19;
  v10 = v65;
  v8 = v66;
  v12 = v64;
  v14 = v74;
  v13 = v75;
  v15 = v72;
  if (v52)
  {
    goto LABEL_63;
  }

LABEL_59:
  v53 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (v53)
  {
    [(ASDAudioDeviceDSPConfiguration *)v53 initWithDictionary:v54 resourcePath:v55 name:v56, v57, v58, v59, v60];
  }

  v12 = 0;
  v61 = obj;
LABEL_64:

LABEL_65:
  v62 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ASDAudioDeviceDSPConfiguration *)v5 name];
      v7 = [(ASDAudioDeviceDSPConfiguration *)self name];
      if ([v6 isEqual:v7])
      {
        v8 = [(ASDAudioDeviceDSPConfiguration *)v5 underlyingDeviceProperties];
        v9 = [(ASDAudioDeviceDSPConfiguration *)self underlyingDeviceProperties];
        if ([v8 isEqual:v9])
        {
          v10 = [(ASDAudioDeviceDSPConfiguration *)v5 dspDeviceProperties];
          v11 = [(ASDAudioDeviceDSPConfiguration *)self dspDeviceProperties];
          if ([v10 isEqual:v11])
          {
            v12 = [(ASDAudioDeviceDSPConfiguration *)v5 inputDSP];
            v13 = [(ASDAudioDeviceDSPConfiguration *)self inputDSP];
            v20 = v12;
            v14 = v12;
            v15 = v13;
            if ([v14 isEqual:v13])
            {
              v19 = [(ASDAudioDeviceDSPConfiguration *)v5 outputDSP];
              v18 = [(ASDAudioDeviceDSPConfiguration *)self outputDSP];
              v16 = [v19 isEqual:v18];
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [(ASDAudioDeviceDSPConfiguration *)self name];
  v4 = [v3 hash];
  v5 = [(ASDAudioDeviceDSPConfiguration *)self underlyingDeviceProperties];
  v6 = [v5 hash] ^ v4;
  v7 = [(ASDAudioDeviceDSPConfiguration *)self dspDeviceProperties];
  v8 = [v7 hash];
  v9 = [(ASDAudioDeviceDSPConfiguration *)self inputDSP];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(ASDAudioDeviceDSPConfiguration *)self outputDSP];
  v12 = [v11 hash];

  return v10 ^ v12;
}

@end