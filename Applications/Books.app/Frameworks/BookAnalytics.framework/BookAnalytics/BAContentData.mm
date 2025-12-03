@interface BAContentData
- (BAContentData)init;
- (BAContentData)initWithContentID:(id)d contentType:(int64_t)type contentPrivateID:(id)iD contentUserID:(id)userID contentAcquisitionType:(int64_t)acquisitionType contentSubType:(id)subType contentLength:(id)length supplementalContentCount:(id)self0 seriesType:(int64_t)self1 productionType:(int64_t)self2 isUnified:(id)self3 contentKind:(id)self4;
@end

@implementation BAContentData

- (BAContentData)initWithContentID:(id)d contentType:(int64_t)type contentPrivateID:(id)iD contentUserID:(id)userID contentAcquisitionType:(int64_t)acquisitionType contentSubType:(id)subType contentLength:(id)length supplementalContentCount:(id)self0 seriesType:(int64_t)self1 productionType:(int64_t)self2 isUnified:(id)self3 contentKind:(id)self4
{
  kindCopy = kind;
  v16 = sub_1E1780();
  v34 = v17;
  v35 = v16;
  v18 = sub_1E1780();
  v32 = v19;
  v33 = v18;
  v20 = sub_1E1780();
  v30 = v21;
  v31 = v20;
  if (kind)
  {
    kindCopy = sub_1E1780();
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  subTypeCopy = subType;
  lengthCopy = length;
  countCopy = count;
  unifiedCopy = unified;
  v28 = sub_A8474(v35, v34, type, v33, v32, v31, v30, acquisitionType, subType, length, count, seriesType, productionType, unified, kindCopy, v23);

  return v28;
}

- (BAContentData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end