@interface GCHapticCapabilityGraph
- (GCHapticCapabilityGraph)initWithActuators:(id)actuators nodes:(id)nodes;
- (GCHapticCapabilityGraph)initWithJSONDictionaryRepresentation:(id)representation;
- (id)actuatorsForNode:(id)node;
- (id)jsonDictionaryRepresentation;
@end

@implementation GCHapticCapabilityGraph

- (GCHapticCapabilityGraph)initWithActuators:(id)actuators nodes:(id)nodes
{
  v126 = *MEMORY[0x1E69E9840];
  actuatorsCopy = actuators;
  nodesCopy = nodes;
  v118.receiver = self;
  v118.super_class = GCHapticCapabilityGraph;
  v8 = [(GCHapticCapabilityGraph *)&v118 init];
  if (v8)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    nodes = v8->_nodes;
    v8->_nodes = dictionary;

    v11 = [MEMORY[0x1E695DFA8] set];
    exposedCapabilities = v8->_exposedCapabilities;
    v8->_exposedCapabilities = v11;

    v13 = [MEMORY[0x1E695DFA8] set];
    exposedLeafCapabilities = v8->_exposedLeafCapabilities;
    v8->_exposedLeafCapabilities = v13;

    v15 = [MEMORY[0x1E695DFA8] set];
    allCapabilities = v8->_allCapabilities;
    v8->_allCapabilities = v15;

    v17 = [MEMORY[0x1E695DFA8] set];
    allLeafCapabilities = v8->_allLeafCapabilities;
    v8->_allLeafCapabilities = v17;

    context = objc_autoreleasePoolPush();
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v83 = actuatorsCopy;
    v20 = actuatorsCopy;
    v21 = [v20 countByEnumeratingWithState:&v114 objects:v125 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v115;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v115 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v114 + 1) + 8 * i);
          label = [v25 label];
          [dictionary2 setObject:v25 forKey:label];
        }

        v22 = [v20 countByEnumeratingWithState:&v114 objects:v125 count:16];
      }

      while (v22);
    }

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [GCHapticCapabilityGraph(JSON) initWithActuators:nodes:];
    }

    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v82 = nodesCopy;
    obj = nodesCopy;
    v27 = [obj countByEnumeratingWithState:&v110 objects:v124 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v111;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v111 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v110 + 1) + 8 * j);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [GCHapticCapabilityGraph(JSON) initWithActuators:nodes:];
          }

          v32 = [[GCHapticCapabilityGraphNode alloc] initWithJSONDictionaryRepresentation:v31];
          v33 = v8->_nodes;
          label2 = [(GCHapticCapabilityGraphNode *)v32 label];
          [(NSMutableDictionary *)v33 setObject:v32 forKey:label2];

          label3 = [(GCHapticCapabilityGraphNode *)v32 label];
          [dictionary3 setObject:v31 forKey:label3];
        }

        v28 = [obj countByEnumeratingWithState:&v110 objects:v124 count:16];
      }

      while (v28);
    }

    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    allValues = [dictionary3 allValues];
    obja = [allValues countByEnumeratingWithState:&v106 objects:v123 count:16];
    if (obja)
    {
      v85 = *v107;
      do
      {
        for (k = 0; k != obja; k = k + 1)
        {
          if (*v107 != v85)
          {
            objc_enumerationMutation(allValues);
          }

          v37 = *(*(&v106 + 1) + 8 * k);
          v38 = v8->_nodes;
          v39 = [v37 objectForKeyedSubscript:@"label"];
          v40 = [(NSMutableDictionary *)v38 objectForKeyedSubscript:v39];

          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v41 = [v37 objectForKeyedSubscript:@"children"];
          v42 = [v41 countByEnumeratingWithState:&v102 objects:v122 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v103;
            do
            {
              for (m = 0; m != v43; ++m)
              {
                if (*v103 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                v46 = [(NSMutableDictionary *)v8->_nodes objectForKeyedSubscript:*(*(&v102 + 1) + 8 * m)];
                [v40 addChild:v46];
              }

              v43 = [v41 countByEnumeratingWithState:&v102 objects:v122 count:16];
            }

            while (v43);
          }

          children = [v40 children];
          v48 = [children count];

          if (!v48)
          {
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            v49 = [v37 objectForKeyedSubscript:@"actuators"];
            v50 = [v49 countByEnumeratingWithState:&v98 objects:v121 count:16];
            if (v50)
            {
              v51 = v50;
              v52 = *v99;
              do
              {
                for (n = 0; n != v51; ++n)
                {
                  if (*v99 != v52)
                  {
                    objc_enumerationMutation(v49);
                  }

                  v54 = [dictionary2 objectForKeyedSubscript:*(*(&v98 + 1) + 8 * n)];
                  [v40 addActuator:v54];
                }

                v51 = [v49 countByEnumeratingWithState:&v98 objects:v121 count:16];
              }

              while (v51);
            }
          }
        }

        obja = [allValues countByEnumeratingWithState:&v106 objects:v123 count:16];
      }

      while (obja);
    }

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    objb = [dictionary3 allValues];
    v55 = [objb countByEnumeratingWithState:&v94 objects:v120 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v95;
      do
      {
        for (ii = 0; ii != v56; ++ii)
        {
          if (*v95 != v57)
          {
            objc_enumerationMutation(objb);
          }

          v59 = v8->_nodes;
          v60 = [*(*(&v94 + 1) + 8 * ii) objectForKeyedSubscript:@"label"];
          v61 = [(NSMutableDictionary *)v59 objectForKeyedSubscript:v60];

          children2 = [v61 children];
          v63 = [children2 count];

          if (v63)
          {
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            v64 = [(GCHapticCapabilityGraph *)v8 actuatorsForNode:v61];
            v65 = [v64 countByEnumeratingWithState:&v90 objects:v119 count:16];
            if (v65)
            {
              v66 = v65;
              v67 = *v91;
              do
              {
                for (jj = 0; jj != v66; ++jj)
                {
                  if (*v91 != v67)
                  {
                    objc_enumerationMutation(v64);
                  }

                  [v61 addActuator:*(*(&v90 + 1) + 8 * jj)];
                }

                v66 = [v64 countByEnumeratingWithState:&v90 objects:v119 count:16];
              }

              while (v66);
            }
          }

          children3 = [v61 children];
          v70 = [children3 count];

          v71 = v8->_allCapabilities;
          label4 = [v61 label];
          [(NSMutableSet *)v71 addObject:label4];

          if (!v70)
          {
            v73 = v8->_allLeafCapabilities;
            label5 = [v61 label];
            [(NSMutableSet *)v73 addObject:label5];
          }

          if ([v61 isExposed])
          {
            v75 = v8->_exposedCapabilities;
            label6 = [v61 label];
            [(NSMutableSet *)v75 addObject:label6];
          }

          if ([v61 isExposed] && !v70)
          {
            v77 = v8->_exposedLeafCapabilities;
            label7 = [v61 label];
            [(NSMutableSet *)v77 addObject:label7];
          }
        }

        v56 = [objb countByEnumeratingWithState:&v94 objects:v120 count:16];
      }

      while (v56);
    }

    objc_autoreleasePoolPop(context);
    nodesCopy = v82;
    actuatorsCopy = v83;
  }

  v79 = *MEMORY[0x1E69E9840];
  return v8;
}

- (GCHapticCapabilityGraph)initWithJSONDictionaryRepresentation:(id)representation
{
  v28 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  context = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v6 = [representationCopy objectForKeyedSubscript:@"actuators"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [GCHapticCapabilityGraph(JSON) initWithJSONDictionaryRepresentation:];
  }

  v8 = [representationCopy objectForKeyedSubscript:{@"actuators", a2}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * v12);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [GCHapticCapabilityGraph(JSON) initWithJSONDictionaryRepresentation:];
        }

        v14 = [[GCHapticActuator alloc] initWithJSONDictionaryRepresentation:v13];
        [v5 addObject:v14];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v15 = [representationCopy objectForKeyedSubscript:@"nodes"];
  objc_opt_class();
  v16 = objc_opt_isKindOfClass();

  if ((v16 & 1) == 0)
  {
    [GCHapticCapabilityGraph(JSON) initWithJSONDictionaryRepresentation:];
  }

  v17 = [representationCopy objectForKeyedSubscript:@"nodes"];
  v18 = [(GCHapticCapabilityGraph *)self initWithActuators:v5 nodes:v17];

  objc_autoreleasePoolPop(context);
  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)actuatorsForNode:(id)node
{
  v21 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  children = [nodeCopy children];
  v6 = [children count];

  if (v6)
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    children2 = [nodeCopy children];
    v9 = [children2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(children2);
          }

          v13 = [(GCHapticCapabilityGraph *)self actuatorsForNode:*(*(&v16 + 1) + 8 * i)];
          [array addObjectsFromArray:v13];
        }

        v10 = [children2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  else
  {
    array = [nodeCopy actuators];
  }

  v14 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)jsonDictionaryRepresentation
{
  v36 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  allValues = [(NSMutableDictionary *)self->_nodes allValues];
  v6 = [allValues countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        jsonDictionaryRepresentation = [*(*(&v30 + 1) + 8 * i) jsonDictionaryRepresentation];
        [array addObject:jsonDictionaryRepresentation];
      }

      v7 = [allValues countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  v25 = dictionary;
  [dictionary setObject:array forKey:@"nodes"];
  array2 = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = self->_allLeafCapabilities;
  v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      v16 = 0;
      do
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [(NSMutableDictionary *)self->_nodes objectForKeyedSubscript:*(*(&v26 + 1) + 8 * v16)];
        actuators = [v17 actuators];
        v19 = [actuators count];

        if (v19 != 1)
        {
          [GCHapticCapabilityGraph(JSON) jsonDictionaryRepresentation];
        }

        actuators2 = [v17 actuators];
        firstObject = [actuators2 firstObject];

        jsonDictionaryRepresentation2 = [firstObject jsonDictionaryRepresentation];
        [array2 addObject:jsonDictionaryRepresentation2];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v14);
  }

  [v25 setObject:array2 forKey:@"actuators"];
  v23 = *MEMORY[0x1E69E9840];

  return v25;
}

@end