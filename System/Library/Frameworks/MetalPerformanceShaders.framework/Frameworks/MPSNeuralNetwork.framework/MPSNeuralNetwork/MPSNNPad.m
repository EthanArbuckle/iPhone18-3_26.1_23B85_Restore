@interface MPSNNPad
- (MPSNNPad)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNPad)initWithDevice:(id)device;
- (MPSNNPad)initWithDevice:(id)device paddingSizeBefore:(MPSImageCoordinate *)paddingSizeBefore paddingSizeAfter:(MPSImageCoordinate *)paddingSizeAfter;
- (MPSNNPad)initWithDevice:(id)device paddingSizeBefore:(MPSImageCoordinate *)paddingSizeBefore paddingSizeAfter:(MPSImageCoordinate *)paddingSizeAfter fillValueArray:(NSData *)fillValueArray;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (id)debugDescription;
- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4;
- (id)resultStateForSourceImage:(id)a3 sourceStates:(id)a4 destinationImage:(id)a5;
- (id)temporaryResultStateForCommandBuffer:(id)a3 sourceImage:(id)a4 sourceStates:(id)a5 destinationImage:(id)a6;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setPaddingSizeAfter:(MPSImageCoordinate *)paddingSizeAfter;
- (void)setPaddingSizeBefore:(MPSImageCoordinate *)paddingSizeBefore;
@end

@implementation MPSNNPad

- (MPSNNPad)initWithDevice:(id)device
{
  memset(v6, 0, sizeof(v6));
  memset(v7, 0, sizeof(v7));
  return objc_msgSend_initWithDevice_paddingSizeBefore_paddingSizeAfter_fillValueArray_(self, a2, device, v7, v6, 0, v3, v4);
}

- (MPSNNPad)initWithDevice:(id)device paddingSizeBefore:(MPSImageCoordinate *)paddingSizeBefore paddingSizeAfter:(MPSImageCoordinate *)paddingSizeAfter
{
  v9 = *paddingSizeBefore;
  v8 = *paddingSizeAfter;
  return objc_msgSend_initWithDevice_paddingSizeBefore_paddingSizeAfter_fillValueArray_(self, a2, device, &v9, &v8, 0, v5, v6);
}

- (MPSNNPad)initWithDevice:(id)device paddingSizeBefore:(MPSImageCoordinate *)paddingSizeBefore paddingSizeAfter:(MPSImageCoordinate *)paddingSizeAfter fillValueArray:(NSData *)fillValueArray
{
  v45.receiver = self;
  v45.super_class = MPSNNPad;
  result = [(MPSCNNKernel *)&v45 initWithDevice:?];
  if (result)
  {
    result->_aBufFP32Len = 0;
    result->_aBuf = 0;
    channel = paddingSizeAfter->channel;
    *&result->_paddingSizeAfter.x = *&paddingSizeAfter->x;
    result->_paddingSizeAfter.channel = channel;
    v19 = paddingSizeBefore->channel;
    *&result->_paddingSizeBefore.x = *&paddingSizeBefore->x;
    result->_paddingSizeBefore.channel = v19;
    if (fillValueArray)
    {
      v20 = result;
      v21 = objc_msgSend_length(fillValueArray, v11, v12, v13, v14, v15, v16, v17);
      v20->_aBufFP32Len = v21 >> 2;
      v22 = (*(**(&v20->super.super.super.isa + *MEMORY[0x277CD7350]) + 24))(*(&v20->super.super.super.isa + *MEMORY[0x277CD7350]));
      v28 = objc_msgSend_newBufferWithLength_options_(device, v23, ((v21 & 0xFFFFFFFFFFFFFFFCLL) + 15) & 0xFFFFFFFFFFFFFFF0, 16 * v22, v24, v25, v26, v27);
      v36 = objc_msgSend_contents(v28, v29, v30, v31, v32, v33, v34, v35);
      v44 = objc_msgSend_bytes(fillValueArray, v37, v38, v39, v40, v41, v42, v43);
      memcpy(v36, v44, v21);
      result = v20;
      v20->_aBuf = v28;
    }

    result->super._checkFlags |= 0x6A002u;
    result->super._encode = sub_239BAEF10;
    result->super._batchEncode = sub_239BAF114;
    result->super._encodeData = result;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v56.receiver = self;
  v56.super_class = MPSNNPad;
  v6 = [(MPSCNNKernel *)&v56 copyWithZone:a3 device:?];
  v7 = *&self->_paddingSizeAfter.x;
  *(v6 + 49) = self->_paddingSizeAfter.channel;
  *(v6 + 376) = v7;
  channel = self->_paddingSizeBefore.channel;
  *(v6 + 22) = *&self->_paddingSizeBefore.x;
  *(v6 + 46) = channel;
  *(v6 + 86) = LODWORD(self->_fillValue);
  *(v6 + 42) = self->_aBufFP32Len;
  aBuf = self->_aBuf;
  v10 = *(&self->super.super.super.isa + *MEMORY[0x277CD7350]);
  v11 = *(v10 + 16);
  if (!a4)
  {
    a4 = *(v10 + 16);
  }

  MPSDevice = MPSDevice::GetMPSDevice();
  v20 = 0;
  if (MPSDevice && aBuf && a4)
  {
    if (a4 == v11)
    {
      v20 = aBuf;
    }

    else
    {
      v21 = MPSDevice;
      v22 = objc_msgSend_length(aBuf, v13, v14, v15, v16, v17, v18, v19);
      v23 = (*(*v21 + 40))(v21);
      v24 = (*(*v21 + 24))(v21);
      v30 = objc_msgSend_newBufferWithLength_options_(a4, v25, v22, v23 | (16 * v24), v26, v27, v28, v29);
      if (v30)
      {
        v20 = v30;
        v38 = objc_msgSend_contents(v30, v31, v32, v33, v34, v35, v36, v37);
        v46 = objc_msgSend_contents(aBuf, v39, v40, v41, v42, v43, v44, v45);
        v54 = objc_msgSend_length(aBuf, v47, v48, v49, v50, v51, v52, v53);
        memcpy(v38, v46, v54);
      }

      else
      {
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v20 = 0;
      }
    }
  }

  *(v6 + 41) = v20;
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNNPad;
  [(MPSCNNKernel *)&v3 dealloc];
}

- (MPSNNPad)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v111.receiver = self;
  v111.super_class = MPSNNPad;
  v6 = [MPSCNNKernel initWithCoder:sel_initWithCoder_device_ device:?];
  v13 = v6;
  if (v6)
  {
    v6->super._checkFlags |= 0x6A002u;
    v6->super._encode = sub_239BAEF10;
    v6->super._batchEncode = sub_239BAF114;
    v6->super._encodeData = v6;
    if (*(&v6->super.super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v6->_paddingSizeBefore.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v7, @"MPSNNPad_paddingSizeBefore.x", v8, v9, v10, v11, v12);
      v13->_paddingSizeBefore.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v14, @"MPSNNPad_paddingSizeBefore.y", v15, v16, v17, v18, v19);
      v13->_paddingSizeBefore.channel = objc_msgSend_decodeInt64ForKey_(aDecoder, v20, @"MPSNNPad_paddingSizeBefore.channel", v21, v22, v23, v24, v25);
      v13->_paddingSizeAfter.x = objc_msgSend_decodeInt64ForKey_(aDecoder, v26, @"MPSNNPad_paddingSizeAfter.x", v27, v28, v29, v30, v31);
      v13->_paddingSizeAfter.y = objc_msgSend_decodeInt64ForKey_(aDecoder, v32, @"MPSNNPad_paddingSizeAfter.y", v33, v34, v35, v36, v37);
      v13->_paddingSizeAfter.channel = objc_msgSend_decodeInt64ForKey_(aDecoder, v38, @"MPSNNPad_paddingSizeAfter.channel", v39, v40, v41, v42, v43);
      objc_msgSend_decodeFloatForKey_(aDecoder, v44, @"MPSNNPad_fillValue", v45, v46, v47, v48, v49);
      v13->_fillValue = v50;
      v13->_aBufFP32Len = objc_msgSend_decodeInt64ForKey_(aDecoder, v51, @"MPSNNPad_aBufLenFP32", v52, v53, v54, v55, v56);
      v13->_aBuf = 0;
      aBufFP32Len = v13->_aBufFP32Len;
      if (aBufFP32Len)
      {
        MPSDevice = MPSDevice::GetMPSDevice();
        if (MPSDevice)
        {
          v110 = MPSDevice;
          if (!objc_msgSend_decodeBoolForKey_(aDecoder, v59, @"MPSNNPad_aBuf", v60, v61, v62, v63, v64) || !objc_msgSend_decodeBoolForKey_(aDecoder, v65, @"MPSNNPad_aBuf", v66, v67, v68, v69, v70))
          {
            v13->_aBuf = 0;
            return v13;
          }

          v112 = 0;
          v71 = objc_alloc(MEMORY[0x277CCACA8]);
          v78 = objc_msgSend_initWithFormat_(v71, v72, @"%@%@", v73, v74, v75, v76, v77, @"MPSNNPad_aBuf", @".length");
          v79 = objc_alloc(MEMORY[0x277CCACA8]);
          v86 = objc_msgSend_initWithFormat_(v79, v80, @"%@%@", v81, v82, v83, v84, v85, @"MPSNNPad_aBuf", @".data");
          v93 = objc_msgSend_decodeInt64ForKey_(aDecoder, v87, v78, v88, v89, v90, v91, v92);
          v99 = objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v94, v86, &v112, v95, v96, v97, v98);

          if (v99)
          {
            if (4 * v93 == v112)
            {
              v100 = malloc_type_malloc(4 * v93, 0x100004052888210uLL);
              if (v100)
              {
                v101 = v100;
                MPSCopyToFromNetworkByteOrder32();
                if (v93 == aBufFP32Len)
                {
                  v102 = (*(*v110 + 24))(v110);
                  v107 = objc_msgSend_newBufferWithBytes_length_options_(device, v103, v101, 4 * aBufFP32Len, 16 * v102, v104, v105, v106);
                  free(v101);
                  v13->_aBuf = v107;
                  return v13;
                }

                free(v101);
              }
            }
          }
        }

        v13->_aBuf = 0;
        if (MTLReportFailureTypeEnabled())
        {
          MTLReportFailure();
        }

        v13->_aBuf = 0;
        v13->_aBufFP32Len = 0;
      }
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v108 = objc_opt_class();
        NSStringFromClass(v108);
        MTLReportFailure();
      }

      return 0;
    }
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  *(&self->super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v93.receiver = self;
  v93.super_class = MPSNNPad;
  [(MPSCNNKernel *)&v93 encodeWithCoder:?];
  objc_msgSend_encodeInt64_forKey_(a3, v5, self->_paddingSizeBefore.x, @"MPSNNPad_paddingSizeBefore.x", v6, v7, v8, v9);
  objc_msgSend_encodeInt64_forKey_(a3, v10, self->_paddingSizeBefore.y, @"MPSNNPad_paddingSizeBefore.y", v11, v12, v13, v14);
  objc_msgSend_encodeInt64_forKey_(a3, v15, self->_paddingSizeBefore.channel, @"MPSNNPad_paddingSizeBefore.channel", v16, v17, v18, v19);
  objc_msgSend_encodeInt64_forKey_(a3, v20, self->_paddingSizeAfter.x, @"MPSNNPad_paddingSizeAfter.x", v21, v22, v23, v24);
  objc_msgSend_encodeInt64_forKey_(a3, v25, self->_paddingSizeAfter.y, @"MPSNNPad_paddingSizeAfter.y", v26, v27, v28, v29);
  objc_msgSend_encodeInt64_forKey_(a3, v30, self->_paddingSizeAfter.channel, @"MPSNNPad_paddingSizeAfter.channel", v31, v32, v33, v34);
  *&v35 = self->_fillValue;
  objc_msgSend_encodeFloat_forKey_(a3, v36, @"MPSNNPad_fillValue", v37, v38, v39, v40, v41, v35);
  aBuf = self->_aBuf;
  if (aBuf && (v50 = objc_msgSend_length(aBuf, v42, v43, v44, v45, v46, v47, v48), aBufFP32Len = self->_aBufFP32Len, v50 >= 4 * aBufFP32Len))
  {
    objc_msgSend_encodeInt64_forKey_(a3, v42, self->_aBufFP32Len, @"MPSNNPad_aBufLenFP32", v45, v46, v47, v48);
    if (aBufFP32Len)
    {
      v59 = self->_aBuf;
      if (v59)
      {
        v60 = objc_msgSend_contents(v59, v52, v53, v54, v55, v56, v57, v58);
        objc_msgSend_encodeBool_forKey_(a3, v61, v60 != 0, @"MPSNNPad_aBuf", v62, v63, v64, v65);
        if (v60)
        {
          v66 = objc_alloc(MEMORY[0x277CCACA8]);
          v73 = objc_msgSend_initWithFormat_(v66, v67, @"%@%@", v68, v69, v70, v71, v72, @"MPSNNPad_aBuf", @".length");
          v74 = objc_alloc(MEMORY[0x277CCACA8]);
          v81 = objc_msgSend_initWithFormat_(v74, v75, @"%@%@", v76, v77, v78, v79, v80, @"MPSNNPad_aBuf", @".data");
          objc_msgSend_encodeInt64_forKey_(a3, v82, aBufFP32Len, v73, v83, v84, v85, v86);

          v87 = malloc_type_malloc(4 * aBufFP32Len, 0x100004052888210uLL);
          if (v87)
          {
            v88 = v87;
            MPSCopyToFromNetworkByteOrder32();
            objc_msgSend_encodeBytes_length_forKey_(a3, v89, v88, 4 * aBufFP32Len, v81, v90, v91, v92);
            free(v88);
          }
        }
      }

      else
      {
        objc_msgSend_encodeBool_forKey_(a3, v52, 0, @"MPSNNPad_aBuf", v55, v56, v57, v58);
      }
    }
  }

  else
  {
    objc_msgSend_encodeInt64_forKey_(a3, v42, 0, @"MPSNNPad_aBufLenFP32", v45, v46, v47, v48);
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v17.receiver = self;
  v17.super_class = MPSNNPad;
  v4 = [(MPSCNNKernel *)&v17 debugDescription];
  v11 = *&self->_paddingSizeBefore.x;
  channel = self->_paddingSizeBefore.channel;
  v13 = *&self->_paddingSizeAfter.x;
  v14 = self->_paddingSizeAfter.channel;
  fillValue = self->_fillValue;
  if (self->_aBuf)
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tpadBefore: (%d, %d, %d), \tpadAfter: (%d, %d, %d)            \tfillValue: %f\tfillValueBuf: %s", v6, v7, v8, v9, v10, v4, v11, channel, v13, v14, *&fillValue, "YES");
  }

  else
  {
    return objc_msgSend_stringWithFormat_(v3, v5, @"%@\n\tpadBefore: (%d, %d, %d), \tpadAfter: (%d, %d, %d)            \tfillValue: %f\tfillValueBuf: %s", v6, v7, v8, v9, v10, v4, v11, channel, v13, v14, *&fillValue, "NO");
  }
}

- (id)destinationImageDescriptorForSourceImages:(id)a3 sourceStates:(id)a4
{
  v72.receiver = self;
  v72.super_class = MPSNNPad;
  v5 = [(MPSCNNKernel *)&v72 destinationImageDescriptorForSourceImages:a3 sourceStates:a4];
  v13 = objc_msgSend_width(v5, v6, v7, v8, v9, v10, v11, v12);
  v21 = objc_msgSend_height(v5, v14, v15, v16, v17, v18, v19, v20);
  v29 = objc_msgSend_featureChannels(v5, v22, v23, v24, v25, v26, v27, v28);
  x = self->_paddingSizeBefore.x;
  y = self->_paddingSizeBefore.y;
  v32 = self->_paddingSizeAfter.x;
  channel = self->_paddingSizeBefore.channel;
  v66 = self->_paddingSizeAfter.y;
  v67 = self->_paddingSizeAfter.channel;
  v71 = 0;
  v70 = 0u;
  objc_msgSend_offset(self, v34, v35, v36, v37, v38, v39, v40);
  v70 = vnegq_s64(*&self->_paddingSizeBefore.x);
  v68 = v70;
  v69 = v71;
  objc_msgSend_setOffset_(self, v41, &v68, v42, v43, v44, v45, v46);
  objc_msgSend_setWidth_(v5, v47, x + v13 + v32, v48, v49, v50, v51, v52);
  objc_msgSend_setHeight_(v5, v53, y + v21 + v66, v54, v55, v56, v57, v58);
  objc_msgSend_setFeatureChannels_(v5, v59, channel + v29 + v67, v60, v61, v62, v63, v64);
  return v5;
}

- (id)resultStateForSourceImage:(id)a3 sourceStates:(id)a4 destinationImage:(id)a5
{
  v9 = [MPSNNPadGradientState alloc];
  v16 = objc_msgSend_initWithResource_(v9, v10, 0, v11, v12, v13, v14, v15);
  v24 = v16;
  if (self)
  {
    objc_msgSend_paddingSizeBefore(self, v17, v18, v19, v20, v21, v22, v23);
    *(v24 + 304) = v53;
    *(v24 + 288) = v52;
    objc_msgSend_paddingSizeAfter(self, v25, v26, v27, v28, v29, v30, v31);
  }

  else
  {
    v16[36] = 0;
    v16[37] = 0;
    v16[38] = 0;
    v52 = 0uLL;
    v53 = 0;
  }

  *(v24 + 328) = v53;
  *(v24 + 312) = v52;
  *(v24 + 336) = objc_msgSend_sourceFeatureChannelMaxCount(self, v17, v18, v19, v20, v21, v22, v23);
  objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v32, v24, a3, a4, a5, v33, v34);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    v35 = MEMORY[0x277CCACA8];
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v44 = objc_msgSend_stringWithFormat_(v35, v38, @"created by %@", v39, v40, v41, v42, v43, v37);
    objc_msgSend_setLabel_(v24, v45, v44, v46, v47, v48, v49, v50);
  }

  return v24;
}

- (id)temporaryResultStateForCommandBuffer:(id)a3 sourceImage:(id)a4 sourceStates:(id)a5 destinationImage:(id)a6
{
  if (a3)
  {
    v19 = objc_msgSend_temporaryStateWithCommandBuffer_(MPSNNPadGradientState, a2, a3, a4, a5, a6, v6, v7);
    if (self)
    {
LABEL_3:
      objc_msgSend_paddingSizeBefore(self, v12, v13, v14, v15, v16, v17, v18);
      *(v19 + 38) = v55;
      *(v19 + 18) = v54;
      objc_msgSend_paddingSizeAfter(self, v20, v21, v22, v23, v24, v25, v26);
      goto LABEL_6;
    }
  }

  else
  {
    v27 = [MPSNNPadGradientState alloc];
    v19 = objc_msgSend_initWithResource_(v27, v28, 0, v29, v30, v31, v32, v33);
    if (self)
    {
      goto LABEL_3;
    }
  }

  *(v19 + 36) = 0;
  *(v19 + 37) = 0;
  *(v19 + 38) = 0;
  v54 = 0uLL;
  v55 = 0;
LABEL_6:
  *(v19 + 41) = v55;
  *(v19 + 312) = v54;
  *(v19 + 42) = objc_msgSend_sourceFeatureChannelMaxCount(self, v12, v13, v14, v15, v16, v17, v18);
  objc_msgSend_copyToGradientState_sourceImage_sourceStates_destinationImage_(self, v34, v19, a4, a5, a6, v35, v36);
  if ((*(&self->super.super.super.isa + *MEMORY[0x277CD7378]) & 0x10) != 0)
  {
    v37 = MEMORY[0x277CCACA8];
    v38 = objc_opt_class();
    v39 = NSStringFromClass(v38);
    v46 = objc_msgSend_stringWithFormat_(v37, v40, @"created by %@", v41, v42, v43, v44, v45, v39);
    objc_msgSend_setLabel_(v19, v47, v46, v48, v49, v50, v51, v52);
  }

  return v19;
}

- (void)setPaddingSizeBefore:(MPSImageCoordinate *)paddingSizeBefore
{
  channel = paddingSizeBefore->channel;
  *&self->_paddingSizeBefore.x = *&paddingSizeBefore->x;
  self->_paddingSizeBefore.channel = channel;
}

- (void)setPaddingSizeAfter:(MPSImageCoordinate *)paddingSizeAfter
{
  channel = paddingSizeAfter->channel;
  *&self->_paddingSizeAfter.x = *&paddingSizeAfter->x;
  self->_paddingSizeAfter.channel = channel;
}

@end