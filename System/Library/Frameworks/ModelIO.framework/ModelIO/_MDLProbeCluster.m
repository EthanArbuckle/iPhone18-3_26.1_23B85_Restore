@interface _MDLProbeCluster
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCluster:(id)a3;
- (unint64_t)hash;
- (void)calculateCentroidNotIncludingSamplesinArray:(id)a3;
@end

@implementation _MDLProbeCluster

- (BOOL)isEmpty
{
  v3 = objc_msgSend_probes(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5) == 0;

  return v6;
}

- (BOOL)isEqualToCluster:(id)a3
{
  v6 = a3;
  if (v6 && (objc_msgSend_centroid(self, v4, v5), v25 = v7, objc_msgSend_centroid(v6, v8, v9), (vmovn_s32(vceqq_f32(v25, v12)).u8[0] & 1) != 0) && (objc_msgSend_centroid(self, v10, v11), v26 = v13, objc_msgSend_centroid(v6, v14, v15), (vmovn_s32(vceqq_f32(v26, v18)).i8[2] & 1) != 0))
  {
    objc_msgSend_centroid(self, v16, v17);
    v27 = v19;
    objc_msgSend_centroid(v6, v20, v21);
    v23 = vmovn_s32(vceqq_f32(v27, v22)).i8[4];
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqualToCluster = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToCluster = objc_msgSend_isEqualToCluster_(self, v5, v4);
    }

    else
    {
      isEqualToCluster = 0;
    }
  }

  return isEqualToCluster;
}

- (unint64_t)hash
{
  objc_msgSend_centroid(self, a2, v2);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = LODWORD(v6);
  }

  objc_msgSend_centroid(self, v4, v5);
  LODWORD(v10) = HIDWORD(v10);
  v11 = HIDWORD(v10);
  if (*(&v10 + 1) == 0.0)
  {
    v11 = 0;
  }

  v12 = v11 ^ v7;
  objc_msgSend_centroid(self, v8, v9, v10);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  return v12 ^ v14;
}

- (void)calculateCentroidNotIncludingSamplesinArray:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = self->_probes;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v24, v28, 16);
  if (!v8)
  {

    v23 = 0u;
LABEL_13:
    v21 = v23;
    goto LABEL_14;
  }

  v9 = 0;
  v10 = *v25;
  v23 = 0u;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v25 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v24 + 1) + 8 * i);
      if ((objc_msgSend_containsObject_(v4, v7, v12, *&v23, v24) & 1) == 0)
      {
        objc_msgSend_position(v12, v7, v13);
        v23 = vaddq_f32(v14, v23);
        ++v9;
      }
    }

    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v24, v28, 16);
  }

  while (v8);

  if (v9 < 1)
  {
    goto LABEL_13;
  }

  *v15.i32 = v9;
  __asm { FMOV            V1.4S, #1.0 }

  v21 = vmulq_f32(v23, vdivq_f32(_Q1, vdupq_lane_s32(v15, 0)));
LABEL_14:
  *self->_centroid = v21;

  v22 = *MEMORY[0x277D85DE8];
}

@end