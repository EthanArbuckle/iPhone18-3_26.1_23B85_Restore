@interface ICArchiveExporter
+ (ICArchiveExporter)exporterForHandoffToPages;
+ (ICArchiveExporter)exporterForMarkdown;
- (BOOL)removeArchiveAt:(id)a3 error:(id *)a4;
- (id)createArchiveForObjects:(id)a3 progress:(id)a4 error:(id *)a5;
@end

@implementation ICArchiveExporter

+ (ICArchiveExporter)exporterForHandoffToPages
{
  sub_100088D54();

  return v2;
}

+ (ICArchiveExporter)exporterForMarkdown
{
  sub_100088E84();

  return v2;
}

- (id)createArchiveForObjects:(id)a3 progress:(id)a4 error:(id *)a5
{
  v7 = sub_1000B4DB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000362AC(0, &qword_100106C00, ICCloudSyncingObject_ptr);
  v12 = sub_1000B57A0();
  v13 = a4;
  v14 = self;
  sub_1000838B8(v12, v13, v11);

  sub_1000B4CF0(v15);
  v17 = v16;
  (*(v8 + 8))(v11, v7);

  return v17;
}

- (BOOL)removeArchiveAt:(id)a3 error:(id *)a4
{
  v5 = sub_1000B4DB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000B4D50();
  v10 = *(&self->super.isa + OBJC_IVAR___ICArchiveExporter_exporter);
  v11 = self;
  sub_100073430(v9);
  (*(v6 + 8))(v9, v5);

  return 1;
}

@end