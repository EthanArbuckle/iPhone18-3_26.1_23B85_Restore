@interface NSManagedObjectModelBundle
- (NSManagedObjectModelBundle)initWithPath:(id)a3;
- (id)_modelForVersionHashes:(id)a3;
- (id)_modelForVersionHashes:(id)a3 inStyle:(unint64_t)a4;
- (id)currentVersion;
- (id)currentVersionURL;
- (id)modelVersions;
- (id)optimizedVersionURL;
- (id)urlForModelVersionWithName:(id)a3;
- (id)versionChecksums;
- (void)dealloc;
@end

@implementation NSManagedObjectModelBundle

- (id)optimizedVersionURL
{
  if (self)
  {
    bundle = self->_bundle;
  }

  else
  {
    bundle = 0;
  }

  result = [(NSBundle *)bundle pathForResource:[(NSManagedObjectModelBundle *)self currentVersion] ofType:@"omo"];
  if (result)
  {
    v4 = result;
    v5 = MEMORY[0x1E695DFF8];

    return [v5 fileURLWithPath:v4 isDirectory:0];
  }

  return result;
}

- (id)currentVersion
{
  if (self)
  {
    self = self->_versionInfoDictionary;
  }

  return [(NSManagedObjectModelBundle *)self objectForKey:@"NSManagedObjectModel_CurrentVersionName"];
}

- (id)currentVersionURL
{
  v3 = [(NSManagedObjectModelBundle *)self currentVersion];

  return [(NSManagedObjectModelBundle *)self urlForModelVersionWithName:v3];
}

- (void)dealloc
{
  self->_bundle = 0;

  self->_versionInfoDictionary = 0;
  v3.receiver = self;
  v3.super_class = NSManagedObjectModelBundle;
  [(NSManagedObjectModelBundle *)&v3 dealloc];
}

- (NSManagedObjectModelBundle)initWithPath:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSManagedObjectModelBundle;
  v4 = [(NSManagedObjectModelBundle *)&v9 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AAE8]) initWithPath:a3];
    v4->_bundle = v5;
    if (v5)
    {
      v6 = [(NSBundle *)v5 pathForResource:@"VersionInfo" ofType:@"plist"];
      if (v6 || (v6 = [(NSBundle *)v4->_bundle pathForResource:@"Info" ofType:@"plist"]) != 0)
      {
        v4->_versionInfoDictionary = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v6];
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)modelVersions
{
  if (self)
  {
    self = [(NSDictionary *)self->_versionInfoDictionary objectForKey:@"NSManagedObjectModel_VersionHashes"];
    v2 = vars8;
  }

  return [(NSManagedObjectModelBundle *)self allKeys];
}

- (id)versionChecksums
{
  if (self)
  {
    self = self->_versionInfoDictionary;
  }

  return [(NSManagedObjectModelBundle *)self objectForKey:@"NSManagedObjectModel_VersionChecksums"];
}

- (id)urlForModelVersionWithName:(id)a3
{
  if (self)
  {
    self = self->_bundle;
  }

  result = [(NSManagedObjectModelBundle *)self pathForResource:a3 ofType:@"mom"];
  if (result)
  {
    v4 = result;
    v5 = MEMORY[0x1E695DFF8];

    return [v5 fileURLWithPath:v4 isDirectory:0];
  }

  return result;
}

- (id)_modelForVersionHashes:(id)a3 inStyle:(unint64_t)a4
{
  v99 = *MEMORY[0x1E69E9840];
  if (a4 == 1)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    v57 = [a3 allKeys];
    v7 = [(NSBundle *)self->_bundle URLsForResourcesWithExtension:@"mom" subdirectory:0];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = v7;
    v62 = [(NSArray *)v7 countByEnumeratingWithState:&v89 objects:v98 count:16];
    if (v62)
    {
      v56 = v6;
      v66 = 0;
      v59 = 0;
      v60 = *v90;
      do
      {
        for (i = 0; i != v62; ++i)
        {
          if (*v90 != v60)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v89 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          v64 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v9];
          v10 = [(NSManagedObjectModel *)v64 _entityVersionHashesByNameInStyle:?];
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v11 = [v10 countByEnumeratingWithState:&v85 objects:v97 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = 0;
            v14 = *v86;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v86 != v14)
                {
                  objc_enumerationMutation(v10);
                }

                v16 = *(*(&v85 + 1) + 8 * j);
                if ([objc_msgSend(v10 objectForKey:{v16), "isEqual:", objc_msgSend(a3, "objectForKey:", v16)}])
                {
                  if (!v13)
                  {
                    v13 = [MEMORY[0x1E695DF70] array];
                  }

                  [v13 addObject:v16];
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v85 objects:v97 count:16];
            }

            while (v12);
          }

          else
          {
            v13 = 0;
          }

          if ([v13 count])
          {
            v17 = [v13 count];
            v18 = v64;
            if (v17 > [v66 count])
            {

              v59 = v64;
              v66 = v13;
              v19 = [v57 count];
              if (v19 == [v13 count])
              {

                objc_autoreleasePoolPop(context);
                goto LABEL_31;
              }
            }
          }

          else
          {
            v18 = v64;
          }

          objc_autoreleasePoolPop(context);
        }

        v62 = [(NSArray *)obj countByEnumeratingWithState:&v89 objects:v98 count:16];
      }

      while (v62);
LABEL_31:
      v22 = 0;
      v23 = v59;
      if (!v59)
      {
        v6 = v56;
LABEL_74:
        v24 = v66;
        goto LABEL_75;
      }

      v24 = v66;
      if (v66)
      {
        v25 = [(NSManagedObjectModel *)v59 entitiesByName];
        v26 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v66, "count")}];
        v27 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v66, "count")}];
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v28 = [v66 countByEnumeratingWithState:&v81 objects:v96 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v82;
          v61 = *v82;
          v63 = v25;
          do
          {
            v31 = 0;
            v65 = v29;
            do
            {
              if (*v82 != v30)
              {
                objc_enumerationMutation(v24);
              }

              v32 = *(*(&v81 + 1) + 8 * v31);
              v33 = objc_autoreleasePoolPush();
              for (k = -[NSDictionary objectForKey:](v25, "objectForKey:", v32); ; k = [v35 superentity])
              {
                v35 = k;
                [v27 addObject:{objc_msgSend(k, "name")}];
                if (![v35 superentity])
                {
                  break;
                }
              }

              if (![v26 valueForKey:{objc_msgSend(v35, "name")}])
              {
                v36 = [v35 copy];
                v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
                contexta = v36;
                [NSManagedObjectModel _deepCollectEntitiesInArray:v37 entity:v36];
                v79 = 0u;
                v80 = 0u;
                v77 = 0u;
                v78 = 0u;
                v38 = [v37 countByEnumeratingWithState:&v77 objects:v95 count:16];
                if (v38)
                {
                  v39 = v38;
                  v40 = *v78;
                  do
                  {
                    for (m = 0; m != v39; ++m)
                    {
                      if (*v78 != v40)
                      {
                        objc_enumerationMutation(v37);
                      }

                      [v26 setObject:*(*(&v77 + 1) + 8 * m) forKey:{objc_msgSend(*(*(&v77 + 1) + 8 * m), "name")}];
                    }

                    v39 = [v37 countByEnumeratingWithState:&v77 objects:v95 count:16];
                  }

                  while (v39);
                }

                v29 = v65;
                v24 = v66;
                v30 = v61;
                v25 = v63;
              }

              objc_autoreleasePoolPop(v33);
              ++v31;
            }

            while (v31 != v29);
            v29 = [v24 countByEnumeratingWithState:&v81 objects:v96 count:16];
          }

          while (v29);
        }

        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v42 = [v26 allValues];
        v43 = [v42 countByEnumeratingWithState:&v73 objects:v94 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v74;
          do
          {
            for (n = 0; n != v44; ++n)
            {
              if (*v74 != v45)
              {
                objc_enumerationMutation(v42);
              }

              v47 = *(*(&v73 + 1) + 8 * n);
              if (([v27 containsObject:{objc_msgSend(v47, "name")}] & 1) == 0)
              {
                -[NSEntityDescription _removeSubentity:]([v47 superentity], v47);
                [v26 removeObjectForKey:{objc_msgSend(v47, "name")}];
              }
            }

            v44 = [v42 countByEnumeratingWithState:&v73 objects:v94 count:16];
          }

          while (v44);
        }

        v22 = -[NSManagedObjectModel _initWithEntities:]([NSManagedObjectModel alloc], "_initWithEntities:", [v26 allValues]);
        [v22 setVersionIdentifiers:{-[NSManagedObjectModel versionIdentifiers](v59, "versionIdentifiers")}];
        v48 = [(NSManagedObjectModel *)v59 fetchRequestTemplatesByName];
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v49 = [(NSDictionary *)v48 countByEnumeratingWithState:&v69 objects:v93 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v70;
          do
          {
            for (ii = 0; ii != v50; ++ii)
            {
              if (*v70 != v51)
              {
                objc_enumerationMutation(v48);
              }

              v53 = *(*(&v69 + 1) + 8 * ii);
              v54 = [(NSDictionary *)v48 objectForKey:v53];
              if ([v26 objectForKey:{objc_msgSend(objc_msgSend(v54, "entity"), "name")}])
              {
                [v22 setFetchRequestTemplate:v54 forName:v53];
              }
            }

            v50 = [(NSDictionary *)v48 countByEnumeratingWithState:&v69 objects:v93 count:16];
          }

          while (v50);
        }

        v6 = v56;
        v23 = v59;
        goto LABEL_74;
      }

      v6 = v56;
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v22 = 0;
    }

LABEL_75:

    [v6 drain];
    result = v22;
    v55 = *MEMORY[0x1E69E9840];
    return result;
  }

  v20 = *MEMORY[0x1E69E9840];

  return [(NSManagedObjectModelBundle *)self _modelForVersionHashes:?];
}

- (id)_modelForVersionHashes:(id)a3
{
  v93 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v60 = [a3 allKeys];
  if (self)
  {
    v6 = [(NSDictionary *)self->_versionInfoDictionary objectForKey:@"NSManagedObjectModel_VersionHashes"];
  }

  else
  {
    v6 = 0;
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v56 = [v6 countByEnumeratingWithState:&v83 objects:v92 count:16];
  if (v56)
  {
    v50 = self;
    v51 = v5;
    v62 = 0;
    v52 = 0;
    v53 = v6;
    v54 = *v84;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v84 != v54)
        {
          objc_enumerationMutation(v6);
        }

        v58 = *(*(&v83 + 1) + 8 * i);
        v8 = [objc_msgSend(v6 "objectForKey:{"dictionaryWithValuesForKeys:", v60}")];
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v79 objects:v91 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          v12 = *v80;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v80 != v12)
              {
                objc_enumerationMutation(v8);
              }

              v14 = *(*(&v79 + 1) + 8 * j);
              if ([objc_msgSend(v8 objectForKey:{v14), "isEqual:", objc_msgSend(a3, "objectForKey:", v14)}])
              {
                if (!v11)
                {
                  v11 = [MEMORY[0x1E695DF70] array];
                }

                [v11 addObject:v14];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v79 objects:v91 count:16];
          }

          while (v10);
        }

        else
        {
          v11 = 0;
        }

        if ([v11 count])
        {
          v15 = [v11 count];
          v6 = v53;
          if (v15 > [v62 count])
          {

            v52 = v58;
            v62 = v11;
            v16 = [v60 count];
            if (v16 == [v11 count])
            {
              goto LABEL_28;
            }
          }
        }

        else
        {
          v6 = v53;
        }
      }

      v56 = [v6 countByEnumeratingWithState:&v83 objects:v92 count:16];
    }

    while (v56);
LABEL_28:
    v17 = 0;
    v18 = v52;
    if (v52)
    {
      v19 = v62;
      if (v62)
      {
        v55 = [[NSManagedObjectModel alloc] initWithContentsOfURL:[(NSManagedObjectModelBundle *)v50 urlForModelVersionWithName:v52]];
        v20 = [(NSManagedObjectModel *)v55 entitiesByName];
        v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v62, "count")}];
        v22 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v62, "count")}];
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v23 = [v62 countByEnumeratingWithState:&v75 objects:v90 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v76;
          v57 = *v76;
          v59 = v20;
          do
          {
            v26 = 0;
            v61 = v24;
            do
            {
              if (*v76 != v25)
              {
                objc_enumerationMutation(v19);
              }

              for (k = -[NSDictionary objectForKey:](v20, "objectForKey:", *(*(&v75 + 1) + 8 * v26)); ; k = [v28 superentity])
              {
                v28 = k;
                [v22 addObject:{objc_msgSend(k, "name")}];
                if (![v28 superentity])
                {
                  break;
                }
              }

              if (![v21 valueForKey:{objc_msgSend(v28, "name")}])
              {
                v29 = [v28 copy];
                v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [NSManagedObjectModel _deepCollectEntitiesInArray:v30 entity:v29];
                v73 = 0u;
                v74 = 0u;
                v71 = 0u;
                v72 = 0u;
                v31 = [v30 countByEnumeratingWithState:&v71 objects:v89 count:16];
                if (v31)
                {
                  v32 = v31;
                  v33 = *v72;
                  do
                  {
                    for (m = 0; m != v32; ++m)
                    {
                      if (*v72 != v33)
                      {
                        objc_enumerationMutation(v30);
                      }

                      [v21 setObject:*(*(&v71 + 1) + 8 * m) forKey:{objc_msgSend(*(*(&v71 + 1) + 8 * m), "name")}];
                    }

                    v32 = [v30 countByEnumeratingWithState:&v71 objects:v89 count:16];
                  }

                  while (v32);
                }

                v24 = v61;
                v19 = v62;
                v25 = v57;
                v20 = v59;
              }

              ++v26;
            }

            while (v26 != v24);
            v24 = [v19 countByEnumeratingWithState:&v75 objects:v90 count:16];
          }

          while (v24);
        }

        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v35 = [v21 allValues];
        v36 = [v35 countByEnumeratingWithState:&v67 objects:v88 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v68;
          do
          {
            for (n = 0; n != v37; ++n)
            {
              if (*v68 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = *(*(&v67 + 1) + 8 * n);
              if (([v22 containsObject:{objc_msgSend(v40, "name")}] & 1) == 0)
              {
                -[NSEntityDescription _removeSubentity:]([v40 superentity], v40);
                [v21 removeObjectForKey:{objc_msgSend(v40, "name")}];
              }
            }

            v37 = [v35 countByEnumeratingWithState:&v67 objects:v88 count:16];
          }

          while (v37);
        }

        v17 = -[NSManagedObjectModel _initWithEntities:]([NSManagedObjectModel alloc], "_initWithEntities:", [v21 allValues]);
        [v17 setVersionIdentifiers:{-[NSManagedObjectModel versionIdentifiers](v55, "versionIdentifiers")}];
        v41 = [(NSManagedObjectModel *)v55 fetchRequestTemplatesByName];
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v42 = [(NSDictionary *)v41 countByEnumeratingWithState:&v63 objects:v87 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v64;
          do
          {
            for (ii = 0; ii != v43; ++ii)
            {
              if (*v64 != v44)
              {
                objc_enumerationMutation(v41);
              }

              v46 = *(*(&v63 + 1) + 8 * ii);
              v47 = [(NSDictionary *)v41 objectForKey:v46];
              if ([v21 objectForKey:{objc_msgSend(objc_msgSend(v47, "entity"), "name")}])
              {
                [v17 setFetchRequestTemplate:v47 forName:v46];
              }
            }

            v43 = [(NSDictionary *)v41 countByEnumeratingWithState:&v63 objects:v87 count:16];
          }

          while (v43);
        }

        v5 = v51;
        v18 = v52;
      }

      else
      {
        v5 = v51;
      }
    }

    else
    {
      v5 = v51;
      v19 = v62;
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v17 = 0;
  }

  [v5 drain];
  result = v17;
  v49 = *MEMORY[0x1E69E9840];
  return result;
}

@end