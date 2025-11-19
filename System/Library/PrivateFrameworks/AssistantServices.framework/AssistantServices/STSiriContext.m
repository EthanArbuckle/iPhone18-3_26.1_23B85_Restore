@interface STSiriContext
- (STSiriContext)initWithCoder:(id)a3;
- (STSiriContext)initWithModelObjects:(id)a3;
- (id)_aceValue;
@end

@implementation STSiriContext

- (STSiriContext)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"ModelObjects"];

  v9 = [(STSiriContext *)self initWithModelObjects:v8];
  return v9;
}

- (id)_aceValue
{
  v59 = *MEMORY[0x1E69E9840];
  v3 = 0x1E695D000uLL;
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v5 = [(STSiriContext *)self modelObjects];
  v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v8 = [(STSiriContext *)self modelObjects];
  v39 = [v8 countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v39)
  {
    v10 = 0;
    v38 = *v49;
    *&v9 = 136315394;
    v35 = v9;
    v36 = v8;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v49 != v38)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v48 + 1) + 8 * i);
        v13 = [v12 _aceCollectionClass];
        if (v13 != v10)
        {
          v14 = v13;
          if (v10 && [(objc_class *)v10 isSubclassOfClass:objc_opt_class()])
          {
            v15 = objc_alloc_init(v10);
            [v15 setDomainObjects:v7];
            v16 = [v15 dictionary];
            [v6 addObject:v16];
          }

          else
          {
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v15 = v7;
            v17 = [v15 countByEnumeratingWithState:&v44 objects:v57 count:16];
            if (v17)
            {
              v18 = v17;
              v37 = v7;
              v19 = v3;
              v20 = *v45;
              do
              {
                for (j = 0; j != v18; ++j)
                {
                  if (*v45 != v20)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v22 = [*(*(&v44 + 1) + 8 * j) dictionary];
                  [v6 addObject:v22];
                }

                v18 = [v15 countByEnumeratingWithState:&v44 objects:v57 count:16];
              }

              while (v18);
              v3 = v19;
              v8 = v36;
              v7 = v37;
            }
          }

          v23 = objc_alloc_init(*(v3 + 3952));
          v7 = v23;
          v10 = v14;
        }

        v24 = [v12 _aceContextObjectValue];
        if (v24)
        {
          [v7 addObject:v24];
        }

        else
        {
          v25 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = v35;
            v54 = "[STSiriContext _aceValue]";
            v55 = 2112;
            v56 = v12;
            _os_log_impl(&dword_1912FE000, v25, OS_LOG_TYPE_INFO, "%s Unable to create context object for Siri model object %@; dropping on floor", buf, 0x16u);
          }
        }
      }

      v39 = [v8 countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v39);

    if (v10 && [(objc_class *)v10 isSubclassOfClass:objc_opt_class()])
    {
      v26 = objc_alloc_init(v10);
      [v26 setDomainObjects:v7];
      v27 = [v26 dictionary];
      [v6 addObject:v27];

      goto LABEL_37;
    }
  }

  else
  {
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v26 = v7;
  v28 = [v26 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v41;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v41 != v30)
        {
          objc_enumerationMutation(v26);
        }

        v32 = [*(*(&v40 + 1) + 8 * k) dictionary];
        [v6 addObject:v32];
      }

      v29 = [v26 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v29);
  }

  v7 = v26;
LABEL_37:

  v33 = *MEMORY[0x1E69E9840];

  return v6;
}

- (STSiriContext)initWithModelObjects:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STSiriContext;
  v5 = [(STSiriContext *)&v9 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 copy];
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    modelObjects = v5->_modelObjects;
    v5->_modelObjects = v6;
  }

  return v5;
}

@end