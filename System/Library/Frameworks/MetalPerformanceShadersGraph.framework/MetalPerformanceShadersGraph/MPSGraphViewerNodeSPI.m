@interface MPSGraphViewerNodeSPI
- (MPSGraphViewerNodeSPI)initWithJSONDictionary:(id)a3;
- (MPSGraphViewerNodeSPI)initWithType:(id)a3 inputs:(id)a4 outputs:(id)a5 properties:(id)a6 regions:(id)a7;
- (id)jsonDictionary;
@end

@implementation MPSGraphViewerNodeSPI

- (MPSGraphViewerNodeSPI)initWithType:(id)a3 inputs:(id)a4 outputs:(id)a5 properties:(id)a6 regions:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v21 = a7;
  v22.receiver = self;
  v22.super_class = MPSGraphViewerNodeSPI;
  v17 = [(MPSGraphViewerNodeSPI *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_type, a3);
    objc_storeStrong(&v18->_inputs, a4);
    objc_storeStrong(&v18->_outputs, a5);
    objc_storeStrong(&v18->_properties, a6);
    objc_storeStrong(&v18->_regions, a7);
    location = v18->_location;
    v18->_location = &stru_1F5B58250;
  }

  return v18;
}

- (MPSGraphViewerNodeSPI)initWithJSONDictionary:(id)a3
{
  v74 = *MEMORY[0x1E69E9840];
  v47 = a3;
  v69.receiver = self;
  v69.super_class = MPSGraphViewerNodeSPI;
  v4 = [(MPSGraphViewerNodeSPI *)&v69 init];
  v46 = v4;
  if (v4)
  {
    v5 = [v47 objectForKey:@"type"];
    type = v4->_type;
    v4->_type = v5;

    v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v47 objectForKey:@"inputs"];
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    obj = v66 = 0u;
    v7 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v7)
    {
      v8 = *v66;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v66 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [[MPSGraphViewerNodePortSPI alloc] initWithJSONDictionary:*(*(&v65 + 1) + 8 * i)];
          [v52 addObject:v10];
        }

        v7 = [obj countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v7);
    }

    v11 = [MEMORY[0x1E695DEC8] arrayWithArray:v52];
    inputs = v46->_inputs;
    v46->_inputs = v11;

    v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v47 objectForKey:@"outputs"];
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v49 = v62 = 0u;
    v13 = [v49 countByEnumeratingWithState:&v61 objects:v72 count:16];
    if (v13)
    {
      v14 = *v62;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v62 != v14)
          {
            objc_enumerationMutation(v49);
          }

          v16 = [[MPSGraphViewerNodePortSPI alloc] initWithJSONDictionary:*(*(&v61 + 1) + 8 * j)];
          [v51 addObject:v16];
        }

        v13 = [v49 countByEnumeratingWithState:&v61 objects:v72 count:16];
      }

      while (v13);
    }

    v17 = [MEMORY[0x1E695DEC8] arrayWithArray:v51];
    outputs = v46->_outputs;
    v46->_outputs = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v47 objectForKey:@"properties"];
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v48 = v58 = 0u;
    v20 = [v48 countByEnumeratingWithState:&v57 objects:v71 count:16];
    if (v20)
    {
      v21 = *v58;
      do
      {
        v22 = 0;
        do
        {
          if (*v58 != v21)
          {
            objc_enumerationMutation(v48);
          }

          v23 = *(*(&v57 + 1) + 8 * v22);
          v24 = [v23 objectForKey:@"type"];
          if (!v24)
          {
            v28 = [v23 objectForKey:@"isEnum"];
            v27 = v28;
            if (v28 && [(MPSGraphViewerNodePropertyStringSPI *)v28 BOOLValue])
            {
              v29 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithJSONDictionary:v23];
              [v19 addObject:v29];
            }

            else
            {
              v29 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithJSONDictionary:v23];
              [v19 addObject:v29];
            }

            goto LABEL_31;
          }

          v25 = +[MPSGraphViewerNodePropertyStringSPI type];
          v26 = [v24 isEqualToString:v25];

          if (v26)
          {
            v27 = [[MPSGraphViewerNodePropertyStringSPI alloc] initWithJSONDictionary:v23];
            [v19 addObject:v27];
LABEL_31:

            goto LABEL_32;
          }

          v30 = +[MPSGraphViewerNodePropertyEnumSPI type];
          v31 = [v24 isEqualToString:v30];

          if (v31)
          {
            v27 = [[MPSGraphViewerNodePropertyEnumSPI alloc] initWithJSONDictionary:v23];
            [v19 addObject:v27];
            goto LABEL_31;
          }

          v32 = +[MPSGraphViewerNodePropertyDataSPI type];
          v33 = [v24 isEqualToString:v32];

          if (v33)
          {
            v27 = [[MPSGraphViewerNodePropertyDataSPI alloc] initWithJSONDictionary:v23];
            [v19 addObject:v27];
            goto LABEL_31;
          }

LABEL_32:

          ++v22;
        }

        while (v20 != v22);
        v34 = [v48 countByEnumeratingWithState:&v57 objects:v71 count:16];
        v20 = v34;
      }

      while (v34);
    }

    v35 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
    properties = v46->_properties;
    v46->_properties = v35;

    v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v47 objectForKey:@"regions"];
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v38 = v54 = 0u;
    v39 = [v38 countByEnumeratingWithState:&v53 objects:v70 count:16];
    if (v39)
    {
      v40 = *v54;
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v54 != v40)
          {
            objc_enumerationMutation(v38);
          }

          v42 = [[MPSGraphViewerNodeRegionSPI alloc] initWithJSONDictionary:*(*(&v53 + 1) + 8 * k)];
          [v37 addObject:v42];
        }

        v39 = [v38 countByEnumeratingWithState:&v53 objects:v70 count:16];
      }

      while (v39);
    }

    v43 = [MEMORY[0x1E695DEC8] arrayWithArray:v37];
    regions = v46->_regions;
    v46->_regions = v43;
  }

  return v46;
}

- (id)jsonDictionary
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v4 = [(MPSGraphViewerNodeSPI *)self inputs];
  v5 = [v4 countByEnumeratingWithState:&v42 objects:v51 count:16];
  if (v5)
  {
    v6 = *v43;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v43 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v42 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v42 objects:v51 count:16];
    }

    while (v5);
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = [(MPSGraphViewerNodeSPI *)self outputs];
  v11 = [v10 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v11)
  {
    v12 = *v39;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [*(*(&v38 + 1) + 8 * j) jsonDictionary];
        [v9 addObject:v14];
      }

      v11 = [v10 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v11);
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = [(MPSGraphViewerNodeSPI *)self properties];
  v17 = [v16 countByEnumeratingWithState:&v34 objects:v49 count:16];
  if (v17)
  {
    v18 = *v35;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = [*(*(&v34 + 1) + 8 * k) jsonDictionary];
        [v15 addObject:v20];
      }

      v17 = [v16 countByEnumeratingWithState:&v34 objects:v49 count:16];
    }

    while (v17);
  }

  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v22 = [(MPSGraphViewerNodeSPI *)self regions];
  v23 = [v22 countByEnumeratingWithState:&v30 objects:v48 count:16];
  if (v23)
  {
    v24 = *v31;
    do
    {
      for (m = 0; m != v23; ++m)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = [*(*(&v30 + 1) + 8 * m) jsonDictionary];
        [v21 addObject:v26];
      }

      v23 = [v22 countByEnumeratingWithState:&v30 objects:v48 count:16];
    }

    while (v23);
  }

  v46[0] = @"type";
  v27 = [(MPSGraphViewerNodeSPI *)self type];
  v47[0] = v27;
  v47[1] = v3;
  v46[1] = @"inputs";
  v46[2] = @"outputs";
  v47[2] = v9;
  v47[3] = v15;
  v46[3] = @"properties";
  v46[4] = @"regions";
  v47[4] = v21;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:5];

  return v28;
}

@end