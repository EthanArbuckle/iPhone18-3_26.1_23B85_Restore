@interface BALibraryItemTypeData
- (BALibraryItemTypeData)init;
- (BALibraryItemTypeData)initWithContentPrivateID:(id)d contentUserID:(id)iD contentType:(int64_t)type contentID:(id)contentID isSample:(id)sample;
@end

@implementation BALibraryItemTypeData

- (BALibraryItemTypeData)initWithContentPrivateID:(id)d contentUserID:(id)iD contentType:(int64_t)type contentID:(id)contentID isSample:(id)sample
{
  v10 = sub_1E1780();
  v12 = v11;
  v13 = sub_1E1780();
  v15 = v14;
  v16 = sub_1E1780();
  v17 = (self + OBJC_IVAR___BALibraryItemTypeData_contentPrivateID);
  *v17 = v10;
  v17[1] = v12;
  v18 = (self + OBJC_IVAR___BALibraryItemTypeData_contentUserID);
  *v18 = v13;
  v18[1] = v15;
  *(&self->super.isa + OBJC_IVAR___BALibraryItemTypeData_contentType) = type;
  v19 = (self + OBJC_IVAR___BALibraryItemTypeData_contentID);
  *v19 = v16;
  v19[1] = v20;
  *(&self->super.isa + OBJC_IVAR___BALibraryItemTypeData_isSample) = sample;
  v23.receiver = self;
  v23.super_class = type metadata accessor for BridgedLibraryItemTypeData();
  sampleCopy = sample;
  return [(BALibraryItemTypeData *)&v23 init];
}

- (BALibraryItemTypeData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end