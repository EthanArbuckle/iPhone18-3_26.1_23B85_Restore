@interface ASDAudioDeviceDSPDatabase
- (ASDAudioDeviceDSPDatabase)initWithDictionary:(id)a3 resourcePath:(id)a4 deviceUID:(id)a5;
- (id)dspConfigurationForDevice:(id)a3;
@end

@implementation ASDAudioDeviceDSPDatabase

- (ASDAudioDeviceDSPDatabase)initWithDictionary:(id)a3 resourcePath:(id)a4 deviceUID:(id)a5
{
  v91 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v85.receiver = self;
  v85.super_class = ASDAudioDeviceDSPDatabase;
  v11 = [(ASDAudioDeviceDSPDatabase *)&v85 init];
  if (v11)
  {
    p_isa = &v11->super.isa;
    v61 = v10;
    objc_storeStrong(&v11->_deviceUID, a5);
    obj = [MEMORY[0x277CBEB58] set];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v81 objects:v90 count:16];
    v62 = p_isa;
    if (v14)
    {
      v15 = v14;
      v16 = *v82;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v82 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v81 + 1) + 8 * i);
          v19 = [v13 objectForKeyedSubscript:v18];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || (v20 = [[ASDAudioDeviceDSPConfiguration alloc] initWithDictionary:v19 resourcePath:v9 name:v18]) == 0)
          {

            v49 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
            if (v49)
            {
              [(ASDAudioDeviceDSPDatabase *)v49 initWithDictionary:v50 resourcePath:v51 deviceUID:v52, v53, v54, v55, v56];
            }

            v22 = v62;
            v47 = 0;
            goto LABEL_43;
          }

          v21 = v20;
          [obj addObject:v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v81 objects:v90 count:16];
        p_isa = &v62->super.isa;
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v59 = v9;
    v60 = v8;

    objc_storeStrong(p_isa + 2, obj);
    v22 = [MEMORY[0x277CBEB58] set];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v23 = [p_isa dspConfigurations];
    v24 = [v23 countByEnumeratingWithState:&v77 objects:v89 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v78;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v78 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v77 + 1) + 8 * j);
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          v29 = [v28 underlyingDeviceProperties];
          v30 = [v29 countByEnumeratingWithState:&v73 objects:v88 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v74;
            do
            {
              for (k = 0; k != v31; ++k)
              {
                if (*v74 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v34 = [*(*(&v73 + 1) + 8 * k) address];
                [v22 addObject:v34];
              }

              v31 = [v29 countByEnumeratingWithState:&v73 objects:v88 count:16];
            }

            while (v31);
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v77 objects:v89 count:16];
      }

      while (v25);
    }

    objc_storeStrong(&v62->_referencedUnderlyingDeviceProperties, v22);
    v35 = [MEMORY[0x277CBEB58] set];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v64 = [(ASDAudioDeviceDSPDatabase *)v62 dspConfigurations];
    v36 = [v64 countByEnumeratingWithState:&v69 objects:v87 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v70;
      do
      {
        for (m = 0; m != v37; ++m)
        {
          if (*v70 != v38)
          {
            objc_enumerationMutation(v64);
          }

          v40 = *(*(&v69 + 1) + 8 * m);
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v41 = [v40 dspDeviceProperties];
          v42 = [v41 countByEnumeratingWithState:&v65 objects:v86 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v66;
            do
            {
              for (n = 0; n != v43; ++n)
              {
                if (*v66 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                v46 = [*(*(&v65 + 1) + 8 * n) address];
                [(NSSet *)v35 addObject:v46];
              }

              v43 = [v41 countByEnumeratingWithState:&v65 objects:v86 count:16];
            }

            while (v43);
          }
        }

        v37 = [v64 countByEnumeratingWithState:&v69 objects:v87 count:16];
      }

      while (v37);
    }

    v47 = v62;
    referencedDSPDeviceProperties = v62->_referencedDSPDeviceProperties;
    v62->_referencedDSPDeviceProperties = v35;

    v9 = v59;
    v8 = v60;
LABEL_43:
    v10 = v61;
  }

  else
  {
    v47 = 0;
  }

  v57 = *MEMORY[0x277D85DE8];
  return v47;
}

- (id)dspConfigurationForDevice:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [(ASDAudioDeviceDSPDatabase *)self dspConfigurations];
  v30 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v30)
  {
    v29 = *v40;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v40 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v39 + 1) + 8 * v5);
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v7 = [v6 underlyingDeviceProperties];
      v8 = [v7 countByEnumeratingWithState:&v35 objects:v44 count:16];
      v9 = v6;
      if (v8)
      {
        v10 = v8;
        v11 = *v36;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v36 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v35 + 1) + 8 * i);
            v14 = [v13 address];
            v15 = [v4 getProperty:v14];

            v16 = [v13 value];
            LOBYTE(v14) = [v15 isEqual:v16];

            if ((v14 & 1) == 0)
            {

              v9 = 0;
              goto LABEL_16;
            }
          }

          v10 = [v7 countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }

        v9 = v6;
      }

LABEL_16:

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v17 = [v6 dspDeviceProperties];
      v18 = [v17 countByEnumeratingWithState:&v31 objects:v43 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v32;
        while (2)
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v32 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v31 + 1) + 8 * j);
            v23 = [v22 address];
            v24 = [v4 getProperty:v23];

            v25 = [v22 value];
            LOBYTE(v23) = [v24 isEqual:v25];

            if ((v23 & 1) == 0)
            {

              goto LABEL_27;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v31 objects:v43 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      if (v9)
      {
        break;
      }

LABEL_27:
      if (++v5 == v30)
      {
        v30 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
        if (v30)
        {
          goto LABEL_3;
        }

        goto LABEL_29;
      }
    }
  }

  else
  {
LABEL_29:
    v9 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v9;
}

@end