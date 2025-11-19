@interface EARTranscriptionEvaluator
- (void)evaluateMessagesContext:(id)a3 recognizedText:(id)a4 correctedText:(id)a5 asrID:(id)a6 speechProfilePath:(id)a7 reply:(id)a8;
@end

@implementation EARTranscriptionEvaluator

- (void)evaluateMessagesContext:(id)a3 recognizedText:(id)a4 correctedText:(id)a5 asrID:(id)a6 speechProfilePath:(id)a7 reply:(id)a8
{
  v11 = sub_100046BBC();
  v26 = *(v11 - 8);
  v27 = v11;
  v12 = *(v26 + 64);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a8);
  sub_10000ECEC(&qword_10006F9C0, &unk_10004CF70);
  v16 = sub_100046EFC();
  v17 = sub_100046E5C();
  v19 = v18;
  v20 = sub_100046E5C();
  v22 = v21;
  sub_100046BAC();
  if (a7)
  {
    v23 = sub_100046E5C();
    a7 = v24;
  }

  else
  {
    v23 = 0;
  }

  _Block_copy(v15);
  v25 = self;
  sub_10001C6A4(v16, v17, v19, v20, v22, v14, v23, a7, v25, v15);
  _Block_release(v15);

  (*(v26 + 8))(v14, v27);
}

@end