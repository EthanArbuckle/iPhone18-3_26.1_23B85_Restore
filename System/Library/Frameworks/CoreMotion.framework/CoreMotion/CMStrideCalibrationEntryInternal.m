@interface CMStrideCalibrationEntryInternal
- (double)score;
- (id)description;
- (unsigned)pacebin;
@end

@implementation CMStrideCalibrationEntryInternal

- (unsigned)pacebin
{
  v3.receiver = self;
  v3.super_class = CMStrideCalibrationEntryInternal;
  return [(CMStrideCalibrationEntry *)&v3 pacebin];
}

- (double)score
{
  v3.receiver = self;
  v3.super_class = CMStrideCalibrationEntryInternal;
  [(CMStrideCalibrationEntry *)&v3 score];
  return result;
}

- (id)description
{
  v82[14] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v81[0] = @"startTime";
  v6 = MEMORY[0x1E696AD98];
  objc_msgSend_startTime(self, v7, v8);
  v82[0] = objc_msgSend_numberWithDouble_(v6, v9, v10);
  v81[1] = @"pacebin";
  v11 = MEMORY[0x1E696AD98];
  v14 = objc_msgSend_pacebin(self, v12, v13);
  v82[1] = objc_msgSend_numberWithUnsignedInt_(v11, v15, v14);
  v81[2] = @"kvalue";
  v16 = MEMORY[0x1E696AD98];
  objc_msgSend_kvalue(self, v17, v18);
  v82[2] = objc_msgSend_numberWithDouble_(v16, v19, v20);
  v81[3] = @"kvalueTrack";
  v21 = MEMORY[0x1E696AD98];
  objc_msgSend_kvalueTrack(self, v22, v23);
  v82[3] = objc_msgSend_numberWithDouble_(v21, v24, v25);
  v81[4] = @"score";
  v26 = MEMORY[0x1E696AD98];
  objc_msgSend_score(self, v27, v28);
  v82[4] = objc_msgSend_numberWithDouble_(v26, v29, v30);
  v81[5] = @"endTime";
  v31 = MEMORY[0x1E696AD98];
  objc_msgSend_endTime(self, v32, v33);
  v82[5] = objc_msgSend_numberWithDouble_(v31, v34, v35);
  v81[6] = @"distance";
  v36 = MEMORY[0x1E696AD98];
  objc_msgSend_distance(self, v37, v38);
  v82[6] = objc_msgSend_numberWithDouble_(v36, v39, v40);
  v81[7] = @"steps";
  v41 = MEMORY[0x1E696AD98];
  v44 = objc_msgSend_steps(self, v42, v43);
  v82[7] = objc_msgSend_numberWithInt_(v41, v45, v44);
  v81[8] = @"session";
  v46 = MEMORY[0x1E696AD98];
  v49 = objc_msgSend_session(self, v47, v48);
  v82[8] = objc_msgSend_numberWithInt_(v46, v50, v49);
  v81[9] = @"speed";
  v51 = MEMORY[0x1E696AD98];
  objc_msgSend_speed(self, v52, v53);
  v82[9] = objc_msgSend_numberWithDouble_(v51, v54, v55);
  v81[10] = @"percentGrade";
  v56 = MEMORY[0x1E696AD98];
  objc_msgSend_percentGrade(self, v57, v58);
  v82[10] = objc_msgSend_numberWithDouble_(v56, v59, v60);
  v81[11] = @"gpsSource";
  v61 = MEMORY[0x1E696AD98];
  v64 = objc_msgSend_gpsSource(self, v62, v63);
  v82[11] = objc_msgSend_numberWithInteger_(v61, v65, v64);
  v81[12] = @"meanRunningStrideLength";
  v66 = MEMORY[0x1E696AD98];
  objc_msgSend_meanRunningStrideLength(self, v67, v68);
  v82[12] = objc_msgSend_numberWithDouble_(v66, v69, v70);
  v81[13] = @"numberRunningStrideLengthSamples";
  v71 = MEMORY[0x1E696AD98];
  v74 = objc_msgSend_numberRunningStrideLengthSamples(self, v72, v73);
  v82[13] = objc_msgSend_numberWithInteger_(v71, v75, v74);
  v77 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v76, v82, v81, 14);
  result = objc_msgSend_stringWithFormat_(v3, v78, @"%@,%@", v5, v77);
  v80 = *MEMORY[0x1E69E9840];
  return result;
}

@end