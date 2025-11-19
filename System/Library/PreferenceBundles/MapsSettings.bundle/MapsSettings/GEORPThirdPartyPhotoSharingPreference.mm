@interface GEORPThirdPartyPhotoSharingPreference
+ (id)thirdPartyPhotoSharingPreferenceFromResponse:(id)a3;
@end

@implementation GEORPThirdPartyPhotoSharingPreference

+ (id)thirdPartyPhotoSharingPreferenceFromResponse:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_202B0;
  v11 = sub_202C0;
  v12 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_204C0;
  v6[3] = &unk_80010;
  v6[4] = &v7;
  [v3 enumerateFeedbackInfosUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

@end