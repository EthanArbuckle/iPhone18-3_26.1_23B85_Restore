@interface CMFallStatsItemsIterator
- (CMFallStatsItemsIterator)initWithData:(id)a3;
- (id).cxx_construct;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)dealloc;
@end

@implementation CMFallStatsItemsIterator

- (CMFallStatsItemsIterator)initWithData:(id)a3
{
  if (!objc_msgSend_length(a3, a2, a3))
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = CMFallStatsItemsIterator;
  v5 = [(CMFallStatsItemsIterator *)&v7 init];
  if (v5)
  {
    v5->_data = a3;
    v5->_item = 0;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMFallStatsItemsIterator;
  [(CMFallStatsItemsIterator *)&v3 dealloc];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v175[1] = *MEMORY[0x1E69E9840];
  a3->var1 = a4;
  a3->var2 = self;
  if (!self->_data)
  {
    goto LABEL_70;
  }

  var0 = a3->var0;
  if (!a3->var0)
  {
    if (sub_19B508DD0(&self->fMslReader))
    {
      v126 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v9, v10);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v126, v127, a2, self, @"CMFallStats.mm", 66, @"A fast enumeration is already started");
    }

    v11 = objc_msgSend_bytes(self->_data, v9, v10);
    v14 = objc_msgSend_length(self->_data, v12, v13);
    self->fMslReaderDelegate.fBuffer = v11;
    self->fMslReaderDelegate.fLength = v14;
    if (sub_19B508D38(&self->fMslReader, &self->fMslReaderDelegate))
    {
      sub_19B508B88(buf, &self->fMslReader);
    }

    var0 = a3->var0;
  }

  if (var0 != 1 || sub_19B508DD0(&self->fMslReader))
  {
    if (self->fMslIterator.fReader)
    {
      ptr = self->fMslIterator.fItem.__ptr_;
      v16 = *(ptr + 139);
      if (v16)
      {
        if (v16[11])
        {
          v174 = @"meta";
          v172[0] = @"timestamp";
          v173[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a3, *(ptr + 87));
          v172[1] = @"crownUpDown";
          v173[1] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v17, *(*(*(ptr + 139) + 88) + 8));
          v172[2] = @"isNearFall";
          v173[2] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v18, *(*(*(ptr + 139) + 88) + 70));
          v172[3] = @"fallType";
          v173[3] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v19, *(*(*(ptr + 139) + 88) + 12));
          v172[4] = @"userAgeBucket";
          v173[4] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v20, *(*(*(ptr + 139) + 88) + 60));
          v172[5] = @"workoutType";
          v173[5] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v21, *(*(*(ptr + 139) + 88) + 64));
          v172[6] = @"activityLevel";
          LODWORD(v24) = *(*(*(ptr + 139) + 88) + 44);
          if ((LODWORD(v24) & 0x7FFFFFFFu) >= 0x7F800000)
          {
            *&v24 = -1.0;
          }

          v173[6] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v22, v23, v24);
          v172[7] = @"isADLImpact";
          v173[7] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v25, *(*(*(ptr + 139) + 88) + 68));
          v175[0] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v26, v173, v172, 8);
          objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v27, v175, &v174, 1);
          goto LABEL_57;
        }

        if (v16[1])
        {
          v170 = @"accel";
          v168[0] = @"timestamp";
          v169[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a3, *(ptr + 87));
          v168[1] = @"x";
          LODWORD(v33) = *(*(*(ptr + 139) + 8) + 20);
          v169[1] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v34, v35, v33);
          v168[2] = @"y";
          LODWORD(v36) = *(*(*(ptr + 139) + 8) + 24);
          v169[2] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v37, v38, v36);
          v168[3] = @"z";
          LODWORD(v39) = *(*(*(ptr + 139) + 8) + 28);
          v169[3] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v40, v41, v39);
          v171 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v42, v169, v168, 4);
          objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v43, &v171, &v170, 1);
          goto LABEL_57;
        }

        if (v16[2])
        {
          v166 = @"fastAccel";
          v164[0] = @"timestamp";
          v165[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a3, *(ptr + 87));
          v164[1] = @"x";
          LODWORD(v44) = *(*(*(ptr + 139) + 16) + 20);
          v165[1] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v45, v46, v44);
          v164[2] = @"y";
          LODWORD(v47) = *(*(*(ptr + 139) + 16) + 24);
          v165[2] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v48, v49, v47);
          v164[3] = @"z";
          LODWORD(v50) = *(*(*(ptr + 139) + 16) + 28);
          v165[3] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v51, v52, v50);
          v167 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v53, v165, v164, 4);
          objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v54, &v167, &v166, 1);
          goto LABEL_57;
        }

        if (v16[8])
        {
          v162 = @"gyro";
          v160[0] = @"timestamp";
          v161[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a3, *(ptr + 87));
          v160[1] = @"x";
          LODWORD(v55) = *(*(*(ptr + 139) + 64) + 28);
          v161[1] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v56, v57, v55);
          v160[2] = @"y";
          LODWORD(v58) = *(*(*(ptr + 139) + 64) + 32);
          v161[2] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v59, v60, v58);
          v160[3] = @"z";
          LODWORD(v61) = *(*(*(ptr + 139) + 64) + 36);
          v161[3] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v62, v63, v61);
          v163 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v64, v161, v160, 4);
          objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v65, &v163, &v162, 1);
          goto LABEL_57;
        }

        if (v16[9])
        {
          v158 = @"fastGyro";
          v156[0] = @"timestamp";
          v157[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a3, *(ptr + 87));
          v156[1] = @"x";
          LODWORD(v66) = *(*(*(ptr + 139) + 72) + 28);
          v157[1] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v67, v68, v66);
          v156[2] = @"y";
          LODWORD(v69) = *(*(*(ptr + 139) + 72) + 32);
          v157[2] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v70, v71, v69);
          v156[3] = @"z";
          LODWORD(v72) = *(*(*(ptr + 139) + 72) + 36);
          v157[3] = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v73, v74, v72);
          v159 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v75, v157, v156, 4);
          objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v76, &v159, &v158, 1);
          goto LABEL_57;
        }

        if (v16[4])
        {
          v154 = @"deviceMotion";
          v152[0] = @"timestamp";
          v153[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a3, *(ptr + 87));
          v152[1] = @"qx";
          v153[1] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v77, v78, *(*(*(ptr + 139) + 32) + 16));
          v152[2] = @"qy";
          v153[2] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v79, v80, *(*(*(ptr + 139) + 32) + 24));
          v152[3] = @"qz";
          v153[3] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v81, v82, *(*(*(ptr + 139) + 32) + 32));
          v152[4] = @"qw";
          v153[4] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v83, v84, *(*(*(ptr + 139) + 32) + 8));
          v155 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v85, v153, v152, 5);
          objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v86, &v155, &v154, 1);
          goto LABEL_57;
        }

        if (v16[13])
        {
          v150 = @"pressure";
          v148[0] = @"timestamp";
          v149[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a3, *(ptr + 87));
          v148[1] = @"pressure";
          if ((*(*(*(ptr + 139) + 104) + 16) & 0x7FFFFFFFu) >= 0x7F800000)
          {
            v89 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v87, v88, -1.0);
          }

          else
          {
            v89 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v87, v88, *(*(*(ptr + 139) + 104) + 16));
          }

          v149[1] = v89;
          v151 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v90, v149, v148, 2);
          objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v91, &v151, &v150, 1);
          goto LABEL_57;
        }

        if (v16[10])
        {
          v146 = @"heartRate";
          v144[0] = @"timestamp";
          v145[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a3, *(ptr + 87));
          v144[1] = @"heartRate";
          v94 = *(*(*(*(ptr + 139) + 80) + 8) + 16);
          if ((*&v94 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v94 = -1.0;
          }

          v145[1] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v92, v93, v94);
          v144[2] = @"confidence";
          v97 = *(*(*(*(ptr + 139) + 80) + 8) + 8);
          if ((*&v97 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v97 = 0.0;
          }

          v145[2] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v95, v96, v97);
          v147 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v98, v145, v144, 3);
          objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v99, &v147, &v146, 1);
          goto LABEL_57;
        }

        if (v16[15])
        {
          v142 = @"wristState";
          v140[0] = @"timestamp";
          v141[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a3, *(ptr + 87));
          v140[1] = @"onWrist";
          v141[1] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v100, *(*(*(ptr + 139) + 120) + 24));
          v140[2] = @"onWristSensor";
          v141[2] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v101, *(*(*(ptr + 139) + 120) + 32));
          v140[3] = @"onWristConfidence";
          v141[3] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v102, *(*(*(ptr + 139) + 120) + 28));
          v140[4] = @"isOnCharger";
          v141[4] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v103, *(*(*(ptr + 139) + 120) + 37));
          v140[5] = @"isForcedOnWristEnabled";
          v141[5] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v104, *(*(*(ptr + 139) + 120) + 36));
          v140[6] = @"isWristDetectionEnabled";
          v141[6] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v105, *(*(*(ptr + 139) + 120) + 38));
          v143 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v106, v141, v140, 7);
          objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v107, &v143, &v142, 1);
          goto LABEL_57;
        }

        if (v16[6])
        {
          v138 = @"state";
          v136[0] = @"timestamp";
          v137[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a3, *(ptr + 87));
          v136[1] = @"aopTsSensor";
          v137[1] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v108, *(*(*(ptr + 139) + 48) + 16));
          v136[2] = @"state";
          v137[2] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v109, *(*(*(ptr + 139) + 48) + 40));
          v136[3] = @"response";
          v137[3] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v110, *(*(*(ptr + 139) + 48) + 36));
          v136[4] = @"resolution";
          v137[4] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v111, *(*(*(ptr + 139) + 48) + 32));
          v139 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v112, v137, v136, 5);
          objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v113, &v139, &v138, 1);
          goto LABEL_57;
        }

        if (v16[7])
        {
          v134 = @"impact";
          v132[0] = @"timestamp";
          v133[0] = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], a2, a3, *(ptr + 87));
          v132[1] = @"aopTsSensor";
          v133[1] = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v114, *(*(*(ptr + 139) + 56) + 16));
          v132[2] = @"fallType";
          v133[2] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v115, *(*(*(ptr + 139) + 56) + 68));
          v132[3] = @"isFall";
          v133[3] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v116, *(*(*(ptr + 139) + 56) + 76));
          v132[4] = @"isNearFall";
          v133[4] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v117, *(*(*(ptr + 139) + 56) + 80));
          v135 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v118, v133, v132, 5);
          objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v119, &v135, &v134, 1);
          goto LABEL_57;
        }

        if (qword_1EAFE29A8 != -1)
        {
          dispatch_once(&qword_1EAFE29A8, &unk_1F0E28FC0);
        }

        v120 = qword_1EAFE29B0;
        if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_FAULT))
        {
          v121 = *(ptr + 87);
          *buf = 134217984;
          *&buf[4] = v121;
          _os_log_impl(&dword_19B41C000, v120, OS_LOG_TYPE_FAULT, "Unknown fall snippet node [cftime=%f] - update CMFallStats", buf, 0xCu);
        }

        v122 = sub_19B420058();
        if ((*(v122 + 160) & 0x80000000) == 0 || (*(v122 + 164) & 0x80000000) == 0 || (*(v122 + 168) & 0x80000000) == 0 || *(v122 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE29A8 != -1)
          {
            dispatch_once(&qword_1EAFE29A8, &unk_1F0E28FC0);
          }

          v123 = *(ptr + 87);
          v129 = 134217984;
          v130 = v123;
          v32 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMFallStatsItemsIterator countByEnumeratingWithState:objects:count:]", "CoreLocation: %s\n", v32);
LABEL_27:
          if (v32 != buf)
          {
            free(v32);
          }
        }
      }

      else
      {
        if (qword_1EAFE29A8 != -1)
        {
          dispatch_once(&qword_1EAFE29A8, &unk_1F0E28FC0);
        }

        v28 = qword_1EAFE29B0;
        if (os_log_type_enabled(qword_1EAFE29B0, OS_LOG_TYPE_DEBUG))
        {
          v29 = *(ptr + 87);
          *buf = 134217984;
          *&buf[4] = v29;
          _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEBUG, "Unknown Msl node in a fall snippet sequence [cftime=%f] - update CMFallStats", buf, 0xCu);
        }

        v30 = sub_19B420058();
        if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE29A8 != -1)
          {
            dispatch_once(&qword_1EAFE29A8, &unk_1F0E28FC0);
          }

          v31 = *(ptr + 87);
          v129 = 134217984;
          v130 = v31;
          v32 = _os_log_send_and_compose_impl();
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMFallStatsItemsIterator countByEnumeratingWithState:objects:count:]", "CoreLocation: %s\n", v32);
          goto LABEL_27;
        }
      }

LABEL_57:
      sub_19B5F7BB4(v128, &self->fMslIterator);
    }

    sub_19B508C64(&self->fMslReader);
    result = 0;
    self->fMslReaderDelegate.fBuffer = 0;
    self->fMslReaderDelegate.fLength = 0;
  }

  else
  {
LABEL_70:
    result = 0;
  }

  v125 = *MEMORY[0x1E69E9840];
  return result;
}

- (id).cxx_construct
{
  sub_19B508C1C(&self->fMslReader, a2);
  self->fMslReaderDelegate._vptr$Delegate = &unk_1F0E2B6E0;
  *&self->fMslReaderDelegate.fBuffer = 0u;
  *&self->fMslIterator.fReader = 0u;
  self->fMslIterator.fItem.__cntrl_ = 0;
  return self;
}

@end