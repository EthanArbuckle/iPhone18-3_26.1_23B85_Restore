@interface VoiceOverCursorOutputController
- (VoiceOverCursorOutputController)initWithCoder:(id)a3;
- (VoiceOverCursorOutputController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)specifiers;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
@end

@implementation VoiceOverCursorOutputController

- (id)specifiers
{
  v2 = self;
  v3 = VoiceOverCursorOutputController.specifiers()();

  if (v3)
  {
    v4.super.isa = sub_19C094().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_19AF24();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19AF14();
  v10 = a3;
  v11 = self;
  VoiceOverCursorOutputController.tableView(_:didSelectRowAt:)(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = sub_19AF24();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19AF14();
  v12 = a3;
  v13 = a4;
  v14 = self;
  sub_1820D8(v13);

  (*(v9 + 8))(v11, v8);
}

- (VoiceOverCursorOutputController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_19BFE4();
    v8 = a4;
    a3 = sub_19BFB4();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(VoiceOverCursorOutputController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (VoiceOverCursorOutputController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(VoiceOverCursorOutputController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end