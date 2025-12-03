@interface MDLSubmeshTopology
+ (id)decodeTopologyWithCoder:(id)coder allocator:(id)allocator;
- (MDLSubmeshTopology)initWithSubmesh:(MDLSubmesh *)submesh;
- (void)encodeTopologyWithCoder:(id)coder allocator:(id)allocator;
@end

@implementation MDLSubmeshTopology

- (MDLSubmeshTopology)initWithSubmesh:(MDLSubmesh *)submesh
{
  v7 = submesh;
  if (!v7)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v8, v12, @"ModelIOException", @"[%@ %@]: Cannot create topology with a submesh", v10, v11);
  }

  if (objc_msgSend_geometryType(v7, v5, v6) == 3)
  {
    v13 = MEMORY[0x277CBEAD8];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = NSStringFromSelector(a2);
    objc_msgSend_raise_format_(v13, v17, @"ModelIOException", @"[%@ %@]: Cannot create topology from triangle strips", v15, v16);
  }

  v86.receiver = self;
  v86.super_class = MDLSubmeshTopology;
  v20 = [(MDLSubmeshTopology *)&v86 init];
  if (v20)
  {
    v21 = objc_msgSend_topology(v7, v18, v19);

    if (v21)
    {
      v24 = objc_msgSend_topology(v7, v22, v23);
      v27 = objc_msgSend_faceTopology(v24, v25, v26);
      faceTopology = v20->_faceTopology;
      v20->_faceTopology = v27;

      v20->_faceCount = objc_msgSend_faceCount(v24, v29, v30);
      v33 = objc_msgSend_vertexCreaseIndices(v24, v31, v32);
      vertexCreaseIndices = v20->_vertexCreaseIndices;
      v20->_vertexCreaseIndices = v33;

      v37 = objc_msgSend_vertexCreases(v24, v35, v36);
      vertexCreases = v20->_vertexCreases;
      v20->_vertexCreases = v37;

      v20->_vertexCreaseCount = objc_msgSend_vertexCreaseCount(v24, v39, v40);
      v20->_edgeCreaseCount = objc_msgSend_edgeCreaseCount(v24, v41, v42);
      v45 = objc_msgSend_edgeCreaseIndices(v24, v43, v44);
      edgeCreaseIndices = v20->_edgeCreaseIndices;
      v20->_edgeCreaseIndices = v45;

      v49 = objc_msgSend_edgeCreases(v24, v47, v48);
      edgeCreases = v20->_edgeCreases;
      v20->_edgeCreases = v49;

      v53 = objc_msgSend_holes(v24, v51, v52);
      holes = v20->_holes;
      v20->_holes = v53;

      v20->_holeCount = objc_msgSend_holeCount(v24, v55, v56);
      v57 = v20;

      goto LABEL_28;
    }

    v58 = objc_msgSend_indexCount(v7, v22, v23);
    __p = 0;
    v84 = 0;
    v85 = 0;
    v61 = objc_msgSend_geometryType(v7, v59, v60);
    if (v61 <= 1)
    {
      if (v61)
      {
        if (v61 != 1)
        {
          goto LABEL_26;
        }

        v63 = v58 >> 1;
        v82 = 2;
        v64 = __p;
        v65 = v58 >> 1 >= v84 - __p;
        v62 = ((v58 >> 1) - (v84 - __p));
        if (v58 >> 1 > v84 - __p)
        {
          goto LABEL_20;
        }

        goto LABEL_21;
      }

      v82 = 1;
      v62 = (v58 - (v84 - __p));
      if (v58 <= v84 - __p)
      {
        if (v58 >= v84 - __p)
        {
          goto LABEL_26;
        }

        v66 = __p + v58;
LABEL_25:
        v84 = v66;
LABEL_26:
        v67 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v62, __p, v84 - __p);
        v70 = objc_msgSend_indexBuffer(v7, v68, v69);
        v73 = objc_msgSend_allocator(v70, v71, v72);
        v75 = objc_msgSend_newBufferWithData_type_(v73, v74, v67, 2);

        v76 = v20->_faceTopology;
        v20->_faceTopology = v75;
        v77 = v75;

        v79 = __p;
        v78 = v84;

        v20->_faceCount = v78 - v79;
        v80 = v20;

        if (__p)
        {
          v84 = __p;
          operator delete(__p);
        }

        goto LABEL_28;
      }

LABEL_20:
      sub_239EFF5E8(&__p, v62, &v82);
      goto LABEL_26;
    }

    if (v61 == 2)
    {
      v63 = v58 / 3;
      v82 = 3;
      v64 = __p;
      v65 = v58 / 3 >= v84 - __p;
      v62 = (v58 / 3 - (v84 - __p));
      if (v58 / 3 > v84 - __p)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v61 != 4)
      {
        goto LABEL_26;
      }

      v63 = v58 >> 2;
      v82 = 4;
      v64 = __p;
      v65 = v58 >> 2 >= v84 - __p;
      v62 = ((v58 >> 2) - (v84 - __p));
      if (v58 >> 2 > v84 - __p)
      {
        goto LABEL_20;
      }
    }

LABEL_21:
    if (v65)
    {
      goto LABEL_26;
    }

    v66 = &v64[v63];
    goto LABEL_25;
  }

LABEL_28:

  return v20;
}

+ (id)decodeTopologyWithCoder:(id)coder allocator:(id)allocator
{
  coderCopy = coder;
  allocatorCopy = allocator;
  v7 = objc_alloc_init(MDLSubmeshTopology);
  v7->_faceCount = objc_msgSend_decodeIntegerForKey_(coderCopy, v8, @"faceCount");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = allocatorCopy;
    v11 = objc_msgSend_decodeMeshBufferWithCoder_forKey_(v9, v10, coderCopy, @"faceTopology");
    faceTopology = v7->_faceTopology;
    v7->_faceTopology = v11;
  }

  return v7;
}

- (void)encodeTopologyWithCoder:(id)coder allocator:(id)allocator
{
  coderCopy = coder;
  allocatorCopy = allocator;
  objc_msgSend_encodeInteger_forKey_(coderCopy, v7, self->_faceCount, @"faceCount");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = allocatorCopy;
    v10 = objc_msgSend_decodeMeshBufferWithCoder_forKey_(v8, v9, coderCopy, @"faceTopology");
    faceTopology = self->_faceTopology;
    self->_faceTopology = v10;
  }
}

@end