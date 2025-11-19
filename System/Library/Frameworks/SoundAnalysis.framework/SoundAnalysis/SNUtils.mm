@interface SNUtils
+ (BOOL)flushBytesFromPreciseTimeRangeInAudioFile:(id)a3 timeRange:(id *)a4 maxFramesPerBuffer:(unsigned int)a5 recycleBuffers:(BOOL)a6 prefixBufferPopulator:(id)a7 suffixBufferPopulator:(id)a8 intoSink:(id)a9 error:(id *)a10;
+ (BOOL)flushBytesFromStreamSource:(id)a3 toBuffer:(void *)a4 ofSizeInBytes:(int64_t)a5 error:(id *)a6;
+ (BOOL)multiArrayConstraintLastDimensionIsFlexible:(id)a3;
+ (_NSRange)lastDimensionSizeRange:(id)a3;
+ (id)createMultiArrayContainingPreciseTimeRangeOfAudioFile:(id)a3 timeRange:(id *)a4 maxFramesPerBuffer:(unsigned int)a5 recycleBuffers:(BOOL)a6 prefixBufferPopulator:(id)a7 suffixBufferPopulator:(id)a8 numDimensions:(int64_t)a9 error:(id *)a10;
+ (id)loadModelAtURL:(id)a3 withTimeout:(double)a4 error:(id *)a5;
+ (id)userSuppliedInputFeatureNames:(id)a3;
+ (id)zeroBufferPopulator;
+ (int)numberOfElements:(id)a3;
+ (unsigned)modelBlockSize:(id)a3 channelCount:(unsigned int)a4;
+ (void)logKShotSegments:(id)a3 exemplarIndex:(int64_t)a4;
@end

@implementation SNUtils

+ (void)logKShotSegments:(id)a3 exemplarIndex:(int64_t)a4
{
  type metadata accessor for SNKShotSegment(0);
  v5 = sub_1C9A92798();
  sub_1C9A1843C(v5, a4);
}

+ (int)numberOfElements:(id)a3
{
  sub_1C97BD318(0, &qword_1EC3C54B0);
  sub_1C9A92798();
  sub_1C9A16824();
  v4 = v3;

  return v4;
}

+ (unsigned)modelBlockSize:(id)a3 channelCount:(unsigned int)a4
{
  sub_1C97BD318(0, &qword_1EC3C54B0);
  v5 = sub_1C9A92798();
  sub_1C9A18C50(v5, a4);
  v7 = v6;

  return v7;
}

+ (BOOL)multiArrayConstraintLastDimensionIsFlexible:(id)a3
{
  v3 = a3;
  v4 = sub_1C9A16E60(v3);

  return v4;
}

+ (_NSRange)lastDimensionSizeRange:(id)a3
{
  v3 = a3;
  v4 = sub_1C9A16F28(v3);
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

+ (id)userSuppliedInputFeatureNames:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  sub_1C9A16808(v4);

  v5 = sub_1C9A92768();

  return v5;
}

+ (id)zeroBufferPopulator
{
  v4[4] = sub_1C9A1973C;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1C9A19874;
  v4[3] = &unk_1F494E4E8;
  v2 = _Block_copy(v4);

  return v2;
}

+ (BOOL)flushBytesFromStreamSource:(id)a3 toBuffer:(void *)a4 ofSizeInBytes:(int64_t)a5 error:(id *)a6
{
  v8 = _Block_copy(a3);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1C9A19A58(a4, a5, ObjCClassMetadata, v8);
  return 1;
}

+ (BOOL)flushBytesFromPreciseTimeRangeInAudioFile:(id)a3 timeRange:(id *)a4 maxFramesPerBuffer:(unsigned int)a5 recycleBuffers:(BOOL)a6 prefixBufferPopulator:(id)a7 suffixBufferPopulator:(id)a8 intoSink:(id)a9 error:(id *)a10
{
  var3 = a4->var1.var3;
  v23[0] = *&a4->var0.var0;
  v23[1] = *&a4->var0.var3;
  v24 = *&a4->var1.var1;
  v25 = var3;
  v15 = _Block_copy(a7);
  v16 = _Block_copy(a8);
  v17 = _Block_copy(a9);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  swift_getObjCClassMetadata();
  v21 = a3;
  sub_1C9A19E0C(v21, v23, a5, a6, sub_1C9A1C178, v18, sub_1C9A1C178, v19, sub_1C9A1BFF8, v20);

  return 1;
}

+ (id)createMultiArrayContainingPreciseTimeRangeOfAudioFile:(id)a3 timeRange:(id *)a4 maxFramesPerBuffer:(unsigned int)a5 recycleBuffers:(BOOL)a6 prefixBufferPopulator:(id)a7 suffixBufferPopulator:(id)a8 numDimensions:(int64_t)a9 error:(id *)a10
{
  var3 = a4->var1.var3;
  v23[0] = *&a4->var0.var0;
  v23[1] = *&a4->var0.var3;
  v24 = *&a4->var1.var1;
  v25 = var3;
  v15 = _Block_copy(a7);
  v16 = _Block_copy(a8);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  swift_getObjCClassMetadata();
  v19 = a3;
  sub_1C9A1A18C(v19, v23, a5, a6, sub_1C9A1BFF8, v17, sub_1C9A1C178, v18, a9);
  v21 = v20;

  return v21;
}

+ (id)loadModelAtURL:(id)a3 withTimeout:(double)a4 error:(id *)a5
{
  v6 = sub_1C9A91558();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9A914F8();
  v10 = sub_1C9A1A82C(v9, a4);
  (*(v7 + 8))(v9, v6);

  return v10;
}

@end