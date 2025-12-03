@interface SNUtils
+ (BOOL)flushBytesFromPreciseTimeRangeInAudioFile:(id)file timeRange:(id *)range maxFramesPerBuffer:(unsigned int)buffer recycleBuffers:(BOOL)buffers prefixBufferPopulator:(id)populator suffixBufferPopulator:(id)bufferPopulator intoSink:(id)sink error:(id *)self0;
+ (BOOL)flushBytesFromStreamSource:(id)source toBuffer:(void *)buffer ofSizeInBytes:(int64_t)bytes error:(id *)error;
+ (BOOL)multiArrayConstraintLastDimensionIsFlexible:(id)flexible;
+ (_NSRange)lastDimensionSizeRange:(id)range;
+ (id)createMultiArrayContainingPreciseTimeRangeOfAudioFile:(id)file timeRange:(id *)range maxFramesPerBuffer:(unsigned int)buffer recycleBuffers:(BOOL)buffers prefixBufferPopulator:(id)populator suffixBufferPopulator:(id)bufferPopulator numDimensions:(int64_t)dimensions error:(id *)self0;
+ (id)loadModelAtURL:(id)l withTimeout:(double)timeout error:(id *)error;
+ (id)userSuppliedInputFeatureNames:(id)names;
+ (id)zeroBufferPopulator;
+ (int)numberOfElements:(id)elements;
+ (unsigned)modelBlockSize:(id)size channelCount:(unsigned int)count;
+ (void)logKShotSegments:(id)segments exemplarIndex:(int64_t)index;
@end

@implementation SNUtils

+ (void)logKShotSegments:(id)segments exemplarIndex:(int64_t)index
{
  type metadata accessor for SNKShotSegment(0);
  v5 = sub_1C9A92798();
  sub_1C9A1843C(v5, index);
}

+ (int)numberOfElements:(id)elements
{
  sub_1C97BD318(0, &qword_1EC3C54B0);
  sub_1C9A92798();
  sub_1C9A16824();
  v4 = v3;

  return v4;
}

+ (unsigned)modelBlockSize:(id)size channelCount:(unsigned int)count
{
  sub_1C97BD318(0, &qword_1EC3C54B0);
  v5 = sub_1C9A92798();
  sub_1C9A18C50(v5, count);
  v7 = v6;

  return v7;
}

+ (BOOL)multiArrayConstraintLastDimensionIsFlexible:(id)flexible
{
  flexibleCopy = flexible;
  v4 = sub_1C9A16E60(flexibleCopy);

  return v4;
}

+ (_NSRange)lastDimensionSizeRange:(id)range
{
  rangeCopy = range;
  v4 = sub_1C9A16F28(rangeCopy);
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

+ (id)userSuppliedInputFeatureNames:(id)names
{
  swift_getObjCClassMetadata();
  namesCopy = names;
  sub_1C9A16808(namesCopy);

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

+ (BOOL)flushBytesFromStreamSource:(id)source toBuffer:(void *)buffer ofSizeInBytes:(int64_t)bytes error:(id *)error
{
  v8 = _Block_copy(source);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1C9A19A58(buffer, bytes, ObjCClassMetadata, v8);
  return 1;
}

+ (BOOL)flushBytesFromPreciseTimeRangeInAudioFile:(id)file timeRange:(id *)range maxFramesPerBuffer:(unsigned int)buffer recycleBuffers:(BOOL)buffers prefixBufferPopulator:(id)populator suffixBufferPopulator:(id)bufferPopulator intoSink:(id)sink error:(id *)self0
{
  var3 = range->var1.var3;
  v23[0] = *&range->var0.var0;
  v23[1] = *&range->var0.var3;
  v24 = *&range->var1.var1;
  v25 = var3;
  v15 = _Block_copy(populator);
  v16 = _Block_copy(bufferPopulator);
  v17 = _Block_copy(sink);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  swift_getObjCClassMetadata();
  fileCopy = file;
  sub_1C9A19E0C(fileCopy, v23, buffer, buffers, sub_1C9A1C178, v18, sub_1C9A1C178, v19, sub_1C9A1BFF8, v20);

  return 1;
}

+ (id)createMultiArrayContainingPreciseTimeRangeOfAudioFile:(id)file timeRange:(id *)range maxFramesPerBuffer:(unsigned int)buffer recycleBuffers:(BOOL)buffers prefixBufferPopulator:(id)populator suffixBufferPopulator:(id)bufferPopulator numDimensions:(int64_t)dimensions error:(id *)self0
{
  var3 = range->var1.var3;
  v23[0] = *&range->var0.var0;
  v23[1] = *&range->var0.var3;
  v24 = *&range->var1.var1;
  v25 = var3;
  v15 = _Block_copy(populator);
  v16 = _Block_copy(bufferPopulator);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  swift_getObjCClassMetadata();
  fileCopy = file;
  sub_1C9A1A18C(fileCopy, v23, buffer, buffers, sub_1C9A1BFF8, v17, sub_1C9A1C178, v18, dimensions);
  v21 = v20;

  return v21;
}

+ (id)loadModelAtURL:(id)l withTimeout:(double)timeout error:(id *)error
{
  v6 = sub_1C9A91558();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9A914F8();
  v10 = sub_1C9A1A82C(v9, timeout);
  (*(v7 + 8))(v9, v6);

  return v10;
}

@end