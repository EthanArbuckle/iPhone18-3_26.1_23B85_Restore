@interface EARInterface
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)getJitProfileData:(id)a3 modelRoot:(id)a4 language:(id)a5 asrID:(id)a6 taskName:(id)a7 reply:(id)a8;
- (void)makeEARLanguageDetectorWithDetectorOptions:(id)a3 clientInfo:(id)a4 analysisOptions:(id)a5 reply:(id)a6;
- (void)makeEARSpeechRecognizerWithSupportedFeatures:(id)a3 clientInfo:(id)a4 analysisContext:(id)a5 analysisOptions:(id)a6 sandboxExtensions:(id)a7 reply:(id)a8;
- (void)makeEuclidInstanceWithLocale:(id)a3 clientID:(id)a4 encoderType:(int64_t)a5 initFlag:(int64_t)a6 reply:(id)a7;
- (void)makeFullPayloadCorrectorInstanceWithLocale:(id)a3 clientID:(id)a4 reply:(id)a5;
- (void)makeLSRAssetsForAssetConfig:(id)a3 shouldSubscribe:(BOOL)a4 clientID:(id)a5 modelOverridePath:(id)a6 isSpelling:(BOOL)a7 reply:(id)a8;
@end

@implementation EARInterface

- (void)makeEARSpeechRecognizerWithSupportedFeatures:(id)a3 clientInfo:(id)a4 analysisContext:(id)a5 analysisOptions:(id)a6 sandboxExtensions:(id)a7 reply:(id)a8
{
  v13 = _Block_copy(a8);
  v14 = sub_100046EFC();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = self;
  sub_10001CFC8(v16, v17, v18, a6, v14, sub_10001FD08, v15);
}

- (void)makeLSRAssetsForAssetConfig:(id)a3 shouldSubscribe:(BOOL)a4 clientID:(id)a5 modelOverridePath:(id)a6 isSpelling:(BOOL)a7 reply:(id)a8
{
  v9 = a7;
  v11 = a4;
  v14 = sub_10000ECEC(&qword_10006FED0, &qword_10004CF38);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v26 - v16;
  v18 = _Block_copy(a8);
  v19 = sub_100046E5C();
  v21 = v20;
  if (a6)
  {
    sub_100046ABC();
    v22 = sub_100046B0C();
    v23 = 0;
  }

  else
  {
    v22 = sub_100046B0C();
    v23 = 1;
  }

  sub_1000045DC(v17, v23, 1, v22);
  _Block_copy(v18);
  v24 = a3;
  v25 = self;
  sub_10001D8F8(v24, v11, v19, v21, v17, v9, v25, v18);
  _Block_release(v18);

  sub_100005808(v17, &qword_10006FED0, &qword_10004CF38);
}

- (void)makeEuclidInstanceWithLocale:(id)a3 clientID:(id)a4 encoderType:(int64_t)a5 initFlag:(int64_t)a6 reply:(id)a7
{
  v11 = sub_100046C3C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(a7);
  sub_100046BFC();
  v17 = sub_100046E5C();
  v19 = v18;
  _Block_copy(v16);
  v20 = self;
  sub_10001DDA0(v15, v17, v19, a5, a6, v20, v16);
  _Block_release(v16);

  (*(v12 + 8))(v15, v11);
}

- (void)makeEARLanguageDetectorWithDetectorOptions:(id)a3 clientInfo:(id)a4 analysisOptions:(id)a5 reply:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;
  sub_10001E23C(v12, v13, a5, sub_10001FC98, v11);
}

- (void)makeFullPayloadCorrectorInstanceWithLocale:(id)a3 clientID:(id)a4 reply:(id)a5
{
  v7 = sub_100046C3C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  sub_100046BFC();
  v13 = sub_100046E5C();
  v15 = v14;
  _Block_copy(v12);
  v16 = self;
  sub_10001E98C(v11, v13, v15, v16, v12);
  _Block_release(v12);

  (*(v8 + 8))(v11, v7);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10001EF50(v6, v7);

  return v9 & 1;
}

- (void)getJitProfileData:(id)a3 modelRoot:(id)a4 language:(id)a5 asrID:(id)a6 taskName:(id)a7 reply:(id)a8
{
  v12 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v31 - v14;
  v32 = sub_100046B0C();
  v16 = *(v32 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v32);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _Block_copy(a8);
  sub_100046ABC();
  v21 = sub_100046E5C();
  v23 = v22;
  if (a6)
  {
    sub_100046BAC();
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_100046BBC();
  sub_1000045DC(v15, v24, 1, v25);
  v26 = sub_100046E5C();
  v28 = v27;
  _Block_copy(v20);
  v29 = a3;
  v30 = self;
  sub_10001F2AC(v29, v19, v21, v23, v15, v26, v28, v30, v20);
  _Block_release(v20);

  sub_100005808(v15, &unk_10006FB00, &qword_10004C590);
  (*(v16 + 8))(v19, v32);
}

@end