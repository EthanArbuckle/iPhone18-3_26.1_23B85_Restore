@interface MDLMaterialPropertyGraph
- (MDLMaterialPropertyGraph)initWithNodes:(NSArray *)nodes connections:(NSArray *)connections;
- (void)evaluate;
@end

@implementation MDLMaterialPropertyGraph

- (MDLMaterialPropertyGraph)initWithNodes:(NSArray *)nodes connections:(NSArray *)connections
{
  v161 = *MEMORY[0x277D85DE8];
  v113 = nodes;
  v112 = connections;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v111 = nodes;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v110 = connections;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  obj = v113;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v150, v160, 16);
  if (v12)
  {
    v121 = *v151;
    do
    {
      v13 = 0;
      v123 = v12;
      do
      {
        if (*v151 != v121)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v150 + 1) + 8 * v13);
        v146 = 0u;
        v147 = 0u;
        v148 = 0u;
        v149 = 0u;
        v15 = objc_msgSend_inputs(v14, v10, v11);
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v146, v159, 16);
        if (v18)
        {
          v19 = *v147;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v147 != v19)
              {
                objc_enumerationMutation(v15);
              }

              objc_msgSend_addObject_(v6, v17, *(*(&v146 + 1) + 8 * i));
            }

            v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v146, v159, 16);
          }

          while (v18);
        }

        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        v23 = objc_msgSend_outputs(v14, v21, v22);
        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v142, v158, 16);
        if (v26)
        {
          v27 = *v143;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v143 != v27)
              {
                objc_enumerationMutation(v23);
              }

              v29 = *(*(&v142 + 1) + 8 * j);
              objc_msgSend_addObject_(v7, v25, v29);
              objc_msgSend_setObject_forKey_(v8, v30, v14, v29);
            }

            v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v142, v158, 16);
          }

          while (v26);
        }

        ++v13;
      }

      while (v13 != v123);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v150, v160, 16);
    }

    while (v12);
  }

  v124 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v122 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v118 = v112;
  v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v118, v31, &v138, v157, 16);
  if (v34)
  {
    v35 = *v139;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v139 != v35)
        {
          objc_enumerationMutation(v118);
        }

        v37 = *(*(&v138 + 1) + 8 * k);
        v38 = objc_msgSend_output(v37, v32, v33);
        if (v38)
        {
          v39 = objc_msgSend_input(v37, v32, v33);
          v40 = v39 == 0;

          if (!v40)
          {
            v41 = objc_msgSend_output(v37, v32, v33);
            v43 = objc_msgSend_containsObject_(v7, v42, v41);

            if ((v43 & 1) == 0)
            {
              v46 = MEMORY[0x277CBEAD8];
              v47 = objc_opt_class();
              v48 = NSStringFromClass(v47);
              v49 = NSStringFromSelector(a2);
              objc_msgSend_raise_format_(v46, v50, @"ModelIOException", @"[%@ %@]: output connection not found in node outputs", v48, v49);
            }

            v51 = objc_msgSend_input(v37, v44, v45);
            v53 = objc_msgSend_containsObject_(v6, v52, v51);

            if ((v53 & 1) == 0)
            {
              v56 = MEMORY[0x277CBEAD8];
              v57 = objc_opt_class();
              v58 = NSStringFromClass(v57);
              v59 = NSStringFromSelector(a2);
              objc_msgSend_raise_format_(v56, v60, @"ModelIOException", @"[%@ %@]: output connection not found in node inputs", v58, v59);
            }

            v61 = objc_msgSend_input(v37, v54, v55);
            objc_msgSend_addObject_(v124, v62, v61);

            v65 = objc_msgSend_output(v37, v63, v64);
            objc_msgSend_addObject_(v122, v66, v65);

            v69 = objc_msgSend_input(v37, v67, v68);
            v71 = objc_msgSend_objectForKey_(v8, v70, v69);

            v74 = objc_msgSend_output(v37, v72, v73);
            v76 = objc_msgSend_objectForKey_(v8, v75, v74);

            objc_msgSend_addObject_(v76[3], v77, v71);
          }
        }
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v118, v32, &v138, v157, 16);
    }

    while (v34);
  }

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v119 = v118;
  v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v119, v78, &v134, v156, 16);
  if (v79)
  {
    v80 = *v135;
    do
    {
      for (m = 0; m != v79; ++m)
      {
        if (*v135 != v80)
        {
          objc_enumerationMutation(v119);
        }

        v82 = *(*(&v134 + 1) + 8 * m);
        WeakRetained = objc_loadWeakRetained((v82 + 8));
        v84 = objc_loadWeakRetained((v82 + 16));
        objc_storeWeak(v84 + 22, WeakRetained);

        v85 = objc_loadWeakRetained((v82 + 16));
        v86 = objc_loadWeakRetained((v82 + 8));
        objc_storeWeak(v86 + 21, v85);
      }

      v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v119, v87, &v134, v156, 16);
    }

    while (v79);
  }

  aSelectora = objc_alloc_init(MEMORY[0x277CBEB18]);
  v115 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v88 = v6;
  v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v89, &v130, v155, 16);
  if (v91)
  {
    v92 = *v131;
    do
    {
      for (n = 0; n != v91; ++n)
      {
        if (*v131 != v92)
        {
          objc_enumerationMutation(v88);
        }

        v94 = *(*(&v130 + 1) + 8 * n);
        if ((objc_msgSend_containsObject_(v124, v90, v94) & 1) == 0)
        {
          objc_msgSend_addObject_(aSelectora, v90, v94);
        }
      }

      v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v88, v90, &v130, v155, 16);
    }

    while (v91);
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v95 = v7;
  v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v96, &v126, v154, 16);
  if (v98)
  {
    v99 = *v127;
    do
    {
      for (ii = 0; ii != v98; ++ii)
      {
        if (*v127 != v99)
        {
          objc_enumerationMutation(v95);
        }

        v101 = *(*(&v126 + 1) + 8 * ii);
        if ((objc_msgSend_containsObject_(v122, v97, v101) & 1) == 0)
        {
          objc_msgSend_addObject_(v115, v97, v101);
          v103 = objc_msgSend_objectForKey_(v8, v102, v101);
          objc_msgSend_addObject_(self->_finalNodes, v104, v103);
        }
      }

      v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v97, &v126, v154, 16);
    }

    while (v98);
  }

  v125.receiver = self;
  v125.super_class = MDLMaterialPropertyGraph;
  v105 = [(MDLMaterialPropertyNode *)&v125 initWithInputs:aSelectora outputs:v115 evaluationFunction:&unk_284D15248];
  v106 = v105;
  if (v105)
  {
    objc_storeStrong(&v105->_nodes, v111);
    objc_storeStrong(&v106->_connections, v110);
    v107 = v106;
  }

  v108 = *MEMORY[0x277D85DE8];
  return v106;
}

- (void)evaluate
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_finalNodes;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v11, v15, 16);
  if (v6)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        sub_239E83A14(*(*(&v11 + 1) + 8 * v8++), v3);
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v9, &v11, v15, 16);
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end