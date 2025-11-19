@interface ICArchiveExporter
+ (ICArchiveExporter)exporterForHandoffToPages;
+ (ICArchiveExporter)exporterForMarkdown;
- (BOOL)removeArchiveAt:(id)a3 error:(id *)a4;
- (id)createArchiveForObjects:(id)a3 progress:(id)a4 error:(id *)a5;
@end

@implementation ICArchiveExporter

+ (ICArchiveExporter)exporterForHandoffToPages
{
  sub_10001C5F0();

  return v2;
}

+ (ICArchiveExporter)exporterForMarkdown
{
  sub_10001C720();

  return v2;
}

- (id)createArchiveForObjects:(id)a3 progress:(id)a4 error:(id *)a5
{
  v7 = sub_1000847C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008250(0, &qword_1000A54A8, ICCloudSyncingObject_ptr);
  v12 = sub_100085208();
  v13 = a4;
  v14 = self;
  sub_10001B668(v12, v13, v11);

  sub_1000846F8(v15);
  v17 = v16;
  (*(v8 + 8))(v11, v7);

  return v17;
}

- (BOOL)removeArchiveAt:(id)a3 error:(id *)a4
{
  v5 = sub_1000847C8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100084768();
  v10 = *(&self->super.isa + OBJC_IVAR___ICArchiveExporter_exporter);
  v11 = self;
  sub_100069D50(v9);
  (*(v6 + 8))(v9, v5);

  return 1;
}

@end