@interface EARInterface
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)getJitProfileData:(id)data modelRoot:(id)root language:(id)language asrID:(id)d taskName:(id)name reply:(id)reply;
- (void)makeEARLanguageDetectorWithDetectorOptions:(id)options clientInfo:(id)info analysisOptions:(id)analysisOptions reply:(id)reply;
- (void)makeEARSpeechRecognizerWithSupportedFeatures:(id)features clientInfo:(id)info analysisContext:(id)context analysisOptions:(id)options sandboxExtensions:(id)extensions reply:(id)reply;
- (void)makeEuclidInstanceWithLocale:(id)locale clientID:(id)d encoderType:(int64_t)type initFlag:(int64_t)flag reply:(id)reply;
- (void)makeFullPayloadCorrectorInstanceWithLocale:(id)locale clientID:(id)d reply:(id)reply;
- (void)makeLSRAssetsForAssetConfig:(id)config shouldSubscribe:(BOOL)subscribe clientID:(id)d modelOverridePath:(id)path isSpelling:(BOOL)spelling reply:(id)reply;
@end

@implementation EARInterface

- (void)makeEARSpeechRecognizerWithSupportedFeatures:(id)features clientInfo:(id)info analysisContext:(id)context analysisOptions:(id)options sandboxExtensions:(id)extensions reply:(id)reply
{
  v13 = _Block_copy(reply);
  v14 = sub_100046EFC();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  featuresCopy = features;
  infoCopy = info;
  contextCopy = context;
  optionsCopy = options;
  selfCopy = self;
  sub_10001CFC8(featuresCopy, infoCopy, contextCopy, options, v14, sub_10001FD08, v15);
}

- (void)makeLSRAssetsForAssetConfig:(id)config shouldSubscribe:(BOOL)subscribe clientID:(id)d modelOverridePath:(id)path isSpelling:(BOOL)spelling reply:(id)reply
{
  spellingCopy = spelling;
  subscribeCopy = subscribe;
  v14 = sub_10000ECEC(&qword_10006FED0, &qword_10004CF38);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v26 - v16;
  v18 = _Block_copy(reply);
  v19 = sub_100046E5C();
  v21 = v20;
  if (path)
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
  configCopy = config;
  selfCopy = self;
  sub_10001D8F8(configCopy, subscribeCopy, v19, v21, v17, spellingCopy, selfCopy, v18);
  _Block_release(v18);

  sub_100005808(v17, &qword_10006FED0, &qword_10004CF38);
}

- (void)makeEuclidInstanceWithLocale:(id)locale clientID:(id)d encoderType:(int64_t)type initFlag:(int64_t)flag reply:(id)reply
{
  v11 = sub_100046C3C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(reply);
  sub_100046BFC();
  v17 = sub_100046E5C();
  v19 = v18;
  _Block_copy(v16);
  selfCopy = self;
  sub_10001DDA0(v15, v17, v19, type, flag, selfCopy, v16);
  _Block_release(v16);

  (*(v12 + 8))(v15, v11);
}

- (void)makeEARLanguageDetectorWithDetectorOptions:(id)options clientInfo:(id)info analysisOptions:(id)analysisOptions reply:(id)reply
{
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  optionsCopy = options;
  infoCopy = info;
  analysisOptionsCopy = analysisOptions;
  selfCopy = self;
  sub_10001E23C(optionsCopy, infoCopy, analysisOptions, sub_10001FC98, v11);
}

- (void)makeFullPayloadCorrectorInstanceWithLocale:(id)locale clientID:(id)d reply:(id)reply
{
  v7 = sub_100046C3C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(reply);
  sub_100046BFC();
  v13 = sub_100046E5C();
  v15 = v14;
  _Block_copy(v12);
  selfCopy = self;
  sub_10001E98C(v11, v13, v15, selfCopy, v12);
  _Block_release(v12);

  (*(v8 + 8))(v11, v7);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10001EF50(listenerCopy, connectionCopy);

  return v9 & 1;
}

- (void)getJitProfileData:(id)data modelRoot:(id)root language:(id)language asrID:(id)d taskName:(id)name reply:(id)reply
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
  v20 = _Block_copy(reply);
  sub_100046ABC();
  v21 = sub_100046E5C();
  v23 = v22;
  if (d)
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
  dataCopy = data;
  selfCopy = self;
  sub_10001F2AC(dataCopy, v19, v21, v23, v15, v26, v28, selfCopy, v20);
  _Block_release(v20);

  sub_100005808(v15, &unk_10006FB00, &qword_10004C590);
  (*(v16 + 8))(v19, v32);
}

@end