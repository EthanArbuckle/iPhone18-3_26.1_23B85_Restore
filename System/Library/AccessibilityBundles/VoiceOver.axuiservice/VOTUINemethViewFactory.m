@interface VOTUINemethViewFactory
+ (id)createSwiftUIViewWithDismissAction:(id)a3 setBrailleUnicodeTable:(id)a4 unsetBrailleUnicodeTable:(id)a5;
- (VOTUINemethViewFactory)init;
@end

@implementation VOTUINemethViewFactory

+ (id)createSwiftUIViewWithDismissAction:(id)a3 setBrailleUnicodeTable:(id)a4 unsetBrailleUnicodeTable:(id)a5
{
  v8 = type metadata accessor for VOTUINemethView();
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a3);
  v13 = _Block_copy(a4);
  v14 = _Block_copy(a5);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  v18 = objc_allocWithZone(type metadata accessor for VOTUINemethVC());

  sub_18444(sub_21D4C, v15, sub_21D4C, v16, sub_21D4C, v17, v11);
  v19 = sub_25F1C();

  return v19;
}

- (VOTUINemethViewFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VOTUINemethViewFactory();
  return [(VOTUINemethViewFactory *)&v3 init];
}

@end