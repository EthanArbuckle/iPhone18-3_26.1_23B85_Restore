@interface CLFindMyAccessoryUserStats
+ (id)batteryStateToString:(int64_t)string;
- (CLFindMyAccessoryUserStats)init;
- (CLFindMyAccessoryUserStats)initWithOverflowFlag:(unint64_t)flag crashCount:(unint64_t)count multiTime:(unint64_t)time nearOwnerTime:(unint64_t)ownerTime wildTime:(unint64_t)wildTime soundCount:(unint64_t)soundCount soundTime:(unint64_t)soundTime rangingCount:(unint64_t)self0 rangingTime:(unint64_t)self1 multiLeashTime:(unint64_t)self2 multiConnectionTime:(unint64_t)self3 nearOwnerTimeV2:(unint64_t)self4 singleLeashTime:(unint64_t)self5 singleConnectionTime:(unint64_t)self6 dualConnectionTime:(unint64_t)self7 dualLeashTime:(unint64_t)self8 utAccelCount:(unint64_t)self9 lastClear:(unint64_t)clear roseOnTime:(unint64_t)onTime ownerLongSoundCount:(unint64_t)longSoundCount ownerShortSoundCount:(unint64_t)shortSoundCount utLongSoundCount:(unint64_t)utLongSoundCount utShortSoundCount:(unint64_t)utShortSoundCount bomSoundCount:(unint64_t)bomSoundCount fc1ndRangingCount:(unint64_t)fc1ndRangingCount fc1ndRangingTime:(unint64_t)fc1ndRangingTime lastPIn:(unint64_t)in batteryState:(int64_t)flag0 nbmmsRangingTime:(unint64_t)flag1 abandonedFwUpdateCount:(unint64_t)flag2 abandonedFwUpdateTime:(unint64_t)flag3 roseInitCount:(unint64_t)flag4 pairingAttemptsCount:(unint64_t)flag5 tempVeryLowCount:(unint64_t)flag6 tempLowCount:(unint64_t)flag7 tempOkCount:(unint64_t)flag8 tempHighCount:(unint64_t)flag9 proxPairingTime:(unint64_t)count0 tempLastPIn:(unint64_t)count1 nbmmsRangingCount:(unint64_t)count2 version:(unint64_t)count3;
- (CLFindMyAccessoryUserStats)initWithPayloadV1:(id)v1;
- (CLFindMyAccessoryUserStats)initWithPayloadV2:(id)v2;
- (CLFindMyAccessoryUserStats)initWithPayloadV3:(id)v3;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLFindMyAccessoryUserStats

- (CLFindMyAccessoryUserStats)init
{
  [(CLFindMyAccessoryUserStats *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (CLFindMyAccessoryUserStats)initWithPayloadV1:(id)v1
{
  v13 = *MEMORY[0x1E69E9840];
  if ([v1 length] == 19)
  {
    bytes = [v1 bytes];
    result = [(CLFindMyAccessoryUserStats *)self initWithOverflowFlag:*bytes crashCount:bytes[1] multiTime:*(bytes + 1) | (bytes[4] << 16) nearOwnerTime:*(bytes + 5) | (bytes[7] << 16) wildTime:*(bytes + 4) | (bytes[10] << 16) soundCount:*(bytes + 11) soundTime:*(bytes + 13) rangingCount:*(bytes + 15) rangingTime:*(bytes + 17) multiLeashTime:0 multiConnectionTime:0 nearOwnerTimeV2:0 singleLeashTime:0 singleConnectionTime:0 dualConnectionTime:0 dualLeashTime:0 utAccelCount:0 lastClear:0 roseOnTime:0 ownerLongSoundCount:0 ownerShortSoundCount:0 utLongSoundCount:0 utShortSoundCount:0 bomSoundCount:0 fc1ndRangingCount:0 fc1ndRangingTime:0 lastPIn:0 batteryState:-1 nbmmsRangingTime:0 abandonedFwUpdateCount:0 abandonedFwUpdateTime:0 roseInitCount:0 pairingAttemptsCount:0 tempVeryLowCount:0 tempLowCount:0 tempOkCount:0 tempHighCount:0 proxPairingTime:0 tempLastPIn:0 nbmmsRangingCount:0 version:1];
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

- (CLFindMyAccessoryUserStats)initWithPayloadV2:(id)v2
{
  v15 = *MEMORY[0x1E69E9840];
  if ([v2 length] == 60)
  {
    bytes = [v2 bytes];
    v6 = *(bytes + 25);
    v7 = *(bytes + 26);
    result = [(CLFindMyAccessoryUserStats *)self initWithOverflowFlag:0 crashCount:0 multiTime:bytes[1] + *bytes nearOwnerTime:bytes[4] + bytes[2] + bytes[5] wildTime:bytes[3] soundCount:(v7 + v6 + *(bytes + 28)) soundTime:3 * v7 - (*(bytes + 27) + v6) + 8 * (*(bytes + 27) + v6) rangingCount:*(bytes + 24) rangingTime:bytes[11] multiLeashTime:*bytes multiConnectionTime:bytes[1] nearOwnerTimeV2:bytes[2] singleLeashTime:bytes[4] singleConnectionTime:bytes[5] dualConnectionTime:bytes[6] dualLeashTime:bytes[7] utAccelCount:bytes[8] lastClear:bytes[9] roseOnTime:bytes[10] ownerLongSoundCount:v6 ownerShortSoundCount:v7 utLongSoundCount:*(bytes + 27) utShortSoundCount:*(bytes + 28) bomSoundCount:*(bytes + 29) fc1ndRangingCount:*(bytes + 24) fc1ndRangingTime:bytes[11] lastPIn:0 batteryState:-1 nbmmsRangingTime:0 abandonedFwUpdateCount:0 abandonedFwUpdateTime:0 roseInitCount:0 pairingAttemptsCount:0 tempVeryLowCount:0 tempLowCount:0 tempOkCount:0 tempHighCount:0 proxPairingTime:0 tempLastPIn:0 nbmmsRangingCount:0 version:2];
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

- (CLFindMyAccessoryUserStats)initWithPayloadV3:(id)v3
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
    v3Copy = v3;
    v175 = 1026;
    *v176 = [v3 length];
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian #userstats initWithPayloadV3, payload:%{public, location:escape_only}@, size:%{public}d}", buf, 0x22u);
  }

  if (!v3 || ![v3 length])
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
      v3Copy = "empty payload, no stats";
      v175 = 2114;
      *v176 = v3;
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
      v3Copy = "empty payload, no stats";
      v175 = 2114;
      *v176 = v3;
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
    bytes = [v3 bytes];
    if (![v3 length])
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
      if (v8 + 2 >= [v3 length])
      {
        break;
      }

      v10 = *(bytes + v8 + 1);
      if ((v10 - 5) <= 0xFFFFFFFB)
      {
        if (qword_1EAFE46C8 != -1)
        {
          dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
        }

        v158 = qword_1EAFE4700;
        if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
        {
          v159 = [v3 length];
          *buf = 68290050;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v3Copy = "invalid length";
          v175 = 2114;
          *v176 = v3;
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

        v160 = [v3 length];
        *buf = 68290050;
        v170 = 0;
        v171 = 2082;
        v172 = "";
        v173 = 2082;
        v3Copy = "invalid length";
        v175 = 2114;
        *v176 = v3;
        *&v176[8] = 1026;
        *&v176[10] = v8 + 2;
        *&v176[14] = 1026;
        *&v176[16] = v160;
        v146 = "{msg%{public}.0s:#durian #userstats, error:%{public, location:escape_only}s, payload:%{public, location:escape_only}@, offset:%{public}d, size:%{public}d}";
        goto LABEL_279;
      }

      v11 = *(bytes + v8);
      v8 = v9 + v10;
      if (v9 + v10 > [v3 length])
      {
        if (qword_1EAFE46C8 != -1)
        {
          dispatch_once(&qword_1EAFE46C8, &unk_1F0E6E5D8);
        }

        v161 = qword_1EAFE4700;
        if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
        {
          v162 = [v3 length];
          *buf = 68290050;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v3Copy = "malformed TLV, offset + length > payload";
          v175 = 2114;
          *v176 = v3;
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
          v163 = [v3 length];
          *buf = 68290050;
          v170 = 0;
          v171 = 2082;
          v172 = "";
          v173 = 2082;
          v3Copy = "malformed TLV, offset + length > payload";
          v175 = 2114;
          *v176 = v3;
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

      v12 = [v3 subdataWithRange:{v9, v10}];
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
        v3Copy = "TLV";
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
          bytes2 = [v12 bytes];
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

          memcpy(v6 + 88, bytes2, v16);
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
          v3Copy = "multiLeashTime";
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
          bytes3 = [v12 bytes];
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

          memcpy(v6 + 96, bytes3, v73);
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
          v3Copy = "multiConnectionTime";
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
          bytes4 = [v12 bytes];
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

          memcpy(v6 + 104, bytes4, v57);
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
          v3Copy = "nearOwnerTime";
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
          bytes5 = [v12 bytes];
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

          memcpy(v6 + 48, bytes5, v65);
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
          v3Copy = "wildTime";
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
          bytes6 = [v12 bytes];
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

          memcpy(v6 + 112, bytes6, v37);
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
          v3Copy = "singleLeashTime";
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
          bytes7 = [v12 bytes];
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

          memcpy(v6 + 120, bytes7, v89);
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
          v3Copy = "singleConnectionTime";
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
          bytes8 = [v12 bytes];
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

          memcpy(v6 + 128, bytes8, v101);
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
          v3Copy = "dualConnectionTime";
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
          bytes9 = [v12 bytes];
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

          memcpy(v6 + 136, bytes9, v69);
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
          v3Copy = "dualLeashTime";
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
          bytes10 = [v12 bytes];
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

          memcpy(v6 + 144, bytes10, v113);
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
          v3Copy = "utAccelCount";
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
          bytes11 = [v12 bytes];
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

          memcpy(v6 + 152, bytes11, v45);
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
          v3Copy = "lastClear";
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
          bytes12 = [v12 bytes];
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

          memcpy(v6 + 160, bytes12, v109);
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
          v3Copy = "roseOnTime";
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
          bytes13 = [v12 bytes];
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

          memcpy(v6 + 216, bytes13, v33);
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
          v3Copy = "fc1ndRangingTime";
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
          bytes14 = [v12 bytes];
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

          memcpy(v6 + 208, bytes14, v41);
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
          v3Copy = "fc1ndRangingCount";
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
          bytes15 = [v12 bytes];
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

          memcpy(v6 + 168, bytes15, v97);
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
          v3Copy = "ownerLongSoundCount";
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
          bytes16 = [v12 bytes];
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

          memcpy(v6 + 176, bytes16, v29);
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
          v3Copy = "ownerShortSoundCount";
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
          bytes17 = [v12 bytes];
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

          memcpy(v6 + 184, bytes17, v61);
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
          v3Copy = "utLongSoundCount";
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
          bytes18 = [v12 bytes];
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

          memcpy(v6 + 192, bytes18, v25);
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
          v3Copy = "utShortSoundCount";
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
          bytes19 = [v12 bytes];
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

          memcpy(v6 + 200, bytes19, v81);
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
          v3Copy = "bomSoundCount";
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
          bytes20 = [v12 bytes];
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

          memcpy(v6 + 224, bytes20, v105);
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
          v3Copy = "lastPIn";
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
          bytes21 = [v12 bytes];
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

          memcpy(v6 + 232, bytes21, v125);
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
          v3Copy = "batteryState";
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
          bytes22 = [v12 bytes];
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

          memcpy(v6 + 240, bytes22, v85);
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
          v3Copy = "nbmmsRangingTime";
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
          bytes23 = [v12 bytes];
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

          memcpy(v6 + 248, bytes23, v93);
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
          v3Copy = "abandonedFwUpdateCount";
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
          bytes24 = [v12 bytes];
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

          memcpy(v6 + 256, bytes24, v121);
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
          v3Copy = "abandonedFwUpdateTime";
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
          bytes25 = [v12 bytes];
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

          memcpy(v6 + 264, bytes25, v130);
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
          v3Copy = "roseInitCount";
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
          bytes26 = [v12 bytes];
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

          memcpy(v6 + 272, bytes26, v53);
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
          v3Copy = "pairingAttemptsCount";
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
          bytes27 = [v12 bytes];
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

          memcpy(v6 + 280, bytes27, v49);
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
          v3Copy = "tempVeryLowCount";
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
          bytes28 = [v12 bytes];
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

          memcpy(v6 + 288, bytes28, v142);
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
          v3Copy = "tempLowCount";
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
          bytes29 = [v12 bytes];
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

          memcpy(v6 + 296, bytes29, v21);
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
          v3Copy = "tempOkCount";
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
          bytes30 = [v12 bytes];
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

          memcpy(v6 + 304, bytes30, v134);
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
          v3Copy = "tempHighCount";
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
          bytes31 = [v12 bytes];
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

          memcpy(v6 + 312, bytes31, v138);
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
          v3Copy = "proxPairingTime";
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
          bytes32 = [v12 bytes];
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

          memcpy(v6 + 320, bytes32, v117);
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
          v3Copy = "tempLastPIn";
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
          bytes33 = [v12 bytes];
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

          memcpy(v6 + 328, bytes33, v77);
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
          v3Copy = "nbmmsRangingCount";
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
            v3Copy = "unknown type";
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
          v3Copy = "unknown type";
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
      if (v8 >= [v3 length])
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
      v155 = [v3 length];
      *buf = 68290050;
      v170 = 0;
      v171 = 2082;
      v172 = "";
      v173 = 2082;
      v3Copy = "malformed TLV, offset + 2 >= length";
      v175 = 2114;
      *v176 = v3;
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

    v157 = [v3 length];
    *buf = 68290050;
    v170 = 0;
    v171 = 2082;
    v172 = "";
    v173 = 2082;
    v3Copy = "malformed TLV, offset + 2 >= length";
    v175 = 2114;
    *v176 = v3;
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

- (CLFindMyAccessoryUserStats)initWithOverflowFlag:(unint64_t)flag crashCount:(unint64_t)count multiTime:(unint64_t)time nearOwnerTime:(unint64_t)ownerTime wildTime:(unint64_t)wildTime soundCount:(unint64_t)soundCount soundTime:(unint64_t)soundTime rangingCount:(unint64_t)self0 rangingTime:(unint64_t)self1 multiLeashTime:(unint64_t)self2 multiConnectionTime:(unint64_t)self3 nearOwnerTimeV2:(unint64_t)self4 singleLeashTime:(unint64_t)self5 singleConnectionTime:(unint64_t)self6 dualConnectionTime:(unint64_t)self7 dualLeashTime:(unint64_t)self8 utAccelCount:(unint64_t)self9 lastClear:(unint64_t)clear roseOnTime:(unint64_t)onTime ownerLongSoundCount:(unint64_t)longSoundCount ownerShortSoundCount:(unint64_t)shortSoundCount utLongSoundCount:(unint64_t)utLongSoundCount utShortSoundCount:(unint64_t)utShortSoundCount bomSoundCount:(unint64_t)bomSoundCount fc1ndRangingCount:(unint64_t)fc1ndRangingCount fc1ndRangingTime:(unint64_t)fc1ndRangingTime lastPIn:(unint64_t)in batteryState:(int64_t)flag0 nbmmsRangingTime:(unint64_t)flag1 abandonedFwUpdateCount:(unint64_t)flag2 abandonedFwUpdateTime:(unint64_t)flag3 roseInitCount:(unint64_t)flag4 pairingAttemptsCount:(unint64_t)flag5 tempVeryLowCount:(unint64_t)flag6 tempLowCount:(unint64_t)flag7 tempOkCount:(unint64_t)flag8 tempHighCount:(unint64_t)flag9 proxPairingTime:(unint64_t)count0 tempLastPIn:(unint64_t)count1 nbmmsRangingCount:(unint64_t)count2 version:(unint64_t)count3
{
  v50.receiver = self;
  v50.super_class = CLFindMyAccessoryUserStats;
  result = [(CLFindMyAccessoryUserStats *)&v50 init];
  if (result)
  {
    result->_version = version;
    result->_overflowFlag = flag;
    result->_crashCount = count;
    result->_multiTime = time;
    result->_nearOwnerTime = ownerTime;
    result->_wildTime = wildTime;
    result->_soundCount = soundCount;
    result->_soundTime = soundTime;
    result->_rangingCount = rangingCount;
    result->_rangingTime = rangingTime;
    result->_multiLeashTime = leashTime;
    result->_multiConnectionTime = connectionTime;
    result->_nearOwnerTimeV2 = v2;
    result->_singleLeashTime = singleLeashTime;
    result->_singleConnectionTime = singleConnectionTime;
    result->_dualConnectionTime = dualConnectionTime;
    result->_dualLeashTime = dualLeashTime;
    result->_utAccelCount = accelCount;
    result->_lastClear = clear;
    result->_roseOnTime = onTime;
    result->_ownerLongSoundCount = longSoundCount;
    result->_ownerShortSoundCount = shortSoundCount;
    result->_utLongSoundCount = utLongSoundCount;
    result->_utShortSoundCount = utShortSoundCount;
    result->_bomSoundCount = bomSoundCount;
    result->_fc1ndRangingCount = fc1ndRangingCount;
    result->_fc1ndRangingTime = fc1ndRangingTime;
    result->_lastPIn = in;
    result->_batteryState = state;
    result->_nbmmsRangingTime = nbmmsRangingTime;
    result->_abandonedFwUpdateCount = updateCount;
    result->_abandonedFwUpdateTime = updateTime;
    result->_roseInitCount = initCount;
    result->_pairingAttemptsCount = attemptsCount;
    result->_tempVeryLowCount = lowCount;
    result->_tempLowCount = tempLowCount;
    result->_tempOkCount = okCount;
    result->_tempHighCount = highCount;
    result->_proxPairingTime = pairingTime;
    result->_tempLastPIn = pIn;
    result->_nbmmsRangingCount = nbmmsRangingCount;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_overflowFlag), @"overflowFlag"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_crashCount), @"crashCount"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_multiTime), @"multiTime"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_nearOwnerTime), @"nearOwnerTime"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_wildTime), @"wildTime"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_soundCount), @"soundCount"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_soundTime), @"soundTime"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_rangingCount), @"rangingCount"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_rangingTime), @"rangingTime"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_multiLeashTime), @"multiLeashTime"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_multiConnectionTime), @"multiConnectionTime"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_nearOwnerTimeV2), @"nearOwnerTimeV2"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_singleLeashTime), @"singleLeashTime"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_singleConnectionTime), @"singleConnectionTime"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_dualConnectionTime), @"dualConnectionTime"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_dualLeashTime), @"dualLeashTime"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_utAccelCount), @"utAccelCount"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_lastClear), @"lastClear"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_roseOnTime), @"roseOnTime"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_ownerLongSoundCount), @"ownerLongSoundCount"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_ownerShortSoundCount), @"ownerShortSoundCount"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_utLongSoundCount), @"utLongSoundCount"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_utShortSoundCount), @"utShortSoundCount"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_bomSoundCount), @"bomSoundCount"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_fc1ndRangingCount), @"fc1ndRangingCount"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_fc1ndRangingTime), @"fc1ndRangingTime"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_lastPIn), @"lastPin"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_batteryState), @"batteryState"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_nbmmsRangingTime), @"nbmmsRangingTime"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_abandonedFwUpdateCount), @"abandonedFwUpdateCount"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_abandonedFwUpdateTime), @"abandonedFwUpdateTime"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_roseInitCount), @"roseInitCount"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_pairingAttemptsCount), @"proxPairingAttemptsCount"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_tempVeryLowCount), @"tempVeryLowCount"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_tempLowCount), @"tempLowCount"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_tempOkCount), @"tempOkCount"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_tempHighCount), @"tempHighCount"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_proxPairingTime), @"proxPairingTime"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_tempLastPIn), @"lastPInTemperature"}];
  [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", self->_nbmmsRangingCount), @"nbmmsRangingCount"}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_version];

  [coder encodeObject:v5 forKey:@"version"];
}

+ (id)batteryStateToString:(int64_t)string
{
  if ((string + 1) > 4)
  {
    return @"Unset";
  }

  else
  {
    return off_1E753E850[string + 1];
  }
}

@end