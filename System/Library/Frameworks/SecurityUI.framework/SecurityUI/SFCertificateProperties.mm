@interface SFCertificateProperties
- (SFCertificateProperties)initWithCertificate:(__SecCertificate *)a3;
- (id)_cellInfosForSection:(id)a3;
- (id)_copyPropertiesFromCertificate:(__SecCertificate *)a3;
- (id)_sectionInfoForCertSection:(id)a3 title:(id)a4;
- (id)_sectionsFromProperties:(id)a3;
- (id)_sendablePropertiesFromCertificate:(__SecCertificate *)a3;
- (id)_sendablePropertiesFromProperties:(id)a3;
- (id)_sendablePropertyFromProperty:(id)a3;
- (void)_setup:(id)a3;
@end

@implementation SFCertificateProperties

- (SFCertificateProperties)initWithCertificate:(__SecCertificate *)a3
{
  v9.receiver = self;
  v9.super_class = SFCertificateProperties;
  v4 = [(SFCertificateProperties *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = [(SFCertificateProperties *)v4 _sendablePropertiesFromCertificate:a3];
    v7 = [(SFCertificateProperties *)v5 _sectionsFromProperties:v6];
    [(SFCertificateProperties *)v5 _setup:v7];
  }

  return v5;
}

- (void)_setup:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v25 = objc_opt_new();
  v24 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v3;
  v27 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v27)
  {
    v26 = *v34;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v33 + 1) + 8 * i);
        v6 = objc_opt_new();
        v28 = v5;
        v7 = [v5 objectForKey:@"cell infos"];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v30;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v30 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v29 + 1) + 8 * j);
              v13 = [v12 objectForKey:@"cell title"];
              v14 = [v12 objectForKey:@"cell value"];
              v15 = v14;
              if (v13)
              {
                v16 = v14 == 0;
              }

              else
              {
                v16 = 1;
              }

              if (!v16)
              {
                [v6 addObject:v13];
                [v6 addObject:v15];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v9);
        }

        if ([v6 count])
        {
          [v25 addObject:v6];
          v17 = [v28 objectForKey:@"header title"];
          v18 = v17;
          v19 = &stru_284DAEE00;
          if (v17)
          {
            v19 = v17;
          }

          v20 = v19;

          [v24 addObject:v20];
        }
      }

      v27 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v27);
  }

  if ([v25 count])
  {
    objc_storeStrong(&self->_sections, v25);
    objc_storeStrong(&self->_sectionTitles, v24);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_cellInfosForSection:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        v10 = [v9 objectForKey:@"localized label"];
        v11 = [v9 objectForKey:@"type"];
        v12 = [v9 objectForKey:@"value"];
        if ([v11 isEqualToString:@"section"])
        {
          v13 = [(SFCertificateProperties *)self _cellInfosForSection:v12];
          [v4 addObjectsFromArray:v13];
        }

        else
        {
          if (([v11 isEqualToString:@"string"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"url") || objc_msgSend(v11, "isEqualToString:", @"data") || objc_msgSend(v11, "isEqualToString:", @"date"))
          {
            v14 = v12;
          }

          else
          {
            v14 = [v12 description];
          }

          v13 = v14;
          v15 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v10, @"cell title", v14, @"cell value", 0}];
          [v4 addObject:v15];
        }

        ++v8;
      }

      while (v6 != v8);
      v16 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      v6 = v16;
    }

    while (v16);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_sectionInfoForCertSection:(id)a3 title:(id)a4
{
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [(SFCertificateProperties *)self _cellInfosForSection:a3];
  v9 = [v6 dictionaryWithObjectsAndKeys:{v8, @"cell infos", v7, @"header title", 0}];

  return v9;
}

- (id)_sectionsFromProperties:(id)a3
{
  v16 = self;
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v18 = [MEMORY[0x277CBEB18] array];
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v8 objectForKey:{@"localized label", v16}];
        v10 = [v8 objectForKey:@"type"];
        v11 = [v8 objectForKey:@"value"];
        if ([v10 isEqualToString:@"section"])
        {
          v12 = [(SFCertificateProperties *)v16 _sectionInfoForCertSection:v11 title:v9];
          [v18 addObject:v12];
        }

        else
        {
          [v17 addObject:v8];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }

  if ([v17 count])
  {
    v13 = [(SFCertificateProperties *)v16 _sectionInfoForCertSection:v17 title:0];
    [v18 addObject:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_sendablePropertyFromProperty:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:*MEMORY[0x277CDC508]];
  if ([v5 isEqualToString:*MEMORY[0x277CDC538]])
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v4];

    v7 = *MEMORY[0x277CDC510];
    v8 = [v4 objectForKey:*MEMORY[0x277CDC510]];
    v9 = [v8 absoluteString];
  }

  else
  {
    v6 = v4;
    if (![v5 isEqualToString:*MEMORY[0x277CDC528]])
    {
      goto LABEL_6;
    }

    v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v4];

    v7 = *MEMORY[0x277CDC510];
    v8 = [v4 objectForKey:*MEMORY[0x277CDC510]];
    v9 = [(SFCertificateProperties *)self _sendablePropertiesFromProperties:v8];
  }

  v10 = v9;
  [v6 setObject:v9 forKey:v7];

LABEL_6:

  return v6;
}

- (id)_sendablePropertiesFromProperties:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(SFCertificateProperties *)self _sendablePropertyFromProperty:*(*(&v14 + 1) + 8 * i), v14];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_copyPropertiesFromCertificate:(__SecCertificate *)a3
{
  if (a3)
  {

    return MEMORY[0x28212B1B8](a3, a2);
  }

  else
  {
    v4 = SFLogSFCertificateProperties();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SFCertificateProperties _copyPropertiesFromCertificate:v4];
    }

    return 0;
  }
}

- (id)_sendablePropertiesFromCertificate:(__SecCertificate *)a3
{
  v4 = [(SFCertificateProperties *)self _copyPropertiesFromCertificate:a3];
  v5 = [(SFCertificateProperties *)self _sendablePropertiesFromProperties:v4];

  return v5;
}

@end