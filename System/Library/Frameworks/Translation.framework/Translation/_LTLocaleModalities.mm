@interface _LTLocaleModalities
- (_LTLocaleModalities)initWithCoder:(id)coder;
- (_LTLocaleModalities)initWithModalitiesPerLocale:(id)locale;
- (_LTLocaleModalities)initWithSupportedLocales:(id)locales asrLocales:(id)asrLocales ttsLocales:(id)ttsLocales;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)modalitiesForLocale:(id)locale;
@end

@implementation _LTLocaleModalities

- (_LTLocaleModalities)initWithSupportedLocales:(id)locales asrLocales:(id)asrLocales ttsLocales:(id)ttsLocales
{
  v64 = *MEMORY[0x277D85DE8];
  localesCopy = locales;
  asrLocalesCopy = asrLocales;
  ttsLocalesCopy = ttsLocales;
  v58.receiver = self;
  v58.super_class = _LTLocaleModalities;
  v11 = [(_LTLocaleModalities *)&v58 init];
  v12 = v11;
  if (v11)
  {
    v45 = ttsLocalesCopy;
    v42 = v11;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v14 = localesCopy;
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

          [dictionary setObject:&unk_284DC9990 forKeyedSubscript:*(*(&v54 + 1) + 8 * i)];
        }

        v16 = [v14 countByEnumeratingWithState:&v54 objects:v63 count:16];
      }

      while (v16);
    }

    v44 = localesCopy;

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v43 = asrLocalesCopy;
    v19 = asrLocalesCopy;
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
          v25 = [dictionary objectForKeyedSubscript:v24];
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
          [dictionary setObject:v27 forKeyedSubscript:v24];
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
          v34 = [dictionary objectForKeyedSubscript:v33];
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
          [dictionary setObject:v36 forKeyedSubscript:v33];
        }

        v30 = [v28 countByEnumeratingWithState:&v46 objects:v59 count:16];
      }

      while (v30);
    }

    v37 = [dictionary copy];
    v12 = v42;
    modalitiesPerLocale = v42->_modalitiesPerLocale;
    v42->_modalitiesPerLocale = v37;

    v39 = v42;
    asrLocalesCopy = v43;
    localesCopy = v44;
    ttsLocalesCopy = v45;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v12;
}

- (_LTLocaleModalities)initWithModalitiesPerLocale:(id)locale
{
  localeCopy = locale;
  v10.receiver = self;
  v10.super_class = _LTLocaleModalities;
  v5 = [(_LTLocaleModalities *)&v10 init];
  if (v5)
  {
    v6 = [localeCopy copy];
    modalitiesPerLocale = v5->_modalitiesPerLocale;
    v5->_modalitiesPerLocale = v6;

    v8 = v5;
  }

  return v5;
}

- (unint64_t)modalitiesForLocale:(id)locale
{
  v3 = [(NSDictionary *)self->_modalitiesPerLocale objectForKeyedSubscript:locale];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (_LTLocaleModalities)initWithCoder:(id)coder
{
  v15[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
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

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"modalitiesPerLocale"];
    modalitiesPerLocale = v5->_modalitiesPerLocale;
    v5->_modalitiesPerLocale = v9;

    v11 = v5;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_LTLocaleModalities alloc];
  modalitiesPerLocale = self->_modalitiesPerLocale;

  return [(_LTLocaleModalities *)v4 initWithModalitiesPerLocale:modalitiesPerLocale];
}

- (id)debugDescription
{
  v19 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  [string appendString:@"{\n"];
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
        _ltLocaleIdentifier = [v9 _ltLocaleIdentifier];
        v11 = [(NSDictionary *)self->_modalitiesPerLocale objectForKeyedSubscript:v9];
        [string appendFormat:@"\t%@: %@, \n", _ltLocaleIdentifier, v11, v14];
      }

      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [string appendString:@"}"];
  v12 = *MEMORY[0x277D85DE8];

  return string;
}

@end