@interface _LTLocaleModalities
- (_LTLocaleModalities)initWithCoder:(id)a3;
- (_LTLocaleModalities)initWithModalitiesPerLocale:(id)a3;
- (_LTLocaleModalities)initWithSupportedLocales:(id)a3 asrLocales:(id)a4 ttsLocales:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)modalitiesForLocale:(id)a3;
@end

@implementation _LTLocaleModalities

- (_LTLocaleModalities)initWithSupportedLocales:(id)a3 asrLocales:(id)a4 ttsLocales:(id)a5
{
  v64 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v58.receiver = self;
  v58.super_class = _LTLocaleModalities;
  v11 = [(_LTLocaleModalities *)&v58 init];
  v12 = v11;
  if (v11)
  {
    v45 = v10;
    v42 = v11;
    v13 = [MEMORY[0x277CBEB38] dictionary];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v54 objects:v63 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v55;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v55 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [v13 setObject:&unk_284DC9990 forKeyedSubscript:*(*(&v54 + 1) + 8 * i)];
        }

        v16 = [v14 countByEnumeratingWithState:&v54 objects:v63 count:16];
      }

      while (v16);
    }

    v44 = v8;

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v43 = v9;
    v19 = v9;
    v20 = [v19 countByEnumeratingWithState:&v50 objects:v62 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v51;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v51 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v50 + 1) + 8 * j);
          v25 = [v13 objectForKeyedSubscript:v24];
          if (!v25)
          {
            v26 = _LTOSLogAssets();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
            {
              *buf = 138543362;
              v61 = v24;
              _os_log_fault_impl(&dword_23AAF5000, v26, OS_LOG_TYPE_FAULT, "ASR locale is not present in supported locale list, %{public}@", buf, 0xCu);
            }
          }

          v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v25, "integerValue") | 1}];
          [v13 setObject:v27 forKeyedSubscript:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v50 objects:v62 count:16];
      }

      while (v21);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v28 = v45;
    v29 = [v28 countByEnumeratingWithState:&v46 objects:v59 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v47;
      do
      {
        for (k = 0; k != v30; ++k)
        {
          if (*v47 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = *(*(&v46 + 1) + 8 * k);
          v34 = [v13 objectForKeyedSubscript:v33];
          if (!v34)
          {
            v35 = _LTOSLogAssets();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
            {
              *buf = 138543362;
              v61 = v33;
              _os_log_fault_impl(&dword_23AAF5000, v35, OS_LOG_TYPE_FAULT, "TTS locale is not present in supported locale list, %{public}@", buf, 0xCu);
            }
          }

          v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v34, "integerValue") | 2}];
          [v13 setObject:v36 forKeyedSubscript:v33];
        }

        v30 = [v28 countByEnumeratingWithState:&v46 objects:v59 count:16];
      }

      while (v30);
    }

    v37 = [v13 copy];
    v12 = v42;
    modalitiesPerLocale = v42->_modalitiesPerLocale;
    v42->_modalitiesPerLocale = v37;

    v39 = v42;
    v9 = v43;
    v8 = v44;
    v10 = v45;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v12;
}

- (_LTLocaleModalities)initWithModalitiesPerLocale:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _LTLocaleModalities;
  v5 = [(_LTLocaleModalities *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    modalitiesPerLocale = v5->_modalitiesPerLocale;
    v5->_modalitiesPerLocale = v6;

    v8 = v5;
  }

  return v5;
}

- (unint64_t)modalitiesForLocale:(id)a3
{
  v3 = [(NSDictionary *)self->_modalitiesPerLocale objectForKeyedSubscript:a3];
  v4 = [v3 integerValue];

  return v4;
}

- (_LTLocaleModalities)initWithCoder:(id)a3
{
  v15[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _LTLocaleModalities;
  v5 = [(_LTLocaleModalities *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"modalitiesPerLocale"];
    modalitiesPerLocale = v5->_modalitiesPerLocale;
    v5->_modalitiesPerLocale = v9;

    v11 = v5;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_LTLocaleModalities alloc];
  modalitiesPerLocale = self->_modalitiesPerLocale;

  return [(_LTLocaleModalities *)v4 initWithModalitiesPerLocale:modalitiesPerLocale];
}

- (id)debugDescription
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  [v3 appendString:@"{\n"];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_modalitiesPerLocale;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 _ltLocaleIdentifier];
        v11 = [(NSDictionary *)self->_modalitiesPerLocale objectForKeyedSubscript:v9];
        [v3 appendFormat:@"\t%@: %@, \n", v10, v11, v14];
      }

      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [v3 appendString:@"}"];
  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

@end