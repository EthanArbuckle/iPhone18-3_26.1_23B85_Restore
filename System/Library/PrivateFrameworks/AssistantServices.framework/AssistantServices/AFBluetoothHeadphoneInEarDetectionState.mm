@interface AFBluetoothHeadphoneInEarDetectionState
+ (unint64_t)encodeForBTAddress:(id)address headphoneInEarDetectionStateDidChangeFrom:(id)from to:(id)to;
+ (void)decodeFromNotifyState:(unint64_t)state withCompletion:(id)completion;
@end

@implementation AFBluetoothHeadphoneInEarDetectionState

+ (void)decodeFromNotifyState:(unint64_t)state withCompletion:(id)completion
{
  completionCopy = completion;
  v12 = vdupq_n_s64(state);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008F8A0;
  v17[3] = &unk_10050FD50;
  v20 = (state & 0x40) != 0;
  v11 = vdupq_n_s64(3uLL);
  v18 = vandq_s8(vshlq_u64(v12, xmmword_1003F02C0), v11);
  v19 = state & 3;
  v6 = [AFBluetoothHeadphoneInEarDetectionState newWithBuilder:v17];
  v7 = state >> 14;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008F914;
  v13[3] = &unk_10050FD50;
  v16 = (state & 0x2000) != 0;
  v14 = vandq_s8(vshlq_u64(v12, xmmword_1003F02D0), v11);
  v15 = (state >> 7) & 3;
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

  completionCopy[2](completionCopy, v9, v8, v6);
}

+ (unint64_t)encodeForBTAddress:(id)address headphoneInEarDetectionStateDidChangeFrom:(id)from to:(id)to
{
  addressCopy = address;
  fromCopy = from;
  toCopy = to;
  v23 = 0;
  v10 = [addressCopy stringByReplacingOccurrencesOfString:@":" withString:&stru_10051F508];
  v11 = [NSScanner scannerWithString:v10];

  v12 = 0;
  if ([v11 scanHexLongLong:&v23])
  {
    v23 *= 2;
    isEnabled = [fromCopy isEnabled];
    v23 = 4 * (v23 | isEnabled);
    primaryEarbudSide = [fromCopy primaryEarbudSide];
    v23 = 4 * (v23 | primaryEarbudSide);
    primaryInEarStatus = [fromCopy primaryInEarStatus];
    v23 = 4 * (v23 | primaryInEarStatus);
    secondaryInEarStatus = [fromCopy secondaryInEarStatus];
    v23 = 2 * (v23 | secondaryInEarStatus);
    isEnabled2 = [toCopy isEnabled];
    v23 = 4 * (v23 | isEnabled2);
    primaryEarbudSide2 = [toCopy primaryEarbudSide];
    v23 = 4 * (v23 | primaryEarbudSide2);
    primaryInEarStatus2 = [toCopy primaryInEarStatus];
    v23 = 4 * (v23 | primaryInEarStatus2);
    secondaryInEarStatus2 = [toCopy secondaryInEarStatus];
    v12 = v23 | secondaryInEarStatus2;
    v23 |= secondaryInEarStatus2;
    v21 = AFSiriLogContextDaemon;
    if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v25 = "+[AFBluetoothHeadphoneInEarDetectionState(ADBluetoothObserver) encodeForBTAddress:headphoneInEarDetectionStateDidChangeFrom:to:]";
      v26 = 2112;
      v27 = addressCopy;
      v28 = 2112;
      v29 = fromCopy;
      v30 = 2112;
      v31 = toCopy;
      v32 = 2048;
      v33 = v12;
      _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "%s Encoding (%@) %@ -> %@: %lld", buf, 0x34u);
      v12 = v23;
    }
  }

  return v12;
}

@end