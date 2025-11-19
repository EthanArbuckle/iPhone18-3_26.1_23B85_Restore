@interface AccountButton
- (CGSize)intrinsicContentSize;
- (void)dealloc;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation AccountButton

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = qword_DE67A8;
  v5 = self;
  if (v4 != -1)
  {
    v8 = v5;
    swift_once();
    v5 = v8;
  }

  v6 = qword_E70D38;
  v10 = xmmword_AF82C0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v7 = v5;
  sub_405000(&v10, v7, v6);

  v9.receiver = v7;
  v9.super_class = ObjectType;
  [(AccountButton *)&v9 dealloc];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_8EDB0(a3);
}

- (CGSize)intrinsicContentSize
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicApplication13AccountButton_size);
  v3 = *&self->delegate[OBJC_IVAR____TtC16MusicApplication13AccountButton_size];
  result.height = v3;
  result.width = v2;
  return result;
}

@end