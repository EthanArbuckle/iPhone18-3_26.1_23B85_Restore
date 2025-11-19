@interface _SNAudioFileAnalyzer
- (BOOL)addRequest:(id)a3 withObserver:(id)a4 error:(id *)a5;
- (NSString)detailedDescription;
- (_SNAudioFileAnalyzer)initWithURL:(id)a3 error:(id *)a4;
- (void)analyze;
- (void)analyzeInRange:(id *)a3;
- (void)analyzeWithCompletionHandler:(id)a3;
- (void)removeAllRequests;
- (void)removeRequest:(id)a3;
@end

@implementation _SNAudioFileAnalyzer

- (_SNAudioFileAnalyzer)initWithURL:(id)a3 error:(id *)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
    sub_1C97A2D34(&v5, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_1C99AF3C0(v6);
}

- (void)analyzeInRange:(id *)a3
{
  var3 = a3->var1.var3;
  v5[0] = a3->var0.var0;
  v5[1] = *&a3->var0.var1;
  v6 = *&a3->var0.var3;
  v7 = *&a3->var1.var1;
  v8 = var3;
  v4 = self;
  sub_1C99B00BC(v5);
}

- (void)analyze
{
  v2 = self;
  sub_1C99B031C();
}

- (void)analyzeWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1C99B0FE8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_1C99B0390(v7, v6);
  sub_1C979AFD4(v7);
}

- (BOOL)addRequest:(id)a3 withObserver:(id)a4 error:(id *)a5
{
  if (!a3)
  {
    memset(v12, 0, sizeof(v12));
    swift_unknownObjectRetain();
    v8 = self;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(v11, 0, sizeof(v11));
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  v7 = self;
  swift_unknownObjectRetain();
  sub_1C9A93318();
  swift_unknownObjectRelease();
  sub_1C97A2D34(v11, v12);
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1C9A93318();
  swift_unknownObjectRelease();
  sub_1C97A2D34(&v10, v11);
LABEL_6:
  sub_1C99B086C(v12, v11);

  sub_1C97F9D3C(v11, &unk_1EC3C5E60);
  sub_1C97F9D3C(v12, &unk_1EC3C5E60);
  return 1;
}

- (void)removeRequest:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1C99B0B80(v6);

  sub_1C97F9D3C(v6, &unk_1EC3C5E60);
}

- (void)removeAllRequests
{
  v2 = self;
  sub_1C99B0CCC();
}

- (NSString)detailedDescription
{
  v2 = self;
  sub_1C99B0D94();

  v3 = sub_1C9A92478();

  return v3;
}

@end