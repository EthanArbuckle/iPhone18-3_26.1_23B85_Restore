@interface CMGyroDataArray
- (CMGyroDataArray)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
@end

@implementation CMGyroDataArray

- (CMGyroDataArray)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  if (objc_msgSend_length(representation, a2, representation, metadata, timestamp))
  {
    v7 = [CLSensorRecorderSensorMeta alloc];
    v9 = objc_msgSend_initWithDataType_(v7, v8, 0xFFFFFFFFLL);
    v12 = objc_msgSend_bytes(representation, v10, v11);
    objc_msgSend_setDataSize_(v9, v13, bswap32(*v12));
    v16 = objc_msgSend_bytes(representation, v14, v15);
    objc_msgSend_setTimestamp_(v9, v17, bswap64(*(v16 + 4)));
    v20 = objc_msgSend_bytes(representation, v18, v19);
    objc_msgSend_setStartTime_(v9, v21, v22, *(v20 + 12));
    v25 = objc_msgSend_bytes(representation, v23, v24) + 20;
    v28 = objc_msgSend_array(MEMORY[0x1E695DF70], v26, v27);
    v49 = v25;
    v50 = 0;
    v51 = 0u;
    v52 = 0u;
    v48 = 0;
    if (objc_msgSend_dataSize(v9, v29, v30))
    {
      v31 = 0;
      do
      {
        v46 = 0uLL;
        v47 = 0;
        sub_19B76D3E4(&v49, &v48, &v46);
        v31 += v48;
        v32 = [CMRecordedRotationRateData alloc];
        v35 = objc_msgSend_timestamp(v9, v33, v34);
        objc_msgSend_startTime(v9, v36, v37);
        v39 = objc_msgSend_initWithData_timestamp_walltime_(v32, v38, &v46, v35);
        objc_msgSend_addObject_(v28, v40, v39);
      }

      while (v31 < objc_msgSend_dataSize(v9, v41, v42));
    }

    v43 = objc_alloc(MEMORY[0x1E695DEC8]);
    return objc_msgSend_initWithArray_(v43, v44, v28);
  }

  else
  {

    return 0;
  }
}

@end