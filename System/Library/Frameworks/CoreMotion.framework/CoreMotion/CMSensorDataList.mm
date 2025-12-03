@interface CMSensorDataList
- (BOOL)_updatePointers;
- (id).cxx_construct;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)_updateCurrentBlockProperties;
- (void)dealloc;
@end

@implementation CMSensorDataList

- (void)dealloc
{
  objc_msgSend_teardown(self->fProxy, v3, v4);

  v5.receiver = self;
  v5.super_class = CMSensorDataList;
  [(CMSensorDataList *)&v5 dealloc];
}

- (void)_updateCurrentBlockProperties
{
  self->fCurrentBlockIdentifier = objc_msgSend_identifier(self->fCurrentBlock, a2, v2);
  self->fCurrentBlockDataIdentifier = objc_msgSend_dataIdentifier(self->fCurrentBlock, v4, v5);
  objc_msgSend_startTime(self->fCurrentBlock, v6, v7);
  self->fCurrentBlockStartTime = v8;
  self->fCurrentBlockTimestamp = objc_msgSend_timestamp(self->fCurrentBlock, v9, v10);
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  result = 0;
  state->var1 = objects;
  state->var2 = self;
  if (count && self->fCurrentBlock)
  {
    v10 = 0;
    while (1)
    {
      fBlockOffset = self->fBlockOffset;
      if (fBlockOffset + objc_msgSend_offset(self->fCurrentBlock, a2, state) >= self->fDataBufferLength)
      {
        v64 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v12, v13);
        v65 = self->fBlockOffset;
        fCurrentBlockIdentifier = self->fCurrentBlockIdentifier;
        v71 = v64;
        v68 = objc_msgSend_offset(self->fCurrentBlock, v66, v67);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v71, v69, a2, self, @"CMSensorRecorder.mm", 239, @"Unexpected ptr exceeding size of buffer, block id, %llu, block offset %llu, size, %zu", fCurrentBlockIdentifier, v65 + v68, self->fDataBufferLength);
      }

      v76 = 0;
      fDataType = self->fDataType;
      if (fDataType == 2)
      {
        break;
      }

      if (fDataType != 1)
      {
        if (fDataType)
        {
          v43 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v12, v13);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v43, v44, a2, self, @"CMSensorRecorder.mm", 325, @"Unexpected sensor type!");
          goto LABEL_29;
        }

        v74 = 0uLL;
        LODWORD(v75) = 0;
        *&v15 = sub_19B76D280(&self->fAccelUnpacker, &v76, &v74);
        if (objc_msgSend_count(self->fCachedData, v16, v17, v15) > v10)
        {
          v19 = objc_msgSend_objectAtIndexedSubscript_(self->fCachedData, v18, v10);
          if (objc_msgSend_retainCount(v19, v20, v21) == 1)
          {
            goto LABEL_17;
          }

          v23 = CMRecordedAccelerometerData;
          goto LABEL_26;
        }

        v49 = CMRecordedAccelerometerData;
LABEL_22:
        v50 = [v49 alloc];
        v47 = objc_msgSend_initWithData_timestamp_walltime_identifier_(v50, v51, &v74, self->fCurrentBlockTimestamp, self->fCurrentBlockIdentifier, self->fCurrentBlockStartTime);
        goto LABEL_23;
      }

      v74 = 0uLL;
      v75 = 0;
      sub_19B76D3E4(&self->fGyroUnpacker, &v76, &v74);
      v72 = v74;
      v73 = v75;
      if (objc_msgSend_count(self->fCachedData, v24, v25) > v10)
      {
        v27 = objc_msgSend_objectAtIndexedSubscript_(self->fCachedData, v26, v10);
        if (objc_msgSend_retainCount(v27, v28, v29) == 1)
        {
          v31 = objc_msgSend_objectAtIndexedSubscript_(self->fCachedData, v30, v10);
          objc_msgSend_resetWithData_timestamp_walltime_identifier_(v31, v32, &v72, self->fCurrentBlockTimestamp, self->fCurrentBlockIdentifier, self->fCurrentBlockStartTime);
          goto LABEL_29;
        }

        v53 = [CMRecordedGyroData alloc];
        v55 = objc_msgSend_initWithData_timestamp_walltime_identifier_(v53, v54, &v72, self->fCurrentBlockTimestamp, self->fCurrentBlockIdentifier, self->fCurrentBlockStartTime);
        goto LABEL_27;
      }

      v45 = [CMRecordedGyroData alloc];
      v47 = objc_msgSend_initWithData_timestamp_walltime_identifier_(v45, v46, &v72, self->fCurrentBlockTimestamp, self->fCurrentBlockIdentifier, self->fCurrentBlockStartTime);
LABEL_23:
      v52 = v47;
      objc_msgSend_addObject_(self->fCachedData, v48, v47);
LABEL_28:

LABEL_29:
      objects[v10] = objc_msgSend_objectAtIndexedSubscript_(self->fCachedData, v33, v10);
      v59 = self->fBlockOffset + v76;
      self->fBlockOffset = v59;
      if (v59 >= objc_msgSend_dataSize(self->fCurrentBlock, v60, v61))
      {
        ++self->fCurrentIdentifier;
        self->fBlockOffset = 0;
      }

      if ((objc_msgSend__updatePointers(self, v62, v63) & 1) == 0)
      {
        return v10 + 1;
      }

      if (count == ++v10)
      {
        return count;
      }
    }

    v74 = 0uLL;
    LODWORD(v75) = 0;
    *&v34 = sub_19B76D534(&self->fPressureUnpacker, &v76, &v74);
    if (objc_msgSend_count(self->fCachedData, v35, v36, v34) > v10)
    {
      v38 = objc_msgSend_objectAtIndexedSubscript_(self->fCachedData, v37, v10);
      if (objc_msgSend_retainCount(v38, v39, v40) == 1)
      {
LABEL_17:
        v41 = objc_msgSend_objectAtIndexedSubscript_(self->fCachedData, v22, v10);
        objc_msgSend_resetWithData_timestamp_walltime_identifier_(v41, v42, &v74, self->fCurrentBlockTimestamp, self->fCurrentBlockIdentifier, self->fCurrentBlockStartTime);
        goto LABEL_29;
      }

      v23 = CMRecordedPressureData;
LABEL_26:
      v57 = [v23 alloc];
      v55 = objc_msgSend_initWithData_timestamp_walltime_identifier_(v57, v58, &v74, self->fCurrentBlockTimestamp, self->fCurrentBlockIdentifier, self->fCurrentBlockStartTime);
LABEL_27:
      v52 = v55;
      objc_msgSend_setObject_atIndexedSubscript_(self->fCachedData, v56, v55, v10);
      goto LABEL_28;
    }

    v49 = CMRecordedPressureData;
    goto LABEL_22;
  }

  return result;
}

- (BOOL)_updatePointers
{
  v35 = *MEMORY[0x1E69E9840];
  fCurrentBlock = self->fCurrentBlock;
  if (fCurrentBlock && self->fCurrentIdentifier == self->fCurrentBlockIdentifier)
  {
    if (self->fRetrievedDataBufferIdentifier == self->fCurrentBlockDataIdentifier)
    {
LABEL_35:
      result = 1;
      goto LABEL_36;
    }

    goto LABEL_11;
  }

  fMetaArray = self->fMetaArray;

  if (!fMetaArray)
  {
    v10 = objc_msgSend_newMetaByID_forType_(self->fProxy, v6, self->fCurrentIdentifier, self->fDataType);
    goto LABEL_9;
  }

  self->fCurrentBlock = 0;
  v8 = self->fCurrentIdentifier - self->fStartingIdentifier;
  if (v8 < objc_msgSend_count(self->fMetaArray, v6, v7))
  {
    v10 = objc_msgSend_objectAtIndexedSubscript_(self->fMetaArray, v9, v8);
LABEL_9:
    self->fCurrentBlock = v10;
    objc_msgSend__updateCurrentBlockProperties(self, v11, v12);
    v15 = self->fCurrentBlock;
    self->fCurrentIdentifier = self->fCurrentBlockIdentifier;
    if (!v15)
    {
LABEL_31:
      result = 0;
      goto LABEL_36;
    }

    if (self->fRetrievedDataBufferIdentifier == self->fCurrentBlockDataIdentifier)
    {
LABEL_15:
      fDataType = self->fDataType;
      if (fDataType == 2)
      {
        fDataBufferPtr = self->fDataBufferPtr;
        self->fPressureUnpacker.fData = &fDataBufferPtr[objc_msgSend_offset(self->fCurrentBlock, v13, v14)];
        self->fPressureUnpacker.fBitsLeft = 0;
        self->fPressureUnpacker.fTimestampLastDelta = 0;
        *self->fPressureUnpacker.fSampleLast = 0;
        self->fPressureUnpacker.fTimestampLast = 0;
      }

      else if (fDataType == 1)
      {
        v27 = self->fDataBufferPtr;
        self->fGyroUnpacker.fData = &v27[objc_msgSend_offset(self->fCurrentBlock, v13, v14)];
        self->fGyroUnpacker.fBitsLeft = 0;
        *&self->fGyroUnpacker.fTimestampLast = 0u;
        *self->fGyroUnpacker.fSampleLast = 0u;
      }

      else if (fDataType)
      {
        v29 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v13, v14);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v29, v30, a2, self, @"CMSensorRecorder.mm", 400, @"Unexpected sensor type!");
      }

      else
      {
        v22 = self->fDataBufferPtr;
        self->fAccelUnpacker.fData = &v22[objc_msgSend_offset(self->fCurrentBlock, v13, v14)];
        self->fAccelUnpacker.fBitsLeft = 0;
        self->fAccelUnpacker.fTimestampLastDelta = 0;
        *self->fAccelUnpacker.fSampleLast = 0;
        self->fAccelUnpacker.fTimestampLast = 0;
        self->fAccelUnpacker.fSampleLast[2] = 0;
      }

      goto LABEL_35;
    }

LABEL_11:

    v17 = objc_msgSend_newDataByID_metaID_forType_(self->fProxy, v16, self->fCurrentBlockDataIdentifier, self->fCurrentBlockIdentifier, self->fDataType);
    self->fDataBuffer = v17;
    if (v17)
    {
      bytes_ptr = xpc_data_get_bytes_ptr(v17);
      self->fDataBufferPtr = bytes_ptr;
      self->fRetrievedDataBufferIdentifier = self->fCurrentBlockDataIdentifier;
      if (!bytes_ptr)
      {
        v32 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v19, v20);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v33, a2, self, @"CMSensorRecorder.mm", 385, @"Data pointer returned should be valid");
      }

      self->fDataBufferLength = xpc_data_get_length(self->fDataBuffer);
      self->fBlockOffset = 0;
      goto LABEL_15;
    }

    if (qword_1EAFE29C8 != -1)
    {
      dispatch_once(&qword_1EAFE29C8, &unk_1F0E284E0);
    }

    v24 = qword_1EAFE29D0;
    if (os_log_type_enabled(qword_1EAFE29D0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_ERROR, "Unable to allocate buffer for sensor recorder.", buf, 2u);
    }

    v25 = sub_19B420058();
    if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE29C8 != -1)
      {
        dispatch_once(&qword_1EAFE29C8, &unk_1F0E284E0);
      }

      v26 = _os_log_send_and_compose_impl();
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMSensorDataList _updatePointers]", "CoreLocation: %s\n", v26);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    goto LABEL_31;
  }

  result = 0;
  self->fCurrentBlock = 0;
LABEL_36:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

- (id).cxx_construct
{
  *(self + 14) = 0;
  *(self + 30) = 0;
  *(self + 17) = 0;
  *(self + 18) = 0;
  *(self + 16) = 0;
  *(self + 38) = 0;
  *(self + 20) = 0;
  *(self + 42) = 0;
  *(self + 29) = 0;
  *(self + 30) = 0;
  *(self + 28) = 0;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 204) = 0u;
  return self;
}

@end