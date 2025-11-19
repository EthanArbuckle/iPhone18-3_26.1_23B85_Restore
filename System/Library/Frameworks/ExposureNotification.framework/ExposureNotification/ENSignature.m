@interface ENSignature
- (BOOL)_encodeInfoWithProtobufCoder:(id)a3 error:(id *)a4;
- (BOOL)_readSignatureInfoPtr:(const char *)a3 length:(unint64_t)a4 error:(id *)a5;
- (BOOL)encodeWithProtobufCoder:(id)a3 error:(id *)a4;
- (ENSignature)initWithBytes:(const char *)a3 length:(unint64_t)a4 error:(id *)a5;
- (ENSignature)initWithXPCObject:(id)a3 error:(id *)a4;
- (id)description;
- (void)encodeWithXPCObject:(id)a3;
@end

@implementation ENSignature

- (ENSignature)initWithBytes:(const char *)a3 length:(unint64_t)a4 error:(id *)a5
{
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__0;
  v47 = __Block_byref_object_dispose__0;
  v48 = 0;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __42__ENSignature_initWithBytes_length_error___block_invoke;
  v42[3] = &unk_278A4B610;
  v42[4] = &v43;
  v42[5] = a5;
  v8 = MEMORY[0x2383EE560](v42, a2);
  v9 = [(ENSignature *)self init];
  if (!v9)
  {
    v31 = ENErrorF(1);
    v29 = 0;
    v10 = v44[5];
    v44[5] = v31;
    goto LABEL_28;
  }

  v10 = objc_alloc_init(ENProtobufCoder);
  [(ENProtobufCoder *)v10 setReadMemory:a3 length:a4];
  do
  {
    v11 = objc_autoreleasePoolPush();
    v41 = 0;
    v12 = v44;
    obj = v44[5];
    v40 = 0;
    v13 = [(ENProtobufCoder *)v10 readType:&v41 tag:&v40 eofOkay:1 error:&obj];
    objc_storeStrong(v12 + 5, obj);
    if (v13)
    {
      if (v40 > 2)
      {
        if (v40 == 3)
        {
          LODWORD(v38) = 0;
          v27 = v44;
          v34 = v44[5];
          v28 = [(ENProtobufCoder *)v10 readVarIntUInt32:&v38 error:&v34];
          objc_storeStrong(v27 + 5, v34);
          if (!v28)
          {
            goto LABEL_20;
          }

          v9->_batchCount = v38;
          goto LABEL_23;
        }

        if (v40 == 4)
        {
          v17 = v44;
          v33 = v44[5];
          v18 = [(ENProtobufCoder *)v10 readNSDataAndReturnError:&v33];
          objc_storeStrong(v17 + 5, v33);
          if (!v18)
          {
            goto LABEL_20;
          }

          signatureData = v9->_signatureData;
          v9->_signatureData = v18;

          goto LABEL_23;
        }
      }

      else
      {
        if (v40 == 1)
        {
          v38 = 0;
          v22 = v10;
          v23 = v44;
          v37 = v44[5];
          v24 = [(ENProtobufCoder *)v22 readLengthDelimited:&v38 error:&v37];
          objc_storeStrong(v23 + 5, v37);
          if (!v24 || (v25 = v44, v36 = v44[5], v26 = [(ENSignature *)v9 _readSignatureInfoPtr:v24 length:v38 error:&v36], objc_storeStrong(v25 + 5, v36), !v26))
          {
LABEL_20:
            v16 = 1;
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        if (v40 == 2)
        {
          LODWORD(v38) = 0;
          v14 = v44;
          v35 = v44[5];
          v15 = [(ENProtobufCoder *)v10 readVarIntUInt32:&v38 error:&v35];
          objc_storeStrong(v14 + 5, v35);
          if (!v15)
          {
            goto LABEL_20;
          }

          v9->_batchNumber = v38;
LABEL_23:
          v16 = 0;
          goto LABEL_24;
        }
      }

      v20 = v44;
      v32 = v44[5];
      v21 = [(ENProtobufCoder *)v10 skipType:v41 error:&v32];
      objc_storeStrong(v20 + 5, v32);
      if (!v21)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    if (v44[5])
    {
      v16 = 1;
    }

    else
    {
      v16 = 4;
    }

LABEL_24:
    objc_autoreleasePoolPop(v11);
  }

  while (!v16);
  if (v16 == 4)
  {
    v29 = v9;
  }

  else
  {
    v29 = 0;
  }

LABEL_28:

  v8[2](v8);
  _Block_object_dispose(&v43, 8);

  return v29;
}

id __42__ENSignature_initWithBytes_length_error___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    if (*(a1 + 40))
    {
      result = result;
      **(a1 + 40) = result;
    }
  }

  return result;
}

- (BOOL)_readSignatureInfoPtr:(const char *)a3 length:(unint64_t)a4 error:(id *)a5
{
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __50__ENSignature__readSignatureInfoPtr_length_error___block_invoke;
  v37[3] = &unk_278A4B610;
  v37[4] = &v38;
  v37[5] = a5;
  v8 = MEMORY[0x2383EE560](v37, a2);
  v9 = objc_alloc_init(ENProtobufCoder);
  [(ENProtobufCoder *)v9 setReadMemory:a3 length:a4];
  do
  {
    v10 = objc_autoreleasePoolPush();
    v36 = 0;
    v11 = v39;
    obj = v39[5];
    v35 = 0;
    v12 = [(ENProtobufCoder *)v9 readType:&v36 tag:&v35 eofOkay:1 error:&obj];
    objc_storeStrong(v11 + 5, obj);
    if (v12)
    {
      if (v35 <= 2)
      {
        if (v35 == 1)
        {
          v23 = v39;
          v33 = v39[5];
          v24 = [(ENProtobufCoder *)v9 readNSStringAndReturnError:&v33];
          objc_storeStrong(v23 + 5, v33);
          if (v24)
          {
            appleBundleID = self->_appleBundleID;
            self->_appleBundleID = v24;
            goto LABEL_22;
          }

          goto LABEL_27;
        }

        if (v35 == 2)
        {
          v17 = v39;
          v32 = v39[5];
          v18 = [(ENProtobufCoder *)v9 readNSStringAndReturnError:&v32];
          objc_storeStrong(v17 + 5, v32);
          if (v18)
          {
            appleBundleID = self->_androidBundleID;
            self->_androidBundleID = v18;
            goto LABEL_22;
          }

          goto LABEL_27;
        }
      }

      else
      {
        switch(v35)
        {
          case 3:
            v19 = v39;
            v31 = v39[5];
            v20 = [(ENProtobufCoder *)v9 readNSStringAndReturnError:&v31];
            objc_storeStrong(v19 + 5, v31);
            if (v20)
            {
              appleBundleID = self->_keyVersion;
              self->_keyVersion = v20;
              goto LABEL_22;
            }

            goto LABEL_27;
          case 4:
            v21 = v39;
            v30 = v39[5];
            v22 = [(ENProtobufCoder *)v9 readNSStringAndReturnError:&v30];
            objc_storeStrong(v21 + 5, v30);
            if (v22)
            {
              appleBundleID = self->_keyID;
              self->_keyID = v22;
              goto LABEL_22;
            }

            goto LABEL_27;
          case 5:
            v13 = v39;
            v29 = v39[5];
            v14 = [(ENProtobufCoder *)v9 readNSStringAndReturnError:&v29];
            objc_storeStrong(v13 + 5, v29);
            if (v14)
            {
              appleBundleID = self->_signatureAlgorithm;
              self->_signatureAlgorithm = v14;
LABEL_22:

LABEL_23:
              v16 = 0;
              goto LABEL_24;
            }

            goto LABEL_27;
        }
      }

      v25 = v39;
      v28 = v39[5];
      v26 = [(ENProtobufCoder *)v9 skipType:v36 error:&v28];
      objc_storeStrong(v25 + 5, v28);
      if (v26)
      {
        goto LABEL_23;
      }

LABEL_27:
      v16 = 1;
      goto LABEL_24;
    }

    if (v39[5])
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

LABEL_24:
    objc_autoreleasePoolPop(v10);
  }

  while (!v16);

  v8[2](v8);
  _Block_object_dispose(&v38, 8);

  return v16 == 2;
}

id __50__ENSignature__readSignatureInfoPtr_length_error___block_invoke(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    if (*(a1 + 40))
    {
      result = result;
      **(a1 + 40) = result;
    }
  }

  return result;
}

- (BOOL)_encodeInfoWithProtobufCoder:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  appleBundleID = self->_appleBundleID;
  v13 = 0;
  if (!appleBundleID || [v6 writeNSString:appleBundleID tag:1 error:a4])
  {
    androidBundleID = self->_androidBundleID;
    if (!androidBundleID || [v7 writeNSString:androidBundleID tag:2 error:a4])
    {
      keyVersion = self->_keyVersion;
      if (!keyVersion || [v7 writeNSString:keyVersion tag:3 error:a4])
      {
        keyID = self->_keyID;
        if (!keyID || [v7 writeNSString:keyID tag:4 error:a4])
        {
          signatureAlgorithm = self->_signatureAlgorithm;
          if (!signatureAlgorithm || [v7 writeNSString:signatureAlgorithm tag:5 error:a4])
          {
            v13 = 1;
          }
        }
      }
    }
  }

  return v13;
}

- (void)encodeWithXPCObject:(id)a3
{
  v4 = a3;
  v5 = [(NSString *)self->_appleBundleID UTF8String];
  if (v5)
  {
    xpc_dictionary_set_string(v4, "aBid", v5);
  }

  androidBundleID = self->_androidBundleID;
  v7 = v4;
  v8 = [(NSString *)androidBundleID UTF8String];
  if (v8)
  {
    xpc_dictionary_set_string(v7, "andBid", v8);
  }

  batchCount = self->_batchCount;
  if (batchCount)
  {
    xpc_dictionary_set_uint64(v7, "btCnt", batchCount);
  }

  batchNumber = self->_batchNumber;
  if (batchNumber)
  {
    xpc_dictionary_set_uint64(v7, "btNum", batchNumber);
  }

  keyID = self->_keyID;
  v12 = v7;
  v13 = [(NSString *)keyID UTF8String];
  if (v13)
  {
    xpc_dictionary_set_string(v12, "keyID", v13);
  }

  keyVersion = self->_keyVersion;
  v15 = v12;
  v16 = [(NSString *)keyVersion UTF8String];
  if (v16)
  {
    xpc_dictionary_set_string(v15, "keyV", v16);
  }

  signatureAlgorithm = self->_signatureAlgorithm;
  xdict = v15;
  v18 = [(NSString *)signatureAlgorithm UTF8String];
  if (v18)
  {
    xpc_dictionary_set_string(xdict, "sigAlg", v18);
  }

  signatureData = self->_signatureData;
  if (signatureData)
  {
    v20 = signatureData;
    v21 = xdict;
    v22 = [(NSData *)v20 bytes];
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = "";
    }

    v24 = [(NSData *)v20 length];

    xpc_dictionary_set_data(v21, "sigD", v23, v24);
  }
}

- (id)description
{
  NSAppendPrintF_safe();
  v3 = 0;
  v4 = v3;
  if (self->_appleBundleID)
  {
    v16 = v3;
    appleBundleID = self->_appleBundleID;
    NSAppendPrintF_safe();
    v5 = v16;

    v4 = v5;
  }

  if (self->_androidBundleID)
  {
    appleBundleID = self->_androidBundleID;
    NSAppendPrintF_safe();
    v6 = v4;

    v4 = v6;
  }

  keyID = self->_keyID;
  keyVersion = self->_keyVersion;
  signatureAlgorithm = self->_signatureAlgorithm;
  signatureData = self->_signatureData;
  batchNumber = self->_batchNumber;
  batchCount = self->_batchCount;
  [(NSData *)signatureData length];
  NSAppendPrintF_safe();
  v13 = v4;

  return v4;
}

- (BOOL)encodeWithProtobufCoder:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(ENProtobufCoder);
  v8 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(ENProtobufCoder *)v7 setWriteMutableData:v8];
  v11 = 0;
  if ([(ENSignature *)self _encodeInfoWithProtobufCoder:v7 error:a4])
  {
    v9 = [v8 length];
    if (!v9 || [v6 writeLengthDelimitedPtr:objc_msgSend(v8 length:"bytes") tag:v9 error:{1, a4}])
    {
      if ([v6 writeVarIntUInt32:self->_batchNumber tag:2 error:a4])
      {
        if ([v6 writeVarIntUInt32:self->_batchCount tag:3 error:a4])
        {
          signatureData = self->_signatureData;
          if (!signatureData || [v6 writeNSData:signatureData tag:4 error:a4])
          {
            v11 = 1;
          }
        }
      }
    }
  }

  return v11;
}

- (ENSignature)initWithXPCObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ENSignature *)self init];
  if (!v7)
  {
    if (!a4)
    {
      goto LABEL_21;
    }

LABEL_20:
    ENErrorF(2);
    *a4 = v10 = 0;
    goto LABEL_16;
  }

  if (MEMORY[0x2383EE9C0](v6) != MEMORY[0x277D86468])
  {
    if (!a4)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  OUTLINED_FUNCTION_0_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_0_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_21;
  }

  v8 = OUTLINED_FUNCTION_3_1();
  if (v8 == 6)
  {
    v7->_batchCount = 0;
  }

  else if (v8 == 5)
  {
    goto LABEL_21;
  }

  v9 = OUTLINED_FUNCTION_3_1();
  if (v9 != 6)
  {
    if (v9 != 5)
    {
      goto LABEL_11;
    }

LABEL_21:
    v10 = 0;
    goto LABEL_16;
  }

  v7->_batchNumber = 0;
LABEL_11:
  OUTLINED_FUNCTION_0_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_0_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_0_0();
  if (!CUXPCDecodeNSString())
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_0_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_21;
  }

  v10 = v7;
LABEL_16:

  return v10;
}

@end