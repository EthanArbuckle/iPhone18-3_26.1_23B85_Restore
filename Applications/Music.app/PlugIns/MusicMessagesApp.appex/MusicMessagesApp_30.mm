uint64_t sub_1002EA57C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100644A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002EA5EC(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100644A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1002EA654(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 != 1)
  {
  }
}

id sub_1002EA664(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (result)
  {
    v8 = result;
    v7 = a7;

    return v8;
  }

  return result;
}

id sub_1002EA6D0(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_1002EB3A0();
    v5 = 1.0;
    v6 = 250;
    if (v4 == 1)
    {
      v7 = 88;
      v8 = 106;
    }

    else
    {
      v7 = 45;
      v8 = 72;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_1002EB3A0();
      v5 = 1.0;
      v6 = 204;
      v7 = 0;
      v8 = 20;
    }

    else
    {
      sub_1002EB3A0();
      v5 = 1.0;
      v6 = 250;
      v7 = 35;
      v8 = 59;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = sub_1004DECCC();
  __break(1u);
  return result;
}

uint64_t *UIColor.MusicTint.normal.unsafeMutableAddressor()
{
  if (qword_10063D810 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.normal;
}

id sub_1002EA894(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_1002EB3A0();
    v5 = 1.0;
    v6 = 255;
    if (v4 == 1)
    {
      v7 = 138;
      v8 = 156;
    }

    else
    {
      v7 = 95;
      v8 = 122;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_1002EB3A0();
      v5 = 1.0;
      v6 = 162;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      sub_1002EB3A0();
      v5 = 1.0;
      v6 = 198;
      v7 = 0;
      v8 = 7;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = sub_1004DECCC();
  __break(1u);
  return result;
}

void *UIColor.MusicTint.rollover.unsafeMutableAddressor()
{
  if (qword_10063D818 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.rollover;
}

id sub_1002EAA58(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_1002EB3A0();
    v5 = 1.0;
    v6 = 255;
    if (v4 == 1)
    {
      v7 = 113;
      v8 = 131;
    }

    else
    {
      v7 = 70;
      v8 = 97;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_1002EB3A0();
      v5 = 1.0;
      v6 = 187;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      sub_1002EB3A0();
      v5 = 1.0;
      v6 = 224;
      v7 = 9;
      v8 = 33;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = sub_1004DECCC();
  __break(1u);
  return result;
}

uint64_t *UIColor.MusicTint.pressed.unsafeMutableAddressor()
{
  if (qword_10063D820 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.pressed;
}

id sub_1002EAC1C(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_1002EB3A0();
    v5 = 1.0;
    v6 = 255;
    if (v4 == 1)
    {
      v7 = 138;
      v8 = 156;
    }

    else
    {
      v7 = 95;
      v8 = 122;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_1002EB3A0();
      v5 = 1.0;
      v6 = 162;
      v7 = 0;
      v8 = 0;
    }

    else
    {
      sub_1002EB3A0();
      v5 = 1.0;
      v6 = 198;
      v7 = 0;
      v8 = 7;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v6, v7, v8, v5);
  }

  result = sub_1004DECCC();
  __break(1u);
  return result;
}

void *UIColor.MusicTint.deepPressed.unsafeMutableAddressor()
{
  if (qword_10063D828 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.deepPressed;
}

id sub_1002EADE0(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
    goto LABEL_6;
  }

  if (v2 == 2)
  {
    v4 = v3;
    sub_1002EB3A0();
    v5 = 250;
    if (v4 == 1)
    {
      v6 = 88;
      v7 = 106;
    }

    else
    {
      v6 = 45;
      v7 = 72;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v5, v6, v7, 0.35);
  }

  if (v2 == 1)
  {
LABEL_6:
    if (v3 == 1)
    {
      sub_1002EB3A0();
      v5 = 214;
      v6 = 0;
      v7 = 23;
    }

    else
    {
      sub_1002EB3A0();
      v5 = 250;
      v6 = 35;
      v7 = 59;
    }

    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v5, v6, v7, 0.35);
  }

  result = sub_1004DECCC();
  __break(1u);
  return result;
}

void *UIColor.MusicTint.disabled.unsafeMutableAddressor()
{
  if (qword_10063D830 != -1)
  {
    swift_once();
  }

  return &static UIColor.MusicTint.disabled;
}

uint64_t *Color.MusicTint.normal.unsafeMutableAddressor()
{
  if (qword_10063D838 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.normal;
}

uint64_t *Color.MusicTint.rollover.unsafeMutableAddressor()
{
  if (qword_10063D840 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.rollover;
}

uint64_t *Color.MusicTint.pressed.unsafeMutableAddressor()
{
  if (qword_10063D848 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.pressed;
}

uint64_t *Color.MusicTint.deepPressed.unsafeMutableAddressor()
{
  if (qword_10063D850 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.deepPressed;
}

uint64_t sub_1002EB240(uint64_t a1, void *a2, id *a3, uint64_t *a4)
{
  if (*a2 != -1)
  {
    v7 = a3;
    swift_once();
    a3 = v7;
  }

  v5 = *a3;
  result = sub_1004DB8CC();
  *a4 = result;
  return result;
}

uint64_t *Color.MusicTint.disabled.unsafeMutableAddressor()
{
  if (qword_10063D858 != -1)
  {
    swift_once();
  }

  return &static Color.MusicTint.disabled;
}

uint64_t sub_1002EB308(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1002EB388(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1002EB3A0()
{
  result = qword_100641C80;
  if (!qword_100641C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100641C80);
  }

  return result;
}

UITraitCollection __swiftcall UITraitCollection.init(mediaLibrary:)(MPMediaLibrary_optional mediaLibrary)
{
  isa = mediaLibrary.value.super.isa;
  sub_100004CB8(&qword_100642970);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100511AB0;
  v3 = objc_opt_self();
  v4 = isa;
  v5 = sub_1004DD3FC();
  v6 = [v3 _traitCollectionWithValue:v4 forTraitNamed:v5];

  if (v6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v2 + 32) = v6;
    sub_100006F10(0, &unk_100644E00);
    v9 = sub_1004DD85C().super.isa;

    v10 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:v9];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id UITraitCollection.mediaLibrary.getter()
{
  v1 = sub_1004DD3FC();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100006F10(0, &qword_10063E8D0);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1002DFAAC(v7);
  }

  result = [objc_opt_self() deviceMediaLibrary];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

UITraitCollection __swiftcall UITraitCollection.init(legacyLibraryFilter:)(__C::MPMediaLibraryFilteringOptions legacyLibraryFilter)
{
  sub_100004CB8(&qword_100642970);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100511AB0;
  v3 = objc_opt_self();
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:legacyLibraryFilter.rawValue];
  v5 = sub_1004DD3FC();
  v6 = [v3 _traitCollectionWithValue:v4 forTraitNamed:v5];

  if (v6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v2 + 32) = v6;
    sub_100006F10(0, &unk_100644E00);
    isa = sub_1004DD85C().super.isa;

    v10 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:isa];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__C::MPMediaLibraryFilteringOptions UITraitCollection.legacyLibraryFilter.getter()
{
  v1 = sub_1004DD3FC();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100006F10(0, &qword_100640D40);
    if (swift_dynamicCast())
    {
      v3.value.super.super.isa = v5;
    }

    else
    {
      v3.value.super.super.isa = 0;
    }
  }

  else
  {
    sub_1002DFAAC(v8);
    v3.value.super.super.isa = 0;
  }

  return MPMediaLibraryFilteringOptions.init(_:)(v3);
}

BOOL UITraitCollection.isMediaPicker.getter()
{
  v0 = UITraitCollection.mediaPickerConfiguration.getter();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

uint64_t UITraitCollection.mediaPickerConfiguration.getter()
{
  v1 = sub_1004DD3FC();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100006F10(0, &qword_10063E8D8);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1002DFAAC(v7);
    return 0;
  }
}

uint64_t UITraitCollection.init(mediaPickerConfiguration:)(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = sub_1004DD3FC();
  v5 = [v2 _traitCollectionWithValue:v3 forTraitNamed:v4];

  if (v5)
  {
    v6.rawValue = *MPMediaLibraryFilteringOptions.none.unsafeMutableAddressor();
    if (![v3 showsItemsWithProtectedAssets])
    {
      v6.rawValue |= 0x20;
    }

    if (![v3 showsCloudItems])
    {
      v6.rawValue |= 2;
    }

    sub_100006F10(0, &unk_100644E00);
    isa = UITraitCollection.init(mediaPickerLibraryFilter:)(v6).super.isa;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_100004CB8(&qword_100642970);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100511A20;
    *(v9 + 32) = v5;
    *(v9 + 40) = isa;
    v10 = v5;
    v11 = isa;
    v12 = sub_1004DD85C().super.isa;

    v13 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:v12];

    return v13;
  }

  else
  {
    result = sub_1004DECCC();
    __break(1u);
  }

  return result;
}

UITraitCollection __swiftcall UITraitCollection.init(mediaPickerLibraryFilter:)(__C::MPMediaLibraryFilteringOptions mediaPickerLibraryFilter)
{
  sub_100004CB8(&qword_100642970);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100511AB0;
  v3 = objc_opt_self();
  v4 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:mediaPickerLibraryFilter.rawValue];
  v5 = sub_1004DD3FC();
  v6 = [v3 _traitCollectionWithValue:v4 forTraitNamed:v5];

  if (v6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v2 + 32) = v6;
    sub_100006F10(0, &unk_100644E00);
    isa = sub_1004DD85C().super.isa;

    v10 = [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:isa];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__C::MPMediaLibraryFilteringOptions UITraitCollection.mediaPickerLibraryFilter.getter()
{
  v1 = sub_1004DD3FC();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100006F10(0, &qword_100640D40);
    if (swift_dynamicCast())
    {
      v3.value.super.super.isa = v5;
    }

    else
    {
      v3.value.super.super.isa = 0;
    }
  }

  else
  {
    sub_1002DFAAC(v8);
    v3.value.super.super.isa = 0;
  }

  return MPMediaLibraryFilteringOptions.init(_:)(v3);
}

uint64_t UITraitCollection.configure<A, B>(libraryRequest:)(void *a1)
{
  v2 = [a1 mediaLibrary];
  v3 = UITraitCollection.mediaLibrary.getter();
  v4 = v3;
  if (v2)
  {
    sub_100006F10(0, &qword_10063E8D0);
    v5 = sub_1004DE5FC();

    if (v5)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = UITraitCollection.mediaLibrary.getter();
  [a1 setMediaLibrary:v7];

  v6 = 1;
LABEL_6:
  v8 = [a1 filteringOptions];
  rawValue = UITraitCollection.legacyLibraryFilter.getter().rawValue;
  if (((UITraitCollection.mediaPickerLibraryFilter.getter().rawValue | rawValue) & ~v8) != 0)
  {
    v10 = UITraitCollection.legacyLibraryFilter.getter().rawValue;
    [a1 setFilteringOptions:{UITraitCollection.mediaPickerLibraryFilter.getter().rawValue | v10 | objc_msgSend(a1, "filteringOptions")}];
    return 1;
  }

  return v6;
}

UIMenu static UIMenu.lazy(title:image:options:cached:childrenProvider:)(uint64_t a1, void *a2, void *a3, NSString *a4, char a5, uint64_t a6, uint64_t a7)
{
  sub_100004CB8(&qword_100642970);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100511AB0;
  if (a5)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a6;
    *(v15 + 24) = a7;
    v31 = sub_1002EC364;
    v32 = v15;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1002EC23C;
    v30 = &unk_1005ED030;
    v16 = _Block_copy(&aBlock);
    v17 = objc_opt_self();

    v18 = [v17 elementWithProvider:v16];
    _Block_release(v16);
  }

  else
  {
    v19 = objc_opt_self();
    v20 = swift_allocObject();
    *(v20 + 16) = a6;
    *(v20 + 24) = a7;
    v31 = sub_1002F2408;
    v32 = v20;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1002EC23C;
    v30 = &unk_1005ECFE0;
    v21 = _Block_copy(&aBlock);

    v18 = [v19 elementWithUncachedProvider:v21];
    _Block_release(v21);
  }

  *(v14 + 32) = v18;
  if (a2)
  {
    v22 = a2;
  }

  else
  {
    a1 = 0;
    v22 = 0xE000000000000000;
  }

  sub_100006F10(0, &qword_10063E8E8);
  v23 = a3;

  v34._countAndFlagsBits = a1;
  v34._object = v22;
  v35.value._countAndFlagsBits = 0;
  v35.value._object = 0;
  v33.value.super.isa = a3;
  v33.is_nil = 0;
  v24.value = a4;
  return sub_1004DE4AC(v34, v35, v33, v24, 0xFFFFFFFFFFFFFFFFLL, v14, v26);
}

uint64_t sub_1002EC204()
{

  return swift_deallocObject();
}

uint64_t sub_1002EC23C(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1002F2340, v4);
}

uint64_t sub_1002EC2D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1002EC2E8(uint64_t a1, uint64_t a2)
{
  sub_100006F10(0, &qword_100644F70);
  isa = sub_1004DD85C().super.isa;
  (*(a2 + 16))(a2, isa);
}

UIMenu __swiftcall UIMenu.init(representativeOf:title:image:options:)(Swift::OpaquePointer representativeOf, Swift::String_optional title, UIImage_optional image, UIMenuOptions options)
{
  v4 = *&image.is_nil;
  isa = image.value.super.isa;
  if (title.value._object)
  {
    countAndFlagsBits = title.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (title.value._object)
  {
    object = title.value._object;
  }

  else
  {
    object = 0xE000000000000000;
  }

  sub_100004CB8(&qword_100642970);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100511AB0;
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  v11[2]._rawValue = representativeOf._rawValue;
  v11[3]._rawValue = v4;
  aBlock[4] = sub_1002EC620;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002EC23C;
  aBlock[3] = &unk_1005ED080;
  v12 = _Block_copy(aBlock);

  v13 = [v10 elementWithUncachedProvider:v12];
  _Block_release(v12);
  *(v9 + 32) = v13;
  v19._countAndFlagsBits = countAndFlagsBits;
  v19._object = object;
  v20.value._countAndFlagsBits = 0;
  v20.value._object = 0;
  v18.value.super.isa = isa;
  v18.is_nil = 0;
  v14.value = v4;
  return sub_1004DE4AC(v19, v20, v18, v14, 0xFFFFFFFFFFFFFFFFLL, v9, v16);
}

uint64_t sub_1002EC4D8(void (*a1)(void *), uint64_t a2, unint64_t a3, NSString *a4)
{
  v16 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004DED5C())
  {
    v7 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v8 = sub_1004DEB2C();
      }

      else
      {
        if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(a3 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v15 = v8;
      sub_1002EC628(&v16, &v15, a4, &v14);

      v11 = v14;
      v16 = v14;
      ++v7;
      if (v10 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_15:
  a1(v11);
}

uint64_t sub_1002EC628@<X0>(uint64_t *a1@<X0>, id *a2@<X1>, NSString *a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  if ([*a2 isHidden])
  {
    *a4 = v6;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v10 = (v9 + 16);

  v11 = [v7 menuRepresentation];
  if (v11)
  {
    v12 = v11;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    v14 = v12;
    if (v13)
    {
      sub_1002ECB40(v13, a3, v9, v7);
    }

    else
    {
      sub_1004DD84C();
      if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004DD8BC();
      }

      sub_1004DD90C();
    }

    goto LABEL_26;
  }

  v15 = [v7 menu];
  if (!v15)
  {
    v17 = [v7 primaryAction];
    if (v17 && (v18 = v17, [v17 copy], v18, sub_1004DE8DC(), swift_unknownObjectRelease(), sub_100006F10(0, &qword_10063E980), (swift_dynamicCast() & 1) != 0))
    {
      v19 = v36;
    }

    else
    {
      v20 = v7;
      v21 = [v20 target];
      v22 = [v20 action];
      if (!v21)
      {

        goto LABEL_26;
      }

      v23 = v22;
      if (!v22)
      {

        swift_unknownObjectRelease();
        goto LABEL_26;
      }

      sub_100006F10(0, &qword_10063E980);
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = v23;

      v26 = sub_1004DE62C();

      swift_unknownObjectRelease();
      v19 = v26;
      v27 = [v20 title];
      if (v27)
      {
        v28 = v27;
        sub_1004DD43C();
      }

      v29 = sub_1004DD3FC();

      [v19 setTitle:v29];

      v30 = [v20 image];
      [v19 setImage:v30];
    }

    v31 = [v7 title];
    if (v31)
    {
      v32 = v31;
      sub_1004DD43C();
    }

    v33 = sub_1004DD3FC();

    [v19 setTitle:v33];

    v34 = [v7 image];
    [v19 setImage:v34];

    v35 = v19;
    sub_1004DD84C();
    if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1004DD8BC();
    }

    sub_1004DD90C();

    goto LABEL_26;
  }

  v16 = v15;
  sub_1002ECB40(v15, a3, v9, v7);

LABEL_26:
  swift_beginAccess();
  *a4 = *(v9 + 16);
}

uint64_t sub_1002ECB40(id a1, NSString *a2, uint64_t a3, void *a4)
{
  if ((a2 & 1) == 0)
  {
    v8 = [a1 title];
    v9 = sub_1004DD43C();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      goto LABEL_7;
    }

    v13 = [a1 image];
    if (v13)
    {

LABEL_7:
      swift_beginAccess();
      v14 = a1;
      goto LABEL_17;
    }
  }

  v15 = [a1 title];
  v16 = sub_1004DD43C();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

    v20 = [a4 title];
    if (v20)
    {
      v21 = v20;
      v16 = sub_1004DD43C();
      v18 = v22;
    }

    else
    {
      v16 = 0;
      v18 = 0xE000000000000000;
    }
  }

  v23 = [a1 image];
  if (!v23)
  {
    v23 = [a4 image];
  }

  sub_100006F10(0, &qword_10063E8E8);
  v24 = [a1 children];
  sub_100006F10(0, &qword_100644F70);
  v25 = sub_1004DD87C();

  v30._countAndFlagsBits = v16;
  v30._object = v18;
  v31.value._countAndFlagsBits = 0;
  v31.value._object = 0;
  v29.value.super.isa = v23;
  v29.is_nil = 0;
  v26.value = a2;
  sub_1004DE4AC(v30, v31, v29, v26, 0xFFFFFFFFFFFFFFFFLL, v25, v28);
  swift_beginAccess();
LABEL_17:
  sub_1004DD84C();
  if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004DD8BC();
  }

  sub_1004DD90C();
  return swift_endAccess();
}

UIAction_optional __swiftcall UIAction.init(barButtonItem:)(UIBarButtonItem barButtonItem)
{
  v2 = [(objc_class *)barButtonItem.super.super.isa target];
  v3 = [(objc_class *)barButtonItem.super.super.isa action];
  if (!v2)
  {

LABEL_7:
    v8 = 0;
    goto LABEL_9;
  }

  v4 = v3;
  if (!v3)
  {

    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;

  v7 = sub_1004DE62C();

  swift_unknownObjectRelease();
  v8 = v7;
  v9 = [(objc_class *)barButtonItem.super.super.isa title:0];
  if (v9)
  {
    v10 = v9;
    sub_1004DD43C();
  }

  v12 = sub_1004DD3FC();

  [v8 setTitle:v12];

  v13 = [(objc_class *)barButtonItem.super.super.isa image];
  [v8 setImage:v13];

LABEL_9:
  v14 = v8;
  result.value.super.super.isa = v14;
  result.is_nil = v11;
  return result;
}

void *UINavigationItem.effectiveTrailingBarButtonItems.getter()
{
  v0 = UINavigationItem.allTrailingBarButtonItems.getter();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004DED5C())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = sub_1004DEB2C();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v4 isHidden])
      {
      }

      else
      {
        sub_1004DEB9C();
        sub_1004DEBDC();
        sub_1004DEBEC();
        sub_1004DEBAC();
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

unint64_t UINavigationItem.allTrailingBarButtonItems.getter()
{
  v1 = [v0 trailingItemGroups];
  sub_100006F10(0, &qword_10063E8F0);
  v2 = sub_1004DD87C();

  v44 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004DED5C())
  {
    v4 = 0;
    v38 = v2 & 0xFFFFFFFFFFFFFF8;
    v39 = v2 & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v37 = v2 + 32;
    v2 = &unk_100529AD8;
    v35 = i;
    while (1)
    {
      if (v39)
      {
        v6 = sub_1004DEB2C();
      }

      else
      {
        if (v4 >= *(v38 + 16))
        {
          goto LABEL_45;
        }

        v6 = *(v37 + 8 * v4);
      }

      v7 = v6;
      v8 = __OFADD__(v4++, 1);
      if (v8)
      {
        break;
      }

      v9 = [v6 representativeItem];
      if (v9)
      {
        v10 = v9;
        sub_1004DD84C();
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1004DD8BC();
        }

        sub_1004DD90C();

        v5 = v44;
      }

      v11 = [v7 barButtonItems];
      sub_100006F10(0, &qword_10063E8F8);
      v12 = sub_1004DD87C();

      v13 = v12 >> 62;
      if (v12 >> 62)
      {
        v14 = sub_1004DED5C();
      }

      else
      {
        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v5 >> 62;
      if (v5 >> 62)
      {
        v16 = sub_1004DED5C();
      }

      else
      {
        v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v42 = v14;
      v8 = __OFADD__(v16, v14);
      v17 = v16 + v14;
      if (v8)
      {
        goto LABEL_46;
      }

      v40 = v7;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_25:
        sub_1004DED5C();
        goto LABEL_26;
      }

      if (v15)
      {
        goto LABEL_25;
      }

      v18 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v17 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v41 = v5;
        goto LABEL_27;
      }

LABEL_26:
      v41 = sub_1004DEB3C();
      v18 = v41 & 0xFFFFFFFFFFFFFF8;
LABEL_27:
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v13)
      {
        v21 = sub_1004DED5C();
        if (v21)
        {
LABEL_31:
          if (((v20 >> 1) - v19) < v42)
          {
            goto LABEL_48;
          }

          v22 = v18 + 8 * v19 + 32;
          v36 = v18;
          if (v13)
          {
            if (v21 < 1)
            {
              goto LABEL_50;
            }

            sub_1002F12E4();
            for (j = 0; j != v21; ++j)
            {
              sub_100004CB8(&qword_10063E900);
              v25 = sub_10026FB4C(v43, j, v12);
              v27 = *v26;
              (v25)(v43, 0);
              *(v22 + 8 * j) = v27;
            }

            i = v35;
            v23 = v42;
          }

          else
          {
            v23 = v42;
            swift_arrayInitWithCopy();
          }

          v5 = v41;
          if (v23 > 0)
          {
            v28 = *(v36 + 16);
            v8 = __OFADD__(v28, v23);
            v29 = v28 + v23;
            if (v8)
            {
              goto LABEL_49;
            }

            *(v36 + 16) = v29;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          goto LABEL_31;
        }
      }

      v5 = v41;
      if (v42 > 0)
      {
        goto LABEL_47;
      }

LABEL_5:
      v44 = v5;
      if (v4 == i)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_53:

  v43[0] = v5;
  v30 = [v34 rightBarButtonItems];
  if (v30)
  {
    v31 = v30;
    sub_100006F10(0, &qword_10063E8F8);
    v32 = sub_1004DD87C();

    sub_1002ED6EC(v32);
    return v43[0];
  }

  return v5;
}

uint64_t sub_1002ED5B4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1003E03DC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_100004CB8(&qword_10063DF60);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1002ED6EC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1004DED5C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1004DED5C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1001540D4(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1002F1154(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1002ED7DC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1003E0804(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1004DCDAC();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t static UIBarButtonItem.PrimaryActionKind.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  sub_100006F10(0, &unk_100644F40);
  return sub_1004DE5FC() & 1;
}

uint64_t sub_1002ED970(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  sub_100006F10(0, &unk_100644F40);
  return sub_1004DE5FC() & 1;
}

Class UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, char a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  if (a6)
  {
    v47 = a3;
    v11 = v8;

    v45 = a1;
    v12 = sub_1004DDFFC();
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    sub_100004CB8(&qword_100642970);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100511AB0;
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1002F23E8;
    *(v16 + 24) = v13;
    aBlock[4] = sub_1002F2408;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002EC23C;
    aBlock[3] = &unk_1005ED148;
    v17 = v8;
    v18 = _Block_copy(aBlock);
    v43 = v11;
    v19 = v12;

    v20 = [v15 elementWithUncachedProvider:v18];
    _Block_release(v18);
    *(v14 + 32) = v20;
    if (a2)
    {
      v21 = v45;
    }

    else
    {
      v21 = 0;
    }

    if (a2)
    {
      v22 = a2;
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    sub_100006F10(0, &qword_10063E8E8);
    v23 = v47;
    v56._countAndFlagsBits = v21;
    v56._object = v22;
    v58.value._countAndFlagsBits = 0;
    v58.value._object = 0;
    v53.value.super.isa = a3;
    v53.is_nil = 0;
    v24.value = 0;
    isa = sub_1004DE4AC(v56, v58, v53, v24, 0xFFFFFFFFFFFFFFFFLL, v14, v43).super.super.isa;

    [(objc_class *)v19 setMenuRepresentation:isa];
  }

  else
  {
    v27 = a5;
    v28 = [v27 title];
    v29 = sub_1004DD43C();
    v31 = v30;

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (!v32)
    {
      v33 = v8;

      v34 = sub_1004DD3FC();

      [v27 setTitle:v34];

      v8 = v33;
    }

    v35 = [v27 image];
    if (v35)
    {
    }

    else
    {
      [v27 setImage:a3];
    }

    v36 = v27;
    v57.value._countAndFlagsBits = 0;
    v57.value._object = 0;
    v52.value.super.isa = 0;
    v37 = v8;
    v52.is_nil = v8;
    v54.value.super.super.isa = 0;
    v19 = sub_1004DDFEC(v57, v52, v54, v55).super.super.isa;
    v38 = v19;
    if (!a2)
    {
      v39 = [v36 title];
      sub_1004DD43C();
    }

    v40 = sub_1004DD3FC();

    [(objc_class *)v19 setTitle:v40];

    v41 = a3;
    if (!a3)
    {
      v41 = [v36 image];
    }

    v23 = a3;
    [(objc_class *)v19 setImage:v41];

    [(objc_class *)v19 setMenuRepresentation:v36];
    v17 = v37;
  }

  [(objc_class *)v19 setStyle:a4];
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(a7, a8);

  return v19;
}

UIBarButtonItem __swiftcall UIBarButtonItem.init(representativeOf:title:image:style:menuTitle:accessibilityIdentifier:)(Swift::OpaquePointer representativeOf, Swift::String_optional title, UIImage_optional image, UIBarButtonItemStyle style, Swift::String_optional menuTitle, MusicCore::AccessibilityIdentifier_optional *accessibilityIdentifier)
{
  object = menuTitle.value._object;
  countAndFlagsBits = menuTitle.value._countAndFlagsBits;
  v41 = *&image.is_nil;
  isa = image.value.super.isa;
  v39 = title.value._countAndFlagsBits;
  if (menuTitle.value._countAndFlagsBits)
  {
    goto LABEL_4;
  }

  if (title.value._object)
  {
    v9 = title.value._countAndFlagsBits;
    v10 = title.value._object;

    title.value._object = v10;
    style = v9;
    countAndFlagsBits = v10;
LABEL_4:
    v11 = title.value._object;
    goto LABEL_5;
  }

  v11 = 0;
  style = UIBarButtonItemStylePlain;
  countAndFlagsBits = 0xE000000000000000;
LABEL_5:
  sub_100006F10(0, &qword_10063E8E8);
  sub_100004CB8(&qword_100642970);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100511AB0;
  v38 = objc_opt_self();
  v13 = swift_allocObject();
  v13[2]._rawValue = representativeOf._rawValue;
  v13[3]._rawValue = 1;
  v47 = sub_1002F2370;
  v48 = v13;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_1002EC23C;
  v46 = &unk_1005ED198;
  v14 = _Block_copy(&aBlock);

  v15 = [v38 elementWithUncachedProvider:v14];
  _Block_release(v14);
  *(v12 + 32) = v15;
  v51._countAndFlagsBits = style;
  v51._object = countAndFlagsBits;
  v53.value._countAndFlagsBits = 0;
  v53.value._object = 0;
  v49.value.super.isa = 0;
  v49.is_nil = 0;
  v16.value = 1;
  v17 = sub_1004DE4AC(v51, v53, v49, v16, 0xFFFFFFFFFFFFFFFFLL, v12, v35).super.super.isa;
  v37 = isa;
  v18 = v17;
  v19 = v11;

  v20 = v18;
  v21 = sub_1004DDFFC();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100511AB0;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1002F23E8;
  *(v24 + 24) = v22;
  v47 = sub_1002F2408;
  v48 = v24;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_1002EC23C;
  v46 = &unk_1005ED210;
  v25 = _Block_copy(&aBlock);
  v26 = v20;
  v27 = v21;

  v28 = [v38 elementWithUncachedProvider:v25];
  _Block_release(v25);
  *(v23 + 32) = v28;
  if (v19)
  {
    v29 = v39;
  }

  else
  {
    v29 = 0;
  }

  if (v19)
  {
    v30 = v19;
  }

  else
  {
    v30 = 0xE000000000000000;
  }

  v31 = v37;
  v52._countAndFlagsBits = v29;
  v52._object = v30;
  v54.value._countAndFlagsBits = 0;
  v54.value._object = 0;
  v50.value.super.isa = isa;
  v50.is_nil = 0;
  v32.value = 0;
  v33 = sub_1004DE4AC(v52, v54, v50, v32, 0xFFFFFFFFFFFFFFFFLL, v23, v36.super.super.isa).super.super.isa;

  [v27 setMenuRepresentation:v33];

  [v27 setStyle:v41];
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(object, accessibilityIdentifier);

  return v27;
}

UIBarButtonItem __swiftcall UIBarButtonItem.init(representativeOf:configuredAfter:menuTitle:)(Swift::OpaquePointer representativeOf, UIBarButtonItem configuredAfter, Swift::String_optional menuTitle)
{
  object = menuTitle.value._object;
  countAndFlagsBits = menuTitle.value._countAndFlagsBits;
  v6 = configuredAfter.super.super.isa;
  v7 = [(objc_class *)v6 title];
  if (v7)
  {
    v8 = v7;
    v39 = sub_1004DD43C();
    v10 = v9;
  }

  else
  {
    v39 = 0;
    v10 = 0;
  }

  v36 = [(objc_class *)v6 image];

  v37 = [(objc_class *)v6 style];
  v38 = v6;
  if (!object)
  {
    if (v10)
    {

      countAndFlagsBits = v39;
      object = v10;
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }
  }

  sub_100006F10(0, &qword_10063E8E8);
  sub_100004CB8(&qword_100642970);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100511AB0;
  v35 = objc_opt_self();
  v12 = swift_allocObject();
  v12[2]._rawValue = representativeOf._rawValue;
  v12[3]._rawValue = 1;
  v44 = sub_1002F2370;
  v45 = v12;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_1002EC23C;
  v43 = &unk_1005ED260;
  v13 = _Block_copy(&aBlock);

  v14 = [v35 elementWithUncachedProvider:v13];
  _Block_release(v13);
  *(v11 + 32) = v14;
  v48._countAndFlagsBits = countAndFlagsBits;
  v48._object = object;
  v50.value._countAndFlagsBits = 0;
  v50.value._object = 0;
  v46.value.super.isa = 0;
  v46.is_nil = 0;
  v15.value = 1;
  isa = sub_1004DE4AC(v48, v50, v46, v15, 0xFFFFFFFFFFFFFFFFLL, v11, v32).super.super.isa;

  v17 = isa;
  v34 = v36;
  v18 = v17;
  v19 = sub_1004DDFFC();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100511AB0;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1002F23E8;
  *(v22 + 24) = v20;
  v44 = sub_1002F2408;
  v45 = v22;
  aBlock = _NSConcreteStackBlock;
  v41 = 1107296256;
  v42 = sub_1002EC23C;
  v43 = &unk_1005ED2D8;
  v23 = _Block_copy(&aBlock);
  v24 = v18;
  v25 = v19;

  v26 = [v35 elementWithUncachedProvider:v23];
  _Block_release(v23);
  *(v21 + 32) = v26;
  if (v10)
  {
    v27 = v39;
  }

  else
  {
    v27 = 0;
  }

  if (!v10)
  {
    v10 = 0xE000000000000000;
  }

  v28 = v34;
  v49._countAndFlagsBits = v27;
  v49._object = v10;
  v51.value._countAndFlagsBits = 0;
  v51.value._object = 0;
  v47.value.super.isa = v36;
  v47.is_nil = 0;
  v29.value = 0;
  v30 = sub_1004DE4AC(v49, v51, v47, v29, 0xFFFFFFFFFFFFFFFFLL, v21, v33.super.super.isa).super.super.isa;

  [v25 setMenuRepresentation:v30];

  [v25 setStyle:v37];
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(0, 0);

  return v25;
}

id UIBarButtonItem.primaryActionKind.getter()
{
  result = [v0 primaryAction];
  if (!result)
  {
    return [v0 menu];
  }

  return result;
}

void UIBarButtonItem.primaryActionKind.setter(void *a1, char a2)
{
  v3 = v2;
  v6 = [v2 primaryAction];
  if (v6)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v6 = [v2 menu];
    v9 = v6 == 0;
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v6 = 0;
      v7 = 1;
    }

    if (v9)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }
  }

  if (a2 != -1)
  {
    v71 = v8;
    v70 = v6;
    if (a2)
    {
      v10 = a1;
      [v3 setMenu:v10];
      v11 = [v3 customView];
      if (v11)
      {
        v12 = v11;
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          [v13 setMenu:v10];
          sub_1002D5B38(a1, a2);

LABEL_42:
          [v3 setPrimaryAction:0];
          v41 = [v3 title];
          if (v41)
          {
            v42 = v41;
            v69 = sub_1004DD43C();
            v44 = v43;
          }

          else
          {
            v69 = 0;
            v44 = 0;
          }

          v45 = [v3 image];
          v46 = swift_allocObject();
          *(v46 + 16) = v10;
          sub_100004CB8(&qword_100642970);
          v47 = swift_allocObject();
          *(v47 + 16) = xmmword_100511AB0;
          v48 = objc_opt_self();
          v49 = swift_allocObject();
          *(v49 + 16) = sub_1002F1348;
          *(v49 + 24) = v46;
          aBlock[4] = sub_1002F2408;
          aBlock[5] = v49;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1002EC23C;
          aBlock[3] = &unk_1005ED350;
          v50 = _Block_copy(aBlock);
          sub_1002D5DF0(a1, a2);

          v51 = [v48 elementWithUncachedProvider:v50];
          _Block_release(v50);
          *(v47 + 32) = v51;
          if (v44)
          {
            v52 = v69;
          }

          else
          {
            v52 = 0;
          }

          if (v44)
          {
            v53 = v44;
          }

          else
          {
            v53 = 0xE000000000000000;
          }

          sub_100006F10(0, &qword_10063E8E8);
          v76._countAndFlagsBits = v52;
          v76._object = v53;
          v77.value._countAndFlagsBits = 0;
          v77.value._object = 0;
          v75.value.super.isa = v45;
          v75.is_nil = 0;
          v54.value = 0;
          isa = sub_1004DE4AC(v76, v77, v75, v54, 0xFFFFFFFFFFFFFFFFLL, v47, v67).super.super.isa;

          [v3 setMenuRepresentation:isa];
          sub_1002D5B38(v70, v71);
          sub_1002D5B38(a1, a2);

          goto LABEL_61;
        }
      }

      sub_1002D5B38(a1, a2);
      v33 = [v3 customView];
      if (v33)
      {
        v34 = v33;
        type metadata accessor for SymbolButton(0);
        v35 = swift_dynamicCastClass();
        if (v35)
        {
          v36 = v35;
          v37 = swift_allocObject();
          *(v37 + 16) = v10;
          v38 = (v36 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu);
          swift_beginAccess();
          v39 = *v38;
          *v38 = NowPlaying.TrackMetadata.underlyingItem.getter;
          v38[1] = v37;
          v40 = v10;
          sub_10000DE74(v39);
        }
      }

      goto LABEL_42;
    }

    v68 = v7;
    v16 = [v2 title];
    if (v16)
    {
      v17 = v16;
      sub_1004DD43C();
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [v3 image];
    [v3 setPrimaryAction:a1];
    v21 = [a1 title];
    v22 = sub_1004DD43C();
    v24 = v23;

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {

      v26 = [a1 title];
      sub_1004DD43C();
    }

    else if (!v19)
    {
      v27 = 0;
LABEL_28:
      [v3 setTitle:v27];

      v28 = [a1 image];
      if (!v28)
      {
        v28 = v20;
      }

      [v3 setImage:v28];

      [v3 setMenu:0];
      v29 = [v3 customView];
      if (v29)
      {
        v30 = v29;
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (v31)
        {
          [v31 setMenu:0];

          v32 = v71;
          goto LABEL_57;
        }
      }

      v56 = [v3 customView];
      v32 = v71;
      if (v56)
      {
        v57 = v56;
        type metadata accessor for SymbolButton(0);
        v58 = swift_dynamicCastClass();
        if (v58)
        {
          v59 = (v58 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_buildMenu);
          swift_beginAccess();
          v60 = *v59;
          *v59 = 0;
          v59[1] = 0;
          sub_10000DE74(v60);
        }
      }

LABEL_57:
      if ((v68 & 1) == 0)
      {
        if ((v32 & 1) == 0)
        {
          v63 = [v3 menuRepresentation];
          if (!v63)
          {

            sub_1002D5B38(a1, a2);
            v61 = v70;
            v62 = v32;
            goto LABEL_62;
          }

          v64 = v63;
          sub_100006F10(0, &qword_100644F70);
          v65 = v70;
          v66 = sub_1004DE5FC();

          sub_1002D5B38(v70, v32);
          if (v66)
          {
            [v3 setMenuRepresentation:a1];

            sub_1002D5B38(a1, a2);
            sub_1002D5B38(a1, a2);
            v61 = v70;
            v62 = v32;
            goto LABEL_62;
          }

          sub_1002D5B38(v70, v32);
LABEL_61:
          v61 = a1;
          v62 = a2;
LABEL_62:
          sub_1002D5B38(v61, v62);
          return;
        }

        sub_1002D5B38(v70, v32);
      }

      goto LABEL_61;
    }

    v27 = sub_1004DD3FC();

    goto LABEL_28;
  }

  v14 = v6;
  [v3 setPrimaryAction:0];
  [v3 setMenuRepresentation:0];
  [v3 setMenu:0];
  v72 = [v3 customView];
  if (v72)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      [v15 setMenu:0];
      sub_1002D5B38(v14, v8);

      return;
    }
  }

  sub_1002D5B38(v14, v8);
}

uint64_t sub_1002EEFC0(void *a1)
{
  v1 = [a1 children];
  sub_100006F10(0, &qword_100644F70);
  v2 = sub_1004DD87C();

  return v2;
}

void (*UIBarButtonItem.primaryActionKind.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = [v1 primaryAction];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v3 = [v1 menu];
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = -1;
    }
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  return sub_1002EF0B4;
}

void sub_1002EF0B4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    sub_1002D5DF0(*a1, v3);
    UIBarButtonItem.primaryActionKind.setter(v2, v3);

    sub_1002D5B38(v2, v3);
  }

  else
  {
    UIBarButtonItem.primaryActionKind.setter(*a1, v3);
  }
}

id UIBarButtonItem.plastify()()
{
  [v0 _setPrefersNoPlatter:1];

  return v2;
}

void *UIBarButtonItemGroup.split()()
{
  v1 = [v0 barButtonItems];
  sub_100006F10(0, &qword_10063E8F8);
  v2 = sub_1004DD87C();

  v11 = _swiftEmptyArrayStorage;
  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004DED5C())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_1004DEB2C();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = v5;
      sub_1002EF2F0(&v11, &v10, v0);

      ++v4;
      if (v7 == i)
      {
        v8 = v11;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_15:

  return v8;
}

void sub_1002EF2F0(void *a1, void **a2, void *a3)
{
  v5 = *a2;
  sub_100004CB8(&qword_100642970);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100511AB0;
  *(v6 + 32) = v5;
  v7 = objc_allocWithZone(UIBarButtonItemGroup);
  sub_100006F10(0, &qword_10063E8F8);
  v8 = v5;
  isa = sub_1004DD85C().super.isa;

  [v7 initWithBarButtonItems:isa representativeItem:0];

  sub_1004DD84C();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004DD8BC();
  }

  sub_1004DD90C();
  v10 = v8;
  v11 = [a3 barButtonItems];
  v12 = sub_1004DD87C();

  if (v12 >> 62)
  {
    v13 = sub_1004DED5C();
    if (v13)
    {
LABEL_5:
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v14)
      {
        __break(1u);
      }

      else if ((v12 & 0xC000000000000001) == 0)
      {
        if ((v15 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v15 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v16 = *(v12 + 8 * v15 + 32);
          goto LABEL_10;
        }

        __break(1u);
        return;
      }

      v16 = sub_1004DEB2C();
LABEL_10:
      v17 = v16;

      v18 = sub_1004DE5FC();

      if (v18)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_5;
    }
  }

LABEL_14:
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100511AB0;
  *(v19 + 32) = [objc_opt_self() fixedSpaceItemOfWidth:0.0];
  v20 = objc_allocWithZone(UIBarButtonItemGroup);
  v21 = sub_1004DD85C().super.isa;

  [v20 initWithBarButtonItems:v21 representativeItem:0];

  sub_1004DD84C();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004DD8BC();
  }

  sub_1004DD90C();
}

uint64_t UIAction.init(target:selector:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      *(v4 + 24) = a2;

      v5 = sub_1004DE62C();

      swift_unknownObjectRelease();
      return v5;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002EF6F4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

id sub_1002EF72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    [result performSelector:a3];
    return v5;
  }

  return result;
}

Class static UIBarButtonItem.contextBarButtonItem(representativeOf:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  v3 = _sSo15UIBarButtonItemC11MusicCoreUIE010contextBarbC07options16childrenProviderABSo13UIMenuOptionsV_SaySo0L7ElementCGyctFZ_0(1, sub_1002F1364, v2);

  return v3;
}

uint64_t sub_1002EF810(uint64_t a1)
{
  sub_100006F10(0, &qword_10063E8E8);
  sub_100004CB8(&qword_100642970);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100511AB0;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 1;
  aBlock[4] = sub_1002F2370;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002EC23C;
  aBlock[3] = &unk_1005ED660;
  v5 = _Block_copy(aBlock);

  v6 = [v3 elementWithUncachedProvider:v5];
  _Block_release(v5);
  *(v2 + 32) = v6;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v16.value._countAndFlagsBits = 0;
  v16.value._object = 0;
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  v7.value = 1;
  isa = sub_1004DE4AC(v15, v16, v14, v7, 0xFFFFFFFFFFFFFFFFLL, v2, v12).super.super.isa;
  v9 = [(objc_class *)isa children];

  sub_100006F10(0, &qword_100644F70);
  v10 = sub_1004DD87C();

  return v10;
}

id static UIBarButtonItem.loading.getter()
{
  v0 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  [v0 startAnimating];
  v1 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v0];

  return v1;
}

uint64_t UIButton.reconfigure(with:)(void (*a1)(char *))
{
  v2 = sub_100004CB8(&qword_10063E910);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = sub_1004DE6DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DE6FC();
  v12 = *(v9 + 48);
  if (v12(v7, 1, v8) == 1)
  {
    sub_1004DE6BC();
    if (v12(v7, 1, v8) != 1)
    {
      sub_10001074C(v7, &qword_10063E910);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  a1(v11);
  (*(v9 + 16))(v4, v11, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  sub_1004DE70C();
  return (*(v9 + 8))(v11, v8);
}

uint64_t UITraitCollection.isAccessibilitySizeCategory.getter()
{
  v1 = [v0 preferredContentSizeCategory];
  v2 = sub_1004DE2CC();

  return v2 & 1;
}

uint64_t UITraitCollection.preferredLargeTitleDisplayMode.getter()
{
  if (![v0 userInterfaceIdiom])
  {
    return 3;
  }

  if ([v0 userInterfaceIdiom] == 1)
  {
    return 3;
  }

  return 1;
}

Swift::Bool __swiftcall UIViewController.scrollToTopIfPossible()()
{
  v1 = [v0 contentScrollView];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 _scrollToTopIfPossible:1];

  return v3;
}

Swift::Bool __swiftcall UIViewController.focusOnSearchBarIfPossible()()
{
  v1 = [v0 navigationItem];
  v2 = [v1 searchController];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 searchBar];
  v4 = [v3 canBecomeFirstResponder];

  if (v4)
  {
    v5 = [v2 searchBar];
    v6 = [v5 becomeFirstResponder];

    v2 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id static UIKeyCommand.findKeyCommand(affecting:)()
{
  v0 = sub_1004D83FC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1004DD3EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1004DD37C();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v9 = qword_1006734A0;
  sub_1004D838C();
  sub_1004DD4AC();
  (*(v2 + 8))(v7, v1);
  v10 = objc_opt_self();
  v11 = sub_1004DD3FC();
  v12 = [v10 keyCommandWithInput:v11 modifierFlags:1572864 action:"music_handleKeyCommand:"];

  v13 = v12;
  v14 = sub_1004DD3FC();

  [v13 setTitle:v14];

  if (qword_10063D860 != -1)
  {
    swift_once();
  }

  v15 = qword_10063E8E0;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1002F20E4;
  *(v16 + 24) = v8;
  v19[1] = sub_1002F20EC;
  v19[2] = v16;

  sub_100004CB8(&qword_10063E918);
  v17 = sub_1004DF11C();
  objc_setAssociatedObject(v13, v15, v17, 3);

  swift_unknownObjectRelease();

  return v13;
}

void sub_1002F01D0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setActive:1];
    v2 = [v1 searchBar];
    [v2 becomeFirstResponder];

    v3 = UISearchController.searchText.getter();
    if (v4)
    {
      v5 = v3;
      v6 = v4;

      v7 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v7 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v7)
      {
        v8 = [v1 searchBar];
        v9 = [v8 searchTextField];

        [v9 selectAll:v1];
      }
    }
  }
}

uint64_t UISearchController.searchText.getter()
{
  v1 = sub_1004D7B3C();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 searchBar];
  v7 = [v6 text];

  if (v7)
  {
    v8 = sub_1004DD43C();
    v10 = v9;

    v16[0] = v8;
    v16[1] = v10;
    sub_1004D7B2C();
    sub_1002E6780();
    v11 = sub_1004DE86C();
    v13 = v12;
    (*(v2 + 8))(v5, v1);

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      return v11;
    }
  }

  return 0;
}

id UIKeyCommand.init(title:input:modifierFlags:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = sub_1004DD3FC();

  v12 = [ObjCClassFromMetadata keyCommandWithInput:v11 modifierFlags:a5 action:"music_handleKeyCommand:"];

  v13 = v12;
  v14 = sub_1004DD3FC();

  [v13 setTitle:v14];

  v15 = qword_10063D860;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_10063E8E0;
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;

  sub_100004CB8(&qword_10063E918);
  v18 = sub_1004DF11C();
  objc_setAssociatedObject(v13, v16, v18, 3);

  swift_unknownObjectRelease();

  return v13;
}

uint64_t UIKeyCommand.handler.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_10063D860 != -1)
  {
    swift_once();
  }

  v6 = qword_10063E8E0;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;

    sub_100004CB8(&qword_10063E918);
    v8 = sub_1004DF11C();
  }

  else
  {
    v8 = 0;
  }

  objc_setAssociatedObject(v3, v6, v8, 3);
  swift_unknownObjectRelease();
  return sub_10000DE74(a1);
}

uint64_t (*UIKeyCommand.handler.getter())(uint64_t a1)
{
  if (qword_10063D860 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_10063E8E0))
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_100004CB8(&qword_10063E918);
    if (swift_dynamicCast())
    {
      *(swift_allocObject() + 16) = v2;
      return sub_1002F2118;
    }
  }

  else
  {
    sub_10001074C(v5, &qword_100644FB0);
  }

  return 0;
}

void (*UIKeyCommand.handler.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  *v3 = UIKeyCommand.handler.getter();
  v4[1] = v5;
  return sub_1002F08B4;
}

void sub_1002F08B4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (a2)
  {
    sub_10000DE64(**a1);
    if (qword_10063D860 != -1)
    {
      swift_once();
    }

    v5 = qword_10063E8E0;
    if (v4)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v4;
      *(v6 + 24) = v3;
      v2[2] = sub_1002F2404;
      v2[3] = v6;

      sub_100004CB8(&qword_10063E918);
      v7 = sub_1004DF11C();
    }

    else
    {
      v7 = 0;
    }

    objc_setAssociatedObject(v2[4], v5, v7, 3);
    swift_unknownObjectRelease();
    sub_10000DE74(v4);
    v11 = *v2;
  }

  else
  {
    if (qword_10063D860 != -1)
    {
      swift_once();
    }

    v8 = qword_10063E8E0;
    if (v4)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v4;
      *(v9 + 24) = v3;
      v2[2] = sub_1002F2404;
      v2[3] = v9;

      sub_100004CB8(&qword_10063E918);
      v10 = sub_1004DF11C();
    }

    else
    {
      v10 = 0;
    }

    objc_setAssociatedObject(v2[4], v8, v10, 3);
    swift_unknownObjectRelease();
    v11 = v4;
  }

  sub_10000DE74(v11);

  free(v2);
}

uint64_t sub_1002F0A9C()
{
  result = swift_slowAlloc();
  qword_10063E8E0 = result;
  return result;
}

id UIKeyCommand.pioritizedOverSystemBehavior(_:)(char a1)
{
  [v1 setWantsPriorityOverSystemBehavior:a1 & 1];

  return v3;
}

void sub_1002F0B10(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v3 = UIKeyCommand.handler.getter();
  if (v3)
  {
    v4 = v3;
    v3(v5);

    sub_10000DE74(v4);
  }

  else
  {
  }
}

id UIFont.monospacedDigits()()
{
  swift_getObjectType();
  sub_100004CB8(&qword_10063E920);
  inited = swift_initStackObject();
  v2 = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 32) = UIFontFeatureTypeIdentifierKey_ForNewSwiftAPI;
  *(inited + 40) = 6;
  *(inited + 16) = xmmword_1005126C0;
  v3 = UIFontFeatureSelectorIdentifierKey_ForNewSwiftAPI;
  *(inited + 64) = &type metadata for Int;
  *(inited + 72) = v3;
  *(inited + 104) = &type metadata for Int;
  *(inited + 80) = 0;
  v4 = v2;
  v5 = v3;
  v6 = sub_1002F1484(inited);
  swift_setDeallocating();
  sub_100004CB8(&qword_10063E928);
  swift_arrayDestroy();
  v7 = [v0 fontDescriptor];
  sub_100004CB8(&qword_10063E930);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_100511DA0;
  *(v8 + 32) = UIFontDescriptorFeatureSettingsAttribute;
  sub_100004CB8(&qword_10063E938);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100511DA0;
  *(v9 + 32) = v6;
  *(v8 + 64) = sub_100004CB8(&qword_10063E940);
  *(v8 + 40) = v9;
  v10 = UIFontDescriptorFeatureSettingsAttribute;
  sub_1002F15AC(v8);
  swift_setDeallocating();
  sub_10001074C(v8 + 32, &qword_10063E948);
  _s3__C13AttributeNameVMa_0(0);
  sub_1002F2150();
  isa = sub_1004DD1FC().super.isa;

  v12 = [v7 fontDescriptorByAddingAttributes:isa];

  v13 = [swift_getObjCClassFromMetadata() fontWithDescriptor:v12 size:0.0];
  return v13;
}

uint64_t (*static UIPointerStyle.capsule(in:)(void *a1))(void *a1, uint64_t a2, uint64_t a3)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002F21E0;
}

uint64_t sub_1002F0E60(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_100004CB8(&unk_100644F60);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_1004D978C();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  if (a4)
  {
    v23 = a4;
    v40.origin.x = v16;
    v40.origin.y = v18;
    v40.size.width = v20;
    v40.size.height = v22;
    Width = CGRectGetWidth(v40);
    [v23 frame];
    v26 = Width - v25;
    v41.origin.x = v16;
    v41.origin.y = v18;
    v41.size.width = v20;
    v41.size.height = v22;
    Height = CGRectGetHeight(v41);
    [v23 frame];
    v29 = v28;

    v16 = sub_10001087C(v16, v18, v20, v22, (Height - v29) * 0.5, v26 * 0.5);
    v18 = v30;
    v20 = v31;
    v22 = v32;
  }

  (*(v11 + 16))(v14, a2, v10);
  v42.origin.x = v16;
  v42.origin.y = v18;
  v42.size.width = v20;
  v42.size.height = v22;
  v33 = CGRectGetWidth(v42);
  v43.origin.x = v16;
  v43.origin.y = v18;
  v43.size.width = v20;
  v43.size.height = v22;
  v34 = CGRectGetHeight(v43);
  if (v34 < v33)
  {
    v33 = v34;
  }

  sub_100006F10(0, &qword_10063E968);
  *v9 = v16;
  *(v9 + 1) = v18;
  *(v9 + 2) = v20;
  *(v9 + 3) = v22;
  *(v9 + 4) = v33 * 0.5;
  v35 = enum case for UIPointerShape.roundedRect(_:);
  v36 = sub_1004D975C();
  v37 = *(v36 - 8);
  (*(v37 + 104))(v9, v35, v36);
  (*(v37 + 56))(v9, 0, 1, v36);
  return sub_1004DDFCC();
}

uint64_t sub_1002F1154(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1004DED5C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1004DED5C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1002F12E4();
          for (i = 0; i != v6; ++i)
          {
            sub_100004CB8(&qword_10063E900);
            v9 = sub_10026FB4C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100006F10(0, &qword_10063E8F8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1002F12E4()
{
  result = qword_10063E908;
  if (!qword_10063E908)
  {
    sub_100008DE4(&qword_10063E900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063E908);
  }

  return result;
}

unint64_t sub_1002F136C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_10063E988);
    v3 = sub_1004DEDBC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_100010530(v7, v8);
      result = sub_100028F80(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002F1484(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_10063E978);
    v3 = sub_1004DEDBC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000108DC(v4, &v11, &qword_10063E928);
      v5 = v11;
      result = sub_100397BBC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100006F5C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002F15AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_10063E970);
    v3 = sub_1004DEDBC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000108DC(v4, &v11, &qword_10063E948);
      v5 = v11;
      result = sub_100397BBC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100006F5C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002F16D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_10063E960);
    v3 = sub_1004DEDBC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100028F80(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002F17D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_10063E958);
    v3 = sub_1004DEDBC();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100028F80(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002F18D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_10063E950);
    v3 = sub_1004DEDBC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_100395BA0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

Class _sSo15UIBarButtonItemC11MusicCoreUIE010contextBarbC07options16childrenProviderABSo13UIMenuOptionsV_SaySo0L7ElementCGyctFZ_0(NSString *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004D83FC();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1004DD3EC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &aBlock[-1] - v12;
  sub_1004DD37C();
  (*(v8 + 16))(v10, v13, v7);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v14 = qword_1006734A0;
  sub_1004D838C();
  v15 = sub_1004DD4AC();
  v17 = v16;
  (*(v8 + 8))(v13, v7);
  sub_100006F10(0, &qword_10063E8F8);
  v18 = sub_1004DD3FC();
  v19 = [objc_opt_self() systemImageNamed:v18];

  sub_100004CB8(&qword_100642970);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100511AB0;
  v21 = objc_opt_self();
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  aBlock[4] = sub_1002F2408;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002EC23C;
  aBlock[3] = &unk_1005ED610;
  v23 = _Block_copy(aBlock);

  v24 = [v21 elementWithUncachedProvider:v23];
  _Block_release(v23);
  *(v20 + 32) = v24;
  sub_100006F10(0, &qword_10063E8E8);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v37.value._countAndFlagsBits = 0;
  v37.value._object = 0;
  v35.value.super.isa = 0;
  v35.is_nil = 0;
  v25.value = a1;
  isa = sub_1004DE4AC(v36, v37, v35, v25, 0xFFFFFFFFFFFFFFFFLL, v20, v32).super.super.isa;
  v27 = AccessibilityIdentifier.contextualMenuButton.unsafeMutableAddressor();
  v28 = *v27;
  v29 = v27[1];

  v30 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v15, v17, v19, 0, isa, 1, v28, v29);
  [(objc_class *)v30 setPreferredMenuElementOrder:2];
  return v30;
}

id _sSo12UIKeyCommandC11MusicCoreUIE07findKeyB0yAByABcFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004D83FC();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1004DD3EC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v22 - v10;
  sub_1004DD37C();
  (*(v6 + 16))(v8, v11, v5);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v12 = qword_1006734A0;
  sub_1004D838C();
  sub_1004DD4AC();
  (*(v6 + 8))(v11, v5);
  v13 = objc_opt_self();
  v14 = sub_1004DD3FC();
  v15 = [v13 keyCommandWithInput:v14 modifierFlags:1572864 action:"music_handleKeyCommand:"];

  v16 = v15;
  v17 = sub_1004DD3FC();

  [v16 setTitle:v17];

  if (qword_10063D860 != -1)
  {
    swift_once();
  }

  v18 = qword_10063E8E0;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v22[1] = sub_1002F2404;
  v22[2] = v19;

  sub_100004CB8(&qword_10063E918);
  v20 = sub_1004DF11C();
  objc_setAssociatedObject(v16, v18, v20, 3);
  swift_unknownObjectRelease();

  return v16;
}

uint64_t sub_1002F2118(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_1002F2150()
{
  result = qword_10063DF00;
  if (!qword_10063DF00)
  {
    _s3__C13AttributeNameVMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063DF00);
  }

  return result;
}

uint64_t sub_1002F21A8()
{

  return swift_deallocObject();
}

uint64_t sub_1002F2204(void (*a1)(void))
{
  (*(v1 + 16))();
  a1();
}

uint64_t sub_1002F2260()
{

  return swift_deallocObject();
}

uint64_t sub_1002F2298()
{

  return swift_deallocObject();
}

uint64_t sub_1002F22D0()
{

  return swift_deallocObject();
}

uint64_t sub_1002F2308()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t *UIView.Border.artwork.unsafeMutableAddressor()
{
  if (qword_10063D868 != -1)
  {
    swift_once();
  }

  return &static UIView.Border.artwork;
}

void sub_1002F24B0()
{
  v0 = objc_allocWithZone(UIColor);
  v5[4] = sub_1002F2598;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1003BB590;
  v5[3] = &unk_1005ED700;
  v1 = _Block_copy(v5);
  [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  UIView.Border.init(thickness:color:)();
  static UIView.Border.artwork = v2;
  byte_100673748 = v3 & 1;
  qword_100673750 = v4;
}

id sub_1002F2598(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(UIColor);
  v3 = 0.0;
  if (v1 == 2)
  {
    v3 = 1.0;
  }

  return [v2 initWithWhite:v3 alpha:0.1];
}

uint64_t static UIView.Border.artwork.getter()
{
  if (qword_10063D868 != -1)
  {
    swift_once();
  }

  v0 = static UIView.Border.artwork;
  v1 = qword_100673750;
  return v0;
}

void sub_1002F2678()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_10063E990 = v1 == 6;
}

uint64_t sub_1002F26DC()
{
  v0 = sub_1004DE53C();
  sub_100035718(v0, static UIView.Corner.extraSmall);
  sub_100035430(v0, static UIView.Corner.extraSmall);
  if (qword_10063D870 != -1)
  {
    swift_once();
  }

  return sub_1004DE4CC();
}

uint64_t sub_1002F27C8()
{
  v0 = sub_1004DE53C();
  sub_100035718(v0, static UIView.Corner.small);
  sub_100035430(v0, static UIView.Corner.small);
  if (qword_10063D870 != -1)
  {
    swift_once();
  }

  return sub_1004DE4CC();
}

uint64_t sub_1002F2890()
{
  v0 = sub_1004DE53C();
  sub_100035718(v0, static UIView.Corner.medium);
  sub_100035430(v0, static UIView.Corner.medium);
  if (qword_10063D870 != -1)
  {
    swift_once();
  }

  return sub_1004DE4CC();
}

uint64_t sub_1002F2958()
{
  v0 = sub_1004DE53C();
  sub_100035718(v0, static UIView.Corner.large);
  sub_100035430(v0, static UIView.Corner.large);
  if (qword_10063D870 != -1)
  {
    swift_once();
  }

  return sub_1004DE4CC();
}

uint64_t sub_1002F2A44()
{
  v0 = sub_1004DE53C();
  sub_100035718(v0, static UIView.Corner.extraLarge);
  sub_100035430(v0, static UIView.Corner.extraLarge);
  if (qword_10063D870 != -1)
  {
    swift_once();
  }

  return sub_1004DE4CC();
}

uint64_t sub_1002F2B0C(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1004DE53C();

  return sub_100035430(v3, a2);
}

uint64_t sub_1002F2B84@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1004DE53C();
  v6 = sub_100035430(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1002F2C1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *HI.Color.prominentTextColor.unsafeMutableAddressor()
{
  if (qword_10063D8A0 != -1)
  {
    swift_once();
  }

  return &static HI.Color.prominentTextColor;
}

id sub_1002F2D18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 userInterfaceStyle];
  sub_1002EB3A0();
  if (v7 == 2)
  {
    v8 = 250;
    v9 = 45;
    v10 = 72;
  }

  else
  {
    v8 = a2;
    v9 = a3;
    v10 = a4;
  }

  return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v8, v9, v10, 1.0);
}

void *HI.Color.prominentBackgroundColor.unsafeMutableAddressor()
{
  if (qword_10063D8A8 != -1)
  {
    swift_once();
  }

  return &static HI.Color.prominentBackgroundColor;
}

uint64_t sub_1002F2E1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002F2ECC@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicCoreUI2HIO9SizeClassO8rawValueAESg0B8Graphics7CGFloatV_tcfC_0(*a1);
  *a2 = result;
  return result;
}

double sub_1002F2EF8@<D0>(double *a1@<X8>)
{
  result = dbl_10052A0B0[*v1];
  *a1 = result;
  return result;
}

Swift::Int sub_1002F2FE0(uint64_t a1, char a2)
{
  sub_1004DF26C();
  sub_1004DF2AC(qword_10052A070[a2]);
  return sub_1004DF2BC();
}

double sub_1002F3030(unsigned __int8 a1, char a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (a3 > 1u)
    {
      if (a3 != 2)
      {
        return dbl_10052A030[a1];
      }

      v4 = a1;
      result = 3.0;
      v5 = 4.0;
      if (a1 != 2)
      {
        v5 = 2.0;
      }

      v6 = 1.0;
      if (a2)
      {
        v6 = 3.0;
      }

      if (!a1)
      {
        result = v6;
      }

      goto LABEL_49;
    }

    if (!a3)
    {
      return dbl_10052A010[a1];
    }

    v4 = a1;
    result = 1.0;
    v5 = 3.0;
    v11 = 4.0;
    if ((a2 & 1) == 0)
    {
      v11 = 1.0;
    }

    if (a1 != 2)
    {
      v5 = v11;
    }

    v12 = 2.0;
LABEL_47:
    if (v4)
    {
      result = v12;
    }

LABEL_49:
    if (v4 > 1)
    {
      return v5;
    }

    return result;
  }

  if (a3 <= 5u)
  {
    if (a3 == 4)
    {
      return dbl_10052A050[a1];
    }

    v4 = a1;
    result = 3.0;
    v5 = 7.0;
    v13 = 5.0;
    if (a2)
    {
      v13 = 9.0;
    }

    if (a1 != 2)
    {
      v5 = v13;
    }

    v12 = 6.0;
    goto LABEL_47;
  }

  result = 7.0;
  v7 = 8.0;
  v8 = 6.0;
  if (a2)
  {
    v8 = 28.0;
  }

  if (a1 != 2)
  {
    v7 = v8;
  }

  v9 = 4.0;
  if (a2)
  {
    v9 = 7.0;
  }

  if (a1)
  {
    v9 = 7.0;
  }

  if (a1 <= 1u)
  {
    v7 = v9;
  }

  v10 = 5.0;
  if (a2)
  {
    result = 15.0;
  }

  if (a1 == 2)
  {
    result = 12.0;
  }

  if (a1)
  {
    v10 = 10.0;
  }

  if (a1 <= 1u)
  {
    result = v10;
  }

  if (a3 == 6)
  {
    return v7;
  }

  return result;
}

void HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(unsigned __int8 a1@<W0>, unsigned __int8 a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  if (a5 <= 374.0)
  {
    v13 = 0;
    v10 = 10.0;
    v11 = 16.0;
    goto LABEL_19;
  }

  v10 = 12.0;
  v11 = 20.0;
  if (a5 <= 500.0)
  {
    v13 = 1;
    goto LABEL_19;
  }

  if (a5 <= 726.0)
  {
    v13 = 2;
    goto LABEL_19;
  }

  v10 = 20.0;
  if (a5 <= 981.0)
  {
    v13 = 3;
LABEL_18:
    v11 = 34.0;
    goto LABEL_19;
  }

  if (a5 <= 1194.0)
  {
    v13 = 4;
    goto LABEL_18;
  }

  if (a5 <= 2500.0)
  {
    v12 = 6;
  }

  else
  {
    v12 = 7;
  }

  if (a5 > 1500.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 5;
  }

  v11 = 34.0;
LABEL_19:
  v14 = a5 - (v11 + v11);
  if (a3)
  {
    v15 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
    [v15 scaledValueForValue:1.0];
    v17 = v16;

    v18 = round(sub_1002F3030(a1, a2 & 1, v13) * (1.0 / (v17 * 0.7)));
  }

  else
  {
    v18 = sub_1002F3030(a1, a2 & 1, v13);
  }

  v19 = 1.0;
  if (v13 <= 4)
  {
    v20 = 3.0;
    if (((a1 == 3) & a2) == 0)
    {
      v20 = 1.0;
    }

    v22 = 2.0;
    if (((a1 == 0) & a2) == 0)
    {
      v22 = 1.0;
    }

    if (v13 == 2)
    {
      v19 = v22;
    }

    v21 = v13 == 1;
    goto LABEL_40;
  }

  if (v13 == 5)
  {
    v23 = ((a1 == 3) & a2) == 0;
  }

  else
  {
    if (v13 != 6)
    {
      v20 = 1.0;
      if (((a1 == 3) & a2) != 0)
      {
        v20 = 2.0;
      }

      v21 = v13 == 7;
LABEL_40:
      if (v21)
      {
        v19 = v20;
      }

      goto LABEL_46;
    }

    if (a1)
    {
      v20 = 5.0;
      if ((a2 & 1) == 0)
      {
        v20 = 1.0;
      }

      v21 = a1 == 3;
      goto LABEL_40;
    }

    v23 = (a2 & 1) == 0;
  }

  if (!v23)
  {
    v19 = 2.0;
  }

LABEL_46:
  v24 = (v14 - v10 * (v18 + -1.0)) / v18 * v19;
  v25 = v19 + -1.0;
  if (v25 > 0.0)
  {
    v24 = v24 + v10 * v25;
  }

  v26 = v18 == 1.0 || v24 > 300.0;
  if ((a3 & 1) == 0)
  {
    v26 = 0;
  }

  *a4 = a5;
  *(a4 + 8) = v10;
  *(a4 + 16) = v11;
  *(a4 + 24) = v13;
  *(a4 + 25) = a1;
  *(a4 + 26) = a2 & 1;
  *(a4 + 32) = v14;
  *(a4 + 40) = v18;
  *(a4 + 48) = v24;
  *(a4 + 56) = v26;
}

void HI.Grid.Metrics.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_1004DF2AC(*&v1);
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_1004DF2AC(*&v2);
  v3 = *(v0 + 16);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_1004DF2AC(*&v3);
  sub_1004DF2AC(qword_10052A070[*(v0 + 24)]);
  sub_1004DF27C(*(v0 + 25));
  sub_1004DF28C(*(v0 + 26) & 1);
  v4 = *(v0 + 32);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  sub_1004DF2AC(*&v4);
  v5 = *(v0 + 40);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  sub_1004DF2AC(*&v5);
  v6 = *(v0 + 48);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  sub_1004DF2AC(*&v6);
  sub_1004DF28C(*(v0 + 56) & 1);
}

Swift::Int HI.Grid.Metrics.hashValue.getter()
{
  sub_1004DF26C();
  HI.Grid.Metrics.hash(into:)();
  return sub_1004DF2BC();
}

Swift::Int sub_1002F3638()
{
  sub_1004DF26C();
  HI.Grid.Metrics.hash(into:)();
  return sub_1004DF2BC();
}

uint64_t sub_1002F3674(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s11MusicCoreUI2HIO4GridO7MetricsV23__derived_struct_equalsySbAG_AGtFZ_0(v5, v7) & 1;
}

uint64_t *HI.BottomPlayer.Ornament.overlappingHeight.unsafeMutableAddressor()
{
  if (qword_10063D8B0 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.Ornament.overlappingHeight;
}

double sub_1002F3820()
{
  if (qword_10063D8B0 != -1)
  {
    swift_once();
  }

  result = -*&static HI.BottomPlayer.Ornament.overlappingHeight;
  static HI.BottomPlayer.Ornament.offset = 0;
  *&qword_1006737F0 = -*&static HI.BottomPlayer.Ornament.overlappingHeight;
  return result;
}

uint64_t *HI.BottomPlayer.Ornament.offset.unsafeMutableAddressor()
{
  if (qword_10063D8B8 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.Ornament.offset;
}

double static HI.BottomPlayer.Ornament.offset.getter()
{
  if (qword_10063D8B8 != -1)
  {
    swift_once();
  }

  return *&static HI.BottomPlayer.Ornament.offset;
}

double static HI.BottomPlayer.size(dynamicTypeSize:)(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_10063E7B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_1004DA25C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  sub_1002F3FA0(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1002F4010(v4);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 104))(v8, enum case for DynamicTypeSize.accessibility1(_:), v5);
    sub_1002F4078();
    v12 = sub_1004DD32C();
    v13 = *(v6 + 8);
    v13(v8, v5);
    v13(v11, v5);
    if ((v12 & 1) == 0)
    {
      return 924.0;
    }
  }

  return 784.0;
}

uint64_t *HI.BottomPlayer.buttonSpacing.unsafeMutableAddressor()
{
  if (qword_10063D8C0 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.buttonSpacing;
}

uint64_t *HI.BottomPlayer.contentHorizontalPadding.unsafeMutableAddressor()
{
  if (qword_10063D8C8 != -1)
  {
    swift_once();
  }

  return &static HI.BottomPlayer.contentHorizontalPadding;
}

double sub_1002F3C64(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t _s11MusicCoreUI2HIO4GridO7MetricsV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v3 > 3)
  {
    if (*(a2 + 24) > 5u)
    {
      if (v3 == 6)
      {
        if (v2 != 6)
        {
          return 0;
        }
      }

      else if (v2 != 7)
      {
        return 0;
      }
    }

    else if (v3 == 4)
    {
      if (v2 != 4)
      {
        return 0;
      }
    }

    else if (v2 != 5)
    {
      return 0;
    }
  }

  else if (*(a2 + 24) > 1u)
  {
    if (v3 == 2)
    {
      if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2 != 3)
    {
      return 0;
    }
  }

  else if (*(a2 + 24))
  {
    if (v2 != 1)
    {
      return 0;
    }
  }

  else if (*(a1 + 24))
  {
    return 0;
  }

  if (*(a1 + 25) == *(a2 + 25) && ((*(a1 + 26) ^ *(a2 + 26)) & 1) == 0 && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48))
  {
    return (*(a1 + 56) ^ *(a2 + 56) ^ 1) & 1;
  }

  return 0;
}

uint64_t _s11MusicCoreUI2HIO9SizeClassOyAE0B8Graphics7CGFloatVcfC_0(double a1)
{
  if (a1 <= 374.0)
  {
    return 0;
  }

  if (a1 <= 500.0)
  {
    return 1;
  }

  if (a1 <= 726.0)
  {
    return 2;
  }

  if (a1 <= 981.0)
  {
    return 3;
  }

  if (a1 > 2500.0)
  {
    v1 = 7;
  }

  else
  {
    v1 = 6;
  }

  if (a1 > 1500.0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 5;
  }

  if (a1 > 1194.0)
  {
    return v2;
  }

  else
  {
    return 4;
  }
}

uint64_t _s11MusicCoreUI2HIO9SizeClassO8rawValueAESg0B8Graphics7CGFloatV_tcfC_0(double a1)
{
  if (a1 == 374.0)
  {
    return 0;
  }

  if (a1 == 500.0)
  {
    return 1;
  }

  if (a1 == 726.0)
  {
    return 2;
  }

  if (a1 == 981.0)
  {
    return 3;
  }

  if (a1 == 1194.0)
  {
    return 4;
  }

  if (a1 == 2501.0)
  {
    v2 = 7;
  }

  else
  {
    v2 = 8;
  }

  if (a1 == 2500.0)
  {
    v3 = 6;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 1500.0)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002F3FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_10063E7B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F4010(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_10063E7B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002F4078()
{
  result = qword_10063E998;
  if (!qword_10063E998)
  {
    sub_1004DA25C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063E998);
  }

  return result;
}

unint64_t sub_1002F4100()
{
  result = qword_10063E9B0;
  if (!qword_10063E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063E9B0);
  }

  return result;
}

unint64_t sub_1002F418C()
{
  result = qword_10063E9C8;
  if (!qword_10063E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063E9C8);
  }

  return result;
}

unint64_t sub_1002F41E4()
{
  result = qword_10063E9D0;
  if (!qword_10063E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063E9D0);
  }

  return result;
}

__n128 sub_1002F4284(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1002F42A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 26);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002F42F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 26) = a2 + 1;
    }
  }

  return result;
}

double sub_1002F43D4(uint64_t a1, uint64_t a2, char a3, unsigned __int8 a4)
{
  v7 = [objc_opt_self() currentTraitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (a4 <= 1u)
  {
    if (a4)
    {
LABEL_9:
      result = 540.0;
      if (v8 == 6)
      {
        return 512.0;
      }

      return result;
    }

    result = 540.0;
    if (v8 == 6)
    {
      return 512.0;
    }
  }

  else
  {
    if (a4 != 2)
    {
      if (a4 == 3)
      {
        return 512.0;
      }

      goto LABEL_9;
    }

    result = 712.0;
    if (a3 & 1 | (*&a1 <= 1194.0))
    {
      return 540.0;
    }
  }

  return result;
}

double static HI.Modal.modalSize(modalType:sceneSize:canExceedSceneSize:verticalInsets:)(unsigned __int8 a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v8 = sub_1002F43D4(a2, a3, a4 & 1, a1);
  v9 = [objc_opt_self() currentTraitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 6 && (a4 & 1) == 0 && (a5 & 1) == 0)
  {
    v11 = *&a2;
    if (qword_10063D8D0 != -1)
    {
      swift_once();
      v11 = *&a2;
    }

    if (v8 + *&qword_100673808 + *&qword_100673808 > v11)
    {
      return v11 - (*&qword_100673808 + *&qword_100673808);
    }
  }

  return v8;
}

unint64_t sub_1002F4678()
{
  result = qword_10063E9D8;
  if (!qword_10063E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063E9D8);
  }

  return result;
}

uint64_t sub_1002F46F0()
{
  sub_1004DEAAC(42);

  v4._countAndFlagsBits = sub_1004DC91C();
  sub_1004DD5FC(v4);

  v5._countAndFlagsBits = 0x64692E676E6F7320;
  v5._object = 0xE90000000000003DLL;
  sub_1004DD5FC(v5);
  sub_1004DC8FC();
  v0 = sub_1004DC2EC();
  v2 = v1;

  v6._countAndFlagsBits = v0;
  v6._object = v2;
  sub_1004DD5FC(v6);

  v7._object = 0x80000001004F58A0;
  v7._countAndFlagsBits = 0xD000000000000010;
  sub_1004DD5FC(v7);
  sub_1004DC88C();
  sub_100004CB8(&qword_10063EAC0);
  v8._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v8);

  return 0x7469742E676E6F73;
}

uint64_t LyricsLoader.loadLyrics(for:)(uint64_t a1)
{
  v2[65] = v1;
  v2[64] = a1;
  v3 = sub_1004D809C();
  v2[66] = v3;
  v2[67] = *(v3 - 8);
  v2[68] = swift_task_alloc();
  v4 = sub_1004D966C();
  v2[69] = v4;
  v2[70] = *(v4 - 8);
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v5 = sub_1004DD48C();
  v2[75] = v5;
  v2[76] = *(v5 - 8);
  v2[77] = swift_task_alloc();
  v6 = sub_1004DC95C();
  v2[78] = v6;
  v2[79] = *(v6 - 8);
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();

  return _swift_task_switch(sub_1002F4A90, 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  sub_100004CB8(&qword_10063EA08);
  v2[4] = swift_task_alloc();
  v3 = sub_1004DC95C();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_1002F778C, 0, 0);
}

uint64_t sub_1002F4A90()
{
  v40 = v0;
  if (sub_1004DC94C() & 1) != 0 || (sub_1004DC85C())
  {
    sub_100004CB8(&qword_100642970);
    v1 = swift_allocObject();
    v0[89] = v1;
    *(v1 + 16) = xmmword_100511AB0;
    sub_100004CB8(&qword_10063E9E8);
    *(v1 + 32) = sub_1004DBFAC();
    v2 = swift_task_alloc();
    v0[90] = v2;
    v3 = sub_1002FD3F8();
    *v2 = v0;
    v2[1] = sub_1002F4F08;
    v4 = v0[88];
    v5 = v0[78];

    return MusicItem<>.with(_:)(v4, v1, v5, &protocol witness table for Song, &protocol witness table for Song, v3);
  }

  else
  {
    v6 = v0[83];
    v7 = v0[79];
    v8 = v0[78];
    v9 = v0[72];
    v10 = v0[70];
    v11 = v0[69];
    v12 = v0[65];
    v13 = v0[64];
    v14 = Logger.lyrics.unsafeMutableAddressor();
    (*(v10 + 16))(v9, v14, v11);
    (*(v7 + 16))(v6, v13, v8);
    v15 = v12;
    v16 = sub_1004D964C();
    v17 = sub_1004DDF9C();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[83];
    v20 = v0[79];
    v21 = v0[78];
    v22 = v0[72];
    v23 = v0[70];
    v24 = v0[69];
    if (v18)
    {
      v38 = v0[72];
      v25 = v0[65];
      v37 = v0[69];
      v26 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v26 = 136446466;
      v0[57] = v25;
      v27 = sub_1004DD4DC();
      v29 = sub_1002E5CC4(v27, v28, v39);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2082;
      v30 = sub_1002F46F0();
      v32 = v31;
      (*(v20 + 8))(v19, v21);
      v33 = sub_1002E5CC4(v30, v32, v39);

      *(v26 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v16, v17, "Loader<%{public}s> loadLyrics(for:completion:) returned without loading lyrics [hasLyrics and hasCustomLyrics were false] %{public}s", v26, 0x16u);
      swift_arrayDestroy();

      (*(v23 + 8))(v38, v37);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
      (*(v23 + 8))(v22, v24);
    }

    sub_1002FD3A4();
    swift_allocError();
    *v34 = 1;
    swift_willThrow();

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_1002F4F08()
{
  *(*v1 + 728) = v0;

  if (v0)
  {
    v2 = sub_1002F674C;
  }

  else
  {

    v2 = sub_1002F5024;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002F5024()
{
  v137 = v0;
  v1 = sub_1004DC83C();
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v5 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v6 = [objc_opt_self() standardUserDefaults];
      v7 = sub_1004DD3FC();
      v8 = [v6 BOOLForKey:v7];

      if (v8 && *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1 && (String.trim()(), v9 = sub_1002F7110(), , (v9 & 1) != 0) && (v10 = *(v0 + 616), v11 = *(v0 + 608), v12 = *(v0 + 600), sub_1004DD47C(), v13 = sub_1004DD44C(), v15 = v14, *(v0 + 736) = v13, *(v0 + 744) = v14, (*(v11 + 8))(v10, v12), v15 >> 60 != 15))
      {

        v113 = objc_allocWithZone(MSVLyricsTTMLParser);
        sub_100010530(v13, v15);
        isa = sub_1004D80FC().super.isa;
        v115 = [v113 initWithTTMLData:isa];
        *(v0 + 752) = v115;

        sub_100010584(v13, v15);
        *(v0 + 16) = v0;
        *(v0 + 56) = v0 + 488;
        *(v0 + 24) = sub_1002F5F24;
        v116 = swift_continuation_init();
        *(v0 + 392) = sub_100004CB8(&qword_10063EA00);
        *(v0 + 336) = _NSConcreteStackBlock;
        *(v0 + 344) = 1107296256;
        *(v0 + 352) = sub_1002F726C;
        *(v0 + 360) = &unk_1005EDAE8;
        *(v0 + 368) = v116;
        [v115 parseWithCompletion:v0 + 336];

        return _swift_continuation_await(v0 + 16);
      }

      else
      {
        (*(*(v0 + 632) + 8))(*(v0 + 704), *(v0 + 624));

        v16 = *(v0 + 8);

        return v16(v3, v4, 0);
      }
    }
  }

  if ((sub_1004DC94C() & 1) == 0)
  {
    v53 = *(v0 + 704);
    v54 = *(v0 + 696);
    v55 = *(v0 + 688);
    v56 = *(v0 + 632);
    v57 = *(v0 + 624);
    v58 = *(v0 + 592);
    v59 = *(v0 + 560);
    v60 = *(v0 + 552);
    v130 = *(v0 + 680);
    v134 = *(v0 + 520);
    v61 = *(v0 + 512);
    v62 = Logger.lyrics.unsafeMutableAddressor();
    (*(v59 + 16))(v58, v62, v60);
    v63 = *(v56 + 16);
    v63(v54, v61, v57);
    v63(v55, v53, v57);
    v63(v130, v61, v57);
    v64 = v134;
    v65 = sub_1004D964C();
    v66 = sub_1004DDF9C();

    v67 = os_log_type_enabled(v65, v66);
    v68 = *(v0 + 696);
    v69 = *(v0 + 688);
    v135 = *(v0 + 680);
    v70 = *(v0 + 632);
    v71 = *(v0 + 624);
    v72 = *(v0 + 592);
    v73 = *(v0 + 560);
    v74 = *(v0 + 552);
    if (v67)
    {
      v131 = *(v0 + 592);
      v75 = *(v0 + 520);
      v129 = *(v0 + 552);
      v76 = swift_slowAlloc();
      v136[0] = swift_slowAlloc();
      *v76 = 136446978;
      *(v0 + 464) = v75;
      v77 = sub_1004DD4DC();
      v125 = v66;
      v79 = sub_1002E5CC4(v77, v78, v136);

      *(v76 + 4) = v79;
      *(v76 + 12) = 2082;
      v80 = sub_1004DC85C();
      if (v80)
      {
        v81 = 1702195828;
      }

      else
      {
        v81 = 0x65736C6166;
      }

      if (v80)
      {
        v82 = 0xE400000000000000;
      }

      else
      {
        v82 = 0xE500000000000000;
      }

      loga = v65;
      v83 = *(v70 + 8);
      v83(v68, v71);
      v84 = sub_1002E5CC4(v81, v82, v136);

      *(v76 + 14) = v84;
      *(v76 + 22) = 2082;
      *(v0 + 424) = sub_1004DC83C();
      *(v0 + 432) = v85;
      sub_100004CB8(&qword_100644AB0);
      v86 = sub_1004DD4DC();
      v88 = v87;
      v83(v69, v71);
      v89 = sub_1002E5CC4(v86, v88, v136);

      *(v76 + 24) = v89;
      *(v76 + 32) = 2082;
      v90 = sub_1002F46F0();
      v92 = v91;
      v83(v135, v71);
      v93 = sub_1002E5CC4(v90, v92, v136);

      *(v76 + 34) = v93;
      _os_log_impl(&_mh_execute_header, loga, v125, "Loader<%{public}s> loadLyrics(for:completion:) didn't load lyrics [no lyrics found] song.hasLyrics=false song.hasCustomLyrics=%{public}s song.customLyrics=%{public}s %{public}s", v76, 0x2Au);
      swift_arrayDestroy();

      (*(v73 + 8))(v131, v129);
    }

    else
    {

      v83 = *(v70 + 8);
      v83(v135, v71);
      v83(v69, v71);
      v83(v68, v71);
      (*(v73 + 8))(v72, v74);
    }

    v106 = *(v0 + 704);
    v107 = *(v0 + 624);
    sub_1002FD3A4();
    swift_allocError();
    *v108 = 1;
    swift_willThrow();
    v83(v106, v107);
    goto LABEL_36;
  }

  static ApplicationCapabilities.shared.getter((v0 + 208));
  sub_100073E60(v0 + 208);
  if ((*(v0 + 218) & 1) == 0)
  {
    v18 = *(v0 + 672);
    v19 = *(v0 + 632);
    v20 = *(v0 + 624);
    v21 = *(v0 + 584);
    v22 = *(v0 + 560);
    v23 = *(v0 + 552);
    v132 = *(v0 + 520);
    v24 = *(v0 + 512);
    v25 = [objc_opt_self() sharedController];
    v26 = [v25 musicSubscriptionStatus];

    static ApplicationCapabilities.shared.getter((v0 + 80));
    sub_100073E60(v0 + 80);
    v128 = *(v0 + 88);
    v27 = Logger.lyrics.unsafeMutableAddressor();
    (*(v22 + 16))(v21, v27, v23);
    (*(v19 + 16))(v18, v24, v20);
    v28 = v132;
    v29 = v26;
    v30 = sub_1004D964C();
    v31 = sub_1004DDF9C();

    v32 = os_log_type_enabled(v30, v31);
    v33 = *(v0 + 672);
    v34 = *(v0 + 632);
    v35 = *(v0 + 624);
    v36 = *(v0 + 584);
    v37 = *(v0 + 560);
    v38 = *(v0 + 552);
    if (v32)
    {
      v127 = v31;
      v39 = *(v0 + 520);
      log = *(v0 + 624);
      v40 = swift_slowAlloc();
      v136[0] = swift_slowAlloc();
      *v40 = 136446978;
      *(v0 + 472) = v39;
      v41 = sub_1004DD4DC();
      v133 = v36;
      v126 = v38;
      v43 = sub_1002E5CC4(v41, v42, v136);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2082;
      *(v0 + 480) = v29;
      v44 = v29;
      sub_100004CB8(&qword_10063E9F8);
      v45 = sub_1004DD4DC();
      v47 = sub_1002E5CC4(v45, v46, v136);

      *(v40 + 14) = v47;
      *(v40 + 22) = 1026;
      *(v40 + 24) = WORD1(v128) & 1;
      *(v40 + 28) = 2082;
      v48 = sub_1002F46F0();
      v50 = v49;
      v51 = *(v34 + 8);
      v51(v33, log);
      v52 = sub_1002E5CC4(v48, v50, v136);

      *(v40 + 30) = v52;
      _os_log_impl(&_mh_execute_header, v30, v127, "Loader<%{public}s> loadLyrics(for:completion:) didn't load store lyrics [not supported by subscription] subscriptionStatus=%{public}s subscriptionStatus.capabilities.contains(.catalogLyricsViewing)=%{BOOL,public}d %{public}s", v40, 0x26u);
      swift_arrayDestroy();

      (*(v37 + 8))(v133, v126);
    }

    else
    {

      v51 = *(v34 + 8);
      v51(v33, v35);
      (*(v37 + 8))(v36, v38);
    }

    v109 = *(v0 + 704);
    v110 = *(v0 + 624);
    sub_1002FD3A4();
    swift_allocError();
    *v111 = 2;
    swift_willThrow();

    v51(v109, v110);
LABEL_36:

    v112 = *(v0 + 8);

    return v112();
  }

  if (*DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() != 1)
  {
    goto LABEL_29;
  }

  v94 = sub_1004DC88C();
  *(v0 + 768) = v95;
  if (!v95)
  {
    goto LABEL_29;
  }

  v96 = v94;
  v97 = v95;
  v98 = *(v0 + 728);
  sub_1004DEAAC(30);

  v136[0] = 0xD000000000000017;
  v136[1] = 0x80000001004F57D0;
  v139._countAndFlagsBits = v96;
  v139._object = v97;
  sub_1004DD5FC(v139);
  v140._countAndFlagsBits = 0x6C6D74742ELL;
  v140._object = 0xE500000000000000;
  sub_1004DD5FC(v140);
  sub_1004D7FAC();

  v99 = sub_1004D80BC();
  *(v0 + 776) = v99;
  *(v0 + 784) = v100;
  if (v98)
  {
    v101 = *(v0 + 544);
    v102 = *(v0 + 536);
    v103 = *(v0 + 528);

    (*(v102 + 8))(v101, v103);
LABEL_29:
    v104 = swift_task_alloc();
    *(v0 + 816) = v104;
    *v104 = v0;
    v104[1] = sub_1002F64BC;
    v105 = *(v0 + 512);

    return sub_1002F8050(v105);
  }

  v117 = v99;
  v118 = v100;
  (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
  v119 = *LyricsOptionsManager.shared.unsafeMutableAddressor();

  BagProvider.shared.unsafeMutableAddressor();

  v120 = BagProvider.bag.getter();

  (*(*v119 + 120))(v120);

  v121 = swift_task_alloc();
  *(v0 + 792) = v121;
  v121[2] = v117;
  v121[3] = v118;
  v121[4] = v96;
  v121[5] = v97;
  v122 = swift_task_alloc();
  *(v0 + 800) = v122;
  *v122 = v0;
  v122[1] = sub_1002F61EC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 400, 0, 0, 0xD000000000000010, 0x80000001004F57F0, sub_1002FD450, v121, &type metadata for LyricsLoader.Result);
}

uint64_t sub_1002F5F24()
{
  v1 = *(*v0 + 48);
  *(*v0 + 760) = v1;
  if (v1)
  {
    v2 = sub_1002F6890;
  }

  else
  {
    v2 = sub_1002F6034;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002F6034()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[88];
  v5 = v0[79];
  v6 = v0[78];
  v7 = v0[61];
  type metadata accessor for Lyrics(0);
  swift_allocObject();
  v10 = Lyrics.init(identifier:songInfo:)(0, 0, v7);

  sub_100010584(v3, v2);
  (*(v5 + 8))(v4, v6);

  v8 = v0[1];

  return v8(v10, 0, 1);
}

uint64_t sub_1002F61EC()
{
  *(*v1 + 808) = v0;

  if (v0)
  {
    v2 = sub_1002F6E4C;
  }

  else
  {
    v2 = sub_1002F633C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002F633C()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  sub_100010598(*(v0 + 776), *(v0 + 784));
  (*(v2 + 8))(v1, v3);
  v7 = *(v0 + 408);
  v8 = *(v0 + 400);
  v6 = *(v0 + 416);

  v4 = *(v0 + 8);

  return v4(v8, v7, v6);
}

uint64_t sub_1002F64BC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 824) = v1;

  if (v1)
  {
    v5 = sub_1002F6FB8;
  }

  else
  {
    *(v4 + 832) = a1;
    v5 = sub_1002F65E4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002F65E4()
{
  v3 = v0[104];
  (*(v0[79] + 8))(v0[88], v0[78]);

  v1 = v0[1];

  return v1(v3, 0, 1);
}

uint64_t sub_1002F674C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F6890()
{
  v66 = v0;
  v1 = v0[82];
  v58 = v0[81];
  v60 = v0[88];
  v2 = v0[79];
  v3 = v0[78];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[69];
  v62 = v0[80];
  v64 = v0[65];
  v7 = v0[64];
  swift_willThrow();
  v8 = Logger.lyrics.unsafeMutableAddressor();
  (*(v5 + 16))(v4, v8, v6);
  v9 = *(v2 + 16);
  v9(v1, v7, v3);
  v9(v58, v60, v3);
  v9(v62, v7, v3);
  v10 = v64;
  swift_errorRetain();
  v11 = sub_1004D964C();
  v12 = sub_1004DDF9C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[95];
    v14 = v0[82];
    v56 = v0[81];
    v57 = v0[80];
    v15 = v0[79];
    v16 = v0[78];
    v59 = v0[70];
    v61 = v0[69];
    v63 = v0[71];
    v17 = v0[65];
    v18 = swift_slowAlloc();
    v65[0] = swift_slowAlloc();
    *v18 = 136447234;
    v0[62] = v17;
    v19 = sub_1004DD4DC();
    v21 = sub_1002E5CC4(v19, v20, v65);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2082;
    v0[63] = v13;
    swift_errorRetain();
    sub_100004CB8(&qword_100643610);
    v22 = sub_1004DD4DC();
    v24 = sub_1002E5CC4(v22, v23, v65);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = sub_1004DC85C();
    if (v25)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v25)
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE500000000000000;
    }

    v28 = *(v15 + 8);
    v28(v14, v16);
    v29 = sub_1002E5CC4(v26, v27, v65);

    *(v18 + 24) = v29;
    *(v18 + 32) = 2082;
    v0[55] = sub_1004DC83C();
    v0[56] = v30;
    sub_100004CB8(&qword_100644AB0);
    v31 = sub_1004DD4DC();
    v33 = v32;
    v28(v56, v16);
    v34 = sub_1002E5CC4(v31, v33, v65);

    *(v18 + 34) = v34;
    *(v18 + 42) = 2082;
    v35 = sub_1002F46F0();
    v37 = v36;
    v28(v57, v16);
    v38 = sub_1002E5CC4(v35, v37, v65);

    *(v18 + 44) = v38;
    _os_log_impl(&_mh_execute_header, v11, v12, "Loader<%{public}s> loadLyrics(for:completion:) didn't parse TTML custom lyrics with error=%{public}s song.hasCustomLyrics=%{public}s song.customLyrics=%{public}s %{public}s", v18, 0x34u);
    swift_arrayDestroy();

    (*(v59 + 8))(v63, v61);
  }

  else
  {
    v39 = v0[82];
    v40 = v0[81];
    v41 = v0[80];
    v42 = v0[79];
    v43 = v0[78];
    v44 = v0[71];
    v45 = v11;
    v46 = v0[70];
    v47 = v0[69];

    v28 = *(v42 + 8);
    v28(v41, v43);
    v28(v40, v43);
    v28(v39, v43);
    (*(v46 + 8))(v44, v47);
  }

  v48 = v0[94];
  v49 = v0[93];
  v50 = v0[92];
  v51 = v0[88];
  v52 = v0[78];
  sub_1002FD3A4();
  swift_allocError();
  *v53 = 0;
  swift_willThrow();

  sub_100010584(v50, v49);
  v28(v51, v52);

  v54 = v0[1];

  return v54();
}

uint64_t sub_1002F6E4C()
{
  v1 = v0[88];
  v2 = v0[79];
  v3 = v0[78];
  sub_100010598(v0[97], v0[98]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002F6FB8()
{
  (*(v0[79] + 8))(v0[88], v0[78]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002F7110()
{

  v0 = sub_1004DD60C();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_1004DD60C();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_1004DF08C();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_1004DD60C();
      v3 = v5;
    }

    while (v5);
  }

  sub_1004DD60C();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void *sub_1002F726C(uint64_t a1, void *a2, void *a3)
{
  result = sub_100008C70((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100004CB8(&qword_100643610);
    swift_allocError();
    *v6 = a3;
    v7 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else if (a2)
  {
    **(*(*result + 64) + 40) = a2;
    v8 = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002F7344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100004CB8(&qword_10063EA60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - v11;
  v13 = objc_allocWithZone(MSVLyricsTTMLParser);
  isa = sub_1004D80FC().super.isa;
  v15 = [v13 initWithTTMLData:isa];

  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, v12, v8);
  v18 = (v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a4;
  v18[1] = a5;
  aBlock[4] = sub_1002FE98C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100022450;
  aBlock[3] = &unk_1005EDC58;
  v19 = _Block_copy(aBlock);

  [v15 parseWithCompletion:v19];
  _Block_release(v19);
}

void sub_1002F7568(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    type metadata accessor for Lyrics(0);
    swift_allocObject();
    v8 = a1;

    Lyrics.init(identifier:songInfo:)(a4, a5, v8);
    sub_100004CB8(&qword_10063EA60);
    sub_1004DD9DC();
  }

  else
  {
    if (!a2)
    {
      sub_1002FD3A4();
      swift_allocError();
      *v9 = 3;
    }

    swift_errorRetain();
    sub_100004CB8(&qword_10063EA60);
    sub_1004DD9CC();
  }
}

uint64_t sub_1002F778C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  sub_1004D952C();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10001074C(*(v0 + 32), &qword_10063EA08);
    sub_1002FD3A4();
    swift_allocError();
    *v5 = 4;
    swift_willThrow();

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    (*(*(v0 + 48) + 32))(*(v0 + 56), *(v0 + 32), *(v0 + 40));
    v8 = swift_task_alloc();
    *(v0 + 64) = v8;
    *v8 = v0;
    v8[1] = sub_1002F791C;
    v9 = *(v0 + 56);

    return LyricsLoader.loadLyrics(for:)(v9);
  }
}

uint64_t sub_1002F791C(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 72) = v3;

  if (v3)
  {
    v9 = sub_1002F7AF4;
  }

  else
  {
    *(v8 + 96) = a3;
    *(v8 + 80) = a2;
    *(v8 + 88) = a1;
    v9 = sub_1002F7A58;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1002F7A58()
{
  v1 = *(v0 + 96);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

  v2 = *(v0 + 8);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  return v2(v3, v4, v1 & 1);
}

uint64_t sub_1002F7AF4()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

id static LyricsLoader.requiredProperties()()
{
  sub_100004CB8(&qword_1006432D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100511B10;
  *(v0 + 32) = sub_1004DD43C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1004DD43C();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1004DD43C();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1004DD43C();
  *(v0 + 88) = v4;
  sub_100004CB8(&qword_10063EA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511A40;
  *(inited + 32) = sub_1004DD43C();
  *(inited + 40) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100511DA0;
  *(v7 + 32) = sub_1004DD43C();
  *(v7 + 40) = v8;
  isa = sub_1004DD85C().super.isa;

  v10 = objc_opt_self();
  v11 = [v10 propertySetWithProperties:isa];

  *(inited + 48) = v11;
  *(inited + 56) = sub_1004DD43C();
  *(inited + 64) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100511B10;
  *(v13 + 32) = sub_1004DD43C();
  *(v13 + 40) = v14;
  *(v13 + 48) = sub_1004DD43C();
  *(v13 + 56) = v15;
  *(v13 + 64) = sub_1004DD43C();
  *(v13 + 72) = v16;
  *(v13 + 80) = sub_1004DD43C();
  *(v13 + 88) = v17;
  v18 = sub_1004DD85C().super.isa;

  v19 = [v10 propertySetWithProperties:v18];

  *(inited + 72) = v19;
  *(inited + 80) = sub_1004DD43C();
  *(inited + 88) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100511DA0;
  *(v21 + 32) = sub_1004DD43C();
  *(v21 + 40) = v22;
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_100511DA0;
  *(v23 + 32) = sub_1004DD43C();
  *(v23 + 40) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100511DA0;
  *(v25 + 32) = sub_1004DD43C();
  *(v25 + 40) = v26;
  v27 = sub_1004DD85C().super.isa;

  v28 = [v10 propertySetWithProperties:v27];

  *(v23 + 48) = v28;
  sub_1002F16D4(v23);
  swift_setDeallocating();
  sub_10001074C(v23 + 32, &qword_10063EA18);
  v29 = objc_allocWithZone(MPPropertySet);
  v30 = sub_1004DD85C().super.isa;

  sub_1002FE740();
  v31 = sub_1004DD1FC().super.isa;

  v32 = [v29 initWithProperties:v30 relationships:v31];

  *(inited + 96) = v32;
  sub_1002F16D4(inited);
  swift_setDeallocating();
  sub_100004CB8(&qword_10063EA18);
  swift_arrayDestroy();
  v33 = objc_allocWithZone(MPPropertySet);
  v34 = sub_1004DD85C().super.isa;

  v35 = sub_1004DD1FC().super.isa;

  v36 = [v33 initWithProperties:v34 relationships:v35];

  return v36;
}

uint64_t sub_1002F8050(uint64_t a1)
{
  v2[79] = v1;
  v2[78] = a1;
  v3 = sub_1004DD48C();
  v2[80] = v3;
  v2[81] = *(v3 - 8);
  v2[82] = swift_task_alloc();
  v4 = sub_1004DC95C();
  v2[83] = v4;
  v2[84] = *(v4 - 8);
  v2[85] = swift_task_alloc();
  v5 = sub_1004D966C();
  v2[86] = v5;
  v2[87] = *(v5 - 8);
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v6 = sub_1004DC05C();
  v2[96] = v6;
  v2[97] = *(v6 - 8);
  v2[98] = swift_task_alloc();
  v7 = sub_1004DC03C();
  v2[99] = v7;
  v2[100] = *(v7 - 8);
  v2[101] = swift_task_alloc();
  v8 = sub_1004D7A6C();
  v2[102] = v8;
  v2[103] = *(v8 - 8);
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v9 = sub_1004D7BBC();
  v2[106] = v9;
  v2[107] = *(v9 - 8);
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v2[110] = swift_task_alloc();
  sub_100004CB8(&qword_10063EA68);
  v2[111] = swift_task_alloc();
  sub_100004CB8(&qword_10063EA70);
  v2[112] = swift_task_alloc();
  v10 = sub_1004D83DC();
  v2[113] = v10;
  v2[114] = *(v10 - 8);
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  sub_100004CB8(&qword_10063EA78);
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v11 = sub_1004D83FC();
  v2[123] = v11;
  v2[124] = *(v11 - 8);
  v2[125] = swift_task_alloc();
  v2[126] = swift_task_alloc();
  sub_100004CB8(&qword_10063EA80);
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  sub_100004CB8(&qword_10063DF60);
  v2[130] = swift_task_alloc();
  v12 = sub_1004D809C();
  v2[131] = v12;
  v2[132] = *(v12 - 8);
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();

  return _swift_task_switch(sub_1002F8684, 0, 0);
}

uint64_t sub_1002F8684()
{
  v251 = v0;
  v1 = v0;
  sub_1004DC88C();
  v248 = v0;
  if (!v2)
  {
    v45 = v0[90];
    v46 = v0[87];
    v47 = v0[86];
    v48 = Logger.lyrics.unsafeMutableAddressor();
    (*(v46 + 16))(v45, v48, v47);
    v49 = sub_1004D964C();
    v50 = sub_1004DDF7C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "fetchStoreLyrics: song has no storeID", v51, 2u);
    }

    v52 = v1[90];
    v53 = v1[87];
    v54 = v1[86];

    (*(v53 + 8))(v52, v54);
    sub_1002FD3A4();
    swift_allocError();
    v56 = 2;
    goto LABEL_21;
  }

  BagProvider.shared.unsafeMutableAddressor();

  v3 = BagProvider.bag.getter();
  v0[135] = v3;

  if (!v3)
  {
    v57 = v0[91];
    v58 = v0[87];
    v59 = v0[86];

    v60 = Logger.lyrics.unsafeMutableAddressor();
    (*(v58 + 16))(v57, v60, v59);
    v61 = sub_1004D964C();
    v62 = sub_1004DDF7C();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "fetchStoreLyrics: Bag is nil", v63, 2u);
    }

    v64 = v1[91];
    v65 = v1[87];
    v66 = v1[86];

    (*(v65 + 8))(v64, v66);
    sub_1002FD3A4();
    swift_allocError();
    v56 = 3;
LABEL_21:
    *v55 = v56;
    swift_willThrow();
LABEL_27:

    v78 = v248[1];

    return v78();
  }

  v4 = LyricsOptionsManager.shared.unsafeMutableAddressor();
  v5 = *(**v4 + 120);

  v6 = v3;
  v5(v3);

  v7 = [v6 stringForBagKey:ICURLBagKeyCountryCode];
  if (!v7)
  {
LABEL_23:

LABEL_24:
    v67 = v1[92];
    v68 = v1[87];
    v69 = v1[86];
    v70 = Logger.lyrics.unsafeMutableAddressor();
    (*(v68 + 16))(v67, v70, v69);
    v71 = sub_1004D964C();
    v72 = sub_1004DDF7C();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "fetchStoreLyrics: Unable to get the domain from the bag", v73, 2u);
    }

    v74 = v1[92];
    v75 = v1[87];
    v76 = v1[86];

    (*(v75 + 8))(v74, v76);
    sub_1002FD3A4();
    swift_allocError();
    *v77 = 3;
    swift_willThrow();

    goto LABEL_27;
  }

  v8 = v7;
  v9 = sub_1004DD43C();
  v11 = v10;

  v12 = [v6 dictionaryForBagKey:ICURLBagKeyMusicCommon];
  if (!v12 || (v13 = v12, v14 = sub_1004DD21C(), v13, v15 = sub_100372300(v14), , !v15))
  {
LABEL_22:

    goto LABEL_23;
  }

  v16 = sub_1004DD43C();
  if (!*(v15 + 16))
  {

    goto LABEL_31;
  }

  v18 = sub_100028F80(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_31:

    v1 = v248;
    goto LABEL_24;
  }

  v1 = v248;
  v21 = v248 + 75;
  sub_100010678(*(v15 + 56) + 40 * v18, (v248 + 23));

  sub_100004CB8(&qword_10063EA88);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v22 = *v21;
  if (!*(*v21 + 16) || (v23 = sub_100028F80(0x746C7561666564, 0xE700000000000000), (v24 & 1) == 0))
  {

    goto LABEL_23;
  }

  sub_100010678(*(v22 + 56) + 40 * v23, (v248 + 18));

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v243 = v248[132];
  v245 = v248[131];
  v241 = v248[130];
  v25 = v248[62];
  v26 = v248[63];
  sub_1004DEAAC(49);

  v249 = 0x2F2F3A7370747468;
  v250 = 0xE800000000000000;
  v253._countAndFlagsBits = v25;
  v253._object = v26;
  sub_1004DD5FC(v253);

  v254._countAndFlagsBits = 0x617461632F31762FLL;
  v254._object = 0xEC0000002F676F6CLL;
  sub_1004DD5FC(v254);
  v255._countAndFlagsBits = v9;
  v255._object = v11;
  sub_1004DD5FC(v255);
  v256._countAndFlagsBits = 0x2F73676E6F732FLL;
  v256._object = 0xE700000000000000;
  sub_1004DD5FC(v256);
  v27 = sub_1004DC2EC();
  v29 = v28;

  v257._countAndFlagsBits = v27;
  v257._object = v29;
  sub_1004DD5FC(v257);

  v258._object = 0x80000001004F5860;
  v258._countAndFlagsBits = 0xD000000000000010;
  sub_1004DD5FC(v258);
  sub_1004D805C();
  if ((*(v243 + 48))(v241, 1, v245) == 1)
  {
    v30 = v248[130];
    v31 = v248[93];
    v32 = v248[87];
    v33 = v248[86];

    sub_10001074C(v30, &qword_10063DF60);
    v34 = Logger.lyrics.unsafeMutableAddressor();
    (*(v32 + 16))(v31, v34, v33);

    v35 = sub_1004D964C();
    v36 = sub_1004DDF7C();

    v37 = os_log_type_enabled(v35, v36);
    v38 = v248[93];
    v39 = v248[87];
    v40 = v248[86];
    if (v37)
    {
      v41 = v248[93];
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v249 = v43;
      *v42 = 136446210;
      v44 = sub_1002E5CC4(0x2F2F3A7370747468, 0xE800000000000000, &v249);

      *(v42 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v35, v36, "fetchStoreLyrics: Couldn't build URL: %{public}s", v42, 0xCu);
      sub_100008D24(v43);

      (*(v39 + 8))(v41, v40);
    }

    else
    {

      (*(v39 + 8))(v38, v40);
    }

    sub_1002FD3A4();
    swift_allocError();
    *v171 = 3;
    swift_willThrow();

    goto LABEL_27;
  }

  v80 = v248[134];
  v81 = v248[132];
  v82 = v248[131];
  v83 = v248[130];
  v84 = v248[129];
  v85 = v248[124];
  v246 = v248[123];

  (*(v81 + 32))(v80, v83, v82);
  v232 = *(v85 + 56);
  v232(v84, 1, 1, v246);
  v86 = sub_1004D830C();
  v87 = v86;
  v88 = *(v86 + 16);
  if (!v88)
  {
    v226 = 0;
    v227 = _swiftEmptyArrayStorage;
    v240 = _swiftEmptyArrayStorage;
    goto LABEL_84;
  }

  v226 = 0;
  v89 = 0;
  v90 = v248[124];
  v236 = (v90 + 48);
  v231 = (v90 + 16);
  v91 = (v248[114] + 8);
  v92 = (v90 + 8);
  v93 = v86 + 40;
  v234 = -v88;
  v235 = v92;
  v227 = _swiftEmptyArrayStorage;
  v240 = _swiftEmptyArrayStorage;
  v237 = v86;
  v225 = v86 + 40;
  do
  {
    v94 = v93 + 16 * v89;
    v95 = v89 + 1;
    while (1)
    {
      v247 = v95;
      if ((v95 - 1) >= *(v87 + 16))
      {
        __break(1u);
      }

      v98 = v91;
      v99 = v1[129];
      v100 = v1[128];
      v101 = v1[123];
      v244 = v94;

      sub_1004D82BC();
      sub_1002FEA60(v99, v100);
      if ((*v236)(v100, 1, v101) == 1)
      {
        v102 = v1[129];
        v103 = v1[128];
        v104 = v1[126];
        v105 = v1[123];
        sub_10001074C(v102, &qword_10063EA80);
        sub_10001074C(v103, &qword_10063EA80);
        (*v231)(v102, v104, v105);
        v232(v102, 0, 1, v105);
      }

      else
      {
        sub_10001074C(v1[128], &qword_10063EA80);
      }

      v106 = v1[122];
      v107 = v1[119];
      v108 = v1[113];
      sub_1004D83EC();
      sub_1004D83AC();
      v242 = *v91;
      (*v91)(v107, v108);
      v109 = sub_1004D82FC();
      v110 = *(v109 - 8);
      v239 = *(v110 + 48);
      v238 = v110;
      if (v239(v106, 1, v109) == 1)
      {
        sub_10001074C(v1[122], &qword_10063EA78);
      }

      else
      {
        v111 = v1[122];
        v112 = sub_1004D82DC();
        v113 = v110;
        v114 = v112;
        v116 = v115;
        (*(v113 + 8))(v111, v109);
        v1[64] = sub_1004D82CC();
        v1[65] = v117;
        v1[56] = 45;
        v1[57] = 0xE100000000000000;
        sub_1002E6780();
        LOBYTE(v111) = sub_1004DE8BC();

        if (v111)
        {

          v118 = sub_1004D82CC();
          v120 = v119;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v240 = sub_1003E05CC(0, *(v240 + 2) + 1, 1, v240);
          }

          v122 = *(v240 + 2);
          v121 = *(v240 + 3);
          if (v122 >= v121 >> 1)
          {
            v240 = sub_1003E05CC((v121 > 1), v122 + 1, 1, v240);
          }

          *(v240 + 2) = v122 + 1;
          v123 = &v240[16 * v122];
          *(v123 + 4) = v118;
          *(v123 + 5) = v120;
        }

        else
        {
          v124 = v1[112];
          v249 = v114;
          v250 = v116;
          v259._countAndFlagsBits = 45;
          v259._object = 0xE100000000000000;
          sub_1004DD5FC(v259);
          sub_1004D837C();
          v125 = sub_1004D834C();
          v126 = v1;
          v127 = *(v125 - 8);
          v128 = (*(v127 + 48))(v124, 1, v125);
          v129 = v126[112];
          if (v128 == 1)
          {
            sub_10001074C(v129, &qword_10063EA70);
            v130._countAndFlagsBits = sub_1004DD51C();
            object = v130._object;
          }

          else
          {
            v132 = sub_1004D833C();
            object = v133;
            (*(v127 + 8))(v129, v125);
            v130._countAndFlagsBits = v132;
          }

          v130._object = object;
          sub_1004DD5FC(v130);

          v134 = v249;
          v135 = v250;
          v1 = v248;
          v91 = v98;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v240 = sub_1003E05CC(0, *(v240 + 2) + 1, 1, v240);
          }

          v137 = *(v240 + 2);
          v136 = *(v240 + 3);
          if (v137 >= v136 >> 1)
          {
            v240 = sub_1003E05CC((v136 > 1), v137 + 1, 1, v240);
          }

          *(v240 + 2) = v137 + 1;
          v138 = &v240[16 * v137];
          *(v138 + 4) = v134;
          *(v138 + 5) = v135;
        }
      }

      *(v1 + 1194) = 6;
      v139 = sub_1002FEAD0();
      if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v139) & 1) == 0)
      {
        (*v235)(v1[126], v1[123]);
LABEL_63:
        v87 = v237;
LABEL_64:
        v97 = v247;
        goto LABEL_37;
      }

      v233 = v109;
      v140 = v1[118];
      v141 = v1[113];
      v142 = v1[111];
      sub_1004D83EC();
      sub_1004D83CC();
      v242(v140, v141);
      v143 = sub_1004D836C();
      v144 = v91;
      v145 = *(v143 - 8);
      if ((*(v145 + 48))(v142, 1, v143) != 1)
      {
        break;
      }

      v96 = v1[111];
      (*v235)(v1[126], v1[123]);
      sub_10001074C(v96, &qword_10063EA68);
      v87 = v237;
      v97 = v247;
      v91 = v144;
LABEL_37:
      v94 = v244 + 16;
      v95 = v97 + 1;
      if (v234 + v95 == 1)
      {
        goto LABEL_84;
      }
    }

    v146 = v1[121];
    v147 = v1;
    v148 = v1[117];
    v229 = v147[113];
    v149 = v147[111];
    v228 = sub_1004D835C();
    v230 = v150;
    (*(v145 + 8))(v149, v143);
    sub_1004D83EC();
    sub_1004D83AC();
    v242(v148, v229);
    v91 = v144;
    if (v239(v146, 1, v233) == 1)
    {
      v151 = v147[121];
      (*v235)(v147[126], v147[123]);

      sub_10001074C(v151, &qword_10063EA78);
      v1 = v147;
      goto LABEL_63;
    }

    v152 = v147[121];
    v153 = sub_1004D82DC();
    v155 = v154;
    (*(v238 + 8))(v152, v233);
    v156 = Lyrics.scriptMap.unsafeMutableAddressor();
    v157 = *v156;
    v1 = v147;
    if (*(*v156 + 16))
    {

      v158 = v230;
      v159 = sub_100028F80(v228, v230);
      if (v160)
      {
        v161 = (*(v157 + 56) + 16 * v159);
        v162 = v161[1];
        v228 = *v161;

        v158 = v162;
      }
    }

    else
    {
      v158 = v230;
    }

    v249 = v153;
    v250 = v155;
    v260._countAndFlagsBits = 45;
    v260._object = 0xE100000000000000;
    sub_1004DD5FC(v260);
    v261._countAndFlagsBits = v228;
    v261._object = v158;
    sub_1004DD5FC(v261);
    v163 = v155;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v227 = sub_1003E05CC(0, *(v227 + 2) + 1, 1, v227);
    }

    v165 = *(v227 + 2);
    v164 = *(v227 + 3);
    if (v165 >= v164 >> 1)
    {
      v227 = sub_1003E05CC((v164 > 1), v165 + 1, 1, v227);
    }

    *(v227 + 2) = v165 + 1;
    v166 = &v227[16 * v165];
    *(v166 + 4) = v153;
    *(v166 + 5) = v163;
    v167 = Lyrics.defaultScript.unsafeMutableAddressor();
    v168 = v1[126];
    v169 = v1[123];
    if (v228 != *v167 || v158 != *(v167 + 1))
    {
      v170 = sub_1004DF08C();

      (*v235)(v168, v169);
      v87 = v237;
      if (v170)
      {
        goto LABEL_79;
      }

      goto LABEL_64;
    }

    (*v235)(v168, v169);
    v87 = v237;
LABEL_79:
    v226 = 1;
    v89 = v247;
    v93 = v225;
  }

  while (v234 + v247);
LABEL_84:
  v172 = v1[129];
  v173 = v1[127];
  v174 = v1[124];
  v175 = v1[123];

  sub_1002FEA60(v172, v173);
  if ((*(v174 + 48))(v173, 1, v175) == 1)
  {
    sub_10001074C(v1[127], &qword_10063EA80);
  }

  else
  {
    (*(v1[124] + 32))(v1[125], v1[127], v1[123]);
    if ((v226 & 1) != 0 || (v176 = v1[116], v177 = v1[114], v178 = v1[113], v179 = *v4, , sub_1004D83EC(), v180 = (*(*v179 + 256))(v176), , v181 = *(v177 + 8), v181(v176, v178), (v180 & 1) == 0))
    {
      (*(v1[124] + 8))(v1[125], v1[123]);
    }

    else
    {
      v182 = v1[120];
      v183 = v1[115];
      v184 = v1[113];
      sub_1004D83EC();
      sub_1004D83AC();
      v181(v183, v184);
      v185 = sub_1004D82FC();
      v186 = *(v185 - 8);
      if ((*(v186 + 48))(v182, 1, v185) == 1)
      {
        v187 = v1[120];
        (*(v1[124] + 8))(v1[125], v1[123]);
        sub_10001074C(v187, &qword_10063EA78);
      }

      else
      {
        v213 = v1[120];
        v214 = sub_1004D82DC();
        v216 = v215;
        (*(v186 + 8))(v213, v185);
        v249 = v214;
        v250 = v216;
        v262._countAndFlagsBits = 45;
        v262._object = 0xE100000000000000;
        sub_1004DD5FC(v262);
        v217 = Lyrics.defaultScript.unsafeMutableAddressor();
        v219 = *v217;
        v218 = v217[1];

        v263._countAndFlagsBits = v219;
        v263._object = v218;
        sub_1004DD5FC(v263);

        v221 = v249;
        v220 = v216;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v227 = sub_1003E05CC(0, *(v227 + 2) + 1, 1, v227);
        }

        v223 = *(v227 + 2);
        v222 = *(v227 + 3);
        if (v223 >= v222 >> 1)
        {
          v227 = sub_1003E05CC((v222 > 1), v223 + 1, 1, v227);
        }

        v1 = v248;
        (*(v248[124] + 8))(v248[125], v248[123]);
        *(v227 + 2) = v223 + 1;
        v224 = &v227[16 * v223];
        *(v224 + 4) = v221;
        *(v224 + 5) = v220;
      }
    }
  }

  v1[72] = v240;
  sub_100004CB8(&qword_10063EA98);
  sub_1002FEB24();
  sub_1004DD30C();

  sub_1004D7B8C();

  v188 = sub_1003E06D8(0, 1, 1, _swiftEmptyArrayStorage);
  v190 = *(v188 + 2);
  v189 = *(v188 + 3);
  if (v190 >= v189 >> 1)
  {
    v188 = sub_1003E06D8(v189 > 1, v190 + 1, 1, v188);
  }

  v191 = v1[110];
  v192 = v1[107];
  v193 = v1[106];
  *(v188 + 2) = v190 + 1;
  v195 = *(v192 + 32);
  v192 += 32;
  v194 = v195;
  v196 = (*(v192 + 48) + 32) & ~*(v192 + 48);
  v197 = *(v192 + 40);
  v195(&v188[v196 + v197 * v190], v191, v193);
  *(v1 + 1193) = 6;
  v198 = sub_1002FEAD0();
  v1[136] = v198;
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v198))
  {
    v1[76] = v227;
    sub_1004DD30C();

    sub_1004D7B8C();

    v200 = *(v188 + 2);
    v199 = *(v188 + 3);
    if (v200 >= v199 >> 1)
    {
      v188 = sub_1003E06D8(v199 > 1, v200 + 1, 1, v188);
    }

    v201 = v1[109];
    v202 = v1[106];
    *(v188 + 2) = v200 + 1;
    v194(&v188[v196 + v200 * v197], v201, v202);
    sub_1004D7B8C();
    v204 = *(v188 + 2);
    v203 = *(v188 + 3);
    if (v204 >= v203 >> 1)
    {
      v188 = sub_1003E06D8(v203 > 1, v204 + 1, 1, v188);
    }

    v205 = v1[108];
    v206 = v1[106];
    *(v188 + 2) = v204 + 1;
    v194(&v188[v196 + v204 * v197], v205, v206);
  }

  else
  {
  }

  v207 = v1[105];
  v208 = v1[104];
  v209 = v1[103];
  v210 = v1[102];
  sub_1004D807C();

  sub_1004D7A4C();
  (*(v209 + 16))(v208, v207, v210);
  sub_1004DC01C();
  v211 = swift_task_alloc();
  v1[137] = v211;
  *v211 = v1;
  v211[1] = sub_1002FA1B4;
  v212 = v1[98];

  return MusicDataRequest.response()(v212);
}

uint64_t sub_1002FA1B4()
{
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v2 = sub_1002FB6A4;
  }

  else
  {
    v2 = sub_1002FA2F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002FA2F4()
{
  v121 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 696);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 664);
  v6 = *(v0 + 632);
  v7 = *(v0 + 624);
  v119 = 0x3C726564616F4CLL;
  v120 = 0xE700000000000000;
  *(v0 + 560) = v6;
  v123._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v123);

  v124._countAndFlagsBits = 62;
  v124._object = 0xE100000000000000;
  sub_1004DD5FC(v124);
  v8 = v120;
  v107 = v119;
  v9 = Logger.lyrics.unsafeMutableAddressor();
  *(v0 + 1112) = v9;
  v10 = *(v2 + 16);
  *(v0 + 1120) = v10;
  *(v0 + 1128) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v112 = v9;
  v110 = v10;
  v10(v1);
  (*(v4 + 16))(v3, v7, v5);

  v11 = sub_1004D964C();
  v12 = sub_1004DDF9C();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 760);
  v15 = *(v0 + 696);
  v115 = *(v0 + 688);
  v16 = *(v0 + 680);
  v17 = *(v0 + 672);
  v18 = *(v0 + 664);
  if (v13)
  {
    v105 = *(v0 + 760);
    v19 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    *v19 = 136446466;
    v20 = sub_1002E5CC4(v107, v8, &v119);

    *(v19 + 4) = v20;
    *(v19 + 12) = 2082;
    v21 = sub_1002F46F0();
    v23 = v22;
    (*(v17 + 8))(v16, v18);
    v24 = sub_1002E5CC4(v21, v23, &v119);

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s loadLyrics(for:completion:) completed for %{public}s", v19, 0x16u);
    swift_arrayDestroy();

    v25 = *(v15 + 8);
    v25(v105, v115);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    v25 = *(v15 + 8);
    v25(v14, v115);
  }

  *(v0 + 1136) = v25;
  v26 = *(v0 + 1088);
  *(v0 + 1192) = 6;
  v27 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v26);
  if (v27)
  {
    v28 = 0xD000000000000011;
  }

  else
  {
    v28 = 1819112564;
  }

  if (v27)
  {
    v29 = 0x80000001004F5880;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  v30 = objc_opt_self();
  v31 = sub_1004DC04C();
  v33 = v32;
  isa = sub_1004D80FC().super.isa;
  sub_100010598(v31, v33);
  *(v0 + 536) = 0;
  v35 = [v30 JSONObjectWithData:isa options:0 error:v0 + 536];

  v36 = *(v0 + 536);
  if (!v35)
  {
    v55 = *(v0 + 784);
    v56 = *(v0 + 776);
    v57 = *(v0 + 768);
    v58 = v36;

    sub_1004D7F4C();

    swift_willThrow();
    (*(v56 + 8))(v55, v57);
LABEL_37:
    v73 = *(v0 + 712);
    v74 = *(v0 + 696);
    v75 = *(v0 + 688);
    v76 = Logger.lyrics.unsafeMutableAddressor();
    (*(v74 + 16))(v73, v76, v75);
    swift_errorRetain();
    v77 = sub_1004D964C();
    v78 = sub_1004DDF7C();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v79 = 138543362;
      swift_errorRetain();
      v81 = _swift_stdlib_bridgeErrorToNSError();
      *(v79 + 4) = v81;
      *v80 = v81;
      _os_log_impl(&_mh_execute_header, v77, v78, "Data request error: %{public}@", v79, 0xCu);
      sub_10001074C(v80, &qword_10063E4A0);
    }

    v106 = *(v0 + 1080);
    v82 = *(v0 + 1056);
    v114 = *(v0 + 1048);
    v118 = *(v0 + 1072);
    v111 = *(v0 + 840);
    v113 = *(v0 + 1032);
    v83 = *(v0 + 824);
    v109 = *(v0 + 816);
    v84 = *(v0 + 808);
    v85 = *(v0 + 800);
    v86 = *(v0 + 792);
    v87 = v77;
    v88 = *(v0 + 712);
    v89 = *(v0 + 696);
    v90 = *(v0 + 688);

    (*(v89 + 8))(v88, v90);
    swift_willThrow();

    (*(v85 + 8))(v84, v86);
    (*(v83 + 8))(v111, v109);
    sub_10001074C(v113, &qword_10063EA80);
    (*(v82 + 8))(v118, v114);

    v91 = *(v0 + 8);

    return v91();
  }

  v37 = v36;
  sub_1004DE8DC();
  swift_unknownObjectRelease();
  sub_100004CB8(&qword_10063EAA8);
  if (swift_dynamicCast())
  {
    v38 = *(v0 + 528);
  }

  else
  {
    v38 = 0;
  }

  if (!v38 || !*(v38 + 16))
  {
    goto LABEL_32;
  }

  v39 = sub_100028F80(1635017060, 0xE400000000000000);
  if ((v40 & 1) == 0)
  {
    goto LABEL_31;
  }

  v41 = v0 + 616;
  sub_10000904C(*(v38 + 56) + 32 * v39, v0 + 384);

  sub_100004CB8(&qword_10063EAB8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  if (!*(*v41 + 16))
  {
LABEL_31:

LABEL_32:

    goto LABEL_33;
  }

  sub_10000904C(*v41 + 32, v0 + 224);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v42 = *(v0 + 552);
  if (!*(v42 + 16))
  {
    goto LABEL_44;
  }

  v43 = sub_100028F80(0x7475626972747461, 0xEA00000000007365);
  if ((v44 & 1) == 0)
  {
    goto LABEL_44;
  }

  v45 = (v0 + 568);
  sub_10000904C(*(v42 + 56) + 32 * v43, v0 + 352);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v46 = *v45;
  if (!*(*v45 + 16))
  {
LABEL_44:

    goto LABEL_32;
  }

  v47 = sub_100028F80(v28, v29);
  v49 = v48;

  if ((v49 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_10000904C(*(v46 + 56) + 32 * v47, v0 + 320);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  v116 = v25;
  v50 = *(v0 + 656);
  v51 = *(v0 + 648);
  v108 = *(v0 + 640);
  sub_1004DD47C();
  v52 = sub_1004DD44C();
  v54 = v53;

  *(v0 + 1144) = v52;
  *(v0 + 1152) = v54;
  (*(v51 + 8))(v50, v108);
  if (v54 >> 60 == 15)
  {
LABEL_27:

LABEL_28:
    v25 = v116;
LABEL_33:
    v110(*(v0 + 752), v112, *(v0 + 688));

    v59 = sub_1004D964C();
    v60 = sub_1004DDF7C();

    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v0 + 752);
    v63 = *(v0 + 688);
    if (v61)
    {
      v64 = swift_slowAlloc();
      v117 = v25;
      v65 = swift_slowAlloc();
      v119 = v65;
      *v64 = 136446210;
      *(v0 + 544) = v38;
      sub_100004CB8(&qword_10063EAB0);
      v66 = sub_1004DD4DC();
      v68 = sub_1002E5CC4(v66, v67, &v119);

      *(v64 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v59, v60, "Invalid response: %{public}s", v64, 0xCu);
      sub_100008D24(v65);

      v117(v62, v63);
    }

    else
    {

      v25(v62, v63);
    }

    v69 = *(v0 + 784);
    v70 = *(v0 + 776);
    v71 = *(v0 + 768);
    sub_1002FD3A4();
    swift_allocError();
    *v72 = 1;
    swift_willThrow();
    (*(v70 + 8))(v69, v71);
    goto LABEL_37;
  }

  v25 = v116;
  if (!*(v46 + 16) || (v93 = sub_100028F80(0x6172615079616C70, 0xEA0000000000736DLL), (v94 & 1) == 0))
  {
    sub_100010584(v52, v54);
    goto LABEL_32;
  }

  v95 = v54;
  v96 = (v0 + 584);
  sub_10000904C(*(v46 + 56) + 32 * v93, v0 + 288);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_56;
  }

  v97 = *v96;
  if (!*(*v96 + 16) || (v98 = sub_100028F80(25705, 0xE200000000000000), (v99 & 1) == 0))
  {
    sub_100010584(v52, v95);
    goto LABEL_27;
  }

  sub_10000904C(*(v97 + 56) + 32 * v98, v0 + 256);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_56:
    sub_100010584(v52, v95);
    goto LABEL_28;
  }

  v100 = *(v0 + 488);
  *(v0 + 1160) = *(v0 + 480);
  *(v0 + 1168) = v100;
  v101 = objc_allocWithZone(MSVLyricsTTMLParser);
  sub_100010530(v52, v95);
  v102 = sub_1004D80FC().super.isa;
  v103 = [v101 initWithTTMLData:v102];
  *(v0 + 1176) = v103;

  sub_100010584(v52, v95);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 592;
  *(v0 + 24) = sub_1002FB1A0;
  v104 = swift_continuation_init();
  *(v0 + 136) = sub_100004CB8(&qword_10063EA00);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1002F726C;
  *(v0 + 104) = &unk_1005EDC80;
  *(v0 + 112) = v104;
  [v103 parseWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1002FB1A0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1184) = v1;
  if (v1)
  {

    v2 = sub_1002FBAF0;
  }

  else
  {
    v2 = sub_1002FB2E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002FB2E4()
{
  v14 = v0[146];
  v1 = v0[145];
  v18 = v0[147];
  v19 = v0[144];
  v17 = v0[143];
  v23 = v0[134];
  v2 = v0[132];
  v22 = v0[131];
  v20 = v0[135];
  v21 = v0[129];
  v16 = v0[105];
  v3 = v0[103];
  v15 = v0[102];
  v13 = v0[101];
  v4 = v0[100];
  v5 = v0[99];
  v6 = v0[98];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[74];
  type metadata accessor for Lyrics(0);
  swift_allocObject();
  v10 = Lyrics.init(identifier:songInfo:)(v1, v14, v9);

  sub_100010584(v17, v19);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v13, v5);
  (*(v3 + 8))(v16, v15);
  sub_10001074C(v21, &qword_10063EA80);
  (*(v2 + 8))(v23, v22);

  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_1002FB6A4()
{
  v1 = v0[89];
  v2 = v0[87];
  v3 = v0[86];
  v4 = Logger.lyrics.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = sub_1004D964C();
  v6 = sub_1004DDF7C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Data request error: %{public}@", v7, 0xCu);
    sub_10001074C(v8, &qword_10063E4A0);
  }

  v10 = v0[135];
  v11 = v0[132];
  v25 = v0[131];
  v26 = v0[134];
  v23 = v0[105];
  v24 = v0[129];
  v12 = v5;
  v13 = v0[103];
  v22 = v0[102];
  v14 = v0[101];
  v15 = v0[100];
  v16 = v0[99];
  v17 = v0[89];
  v18 = v0[87];
  v19 = v0[86];

  (*(v18 + 8))(v17, v19);
  swift_willThrow();

  (*(v15 + 8))(v14, v16);
  (*(v13 + 8))(v23, v22);
  sub_10001074C(v24, &qword_10063EA80);
  (*(v11 + 8))(v26, v25);

  v20 = v0[1];

  return v20();
}

uint64_t sub_1002FBAF0()
{
  v1 = v0[140];
  v2 = v0[139];
  v3 = v0[88];
  v4 = v0[86];
  swift_willThrow();
  v1(v3, v2, v4);
  swift_errorRetain();
  v5 = sub_1004D964C();
  v6 = sub_1004DDF7C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Parsing error: %{public}@", v7, 0xCu);
    sub_10001074C(v8, &qword_10063E4A0);
  }

  v10 = v0[147];
  v11 = v0[144];
  v12 = v0[143];
  v13 = v0[142];
  v14 = v0[97];
  v42 = v0[96];
  v44 = v0[98];
  v15 = v0[88];
  v16 = v0[86];

  v13(v15, v16);
  swift_willThrow();

  sub_100010584(v12, v11);
  (*(v14 + 8))(v44, v42);
  v17 = v0[89];
  v18 = v0[87];
  v19 = v0[86];
  v20 = Logger.lyrics.unsafeMutableAddressor();
  (*(v18 + 16))(v17, v20, v19);
  swift_errorRetain();
  v21 = sub_1004D964C();
  v22 = sub_1004DDF7C();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138543362;
    swift_errorRetain();
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v25;
    *v24 = v25;
    _os_log_impl(&_mh_execute_header, v21, v22, "Data request error: %{public}@", v23, 0xCu);
    sub_10001074C(v24, &qword_10063E4A0);
  }

  v26 = v0[135];
  v27 = v0[132];
  v41 = v0[131];
  v43 = v0[134];
  v39 = v0[105];
  v40 = v0[129];
  v28 = v21;
  v29 = v0[103];
  v38 = v0[102];
  v30 = v0[101];
  v31 = v0[100];
  v32 = v0[99];
  v33 = v0[89];
  v34 = v0[87];
  v35 = v0[86];

  (*(v34 + 8))(v33, v35);
  swift_willThrow();

  (*(v31 + 8))(v30, v32);
  (*(v29 + 8))(v39, v38);
  sub_10001074C(v40, &qword_10063EA80);
  (*(v27 + 8))(v43, v41);

  v36 = v0[1];

  return v36();
}

id LyricsLoader.init()()
{
  v1 = OBJC_IVAR___MusicLyricsLoader_operationQueue;
  v2 = [objc_allocWithZone(NSOperationQueue) init];
  [v2 setMaxConcurrentOperationCount:1];
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for LyricsLoader();
  return objc_msgSendSuper2(&v4, "init");
}

id LyricsLoader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LyricsLoader();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s11MusicCoreUI12LyricsLoaderC08supportsD03forSb0A3Kit4SongV_tFZ_0(uint64_t a1)
{
  v2 = sub_1004DC95C();
  v3 = *(v2 - 8);
  v196 = v2;
  v197 = v3;
  __chkstk_darwin(v2);
  v5 = &v185 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v194 = &v185 - v7;
  __chkstk_darwin(v8);
  v193 = (&v185 - v9);
  __chkstk_darwin(v10);
  v192 = (&v185 - v11);
  __chkstk_darwin(v12);
  v187 = &v185 - v13;
  __chkstk_darwin(v14);
  v186 = &v185 - v15;
  __chkstk_darwin(v16);
  v18 = &v185 - v17;
  __chkstk_darwin(v19);
  v21 = &v185 - v20;
  __chkstk_darwin(v22);
  v189 = (&v185 - v23);
  __chkstk_darwin(v24);
  v188 = &v185 - v25;
  __chkstk_darwin(v26);
  v191 = &v185 - v27;
  __chkstk_darwin(v28);
  v30 = &v185 - v29;
  v31 = sub_1004D966C();
  v32 = *(v31 - 8);
  v199 = v31;
  v200 = v32;
  __chkstk_darwin(v31);
  v34 = &v185 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v195 = &v185 - v36;
  __chkstk_darwin(v37);
  v190 = &v185 - v38;
  __chkstk_darwin(v39);
  v41 = &v185 - v40;
  __chkstk_darwin(v42);
  v44 = &v185 - v43;
  __chkstk_darwin(v45);
  v47 = &v185 - v46;
  if ((sub_1004DC94C() & 1) == 0 && (sub_1004DC85C() & 1) == 0)
  {
    v75 = Logger.lyrics.unsafeMutableAddressor();
    v76 = v199;
    v77 = v200;
    (*(v200 + 16))(v34, v75, v199);
    v78 = v196;
    v79 = v197;
    (*(v197 + 16))(v5, a1, v196);
    v80 = sub_1004D964C();
    v81 = sub_1004DDF9C();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v204[0] = v83;
      *v82 = 136446210;
      v84 = sub_1002F46F0();
      v85 = v78;
      v87 = v86;
      (*(v79 + 8))(v5, v85);
      v88 = sub_1002E5CC4(v84, v87, v204);

      *(v82 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v80, v81, "Loader supportsLyrics=false [hasLyrics and hasCustomLyrics were false] %{public}s", v82, 0xCu);
      sub_100008D24(v83);

      (*(v200 + 8))(v34, v199);
    }

    else
    {

      (*(v79 + 8))(v5, v78);
      (*(v77 + 8))(v34, v76);
    }

    v159 = 0;
    return v159 & 1;
  }

  v198 = a1;
  BagProvider.shared.unsafeMutableAddressor();

  v48 = BagProvider.bag.getter();

  if (v48)
  {
    if (([objc_opt_self() supportsLyricsForURLBag:v48] & 1) == 0)
    {
      v89 = [v48 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
      v90 = v198;
      v91 = v196;
      if (v89)
      {

        v92 = Logger.lyrics.unsafeMutableAddressor();
        (*(v200 + 16))(v47, v92, v199);
        v93 = v197;
        v94 = *(v197 + 16);
        v94(v30, v90, v91);
        v95 = v191;
        v94(v191, v90, v91);
        v96 = sub_1004D964C();
        v97 = sub_1004DDF9C();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v195 = v48;
          v99 = v98;
          v194 = swift_slowAlloc();
          *&v204[0] = v194;
          *v99 = 136446466;
          v193 = v96;
          v100 = sub_1004DC85C();
          if (v100)
          {
            v101 = 1702195828;
          }

          else
          {
            v101 = 0x65736C6166;
          }

          LODWORD(v192) = v97;
          v102 = v91;
          if (v100)
          {
            v103 = 0xE400000000000000;
          }

          else
          {
            v103 = 0xE500000000000000;
          }

          v104 = *(v93 + 8);
          v104(v30, v102);
          v105 = sub_1002E5CC4(v101, v103, v204);

          *(v99 + 4) = v105;
          *(v99 + 12) = 2082;
          v106 = sub_1002F46F0();
          v108 = v107;
          v104(v95, v102);
          v109 = sub_1002E5CC4(v106, v108, v204);

          *(v99 + 14) = v109;
          v110 = v193;
          _os_log_impl(&_mh_execute_header, v193, v192, "Loader supportsLyrics=%{public}s [no lyrics keys in bag] %{public}s", v99, 0x16u);
          swift_arrayDestroy();

          v48 = v195;
        }

        else
        {

          v180 = *(v93 + 8);
          v180(v95, v91);
          v180(v30, v91);
        }

        (*(v200 + 8))(v47, v199);
      }

      else
      {
        v160 = Logger.lyrics.unsafeMutableAddressor();
        (*(v200 + 16))(v44, v160, v199);
        v161 = v197;
        v162 = *(v197 + 16);
        v163 = v188;
        v162(v188, v90, v91);
        v164 = v189;
        v162(v189, v90, v91);
        v165 = sub_1004D964C();
        v166 = sub_1004DDF9C();
        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          v195 = v48;
          v168 = v167;
          v193 = swift_slowAlloc();
          *&v204[0] = v193;
          *v168 = 136446466;
          v192 = v165;
          v169 = sub_1004DC85C();
          if (v169)
          {
            v170 = 1702195828;
          }

          else
          {
            v170 = 0x65736C6166;
          }

          v194 = v44;
          v171 = v164;
          if (v169)
          {
            v172 = 0xE400000000000000;
          }

          else
          {
            v172 = 0xE500000000000000;
          }

          LODWORD(v191) = v166;
          v173 = *(v161 + 8);
          v173(v163, v91);
          v174 = sub_1002E5CC4(v170, v172, v204);

          *(v168 + 4) = v174;
          *(v168 + 12) = 2082;
          v175 = sub_1002F46F0();
          v177 = v176;
          v173(v171, v91);
          v178 = sub_1002E5CC4(v175, v177, v204);

          *(v168 + 14) = v178;
          v179 = v192;
          _os_log_impl(&_mh_execute_header, v192, v191, "Loader supportsLyrics=%{public}s [no musicSubscription key in bag] %{public}s", v168, 0x16u);
          swift_arrayDestroy();

          v48 = v195;

          (*(v200 + 8))(v194, v199);
        }

        else
        {

          v181 = *(v161 + 8);
          v181(v164, v91);
          v181(v163, v91);
          (*(v200 + 8))(v44, v199);
        }
      }

      v182 = sub_1004DC85C();

      v159 = v182;
      return v159 & 1;
    }

    v49 = v199;
    v50 = v200;
    v52 = v196;
    v51 = v197;
    v53 = v192;
  }

  else
  {
    v54 = Logger.lyrics.unsafeMutableAddressor();
    v55 = v199;
    (*(v200 + 16))(v41, v54, v199);
    v51 = v197;
    v56 = v198;
    v57 = *(v197 + 16);
    v58 = v196;
    v57(v21, v198, v196);
    v57(v18, v56, v58);
    v59 = sub_1004D964C();
    v60 = sub_1004DDF9C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v191 = swift_slowAlloc();
      *&v204[0] = v191;
      *v61 = 136446466;
      v189 = v59;
      v62 = sub_1004DC85C();
      if (v62)
      {
        v63 = 1702195828;
      }

      else
      {
        v63 = 0x65736C6166;
      }

      if (v62)
      {
        v64 = 0xE400000000000000;
      }

      else
      {
        v64 = 0xE500000000000000;
      }

      v65 = v196;
      LODWORD(v188) = v60;
      v66 = *(v197 + 8);
      v66(v21, v196);
      v67 = sub_1002E5CC4(v63, v64, v204);
      v51 = v197;

      *(v61 + 4) = v67;
      *(v61 + 12) = 2082;
      v68 = sub_1002F46F0();
      v70 = v69;
      v66(v18, v65);
      v71 = v199;
      v50 = v200;
      v72 = sub_1002E5CC4(v68, v70, v204);

      *(v61 + 14) = v72;
      v73 = v189;
      _os_log_impl(&_mh_execute_header, v189, v188, "Loader supportsLyrics=%{public}s [bag is nil] %{public}s", v61, 0x16u);
      swift_arrayDestroy();

      v74 = v41;
      v49 = v71;
      (*(v50 + 8))(v74, v71);
      v52 = v65;
      v53 = v192;
    }

    else
    {

      v111 = *(v51 + 8);
      v112 = v18;
      v52 = v196;
      v111(v112, v196);
      v111(v21, v52);
      v113 = v200;
      (*(v200 + 8))(v41, v55);
      v53 = v192;
      v49 = v55;
      v50 = v113;
    }
  }

  v114 = sub_1004DC94C();
  v115 = v195;
  v116 = v193;
  if (v114 & 1) != 0 && (static ApplicationCapabilities.shared.getter(v202), v117 = v203, , sub_100073E60(v202), v118 = sub_1001202D0(2, v117), , (v118))
  {
    static ApplicationCapabilities.shared.getter(v204);
    sub_100073E60(v204);
    if (BYTE10(v204[0]))
    {
      v159 = 1;
      return v159 & 1;
    }

    v119 = Logger.lyrics.unsafeMutableAddressor();
    v120 = v190;
    (*(v50 + 16))(v190, v119, v49);
    v121 = *(v51 + 16);
    v122 = v186;
    v123 = v198;
    v121(v186, v198, v52);
    v124 = v51;
    v125 = v49;
    v126 = v187;
    v121(v187, v123, v52);
    v127 = sub_1004D964C();
    v128 = sub_1004DDF9C();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v201 = v197;
      *v129 = 67240450;
      v130 = sub_1004DC85C() & 1;
      v131 = *(v124 + 8);
      v131(v122, v52);
      *(v129 + 4) = v130;
      *(v129 + 8) = 2082;
      v132 = sub_1002F46F0();
      v133 = v126;
      v134 = v200;
      v136 = v135;
      v131(v133, v52);
      v137 = sub_1002E5CC4(v132, v136, &v201);

      *(v129 + 10) = v137;
      _os_log_impl(&_mh_execute_header, v127, v128, "Loader supportsLyrics=%{BOOL,public}d [not supported by subscription] subscriptionCapabilities.contains(.catalogLyricsViewing)=false %{public}s", v129, 0x12u);
      sub_100008D24(v197);

      (*(v134 + 8))(v190, v199);
    }

    else
    {
      v184 = *(v124 + 8);
      v184(v122, v52);

      v184(v126, v52);
      (*(v200 + 8))(v120, v125);
    }
  }

  else
  {
    v138 = Logger.lyrics.unsafeMutableAddressor();
    (*(v50 + 16))(v115, v138, v49);
    v139 = *(v51 + 16);
    v140 = v198;
    v139(v53, v198, v52);
    v141 = v116;
    v139(v116, v140, v52);
    v142 = v194;
    v139(v194, v140, v52);
    v143 = sub_1004D964C();
    v144 = sub_1004DDF9C();
    if (os_log_type_enabled(v143, v144))
    {
      v145 = swift_slowAlloc();
      v197 = swift_slowAlloc();
      v201 = v197;
      *v145 = 67240962;
      LODWORD(v192) = v144;
      v146 = sub_1004DC85C() & 1;
      v147 = *(v51 + 8);
      v147(v53, v52);
      *(v145 + 4) = v146;
      v148 = v141;
      v149 = v200;
      *(v145 + 8) = 1026;
      v150 = sub_1004DC94C() & 1;
      v147(v148, v52);
      *(v145 + 10) = v150;
      *(v145 + 14) = 1026;
      static ApplicationCapabilities.shared.getter(v204);
      v151 = v205;

      sub_100073E60(v204);
      v152 = sub_1001202D0(2, v151);

      *(v145 + 16) = v152 & 1;
      *(v145 + 20) = 2082;
      v153 = v194;
      v154 = sub_1002F46F0();
      v156 = v155;
      v147(v153, v52);
      v157 = sub_1002E5CC4(v154, v156, &v201);

      *(v145 + 22) = v157;
      _os_log_impl(&_mh_execute_header, v143, v192, "Loader supportsLyrics=%{BOOL,public}d [can't support store lyrics] song.hasLyrics=%{BOOL,public}d allowsSubscriptionContent=%{BOOL,public}d %{public}s", v145, 0x1Eu);
      sub_100008D24(v197);

      (*(v149 + 8))(v195, v199);
    }

    else
    {
      v158 = *(v51 + 8);
      v158(v141, v52);
      v158(v53, v52);

      v158(v142, v52);
      (*(v200 + 8))(v115, v199);
    }
  }

  v159 = sub_1004DC85C();
  return v159 & 1;
}

unint64_t sub_1002FD3A4()
{
  result = qword_10063E9E0;
  if (!qword_10063E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063E9E0);
  }

  return result;
}

unint64_t sub_1002FD3F8()
{
  result = qword_10063E9F0;
  if (!qword_10063E9F0)
  {
    sub_1004DC95C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063E9F0);
  }

  return result;
}

uint64_t _s11MusicCoreUI12LyricsLoaderC08supportsD03forSbSo11MPModelSongC_tFZ_0(void *a1)
{
  v194 = sub_1004D966C();
  v2 = *(v194 - 8);
  __chkstk_darwin(v194);
  v4 = &v185 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v185 - v6;
  __chkstk_darwin(v8);
  v10 = &v185 - v9;
  __chkstk_darwin(v11);
  v13 = &v185 - v12;
  __chkstk_darwin(v14);
  v16 = &v185 - v15;
  __chkstk_darwin(v17);
  v19 = &v185 - v18;
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v185 - v22;
  v193 = [a1 lyrics];
  if (v193)
  {
    if ([a1 hasVideo])
    {

      goto LABEL_4;
    }

    v191 = v10;
    v192 = v2;
    v36 = v193;
    v37 = [v193 hasLibraryLyrics];
    if (([v36 hasStoreLyrics] & 1) == 0 && !v37)
    {
      v38 = Logger.lyrics.unsafeMutableAddressor();
      v39 = v192;
      v40 = v194;
      (*(v192 + 16))(v7, v38, v194);
      v41 = a1;
      v42 = v193;
      v43 = sub_1004D964C();
      v44 = sub_1004DDF9C();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        *&v198[0] = v193;
        *v45 = 67240962;
        *(v45 + 4) = [v42 hasLibraryLyrics];
        *(v45 + 8) = 1026;
        *(v45 + 10) = [v42 hasStoreLyrics];

        *(v45 + 14) = 2082;
        v46 = [v41 title];
        if (v46)
        {
          v47 = v46;
          v48 = sub_1004DD43C();
          v50 = v49;
        }

        else
        {
          v48 = 0;
          v50 = 0;
        }

        *&v200[0] = v48;
        *(&v200[0] + 1) = v50;
        sub_100004CB8(&qword_100644AB0);
        v92 = sub_1004DD4DC();
        v94 = sub_1002E5CC4(v92, v93, v198);

        *(v45 + 16) = v94;
        *(v45 + 24) = 2082;
        v95 = [v41 identifiers];
        v96 = [v95 description];
        v97 = sub_1004DD43C();
        v99 = v98;

        v100 = sub_1002E5CC4(v97, v99, v198);

        *(v45 + 26) = v100;
        _os_log_impl(&_mh_execute_header, v43, v44, "Loader supportsLyrics=false [no lyrics found] lyrics.hasLibraryLyrics=%{BOOL,public}d lyrics.hasStoreLyrics=%{BOOL,public}d song.title=%{public}s song.identifiers=%{public}s", v45, 0x22u);
        swift_arrayDestroy();

        (*(v192 + 8))(v7, v194);
      }

      else
      {

        (*(v39 + 8))(v7, v40);
      }

      return 0;
    }

    v190 = v37;
    BagProvider.shared.unsafeMutableAddressor();

    v51 = BagProvider.bag.getter();

    if (v51)
    {
      v52 = [objc_opt_self() supportsLyricsForURLBag:v51];
      v53 = v192;
      if ((v52 & 1) == 0)
      {
        v191 = v51;
        v79 = [v51 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
        if (v79)
        {

          v80 = Logger.lyrics.unsafeMutableAddressor();
          v81 = v194;
          (*(v53 + 16))(v23, v80, v194);
          v82 = v53;
          v83 = a1;
          v84 = sub_1004D964C();
          v85 = sub_1004DDF9C();

          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v189 = swift_slowAlloc();
            *&v198[0] = v189;
            *v86 = 67240706;
            *(v86 + 4) = v190;
            *(v86 + 8) = 2082;
            v87 = [v83 title];
            if (v87)
            {
              v88 = v87;
              v89 = sub_1004DD43C();
              v91 = v90;
            }

            else
            {
              v89 = 0;
              v91 = 0;
            }

            *&v200[0] = v89;
            *(&v200[0] + 1) = v91;
            sub_100004CB8(&qword_100644AB0);
            v158 = sub_1004DD4DC();
            v160 = sub_1002E5CC4(v158, v159, v198);

            *(v86 + 10) = v160;
            *(v86 + 18) = 2082;
            v161 = [v83 identifiers];
            v162 = [v161 description];
            v163 = sub_1004DD43C();
            v165 = v164;

            v166 = sub_1002E5CC4(v163, v165, v198);

            *(v86 + 20) = v166;
            _os_log_impl(&_mh_execute_header, v84, v85, "Loader supportsLyrics=%{BOOL,public}d [no lyrics keys in bag] song.title=%{public}s song.identifiers=%{public}s", v86, 0x1Cu);
            swift_arrayDestroy();

            (*(v192 + 8))(v23, v194);
            return v190;
          }

          (*(v82 + 8))(v23, v81);
        }

        else
        {
          v101 = Logger.lyrics.unsafeMutableAddressor();
          v102 = v194;
          (*(v53 + 16))(v19, v101, v194);
          v103 = v53;
          v104 = a1;
          v105 = sub_1004D964C();
          v106 = sub_1004DDF9C();

          if (os_log_type_enabled(v105, v106))
          {
            v107 = swift_slowAlloc();
            v189 = swift_slowAlloc();
            *&v198[0] = v189;
            *v107 = 67240706;
            *(v107 + 4) = v190;
            *(v107 + 8) = 2082;
            v108 = [v104 title];
            if (v108)
            {
              v109 = v108;
              v110 = sub_1004DD43C();
              v112 = v111;
            }

            else
            {
              v110 = 0;
              v112 = 0;
            }

            *&v200[0] = v110;
            *(&v200[0] + 1) = v112;
            sub_100004CB8(&qword_100644AB0);
            v167 = sub_1004DD4DC();
            v169 = sub_1002E5CC4(v167, v168, v198);

            *(v107 + 10) = v169;
            *(v107 + 18) = 2082;
            v170 = [v104 identifiers];
            v171 = [v170 description];
            v172 = sub_1004DD43C();
            v174 = v173;

            v175 = sub_1002E5CC4(v172, v174, v198);

            *(v107 + 20) = v175;
            _os_log_impl(&_mh_execute_header, v105, v106, "Loader supportsLyrics=%{BOOL,public}d [no musicSubscription key in bag] song.title=%{public}s song.identifiers=%{public}s", v107, 0x1Cu);
            swift_arrayDestroy();

            (*(v192 + 8))(v19, v194);
            return v190;
          }

          (*(v103 + 8))(v19, v102);
        }

        return v190;
      }

      v54 = v13;

      v55 = v194;
    }

    else
    {
      v66 = Logger.lyrics.unsafeMutableAddressor();
      v53 = v192;
      v55 = v194;
      (*(v192 + 16))(v16, v66, v194);
      v67 = a1;
      v68 = sub_1004D964C();
      v69 = sub_1004DDF9C();

      v54 = v13;
      if (os_log_type_enabled(v68, v69))
      {
        v187 = v69;
        v188 = v13;
        v189 = v68;
        v70 = swift_slowAlloc();
        v186 = swift_slowAlloc();
        *&v198[0] = v186;
        *v70 = 67240706;
        *(v70 + 4) = v190;
        v71 = v70;
        *(v70 + 8) = 2082;
        v72 = v67;
        v73 = [v67 title];
        v74 = &selRef_scaledValueForValue_;
        if (v73)
        {
          v75 = v73;
          v76 = sub_1004DD43C();
          v78 = v77;
        }

        else
        {
          v76 = 0;
          v78 = 0;
        }

        *&v200[0] = v76;
        *(&v200[0] + 1) = v78;
        sub_100004CB8(&qword_100644AB0);
        v113 = sub_1004DD4DC();
        v115 = sub_1002E5CC4(v113, v114, v198);

        *(v71 + 10) = v115;
        *(v71 + 18) = 2082;
        v116 = [v72 identifiers];
        v117 = [v116 description];
        v118 = sub_1004DD43C();
        v120 = v119;

        v121 = sub_1002E5CC4(v118, v120, v198);

        *(v71 + 20) = v121;
        v122 = v189;
        _os_log_impl(&_mh_execute_header, v189, v187, "Loader supportsLyrics=%{BOOL,public}d [bag is nil] song.title=%{public}s song.identifiers=%{public}s", v71, 0x1Cu);
        swift_arrayDestroy();

        v55 = v194;
        (*(v53 + 8))(v16, v194);
        v54 = v188;
LABEL_38:
        if ([v193 v74[393]] && (static ApplicationCapabilities.shared.getter(v198), v123 = v199, , sub_100073E60(v198), v124 = sub_1001202D0(2, v123), , (v124 & 1) != 0))
        {
          static ApplicationCapabilities.shared.getter(v200);
          sub_100073E60(v200);
          if (BYTE10(v200[0]))
          {

            return 1;
          }

          v125 = Logger.lyrics.unsafeMutableAddressor();
          (*(v53 + 16))(v54, v125, v55);
          v126 = a1;
          v127 = sub_1004D964C();
          v128 = sub_1004DDF9C();

          if (os_log_type_enabled(v127, v128))
          {
            v129 = swift_slowAlloc();
            v191 = swift_slowAlloc();
            v197 = v191;
            *v129 = 67240706;
            *(v129 + 4) = v190;
            *(v129 + 8) = 2082;
            v130 = [v126 title];
            if (v130)
            {
              v131 = v130;
              v132 = sub_1004DD43C();
              v134 = v133;
            }

            else
            {
              v132 = 0;
              v134 = 0;
            }

            v195 = v132;
            v196 = v134;
            sub_100004CB8(&qword_100644AB0);
            v176 = sub_1004DD4DC();
            v178 = sub_1002E5CC4(v176, v177, &v197);

            *(v129 + 10) = v178;
            *(v129 + 18) = 2082;
            v179 = [v126 identifiers];
            v180 = [v179 description];
            v181 = sub_1004DD43C();
            v183 = v182;

            v184 = sub_1002E5CC4(v181, v183, &v197);

            *(v129 + 20) = v184;
            _os_log_impl(&_mh_execute_header, v127, v128, "Loader supportsLyrics=%{BOOL,public}d [not supported by subscription] subscriptionCapabilities.contains(.catalogLyricsViewing)=false song.title=%{public}s song.identifiers=%{public}s", v129, 0x1Cu);
            swift_arrayDestroy();

            (*(v192 + 8))(v54, v194);
            return v190;
          }

          (*(v53 + 8))(v54, v55);
        }

        else
        {
          v135 = Logger.lyrics.unsafeMutableAddressor();
          v136 = v191;
          (*(v53 + 16))(v191, v135, v55);
          v137 = a1;
          v138 = v193;
          v139 = sub_1004D964C();
          v140 = sub_1004DDF9C();

          if (os_log_type_enabled(v139, v140))
          {
            v141 = swift_slowAlloc();
            v193 = swift_slowAlloc();
            v197 = v193;
            *v141 = 67241218;
            *(v141 + 4) = v190;
            *(v141 + 8) = 1026;
            *(v141 + 10) = [v138 v74[393]];

            *(v141 + 14) = 1026;
            static ApplicationCapabilities.shared.getter(v200);
            v142 = v201;

            sub_100073E60(v200);
            v143 = sub_1001202D0(2, v142);

            *(v141 + 16) = v143 & 1;
            *(v141 + 20) = 2082;
            v144 = [v137 title];
            if (v144)
            {
              v145 = v144;
              v146 = sub_1004DD43C();
              v148 = v147;
            }

            else
            {
              v146 = 0;
              v148 = 0;
            }

            v195 = v146;
            v196 = v148;
            sub_100004CB8(&qword_100644AB0);
            v149 = sub_1004DD4DC();
            v151 = sub_1002E5CC4(v149, v150, &v197);

            *(v141 + 22) = v151;
            *(v141 + 30) = 2082;
            v152 = [v137 identifiers];
            v153 = [v152 description];
            v154 = sub_1004DD43C();
            v156 = v155;

            v157 = sub_1002E5CC4(v154, v156, &v197);

            *(v141 + 32) = v157;
            _os_log_impl(&_mh_execute_header, v139, v140, "Loader supportsLyrics=%{BOOL,public}d [can't support store lyrics] lyrics.hasStoreLyrics=%{BOOL,public}d allowsSubscriptionContent=%{BOOL,public}d song.title=%{public}s song.identifiers=%{public}s", v141, 0x28u);
            swift_arrayDestroy();

            (*(v192 + 8))(v191, v194);
            return v190;
          }

          (*(v53 + 8))(v136, v55);
        }

        return v190;
      }

      (*(v53 + 8))(v16, v55);
    }

    v74 = &selRef_scaledValueForValue_;
    goto LABEL_38;
  }

LABEL_4:
  v24 = Logger.lyrics.unsafeMutableAddressor();
  v25 = v194;
  (*(v2 + 16))(v4, v24, v194);
  v26 = v2;
  v27 = a1;
  v28 = sub_1004D964C();
  v29 = sub_1004DDF9C();

  if (os_log_type_enabled(v28, v29))
  {
    v192 = v26;
    v30 = swift_slowAlloc();
    *&v198[0] = swift_slowAlloc();
    *v30 = 136446466;
    v31 = [v27 title];
    if (v31)
    {
      v32 = v31;
      v33 = sub_1004DD43C();
      v35 = v34;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    *&v200[0] = v33;
    *(&v200[0] + 1) = v35;
    sub_100004CB8(&qword_100644AB0);
    v56 = sub_1004DD4DC();
    v58 = sub_1002E5CC4(v56, v57, v198);

    *(v30 + 4) = v58;
    *(v30 + 12) = 2082;
    v59 = [v27 identifiers];
    v60 = [v59 description];
    v61 = sub_1004DD43C();
    v63 = v62;

    v64 = sub_1002E5CC4(v61, v63, v198);

    *(v30 + 14) = v64;
    _os_log_impl(&_mh_execute_header, v28, v29, "Loader supportsLyrics=false [MPModelLyrics was nil] song.title=%{public}s song.identifiers=%{public}s", v30, 0x16u);
    swift_arrayDestroy();

    (*(v192 + 8))(v4, v194);
  }

  else
  {

    (*(v26 + 8))(v4, v25);
  }

  return 0;
}

unint64_t sub_1002FE740()
{
  result = qword_10063EA20;
  if (!qword_10063EA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10063EA20);
  }

  return result;
}

unint64_t sub_1002FE7B4()
{
  result = qword_10063EA30;
  if (!qword_10063EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063EA30);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for Corner(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1002FE828(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002FE870(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002FE8E0()
{
  v1 = sub_100004CB8(&qword_10063EA60);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_1002FE98C(void *a1, uint64_t a2)
{
  v5 = *(sub_100004CB8(&qword_10063EA60) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_1002F7568(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1002FEA48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002FEA60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_10063EA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002FEAD0()
{
  result = qword_10063EA90;
  if (!qword_10063EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063EA90);
  }

  return result;
}

unint64_t sub_1002FEB24()
{
  result = qword_10063EAA0;
  if (!qword_10063EAA0)
  {
    sub_100008DE4(&qword_10063EA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063EAA0);
  }

  return result;
}

uint64_t Lyrics.StateManager.__allocating_init()()
{
  v0 = swift_allocObject();
  Lyrics.StateManager.init()();
  return v0;
}

uint64_t Lyrics.StateManager.init()()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for Lyrics.StateManager.State(0);
  v4 = v2 + *(v3 + 20);
  v5 = enum case for ScenePhase.inactive(_:);
  v6 = sub_1004D9CEC();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  v7 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v4 + *(v7 + 20)) = 0;
  *(v4 + *(v7 + 24)) = 0;
  v8 = *(v3 + 24);
  v9 = sub_1004D826C();
  (*(*(v9 - 8) + 56))(v2 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist) = 0;
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v11 = sub_1004DC95C();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__showTranslationButton) = 0;
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__needsLyricsReset) = 0;
  v12 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation;
  v13 = type metadata accessor for Lyrics.Translation(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  v15 = type metadata accessor for Lyrics.Transliteration(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__metricsPage;
  v17 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader) = [objc_allocWithZone(type metadata accessor for LyricsLoader()) init];
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask) = 0;
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__optionsObserver) = 0;
  v18 = [objc_allocWithZone(MPCLyricsReportingController) init];
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) = v18;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  v19 = *LyricsOptionsManager.shared.unsafeMutableAddressor();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = *(*v19 + 224);

  v21(sub_1002FFE64, v20);

  swift_getKeyPath();
  sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager);
  sub_1004D86AC();

  return v1;
}

uint64_t sub_1002FF018()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t Lyrics.StateManager.state.setter(uint64_t a1)
{
  v3 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_10030C464(v1 + v9, v8, type metadata accessor for Lyrics.StateManager.State);
  v10 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(v8, a1);
  sub_10030C4CC(v8, type metadata accessor for Lyrics.StateManager.State);
  if (v10)
  {
    sub_10030C464(a1, v8, type metadata accessor for Lyrics.StateManager.State);
    sub_10030C464(v1 + v9, v5, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_10030CBB8(v8, v1 + v9, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002FFFC4(v5);
    sub_10030C4CC(v5, type metadata accessor for Lyrics.StateManager.State);
    sub_10030C4CC(v8, type metadata accessor for Lyrics.StateManager.State);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v1;
    v13[-1] = a1;
    v13[1] = v1;
    sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager);
    sub_1004D86AC();
  }

  return sub_10030C4CC(a1, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t sub_1002FF304(char a1, uint64_t *a2)
{
  v3 = a1 & 1;
  v4 = *a2;
  result = swift_beginAccess();
  if (*(v2 + v4) == v3)
  {
    *(v2 + v4) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager);
    sub_1004D86AC();
  }

  return result;
}

void sub_1002FF420(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader;
  v5 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
  type metadata accessor for LyricsLoader();
  v6 = v5;
  v7 = sub_1004DE5FC();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager);
    sub_1004D86AC();
  }
}

void sub_1002FF584(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController;
  v5 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController);
  sub_100006F10(0, &qword_10063F110);
  v6 = v5;
  v7 = sub_1004DE5FC();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager);
    sub_1004D86AC();
  }
}

uint64_t sub_1002FF6F8(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_10063EB50);
  __chkstk_darwin(v2 - 8);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v50 - v6;
  __chkstk_darwin(v8);
  v10 = &v50 - v9;
  v11 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    swift_getKeyPath();
    v19 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
    v63 = v18;
    v20 = sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager);
    v59 = v19;
    v60 = v20;
    sub_1004D86BC();

    v21 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_10030C464(v18 + v21, v16, type metadata accessor for Lyrics.StateManager.State);
    sub_10030C464(v16, v13, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_10030C4CC(v16, type metadata accessor for Lyrics.StateManager.State);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      return sub_10030C4CC(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
    }

    v57 = v4;
    v58 = a1;
    v22 = *v13;
    v23 = *(v13 + 1);
    v25 = *(v13 + 2);
    v24 = *(v13 + 3);
    v26 = v13[32];
    v27 = *(sub_100004CB8(&qword_10063EB38) + 48);
    v28 = sub_1004DC95C();
    v29 = (*(*(v28 - 8) + 8))(&v13[v27], v28);
    if (v26 != 1)
    {
    }

    v30 = v23;
    v55 = v25;
    v56 = v24;
    v31 = (*v22 + 312);
    v32 = *v31;
    v33 = v31;
    (*v31)(v29);
    v34 = type metadata accessor for Lyrics.Transliteration(0);
    v35 = *(v34 - 8);
    v36 = *(v35 + 48);
    v53 = v34;
    if ((v36)(v10, 1) == 1)
    {

      sub_10030D7EC(v22, v30, v55, v56, 1);
      v37 = v10;
    }

    else
    {
      v52 = v35;
      v50 = v33;
      v51 = v32;
      v54 = v22;
      sub_10001074C(v10, &qword_10063EB50);
      v38 = sub_1003C9C54(3, v58);
      v39 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

      LODWORD(v39) = v39(3) & 1;

      if (v38 == v39)
      {
        sub_10030D7EC(v54, v30, v55, v56, 1);
      }

      v58 = v30;
      (*(*v54 + 440))(v40);
      swift_getKeyPath();
      v62 = v18;
      sub_1004D86BC();

      v41 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
      swift_beginAccess();
      sub_1000108DC(v18 + v41, v7, &qword_10063EB50);
      v42 = v53;
      v43 = v36(v7, 1, v53);
      sub_10001074C(v7, &qword_10063EB50);
      v44 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__needsLyricsReset;
      v45 = swift_beginAccess();
      if (*(v18 + v44) == 1)
      {
        *(v18 + v44) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v50 - 2) = v18;
        *(&v50 - 8) = 1;
        v61 = v18;
        sub_1004D86AC();
      }

      v47 = v57;
      if (v43 == 1)
      {
        (*(v52 + 56))(v57, 1, 1, v42);
        v48 = v54;
      }

      else
      {
        v48 = v54;
        v51(v45);
      }

      v49 = swift_getKeyPath();
      __chkstk_darwin(v49);
      *(&v50 - 2) = v18;
      *(&v50 - 1) = v47;
      v61 = v18;
      sub_1004D86AC();
      sub_10030D7EC(v48, v58, v55, v56, 1);

      v37 = v47;
    }

    return sub_10001074C(v37, &qword_10063EB50);
  }

  return result;
}

uint64_t Lyrics.StateManager.State.lyrics.getter()
{
  v1 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10030C464(v0, v3, type metadata accessor for Lyrics.StateManager.State.Loading);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10030C4CC(v3, type metadata accessor for Lyrics.StateManager.State.Loading);
    return 0;
  }

  v4 = *v3;
  v5 = v3[32];
  v6 = *(sub_100004CB8(&qword_10063EB38) + 48);
  v7 = sub_1004DC95C();
  (*(*(v7 - 8) + 8))(&v3[v6], v7);
  if ((v5 & 1) == 0)
  {

    return 0;
  }

  return v4;
}

uint64_t sub_1002FFFC4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100004CB8(&qword_10063F140);
  __chkstk_darwin(v4 - 8);
  v6 = &v79[-v5];
  v7 = sub_1004D9CEC();
  v92 = *(v7 - 8);
  __chkstk_darwin(v7);
  v91 = &v79[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  __chkstk_darwin(v85);
  v93 = &v79[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100004CB8(&qword_10063EB50);
  __chkstk_darwin(v10 - 8);
  v88 = &v79[-v11];
  v12 = sub_100004CB8(&qword_10063EB48);
  __chkstk_darwin(v12 - 8);
  v87 = &v79[-v13];
  v100 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v100);
  v90 = &v79[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v79[-v16];
  v18 = sub_1004D966C();
  v96 = *(v18 - 8);
  v97 = v18;
  __chkstk_darwin(v18);
  v20 = &v79[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v99 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v99);
  v86 = &v79[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v24 = &v79[-v23];
  __chkstk_darwin(v25);
  v27 = &v79[-v26];
  swift_getKeyPath();
  v28 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v102[3] = v2;
  v29 = sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager);
  v89 = v28;
  v94 = v29;
  sub_1004D86BC();

  v30 = v2 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  v98 = v30;
  sub_10030C464(v30, v27, type metadata accessor for Lyrics.StateManager.State);
  v95 = a1;
  LOBYTE(v30) = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(v27, a1);
  result = sub_10030C4CC(v27, type metadata accessor for Lyrics.StateManager.State);
  if ((v30 & 1) == 0)
  {
    v83 = v7;
    v84 = v6;
    v32 = Logger.lyrics.unsafeMutableAddressor();
    (*(v96 + 16))(v20, v32, v97);
    sub_10030C464(v95, v24, type metadata accessor for Lyrics.StateManager.State);

    v33 = sub_1004D964C();
    v34 = sub_1004DDF9C();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v102[0] = v82;
      *v35 = 136446466;
      sub_10030C464(v24, v27, type metadata accessor for Lyrics.StateManager.State);
      v36 = sub_1004DD4DC();
      v81 = v33;
      v37 = v36;
      v80 = v34;
      v39 = v38;
      sub_10030C4CC(v24, type metadata accessor for Lyrics.StateManager.State);
      v40 = sub_1002E5CC4(v37, v39, v102);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2082;
      swift_getKeyPath();
      v101 = v2;
      sub_1004D86BC();

      v41 = v98;
      sub_10030C464(v98, v27, type metadata accessor for Lyrics.StateManager.State);
      v42 = sub_1004DD4DC();
      v44 = sub_1002E5CC4(v42, v43, v102);

      *(v35 + 14) = v44;
      v45 = v81;
      _os_log_impl(&_mh_execute_header, v81, v80, "[State] changed from %{public}s to %{public}s", v35, 0x16u);
      swift_arrayDestroy();

      (*(v96 + 8))(v20, v97);
    }

    else
    {

      sub_10030C4CC(v24, type metadata accessor for Lyrics.StateManager.State);
      (*(v96 + 8))(v20, v97);
      v41 = v98;
    }

    swift_getKeyPath();
    v102[0] = v2;
    sub_1004D86BC();

    v46 = v86;
    sub_10030C464(v41, v86, type metadata accessor for Lyrics.StateManager.State);
    sub_10030C464(v46, v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_10030C4CC(v46, type metadata accessor for Lyrics.StateManager.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v47 = *v17;
      v48 = v17[32];
      v49 = *(sub_100004CB8(&qword_10063EB38) + 48);
      v50 = sub_1004DC95C();
      (*(*(v50 - 8) + 8))(&v17[v49], v50);
      if (v48)
      {
        v51 = v90;
        v52 = v88;
        if (v47)
        {
          v53 = *(*v47 + 288);

          v55 = v87;
          v53(v54);

          v56 = type metadata accessor for Lyrics.Translation(0);
          v57 = 1;
          v58 = (*(*(v56 - 8) + 48))(v55, 1, v56);
          sub_10001074C(v55, &qword_10063EB48);
          if (v58 != 1)
          {
            goto LABEL_17;
          }

          v59 = *(*v47 + 312);

          v59(v60);

          v61 = type metadata accessor for Lyrics.Transliteration(0);
          v57 = 1;
          if ((*(*(v61 - 8) + 48))(v52, 1, v61) != 1)
          {
LABEL_16:
            sub_10001074C(v52, &qword_10063EB50);
LABEL_17:
            v65 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__showTranslationButton;
            swift_beginAccess();
            if (v57 == *(v2 + v65))
            {
              *(v2 + v65) = v57;
            }

            else
            {
              KeyPath = swift_getKeyPath();
              __chkstk_darwin(KeyPath);
              *&v79[-16] = v2;
              v79[-8] = v57;
              v101 = v2;
              sub_1004D86AC();
            }

            v67 = v84;
            swift_getKeyPath();
            v101 = v2;
            sub_1004D86BC();

            v68 = v98;
            sub_10030C464(v98, v51, type metadata accessor for Lyrics.StateManager.State.Loading);
            swift_getKeyPath();
            v101 = v2;
            sub_1004D86BC();

            v69 = v68 + *(v99 + 20);
            v70 = v93;
            sub_10030C464(v69, v93, type metadata accessor for Lyrics.StateManager.State.Display);
            v72 = v91;
            v71 = v92;
            v73 = v83;
            (*(v92 + 104))(v91, enum case for ScenePhase.active(_:), v83);
            v74 = sub_1004D9CDC();
            (*(v71 + 8))(v72, v73);
            if ((v74 & 1) != 0 && v70[*(v85 + 20)] == 1)
            {
              v75 = v70[*(v85 + 24)];
            }

            else
            {
              v75 = 0;
            }

            sub_10030C4CC(v70, type metadata accessor for Lyrics.StateManager.State.Display);
            sub_10030DDC4(v51, v67);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload)
            {
              if (EnumCaseMultiPayload == 1)
              {
                sub_10030D7EC(*v67, *(v67 + 8), *(v67 + 16), *(v67 + 24), *(v67 + 32));
                v77 = *(sub_100004CB8(&qword_10063EB38) + 48);
                v78 = sub_1004DC95C();
                (*(*(v78 - 8) + 8))(v67 + v77, v78);
                if (v75)
                {
                  goto LABEL_30;
                }
              }
            }

            else
            {
              sub_10030C4CC(v67, type metadata accessor for Lyrics.StateManager.State.Loading);
            }

            sub_100309DCC(v95);
LABEL_30:
            sub_1003094A8();
          }

LABEL_15:
          v57 = 0;
          goto LABEL_16;
        }

LABEL_14:
        v62 = type metadata accessor for Lyrics.Translation(0);
        v63 = v87;
        (*(*(v62 - 8) + 56))(v87, 1, 1, v62);
        sub_10001074C(v63, &qword_10063EB48);
        v64 = type metadata accessor for Lyrics.Transliteration(0);
        (*(*(v64 - 8) + 56))(v52, 1, 1, v64);
        goto LABEL_15;
      }

      v51 = v90;
    }

    else
    {
      sub_10030C4CC(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
      v51 = v90;
    }

    v52 = v88;
    goto LABEL_14;
  }

  return result;
}

void (*sub_100300CD0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(type metadata accessor for Lyrics.StateManager.State(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_10030C464(v1 + v8, v7, type metadata accessor for Lyrics.StateManager.State);
  return sub_100300DF8;
}

void sub_100300DF8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  if (a2)
  {
    sub_10030C464(*(*a1 + 96), v6, type metadata accessor for Lyrics.StateManager.State);
    sub_10030C464(v7 + v4, v5, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_10030CBB8(v6, v7 + v4, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002FFFC4(v5);
    sub_10030C4CC(v5, type metadata accessor for Lyrics.StateManager.State);
  }

  else
  {
    sub_10030C464(v7 + v4, v6, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_10030CBB8(v3, v7 + v4, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002FFFC4(v6);
  }

  sub_10030C4CC(v6, type metadata accessor for Lyrics.StateManager.State);
  sub_10030C4CC(v3, type metadata accessor for Lyrics.StateManager.State);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t Lyrics.StateManager.state.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager);
  sub_1004D86BC();

  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  return sub_10030C464(v5 + v3, a1, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t sub_100301044@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager);
  sub_1004D86BC();

  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  return sub_10030C464(v3 + v4, a2, type metadata accessor for Lyrics.StateManager.State);
}

uint64_t sub_100301120(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10030C464(a1, v4, type metadata accessor for Lyrics.StateManager.State);
  return Lyrics.StateManager.state.setter(v4);
}

uint64_t sub_1003011C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v12[-v8];
  sub_10030C464(a2, &v12[-v8], type metadata accessor for Lyrics.StateManager.State);
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_10030C464(a1 + v10, v6, type metadata accessor for Lyrics.StateManager.State);
  swift_beginAccess();
  sub_10030CBB8(v9, a1 + v10, type metadata accessor for Lyrics.StateManager.State);
  swift_endAccess();
  sub_1002FFFC4(v6);
  sub_10030C4CC(v6, type metadata accessor for Lyrics.StateManager.State);
  return sub_10030C4CC(v9, type metadata accessor for Lyrics.StateManager.State);
}

void (*Lyrics.StateManager.state.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager);
  sub_1004D86BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004D86DC();

  v4[7] = sub_100300CD0(v4);
  return sub_10030143C;
}

uint64_t sub_100301448()
{
  v1 = v0;
  v2 = sub_100004CB8(&qword_10063EB50);
  __chkstk_darwin(v2 - 8);
  v4 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v60 = v55 - v6;
  __chkstk_darwin(v7);
  v9 = v55 - v8;
  __chkstk_darwin(v10);
  v12 = v55 - v11;
  v13 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin(v13);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin(v16 - 8);
  v18 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v19 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v65 = v1;
  v61 = sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager);
  v62 = v19;
  sub_1004D86BC();

  v20 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v21 = *(v1 + v20);
  if (v21)
  {
    v22 = [v21 vocalsControlCommand];
    if (v22)
    {
      v23 = [v22 isActive];
      swift_unknownObjectRelease();
      if (v23)
      {
        swift_getKeyPath();
        v64 = v1;
        sub_1004D86BC();

        v24 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
        swift_beginAccess();
        sub_10030C464(v1 + v24, v18, type metadata accessor for Lyrics.StateManager.State);
        sub_10030C464(v18, v15, type metadata accessor for Lyrics.StateManager.State.Loading);
        sub_10030C4CC(v18, type metadata accessor for Lyrics.StateManager.State);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v25 = *v15;
          v26 = *(v15 + 1);
          v27 = *(v15 + 3);
          v58 = *(v15 + 2);
          v59 = v27;
          v28 = v15[32];
          v29 = *(sub_100004CB8(&qword_10063EB38) + 48);
          v30 = sub_1004DC95C();
          v31 = (*(*(v30 - 8) + 8))(&v15[v29], v30);
          if (v28 == 1)
          {
            v57 = v26;
            v32 = (*v25 + 312);
            v56 = *v32;
            v55[1] = v32;
            v56(v31);
            v33 = type metadata accessor for Lyrics.Transliteration(0);
            v34 = *(*(v33 - 8) + 48);
            if (v34(v12, 1, v33) == 1)
            {
              sub_10030D7EC(v25, v57, v58, v59, 1);
              sub_10001074C(v12, &qword_10063EB50);
            }

            else
            {
              v55[0] = v25;
              sub_10001074C(v12, &qword_10063EB50);
              swift_getKeyPath();
              v64 = v1;
              sub_1004D86BC();

              v46 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
              swift_beginAccess();
              sub_1000108DC(v1 + v46, v9, &qword_10063EB50);
              v47 = v34(v9, 1, v33);
              v48 = v57;
              if (v47 == 1)
              {
                sub_10001074C(v9, &qword_10063EB50);
                v49 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

                LOBYTE(v49) = v49(2);

                v52 = v58;
                v51 = v59;
                if ((v49 & 1) == 0)
                {
                  v44 = v60;
                  v53 = v55[0];
                  v56(v50);
                  KeyPath = swift_getKeyPath();
                  __chkstk_darwin(KeyPath);
                  v55[-2] = v1;
                  v55[-1] = v44;
                  v64 = v1;
                  sub_1004D86AC();
                  sub_10030D7EC(v53, v48, v52, v51, 1);
                  goto LABEL_16;
                }

                sub_10030D7EC(v55[0], v48, v58, v59, 1);
              }

              else
              {
                sub_10030D7EC(v55[0], v57, v58, v59, 1);
                sub_10001074C(v9, &qword_10063EB50);
              }
            }
          }

          else
          {
          }
        }

        else
        {
          sub_10030C4CC(v15, type metadata accessor for Lyrics.StateManager.State.Loading);
        }
      }
    }
  }

  swift_getKeyPath();
  v64 = v1;
  sub_1004D86BC();

  v35 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  swift_beginAccess();
  sub_1000108DC(v1 + v35, v4, &qword_10063EB50);
  v36 = type metadata accessor for Lyrics.Transliteration(0);
  v37 = *(v36 - 8);
  v38 = (*(v37 + 48))(v4, 1, v36);
  result = sub_10001074C(v4, &qword_10063EB50);
  if (v38 != 1)
  {
    v40 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

    LOBYTE(v40) = v40(1);

    if ((v40 & 1) == 0)
    {
      swift_getKeyPath();
      v63 = v1;
      sub_1004D86BC();

      v41 = *(v1 + v20);
      if (!v41 || (v42 = [v41 vocalsControlCommand]) == 0 || (v43 = objc_msgSend(v42, "isActive"), result = swift_unknownObjectRelease(), (v43 & 1) == 0))
      {
        v44 = v60;
        (*(v37 + 56))(v60, 1, 1, v36);
        v45 = swift_getKeyPath();
        __chkstk_darwin(v45);
        v55[-2] = v1;
        v55[-1] = v44;
        v63 = v1;
        sub_1004D86AC();
LABEL_16:

        return sub_10001074C(v44, &qword_10063EB50);
      }
    }
  }

  return result;
}

uint64_t (*sub_100301D24(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100301D88;
}

uint64_t sub_100301D88(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_100301448();
  }

  return result;
}

void *Lyrics.StateManager.tracklist.getter()
{
  swift_getKeyPath();
  v5 = v0;
  sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager);
  sub_1004D86BC();

  v1 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

id sub_100301E80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager);
  sub_1004D86BC();

  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}