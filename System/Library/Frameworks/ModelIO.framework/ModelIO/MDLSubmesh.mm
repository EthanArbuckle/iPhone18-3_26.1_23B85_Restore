@interface MDLSubmesh
- (MDLSubmesh)initWithMDLSubmesh:(MDLSubmesh *)submesh indexType:(MDLIndexBitDepth)indexType geometryType:(MDLGeometryType)geometryType;
- (MDLSubmesh)initWithName:(NSString *)name indexBuffer:(id)indexBuffer indexCount:(NSUInteger)indexCount indexType:(MDLIndexBitDepth)indexType geometryType:(MDLGeometryType)geometryType material:(MDLMaterial *)material;
- (MDLSubmesh)initWithName:(id)a3 indexBuffer:(id)a4 indexCount:(unint64_t)a5 indexType:(unint64_t)a6 faceIndexing:(id)a7 geometryType:(int64_t)a8 material:(id)a9 topology:(id)a10;
- (id)indexBufferAsIndexType:(MDLIndexBitDepth)indexType;
- (void)boundingBoxForMesh:(float32x4_t *)a3@<X8>;
- (void)debugPrintToFile:(__sFILE *)a3;
@end

@implementation MDLSubmesh

- (MDLSubmesh)initWithName:(id)a3 indexBuffer:(id)a4 indexCount:(unint64_t)a5 indexType:(unint64_t)a6 faceIndexing:(id)a7 geometryType:(int64_t)a8 material:(id)a9 topology:(id)a10
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = a9;
  v17 = a10;
  if (objc_msgSend_type(v14, v18, v19) == 2 && (!v15 || v17) && (!v15 || a8 == 5))
  {
    v41.receiver = self;
    v41.super_class = MDLSubmesh;
    v37 = [(MDLSubmesh *)&v41 init];
    self = v37;
    if (v37)
    {
      v36 = objc_msgSend_null(MEMORY[0x277CBEB68], v20, v21);
      if (objc_msgSend_isEqual_(v14, v22, v36))
      {
        allocator = v36;
      }

      else
      {
        v35 = objc_msgSend_allocator(v14, v23, v24);

        if (!v35)
        {
LABEL_14:
          objc_storeStrong(&v37->_indexBuffer, a4);
          objc_storeStrong(&v37->_material, a9);
          objc_storeStrong(&v37->_topology, a10);
          objc_storeStrong(&v37->_faceIndexing, a7);
          v33 = objc_msgSend_copy(v13, v31, v32);
          name = v37->_name;
          v37->_name = v33;

          v37->_indexCount = a5;
          v37->_geometryType = a8;
          v37->_indexType = a6;
          self = v37;
          v26 = self;
          goto LABEL_10;
        }

        v30 = objc_msgSend_allocator(v14, v28, v29);
        allocator = v37->_allocator;
        v37->_allocator = v30;
      }

      goto LABEL_14;
    }
  }

  v26 = 0;
LABEL_10:

  return v26;
}

- (MDLSubmesh)initWithName:(NSString *)name indexBuffer:(id)indexBuffer indexCount:(NSUInteger)indexCount indexType:(MDLIndexBitDepth)indexType geometryType:(MDLGeometryType)geometryType material:(MDLMaterial *)material
{
  v12 = name;
  v13 = indexBuffer;
  v14 = material;
  if (objc_msgSend_type(v13, v15, v16) != 2 || (v36.receiver = self, v36.super_class = MDLSubmesh, v19 = [(MDLSubmesh *)&v36 init], (self = v19) == 0))
  {
    v32 = 0;
    goto LABEL_9;
  }

  allocator = objc_msgSend_null(MEMORY[0x277CBEB68], v17, v18);
  if (objc_msgSend_isEqual_(v13, v21, allocator))
  {
    goto LABEL_6;
  }

  v24 = objc_msgSend_allocator(v13, v22, v23);

  if (v24)
  {
    v27 = objc_msgSend_allocator(v13, v25, v26);
    allocator = v19->_allocator;
    v19->_allocator = v27;
LABEL_6:
  }

  objc_storeStrong(&v19->_indexBuffer, indexBuffer);
  objc_storeStrong(&v19->_material, material);
  v30 = objc_msgSend_copy(v12, v28, v29);
  v31 = v19->_name;
  v19->_name = v30;

  v19->_indexCount = indexCount;
  v19->_geometryType = geometryType;
  v19->_indexType = indexType;
  self = v19;
  v32 = self;
LABEL_9:

  return v32;
}

- (MDLSubmesh)initWithMDLSubmesh:(MDLSubmesh *)submesh indexType:(MDLIndexBitDepth)indexType geometryType:(MDLGeometryType)geometryType
{
  v8 = submesh;
  if (objc_msgSend_indexType(v8, v9, v10) != indexType || objc_msgSend_geometryType(v8, v11, v12) != geometryType)
  {
    v36 = objc_autoreleasePoolPush();
    objc_storeStrong(&self->_allocator, v8->_allocator);
    v39 = objc_msgSend_indexBuffer(v8, v37, v38);
    context = v36;
    v42 = objc_msgSend_map(v39, v40, v41);

    v135 = v42;
    v45 = objc_msgSend_bytes(v42, v43, v44);
    if (objc_msgSend_geometryType(v8, v46, v47) == 5)
    {
      v35 = objc_msgSend_topology(v8, v48, v49);

      if (!v35)
      {
        v68 = 0;
        v55 = 0;
        goto LABEL_32;
      }

      v52 = objc_msgSend_topology(v8, v50, v51);
      v55 = objc_msgSend_faceTopology(v52, v53, v54);

      v58 = objc_msgSend_topology(v8, v56, v57);
      v61 = objc_msgSend_faceCount(v58, v59, v60);

      if (v55)
      {
        v62 = objc_msgSend_map(v55, v48, v49);
        v65 = v62;
        if (v62)
        {
          v66 = objc_msgSend_bytes(v62, v63, v64);
        }

        else
        {
          v66 = 0;
        }

        v67 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v61 = 0;
      v55 = 0;
    }

    v66 = 0;
    v67 = 1;
LABEL_14:
    switch(indexType)
    {
      case MDLIndexBitDepthUInt32:
        v133 = self;
        v132 = v67;
        __p = 0;
        v137 = 0;
        v138 = 0;
        v94 = objc_msgSend_indexCount(v8, v48, v49);
        v97 = objc_msgSend_indexType(v8, v95, v96);
        v100 = objc_msgSend_geometryType(v8, v98, v99);
        sub_239F5960C(&__p, v45, v94, v66, v61, v97, v100, geometryType);
        v102 = __p;
        v101 = v137;
        v103 = objc_alloc(MEMORY[0x277CBEA90]);
        v68 = objc_msgSend_initWithBytes_length_(v103, v104, __p, v137 - __p);
        v82 = (v101 - v102) >> 2;
        goto LABEL_20;
      case MDLIndexBitDepthUInt16:
        v133 = self;
        v132 = v67;
        __p = 0;
        v137 = 0;
        v138 = 0;
        v83 = objc_msgSend_indexCount(v8, v48, v49);
        v86 = objc_msgSend_indexType(v8, v84, v85);
        v89 = objc_msgSend_geometryType(v8, v87, v88);
        sub_239F58DF4(&__p, v45, v83, v66, v61, v86, v89, geometryType);
        v91 = __p;
        v90 = v137;
        v92 = objc_alloc(MEMORY[0x277CBEA90]);
        v68 = objc_msgSend_initWithBytes_length_(v92, v93, __p, v137 - __p);
        v82 = (v90 - v91) >> 1;
        goto LABEL_20;
      case MDLIndexBitDepthUInt8:
        v133 = self;
        v132 = v67;
        __p = 0;
        v137 = 0;
        v138 = 0;
        v69 = objc_msgSend_indexCount(v8, v48, v49);
        v72 = objc_msgSend_indexType(v8, v70, v71);
        v75 = objc_msgSend_geometryType(v8, v73, v74);
        sub_239F5859C(&__p, v45, v69, v66, v61, v72, v75, geometryType);
        v77 = __p;
        v76 = v137;
        v78 = objc_alloc(MEMORY[0x277CBEA90]);
        v68 = objc_msgSend_initWithBytes_length_(v78, v79, __p, v137 - __p);
        v82 = v76 - v77;
LABEL_20:
        if (__p)
        {
          v137 = __p;
          operator delete(__p);
        }

        v105 = objc_msgSend_indexBuffer(v8, v80, v81);
        v108 = objc_msgSend_allocator(v105, v106, v107);
        v110 = objc_msgSend_newBufferWithData_type_(v108, v109, v68, 2);

        if (objc_msgSend_conformsToProtocol_(v110, v111, &unk_284D24D98))
        {
          v114 = v110;
          v116 = objc_msgSend_stringByAppendingString_(@"mesh", v115, @"-Indices");
          objc_msgSend_setName_(v114, v117, v116);
        }

        if (((geometryType == MDLGeometryTypeVariableTopology) & v132) != 0)
        {
          v118 = 0;
        }

        else
        {
          v118 = v55;
        }

        if (v118 && objc_msgSend_conformsToProtocol_(v118, v112, &unk_284D24D98))
        {
          v119 = v118;
          v121 = objc_msgSend_stringByAppendingString_(@"mesh", v120, @"-Indices");
          objc_msgSend_setName_(v119, v122, v121);
        }

        v123 = objc_msgSend_name(v8, v112, v113);
        v126 = objc_msgSend_material(v8, v124, v125);
        v129 = objc_msgSend_topology(v8, v127, v128);
        self = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(v133, v130, v123, v110, v82, indexType, geometryType, v126, v129);

        v55 = v118;
        v35 = self;
        goto LABEL_32;
    }

    v68 = 0;
    v35 = 0;
LABEL_32:

    objc_autoreleasePoolPop(context);
    goto LABEL_33;
  }

  v15 = objc_msgSend_name(v8, v13, v14);
  v18 = objc_msgSend_indexBuffer(v8, v16, v17);
  v21 = objc_msgSend_indexCount(v8, v19, v20);
  v24 = objc_msgSend_indexType(v8, v22, v23);
  v27 = objc_msgSend_geometryType(v8, v25, v26);
  v30 = objc_msgSend_material(v8, v28, v29);
  v33 = objc_msgSend_topology(v8, v31, v32);
  self = objc_msgSend_initWithName_indexBuffer_indexCount_indexType_geometryType_material_topology_(self, v34, v15, v18, v21, v24, v27, v30, v33);

  v35 = self;
LABEL_33:

  return v35;
}

- (id)indexBufferAsIndexType:(MDLIndexBitDepth)indexType
{
  if (self->_indexType == indexType)
  {
    v4 = self->_indexBuffer;
    goto LABEL_37;
  }

  v6 = objc_autoreleasePoolPush();
  __src = 0;
  v70 = 0;
  v71 = 0;
  sub_239EB2474(&__src, self->_indexCount);
  v9 = self->_indexType;
  switch(v9)
  {
    case 8uLL:
      v25 = objc_msgSend_map(self->_indexBuffer, v7, v8);
      v28 = objc_msgSend_bytes(v25, v26, v27);

      indexCount = self->_indexCount;
      if (indexCount)
      {
        v30 = __src;
        do
        {
          v31 = *v28++;
          *v30++ = v31;
          --indexCount;
        }

        while (indexCount);
      }

      break;
    case 0x10uLL:
      v18 = objc_msgSend_map(self->_indexBuffer, v7, v8);
      v21 = objc_msgSend_bytes(v18, v19, v20);

      v22 = self->_indexCount;
      if (v22)
      {
        v23 = __src;
        do
        {
          v24 = *v21++;
          *v23++ = v24;
          --v22;
        }

        while (v22);
      }

      break;
    case 0x20uLL:
      v10 = objc_msgSend_map(self->_indexBuffer, v7, v8);
      v13 = objc_msgSend_bytes(v10, v11, v12);

      v15 = self->_indexCount;
      if (v15)
      {
        v16 = __src;
        do
        {
          v17 = *v13++;
          *v16++ = v17;
          --v15;
        }

        while (v15);
      }

      break;
    default:
      goto LABEL_25;
  }

  switch(indexType)
  {
    case MDLIndexBitDepthUInt32:
      v32 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v14, 8 * self->_indexCount);
      v55 = v32;
      v58 = objc_msgSend_mutableBytes(v55, v56, v57);
      memcpy(v58, __src, 4 * self->_indexCount);
      v61 = objc_msgSend_allocator(self->_indexBuffer, v59, v60);
      v4 = objc_msgSend_newBufferWithData_type_(v61, v62, v32, 2);

      if (!objc_msgSend_conformsToProtocol_(v4, v63, &unk_284D24D98))
      {
LABEL_33:

        goto LABEL_34;
      }

LABEL_32:
      v64 = v4;
      v66 = objc_msgSend_stringByAppendingString_(@"mesh", v65, @"-Indices");
      objc_msgSend_setName_(v64, v67, v66);

      v4 = v64;
      goto LABEL_33;
    case MDLIndexBitDepthUInt16:
      v32 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v14, 8 * self->_indexCount);
      v43 = v32;
      v46 = objc_msgSend_mutableBytes(v43, v44, v45);
      v49 = self->_indexCount;
      if (v49)
      {
        v50 = __src;
        do
        {
          v51 = *v50++;
          *v46++ = v51;
          --v49;
        }

        while (v49);
      }

      v52 = objc_msgSend_allocator(self->_indexBuffer, v47, v48);
      v4 = objc_msgSend_newBufferWithData_type_(v52, v53, v32, 2);

      if (!objc_msgSend_conformsToProtocol_(v4, v54, &unk_284D24D98))
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    case MDLIndexBitDepthUInt8:
      v32 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v14, 8 * self->_indexCount);
      v33 = v32;
      v36 = objc_msgSend_mutableBytes(v33, v34, v35);
      if (self->_indexCount)
      {
        v39 = 0;
        do
        {
          *(v36 + v39) = *(__src + v39);
          ++v39;
        }

        while (self->_indexCount > v39);
      }

      v40 = objc_msgSend_allocator(self->_indexBuffer, v37, v38);
      v4 = objc_msgSend_newBufferWithData_type_(v40, v41, v32, 2);

      if (!objc_msgSend_conformsToProtocol_(v4, v42, &unk_284D24D98))
      {
        goto LABEL_33;
      }

      goto LABEL_32;
  }

LABEL_25:
  v4 = 0;
LABEL_34:
  if (__src)
  {
    v70 = __src;
    operator delete(__src);
  }

  objc_autoreleasePoolPop(v6);
LABEL_37:

  return v4;
}

- (void)debugPrintToFile:(__sFILE *)a3
{
  fprintf(a3, "%lu ", self->_indexCount);
  indexType = self->_indexType;
  switch(indexType)
  {
    case 0x20uLL:
      fwrite("32Bit Indices:\n", 0xFuLL, 1uLL, a3);
      v21 = objc_msgSend_map(self->_indexBuffer, v16, v17);
      v20 = objc_msgSend_bytes(v21, v18, v19);
      sub_239EFEE20(v20, self->_indexCount);
      goto LABEL_7;
    case 0x10uLL:
      fwrite("16Bit Indices:\n", 0xFuLL, 1uLL, a3);
      v21 = objc_msgSend_map(self->_indexBuffer, v11, v12);
      v15 = objc_msgSend_bytes(v21, v13, v14);
      sub_239EFED8C(v15, self->_indexCount);
      goto LABEL_7;
    case 8uLL:
      fwrite("8Bit Indices:\n", 0xEuLL, 1uLL, a3);
      v21 = objc_msgSend_map(self->_indexBuffer, v6, v7);
      v10 = objc_msgSend_bytes(v21, v8, v9);
      sub_239EFECF8(v10, self->_indexCount);
LABEL_7:

      return;
  }

  fwrite("INVALID INDEX TYPE!!!\n", 0x16uLL, 1uLL, a3);
}

- (void)boundingBoxForMesh:(float32x4_t *)a3@<X8>
{
  v5 = a2;
  a3[1].i64[0] = 0;
  a3[1].i64[1] = 0;
  __asm { FMOV            V0.4S, #-1.0 }

  *a3 = _Q0;
  v11 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v5, v10, @"position", 786435);
  v14 = v11;
  if (v11 && objc_msgSend_format(v11, v12, v13))
  {
    v17 = objc_msgSend_dataStart(v14, v15, v16);
    v20 = objc_msgSend_stride(v14, v18, v19);
    v23 = v20;
    if (v17 && v20 != 0)
    {
      v25 = a1[3];
      if (v25)
      {
        v26 = objc_msgSend_map(v25, v21, v22);
        v29 = v26;
        if (v26 && objc_msgSend_bytes(v26, v27, v28))
        {
          v34 = objc_msgSend_bytes(v29, v30, v31);
          v35 = a1[6];
          switch(v35)
          {
            case 8:
              for (i = a1[2]; i; --i)
              {
                v49 = *v34;
                v34 = (v34 + 1);
                v50 = objc_msgSend_bufferSize(v14, v32, v33);
                v52 = v23 * v49;
                if (v52 + 12 <= v50)
                {
                  v53 = v17 + v52;
                  v51.i64[0] = *v53;
                  v51.i32[2] = *(v53 + 8);
                  v54 = v51;
                  v55 = v51;
                  sub_239EB1DF0(a3, &v54);
                }
              }

              break;
            case 16:
              for (j = a1[2]; j; --j)
              {
                v43 = *v34++;
                v44 = objc_msgSend_bufferSize(v14, v32, v33);
                v46 = v23 * v43;
                if (v46 + 12 <= v44)
                {
                  v47 = v17 + v46;
                  v45.i64[0] = *v47;
                  v45.i32[2] = *(v47 + 8);
                  v54 = v45;
                  v55 = v45;
                  sub_239EB1DF0(a3, &v54);
                }
              }

              break;
            case 32:
              for (k = a1[2]; k; --k)
              {
                v37 = *v34;
                v34 += 2;
                v38 = objc_msgSend_bufferSize(v14, v32, v33);
                v40 = v23 * v37;
                if (v40 + 12 <= v38)
                {
                  v41 = v17 + v40;
                  v39.i64[0] = *v41;
                  v39.i32[2] = *(v41 + 8);
                  v54 = v39;
                  v55 = v39;
                  sub_239EB1DF0(a3, &v54);
                }
              }

              break;
          }
        }
      }
    }
  }
}

@end