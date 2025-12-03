@interface MPMiddlewareOperationMap
+ (id)mapForRequest:(id)request;
- (id)_init;
@end

@implementation MPMiddlewareOperationMap

- (id)_init
{
  v3.receiver = self;
  v3.super_class = MPMiddlewareOperationMap;
  return [(MPMiddlewareOperationMap *)&v3 init];
}

+ (id)mapForRequest:(id)request
{
  v100 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  _init = [[self alloc] _init];
  v6 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:0];
  v7 = _init[1];
  _init[1] = v6;

  v8 = MEMORY[0x1E695DF70];
  middlewareClasses = [requestCopy middlewareClasses];
  v10 = [v8 arrayWithCapacity:{objc_msgSend(middlewareClasses, "count")}];
  v11 = _init[2];
  _init[2] = v10;

  v12 = MEMORY[0x1E695DF70];
  middlewareClasses2 = [requestCopy middlewareClasses];
  v14 = [v12 arrayWithCapacity:{objc_msgSend(middlewareClasses2, "count")}];
  v15 = _init[3];
  v58 = _init;
  _init[3] = v14;

  v16 = objc_alloc(MEMORY[0x1E696AD18]);
  middlewareClasses3 = [requestCopy middlewareClasses];
  v18 = [v16 initWithKeyOptions:512 valueOptions:0 capacity:{objc_msgSend(middlewareClasses3, "count")}];

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v57 = requestCopy;
  obj = [requestCopy middlewareClasses];
  v59 = [obj countByEnumeratingWithState:&v90 objects:v99 count:16];
  if (v59)
  {
    v55 = *v91;
    do
    {
      v19 = 0;
      do
      {
        if (*v91 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v62 = v19;
        v20 = objc_alloc_init(*(*(&v90 + 1) + 8 * v19));
        v21 = [v20 operationsForRequest:v57];
        [v58[1] setObject:v21 forKey:v20];
        v61 = v20;
        [v58[2] addObject:v20];
        [v58[3] addObjectsFromArray:v21];
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v68 = v21;
        v22 = [v68 countByEnumeratingWithState:&v86 objects:v98 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v87;
          v63 = *v87;
          do
          {
            v25 = 0;
            v66 = v23;
            do
            {
              if (*v87 != v24)
              {
                objc_enumerationMutation(v68);
              }

              v26 = *(*(&v86 + 1) + 8 * v25);
              if (objc_opt_respondsToSelector())
              {
                v27 = v26;
                v82 = 0u;
                v83 = 0u;
                v84 = 0u;
                v85 = 0u;
                outputProtocols = [v27 outputProtocols];
                v29 = [outputProtocols countByEnumeratingWithState:&v82 objects:v97 count:16];
                if (v29)
                {
                  v30 = v29;
                  v31 = *v83;
                  do
                  {
                    for (i = 0; i != v30; ++i)
                    {
                      if (*v83 != v31)
                      {
                        objc_enumerationMutation(outputProtocols);
                      }

                      v33 = *(*(&v82 + 1) + 8 * i);
                      array = [v18 objectForKey:v33];
                      if (!array)
                      {
                        array = [MEMORY[0x1E695DF70] array];
                        [v18 setObject:array forKey:v33];
                      }

                      [array addObject:v27];
                    }

                    v30 = [outputProtocols countByEnumeratingWithState:&v82 objects:v97 count:16];
                  }

                  while (v30);
                }

                v24 = v63;
                v23 = v66;
              }

              ++v25;
            }

            while (v25 != v23);
            v23 = [v68 countByEnumeratingWithState:&v86 objects:v98 count:16];
          }

          while (v23);
        }

        v19 = v62 + 1;
      }

      while (v62 + 1 != v59);
      v59 = [obj countByEnumeratingWithState:&v90 objects:v99 count:16];
    }

    while (v59);
  }

  if ([v18 count])
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v35 = v58[3];
    v36 = [v35 countByEnumeratingWithState:&v78 objects:v96 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v79;
      v60 = v35;
      v56 = *v79;
      do
      {
        v39 = 0;
        v64 = v37;
        do
        {
          if (*v79 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v78 + 1) + 8 * v39);
          if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
          {
            v65 = v39;
            v41 = v40;
            v42 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:0];
            v74 = 0u;
            v75 = 0u;
            v76 = 0u;
            v77 = 0u;
            inputProtocols = [v41 inputProtocols];
            v43 = [inputProtocols countByEnumeratingWithState:&v74 objects:v95 count:16];
            if (v43)
            {
              v44 = v43;
              v69 = *v75;
              do
              {
                for (j = 0; j != v44; ++j)
                {
                  if (*v75 != v69)
                  {
                    objc_enumerationMutation(inputProtocols);
                  }

                  v46 = *(*(&v74 + 1) + 8 * j);
                  v47 = [v18 objectForKey:v46];
                  if (v47)
                  {
                    [v42 setObject:v47 forKey:v46];
                    v72 = 0u;
                    v73 = 0u;
                    v70 = 0u;
                    v71 = 0u;
                    v48 = v47;
                    v49 = [v48 countByEnumeratingWithState:&v70 objects:v94 count:16];
                    if (v49)
                    {
                      v50 = v49;
                      v51 = *v71;
                      do
                      {
                        for (k = 0; k != v50; ++k)
                        {
                          if (*v71 != v51)
                          {
                            objc_enumerationMutation(v48);
                          }

                          [v41 addDependency:*(*(&v70 + 1) + 8 * k)];
                        }

                        v50 = [v48 countByEnumeratingWithState:&v70 objects:v94 count:16];
                      }

                      while (v50);
                    }

                    [v41 setInputOperations:v42];
                  }
                }

                v44 = [inputProtocols countByEnumeratingWithState:&v74 objects:v95 count:16];
              }

              while (v44);
            }

            v35 = v60;
            v38 = v56;
            v37 = v64;
            v39 = v65;
          }

          ++v39;
        }

        while (v39 != v37);
        v37 = [v35 countByEnumeratingWithState:&v78 objects:v96 count:16];
      }

      while (v37);
    }
  }

  return v58;
}

@end