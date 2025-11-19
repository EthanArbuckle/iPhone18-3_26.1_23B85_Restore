@interface MDLMorphDeformer
- (MDLMorphDeformer)initWithOther:(id)a3;
- (MDLMorphDeformer)initWithTargetShapes:(id)a3 shapeSetTargetWeights:(const float *)a4 count:(unint64_t)a5 shapeSetTargetCounts:(const unsigned int *)a6 count:(unint64_t)a7;
- (MDLMorphDeformer)initWithTargetShapes:(id)a3 shapeSetTargetWeights:(id)a4 shapeSetTargetCounts:(id)a5;
- (NSArray)shapeSetTargetCounts;
- (NSArray)shapeSetTargetWeights;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)copyShapeSetTargetCountsInto:(unsigned int *)a3 maxCount:(unint64_t)a4;
- (unint64_t)copyShapeSetTargetWeightsInto:(float *)a3 maxCount:(unint64_t)a4;
@end

@implementation MDLMorphDeformer

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_allocWithZone_(MDLMorphDeformer, a2, a3);

  return MEMORY[0x2821F9670](v4, sel_initWithOther_, self);
}

- (MDLMorphDeformer)initWithOther:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = MDLMorphDeformer;
  v7 = [(MDLMorphDeformer *)&v36 init];
  if (v7)
  {
    v8 = objc_msgSend_targetShapes(v4, v5, v6);
    v11 = objc_msgSend_copy(v8, v9, v10);
    targetShapes = v7->_targetShapes;
    v7->_targetShapes = v11;

    v15 = objc_msgSend_shapeSetTargetWeights(v4, v13, v14);
    v18 = objc_msgSend_copy(v15, v16, v17);
    targetWeights = v7->_targetWeights;
    v7->_targetWeights = v18;

    v22 = objc_msgSend_shapeSetTargetCounts(v4, v20, v21);
    v25 = objc_msgSend_copy(v22, v23, v24);
    v26 = v7->_targetWeights;
    v7->_targetWeights = v25;

    v29 = objc_msgSend_weights(v4, v27, v28);
    v32 = objc_msgSend_copy(v29, v30, v31);
    weights = v7->_weights;
    v7->_weights = v32;

    v34 = v7;
  }

  return v7;
}

- (MDLMorphDeformer)initWithTargetShapes:(id)a3 shapeSetTargetWeights:(id)a4 shapeSetTargetCounts:(id)a5
{
  v103 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v84 = a5;
  v100.receiver = self;
  v100.super_class = MDLMorphDeformer;
  v83 = v8;
  v85 = [(MDLMorphDeformer *)&v100 init];
  if (v85)
  {
    if (v9 && v84)
    {
      v12 = objc_msgSend_count(v8, v10, v11);
      if (v12 == objc_msgSend_count(v9, v13, v14))
      {
        __src = 0;
        v98 = 0;
        v99 = 0;
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v82 = v9;
        v15 = v9;
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v93, v102, 16);
        if (v19)
        {
          v20 = *v94;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v94 != v20)
              {
                objc_enumerationMutation(v15);
              }

              objc_msgSend_floatValue(*(*(&v93 + 1) + 8 * i), v17, v18, v82);
              v23 = v98;
              if (v98 >= v99)
              {
                v25 = __src;
                v26 = v98 - __src;
                v27 = (v98 - __src) >> 2;
                v28 = v27 + 1;
                if ((v27 + 1) >> 62)
                {
                  sub_239E797B4();
                }

                v29 = v99 - __src;
                if ((v99 - __src) >> 1 > v28)
                {
                  v28 = v29 >> 1;
                }

                if (v29 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v30 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v30 = v28;
                }

                if (v30)
                {
                  sub_239E79984(&__src, v30);
                }

                *(4 * v27) = v22;
                v24 = 4 * v27 + 4;
                memcpy(0, v25, v26);
                v31 = __src;
                __src = 0;
                v98 = v24;
                v99 = 0;
                if (v31)
                {
                  operator delete(v31);
                }
              }

              else
              {
                *v98 = v22;
                v24 = (v23 + 4);
              }

              v98 = v24;
            }

            v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v17, &v93, v102, 16);
          }

          while (v19);
        }

        v9 = v82;
        __p = 0;
        v91 = 0;
        v92 = 0;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v32 = v84;
        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v86, v101, 16);
        if (v36)
        {
          LODWORD(v37) = 0;
          v38 = *v87;
          do
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v87 != v38)
              {
                objc_enumerationMutation(v32);
              }

              v40 = objc_msgSend_unsignedIntValue(*(*(&v86 + 1) + 8 * j), v34, v35, v82);
              v41 = v40;
              v42 = v91;
              if (v91 >= v92)
              {
                v44 = __p;
                v45 = v91 - __p;
                v46 = (v91 - __p) >> 2;
                v47 = v46 + 1;
                if ((v46 + 1) >> 62)
                {
                  sub_239E797B4();
                }

                v48 = v92 - __p;
                if ((v92 - __p) >> 1 > v47)
                {
                  v47 = v48 >> 1;
                }

                if (v48 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v49 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v49 = v47;
                }

                if (v49)
                {
                  sub_239E79984(&__p, v49);
                }

                *(4 * v46) = v40;
                v43 = 4 * v46 + 4;
                memcpy(0, v44, v45);
                v50 = __p;
                __p = 0;
                v91 = v43;
                v92 = 0;
                if (v50)
                {
                  operator delete(v50);
                }
              }

              else
              {
                *v91 = v40;
                v43 = (v42 + 4);
              }

              v37 = (v41 + v37);
              v91 = v43;
            }

            v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v86, v101, 16);
          }

          while (v36);
          v9 = v82;
        }

        else
        {
          v37 = 0;
        }

        v65 = objc_msgSend_count(v83, v61, v62);
        if (v65 == v37)
        {
          v66 = objc_msgSend_copy(v83, v63, v64);
          targetShapes = v85->_targetShapes;
          v85->_targetShapes = v66;

          v68 = objc_alloc(MEMORY[0x277CBEA90]);
          v70 = objc_msgSend_initWithBytes_length_(v68, v69, __src, v98 - __src);
          targetWeights = v85->_targetWeights;
          v85->_targetWeights = v70;

          v72 = objc_alloc(MEMORY[0x277CBEA90]);
          v74 = objc_msgSend_initWithBytes_length_(v72, v73, __p, v91 - __p);
          targetCounts = v85->_targetCounts;
          v85->_targetCounts = v74;

          v76 = [MDLAnimatedScalarArray alloc];
          v78 = objc_msgSend_initWithElementCount_(v76, v77, ((v91 - __p) >> 2));
          weights = v85->_weights;
          v85->_weights = v78;
        }

        else
        {
          NSLog(&cfstr_TargetshapesCo_0.isa);
        }

        if (__p)
        {
          v91 = __p;
          operator delete(__p);
        }

        if (__src)
        {
          v98 = __src;
          operator delete(__src);
        }

        if (v65 == v37)
        {
          goto LABEL_58;
        }
      }

      else
      {
        NSLog(&cfstr_TargetshapesCo.isa);
      }
    }

    else
    {
      if (!(v9 | v84))
      {
        v51 = objc_msgSend_copy(v8, v10, v11);
        v52 = v85->_targetShapes;
        v85->_targetShapes = v51;

        v53 = [MDLAnimatedScalarArray alloc];
        v56 = objc_msgSend_count(v8, v54, v55);
        v58 = objc_msgSend_initWithElementCount_(v53, v57, v56);
        v59 = v85->_weights;
        v85->_weights = v58;

LABEL_58:
        v60 = v85;
        goto LABEL_59;
      }

      NSLog(&cfstr_Shapesettarget.isa);
    }
  }

  v60 = 0;
LABEL_59:

  v80 = *MEMORY[0x277D85DE8];
  return v60;
}

- (MDLMorphDeformer)initWithTargetShapes:(id)a3 shapeSetTargetWeights:(const float *)a4 count:(unint64_t)a5 shapeSetTargetCounts:(const unsigned int *)a6 count:(unint64_t)a7
{
  v12 = a3;
  v48.receiver = self;
  v48.super_class = MDLMorphDeformer;
  v15 = [(MDLMorphDeformer *)&v48 init];
  if (v15)
  {
    if (a4 && a6)
    {
      if (objc_msgSend_count(v12, v13, v14) == a5)
      {
        if (a7)
        {
          LODWORD(v18) = 0;
          v19 = 1;
          v20 = a6;
          do
          {
            v21 = *v20++;
            v18 = (v21 + v18);
            v22 = v19++;
          }

          while (v22 < a7);
        }

        else
        {
          v18 = 0;
        }

        if (objc_msgSend_count(v12, v16, v17) == v18)
        {
          v34 = objc_msgSend_copy(v12, v32, v33);
          targetShapes = v15->_targetShapes;
          v15->_targetShapes = v34;

          v36 = objc_alloc(MEMORY[0x277CBEA90]);
          v38 = objc_msgSend_initWithBytes_length_(v36, v37, a4, 4 * a5);
          targetWeights = v15->_targetWeights;
          v15->_targetWeights = v38;

          v40 = objc_alloc(MEMORY[0x277CBEA90]);
          v42 = objc_msgSend_initWithBytes_length_(v40, v41, a6, 4 * a7);
          targetCounts = v15->_targetCounts;
          v15->_targetCounts = v42;

          v44 = [MDLAnimatedScalarArray alloc];
          v30 = objc_msgSend_initWithElementCount_(v44, v45, a7);
          goto LABEL_17;
        }

        NSLog(&cfstr_TargetshapesCo_0.isa);
      }

      else
      {
        NSLog(&cfstr_TargetshapesCo.isa);
      }
    }

    else
    {
      if (!(a4 | a6))
      {
        v23 = objc_msgSend_copy(v12, v13, v14);
        v24 = v15->_targetShapes;
        v15->_targetShapes = v23;

        v25 = [MDLAnimatedScalarArray alloc];
        v28 = objc_msgSend_count(v12, v26, v27);
        v30 = objc_msgSend_initWithElementCount_(v25, v29, v28);
LABEL_17:
        weights = v15->_weights;
        v15->_weights = v30;

        v31 = v15;
        goto LABEL_18;
      }

      NSLog(&cfstr_Shapesettarget.isa);
    }
  }

  v31 = 0;
LABEL_18:

  return v31;
}

- (NSArray)shapeSetTargetWeights
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_length(self->_targetWeights, v4, v5);
  v9 = objc_msgSend_bytes(self->_targetWeights, v7, v8);
  if (v6 >= 4)
  {
    v13 = v9;
    v14 = 0;
    v15 = v6 >> 2;
    v16 = 1;
    do
    {
      LODWORD(v12) = *(v13 + 4 * v14);
      v17 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v10, v11, v12);
      objc_msgSend_addObject_(v3, v18, v17);

      v14 = v16;
    }

    while (v15 > v16++);
  }

  v20 = objc_msgSend_copy(v3, v10, v11);

  return v20;
}

- (NSArray)shapeSetTargetCounts
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_length(self->_targetCounts, v4, v5);
  v9 = objc_msgSend_bytes(self->_targetCounts, v7, v8);
  if (v6 >= 4)
  {
    v12 = v9;
    v13 = 0;
    v14 = v6 >> 2;
    v15 = 1;
    do
    {
      v16 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v10, *(v12 + 4 * v13));
      objc_msgSend_addObject_(v3, v17, v16);

      v13 = v15;
    }

    while (v14 > v15++);
  }

  v19 = objc_msgSend_copy(v3, v10, v11);

  return v19;
}

- (unint64_t)copyShapeSetTargetWeightsInto:(float *)a3 maxCount:(unint64_t)a4
{
  v7 = objc_msgSend_length(self->_targetWeights, a2, a3);
  v10 = v7 >> 2;
  if (v7 >> 2 <= a4)
  {
    v11 = objc_msgSend_bytes(self->_targetWeights, v8, v9);
    v14 = objc_msgSend_length(self->_targetWeights, v12, v13);
    memcpy(a3, v11, v14);
  }

  else
  {
    NSLog(&cfstr_Targetweightsa.isa, a4, v7 >> 2);
    return 0;
  }

  return v10;
}

- (unint64_t)copyShapeSetTargetCountsInto:(unsigned int *)a3 maxCount:(unint64_t)a4
{
  v7 = objc_msgSend_length(self->_targetCounts, a2, a3);
  v10 = v7 >> 1;
  if (v7 >> 1 <= a4)
  {
    v11 = objc_msgSend_bytes(self->_targetCounts, v8, v9);
    v14 = objc_msgSend_length(self->_targetCounts, v12, v13);
    memcpy(a3, v11, v14);
  }

  else
  {
    NSLog(&cfstr_Targetcountsar.isa, a4, v7 >> 1);
    return 0;
  }

  return v10;
}

@end