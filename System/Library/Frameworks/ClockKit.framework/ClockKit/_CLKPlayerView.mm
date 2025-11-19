@interface _CLKPlayerView
+ (Class)layerClass;
@end

@implementation _CLKPlayerView

+ (Class)layerClass
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getAVPlayerLayerClass_softClass;
  v10 = getAVPlayerLayerClass_softClass;
  if (!getAVPlayerLayerClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getAVPlayerLayerClass_block_invoke;
    v6[3] = &unk_278A1E6A0;
    v6[4] = &v7;
    __getAVPlayerLayerClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = objc_opt_class();

  return v4;
}

@end