@interface MDLMesh(SCNModelIO)
+ (id)meshWithSCNGeometry:()SCNModelIO bufferAllocator:;
@end

@implementation MDLMesh(SCNModelIO)

+ (id)meshWithSCNGeometry:()SCNModelIO bufferAllocator:
{
  v124 = *MEMORY[0x277D85DE8];
  if (([a3 isMemberOfClass:objc_opt_class()] & 1) == 0)
  {
    +[SCNTransaction flush];
  }

  v64 = a3;
  {
    +[MDLMesh(SCNModelIO) meshWithSCNGeometry:bufferAllocator:]::defaultAllocator = objc_opt_new();
  }

  v6 = +[MDLMesh(SCNModelIO) meshWithSCNGeometry:bufferAllocator:]::defaultAllocator;
  if (a4)
  {
    v6 = a4;
  }

  v85 = v6;
  v118 = 0;
  v117 = 0;
  v119 = 0;
  v115 = 0;
  v114 = 0;
  v116 = 0;
  v112 = 0;
  v111 = 0;
  v113 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v7 = [objc_msgSend(a3 "geometrySourceChannels")];
  if (v7)
  {
    v8 = 0;
    v84 = 0;
    while (1)
    {
      if (v8 >= [objc_msgSend(a3 "geometrySources")] || v8 >= v7)
      {
        if (v118 == v117)
        {
          goto LABEL_25;
        }

        goto LABEL_27;
      }

      v9 = [objc_msgSend(a3 "geometrySources")];
      LODWORD(v107.__begin_) = [objc_msgSend(objc_msgSend(a3 "geometrySourceChannels")];
      if ([objc_msgSend(v9 "semantic")])
      {
        v10 = &v117;
      }

      else if ([objc_msgSend(v9 "semantic")])
      {
        v10 = &v114;
      }

      else if ([objc_msgSend(v9 "semantic")])
      {
        v10 = &v111;
      }

      else
      {
        if (![objc_msgSend(v9 "semantic")])
        {
          goto LABEL_19;
        }

        v10 = &v108;
      }

      std::vector<int>::push_back[abi:nn200100](v10, &v107);
LABEL_19:
      if (!(LODWORD(v107.__begin_) | v84))
      {
        v84 = [v9 vectorCount];
      }

      ++v8;
    }
  }

  v11 = [objc_msgSend(a3 "geometrySources")];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_25:
    v12 = 0;
    goto LABEL_118;
  }

  LODWORD(v107.__begin_) = v11;
  std::vector<int>::push_back[abi:nn200100](&v117, &v107);
  v84 = 0;
LABEL_27:
  v13 = objc_alloc_init(MEMORY[0x277CD7B90]);
  v86 = objc_opt_new();
  v14 = [a3 geometrySourcesForSemantic:@"kGeometrySourceSemanticVertex"];
  v82 = [objc_msgSend(v14 objectAtIndexedSubscript:{0), "vectorCount"}];
  memset(&v107, 0, sizeof(v107));
  *&v104[8] = 0;
  v105 = 0;
  v106 = 0;
  *v104 = [objc_msgSend(objc_msgSend(a3 "geometryElements")];
  v65 = uniqueIndexBufferWithSCNGeometryElements([a3 geometryElements], v84, &v107, &v104[4], v104);
  v15 = [v65 count];
  if (v15)
  {
    v82 = v84 + (((v105 - *&v104[4]) >> 2) / (*v104 + 1));
    v83 = ((v105 - *&v104[4]) >> 2) / (*v104 + 1);
  }

  else
  {
    LODWORD(v83) = 0;
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v16 = [v14 countByEnumeratingWithState:&v100 objects:v123 count:16];
  v87 = v15;
  v63 = a1;
  if (!v16)
  {
    v18 = 0;
    goto LABEL_46;
  }

  v17 = 0;
  v18 = 0;
  v19 = *MEMORY[0x277CD7AB0];
  v78 = *v101;
  v73 = *v104;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v101 != v78)
      {
        objc_enumerationMutation(v14);
      }

      v21 = *(*(&v100 + 1) + 8 * i);
      v22 = v19;
      if (v17)
      {
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"blendShape%d", v17];
      }

      [objc_msgSend(objc_msgSend(v13 "attributes")];
      [objc_msgSend(objc_msgSend(v13 "attributes")];
      [objc_msgSend(objc_msgSend(v13 "attributes")];
      if (v87)
      {
        v23 = [v85 newBuffer:12 * v82 type:1];
        remapVertexAttributeBuffer(v21, *(v117 + v17), &v107, &v104[4], v73, v84, v83, [objc_msgSend(v23 "map")]);
        [objc_msgSend(objc_msgSend(v13 "attributes")];
        [objc_msgSend(objc_msgSend(v13 "layouts")];
      }

      else
      {
        if ([v21 vectorCount] != v82)
        {
          continue;
        }

        [objc_msgSend(objc_msgSend(v13 "attributes")];
        [objc_msgSend(objc_msgSend(v13 "layouts")];
        v23 = [v85 newBufferWithData:objc_msgSend(v21 type:{"data"), 1}];
      }

      [v86 addObject:v23];

      ++v18;
      v17 = (v17 + 1);
    }

    v16 = [v14 countByEnumeratingWithState:&v100 objects:v123 count:16];
  }

  while (v16);
LABEL_46:
  v24 = [v64 geometrySourcesForSemantic:@"kGeometrySourceSemanticNormal"];
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v25 = [v24 countByEnumeratingWithState:&v96 objects:v122 count:16];
  if (v25)
  {
    obj = v24;
    v26 = 0;
    v79 = *v97;
    v27 = *MEMORY[0x277CD7AA0];
    v74 = *v104;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v97 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v96 + 1) + 8 * j);
        v30 = v27;
        if (v26)
        {
          v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"normal%d", v26];
        }

        [objc_msgSend(objc_msgSend(v13 "attributes")];
        [objc_msgSend(objc_msgSend(v13 "attributes")];
        [objc_msgSend(objc_msgSend(v13 "attributes")];
        if (v87)
        {
          v31 = [v85 newBuffer:12 * v82 type:1];
          remapVertexAttributeBuffer(v29, *(v114 + v26), &v107, &v104[4], v74, v84, v83, [objc_msgSend(v31 "map")]);
          [objc_msgSend(objc_msgSend(v13 "attributes")];
          [objc_msgSend(objc_msgSend(v13 "layouts")];
        }

        else
        {
          if ([v29 vectorCount] != v82)
          {
            continue;
          }

          [objc_msgSend(objc_msgSend(v13 "attributes")];
          [objc_msgSend(objc_msgSend(v13 "layouts")];
          v31 = [v85 newBufferWithData:objc_msgSend(v29 type:{"data"), 1}];
        }

        [v86 addObject:v31];

        ++v18;
        v26 = (v26 + 1);
      }

      v25 = [obj countByEnumeratingWithState:&v96 objects:v122 count:16];
    }

    while (v25);
  }

  if ([v64 firstMaterial] && ((objc_msgSend(objc_msgSend(objc_msgSend(v64, "firstMaterial"), "multiply"), "contents"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_msgSend(objc_msgSend(objc_msgSend(v64, "firstMaterial"), "multiply"), "contents"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v76 = [objc_msgSend(objc_msgSend(v64 "firstMaterial")];
  }

  else
  {
    v76 = -1;
  }

  if ([v64 firstMaterial] && ((objc_msgSend(objc_msgSend(objc_msgSend(v64, "firstMaterial"), "selfIllumination"), "contents"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_msgSend(objc_msgSend(objc_msgSend(v64, "firstMaterial"), "selfIllumination"), "contents"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v75 = [objc_msgSend(objc_msgSend(v64 "firstMaterial")];
  }

  else
  {
    v75 = -1;
  }

  v32 = [v64 geometrySourcesForSemantic:@"kGeometrySourceSemanticTexcoord"];
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v33 = [v32 countByEnumeratingWithState:&v92 objects:v121 count:16];
  if (!v33)
  {
    v35 = v18;
    goto LABEL_94;
  }

  v34 = 0;
  obja = *v93;
  v70 = *MEMORY[0x277CD7AC0];
  v69 = *MEMORY[0x277CD7A68];
  v68 = *MEMORY[0x277CD7A98];
  v67 = *v104;
  v35 = v18;
  while (2)
  {
    v80 = v33;
    v36 = 0;
    while (2)
    {
      if (*v93 != obja)
      {
        objc_enumerationMutation(v32);
      }

      v37 = *(*(&v92 + 1) + 8 * v36);
      v38 = v70;
      if (v34)
      {
        v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"textureCoordinate%d", v34];
      }

      v39 = v69;
      if (v76 != v34)
      {
        v39 = v38;
      }

      if (v75 == v34)
      {
        v40 = v68;
      }

      else
      {
        v40 = v39;
      }

      [objc_msgSend(objc_msgSend(v13 "attributes")];
      [objc_msgSend(objc_msgSend(v13 "attributes")];
      [objc_msgSend(objc_msgSend(v13 "attributes")];
      if (v87)
      {
        v41 = [v85 newBuffer:8 * v82 type:1];
        remapVertexAttributeBuffer(v37, *(v111 + v34), &v107, &v104[4], v67, v84, v83, [objc_msgSend(v41 "map")]);
        [objc_msgSend(objc_msgSend(v13 "attributes")];
        [objc_msgSend(objc_msgSend(v13 "layouts")];
LABEL_86:
        if ((C3DWasLinkedBeforeMajorOSYear2018() & 1) == 0 && [objc_msgSend(v41 "map")])
        {
          v42 = [objc_msgSend(v13 "attributes")];
          flip_UVs([v42 format], objc_msgSend(objc_msgSend(v41, "map"), "bytes"), objc_msgSend(v42, "offset"), objc_msgSend(objc_msgSend(objc_msgSend(v13, "layouts"), "objectAtIndexedSubscript:", objc_msgSend(v42, "bufferIndex")), "stride"), v82);
        }

        [v86 addObject:v41];

        ++v35;
        v34 = (v34 + 1);
      }

      else if ([v37 vectorCount] == v82)
      {
        [objc_msgSend(objc_msgSend(v13 "attributes")];
        [objc_msgSend(objc_msgSend(v13 "layouts")];
        v41 = [v85 newBufferWithData:objc_msgSend(v37 type:{"data"), 1}];
        goto LABEL_86;
      }

      if (v80 != ++v36)
      {
        continue;
      }

      break;
    }

    v33 = [v32 countByEnumeratingWithState:&v92 objects:v121 count:16];
    if (v33)
    {
      continue;
    }

    break;
  }

LABEL_94:
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v77 = [v64 geometrySourcesForSemantic:@"kGeometrySourceSemanticColor"];
  v43 = [v77 countByEnumeratingWithState:&v88 objects:v120 count:16];
  if (v43)
  {
    LODWORD(v44) = 0;
    v45 = *v89;
    v46 = *MEMORY[0x277CD7A80];
    v81 = *v104;
    LODWORD(v47) = v35;
    do
    {
      v48 = 0;
      v44 = v44;
      v47 = v47;
      do
      {
        if (*v89 != v45)
        {
          objc_enumerationMutation(v77);
        }

        v49 = *(*(&v88 + 1) + 8 * v48);
        v50 = v46;
        if (v44)
        {
          v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"color%d", v44];
        }

        [objc_msgSend(objc_msgSend(v13 "attributes")];
        [objc_msgSend(objc_msgSend(v13 "attributes")];
        [objc_msgSend(objc_msgSend(v13 "attributes")];
        if (v87)
        {
          v51 = [v85 newBuffer:objc_msgSend(v49 type:{"dataStride") * v82, 1}];
          remapVertexAttributeBuffer(v49, *(v108 + v44), &v107, &v104[4], v81, v84, v83, [objc_msgSend(v51 "map")]);
          [objc_msgSend(objc_msgSend(v13 "attributes")];
          [objc_msgSend(objc_msgSend(v13 "layouts")];
        }

        else
        {
          [objc_msgSend(objc_msgSend(v13 "attributes")];
          [objc_msgSend(objc_msgSend(v13 "layouts")];
          v51 = [v85 newBufferWithData:objc_msgSend(v49 type:{"data"), 1}];
        }

        [v86 addObject:v51];

        ++v47;
        ++v44;
        ++v48;
      }

      while (v43 != v48);
      v43 = [v77 countByEnumeratingWithState:&v88 objects:v120 count:16];
    }

    while (v43);
  }

  v107.__end_ = v107.__begin_;
  v105 = *&v104[4];
  v52 = objc_opt_new();
  v53 = [v64 geometryElementCount];
  v54 = [objc_msgSend(v64 "materials")];
  if (v53)
  {
    v55 = v54;
    for (k = 0; k != v53; ++k)
    {
      v57 = [v64 geometryElementAtIndex:k];
      if (v87)
      {
        v58 = [MEMORY[0x277CD7B48] submeshWithUniquedIndexData:objc_msgSend(v65 andSCNGeometryElement:"objectAtIndexedSubscript:" bufferAllocator:{k), v57, a4}];
      }

      else
      {
        v58 = [MEMORY[0x277CD7B48] submeshWithSCNGeometryElement:v57 bufferAllocator:a4 positionSourceChannel:*v117];
      }

      v59 = v58;
      [v52 addObject:v58];
      if (v55)
      {
        v60 = [objc_msgSend(v64 "materials")];
        [v59 setMaterial:{objc_msgSend(MEMORY[0x277CD7AF0], "materialWithSCNMaterial:", v60)}];
      }
    }
  }

  v61 = [[v63 alloc] initWithVertexBuffers:v86 vertexCount:v82 descriptor:v13 submeshes:v52];

  [v61 setName:{objc_msgSend(v64, "name")}];
  objc_setAssociatedObject(v61, @"SCNSceneKitAssociatedObject", v64, 0x301);
  v12 = v61;
  if (*&v104[4])
  {
    v105 = *&v104[4];
    operator delete(*&v104[4]);
  }

  if (v107.__begin_)
  {
    v107.__end_ = v107.__begin_;
    operator delete(v107.__begin_);
  }

LABEL_118:
  if (v108)
  {
    v109 = v108;
    operator delete(v108);
  }

  if (v111)
  {
    v112 = v111;
    operator delete(v111);
  }

  if (v114)
  {
    v115 = v114;
    operator delete(v114);
  }

  if (v117)
  {
    v118 = v117;
    operator delete(v117);
  }

  return v12;
}

@end