@interface AVTCoreModelFramingModeOverrides
- (AVTCoreModelFramingModeOverrides)initWithCameraOverrides:(id)a3;
@end

@implementation AVTCoreModelFramingModeOverrides

- (AVTCoreModelFramingModeOverrides)initWithCameraOverrides:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v47.receiver = self;
  v47.super_class = AVTCoreModelFramingModeOverrides;
  v5 = [(AVTCoreModelFramingModeOverrides *)&v47 init];
  v6 = v5;
  if (v5)
  {
    v30 = v5;
    v7 = [v4 count];
    v35 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7];
    v34 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v31 = v4;
    obj = v4;
    v36 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v36)
    {
      v33 = *v44;
      do
      {
        v8 = 0;
        do
        {
          if (*v44 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v37 = *(*(&v43 + 1) + 8 * v8);
          v38 = v8;
          v9 = [v37 objectForKeyedSubscript:@"tags"];
          v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
          v11 = [v9 allKeys];
          v12 = [v11 copy];

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v39 objects:v48 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v40;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v40 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v39 + 1) + 8 * i);
                v19 = MEMORY[0x1E695DFB8];
                v20 = [v9 objectForKeyedSubscript:v18];
                v21 = [v19 orderedSetWithObject:v20];
                [v10 setObject:v21 forKeyedSubscript:v18];
              }

              v15 = [v13 countByEnumeratingWithState:&v39 objects:v48 count:16];
            }

            while (v15);
          }

          v22 = [v10 copy];
          [v35 addObject:v22];

          v23 = [v37 objectForKeyedSubscript:@"camera"];
          v24 = [AVTEditingModelMappings framingModeForCameraIdentifier:v23];

          [v34 addObject:v24];
          v8 = v38 + 1;
        }

        while (v38 + 1 != v36);
        v36 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v36);
    }

    v25 = [v35 copy];
    v6 = v30;
    orderedTags = v30->_orderedTags;
    v30->_orderedTags = v25;

    v27 = [v34 copy];
    orderedFramingModeOverrides = v30->_orderedFramingModeOverrides;
    v30->_orderedFramingModeOverrides = v27;

    v4 = v31;
  }

  return v6;
}

@end