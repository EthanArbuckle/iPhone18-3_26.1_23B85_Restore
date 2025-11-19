@interface BSUIElementAudiobookControl
+ (id)supportedAttributes;
+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation BSUIElementAudiobookControl

+ (id)supportedAttributes
{
  if (qword_3CA758 != -1)
  {
    sub_2BD5B0();
  }

  v3 = qword_3CA750;

  return v3;
}

+ (void)configureBox:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  var0 = a4.var0;
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v22 = [v10 objectForAttribute:113 node:var0];
  v12 = [v10 objectForAttribute:150 node:var0];

  v13 = [v9 manager];
  v14 = [v13 dynamicRegistry];
  v15 = [v14 progressProviderForKind:@"audiobookProgress"];

  v16 = [v15 dynamicProgressForKind:@"chapterProgress" instance:v22 parameters:v12];
  v17 = BUProtocolCast();

  v18 = [v9 manager];

  v19 = [v18 dynamicRegistry];
  v20 = [v19 stateProviderForKind:@"libraryItem"];

  v21 = [v20 dynamicStateForKind:@"libraryItem" instance:v22 parameters:v12];
  [v11 setDynamicAudiobookProgress:v17];
  [v11 setDynamicState:v21];
}

@end