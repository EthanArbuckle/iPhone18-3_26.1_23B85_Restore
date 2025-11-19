@interface MDLMaterialPropertyNode
- (MDLMaterialPropertyNode)initWithInputs:(NSArray *)inputs outputs:(NSArray *)outputs evaluationFunction:(void *)function;
@end

@implementation MDLMaterialPropertyNode

- (MDLMaterialPropertyNode)initWithInputs:(NSArray *)inputs outputs:(NSArray *)outputs evaluationFunction:(void *)function
{
  v99 = *MEMORY[0x277D85DE8];
  v9 = inputs;
  v76 = outputs;
  v74 = function;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = v9;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v91, v98, 16);
  if (v11)
  {
    v12 = *v92;
    do
    {
      v13 = 0;
      do
      {
        if (*v92 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v91 + 1) + 8 * v13);
        WeakRetained = objc_loadWeakRetained((v14 + 160));
        v16 = WeakRetained == 0;

        if (!v16)
        {
          v18 = MEMORY[0x277CBEAD8];
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          v21 = NSStringFromSelector(a2);
          objc_msgSend_raise_format_(v18, v22, @"ModelIOException", @"[%@ %@]: input cannot be assigned to multiple nodes", v20, v21);
        }

        if (objc_msgSend_containsObject_(v76, v17, v14))
        {
          v24 = MEMORY[0x277CBEAD8];
          v25 = objc_opt_class();
          v26 = NSStringFromClass(v25);
          v27 = NSStringFromSelector(a2);
          objc_msgSend_raise_format_(v24, v28, @"ModelIOException", @"[%@ %@]: input appears in output array", v26, v27);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v91, v98, 16);
    }

    while (v11);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v75 = v76;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v29, &v87, v97, 16);
  if (v30)
  {
    v31 = *v88;
    do
    {
      v32 = 0;
      do
      {
        if (*v88 != v31)
        {
          objc_enumerationMutation(v75);
        }

        v33 = *(*(&v87 + 1) + 8 * v32);
        v34 = objc_loadWeakRetained((v33 + 160));
        v35 = v34 == 0;

        if (!v35)
        {
          v37 = MEMORY[0x277CBEAD8];
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          v40 = NSStringFromSelector(a2);
          objc_msgSend_raise_format_(v37, v41, @"ModelIOException", @"[%@ %@]: output cannot be assigned to multiple nodes", v39, v40);
        }

        if (objc_msgSend_containsObject_(obj, v36, v33))
        {
          v43 = MEMORY[0x277CBEAD8];
          v44 = objc_opt_class();
          v45 = NSStringFromClass(v44);
          v46 = NSStringFromSelector(a2);
          objc_msgSend_raise_format_(v43, v47, @"ModelIOException", @"[%@ %@]: output appears in input array", v45, v46);
        }

        ++v32;
      }

      while (v30 != v32);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v42, &v87, v97, 16);
    }

    while (v30);
  }

  v86.receiver = self;
  v86.super_class = MDLMaterialPropertyNode;
  v49 = [(MDLMaterialPropertyNode *)&v86 init];
  if (v49)
  {
    v50 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v48, obj);
    v51 = v49->_inputs;
    v49->_inputs = v50;

    v53 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEA60], v52, v75);
    v54 = v49->_outputs;
    v49->_outputs = v53;

    v55 = MEMORY[0x23EE80910](v74);
    evaluationFunction = v49->_evaluationFunction;
    v49->_evaluationFunction = v55;

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v57 = obj;
    v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v58, &v82, v96, 16);
    if (v59)
    {
      v60 = *v83;
      do
      {
        v61 = 0;
        do
        {
          if (*v83 != v60)
          {
            objc_enumerationMutation(v57);
          }

          objc_storeWeak((*(*(&v82 + 1) + 8 * v61++) + 160), v49);
        }

        while (v59 != v61);
        v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v57, v62, &v82, v96, 16);
      }

      while (v59);
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v63 = v75;
    v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v78, v95, 16);
    if (v65)
    {
      v66 = *v79;
      do
      {
        v67 = 0;
        do
        {
          if (*v79 != v66)
          {
            objc_enumerationMutation(v63);
          }

          objc_storeWeak((*(*(&v78 + 1) + 8 * v67++) + 160), v49);
        }

        while (v65 != v67);
        v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v68, &v78, v95, 16);
      }

      while (v65);
    }

    v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
    inputNodes = v49->_inputNodes;
    v49->_inputNodes = v69;

    v71 = v49;
  }

  v72 = *MEMORY[0x277D85DE8];
  return v49;
}

@end