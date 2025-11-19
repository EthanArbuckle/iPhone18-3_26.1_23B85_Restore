@interface CRSettingsHeaderCell
- (_TtC14CarKitSettings20CRSettingsHeaderCell)initWithCoder:(id)a3;
- (_TtC14CarKitSettings20CRSettingsHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC14CarKitSettings20CRSettingsHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
@end

@implementation CRSettingsHeaderCell

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_14628(&qword_7C338, qword_54370);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16[-1] - v7;
  v9 = sub_4A99C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4A98C();
  sub_461A4();
  v14 = self;
  sub_4AF0C();
  sub_4AFFC();
  v16[3] = v4;
  v16[4] = sub_2C958(&qword_7C340, &qword_7C338, qword_54370);
  sub_2B2C0(v16);
  sub_4AEFC();
  (*(v5 + 8))(v8, v4);
  sub_4B81C();
  [(CRSettingsHeaderCell *)v14 setSelectionStyle:0];

  (*(v10 + 8))(v13, v9);
}

- (_TtC14CarKitSettings20CRSettingsHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  if (a4)
  {
    v7 = sub_4B5FC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a5;
  return CRSettingsHeaderCell.init(style:reuseIdentifier:specifier:)(a3, v7, v9, a5);
}

- (_TtC14CarKitSettings20CRSettingsHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    sub_4B5FC();
    a4 = sub_4B5EC();
  }

  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(CRSettingsHeaderCell *)&v10 initWithStyle:a3 reuseIdentifier:a4];

  return v8;
}

- (_TtC14CarKitSettings20CRSettingsHeaderCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(CRSettingsHeaderCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end