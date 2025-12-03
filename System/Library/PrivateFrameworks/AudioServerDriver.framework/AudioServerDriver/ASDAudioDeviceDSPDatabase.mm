@interface ASDAudioDeviceDSPDatabase
- (ASDAudioDeviceDSPDatabase)initWithDictionary:(id)dictionary resourcePath:(id)path deviceUID:(id)d;
- (id)dspConfigurationForDevice:(id)device;
@end

@implementation ASDAudioDeviceDSPDatabase

- (ASDAudioDeviceDSPDatabase)initWithDictionary:(id)dictionary resourcePath:(id)path deviceUID:(id)d
{
  v91 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  pathCopy = path;
  dCopy = d;
  v85.receiver = self;
  v85.super_class = ASDAudioDeviceDSPDatabase;
  v11 = [(ASDAudioDeviceDSPDatabase *)&v85 init];
  if (v11)
  {
    p_isa = &v11->super.isa;
    v61 = dCopy;
    objc_storeStrong(&v11->_deviceUID, d);
    obj = [MEMORY[0x277CBEB58] set];
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v13 = dictionaryCopy;
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
          if ((objc_opt_isKindOfClass() & 1) == 0 || (v20 = [[ASDAudioDeviceDSPConfiguration alloc] initWithDictionary:v19 resourcePath:pathCopy name:v18]) == 0)
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

    v59 = pathCopy;
    v60 = dictionaryCopy;

    objc_storeStrong(p_isa + 2, obj);
    v22 = [MEMORY[0x277CBEB58] set];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    dspConfigurations = [p_isa dspConfigurations];
    v24 = [dspConfigurations countByEnumeratingWithState:&v77 objects:v89 count:16];
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
            objc_enumerationMutation(dspConfigurations);
          }

          v28 = *(*(&v77 + 1) + 8 * j);
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v76 = 0u;
          underlyingDeviceProperties = [v28 underlyingDeviceProperties];
          v30 = [underlyingDeviceProperties countByEnumeratingWithState:&v73 objects:v88 count:16];
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
                  objc_enumerationMutation(underlyingDeviceProperties);
                }

                address = [*(*(&v73 + 1) + 8 * k) address];
                [v22 addObject:address];
              }

              v31 = [underlyingDeviceProperties countByEnumeratingWithState:&v73 objects:v88 count:16];
            }

            while (v31);
          }
        }

        v25 = [dspConfigurations countByEnumeratingWithState:&v77 objects:v89 count:16];
      }

      while (v25);
    }

    objc_storeStrong(&v62->_referencedUnderlyingDeviceProperties, v22);
    v35 = [MEMORY[0x277CBEB58] set];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    dspConfigurations2 = [(ASDAudioDeviceDSPDatabase *)v62 dspConfigurations];
    v36 = [dspConfigurations2 countByEnumeratingWithState:&v69 objects:v87 count:16];
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
            objc_enumerationMutation(dspConfigurations2);
          }

          v40 = *(*(&v69 + 1) + 8 * m);
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          dspDeviceProperties = [v40 dspDeviceProperties];
          v42 = [dspDeviceProperties countByEnumeratingWithState:&v65 objects:v86 count:16];
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
                  objc_enumerationMutation(dspDeviceProperties);
                }

                address2 = [*(*(&v65 + 1) + 8 * n) address];
                [(NSSet *)v35 addObject:address2];
              }

              v43 = [dspDeviceProperties countByEnumeratingWithState:&v65 objects:v86 count:16];
            }

            while (v43);
          }
        }

        v37 = [dspConfigurations2 countByEnumeratingWithState:&v69 objects:v87 count:16];
      }

      while (v37);
    }

    v47 = v62;
    referencedDSPDeviceProperties = v62->_referencedDSPDeviceProperties;
    v62->_referencedDSPDeviceProperties = v35;

    pathCopy = v59;
    dictionaryCopy = v60;
LABEL_43:
    dCopy = v61;
  }

  else
  {
    v47 = 0;
  }

  v57 = *MEMORY[0x277D85DE8];
  return v47;
}

- (id)dspConfigurationForDevice:(id)device
{
  v46 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
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
      underlyingDeviceProperties = [v6 underlyingDeviceProperties];
      v8 = [underlyingDeviceProperties countByEnumeratingWithState:&v35 objects:v44 count:16];
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
              objc_enumerationMutation(underlyingDeviceProperties);
            }

            v13 = *(*(&v35 + 1) + 8 * i);
            address = [v13 address];
            v15 = [deviceCopy getProperty:address];

            value = [v13 value];
            LOBYTE(address) = [v15 isEqual:value];

            if ((address & 1) == 0)
            {

              v9 = 0;
              goto LABEL_16;
            }
          }

          v10 = [underlyingDeviceProperties countByEnumeratingWithState:&v35 objects:v44 count:16];
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
      dspDeviceProperties = [v6 dspDeviceProperties];
      v18 = [dspDeviceProperties countByEnumeratingWithState:&v31 objects:v43 count:16];
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
              objc_enumerationMutation(dspDeviceProperties);
            }

            v22 = *(*(&v31 + 1) + 8 * j);
            address2 = [v22 address];
            v24 = [deviceCopy getProperty:address2];

            value2 = [v22 value];
            LOBYTE(address2) = [v24 isEqual:value2];

            if ((address2 & 1) == 0)
            {

              goto LABEL_27;
            }
          }

          v19 = [dspDeviceProperties countByEnumeratingWithState:&v31 objects:v43 count:16];
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