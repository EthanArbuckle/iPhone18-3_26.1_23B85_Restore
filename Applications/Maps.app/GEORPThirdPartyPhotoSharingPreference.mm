@interface GEORPThirdPartyPhotoSharingPreference
+ (id)thirdPartyPhotoSharingPreferenceFromResponse:(id)response;
@end

@implementation GEORPThirdPartyPhotoSharingPreference

+ (id)thirdPartyPhotoSharingPreferenceFromResponse:(id)response
{
  responseCopy = response;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1007DEBC4;
  v11 = sub_1007DEBD4;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007DEBDC;
  v6[3] = &unk_10162AA68;
  v6[4] = &v7;
  [responseCopy enumerateFeedbackInfosUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

@end