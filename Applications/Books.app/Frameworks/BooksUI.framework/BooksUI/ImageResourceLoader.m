@interface ImageResourceLoader
- (void)imageResourceDidChangeImage:(id)a3;
@end

@implementation ImageResourceLoader

- (void)imageResourceDidChangeImage:(id)a3
{
  v5 = sub_2EF0(&qword_316408, &qword_26DE30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  swift_unknownObjectRetain();

  v9 = [a3 image];
  v10 = sub_264770();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_264750();
  swift_unknownObjectRetain();

  v11 = v9;
  v12 = sub_264740();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = a3;
  v13[5] = self;
  v13[6] = v9;
  sub_182AE4(0, 0, v8, &unk_26DE40, v13);

  swift_unknownObjectRelease();
}

@end