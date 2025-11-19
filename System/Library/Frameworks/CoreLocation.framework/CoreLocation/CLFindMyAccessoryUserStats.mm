@interface CLFindMyAccessoryUserStats
+ (id)batteryStateToString:(int64_t)a3;
- (CLFindMyAccessoryUserStats)init;
- (CLFindMyAccessoryUserStats)initWithOverflowFlag:(unint64_t)a3 crashCount:(unint64_t)a4 multiTime:(unint64_t)a5 nearOwnerTime:(unint64_t)a6 wildTime:(unint64_t)a7 soundCount:(unint64_t)a8 soundTime:(unint64_t)a9 rangingCount:(unint64_t)a10 rangingTime:(unint64_t)a11 multiLeashTime:(unint64_t)a12 multiConnectionTime:(unint64_t)a13 nearOwnerTimeV2:(unint64_t)a14 singleLeashTime:(unint64_t)a15 singleConnectionTime:(unint64_t)a16 dualConnectionTime:(unint64_t)a17 dualLeashTime:(unint64_t)a18 utAccelCount:(unint64_t)a19 lastClear:(unint64_t)a20 roseOnTime:(unint64_t)a21 ownerLongSoundCount:(unint64_t)a22 ownerShortSoundCount:(unint64_t)a23 utLongSoundCount:(unint64_t)a24 utShortSoundCount:(unint64_t)a25 bomSoundCount:(unint64_t)a26 fc1ndRangingCount:(unint64_t)a27 fc1ndRangingTime:(unint64_t)a28 lastPIn:(unint64_t)a29 batteryState:(int64_t)a30 nbmmsRangingTime:(unint64_t)a31 abandonedFwUpdateCount:(unint64_t)a32 abandonedFwUpdateTime:(unint64_t)a33 roseInitCount:(unint64_t)a34 pairingAttemptsCount:(unint64_t)a35 tempVeryLowCount:(unint64_t)a36 tempLowCount:(unint64_t)a37 tempOkCount:(unint64_t)a38 tempHighCount:(unint64_t)a39 proxPairingTime:(unint64_t)a40 tempLastPIn:(unint64_t)a41 nbmmsRangingCount:(unint64_t)a42 version:(unint64_t)a43;
- (CLFindMyAccessoryUserStats)initWithPayloadV1:(id)a3;
- (CLFindMyAccessoryUserStats)initWithPayloadV2:(id)a3;
- (CLFindMyAccessoryUserStats)initWithPayloadV3:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLFindMyAccessoryUserStats

- (CLFindMyAccessoryUserStats)init
{
  [(CLFindMyAccessoryUserStats *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CLFindMyAccessoryUserStats)initWithPayloadV1:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  if ([a3 length] == 19)
  {
    v5 = [a3 bytes];
    result = [(CLFindMyAccessoryUserStats *)self initWithOverflowFlag:*v5 crashCount:v5[1] multiTime:*(v5 + 1) | (v5[4] << 16) nearOwnerTime:*(v5 + 5) | (v5[7] << 16) wildTime:*(v5 + 4) | (v5[10] << 16) soundCount:*(v5 + 11) soundTime:*(v5 + 13) rangingCount:*(v5 + 15) rangingTime:*(v5 + 17) multiLeashTime:0 multiConnectionTime:0 nearOwnerTimeV2:0 singleLeashTime:0 singleConnectionTime:0 dualConnectionTime:0 dualLeashTime:0 utAccelCount:0 lastClear:0 roseOnTime:0 ownerLongSoundCount:0 ownerShortSoundCount:0 utLongSoundCount:0 utShortSoundCount:0 bomSoundCount:0 fc1ndRangingCount:0 fc1ndRangingTime:0 lastPIn:0 batteryState:-1 nbmmsRangingTime:0 abandonedFwUpdateCount:0 abandonedFwUpdateTime:0 roseInitCount:0 pairingAttemptsCount:0 tempVeryLowCount:0 tempLowCount:0 tempOkCount:0 tempHighCount:0 proxPairingTime:0 tempLastPIn:0 nbmmsRangingCount:0 version:1];
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
    }

    v8 = qword_1EAFE4700;
    if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "Payload size does not match userstats version 1 response size", buf, 2u);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) == 0 || (*(v9 + 164) & 0x80000000) == 0 || (*(v9 + 168) & 0x80000000) == 0 || *(v9 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46C8 != -1)
      {
        dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
      }

      v10 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLFindMyAccessoryUserStats initWithPayloadV1:]", "CoreLocation: %s\n", v10);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    v11 = *MEMORY[0x1E69E9840];
    return 0;
  }

  return result;
}

- (CLFindMyAccessoryUserStats)initWithPayloadV2:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if ([a3 length] == 60)
  {
    v5 = [a3 bytes];
    v6 = *(v5 + 25);
    v7 = *(v5 + 26);
    result = [(CLFindMyAccessoryUserStats *)self initWithOverflowFlag:0 crashCount:0 multiTime:v5[1] + *v5 nearOwnerTime:v5[4] + v5[2] + v5[5] wildTime:v5[3] soundCount:(v7 + v6 + *(v5 + 28)) soundTime:3 * v7 - (*(v5 + 27) + v6) + 8 * (*(v5 + 27) + v6) rangingCount:*(v5 + 24) rangingTime:v5[11] multiLeashTime:*v5 multiConnectionTime:v5[1] nearOwnerTimeV2:v5[2] singleLeashTime:v5[4] singleConnectionTime:v5[5] dualConnectionTime:v5[6] dualLeashTime:v5[7] utAccelCount:v5[8] lastClear:v5[9] roseOnTime:v5[10] ownerLongSoundCount:v6 ownerShortSoundCount:v7 utLongSoundCount:*(v5 + 27) utShortSoundCount:*(v5 + 28) bomSoundCount:*(v5 + 29) fc1ndRangingCount:*(v5 + 24) fc1ndRangingTime:v5[11] lastPIn:0 batteryState:-1 nbmmsRangingTime:0 abandonedFwUpdateCount:0 abandonedFwUpdateTime:0 roseInitCount:0 pairingAttemptsCount:0 tempVeryLowCount:0 tempLowCount:0 tempOkCount:0 tempHighCount:0 proxPairingTime:0 tempLastPIn:0 nbmmsRangingCount:0 version:2];
    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
    }

    v10 = qword_1EAFE4700;
    if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "Payload size does not match userstats version 2 response size", buf, 2u);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46C8 != -1)
      {
        dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
      }

      v12 = _os_log_send_and_compose_impl();
      sub_19B885924("Generic", 1, 0, 0, "[CLFindMyAccessoryUserStats initWithPayloadV2:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    v13 = *MEMORY[0x1E69E9840];
    return 0;
  }

  return result;
}

- (CLFindMyAccessoryUserStats)initWithPayloadV3:(id)a3
{
  *&v178[5] = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46C8 != -1)
  {
    dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
  }

  v5 = qword_1EAFE4700;
  if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289538;
    v170 = 0;
    v171 = 2082;
    v172 = "";
    v173 = 2114;
    v174 = a3;
    v175 = 1026;
    *v176 = [a3 length];
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian #userstats initWithPayloadV3, payload:%{public, location:escape_only}@, size:%{public}d}", buf, 0x22u);
  }

  if (!a3 || ![a3 length])
  {
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
    }

    v144 = qword_1EAFE4700;
    if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289538;
      v170 = 0;
      v171 = 2082;
      v172 = "";
      v173 = 2082;
      v174 = "empty payload, no stats";
      v175 = 2114;
      *v176 = a3;
      _os_log_impl(&dword_19B873000, v144, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian #userstats, error:%{public, location:escape_only}s, payload:%{public, location:escape_only}@}", buf, 0x26u);
      if (qword_1EAFE46C8 != -1)
      {
        dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
      }
    }

    v145 = qword_1EAFE4700;
    if (os_signpost_enabled(qword_1EAFE4700))
    {
      *buf = 68289538;
      v170 = 0;
      v171 = 2082;
      v172 = "";
      v173 = 2082;
      v174 = "empty payload, no stats";
      v175 = 2114;
      *v176 = a3;
      v146 = "{msg%{public}.0s:#durian #userstats, error:%{public, location:escape_only}s, payload:%{public, location:escape_only}@}";
      v147 = v145;
      v148 = 38;
LABEL_254:
      _os_signpost_emit_with_name_impl(&dword_19B873000, v147, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#durian #userstats", v146, buf, v148);
    }

    goto LABEL_255;
  }

  v168.receiver = self;
  v168.super_class = CLFindMyAccessoryUserStats;
  v6 = [(CLFindMyAccessoryUserStats *)&v168 init];
  if (v6)
  {
    v167 = [a3 bytes];
    if (![a3 length])
    {
LABEL_257:
      v151 = *(v6 + 21);
      v152 = *(v6 + 22);
      *(v6 + 7) = v152 + v151 + *(v6 + 23);
      *(v6 + 8) = 3 * v152 - v151 + 8 * v151;
      v153 = *(v6 + 12) + *(v6 + 11);
      *(v6 + 3) = 0;
      *(v6 + 4) = v153;
      *(v6 + 5) = *(v6 + 14) + *(v6 + 13) + *(v6 + 15);
      *(v6 + 72) = *(v6 + 13);
      *(v6 + 1) = 3;
      *(v6 + 2) = 0;
      goto LABEL_256;
    }

    v8 = 0;
    *&v7 = 68290562;
    v166 = v7;
    while (1)
    {
      v9 = v8 + 2;
      if (v8 + 2 >= [a3 length])
      {
        break;
      }

      v10 = *(v167 + v8 + 1);
      if ((v10 - 5) <= 0xFFFFFFFB)
      {
        if (qword_1EAFE46C8 != -1)
        {
          dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
        }

        v158 = qword_1EAFE4700;
        if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
        {
          v159 = [a3 length];
          *buf = 68290050;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "invalid length";
          v175 = 2114;
          *v176 = a3;
          *&v176[8] = 1026;
          *&v176[10] = v8 + 2;
          *&v176[14] = 1026;
          *&v176[16] = v159;
          _os_log_impl(&dword_19B873000, v158, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian #userstats, error:%{public, location:escape_only}s, payload:%{public, location:escape_only}@, offset:%{public}d, size:%{public}d}", buf, 0x32u);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }
        }

        v156 = qword_1EAFE4700;
        if (!os_signpost_enabled(qword_1EAFE4700))
        {
          goto LABEL_255;
        }

        v160 = [a3 length];
        *buf = 68290050;
        v170 = 0;
        v171 = 2082;
        v172 = "";
        v173 = 2082;
        v174 = "invalid length";
        v175 = 2114;
        *v176 = a3;
        *&v176[8] = 1026;
        *&v176[10] = v8 + 2;
        *&v176[14] = 1026;
        *&v176[16] = v160;
        v146 = "{msg%{public}.0s:#durian #userstats, error:%{public, location:escape_only}s, payload:%{public, location:escape_only}@, offset:%{public}d, size:%{public}d}";
        goto LABEL_279;
      }

      v11 = *(v167 + v8);
      v8 = v9 + v10;
      if (v9 + v10 > [a3 length])
      {
        if (qword_1EAFE46C8 != -1)
        {
          dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
        }

        v161 = qword_1EAFE4700;
        if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
        {
          v162 = [a3 length];
          *buf = 68290050;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "malformed TLV, offset + length > payload";
          v175 = 2114;
          *v176 = a3;
          *&v176[8] = 1026;
          *&v176[10] = v9;
          *&v176[14] = 1026;
          *&v176[16] = v162;
          _os_log_impl(&dword_19B873000, v161, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian #userstats, error:%{public, location:escape_only}s, payload:%{public, location:escape_only}@, offset:%{public}d, size:%{public}d}", buf, 0x32u);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }
        }

        v156 = qword_1EAFE4700;
        if (os_signpost_enabled(qword_1EAFE4700))
        {
          v163 = [a3 length];
          *buf = 68290050;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "malformed TLV, offset + length > payload";
          v175 = 2114;
          *v176 = a3;
          *&v176[8] = 1026;
          *&v176[10] = v9;
          *&v176[14] = 1026;
          *&v176[16] = v163;
          v146 = "{msg%{public}.0s:#durian #userstats, error:%{public, location:escape_only}s, payload:%{public, location:escape_only}@, offset:%{public}d, size:%{public}d}";
          goto LABEL_279;
        }

LABEL_255:
        v6 = 0;
        goto LABEL_256;
      }

      v12 = [a3 subdataWithRange:{v9, v10}];
      if (qword_1EAFE46C8 != -1)
      {
        dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
      }

      v13 = qword_1EAFE4700;
      if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
      {
        *buf = v166;
        v170 = 0;
        v171 = 2082;
        v172 = "";
        v173 = 2082;
        v174 = "TLV";
        v175 = 1026;
        *v176 = v9;
        *&v176[4] = 2114;
        *&v176[6] = v12;
        *&v176[14] = 1026;
        *&v176[16] = v11;
        v177 = 1026;
        v178[0] = v10;
        LOWORD(v178[1]) = 2114;
        *(&v178[1] + 2) = v12;
        _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#durian #userstats, type:%{public, location:escape_only}s, offset:%{public}d, typeHex:%{public, location:escape_only}@, type:%{public}d, length:%{public}d, valueHex:%{public, location:escape_only}@}", buf, 0x42u);
      }

      switch(v11)
      {
        case 0:
          v14 = [v12 bytes];
          v15 = [v12 length];
          *(v6 + 11) = 0;
          if (v15 >= 8)
          {
            v16 = 8;
          }

          else
          {
            v16 = v15;
          }

          memcpy(v6 + 88, v14, v16);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v18 = *(v6 + 11);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "multiLeashTime";
          v175 = 1026;
          *v176 = 0;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v18;
          break;
        case 1:
          v71 = [v12 bytes];
          v72 = [v12 length];
          *(v6 + 12) = 0;
          if (v72 >= 8)
          {
            v73 = 8;
          }

          else
          {
            v73 = v72;
          }

          memcpy(v6 + 96, v71, v73);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v74 = *(v6 + 12);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "multiConnectionTime";
          v175 = 1026;
          *v176 = 1;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v74;
          break;
        case 2:
          v55 = [v12 bytes];
          v56 = [v12 length];
          *(v6 + 13) = 0;
          if (v56 >= 8)
          {
            v57 = 8;
          }

          else
          {
            v57 = v56;
          }

          memcpy(v6 + 104, v55, v57);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v58 = *(v6 + 13);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "nearOwnerTime";
          v175 = 1026;
          *v176 = 2;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v58;
          break;
        case 3:
          v63 = [v12 bytes];
          v64 = [v12 length];
          *(v6 + 6) = 0;
          if (v64 >= 8)
          {
            v65 = 8;
          }

          else
          {
            v65 = v64;
          }

          memcpy(v6 + 48, v63, v65);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v66 = *(v6 + 6);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "wildTime";
          v175 = 1026;
          *v176 = 3;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v66;
          break;
        case 4:
          v35 = [v12 bytes];
          v36 = [v12 length];
          *(v6 + 14) = 0;
          if (v36 >= 8)
          {
            v37 = 8;
          }

          else
          {
            v37 = v36;
          }

          memcpy(v6 + 112, v35, v37);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v38 = *(v6 + 14);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "singleLeashTime";
          v175 = 1026;
          *v176 = 4;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v38;
          break;
        case 5:
          v87 = [v12 bytes];
          v88 = [v12 length];
          *(v6 + 15) = 0;
          if (v88 >= 8)
          {
            v89 = 8;
          }

          else
          {
            v89 = v88;
          }

          memcpy(v6 + 120, v87, v89);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v90 = *(v6 + 15);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "singleConnectionTime";
          v175 = 1026;
          *v176 = 5;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v90;
          break;
        case 6:
          v99 = [v12 bytes];
          v100 = [v12 length];
          *(v6 + 16) = 0;
          if (v100 >= 8)
          {
            v101 = 8;
          }

          else
          {
            v101 = v100;
          }

          memcpy(v6 + 128, v99, v101);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v102 = *(v6 + 16);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "dualConnectionTime";
          v175 = 1026;
          *v176 = 6;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v102;
          break;
        case 7:
          v67 = [v12 bytes];
          v68 = [v12 length];
          *(v6 + 17) = 0;
          if (v68 >= 8)
          {
            v69 = 8;
          }

          else
          {
            v69 = v68;
          }

          memcpy(v6 + 136, v67, v69);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v70 = *(v6 + 17);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "dualLeashTime";
          v175 = 1026;
          *v176 = 7;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v70;
          break;
        case 8:
          v111 = [v12 bytes];
          v112 = [v12 length];
          *(v6 + 18) = 0;
          if (v112 >= 8)
          {
            v113 = 8;
          }

          else
          {
            v113 = v112;
          }

          memcpy(v6 + 144, v111, v113);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v114 = *(v6 + 18);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "utAccelCount";
          v175 = 1026;
          *v176 = 8;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v114;
          break;
        case 9:
          v43 = [v12 bytes];
          v44 = [v12 length];
          *(v6 + 19) = 0;
          if (v44 >= 8)
          {
            v45 = 8;
          }

          else
          {
            v45 = v44;
          }

          memcpy(v6 + 152, v43, v45);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v46 = *(v6 + 19);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "lastClear";
          v175 = 1026;
          *v176 = 9;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v46;
          break;
        case 10:
          v107 = [v12 bytes];
          v108 = [v12 length];
          *(v6 + 20) = 0;
          if (v108 >= 8)
          {
            v109 = 8;
          }

          else
          {
            v109 = v108;
          }

          memcpy(v6 + 160, v107, v109);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v110 = *(v6 + 20);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "roseOnTime";
          v175 = 1026;
          *v176 = 10;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v110;
          break;
        case 11:
          v31 = [v12 bytes];
          v32 = [v12 length];
          *(v6 + 27) = 0;
          if (v32 >= 8)
          {
            v33 = 8;
          }

          else
          {
            v33 = v32;
          }

          memcpy(v6 + 216, v31, v33);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v34 = *(v6 + 27);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "fc1ndRangingTime";
          v175 = 1026;
          *v176 = 11;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v34;
          break;
        case 12:
          v39 = [v12 bytes];
          v40 = [v12 length];
          *(v6 + 26) = 0;
          if (v40 >= 8)
          {
            v41 = 8;
          }

          else
          {
            v41 = v40;
          }

          memcpy(v6 + 208, v39, v41);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v42 = *(v6 + 26);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "fc1ndRangingCount";
          v175 = 1026;
          *v176 = 12;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v42;
          break;
        case 13:
          v95 = [v12 bytes];
          v96 = [v12 length];
          *(v6 + 21) = 0;
          if (v96 >= 8)
          {
            v97 = 8;
          }

          else
          {
            v97 = v96;
          }

          memcpy(v6 + 168, v95, v97);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v98 = *(v6 + 21);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "ownerLongSoundCount";
          v175 = 1026;
          *v176 = 13;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v98;
          break;
        case 14:
          v27 = [v12 bytes];
          v28 = [v12 length];
          *(v6 + 22) = 0;
          if (v28 >= 8)
          {
            v29 = 8;
          }

          else
          {
            v29 = v28;
          }

          memcpy(v6 + 176, v27, v29);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v30 = *(v6 + 22);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "ownerShortSoundCount";
          v175 = 1026;
          *v176 = 14;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v30;
          break;
        case 15:
          v59 = [v12 bytes];
          v60 = [v12 length];
          *(v6 + 23) = 0;
          if (v60 >= 8)
          {
            v61 = 8;
          }

          else
          {
            v61 = v60;
          }

          memcpy(v6 + 184, v59, v61);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v62 = *(v6 + 23);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "utLongSoundCount";
          v175 = 1026;
          *v176 = 15;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v62;
          break;
        case 16:
          v23 = [v12 bytes];
          v24 = [v12 length];
          *(v6 + 24) = 0;
          if (v24 >= 8)
          {
            v25 = 8;
          }

          else
          {
            v25 = v24;
          }

          memcpy(v6 + 192, v23, v25);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v26 = *(v6 + 24);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "utShortSoundCount";
          v175 = 1026;
          *v176 = 16;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v26;
          break;
        case 17:
          v79 = [v12 bytes];
          v80 = [v12 length];
          *(v6 + 25) = 0;
          if (v80 >= 8)
          {
            v81 = 8;
          }

          else
          {
            v81 = v80;
          }

          memcpy(v6 + 200, v79, v81);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v82 = *(v6 + 25);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "bomSoundCount";
          v175 = 1026;
          *v176 = 17;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v82;
          break;
        case 18:
          v103 = [v12 bytes];
          v104 = [v12 length];
          *(v6 + 28) = 0;
          if (v104 >= 8)
          {
            v105 = 8;
          }

          else
          {
            v105 = v104;
          }

          memcpy(v6 + 224, v103, v105);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v106 = *(v6 + 28);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "lastPIn";
          v175 = 1026;
          *v176 = 18;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v106;
          break;
        case 19:
          v123 = [v12 bytes];
          v124 = [v12 length];
          *(v6 + 29) = 0;
          if (v124 >= 8)
          {
            v125 = 8;
          }

          else
          {
            v125 = v124;
          }

          memcpy(v6 + 232, v123, v125);
          v126 = *(v6 + 29);
          if (v126 >= 4)
          {
            v126 = -1;
          }

          *(v6 + 29) = v126;
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v127 = *(v6 + 29);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "batteryState";
          v175 = 1026;
          *v176 = 19;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v127;
          break;
        case 20:
          v83 = [v12 bytes];
          v84 = [v12 length];
          *(v6 + 30) = 0;
          if (v84 >= 8)
          {
            v85 = 8;
          }

          else
          {
            v85 = v84;
          }

          memcpy(v6 + 240, v83, v85);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v86 = *(v6 + 30);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "nbmmsRangingTime";
          v175 = 1026;
          *v176 = 20;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v86;
          break;
        case 21:
          v91 = [v12 bytes];
          v92 = [v12 length];
          *(v6 + 31) = 0;
          if (v92 >= 8)
          {
            v93 = 8;
          }

          else
          {
            v93 = v92;
          }

          memcpy(v6 + 248, v91, v93);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v94 = *(v6 + 31);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "abandonedFwUpdateCount";
          v175 = 1026;
          *v176 = 21;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v94;
          break;
        case 22:
          v119 = [v12 bytes];
          v120 = [v12 length];
          *(v6 + 32) = 0;
          if (v120 >= 8)
          {
            v121 = 8;
          }

          else
          {
            v121 = v120;
          }

          memcpy(v6 + 256, v119, v121);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v122 = *(v6 + 32);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "abandonedFwUpdateTime";
          v175 = 1026;
          *v176 = 22;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v122;
          break;
        case 23:
          v128 = [v12 bytes];
          v129 = [v12 length];
          *(v6 + 33) = 0;
          if (v129 >= 8)
          {
            v130 = 8;
          }

          else
          {
            v130 = v129;
          }

          memcpy(v6 + 264, v128, v130);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v131 = *(v6 + 33);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "roseInitCount";
          v175 = 1026;
          *v176 = 23;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v131;
          break;
        case 24:
          v51 = [v12 bytes];
          v52 = [v12 length];
          *(v6 + 34) = 0;
          if (v52 >= 8)
          {
            v53 = 8;
          }

          else
          {
            v53 = v52;
          }

          memcpy(v6 + 272, v51, v53);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v54 = *(v6 + 34);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "pairingAttemptsCount";
          v175 = 1026;
          *v176 = 24;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v54;
          break;
        case 25:
          v47 = [v12 bytes];
          v48 = [v12 length];
          *(v6 + 35) = 0;
          if (v48 >= 8)
          {
            v49 = 8;
          }

          else
          {
            v49 = v48;
          }

          memcpy(v6 + 280, v47, v49);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v50 = *(v6 + 35);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "tempVeryLowCount";
          v175 = 1026;
          *v176 = 25;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v50;
          break;
        case 26:
          v140 = [v12 bytes];
          v141 = [v12 length];
          *(v6 + 36) = 0;
          if (v141 >= 8)
          {
            v142 = 8;
          }

          else
          {
            v142 = v141;
          }

          memcpy(v6 + 288, v140, v142);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v143 = *(v6 + 36);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "tempLowCount";
          v175 = 1026;
          *v176 = 26;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v143;
          break;
        case 27:
          v19 = [v12 bytes];
          v20 = [v12 length];
          *(v6 + 37) = 0;
          if (v20 >= 8)
          {
            v21 = 8;
          }

          else
          {
            v21 = v20;
          }

          memcpy(v6 + 296, v19, v21);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v22 = *(v6 + 37);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "tempOkCount";
          v175 = 1026;
          *v176 = 27;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v22;
          break;
        case 28:
          v132 = [v12 bytes];
          v133 = [v12 length];
          *(v6 + 38) = 0;
          if (v133 >= 8)
          {
            v134 = 8;
          }

          else
          {
            v134 = v133;
          }

          memcpy(v6 + 304, v132, v134);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v135 = *(v6 + 38);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "tempHighCount";
          v175 = 1026;
          *v176 = 28;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v135;
          break;
        case 29:
          v136 = [v12 bytes];
          v137 = [v12 length];
          *(v6 + 39) = 0;
          if (v137 >= 8)
          {
            v138 = 8;
          }

          else
          {
            v138 = v137;
          }

          memcpy(v6 + 312, v136, v138);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v139 = *(v6 + 39);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "proxPairingTime";
          v175 = 1026;
          *v176 = 29;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v139;
          break;
        case 30:
          v115 = [v12 bytes];
          v116 = [v12 length];
          *(v6 + 40) = 0;
          if (v116 >= 8)
          {
            v117 = 8;
          }

          else
          {
            v117 = v116;
          }

          memcpy(v6 + 320, v115, v117);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v118 = *(v6 + 40);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "tempLastPIn";
          v175 = 1026;
          *v176 = 30;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v118;
          break;
        case 31:
          v75 = [v12 bytes];
          v76 = [v12 length];
          *(v6 + 41) = 0;
          if (v76 >= 8)
          {
            v77 = 8;
          }

          else
          {
            v77 = v76;
          }

          memcpy(v6 + 328, v75, v77);
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v17 = qword_1EAFE4700;
          if (!os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_245;
          }

          v78 = *(v6 + 41);
          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "nbmmsRangingCount";
          v175 = 1026;
          *v176 = 31;
          *&v176[4] = 1026;
          *&v176[6] = v10;
          *&v176[10] = 2114;
          *&v176[12] = v12;
          v177 = 2050;
          *v178 = v78;
          break;
        default:
          if (qword_1EAFE46C8 != -1)
          {
            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
          }

          v164 = qword_1EAFE4700;
          if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
          {
            *buf = 68290306;
            v170 = 0;
            v171 = 2082;
            v172 = "";
            v173 = 2082;
            v174 = "unknown type";
            v175 = 2114;
            *v176 = v12;
            *&v176[8] = 1026;
            *&v176[10] = v11;
            *&v176[14] = 1026;
            *&v176[16] = v10;
            v177 = 2114;
            *v178 = v12;
            _os_log_impl(&dword_19B873000, v164, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian #userstats, error:%{public, location:escape_only}s, typeHexString:%{public, location:escape_only}@, type:%{public}d, length:%{public}d, valueHexString:%{public, location:escape_only}@}", buf, 0x3Cu);
            if (qword_1EAFE46C8 != -1)
            {
              dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
            }
          }

          v165 = qword_1EAFE4700;
          if (!os_signpost_enabled(qword_1EAFE4700))
          {
            goto LABEL_255;
          }

          *buf = 68290306;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v174 = "unknown type";
          v175 = 2114;
          *v176 = v12;
          *&v176[8] = 1026;
          *&v176[10] = v11;
          *&v176[14] = 1026;
          *&v176[16] = v10;
          v177 = 2114;
          *v178 = v12;
          v146 = "{msg%{public}.0s:#durian #userstats, error:%{public, location:escape_only}s, typeHexString:%{public, location:escape_only}@, type:%{public}d, length:%{public}d, valueHexString:%{public, location:escape_only}@}";
          v147 = v165;
          v148 = 60;
          goto LABEL_254;
      }

      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#durian #userstats, type:%{public, location:escape_only}s, typeByte:%{public}d, length:%{public}d, valueHex:%{public, location:escape_only}@, value:%{public}lu}", buf, 0x3Cu);
LABEL_245:
      if (v8 >= [a3 length])
      {
        goto LABEL_257;
      }
    }

    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
    }

    v154 = qword_1EAFE4700;
    if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
    {
      v155 = [a3 length];
      *buf = 68290050;
      v170 = 0;
      v171 = 2082;
      v172 = "";
      v173 = 2082;
      v174 = "malformed TLV, offset + 2 >= length";
      v175 = 2114;
      *v176 = a3;
      *&v176[8] = 1026;
      *&v176[10] = v8;
      *&v176[14] = 1026;
      *&v176[16] = v155;
      _os_log_impl(&dword_19B873000, v154, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian #userstats, error:%{public, location:escape_only}s, payload:%{public, location:escape_only}@, offset:%{public}d, size:%{public}d}", buf, 0x32u);
      if (qword_1EAFE46C8 != -1)
      {
        dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
      }
    }

    v156 = qword_1EAFE4700;
    if (!os_signpost_enabled(qword_1EAFE4700))
    {
      goto LABEL_255;
    }

    v157 = [a3 length];
    *buf = 68290050;
    v170 = 0;
    v171 = 2082;
    v172 = "";
    v173 = 2082;
    v174 = "malformed TLV, offset + 2 >= length";
    v175 = 2114;
    *v176 = a3;
    *&v176[8] = 1026;
    *&v176[10] = v8;
    *&v176[14] = 1026;
    *&v176[16] = v157;
    v146 = "{msg%{public}.0s:#durian #userstats, error:%{public, location:escape_only}s, payload:%{public, location:escape_only}@, offset:%{public}d, size:%{public}d}";
LABEL_279:
    v147 = v156;
    v148 = 50;
    goto LABEL_254;
  }

LABEL_256:
  v149 = *MEMORY[0x1E69E9840];
  return v6;
}

- (CLFindMyAccessoryUserStats)initWithOverflowFlag:(unint64_t)a3 crashCount:(unint64_t)a4 multiTime:(unint64_t)a5 nearOwnerTime:(unint64_t)a6 wildTime:(unint64_t)a7 soundCount:(unint64_t)a8 soundTime:(unint64_t)a9 rangingCount:(unint64_t)a10 rangingTime:(unint64_t)a11 multiLeashTime:(unint64_t)a12 multiConnectionTime:(unint64_t)a13 nearOwnerTimeV2:(unint64_t)a14 singleLeashTime:(unint64_t)a15 singleConnectionTime:(unint64_t)a16 dualConnectionTime:(unint64_t)a17 dualLeashTime:(unint64_t)a18 utAccelCount:(unint64_t)a19 lastClear:(unint64_t)a20 roseOnTime:(unint64_t)a21 ownerLongSoundCount:(unint64_t)a22 ownerShortSoundCount:(unint64_t)a23 utLongSoundCount:(unint64_t)a24 utShortSoundCount:(unint64_t)a25 bomSoundCount:(unint64_t)a26 fc1ndRangingCount:(unint64_t)a27 fc1ndRangingTime:(unint64_t)a28 lastPIn:(unint64_t)a29 batteryState:(int64_t)a30 nbmmsRangingTime:(unint64_t)a31 abandonedFwUpdateCount:(unint64_t)a32 abandonedFwUpdateTime:(unint64_t)a33 roseInitCount:(unint64_t)a34 pairingAttemptsCount:(unint64_t)a35 tempVeryLowCount:(unint64_t)a36 tempLowCount:(unint64_t)a37 tempOkCount:(unint64_t)a38 tempHighCount:(unint64_t)a39 proxPairingTime:(unint64_t)a40 tempLastPIn:(unint64_t)a41 nbmmsRangingCount:(unint64_t)a42 version:(unint64_t)a43
{
  v50.receiver = self;
  v50.super_class = CLFindMyAccessoryUserStats;
  result = [(CLFindMyAccessoryUserStats *)&v50 init];
  if (result)
  {
    result->_version = a43;
    result->_overflowFlag = a3;
    result->_crashCount = a4;
    result->_multiTime = a5;
    result->_nearOwnerTime = a6;
    result->_wildTime = a7;
    result->_soundCount = a8;
    result->_soundTime = a9;
    result->_rangingCount = a10;
    result->_rangingTime = a11;
    result->_multiLeashTime = a12;
    result->_multiConnectionTime = a13;
    result->_nearOwnerTimeV2 = a14;
    result->_singleLeashTime = a15;
    result->_singleConnectionTime = a16;
    result->_dualConnectionTime = a17;
    result->_dualLeashTime = a18;
    result->_utAccelCount = a19;
    result->_lastClear = a20;
    result->_roseOnTime = a21;
    result->_ownerLongSoundCount = a22;
    result->_ownerShortSoundCount = a23;
    result->_utLongSoundCount = a24;
    result->_utShortSoundCount = a25;
    result->_bomSoundCount = a26;
    result->_fc1ndRangingCount = a27;
    result->_fc1ndRangingTime = a28;
    result->_lastPIn = a29;
    result->_batteryState = a30;
    result->_nbmmsRangingTime = a31;
    result->_abandonedFwUpdateCount = a32;
    result->_abandonedFwUpdateTime = a33;
    result->_roseInitCount = a34;
    result->_pairingAttemptsCount = a35;
    result->_tempVeryLowCount = a36;
    result->_tempLowCount = a37;
    result->_tempOkCount = a38;
    result->_tempHighCount = a39;
    result->_proxPairingTime = a40;
    result->_tempLastPIn = a41;
    result->_nbmmsRangingCount = a42;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_overflowFlag), @"overflowFlag"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_crashCount), @"crashCount"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_multiTime), @"multiTime"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_nearOwnerTime), @"nearOwnerTime"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_wildTime), @"wildTime"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_soundCount), @"soundCount"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_soundTime), @"soundTime"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_rangingCount), @"rangingCount"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_rangingTime), @"rangingTime"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_multiLeashTime), @"multiLeashTime"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_multiConnectionTime), @"multiConnectionTime"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_nearOwnerTimeV2), @"nearOwnerTimeV2"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_singleLeashTime), @"singleLeashTime"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_singleConnectionTime), @"singleConnectionTime"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_dualConnectionTime), @"dualConnectionTime"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_dualLeashTime), @"dualLeashTime"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_utAccelCount), @"utAccelCount"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_lastClear), @"lastClear"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_roseOnTime), @"roseOnTime"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_ownerLongSoundCount), @"ownerLongSoundCount"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_ownerShortSoundCount), @"ownerShortSoundCount"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_utLongSoundCount), @"utLongSoundCount"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_utShortSoundCount), @"utShortSoundCount"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_bomSoundCount), @"bomSoundCount"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_fc1ndRangingCount), @"fc1ndRangingCount"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_fc1ndRangingTime), @"fc1ndRangingTime"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_lastPIn), @"lastPin"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_batteryState), @"batteryState"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_nbmmsRangingTime), @"nbmmsRangingTime"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_abandonedFwUpdateCount), @"abandonedFwUpdateCount"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_abandonedFwUpdateTime), @"abandonedFwUpdateTime"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_roseInitCount), @"roseInitCount"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_pairingAttemptsCount), @"proxPairingAttemptsCount"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_tempVeryLowCount), @"tempVeryLowCount"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_tempLowCount), @"tempLowCount"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_tempOkCount), @"tempOkCount"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_tempHighCount), @"tempHighCount"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_proxPairingTime), @"proxPairingTime"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_tempLastPIn), @"lastPInTemperature"}];
  [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_nbmmsRangingCount), @"nbmmsRangingCount"}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_version];

  [a3 encodeObject:v5 forKey:@"version"];
}

+ (id)batteryStateToString:(int64_t)a3
{
  if ((a3 + 1) > 4)
  {
    return @"Unset";
  }

  else
  {
    return off_1E753E850[a3 + 1];
  }
}

@end