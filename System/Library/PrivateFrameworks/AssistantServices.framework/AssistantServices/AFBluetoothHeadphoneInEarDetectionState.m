@interface AFBluetoothHeadphoneInEarDetectionState
+ (unint64_t)encodeForBTAddress:(id)a3 headphoneInEarDetectionStateDidChangeFrom:(id)a4 to:(id)a5;
+ (void)decodeFromNotifyState:(unint64_t)a3 withCompletion:(id)a4;
@end

@implementation AFBluetoothHeadphoneInEarDetectionState

+ (void)decodeFromNotifyState:(unint64_t)a3 withCompletion:(id)a4
{
  v5 = a4;
  v12 = vdupq_n_s64(a3);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008F8A0;
  v17[3] = &unk_10050FD50;
  v20 = (a3 & 0x40) != 0;
  v11 = vdupq_n_s64(3uLL);
  v18 = vandq_s8(vshlq_u64(v12, xmmword_1003F02C0), v11);
  v19 = a3 & 3;
  v6 = [AFBluetoothHeadphoneInEarDetectionState newWithBuilder:v17];
  v7 = a3 >> 14;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008F914;
  v13[3] = &unk_10050FD50;
  v16 = (a3 & 0x2000) != 0;
  v14 = vandq_s8(vshlq_u64(v12, xmmword_1003F02D0), v11);
  v15 = (a3 >> 7) & 3;
  v8 = [AFBluetoothHeadphoneInEarDetectionState newWithBuilder:v13];
  v9 = [NSMutableString stringWithFormat:@"%2llX", v7];
  if ([v9 length] >= 3)
  {
    v10 = 2;
    do
    {
      [v9 insertString:@":" atIndex:v10];
      v10 += 3;
    }

    while (v10 < [v9 length]);
  }

  v5[2](v5, v9, v8, v6);
}

+ (unint64_t)encodeForBTAddress:(id)a3 headphoneInEarDetectionStateDidChangeFrom:(id)a4 to:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v23 = 0;
  v10 = [v7 stringByReplacingOccurrencesOfString:@":" withString:&stru_10051F508];
  v11 = [NSScanner scannerWithString:v10];

  v12 = 0;
  if ([v11 scanHexLongLong:&v23])
  {
    v23 *= 2;
    v13 = [v8 isEnabled];
    v23 = 4 * (v23 | v13);
    v14 = [v8 primaryEarbudSide];
    v23 = 4 * (v23 | v14);
    v15 = [v8 primaryInEarStatus];
    v23 = 4 * (v23 | v15);
    v16 = [v8 secondaryInEarStatus];
    v23 = 2 * (v23 | v16);
    v17 = [v9 isEnabled];
    v23 = 4 * (v23 | v17);
    v18 = [v9 primaryEarbudSide];
    v23 = 4 * (v23 | v18);
    v19 = [v9 primaryInEarStatus];
    v23 = 4 * (v23 | v19);
    v20 = [v9 secondaryInEarStatus];
    v12 = v23 | v20;
    v23 |= v20;
    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v25 = "+[AFBluetoothHeadphoneInEarDetectionState(ADBluetoothObserver) encodeForBTAddress:headphoneInEarDetectionStateDidChangeFrom:to:]";
      v26 = 2112;
      v27 = v7;
      v28 = 2112;
      v29 = v8;
      v30 = 2112;
      v31 = v9;
      v32 = 2048;
      v33 = v12;
      _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s Encoding (%@) %@ -> %@: %lld", buf, 0x34u);
      v12 = v23;
    }
  }

  return v12;
}

@end