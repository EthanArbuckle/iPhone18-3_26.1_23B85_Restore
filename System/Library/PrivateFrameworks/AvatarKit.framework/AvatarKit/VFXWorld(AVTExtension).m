@interface VFXWorld(AVTExtension)
- (void)avt_fixQuirksOfNewUSDSchemaWithOptions:()AVTExtension handler:;
- (void)avt_removeDuplicateSkeletonRootWithHandler:()AVTExtension;
- (void)avt_removeFaceSetsExportedAsDummyNodesWithHandler:()AVTExtension;
- (void)avt_setInitialValuesExportedAsAnimationsWithWithOptions:()AVTExtension handler:;
@end

@implementation VFXWorld(AVTExtension)

- (void)avt_fixQuirksOfNewUSDSchemaWithOptions:()AVTExtension handler:
{
  v6 = a4;
  [a1 avt_setInitialValuesExportedAsAnimationsWithWithOptions:a3 handler:v6];
  [a1 avt_removeDuplicateSkeletonRootWithHandler:v6];
  [a1 avt_removeFaceSetsExportedAsDummyNodesWithHandler:v6];
}

- (void)avt_setInitialValuesExportedAsAnimationsWithWithOptions:()AVTExtension handler:
{
  v6 = a4;
  v7 = [a1 rootNode];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __90__VFXWorld_AVTExtension__avt_setInitialValuesExportedAsAnimationsWithWithOptions_handler___block_invoke;
  v12 = &unk_1E7F4A048;
  v13 = v6;
  v14 = a3;
  v8 = v6;
  [v7 enumerateHierarchyUsingBlock:&v9];

  [MEMORY[0x1E69DF378] flush];
}

- (void)avt_removeDuplicateSkeletonRootWithHandler:()AVTExtension
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v44 = a1;
  v5 = [a1 rootNode];
  v6 = [v5 childNodeWithName:@"skeleton_GRP" recursively:1];

  if (v6)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = [v6 childNodes];
    v7 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
    if (!v7)
    {
      goto LABEL_10;
    }

    v8 = v7;
    v9 = *v53;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v53 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [*(*(&v52 + 1) + 8 * i) name];
        v12 = [v11 hasPrefix:@"mindBlown_"];

        if (v12)
        {
LABEL_33:

          goto LABEL_34;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v52 objects:v63 count:16];
    }

    while (v8);
LABEL_10:

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = [v6 childNodes];
    v13 = [obj countByEnumeratingWithState:&v48 objects:v62 count:16];
    if (!v13)
    {
      goto LABEL_33;
    }

    v14 = v13;
    v43 = v6;
    v15 = *v49;
    v41 = *(MEMORY[0x1E69E9B18] + 16);
    v42 = *MEMORY[0x1E69E9B18];
    v39 = *(MEMORY[0x1E69E9B18] + 48);
    v40 = *(MEMORY[0x1E69E9B18] + 32);
LABEL_12:
    v16 = 0;
    while (1)
    {
      if (*v49 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v48 + 1) + 8 * v16);
      v18 = [v17 name];
      if (([v18 isEqualToString:@"root_JNT"]& 1) != 0)
      {
        goto LABEL_21;
      }

      v19 = [v17 name];
      if ([v19 isEqualToString:@"bodyRoot_JNT"])
      {
        break;
      }

      v20 = [v17 name];
      v21 = [v20 isEqualToString:@"spineFk0_JNT"];

      if ((v21 & 1) == 0)
      {
        v18 = avt_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v37 = [v17 name];
          *buf = 136315394;
          v59 = "[rootJoint.name isEqualToString:AVT_SKINNER_ROOT_NAME] || [rootJoint.name isEqualToString:AVT_SKINNER_MEMOJI_FLATTENED_BODY_ROOT_NAME] || [rootJoint.name isEqualToString:AVT_SKINNER_MEMOJI_HIERARCHICAL_BODY_ROOT_NAME]";
          v60 = 2112;
          v61 = v37;
          _os_log_error_impl(&dword_1BB472000, v18, OS_LOG_TYPE_ERROR, "Error: Condition '%s' failed. Skeleton group has unknown root joint %@", buf, 0x16u);
        }

        goto LABEL_21;
      }

LABEL_22:
      v22 = [v17 childNodes];
      v23 = [v22 firstObject];

      v24 = [v17 name];
      v25 = [v23 name];
      v26 = [v24 isEqualToString:v25];

      if (v26)
      {
        [v17 transform];
        if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v27, v42), vceqq_f32(v28, v41)), vandq_s8(vceqq_f32(v29, v40), vceqq_f32(v30, v39)))) & 0x80000000) == 0)
        {
          v31 = avt_default_log();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            [(VFXWorld(AVTExtension) *)v56 avt_removeDuplicateSkeletonRootWithHandler:v31];
          }
        }

        if (v4)
        {
          v32 = MEMORY[0x1E696AEC0];
          v33 = [v17 name];
          v34 = [v23 childNodes];
          v35 = [v32 stringWithFormat:@"Removed duplicate node %@ (%ld child joints)", v33, objc_msgSend(v34, "count")];
          v4[2](v4, v35);
        }

        [v17 removeFromParentNode];
        [v23 removeFromParentNode];
        [v43 addChildNode:v23];
        v36 = [v44 rootNode];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __69__VFXWorld_AVTExtension__avt_removeDuplicateSkeletonRootWithHandler___block_invoke;
        v46[3] = &unk_1E7F47EA0;
        v46[4] = v17;
        v47 = v23;
        [v36 enumerateHierarchyUsingBlock:v46];
      }

      if (v14 == ++v16)
      {
        v14 = [obj countByEnumeratingWithState:&v48 objects:v62 count:16];
        if (!v14)
        {
          v6 = v43;
          goto LABEL_33;
        }

        goto LABEL_12;
      }
    }

LABEL_21:
    goto LABEL_22;
  }

LABEL_34:

  v38 = *MEMORY[0x1E69E9840];
}

- (void)avt_removeFaceSetsExportedAsDummyNodesWithHandler:()AVTExtension
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [a1 rootNode];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __76__VFXWorld_AVTExtension__avt_removeFaceSetsExportedAsDummyNodesWithHandler___block_invoke;
  v24[3] = &unk_1E7F47B10;
  v7 = v5;
  v25 = v7;
  [v6 enumerateHierarchyUsingBlock:v24];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        if (v4)
        {
          v13 = MEMORY[0x1E696AEC0];
          v14 = [*(*(&v20 + 1) + 8 * v11) name];
          v15 = [v12 parentNode];
          v16 = [v15 name];
          v17 = [v13 stringWithFormat:@"Removed face set dummy node %@ from %@", v14, v16];
          v4[2](v4, v17);
        }

        [v12 removeFromParentNode];
        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v9);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)avt_removeDuplicateSkeletonRootWithHandler:()AVTExtension .cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "simd_equal(rootJoint.transform, matrix_identity_float4x4)";
  _os_log_error_impl(&dword_1BB472000, log, OS_LOG_TYPE_ERROR, "Error: Condition '%s' failed. Root joint shouldn't have any transform", buf, 0xCu);
}

@end