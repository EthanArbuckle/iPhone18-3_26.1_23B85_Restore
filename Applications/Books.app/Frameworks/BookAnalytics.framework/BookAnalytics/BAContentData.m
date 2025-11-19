@interface BAContentData
- (BAContentData)init;
- (BAContentData)initWithContentID:(id)a3 contentType:(int64_t)a4 contentPrivateID:(id)a5 contentUserID:(id)a6 contentAcquisitionType:(int64_t)a7 contentSubType:(id)a8 contentLength:(id)a9 supplementalContentCount:(id)a10 seriesType:(int64_t)a11 productionType:(int64_t)a12 isUnified:(id)a13 contentKind:(id)a14;
@end

@implementation BAContentData

- (BAContentData)initWithContentID:(id)a3 contentType:(int64_t)a4 contentPrivateID:(id)a5 contentUserID:(id)a6 contentAcquisitionType:(int64_t)a7 contentSubType:(id)a8 contentLength:(id)a9 supplementalContentCount:(id)a10 seriesType:(int64_t)a11 productionType:(int64_t)a12 isUnified:(id)a13 contentKind:(id)a14
{
  v15 = a14;
  v16 = sub_1E1780();
  v34 = v17;
  v35 = v16;
  v18 = sub_1E1780();
  v32 = v19;
  v33 = v18;
  v20 = sub_1E1780();
  v30 = v21;
  v31 = v20;
  if (a14)
  {
    v15 = sub_1E1780();
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = a8;
  v25 = a9;
  v26 = a10;
  v27 = a13;
  v28 = sub_A8474(v35, v34, a4, v33, v32, v31, v30, a7, a8, a9, a10, a11, a12, a13, v15, v23);

  return v28;
}

- (BAContentData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end