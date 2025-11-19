int64_t sub_21E0(id a1, LSApplicationRecord *a2, LSApplicationRecord *a3)
{
  v4 = a3;
  v5 = [(LSApplicationRecord *)a2 localizedName];
  v6 = [(LSApplicationRecord *)v4 localizedName];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_27FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2824(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained filterSupportedApps];
}

BOOL sub_2A48(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = *(*(a1 + 32) + 184);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  LODWORD(v5) = [v7 remappingKey];

  v8 = [*(*(v4 + 32) + 184) objectForKeyedSubscript:v6];

  LODWORD(v4) = [v8 remappingKey];
  return v5 > v4;
}

BOOL sub_2CCC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = *(*(a1 + 32) + 184);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  LODWORD(v5) = [v7 remappingKey];

  v8 = [*(*(v4 + 32) + 184) objectForKeyedSubscript:v6];

  LODWORD(v4) = [v8 remappingKey];
  return v5 > v4;
}

id sub_3544(uint64_t a1)
{
  if ((a1 + 1) > 3)
  {
    v2 = @"OFF";
  }

  else
  {
    v2 = off_106620[a1 + 1];
  }

  v3 = sub_9E38(v2);

  return v3;
}

void sub_8224(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 setFill];
  v4 = [v3 CGContext];

  v5 = 5.0;
  v6 = 5.0;
  v7 = 10.0;
  v8 = 10.0;

  CGContextFillEllipseInRect(v4, *&v5);
}

BOOL sub_87B4(id a1, GCController *a2, NSDictionary *a3)
{
  v3 = a2;
  v4 = [(GCController *)v3 extendedGamepad];
  if (v4)
  {
    v5 = v4;
    v6 = [(GCController *)v3 isComponentBased];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_9D98()
{
  if (qword_119E90 != -1)
  {
    sub_D6770();
  }

  v1 = qword_119E98;

  return v1;
}

void sub_9DDC(id a1)
{
  v1 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = qword_119E98;
  qword_119E98 = v1;

  _objc_release_x1(v1, v2);
}

id sub_9E38(void *a1)
{
  v1 = a1;
  v2 = sub_9D98();
  v3 = [v2 localizedStringForKey:v1 value:&stru_10B508 table:@"Localizable"];

  return v3;
}

id sub_9EAC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_9D98();
  v4 = [v3 localizedStringForKey:v2 value:&stru_10B508 table:@"Localizable"];

  return v4;
}

id sub_9F20(void *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = a1;
  v7 = objc_alloc_init(NSMutableAttributedString);
  if (v5 && a3)
  {
    v8 = [[NSTextAttachment alloc] initWithData:0 ofType:0];
    v9 = [UIImage systemImageNamed:v5];
    v10 = [v9 imageWithRenderingMode:2];
    [v8 setImage:v10];

    v11 = [NSAttributedString attributedStringWithAttachment:v8];
    v12 = [v8 image];

    if (!v12)
    {
      v13 = [[NSAttributedString alloc] initWithString:v5];

      v11 = v13;
    }

    v14 = +[UIApplication sharedApplication];
    v15 = [v14 userInterfaceLayoutDirection];

    if (v15 == &dword_0 + 1)
    {
      v16 = [[NSAttributedString alloc] initWithString:@"\u200F"];
      [v7 appendAttributedString:v16];
    }

    v17 = [[NSAttributedString alloc] initWithString:@"\t⁨"];
    [v7 appendAttributedString:v17];

    [v7 appendAttributedString:v11];
    v18 = [[NSAttributedString alloc] initWithString:@"⁩\t"];
    [v7 appendAttributedString:v18];
  }

  v19 = [[NSAttributedString alloc] initWithString:v6];

  [v7 appendAttributedString:v19];
  v20 = +[NSParagraphStyle defaultParagraphStyle];
  v21 = [v20 mutableCopy];

  v22 = [[NSTextTab alloc] initWithTextAlignment:4 location:&__NSDictionary0__struct options:0.0];
  v30[0] = v22;
  v23 = [[NSTextTab alloc] initWithTextAlignment:1 location:&__NSDictionary0__struct options:10.0];
  v30[1] = v23;
  v24 = [[NSTextTab alloc] initWithTextAlignment:4 location:&__NSDictionary0__struct options:28.0];
  v30[2] = v24;
  v25 = [NSArray arrayWithObjects:v30 count:3];
  [v21 setTabStops:v25];

  v28 = NSParagraphStyleAttributeName;
  v29 = v21;
  v26 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  [v7 addAttributes:v26 range:{0, objc_msgSend(v7, "length")}];

  return v7;
}

void sub_A26C(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1;
    v5 = [v4 textLabel];
    v6 = [v5 font];
    v12 = [UIImageSymbolConfiguration configurationWithFont:v6];

    v7 = [UIImage systemImageNamed:v3 withConfiguration:v12];

    v8 = [v4 imageView];
    [v8 setImage:v7];

    v9 = [v4 textLabel];
    v10 = [v9 textColor];
    v11 = [v4 imageView];

    [v11 setTintColor:v10];
  }
}

void sub_A394(void *a1, void *a2)
{
  v10 = a2;
  if (v10)
  {
    v3 = a1;
    v4 = [v3 textLabel];
    v5 = [v4 font];
    v6 = [UIImageSymbolConfiguration configurationWithFont:v5];

    v7 = [UIImage systemImageNamed:v10 withConfiguration:v6];
    v8 = [v3 remappedElementView];

    [v8 setImage:v7];
  }

  else
  {
    v9 = a1;
    v6 = [v9 remappedElementView];

    [v6 setImage:0];
  }
}

BOOL sub_A9BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = *(*(a1 + 32) + 168);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  LODWORD(v5) = [v7 remappingKey];

  v8 = [*(*(v4 + 32) + 168) objectForKeyedSubscript:v6];

  LODWORD(v4) = [v8 remappingKey];
  return v5 > v4;
}

__CFString *sub_AC70(unint64_t a1)
{
  if (a1 > 2)
  {
    v2 = &stru_10B508;
  }

  else
  {
    v2 = sub_9E38(*(&off_106710 + a1));
  }

  return v2;
}

__CFString *sub_AD28(uint64_t a1)
{
  if (!a1)
  {
    v2 = @"VIDEO_RECORDING_MODE_MANUAL";
LABEL_5:
    v3 = sub_9E38(v2);

    return v3;
  }

  if (a1 == 1)
  {
    v2 = @"VIDEO_RECORDING_MODE_LAST15SEC";
    goto LABEL_5;
  }

  v3 = &stru_10B508;

  return v3;
}

BOOL sub_C00C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = *(*(a1 + 32) + 168);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  LODWORD(v5) = [v7 remappingKey];

  v8 = [*(*(v4 + 32) + 168) objectForKeyedSubscript:v6];

  LODWORD(v4) = [v8 remappingKey];
  return v5 > v4;
}

__CFString *sub_C2C0(unint64_t a1)
{
  if (a1 > 2)
  {
    v2 = &stru_10B508;
  }

  else
  {
    v2 = sub_9E38(*(&off_106728 + a1));
  }

  return v2;
}

id sub_DBC0()
{
  if (qword_119EA8 != -1)
  {
    sub_D6784();
  }

  v1 = qword_119EA0;

  return v1;
}

void sub_DC04(id a1)
{
  v1 = objc_alloc_init(NSCache);
  v2 = qword_119EA0;
  qword_119EA0 = v1;

  _objc_release_x1(v1, v2);
}

uint64_t sub_DC40(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_DC9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_DCE8(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 104);

  return v2(v3);
}

uint64_t (*sub_DD50(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_D6AB8();
  return sub_EC0C;
}

uint64_t (*sub_DE5C(void *a1))()
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
  *v3 = v1;
  v5 = sub_DC40(&qword_115DA0);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerPreferences__buttonMappings;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&qword_115D98);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_E018()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D6AC8();

  return v1;
}

uint64_t sub_E084@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_E0D0(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 152);

  return v2(v3);
}

uint64_t sub_E138()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D6AD8();
}

uint64_t (*sub_E1A4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_D6AB8();
  return sub_E248;
}

void sub_E24C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_E310(uint64_t a1)
{
  v2 = sub_DC40(&qword_115DA0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  (*(v3 + 16))(&v6 - v4, a1, v2);
  sub_DC40(&qword_115D98);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_E428(void *a1))()
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
  *v3 = v1;
  v5 = sub_DC40(&qword_115DA0);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerPreferences__dpadMappings;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&qword_115D98);
  sub_D6A98();
  return sub_E57C;
}

void sub_E580(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[4];
  v11 = v3[5];
  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[1];
  if (a2)
  {
    v4(v3[3], v5, v8);
    sub_D6AA8();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    sub_D6AA8();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_E6B0(void *a1)
{
  v2 = swift_allocObject();
  sub_DC40(&qword_115D90);
  sub_D6A88();
  sub_D6A88();

  return v2;
}

uint64_t sub_E75C(void *a1)
{
  v3 = sub_DC40(&qword_115D98);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerPreferences__buttonMappings;
  v12 = &_swiftEmptyArrayStorage;
  sub_DC40(&qword_115D90);
  sub_D6A88();
  v8 = *(v4 + 32);
  v8(v1 + v7, v6, v3);
  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerPreferences__dpadMappings;
  v12 = &_swiftEmptyArrayStorage;
  sub_D6A88();

  v8(v1 + v9, v6, v3);
  return v1;
}

uint64_t sub_E8B8()
{
  v1 = OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerPreferences__buttonMappings;
  v2 = sub_DC40(&qword_115D98);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerPreferences__dpadMappings, v2);
  return v0;
}

uint64_t sub_E954()
{
  v1 = OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerPreferences__buttonMappings;
  v2 = sub_DC40(&qword_115D98);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC25GameControlleriOSSettings24GCSControllerPreferences__dpadMappings, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_EA38@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GCSControllerPreferences();
  result = sub_D6A68();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for GCSControllerPreferences()
{
  result = qword_119F60;
  if (!qword_119F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_EACC()
{
  sub_EB5C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_EB5C()
{
  if (!qword_115DD0)
  {
    sub_EBC0(&qword_115D90);
    v0 = sub_D6AE8();
    if (!v1)
    {
      atomic_store(v0, &qword_115DD0);
    }
  }
}

uint64_t sub_EBC0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

_OWORD *sub_EC14()
{
  type metadata accessor for BluetoothManager();
  v0 = swift_allocObject();
  result = sub_13E80();
  qword_11FB58 = v0;
  return result;
}

uint64_t sub_EC54()
{
  v0 = swift_allocObject();
  sub_13E80();
  return v0;
}

uint64_t *sub_EC8C()
{
  if (qword_119F70 != -1)
  {
    swift_once();
  }

  return &qword_11FB58;
}

uint64_t sub_ECDC()
{
  if (qword_119F70 != -1)
  {
    swift_once();
  }
}

void *sub_ED40()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_ED68(uint64_t a1)
{
  if (!a1)
  {
    [*(v1 + 16) invalidate];
  }

  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void (*sub_EDB4(void *a1))(uint64_t *a1)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_EE00;
}

void sub_EE00(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (!*a1)
  {
    [*(v2 + 16) invalidate];
  }

  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
}

void *sub_EE4C()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_EE74(uint64_t a1)
{
  if (!a1)
  {
    [*(v1 + 24) invalidate];
  }

  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

void (*sub_EEC0(void *a1))(uint64_t *a1)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_EF0C;
}

void sub_EF0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (!*a1)
  {
    [*(v2 + 24) invalidate];
  }

  v3 = *(v2 + 24);
  *(v2 + 24) = v1;
}

void *sub_EF58()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *sub_EFB0()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void sub_EFD8(void *a1)
{
  v3 = v1[5];
  v1[5] = a1;
  v4 = a1;

  if (a1)
  {
    (*(*v1 + 1072))([v4 setupAssistantIfNoKeyboard] == 1);
    (*(*v1 + 1120))([v4 setupAssistantIfNoPointingDevice] == 1);
    (*(*v1 + 464))(1);
  }
}

void sub_F13C(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *a1;
    v3 = *(*a1 + 40);
    if (v3)
    {
      v4 = v3;
      (*(*v2 + 1072))([v4 setupAssistantIfNoKeyboard] == 1);
      (*(*v2 + 1120))([v4 setupAssistantIfNoPointingDevice] == 1);
      (*(*v2 + 464))(1);
    }
  }
}

uint64_t sub_F27C(uint64_t a1)
{
  v2 = v1;
  (*(*v1 + 880))(a1 != 0);
  if (!a1)
  {
    v4 = v1[6];
    if (v4)
    {
      v5 = *(*v4 + 424);

      v5(0);
    }
  }

  v2[6] = a1;
}

uint64_t (*sub_F348(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + 48);
  a1[1] = v1;

  return sub_F394;
}

uint64_t sub_F394(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(*v2 + 880);
  if (a2)
  {
    v5 = *a1 != 0;

    v4(v5);
    v6 = v2[6];
    if (!v3 && v6)
    {
      v7 = *(*v6 + 424);

      v7(0);
    }

    v2[6] = v3;
  }

  else
  {
    v4(*a1 != 0);
    v8 = v2[6];
    if (!v3 && v8)
    {
      v9 = *(*v8 + 424);

      v9(0);
    }

    v2[6] = v3;
  }
}

uint64_t sub_F4F0(uint64_t a1)
{
  v2 = v1;
  (*(*v1 + 928))(a1 != 0);
  if (!a1)
  {
    v4 = v1[7];
    if (v4)
    {
      v5 = *(*v4 + 424);

      v5(0);
    }
  }

  v2[7] = a1;
}

uint64_t (*sub_F5BC(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + 56);
  a1[1] = v1;

  return sub_F608;
}

uint64_t sub_F608(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(*v2 + 928);
  if (a2)
  {
    v5 = *a1 != 0;

    v4(v5);
    v6 = v2[7];
    if (!v3 && v6)
    {
      v7 = *(*v6 + 424);

      v7(0);
    }

    v2[7] = v3;
  }

  else
  {
    v4(*a1 != 0);
    v8 = v2[7];
    if (!v3 && v8)
    {
      v9 = *(*v8 + 424);

      v9(0);
    }

    v2[7] = v3;
  }
}

uint64_t sub_F764(uint64_t a1)
{
  v2 = v1;
  (*(*v1 + 976))(a1 != 0);
  if (!a1)
  {
    v4 = v1[8];
    if (v4)
    {
      v5 = *(*v4 + 424);

      v5(0);
    }
  }

  v2[8] = a1;
}

uint64_t (*sub_F830(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + 64);
  a1[1] = v1;

  return sub_F87C;
}

uint64_t sub_F87C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(*v2 + 976);
  if (a2)
  {
    v5 = *a1 != 0;

    v4(v5);
    v6 = v2[8];
    if (!v3 && v6)
    {
      v7 = *(*v6 + 424);

      v7(0);
    }

    v2[8] = v3;
  }

  else
  {
    v4(*a1 != 0);
    v8 = v2[8];
    if (!v3 && v8)
    {
      v9 = *(*v8 + 424);

      v9(0);
    }

    v2[8] = v3;
  }
}

void *sub_FA38()
{
  result = (*(*v0 + 288))();
  if (result)
  {
    v2 = result;
    v3 = [result useCase];

    return (v3 == 131081);
  }

  return result;
}

uint64_t sub_FABC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 488))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_FB78(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_D6AB8();
  return sub_EC0C;
}

uint64_t sub_FC6C(uint64_t a1)
{
  v2 = sub_DC40(&qword_115EB8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  (*(v3 + 16))(&v6 - v4, a1, v2);
  sub_DC40(&unk_118EC0);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_FD84(void *a1))()
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
  *v3 = v1;
  v5 = sub_DC40(&qword_115EB8);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__anyDeviceIsConnecting;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&unk_118EC0);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_FEEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 536))();
  *a2 = result;
  return result;
}

uint64_t sub_FF40(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 544);

  return v2(v3);
}

uint64_t (*sub_FFB0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_D6AB8();
  return sub_EC0C;
}

uint64_t sub_100A4(uint64_t a1)
{
  v2 = sub_DC40(&qword_115ED0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  (*(v3 + 16))(&v6 - v4, a1, v2);
  sub_DC40(&qword_115EC8);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_101BC(void *a1))()
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
  *v3 = v1;
  v5 = sub_DC40(&qword_115ED0);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__connectedPairedDevices;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&qword_115EC8);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_1033C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = (*(**a1 + 584))();
  *a2 = result;
  return result;
}

uint64_t (*sub_103F4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_D6AB8();
  return sub_EC0C;
}

uint64_t sub_104F0(uint64_t a1)
{
  v2 = sub_DC40(&qword_115EE0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  (*(v3 + 16))(&v6 - v4, a1, v2);
  sub_DC40(&qword_115ED8);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10608(void *a1))()
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
  *v3 = v1;
  v5 = sub_DC40(&qword_115EE0);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__controllerDiscoverableState;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&qword_115ED8);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_107D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D6AC8();

  return v1;
}

uint64_t sub_1083C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = (*(**a1 + 632))();
  *a2 = result;
  return result;
}

uint64_t sub_108F4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D6AD8();
}

uint64_t (*sub_10960(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_D6AB8();
  return sub_EC0C;
}

uint64_t sub_10A54(uint64_t a1)
{
  v2 = sub_DC40(&qword_115EF0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  (*(v3 + 16))(&v6 - v4, a1, v2);
  sub_DC40(&qword_115EE8);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_10B6C(void *a1))()
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
  *v3 = v1;
  v5 = sub_DC40(&qword_115EF0);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__controllerInquiryState;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&qword_115EE8);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_10CF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D6AC8();

  return v1;
}

uint64_t sub_10D64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 680))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10DB8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 688);

  return v4(v2, v3);
}

uint64_t sub_10E28()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D6AD8();
}

uint64_t (*sub_10EA4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_D6AB8();
  return sub_E248;
}

uint64_t sub_10FA4(uint64_t a1)
{
  v2 = sub_DC40(&qword_115F00);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  (*(v3 + 16))(&v6 - v4, a1, v2);
  sub_DC40(&qword_115EF8);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_110BC(void *a1))()
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
  *v3 = v1;
  v5 = sub_DC40(&qword_115F00);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__devicePincode;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&qword_115EF8);
  sub_D6A98();
  return sub_E57C;
}

uint64_t sub_11278@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 728))();
  *a2 = result;
  return result;
}

uint64_t sub_112CC(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 736);

  return v2(v3);
}

uint64_t (*sub_1133C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_D6AB8();
  return sub_EC0C;
}

uint64_t sub_11430(uint64_t a1)
{
  v2 = sub_DC40(&qword_115ED0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  (*(v3 + 16))(&v6 - v4, a1, v2);
  sub_DC40(&qword_115EC8);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_11548(void *a1))()
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
  *v3 = v1;
  v5 = sub_DC40(&qword_115ED0);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__nearbyDevices;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&qword_115EC8);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_116B0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 776))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1176C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_D6AB8();
  return sub_EC0C;
}

uint64_t sub_11860(uint64_t a1)
{
  v2 = sub_DC40(&qword_115EB8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  (*(v3 + 16))(&v6 - v4, a1, v2);
  sub_DC40(&unk_118EC0);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_11978(void *a1))()
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
  *v3 = v1;
  v5 = sub_DC40(&qword_115EB8);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__shouldShowBTSAKeyboardModal;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&unk_118EC0);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_11AE0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 824))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_11B9C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_D6AB8();
  return sub_EC0C;
}

uint64_t sub_11C90(uint64_t a1)
{
  v2 = sub_DC40(&qword_115EB8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  (*(v3 + 16))(&v6 - v4, a1, v2);
  sub_DC40(&unk_118EC0);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_11DA8(void *a1))()
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
  *v3 = v1;
  v5 = sub_DC40(&qword_115EB8);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__shouldShowBTSAPointingModal;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&unk_118EC0);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_11F10@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 872))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_11FCC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_D6AB8();
  return sub_EC0C;
}

uint64_t sub_120C0(uint64_t a1)
{
  v2 = sub_DC40(&qword_115EB8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  (*(v3 + 16))(&v6 - v4, a1, v2);
  sub_DC40(&unk_118EC0);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_121D8(void *a1))()
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
  *v3 = v1;
  v5 = sub_DC40(&qword_115EB8);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__showNumericComparisonPairingAlert;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&unk_118EC0);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_12340@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 920))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_123FC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_D6AB8();
  return sub_EC0C;
}

uint64_t sub_124F0(uint64_t a1)
{
  v2 = sub_DC40(&qword_115EB8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  (*(v3 + 16))(&v6 - v4, a1, v2);
  sub_DC40(&unk_118EC0);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_12608(void *a1))()
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
  *v3 = v1;
  v5 = sub_DC40(&qword_115EB8);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__showPasskeyPairingAlert;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&unk_118EC0);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_12770@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 968))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1282C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D6AD8();
}

uint64_t (*sub_12898(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_D6AB8();
  return sub_EC0C;
}

uint64_t sub_1298C(uint64_t a1)
{
  v2 = sub_DC40(&qword_115EB8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  (*(v3 + 16))(&v6 - v4, a1, v2);
  sub_DC40(&unk_118EC0);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_12AA4(void *a1))()
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
  *v3 = v1;
  v5 = sub_DC40(&qword_115EB8);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__showPincodeEntryPairingAlert;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&unk_118EC0);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_12C3C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1016))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_12CE4(int a1)
{
  v3 = (*(*v1 + 264))();
  if (v3)
  {
    v4 = v3;
    if (((([v3 bluetoothState] != &dword_4 + 1) ^ a1) & 1) == 0)
    {
      sub_3AE9C(a1 & 1);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D6AD8();
}

uint64_t (*sub_12DB4(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D6AC8();

  *(a1 + 8) = *(a1 + 9);
  return sub_12E48;
}

uint64_t sub_12EC0(uint64_t a1)
{
  v2 = sub_DC40(&qword_115EB8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  (*(v3 + 16))(&v6 - v4, a1, v2);
  sub_DC40(&unk_118EC0);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_12FD8(void *a1))()
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
  *v3 = v1;
  v5 = sub_DC40(&qword_115EB8);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__bluetoothEnabled;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&unk_118EC0);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_13140@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1064))();
  *a2 = result & 1;
  return result;
}

void sub_131E8(char a1)
{
  if ((*(*v1 + 456))())
  {
    v3 = *v1;
    if (a1)
    {
      (*(v3 + 440))(1);
    }

    else if ((*(v3 + 1064))())
    {
      (*(*v1 + 784))(1);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  v4 = sub_D6AD8();
  if ((*(*v1 + 432))(v4))
  {
    sub_3A634();
  }
}

void (*sub_13358(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D6AC8();

  *(a1 + 8) = *(a1 + 9);
  return sub_133EC;
}

uint64_t sub_13464(uint64_t a1)
{
  v2 = sub_DC40(&qword_115EB8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  (*(v3 + 16))(&v6 - v4, a1, v2);
  sub_DC40(&unk_118EC0);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1357C(void *a1))()
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
  *v3 = v1;
  v5 = sub_DC40(&qword_115EB8);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__setupAssistantIfNoKeyboard;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&unk_118EC0);
  sub_D6A98();
  return sub_EC10;
}

uint64_t sub_136E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D6AC8();

  return v1;
}

uint64_t sub_13750@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1112))();
  *a2 = result & 1;
  return result;
}

void sub_137F8(char a1)
{
  if ((*(*v1 + 456))())
  {
    v3 = *v1;
    if (a1)
    {
      (*(v3 + 440))(1);
    }

    else if ((*(v3 + 1112))())
    {
      (*(*v1 + 832))(1);
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  v4 = sub_D6AD8();
  if ((*(*v1 + 432))(v4))
  {
    sub_3A634();
  }
}

void (*sub_13968(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D6AC8();

  *(a1 + 8) = *(a1 + 9);
  return sub_139FC;
}

uint64_t sub_13A74(uint64_t a1)
{
  v2 = sub_DC40(&qword_115EB8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  (*(v3 + 16))(&v6 - v4, a1, v2);
  sub_DC40(&unk_118EC0);
  sub_D6AA8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_13B8C(void *a1))()
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
  *v3 = v1;
  v5 = sub_DC40(&qword_115EB8);
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v4[4] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__setupAssistantIfNoPointingDevice;
  v4[5] = v8;
  v4[6] = v9;
  v4[7] = sub_DC40(&unk_118EC0);
  sub_D6A98();
  return sub_EC10;
}

void *sub_13CE0()
{
  v1 = (*(*v0 + 536))();
  v2 = v1;
  if (v1 >> 62)
  {
LABEL_16:
    v3 = sub_D8078();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = sub_D7FF8();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_16;
          }

          v5 = *(v2 + 8 * v4 + 32);

          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        if ((*(*v5 + 536))())
        {
          sub_D8028();
          sub_D8058();
          sub_D8068();
          sub_D8038();
        }

        else
        {
        }

        ++v4;
      }

      while (v6 != v3);
    }
  }

  return &_swiftEmptyArrayStorage;
}

_OWORD *sub_13E80()
{
  v1 = sub_DC40(&qword_115EF8);
  v48 = *(v1 - 8);
  v49 = v1;
  __chkstk_darwin();
  v47 = v37 - v2;
  v3 = sub_DC40(&qword_115EE8);
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin();
  v44 = v37 - v4;
  v5 = sub_DC40(&qword_115ED8);
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin();
  v41 = v37 - v6;
  v40 = sub_DC40(&qword_115EC8);
  v7 = *(v40 - 8);
  __chkstk_darwin();
  v9 = v37 - v8;
  v10 = sub_DC40(&unk_118EC0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v37 - v12;
  *(v0 + 58) = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[1] = 0u;
  v14 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__anyDeviceIsConnecting;
  LOBYTE(v50) = 0;
  sub_D6A88();
  v15 = *(v11 + 32);
  v15(v0 + v14, v13, v10);
  v16 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__connectedPairedDevices;
  v50 = &_swiftEmptyArrayStorage;
  v39 = sub_DC40(&qword_115EC0);
  sub_D6A88();
  v17 = *(v7 + 32);
  v37[1] = v7 + 32;
  v38 = v17;
  v18 = v40;
  v17(v0 + v16, v9, v40);
  v19 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__controllerDiscoverableState;
  LODWORD(v50) = 1;
  type metadata accessor for CBDiscoverableState(0);
  v20 = v41;
  sub_D6A88();
  (*(v42 + 32))(v0 + v19, v20, v43);
  v21 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__controllerInquiryState;
  LODWORD(v50) = 1;
  type metadata accessor for CBInquiryState(0);
  v22 = v44;
  sub_D6A88();
  (*(v45 + 32))(v0 + v21, v22, v46);
  v23 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__devicePincode;
  v50 = 0;
  v51 = 0xE000000000000000;
  v24 = v47;
  sub_D6A88();
  (*(v48 + 32))(v0 + v23, v24, v49);
  v25 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__nearbyDevices;
  v50 = &_swiftEmptyArrayStorage;
  sub_D6A88();
  v38(v0 + v25, v9, v18);
  v26 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__shouldShowBTSAKeyboardModal;
  LOBYTE(v50) = 0;
  sub_D6A88();
  v15(v0 + v26, v13, v10);
  v27 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__shouldShowBTSAPointingModal;
  LOBYTE(v50) = 0;
  sub_D6A88();
  v15(v0 + v27, v13, v10);
  v28 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__showNumericComparisonPairingAlert;
  LOBYTE(v50) = 0;
  sub_D6A88();
  v15(v0 + v28, v13, v10);
  v29 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__showPasskeyPairingAlert;
  LOBYTE(v50) = 0;
  sub_D6A88();
  v15(v0 + v29, v13, v10);
  v30 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__showPincodeEntryPairingAlert;
  LOBYTE(v50) = 0;
  sub_D6A88();
  v15(v0 + v30, v13, v10);
  v31 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__bluetoothEnabled;
  LOBYTE(v50) = 0;
  sub_D6A88();
  v15(v0 + v31, v13, v10);
  v32 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__setupAssistantIfNoKeyboard;
  LOBYTE(v50) = 0;
  sub_D6A88();
  v15(v0 + v32, v13, v10);
  v33 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__setupAssistantIfNoPointingDevice;
  LOBYTE(v50) = 0;
  sub_D6A88();
  v15(v0 + v33, v13, v10);
  sub_399B8();
  v34 = sub_B9878();
  sub_8C3A4(v34);
  v35 = [objc_opt_self() defaultCenter];
  [v35 addObserver:v0 selector:"didEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];
  [v35 addObserver:v0 selector:"willEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

  return v0;
}

id *BluetoothManager.deinit()
{
  [v0[2] invalidate];
  [v0[3] invalidate];
  sub_B2A8C();

  v1 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__anyDeviceIsConnecting;
  v2 = sub_DC40(&unk_118EC0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__connectedPairedDevices;
  v5 = sub_DC40(&qword_115EC8);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v7 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__controllerDiscoverableState;
  v8 = sub_DC40(&qword_115ED8);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__controllerInquiryState;
  v10 = sub_DC40(&qword_115EE8);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__devicePincode;
  v12 = sub_DC40(&qword_115EF8);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v6(v0 + OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__nearbyDevices, v5);
  v3(v0 + OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__shouldShowBTSAKeyboardModal, v2);
  v3(v0 + OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__shouldShowBTSAPointingModal, v2);
  v3(v0 + OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__showNumericComparisonPairingAlert, v2);
  v3(v0 + OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__showPasskeyPairingAlert, v2);
  v3(v0 + OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__showPincodeEntryPairingAlert, v2);
  v3(v0 + OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__bluetoothEnabled, v2);
  v3(v0 + OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__setupAssistantIfNoKeyboard, v2);
  v3(v0 + OBJC_IVAR____TtC25GameControlleriOSSettings16BluetoothManager__setupAssistantIfNoPointingDevice, v2);
  return v0;
}

uint64_t BluetoothManager.__deallocating_deinit()
{
  BluetoothManager.deinit();

  return swift_deallocClassInstance();
}

BOOL sub_1489C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_DC40(&qword_115F08);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_DC430;
    *(v6 + 56) = &type metadata for String;
    v7 = sub_14B60();
    *(v6 + 64) = v7;
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;
    swift_getErrorValue();
    swift_errorRetain();

    sub_D8148();
    v8 = sub_D7C68();
    v10 = v9;

    *(v6 + 96) = &type metadata for String;
    *(v6 + 104) = v7;
    *(v6 + 72) = v8;
    *(v6 + 80) = v10;
    sub_14BB4();
    v11 = sub_D7ED8();
    sub_D7E38();
    sub_D69F8();
  }

  return a3 != 0;
}

void sub_149E4()
{
  v0 = sub_B9878();

  sub_8CA4C(v0, 1);
}

void sub_14A2C()
{
  v0 = sub_B9878();

  sub_8CA4C(v0, 2);
}

uint64_t sub_14A74(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{

  v7 = a3(v6);
  sub_8CA4C(v7, a4);
}

uint64_t sub_14AD0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BluetoothManager();
  result = sub_D6A68();
  *a1 = result;
  return result;
}

unint64_t sub_14B60()
{
  result = qword_115F10;
  if (!qword_115F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_115F10);
  }

  return result;
}

unint64_t sub_14BB4()
{
  result = qword_115F18;
  if (!qword_115F18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_115F18);
  }

  return result;
}

uint64_t type metadata accessor for BluetoothManager()
{
  result = qword_11A150;
  if (!qword_11A150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_14C54()
{
  sub_14F44(319, &qword_119010, &type metadata for Bool, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    sub_14E8C();
    if (v1 <= 0x3F)
    {
      sub_14EF0(319, &qword_115F50, type metadata accessor for CBDiscoverableState);
      if (v2 <= 0x3F)
      {
        sub_14EF0(319, &qword_115F58, type metadata accessor for CBInquiryState);
        if (v3 <= 0x3F)
        {
          sub_14F44(319, &unk_115F60, &type metadata for String, &type metadata accessor for Published);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_14E8C()
{
  if (!qword_115F48)
  {
    sub_EBC0(&qword_115EC0);
    v0 = sub_D6AE8();
    if (!v1)
    {
      atomic_store(v0, &qword_115F48);
    }
  }
}

void sub_14EF0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_D6AE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_14F44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 sub_15084@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_D7A18();
  v8 = v7;
  sub_1517C(a1, a2, &v14);
  v12 = v14;
  v9 = v15;
  v10 = BYTE8(v15);
  sub_D7A18();
  sub_D6C28();
  *&v13[22] = v15;
  *&v13[38] = v16;
  *&v13[6] = v14;
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v12;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  *(a3 + 48) = 0x3FF0000000000000;
  *(a3 + 56) = 0;
  *(a3 + 58) = *v13;
  *(a3 + 74) = *&v13[16];
  result = *&v13[32];
  *(a3 + 90) = *&v13[32];
  *(a3 + 104) = *&v13[46];
  return result;
}

double sub_1517C@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v5 = sub_D7708();
  v30 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 bundleIdentifier];
  v9 = sub_D7C18();
  v11 = v10;

  v12 = [objc_opt_self() defaultIdentifier];
  v13 = sub_D7C18();
  v15 = v14;

  if (v9 == v13 && v11 == v15)
  {

LABEL_12:
    v31;
    v24 = sub_58D24();
    v32 = nullsub_1(v24);
    *&v33 = v25;
    *(&v33 + 1) = v26;
    v34 = 1;
    sub_DC40(&qword_1164B0);
    sub_16168();
    sub_161EC();
    sub_D70B8();
    goto LABEL_13;
  }

  v17 = sub_D8118();

  if (v17)
  {
    goto LABEL_12;
  }

  v18 = [a1 bundleIdentifier];
  if (!v18)
  {
    sub_D7C18();
    v18 = sub_D7BD8();
  }

  v19 = [objc_opt_self() appIconImageForBundleIdentifier:v18];

  if (!v19)
  {
    goto LABEL_12;
  }

  v20 = [v19 UIImage];

  if (!v20)
  {
    goto LABEL_12;
  }

  v21 = v20;
  sub_D76E8();
  v22 = v30;
  (*(v30 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v5);
  v23 = sub_D7758();

  (*(v22 + 8))(v7, v5);
  v32 = v23;
  v33 = xmmword_DC9B0;
  v34 = 0;

  sub_DC40(&qword_1164B0);
  sub_16168();
  sub_161EC();
  sub_D70B8();

LABEL_13:
  result = *&v35;
  v28 = v36;
  v29 = v37;
  *a3 = v35;
  *(a3 + 16) = v28;
  *(a3 + 24) = v29;
  return result;
}

id sub_15518(void *a1)
{
  if (a1)
  {

    return a1;
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_15564();
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

unint64_t sub_15564()
{
  result = qword_116448;
  if (!qword_116448)
  {
    type metadata accessor for GCSPreferencesStore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116448);
  }

  return result;
}

uint64_t sub_155BC()
{
  type metadata accessor for GCSPreferencesStore();
  sub_15564();

  return sub_D6DC8();
}

double sub_15650@<D0>(void *a1@<X0>, int a2@<W1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_D6FB8();
  v21 = 0;
  sub_15778(a1, a2, a3, a4, &v16);
  v24 = v18;
  v25[0] = v19[0];
  *(v25 + 11) = *(v19 + 11);
  v22 = v16;
  v23 = v17;
  v26[2] = v18;
  v27[0] = v19[0];
  *(v27 + 11) = *(v19 + 11);
  v26[0] = v16;
  v26[1] = v17;
  sub_16054(&v22, &v15, &qword_116450);
  sub_160BC(v26, &qword_116450);
  *&v20[7] = v22;
  *&v20[66] = *(v25 + 11);
  *&v20[55] = v25[0];
  *&v20[39] = v24;
  *&v20[23] = v23;
  v11 = *&v20[48];
  *(a5 + 49) = *&v20[32];
  *(a5 + 65) = v11;
  *(a5 + 81) = *&v20[64];
  result = *v20;
  v13 = *&v20[16];
  *(a5 + 17) = *v20;
  v14 = v21;
  *a5 = v10;
  *(a5 + 8) = 0x4008000000000000;
  *(a5 + 16) = v14;
  *(a5 + 97) = *&v20[80];
  *(a5 + 33) = v13;
  return result;
}

void sub_15778(void *a1@<X0>, int a2@<W1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a3;
  v10 = a4;
  sub_15AA0(a1, a2, v9);
  sub_16000();
  v11 = sub_D73B8();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  KeyPath = swift_getKeyPath();
  *&v23 = v11;
  *(&v23 + 1) = v13;
  LOBYTE(v24) = v15 & 1;
  *(&v24 + 1) = v17;
  *v25 = KeyPath;
  v19 = v24;
  *(a5 + 24) = v23;
  *&v25[8] = 2;
  v25[16] = 0;
  *&v25[17] = 256;
  *a5 = v9;
  *(a5 + 8) = v10;
  *(a5 + 16) = 0x4044000000000000;
  *(a5 + 40) = v19;
  *(a5 + 56) = *v25;
  *(a5 + 71) = *&v25[15];
  v26[0] = v11;
  v26[1] = v13;
  v27 = v15 & 1;
  v28 = v17;
  v29 = KeyPath;
  v30 = 2;
  v31 = 0;
  v32 = 256;
  v20 = v9;
  v21 = v10;
  sub_16054(&v23, v22, &qword_1164A0);
  sub_160BC(v26, &qword_1164A0);
}

uint64_t sub_158D8()
{
  type metadata accessor for GCSPreferencesStore();
  sub_15564();

  return sub_D6DF8();
}

double sub_1591C@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = sub_D6FB8();
  v18 = 0;
  sub_15778(v3, v4, v5, v6, &v13);
  v21 = v15;
  v22[0] = v16[0];
  *(v22 + 11) = *(v16 + 11);
  v19 = v13;
  v20 = v14;
  v23[2] = v15;
  v24[0] = v16[0];
  *(v24 + 11) = *(v16 + 11);
  v23[0] = v13;
  v23[1] = v14;
  sub_16054(&v19, &v12, &qword_116450);
  sub_160BC(v23, &qword_116450);
  *&v17[7] = v19;
  *&v17[66] = *(v22 + 11);
  *&v17[55] = v22[0];
  *&v17[39] = v21;
  *&v17[23] = v20;
  v8 = *&v17[48];
  *(a1 + 49) = *&v17[32];
  *(a1 + 65) = v8;
  *(a1 + 81) = *&v17[64];
  result = *v17;
  v10 = *&v17[16];
  *(a1 + 17) = *v17;
  v11 = v18;
  *a1 = v7;
  *(a1 + 8) = 0x4008000000000000;
  *(a1 + 16) = v11;
  *(a1 + 97) = *&v17[80];
  *(a1 + 33) = v10;
  return result;
}

uint64_t sub_15A3C@<X0>(uint64_t a1@<X8>)
{
  result = sub_D6F38();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_15AA0(void *a1, int a2, id a3)
{
  v5 = [a3 bundleIdentifier];
  v6 = sub_D7C18();
  v8 = v7;

  v9 = [objc_opt_self() defaultIdentifier];
  v10 = sub_D7C18();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {
  }

  else
  {
    v14 = sub_D8118();

    if ((v14 & 1) == 0)
    {
LABEL_15:
      v19 = [a3 localizedName];
      v20 = sub_D7C18();

      return v20;
    }
  }

  if (a1)
  {
    v15 = [a1 games];
    sub_1611C();
    v16 = sub_D7D28();

    if (v16 >> 62)
    {
      v17 = sub_D8078();
    }

    else
    {
      v17 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
    }

    if (v17 <= 1)
    {
      goto LABEL_15;
    }

    return sub_A9308(0x41475F524548544FLL, 0xEB0000000053454DLL);
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_15564();
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

__n128 sub_15CDC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_15CF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_15D38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_15D88(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_15D94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_15DDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_15E30()
{
  result = qword_116458;
  if (!qword_116458)
  {
    sub_EBC0(&qword_116460);
    sub_15EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116458);
  }

  return result;
}

unint64_t sub_15EBC()
{
  result = qword_116468;
  if (!qword_116468)
  {
    sub_EBC0(&qword_116470);
    sub_15FB8(&qword_116478, &qword_116480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116468);
  }

  return result;
}

uint64_t sub_15FB8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_EBC0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_16000()
{
  result = qword_116498;
  if (!qword_116498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116498);
  }

  return result;
}

uint64_t sub_16054(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_DC40(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_160BC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_DC40(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1611C()
{
  result = qword_1164A8;
  if (!qword_1164A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1164A8);
  }

  return result;
}

unint64_t sub_16168()
{
  result = qword_1164B8;
  if (!qword_1164B8)
  {
    sub_EBC0(&qword_1164B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1164B8);
  }

  return result;
}

unint64_t sub_161EC()
{
  result = qword_1164C0;
  if (!qword_1164C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1164C0);
  }

  return result;
}

uint64_t sub_16250@<X0>(_BYTE *a1@<X8>)
{
  result = sub_D6F18();
  *a1 = result & 1;
  return result;
}

uint64_t sub_162B0()
{
  sub_DC40(&qword_1164C8);
  sub_D78B8();
  return v1;
}

uint64_t (*sub_16364(void *a1))()
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
  v5 = v1[3];
  v6 = v1[4];
  v3[10] = v5;
  v3[11] = v6;
  v7 = v1[5];
  v3[12] = v7;
  v3[6] = v5;
  v3[7] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_16444((v3 + 6), (v3 + 3));

  sub_16054((v4 + 7), (v4 + 3), &qword_1164D0);
  v4[13] = sub_DC40(&qword_1164C8);
  sub_D78B8();
  return sub_21AC8;
}

uint64_t sub_164F4()
{
  sub_DC40(&qword_1164C8);
  sub_D78E8();
  return v1;
}

uint64_t sub_16550()
{
  sub_DC40(&qword_1164C8);
  sub_D78B8();
  return v1;
}

uint64_t (*sub_16604(void *a1))()
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
  v5 = v1[6];
  v6 = v1[7];
  v3[10] = v5;
  v3[11] = v6;
  v7 = v1[8];
  v3[12] = v7;
  v3[6] = v5;
  v3[7] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_16444((v3 + 6), (v3 + 3));

  sub_16054((v4 + 7), (v4 + 3), &qword_1164D0);
  v4[13] = sub_DC40(&qword_1164C8);
  sub_D78B8();
  return sub_21AC8;
}

void sub_166E4(uint64_t *a1, char a2)
{
  v2 = *a1;
  *(*a1 + 24) = *(*a1 + 80);
  *(v2 + 72) = *(v2 + 64);
  *(v2 + 32) = *(v2 + 88);
  if (a2)
  {

    sub_D78C8();
    sub_164A0(v2 + 48);

    sub_160BC(v2 + 56, &qword_1164D0);
  }

  else
  {
    sub_D78C8();
    sub_164A0(v2 + 48);

    sub_160BC(v2 + 56, &qword_1164D0);
  }

  free(v2);
}

uint64_t sub_167D8()
{
  sub_DC40(&qword_1164C8);
  sub_D78E8();
  return v1;
}

uint64_t sub_16838()
{
  v5 = *(v0 + 48);
  v6 = *(v0 + 64);
  sub_DC40(&qword_1164C8);
  sub_D78E8();
  v1 = swift_allocObject();
  v2 = *(v0 + 48);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = v2;
  *(v1 + 80) = *(v0 + 64);
  *(v1 + 96) = *(v0 + 80);
  v3 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v3;
  sub_16AB4(v0, &v5);
  sub_16AEC();
  sub_16BD8();
  sub_16C2C();
  return sub_D7998();
}

__n128 sub_16954@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  v14 = *a1;
  v15 = v4;
  v16[0] = a1[2];
  *(v16 + 11) = *(a1 + 43);
  v5 = *(a2 + 16);
  sub_16054(&v14, v17, &qword_116500);

  sub_DC40(&qword_1164C8);
  sub_D78E8();
  v6 = *v17;
  v13 = *&v17[8];
  KeyPath = swift_getKeyPath();
  sub_D77D8();
  v8 = *&v17[8];
  *&v17[23] = v15;
  *&v17[7] = v14;
  *&v17[39] = v16[0];
  *&v17[50] = *(v16 + 11);
  v9 = *v17;
  *(a3 + 25) = *&v17[16];
  v10 = *&v17[48];
  *(a3 + 41) = *&v17[32];
  *(a3 + 57) = v10;
  v11 = v17[0];
  *a3 = KeyPath;
  *(a3 + 8) = 0;
  *(a3 + 73) = *&v17[64];
  *(a3 + 9) = v9;
  *(a3 + 80) = v5;
  *(a3 + 88) = v6;
  result = v13;
  *(a3 + 96) = v13;
  *(a3 + 112) = v11;
  *(a3 + 120) = v8;
  return result;
}

uint64_t sub_16AA0(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_16AEC()
{
  result = qword_1164D8;
  if (!qword_1164D8)
  {
    sub_EBC0(&qword_1164C8);
    sub_15FB8(&qword_1164E0, &qword_1164D0);
    sub_15FB8(&qword_1164E8, &qword_1164D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1164D8);
  }

  return result;
}

unint64_t sub_16BD8()
{
  result = qword_1164F0;
  if (!qword_1164F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1164F0);
  }

  return result;
}

unint64_t sub_16C2C()
{
  result = qword_1164F8;
  if (!qword_1164F8)
  {
    sub_EBC0(&qword_116500);
    sub_16CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1164F8);
  }

  return result;
}

unint64_t sub_16CB0()
{
  result = qword_116508;
  if (!qword_116508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116508);
  }

  return result;
}

double sub_16D04@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_D77D8();
  v13 = *&v15[8];
  *&v15[23] = a1[1];
  *&v15[7] = *a1;
  *&v15[39] = a1[2];
  *&v15[50] = *(a1 + 43);
  *(a6 + 25) = *&v15[16];
  result = *&v15[32];
  *(a6 + 41) = *&v15[32];
  *(a6 + 57) = *&v15[48];
  *a6 = KeyPath;
  *(a6 + 8) = 0;
  *(a6 + 73) = *&v15[64];
  *(a6 + 9) = *v15;
  *(a6 + 80) = a2;
  *(a6 + 88) = a3;
  *(a6 + 96) = a4;
  *(a6 + 104) = a5;
  *(a6 + 112) = v15[0];
  *(a6 + 120) = v13;
  return result;
}

uint64_t sub_16DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  KeyPath = swift_getKeyPath();
  result = sub_D77D8();
  *a8 = KeyPath;
  *(a8 + 8) = 0;
  *(a8 + 16) = a1;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 56) = a6;
  *(a8 + 64) = a7;
  *(a8 + 72) = v18;
  *(a8 + 80) = v19;
  return result;
}

uint64_t sub_16E98()
{
  v1 = v0[3];
  v12 = v0[2];
  v13 = v1;
  v2 = v0[3];
  v14 = v0[4];
  v3 = v0[1];
  v10 = *v0;
  v11 = v3;
  v15 = *(v0 + 10);
  v8 = v2;
  v9 = *(v0 + 8);
  sub_DC40(&qword_1164C8);
  sub_D78E8();
  v4 = swift_allocObject();
  v5 = v13;
  *(v4 + 48) = v12;
  *(v4 + 64) = v5;
  *(v4 + 80) = v14;
  *(v4 + 96) = v15;
  v6 = v11;
  *(v4 + 16) = v10;
  *(v4 + 32) = v6;
  sub_16AB4(&v10, &v8);
  sub_16AEC();
  sub_16BD8();
  sub_16C2C();
  return sub_D7998();
}

uint64_t sub_16FCC()
{
  sub_DC40(&qword_116510);
  sub_D78B8();
  return v1;
}

void (*sub_17070(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x48uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 19) = a5 & 1;
  *(v9 + 48) = a3;
  *(v9 + 56) = a4;
  *v9 = a3;
  *(v9 + 8) = a4;
  *(v9 + 16) = a5 & 1;

  *(v10 + 64) = sub_DC40(&qword_116510);
  sub_D78B8();
  return sub_17138;
}

void sub_17138(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  sub_D78C8();

  free(v1);
}

uint64_t sub_171B0()
{
  sub_DC40(&qword_116510);
  sub_D78E8();
  return v1;
}

uint64_t sub_17204@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v9 = sub_D7148();
  v10 = *(v9 - 8);
  v26 = v9;
  v27 = v10;
  __chkstk_darwin();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_DC40(&qword_116518);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v25 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;

  v18 = a1;
  sub_DC40(&qword_116520);
  v19 = sub_EBC0(&qword_116528);
  v20 = sub_D6FD8();
  v21 = sub_15FB8(&qword_116530, &qword_116528);
  v22 = sub_1AFF8(&qword_116538, &type metadata accessor for IconOnlyLabelStyle);
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v36 = v22;
  swift_getOpaqueTypeConformance2();
  sub_D7848();
  sub_D7138();
  sub_15FB8(&qword_116540, &qword_116518);
  sub_1AFF8(&qword_116548, &type metadata accessor for BorderlessButtonStyle);
  v23 = v26;
  sub_D7428();
  (*(v27 + 8))(v12, v23);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_17568@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v18[0] = sub_D6FD8();
  v3 = *(v18[0] - 8);
  __chkstk_darwin();
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_DC40(&qword_116528);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v18 - v8;
  sub_DC40(&qword_115F08);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_DCB80;
  v11 = [a1 localizedName];
  v12 = sub_D7C18();
  v14 = v13;

  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_14B60();
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  v15 = String.localized(with:)(v10);

  v19 = v15;
  sub_16000();
  sub_D7768();
  sub_D6FC8();
  sub_15FB8(&qword_116530, &qword_116528);
  sub_1AFF8(&qword_116538, &type metadata accessor for IconOnlyLabelStyle);
  v16 = v18[0];
  sub_D7408();
  (*(v3 + 8))(v5, v16);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_17850@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_D7148();
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_DC40(&qword_116518);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v22 - v8;
  v10 = *v1;
  v11 = *(v1 + 8);
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = v11;
  *(v14 + 32) = v12;
  *(v14 + 40) = v13;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  v29 = v13;

  v15 = v10;
  sub_DC40(&qword_116520);
  v16 = sub_EBC0(&qword_116528);
  v17 = sub_D6FD8();
  v18 = sub_15FB8(&qword_116530, &qword_116528);
  v19 = sub_1AFF8(&qword_116538, &type metadata accessor for IconOnlyLabelStyle);
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  swift_getOpaqueTypeConformance2();
  sub_D7848();
  sub_D7138();
  sub_15FB8(&qword_116540, &qword_116518);
  sub_1AFF8(&qword_116548, &type metadata accessor for BorderlessButtonStyle);
  v20 = v23;
  sub_D7428();
  (*(v24 + 8))(v5, v20);
  return (*(v7 + 8))(v9, v6);
}

double sub_17BE4@<D0>(_OWORD *a1@<X8>)
{
  sub_DC40(&qword_116500);
  sub_D78B8();
  *a1 = v3;
  a1[1] = *v4;
  result = *&v4[11];
  *(a1 + 27) = *&v4[11];
  return result;
}

uint64_t sub_17C54()
{
  v1 = v0[3];
  v8[0] = v0[2];
  v8[1] = v1;
  v3 = v0[2];
  v2 = v0[3];
  v9[0] = v0[4];
  *(v9 + 11) = *(v0 + 75);
  v5 = v3;
  v6 = v2;
  *v7 = v0[4];
  *&v7[11] = *(v0 + 75);
  sub_16054(v8, v10, &qword_116500);
  sub_DC40(&qword_116500);
  sub_D78C8();
  v10[0] = v5;
  v10[1] = v6;
  v11[0] = *v7;
  *(v11 + 11) = *&v7[11];
  return sub_160BC(v10, &qword_116500);
}

uint64_t (*sub_17D34(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1F8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[2];
  v6 = v1[3];
  *v3 = v5;
  v3[1] = v6;
  v7 = v1[4];
  v3[2] = v7;
  v8 = *(v1 + 75);
  *(v3 + 43) = v8;
  v3[4] = v5;
  v3[5] = v6;
  v3[6] = v7;
  *(v3 + 107) = v8;
  sub_16054(v3, (v3 + 8), &qword_116500);
  *(v4 + 62) = sub_DC40(&qword_116500);
  sub_D78B8();
  return sub_21ACC;
}

double sub_17E00@<D0>(_OWORD *a1@<X8>)
{
  sub_DC40(&qword_116500);
  sub_D78E8();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = *v5;
  result = *&v5[11];
  *(a1 + 43) = *&v5[11];
  return result;
}

uint64_t sub_17E78()
{
  sub_DC40(&qword_1164C8);
  sub_D78B8();
  return v1;
}

void (*sub_17F2C(void *a1))(uint64_t *, char)
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
  v5 = v1[12];
  v6 = v1[13];
  v3[10] = v5;
  v3[11] = v6;
  v7 = v1[14];
  v3[12] = v7;
  v3[6] = v5;
  v3[7] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_16444((v3 + 6), (v3 + 3));

  sub_16054((v4 + 7), (v4 + 3), &qword_1164D0);
  v4[13] = sub_DC40(&qword_1164C8);
  sub_D78B8();
  return sub_1800C;
}

uint64_t sub_18010()
{
  sub_DC40(&qword_1164C8);
  sub_D78E8();
  return v1;
}

uint64_t sub_1806C()
{
  sub_DC40(&qword_116550);
  sub_15FB8(&qword_116558, &qword_116550);
  return sub_D7328();
}

uint64_t sub_18110@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v32 = sub_DC40(&qword_116760);
  v3 = *(v32 - 8);
  v4 = __chkstk_darwin(v32);
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v26 - v6;
  v8 = sub_DC40(&qword_116768);
  v30 = *(v8 - 8);
  v9 = v30;
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  v35 = a1;
  sub_DC40(&qword_116770);
  sub_15FB8(&qword_116778, &qword_116770);
  v29 = v14;
  sub_D79C8();
  v34 = a1;
  sub_DC40(&qword_116620);
  sub_15FB8(&qword_116618, &qword_116620);
  v27 = v7;
  sub_D79C8();
  v15 = *(v9 + 16);
  v28 = v12;
  v15(v12, v14, v8);
  v16 = *(v3 + 16);
  v17 = v31;
  v18 = v7;
  v19 = v32;
  v16(v31, v18, v32);
  v20 = v33;
  v15(v33, v12, v8);
  v21 = &v20[*(sub_DC40(&qword_116780) + 48)];
  v22 = v17;
  v16(v21, v17, v19);
  v23 = *(v3 + 8);
  v23(v27, v19);
  v24 = *(v30 + 8);
  v24(v29, v8);
  v23(v22, v19);
  return (v24)(v28, v8);
}

uint64_t sub_18494(__int128 *a1, uint64_t a2)
{
  v4 = sub_DC40(&qword_116798);
  __chkstk_darwin(v4);
  v6 = &v19[-v5 - 8];
  v7 = a1[1];
  v20 = *a1;
  v8 = a1[2];
  v21 = v7;
  v22[0] = v8;
  *(v22 + 11) = *(a1 + 43);
  *v6 = sub_D6FB8();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v9 = sub_DC40(&qword_1167D0);
  sub_1866C(a2, a1, &v6[*(v9 + 44)]);
  v6[*(v4 + 36)] = 0;
  v10 = swift_allocObject();
  v11 = *(a2 + 80);
  *(v10 + 80) = *(a2 + 64);
  *(v10 + 96) = v11;
  *(v10 + 112) = *(a2 + 96);
  *(v10 + 128) = *(a2 + 112);
  v12 = *(a2 + 16);
  *(v10 + 16) = *a2;
  *(v10 + 32) = v12;
  v13 = *(a2 + 48);
  *(v10 + 48) = *(a2 + 32);
  *(v10 + 64) = v13;
  v14 = v20;
  v15 = v21;
  v16 = v22[0];
  *(v10 + 179) = *(v22 + 11);
  *(v10 + 168) = v16;
  *(v10 + 152) = v15;
  *(v10 + 136) = v14;
  sub_216BC(a2, v19);
  sub_16054(&v20, v19, &qword_116500);
  sub_2154C();
  sub_D7468();

  return sub_160BC(v6, &qword_116798);
}

uint64_t sub_1866C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a3;
  v5 = sub_DC40(&qword_1167D8);
  v89 = *(v5 - 8);
  v90 = v5;
  (__chkstk_darwin)();
  v87 = &v73[-v6];
  v7 = sub_DC40(&qword_1167E0);
  v83 = *(v7 - 8);
  v84 = v7;
  (__chkstk_darwin)();
  v82 = &v73[-v8];
  sub_DC40(&qword_1167E8);
  v9 = (__chkstk_darwin)();
  v86 = &v73[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v85 = &v73[-v11];
  v12 = *(a1 + 24);
  swift_getKeyPath();
  v13 = a2[1];
  v112 = *a2;
  v113 = v13;
  v114[0] = a2[2];
  *(v114 + 11) = *(a2 + 43);
  sub_DC40(&qword_116500);
  sub_D78D8();

  v111[8] = v111[12];
  v111[9] = v111[13];
  v111[10] = v111[14];
  v111[11] = v111[15];
  v88 = sub_DC40(&qword_116738);
  sub_D78B8();
  v14 = v111[6];
  v15 = v111[7];

  if (!*(v12 + 16))
  {

    return (*(v89 + 56))(v91, 1, 1, v90);
  }

  v16 = sub_1ED4C(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
    return (*(v89 + 56))(v91, 1, 1, v90);
  }

  v19 = *(*(v12 + 56) + 8 * v16);
  swift_getKeyPath();
  v20 = a2[1];
  v108 = *a2;
  v109 = v20;
  v110[0] = a2[2];
  *(v110 + 11) = *(a2 + 43);
  v79 = v19;
  sub_D78D8();

  v104 = v98[0];
  v105 = v98[1];
  v106 = v99;
  v107 = v100;
  sub_D78B8();
  v22 = v94;
  v21 = v95;

  v23 = *(a1 + 48);
  v115 = *(a1 + 32);
  v116 = v23;
  v25 = *(a1 + 32);
  v24 = *(a1 + 48);
  v117[0] = *(a1 + 64);
  *(v117 + 11) = *(a1 + 75);
  v101 = v25;
  v102 = v24;
  v103[0] = *(a1 + 64);
  *(v103 + 11) = *(a1 + 75);
  sub_D78B8();
  v27 = v111[0];
  v26 = v111[1];

  sub_1B09C(v111);
  if (v22 == v27 && v21 == v26)
  {
  }

  else
  {
    v29 = sub_D8118();

    if ((v29 & 1) == 0)
    {
      v34 = v79;
      v35 = [v79 sfSymbolsName];
      sub_D7C18();

      v36 = sub_D76F8();
      *&v81 = v36;
      v37 = [v34 localizedName];
      v38 = sub_D7C18();
      v40 = v39;

      *&v108 = v38;
      *(&v108 + 1) = v40;
      sub_16000();
      v41 = sub_D73B8();
      v43 = v42;
      LOBYTE(v38) = v44;
      v46 = v45;

      sub_1F900(v41, v43, v38 & 1);

      sub_1F900(v41, v43, v38 & 1);

      sub_1F8F0(v41, v43, v38 & 1);

      *&v101 = v36;
      *(&v101 + 1) = v41;
      *&v102 = v43;
      *(&v102 + 1) = v38 & 1;
      *&v103[0] = v46;
      BYTE8(v103[0]) = 1;
      sub_DC40(&qword_116740);
      sub_15FB8(&qword_116748, &qword_116740);
      sub_D70B8();
      sub_1F8F0(v41, v43, v38 & 1);

      goto LABEL_11;
    }
  }

  *&v108 = sub_A9308(0xD000000000000011, 0x80000000000E4E70);
  *(&v108 + 1) = v30;
  sub_16000();
  *&v101 = sub_D73B8();
  *(&v101 + 1) = v31;
  *&v102 = v32 & 1;
  *(&v102 + 1) = v33;
  *&v103[0] = 0;
  BYTE8(v103[0]) = 0;
  sub_DC40(&qword_116740);
  sub_15FB8(&qword_116748, &qword_116740);
  sub_D70B8();
LABEL_11:
  v80 = v108;
  v81 = v109;
  v47 = *&v110[0];
  v48 = BYTE8(v110[0]);
  swift_getKeyPath();
  v49 = a2[1];
  v108 = *a2;
  v109 = v49;
  v110[0] = a2[2];
  *(v110 + 11) = *(a2 + 43);
  v77 = *(&v80 + 1);
  v78 = v80;
  v75 = *(&v81 + 1);
  v76 = v81;
  v50 = v47;
  v74 = v48;
  sub_21964(v80, *(&v80 + 1), v81, SBYTE8(v81), v47, v48);
  sub_D78D8();

  v94 = v104;
  v95 = v105;
  v96 = v106;
  v97 = v107;
  sub_D78B8();
  v52 = v92;
  v51 = v93;

  v101 = v115;
  v102 = v116;
  v103[0] = v117[0];
  *(v103 + 11) = *(v117 + 11);
  sub_D78B8();
  v54 = v99;
  v53 = v100;

  sub_1B09C(v98);
  if (v52 == v54 && v51 == v53)
  {

    v55 = v85;
  }

  else
  {
    v56 = sub_D8118();

    v55 = v85;
    if ((v56 & 1) == 0)
    {
      v62 = 1;
      v60 = v84;
      goto LABEL_17;
    }
  }

  *&v108 = sub_D76F8();
  sub_D7278();
  v57 = v82;
  sub_D73F8();

  v58 = sub_D75D8();
  KeyPath = swift_getKeyPath();
  v60 = v84;
  v61 = (v57 + *(v84 + 36));
  *v61 = KeyPath;
  v61[1] = v58;
  sub_21A44(v57, v55, &qword_1167E0);
  v62 = 0;
LABEL_17:
  (*(v83 + 56))(v55, v62, 1, v60);
  v63 = v86;
  sub_16054(v55, v86, &qword_1167E8);
  v64 = v87;
  v65 = v81;
  *v87 = v80;
  *(v64 + 16) = v65;
  *(v64 + 32) = v50;
  v66 = v74;
  *(v64 + 40) = v74;
  *(v64 + 48) = 0;
  *(v64 + 56) = 1;
  v67 = sub_DC40(&qword_1167F0);
  sub_16054(v63, v64 + *(v67 + 64), &qword_1167E8);
  v69 = v77;
  v68 = v78;
  v70 = v75;
  v71 = v76;
  sub_21964(v78, v77, v76, v75, v50, v66);

  sub_219D4(v68, v69, v71, v70, v50, v66);
  sub_160BC(v55, &qword_1167E8);
  sub_160BC(v63, &qword_1167E8);
  sub_219D4(v68, v69, v71, v70, v50, v66);
  v72 = v91;
  sub_21A44(v64, v91, &qword_1167D8);
  return (*(v89 + 56))(v72, 0, 1, v90);
}

uint64_t sub_19050@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v34 = sub_DC40(&qword_116560);
  v40 = *(v34 - 8);
  v3 = __chkstk_darwin(v34);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v35 = &v31 - v6;
  v7 = __chkstk_darwin(v5);
  v39 = &v31 - v8;
  v9 = __chkstk_darwin(v7);
  v38 = &v31 - v10;
  v11 = __chkstk_darwin(v9);
  v33 = &v31 - v12;
  __chkstk_darwin(v11);
  v32 = &v31 - v13;
  v14 = a1[3];
  v47 = a1[2];
  v48 = v14;
  v16 = a1[2];
  v15 = a1[3];
  v49[0] = a1[4];
  *(v49 + 11) = *(a1 + 75);
  v54 = v16;
  v55 = v15;
  v56[0] = a1[4];
  *(v56 + 11) = *(a1 + 75);
  sub_DC40(&qword_116500);
  sub_D78E8();
  swift_getKeyPath();
  v54 = v50[0];
  v55 = v50[1];
  v56[0] = v51[0];
  *(v56 + 11) = *(v51 + 11);
  sub_D78D8();

  sub_160BC(v50, &qword_116500);
  v43 = a1;
  sub_DC40(&qword_116568);
  sub_1B100();
  sub_D78A8();
  v54 = v47;
  v55 = v48;
  v56[0] = v49[0];
  *(v56 + 11) = *(v49 + 11);
  sub_D78E8();
  swift_getKeyPath();
  v54 = v52[0];
  v55 = v52[1];
  v56[0] = v53[0];
  *(v56 + 11) = *(v53 + 11);
  sub_D78D8();

  sub_160BC(v52, &qword_116500);
  v42 = a1;
  v17 = v33;
  sub_D78A8();
  v44 = v47;
  v45 = v48;
  v46[0] = v49[0];
  *(v46 + 11) = *(v49 + 11);
  sub_D78E8();
  swift_getKeyPath();
  v44 = v54;
  v45 = v55;
  v46[0] = v56[0];
  *(v46 + 11) = *(v56 + 11);
  sub_D78D8();

  sub_160BC(&v54, &qword_116500);
  v41 = a1;
  v18 = v38;
  sub_D78A8();
  v19 = v39;
  v20 = *(v40 + 16);
  v21 = v32;
  v22 = v34;
  v20(v39, v32, v34);
  v23 = v35;
  v20(v35, v17, v22);
  v24 = v36;
  v25 = v18;
  v26 = v22;
  v20(v36, v25, v22);
  v27 = v37;
  v20(v37, v19, v26);
  v28 = sub_DC40(&qword_116588);
  v20(&v27[*(v28 + 48)], v23, v26);
  v20(&v27[*(v28 + 64)], v24, v26);
  v29 = *(v40 + 8);
  v29(v38, v26);
  v29(v17, v26);
  v29(v21, v26);
  v29(v24, v26);
  v29(v23, v26);
  return (v29)(v39, v26);
}

uint64_t sub_195B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_D6F68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_DC40(&qword_116528);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20[-v10];
  v21 = sub_A9308(0xD000000000000019, 0x80000000000E4EF0);
  v22 = v12;
  sub_16000();
  sub_D7768();
  v13 = *a1;
  v21 = *a1;
  LOBYTE(v22) = *(a1 + 8);
  if (v22 != 1)
  {

    sub_D7E28();
    v15 = sub_D71C8();
    sub_D6A08();

    sub_D6F58();
    swift_getAtKeyPath();
    sub_160BC(&v21, &qword_1165C8);
    (*(v5 + 8))(v7, v4);
    if (v20[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = sub_D76B8();
    goto LABEL_6;
  }

  if (v13)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_D76C8();
LABEL_6:
  v16 = v14;
  KeyPath = swift_getKeyPath();
  (*(v9 + 32))(a2, v11, v8);
  result = sub_DC40(&qword_116568);
  v19 = (a2 + *(result + 36));
  *v19 = KeyPath;
  v19[1] = v16;
  return result;
}

uint64_t sub_1986C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_D6F68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_DC40(&qword_116528);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20[-v10];
  v21 = sub_A9308(0xD000000000000017, 0x80000000000E4EB0);
  v22 = v12;
  sub_16000();
  sub_D7768();
  v13 = *a1;
  v21 = *a1;
  LOBYTE(v22) = *(a1 + 8);
  if (v22 != 1)
  {

    sub_D7E28();
    v15 = sub_D71C8();
    sub_D6A08();

    sub_D6F58();
    swift_getAtKeyPath();
    sub_160BC(&v21, &qword_1165C8);
    (*(v5 + 8))(v7, v4);
    if (v20[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = sub_D76B8();
    goto LABEL_6;
  }

  if (v13)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_D76C8();
LABEL_6:
  v16 = v14;
  KeyPath = swift_getKeyPath();
  (*(v9 + 32))(a2, v11, v8);
  result = sub_DC40(&qword_116568);
  v19 = (a2 + *(result + 36));
  *v19 = KeyPath;
  v19[1] = v16;
  return result;
}

uint64_t sub_19B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_D6F68();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_DC40(&qword_116528);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20[-v10];
  v21 = sub_A9308(0x4958415F50415753, 0xEF454C5449545F53);
  v22 = v12;
  sub_16000();
  sub_D7768();
  v13 = *a1;
  v21 = *a1;
  LOBYTE(v22) = *(a1 + 8);
  if (v22 != 1)
  {

    sub_D7E28();
    v15 = sub_D71C8();
    sub_D6A08();

    sub_D6F58();
    swift_getAtKeyPath();
    sub_160BC(&v21, &qword_1165C8);
    (*(v5 + 8))(v7, v4);
    if (v20[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = sub_D76B8();
    goto LABEL_6;
  }

  if (v13)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_D76C8();
LABEL_6:
  v16 = v14;
  KeyPath = swift_getKeyPath();
  (*(v9 + 32))(a2, v11, v8);
  result = sub_DC40(&qword_116568);
  v19 = (a2 + *(result + 36));
  *v19 = KeyPath;
  v19[1] = v16;
  return result;
}

__n128 sub_19DD8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = swift_getKeyPath();
  *(a7 + 8) = 0;
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  v14 = *(a3 + 16);
  *(a7 + 32) = *a3;
  *(a7 + 48) = v14;
  *(a7 + 64) = *(a3 + 32);
  result = *(a3 + 43);
  *(a7 + 75) = result;
  *(a7 + 96) = a4;
  *(a7 + 104) = a5;
  *(a7 + 112) = a6;
  return result;
}

uint64_t sub_19E6C()
{
  sub_DC40(&qword_116550);
  sub_15FB8(&qword_116558, &qword_116550);
  return sub_D7328();
}

double sub_19F3C@<D0>(_OWORD *a1@<X8>)
{
  sub_DC40(&qword_116500);
  sub_D78B8();
  *a1 = v3;
  a1[1] = *v4;
  result = *&v4[11];
  *(a1 + 27) = *&v4[11];
  return result;
}

uint64_t sub_19FAC()
{
  v1 = v0[2];
  v8[0] = v0[1];
  v8[1] = v1;
  v3 = v0[1];
  v2 = v0[2];
  v9[0] = v0[3];
  *(v9 + 11) = *(v0 + 59);
  v5 = v3;
  v6 = v2;
  *v7 = v0[3];
  *&v7[11] = *(v0 + 59);
  sub_16054(v8, v10, &qword_116500);
  sub_DC40(&qword_116500);
  sub_D78C8();
  v10[0] = v5;
  v10[1] = v6;
  v11[0] = *v7;
  *(v11 + 11) = *&v7[11];
  return sub_160BC(v10, &qword_116500);
}

uint64_t (*sub_1A08C(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1F8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[1];
  v6 = v1[2];
  *v3 = v5;
  v3[1] = v6;
  v7 = v1[3];
  v3[2] = v7;
  v8 = *(v1 + 59);
  *(v3 + 43) = v8;
  v3[4] = v5;
  v3[5] = v6;
  v3[6] = v7;
  *(v3 + 107) = v8;
  sub_16054(v3, (v3 + 8), &qword_116500);
  *(v4 + 62) = sub_DC40(&qword_116500);
  sub_D78B8();
  return sub_21ACC;
}

void sub_1A158(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 256);
  v4 = (*a1 + 304);
  if (a2)
  {
    v5 = *v3;
    v6 = *(*a1 + 272);
    v2[22] = *v3;
    v2[23] = v6;
    v7 = *(v3 + 27);
    *(v2 + 379) = v7;
    v8 = v2[1];
    v2[12] = *v2;
    v2[13] = v8;
    v2[14] = v2[2];
    *(v2 + 235) = *(v2 + 43);
    v2[25] = v5;
    v2[26] = v6;
    *(v2 + 427) = v7;
    sub_1B040((v2 + 22), (v2 + 28));
    sub_D78C8();
    v9 = v2[13];
    v2[8] = v2[12];
    v2[9] = v9;
    v2[10] = v2[14];
    *(v2 + 171) = *(v2 + 235);
    sub_160BC((v2 + 8), &qword_116500);
    v10 = v3[1];
    *v4 = *v3;
    v4[1] = v10;
    *(v4 + 27) = *(v3 + 27);
    sub_1B09C(v4);
  }

  else
  {
    v11 = *(*a1 + 272);
    *v4 = *v3;
    v4[1] = v11;
    *(v4 + 27) = *(v3 + 27);
    v12 = v2[1];
    v2[12] = *v2;
    v2[13] = v12;
    v2[14] = v2[2];
    *(v2 + 235) = *(v2 + 43);
    sub_D78C8();
    v13 = v2[13];
    v2[8] = v2[12];
    v2[9] = v13;
    v2[10] = v2[14];
    *(v2 + 171) = *(v2 + 235);
    sub_160BC((v2 + 8), &qword_116500);
  }

  free(v2);
}

double sub_1A2B0@<D0>(_OWORD *a1@<X8>)
{
  sub_DC40(&qword_116500);
  sub_D78E8();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = *v5;
  result = *&v5[11];
  *(a1 + 43) = *&v5[11];
  return result;
}

uint64_t sub_1A328@<X0>(char *a1@<X8>)
{
  v36 = a1;
  v33 = sub_DC40(&qword_116560);
  v39 = *(v33 - 8);
  v2 = __chkstk_darwin(v33);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v34 = &v30 - v5;
  v6 = __chkstk_darwin(v4);
  v38 = &v30 - v7;
  v8 = __chkstk_darwin(v6);
  v37 = &v30 - v9;
  v10 = __chkstk_darwin(v8);
  v32 = &v30 - v11;
  __chkstk_darwin(v10);
  v31 = &v30 - v12;
  v13 = v1[2];
  v46 = v1[1];
  v47 = v13;
  v15 = v1[1];
  v14 = v1[2];
  v48[0] = v1[3];
  *(v48 + 11) = *(v1 + 59);
  v53 = v15;
  v54 = v14;
  v55[0] = v1[3];
  *(v55 + 11) = *(v1 + 59);
  sub_DC40(&qword_116500);
  sub_D78E8();
  swift_getKeyPath();
  v53 = v49[0];
  v54 = v49[1];
  v55[0] = v50[0];
  *(v55 + 11) = *(v50 + 11);
  sub_D78D8();

  sub_160BC(v49, &qword_116500);
  v42 = v1;
  sub_DC40(&qword_116568);
  sub_1B100();
  sub_D78A8();
  v53 = v46;
  v54 = v47;
  v55[0] = v48[0];
  *(v55 + 11) = *(v48 + 11);
  sub_D78E8();
  swift_getKeyPath();
  v53 = v51[0];
  v54 = v51[1];
  v55[0] = v52[0];
  *(v55 + 11) = *(v52 + 11);
  sub_D78D8();

  sub_160BC(v51, &qword_116500);
  v41 = v1;
  v16 = v32;
  sub_D78A8();
  v43 = v46;
  v44 = v47;
  v45[0] = v48[0];
  *(v45 + 11) = *(v48 + 11);
  sub_D78E8();
  swift_getKeyPath();
  v43 = v53;
  v44 = v54;
  v45[0] = v55[0];
  *(v45 + 11) = *(v55 + 11);
  sub_D78D8();

  sub_160BC(&v53, &qword_116500);
  v40 = v1;
  v17 = v37;
  sub_D78A8();
  v18 = v38;
  v19 = *(v39 + 16);
  v20 = v31;
  v21 = v33;
  v19(v38, v31, v33);
  v22 = v34;
  v19(v34, v16, v21);
  v23 = v35;
  v24 = v17;
  v25 = v21;
  v19(v35, v24, v21);
  v26 = v36;
  v19(v36, v18, v25);
  v27 = sub_DC40(&qword_116588);
  v19(&v26[*(v27 + 48)], v22, v25);
  v19(&v26[*(v27 + 64)], v23, v25);
  v28 = *(v39 + 8);
  v28(v37, v25);
  v28(v16, v25);
  v28(v20, v25);
  v28(v23, v25);
  v28(v22, v25);
  return (v28)(v38, v25);
}

__n128 sub_1A890@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  *&v6[7] = *a1;
  *&v6[23] = a1[1];
  *&v6[39] = a1[2];
  *&v6[50] = *(a1 + 43);
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 9) = *v6;
  result = *&v6[32];
  *(a2 + 73) = *&v6[64];
  *(a2 + 57) = *&v6[48];
  *(a2 + 41) = *&v6[32];
  *(a2 + 25) = *&v6[16];
  return result;
}

double sub_1A954@<D0>(_OWORD *a1@<X8>)
{
  sub_DC40(&qword_116500);
  sub_D78B8();
  *a1 = v3;
  a1[1] = *v4;
  result = *&v4[11];
  *(a1 + 27) = *&v4[11];
  return result;
}

uint64_t sub_1A9C4()
{
  v2 = *v0;
  v3 = v0[1];
  *v4 = v0[2];
  *&v4[11] = *(v0 + 43);
  sub_1B1F4(v0, v5);
  sub_DC40(&qword_116500);
  sub_D78C8();
  v5[0] = v2;
  v5[1] = v3;
  v6[0] = *v4;
  *(v6 + 11) = *&v4[11];
  return sub_160BC(v5, &qword_116500);
}

void (*sub_1AA78(void *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1F8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  *(v3 + 43) = *(v1 + 43);
  v3[1] = v6;
  v3[2] = v7;
  *v3 = v5;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  *(v3 + 107) = *(v1 + 43);
  v3[5] = v9;
  v3[6] = v10;
  v3[4] = v8;
  sub_1B1F4(v1, (v3 + 8));
  *(v4 + 62) = sub_DC40(&qword_116500);
  sub_D78B8();
  return sub_1AB44;
}

double sub_1AB48@<D0>(_OWORD *a1@<X8>)
{
  sub_DC40(&qword_116500);
  sub_D78E8();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = *v5;
  result = *&v5[11];
  *(a1 + 43) = *&v5[11];
  return result;
}

double sub_1ABC0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_D7088();
  sub_DC40(&qword_116500);
  sub_D78E8();
  KeyPath = swift_getKeyPath();
  *&v9[7] = v6;
  *&v9[23] = v7;
  *&v9[39] = *v8;
  *&v9[50] = *&v8[11];
  v4 = sub_D71F8();
  *(a1 + 49) = *&v9[16];
  *(a1 + 65) = *&v9[32];
  *(a1 + 81) = *&v9[48];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = KeyPath;
  *(a1 + 32) = 0;
  *(a1 + 97) = *&v8[25];
  *(a1 + 33) = *v9;
  *(a1 + 104) = v4;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 1;
  return result;
}

__n128 sub_1ACC8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 43);
  *(a2 + 43) = result;
  return result;
}

uint64_t (*sub_1ACE8(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1F8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[1];
  v6 = v1[2];
  *v3 = v5;
  v3[1] = v6;
  v7 = v1[3];
  v3[2] = v7;
  v8 = *(v1 + 59);
  *(v3 + 43) = v8;
  v3[4] = v5;
  v3[5] = v6;
  v3[6] = v7;
  *(v3 + 107) = v8;
  sub_16054(v3, (v3 + 8), &qword_116500);
  *(v4 + 62) = sub_DC40(&qword_116500);
  sub_D78B8();
  return sub_21ACC;
}

uint64_t sub_1ADBC()
{
  sub_DC40(&qword_1164C8);
  sub_D78B8();
  return v1;
}

uint64_t (*sub_1AE70(void *a1))()
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
  v5 = v1[11];
  v6 = v1[12];
  v3[10] = v5;
  v3[11] = v6;
  v7 = v1[13];
  v3[12] = v7;
  v3[6] = v5;
  v3[7] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_16444((v3 + 6), (v3 + 3));

  sub_16054((v4 + 7), (v4 + 3), &qword_1164D0);
  v4[13] = sub_DC40(&qword_1164C8);
  sub_D78B8();
  return sub_21AC8;
}

uint64_t sub_1AF50()
{
  sub_DC40(&qword_1164C8);
  sub_D78E8();
  return v1;
}

uint64_t sub_1AFF8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B100()
{
  result = qword_116570;
  if (!qword_116570)
  {
    sub_EBC0(&qword_116568);
    sub_15FB8(&qword_116530, &qword_116528);
    sub_15FB8(&qword_116578, &qword_116580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116570);
  }

  return result;
}

BOOL sub_1B22C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 0;
}

uint64_t sub_1B288@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_D7078();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = a1 + *(sub_DC40(&qword_116590) + 44);
  *v3 = sub_D6FB8();
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = sub_DC40(&qword_116598);
  return sub_1B30C(v1, v3 + *(v4 + 44));
}

uint64_t sub_1B30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = sub_DC40(&qword_116668);
  __chkstk_darwin(v122);
  v121[1] = v121 - v4;
  v135 = sub_DC40(&qword_116670);
  v124 = *(v135 - 8);
  __chkstk_darwin(v135);
  v123 = v121 - v5;
  v131 = sub_DC40(&qword_116678);
  __chkstk_darwin(v131);
  v134 = v121 - v6;
  v7 = sub_D71A8();
  v126 = *(v7 - 8);
  v127 = v7;
  __chkstk_darwin(v7);
  v125 = (v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v133 = sub_DC40(&qword_116680);
  v129 = *(v133 - 8);
  __chkstk_darwin(v133);
  v128 = v121 - v9;
  v10 = sub_DC40(&qword_116688);
  v145 = *(v10 - 8);
  v146 = v10;
  __chkstk_darwin(v10);
  v132 = v121 - v11;
  v12 = sub_DC40(&qword_116690);
  v13 = (__chkstk_darwin)(v12 - 8);
  v15 = v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v147 = v121 - v16;
  v17 = sub_DC40(&qword_116698);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v143 = v121 - v19;
  v20 = sub_DC40(&qword_1166A0);
  v21 = (__chkstk_darwin)(v20 - 8);
  v144 = v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = v121 - v23;
  v130 = objc_opt_self();
  v25 = [v130 currentDevice];
  v26 = [v25 userInterfaceIdiom];

  v148 = v24;
  if (!v26)
  {
    (*(v18 + 56))(v24, 1, 1, v17);
    goto LABEL_9;
  }

  v139 = v18;
  v140 = v17;
  v142 = a2;
  v27 = *(a1 + 32);
  v149 = *(a1 + 16);
  v150 = v27;
  v151[0] = *(a1 + 48);
  *(v151 + 11) = *(a1 + 59);
  sub_DC40(&qword_116500);
  sub_D78E8();
  swift_getKeyPath();
  v166 = v162[0];
  v167 = v162[1];
  v168[0] = v163[0];
  *(v168 + 11) = *(v163 + 11);
  sub_D78D8();

  v28 = sub_160BC(v162, &qword_116500);
  *&v138 = v121;
  *&v29 = __chkstk_darwin(v28);
  v137 = &v117;
  v119 = a1;
  v153 = v29;
  v154 = v30;
  v155 = v31;
  v136 = sub_D6FB8();
  v32 = *(a1 + 80);
  v33 = *(a1 + 32);
  v149 = *(a1 + 16);
  v150 = v33;
  v151[0] = *(a1 + 48);
  *(v151 + 11) = *(a1 + 59);
  sub_DC40(&qword_116500);
  sub_D78B8();
  v34 = v157;

  sub_1B09C(&v157);
  v35 = *(v32 + 16);
  v141 = v15;
  if (!v35)
  {

    goto LABEL_7;
  }

  v36 = sub_1ED4C(v34, *(&v34 + 1));
  v38 = v37;

  if ((v38 & 1) == 0)
  {
LABEL_7:
    v41 = 0;
    v46 = 0;
    v48 = 0;
    v52 = 0;
    v51 = 0;
    goto LABEL_8;
  }

  v39 = *(*(v32 + 56) + 8 * v36);
  v40 = [v39 sfSymbolsName];
  sub_D7C18();

  v41 = sub_D76F8();
  v42 = [v39 localizedName];
  v43 = sub_D7C18();
  v45 = v44;

  *&v149 = v43;
  *(&v149 + 1) = v45;
  sub_16000();
  v46 = sub_D73B8();
  v48 = v47;
  LOBYTE(v42) = v49;
  v51 = v50;

  v52 = v42 & 1;
  sub_1F900(v46, v48, v52);

  sub_1F8F0(v46, v48, v52);

LABEL_8:
  v53 = v140;
  LOBYTE(v157) = 1;
  v149 = v136;
  LOBYTE(v150) = 1;
  *(&v150 + 1) = v41;
  *&v151[0] = v46;
  *(&v151[0] + 1) = v48;
  *&v151[1] = v52;
  *(&v151[1] + 1) = v51;
  sub_DC40(&qword_1166A8);
  sub_DC40(&qword_1166B0);
  sub_15FB8(&qword_1166B8, &qword_1166A8);
  v54 = sub_1FCFC();
  v119 = &protocol witness table for String;
  v120 = v54;
  v55 = v143;
  sub_D7878();
  v56 = v139;
  v57 = v148;
  (v139[4])(v148, v55, v53);
  (v56[7])(v57, 0, 1, v53);
  v15 = v141;
  a2 = v142;
LABEL_9:
  v58 = *(a1 + 32);
  v157 = *(a1 + 16);
  v158 = v58;
  v60 = *(a1 + 16);
  v59 = *(a1 + 32);
  v159[0] = *(a1 + 48);
  *(v159 + 11) = *(a1 + 59);
  v61 = *(a1 + 80);
  v149 = v60;
  v150 = v59;
  v151[0] = *(a1 + 48);
  *(v151 + 11) = *(a1 + 59);
  sub_DC40(&qword_116500);
  sub_D78B8();
  v62 = v156[0];
  v63 = v156[1];

  sub_1B09C(v156);
  if (!*(v61 + 16))
  {

    goto LABEL_18;
  }

  v64 = sub_1ED4C(v62, v63);
  v66 = v65;

  if ((v66 & 1) == 0)
  {
LABEL_18:
    v95 = v147;
    (*(v145 + 56))(v147, 1, 1, v146);
    goto LABEL_19;
  }

  v67 = *(*(v61 + 56) + 8 * v64);
  v149 = v157;
  v150 = v158;
  v151[0] = v159[0];
  *(v151 + 11) = *(v159 + 11);
  v68 = v67;
  sub_D78B8();
  v69 = v154;
  v70 = v155;

  sub_1B09C(&v153);
  if (!*(v61 + 16))
  {

    goto LABEL_17;
  }

  v71 = sub_1ED4C(v69, v70);
  v73 = v72;

  if ((v73 & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  v141 = v15;
  v142 = a2;
  v74 = *(*(v61 + 56) + 8 * v71);
  v75 = [v130 currentDevice];
  v76 = [v75 userInterfaceIdiom];

  v143 = v74;
  if (v76)
  {
    v162[0] = *(a1 + 112);
    v166 = *(a1 + 112);
    v78 = v68;
    v124 = v78;
    sub_DC40(&qword_1166E0);
    sub_D7808();
    v123 = *(&v149 + 1);
    v79 = v149;
    v136 = v149;
    LODWORD(v137) = v150;
    v166 = v162[0];
    sub_D7808();
    *&v138 = *(&v149 + 1);
    v139 = v149;
    LODWORD(v140) = v150;
    v80 = swift_allocObject();
    v81 = *(a1 + 80);
    v80[5] = *(a1 + 64);
    v80[6] = v81;
    v82 = *(a1 + 112);
    v80[7] = *(a1 + 96);
    v80[8] = v82;
    v83 = *(a1 + 16);
    v80[1] = *a1;
    v80[2] = v83;
    v84 = *(a1 + 48);
    v80[3] = *(a1 + 32);
    v80[4] = v84;
    sub_1FDB0(a1, &v149);
    v85 = sub_D7828();
    v87 = v125;
    v86 = v126;
    *v125 = v85;
    v88 = v127;
    (*(v86 + 104))(v87, enum case for PopoverAttachmentAnchor.rect(_:), v127);
    *&v149 = v78;
    *(&v149 + 1) = v79;
    *&v150 = v123;
    BYTE8(v150) = v137;
    sub_D7248();
    v89 = sub_1D2C8();
    v130 = v89;
    v137 = sub_1D31C();
    v119 = v89;
    v120 = v137;
    v117 = &type metadata for GCSDpadInfoButton;
    v118 = &type metadata for GCSDpadDetailView;
    v90 = v128;
    sub_D7448();

    (*(v86 + 8))(v87, v88);

    v91 = v124;

    v92 = v129;
    v93 = v133;
    (*(v129 + 16))(v134, v90, v133);
    swift_storeEnumTagMultiPayload();
    *&v149 = &type metadata for GCSDpadInfoButton;
    *(&v149 + 1) = &type metadata for GCSDpadDetailView;
    *&v150 = v130;
    *(&v150 + 1) = v137;
    swift_getOpaqueTypeConformance2();
    sub_15FB8(&qword_1166E8, &qword_116670);
    v94 = v132;
    sub_D70B8();

    (*(v92 + 8))(v90, v93);
  }

  else
  {
    v140 = v121;
    __chkstk_darwin(v77);
    v139 = &v121[-6];
    v117 = v68;
    v118 = a1;
    v119 = v74;
    v100 = *(a1 + 80);
    v101 = *(a1 + 32);
    v149 = *(a1 + 16);
    v150 = v101;
    v151[0] = *(a1 + 48);
    *(v151 + 11) = *(a1 + 59);

    sub_DC40(&qword_116500);
    sub_D78E8();
    v149 = *(a1 + 88);
    *&v150 = *(a1 + 104);
    sub_DC40(&qword_1164C8);
    sub_D78E8();
    v102 = *&v162[0];
    v138 = *(v162 + 8);
    KeyPath = swift_getKeyPath();
    v169 = 0;
    v163[0] = v166;
    v163[1] = v167;
    v164[0] = v168[0];
    *(v164 + 11) = *(v168 + 11);
    *&v162[0] = KeyPath;
    BYTE8(v162[0]) = 0;
    *&v162[1] = v68;
    *(&v162[1] + 1) = v100;
    *&v165[0] = v102;
    *(v165 + 8) = v138;
    v104 = v68;
    v105 = [(ValueMetadata *)v104 localizedName];
    v106 = sub_D7C18();
    v108 = v107;

    v160 = v106;
    v161 = v108;
    v109 = sub_20700();
    v110 = sub_16000();
    sub_D7498();

    v151[2] = v164[0];
    v151[3] = v164[1];
    v151[4] = v165[0];
    v152 = *&v165[1];
    v149 = v162[0];
    v150 = v162[1];
    v151[0] = v163[0];
    v151[1] = v163[1];
    sub_20754(&v149);
    sub_DC40(&qword_1166F0);
    sub_15FB8(&qword_1166F8, &qword_1166F0);
    *&v149 = &type metadata for GCSDpadCustomPickerView;
    *(&v149 + 1) = &type metadata for String;
    *&v150 = v109;
    *(&v150 + 1) = v110;
    swift_getOpaqueTypeConformance2();
    v111 = v123;
    sub_D6C98();
    v112 = v124;
    v113 = v135;
    (v124[1].Kind)(v134, v111, v135);
    swift_storeEnumTagMultiPayload();
    v114 = sub_1D2C8();
    v115 = sub_1D31C();
    *&v149 = &type metadata for GCSDpadInfoButton;
    *(&v149 + 1) = &type metadata for GCSDpadDetailView;
    *&v150 = v114;
    *(&v150 + 1) = v115;
    swift_getOpaqueTypeConformance2();
    sub_15FB8(&qword_1166E8, &qword_116670);
    v94 = v132;
    sub_D70B8();

    (v112->Description)(v111, v113);
  }

  v116 = v94;
  v95 = v147;
  sub_21A44(v116, v147, &qword_116688);
  (*(v145 + 56))(v95, 0, 1, v146);
  v15 = v141;
  a2 = v142;
LABEL_19:
  v96 = v148;
  v97 = v144;
  sub_16054(v148, v144, &qword_1166A0);
  sub_16054(v95, v15, &qword_116690);
  sub_16054(v97, a2, &qword_1166A0);
  v98 = sub_DC40(&qword_1166D8);
  sub_16054(v15, a2 + *(v98 + 48), &qword_116690);
  sub_160BC(v95, &qword_116690);
  sub_160BC(v96, &qword_1166A0);
  sub_160BC(v15, &qword_116690);
  return sub_160BC(v97, &qword_1166A0);
}

__n128 sub_1C468@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 80);
  v5 = *(v1 + 32);
  v108 = *(v1 + 16);
  v109 = v5;
  *v110 = *(v1 + 48);
  *&v110[11] = *(v1 + 59);
  sub_DC40(&qword_116500);
  sub_D78B8();
  v6 = v116[0];
  v7 = v116[1];

  sub_1B09C(v116);
  if (*(v4 + 16))
  {
    v8 = sub_1ED4C(v6, v7);
    v10 = v9;

    if (v10)
    {
      v11 = *(*(v4 + 56) + 8 * v8);
      v12 = *(v2 + 2);
      v108 = v2[1];
      v109 = v12;
      *v110 = v2[3];
      *&v110[11] = *(v2 + 59);
      v13 = v11;
      sub_D78B8();
      v14 = v106;
      v15 = v107;

      sub_1B09C(v105);
      if (*(v4 + 16))
      {
        v16 = sub_1ED4C(v14, v15);
        v18 = v17;

        if (v18)
        {
          v74 = *(*(v4 + 56) + 8 * v16);
          v72 = sub_D6FB8();
          v19 = [v13 sfSymbolsName];
          sub_D7C18();

          v78 = sub_D76F8();
          v73 = v13;
          v20 = [v13 localizedName];
          v21 = sub_D7C18();
          v23 = v22;

          *&v108 = v21;
          *(&v108 + 1) = v23;
          sub_16000();
          v24 = sub_D73B8();
          v75 = v25;
          v76 = v24;
          v71 = v26;
          v77 = v27;
          v28 = *(v2 + 2);
          v108 = v2[1];
          v109 = v28;
          *v110 = v2[3];
          *&v110[11] = *(v2 + 59);
          sub_DC40(&qword_116500);
          sub_D78B8();
          v29 = v86;

          sub_1B09C(&v85);
          v30 = *(v2 + 2);
          v108 = v2[1];
          v109 = v30;
          *v110 = v2[3];
          *&v110[11] = *(v2 + 59);
          sub_D78B8();
          v32 = v89;
          v31 = v90;

          sub_1B09C(&v89);
          if (v29 == __PAIR128__(v31, v32))
          {
          }

          else
          {
            v37 = sub_D8118();

            if ((v37 & 1) == 0)
            {
              v51 = [v74 sfSymbolsName];
              sub_D7C18();

              v79 = sub_D76F8();
              v81 = sub_D7198();
              v52 = [v74 localizedName];
              v53 = sub_D7C18();
              v55 = v54;

              *&v108 = v53;
              *(&v108 + 1) = v55;
              v56 = sub_D73B8();
              v58 = v57;
              v60 = v59;
              LODWORD(v108) = sub_D7198();
              v61 = sub_D7388();
              v63 = v62;
              v65 = v64;
              v67 = v66;
              sub_1F8F0(v56, v58, v60 & 1);

              sub_1F900(v61, v63, v65 & 1);

              sub_1F900(v61, v63, v65 & 1);

              sub_1F8F0(v61, v63, v65 & 1);

              *&v103 = v79;
              *(&v103 + 1) = v81;
              *v104 = v61;
              *&v104[8] = v63;
              *&v104[16] = v65 & 1;
              *&v104[24] = v67;
              v104[32] = 1;
              sub_DC40(&qword_116658);
              sub_15FB8(&qword_116660, &qword_116658);
              sub_D70B8();
              sub_1F8F0(v61, v63, v65 & 1);

              goto LABEL_15;
            }
          }

          *&v108 = sub_A9308(0xD000000000000011, 0x80000000000E4E70);
          *(&v108 + 1) = v38;
          v39 = sub_D73B8();
          v41 = v40;
          v43 = v42;
          LODWORD(v108) = sub_D7198();
          v44 = sub_D7388();
          v46 = v45;
          v48 = v47;
          v50 = v49;
          sub_1F8F0(v39, v41, v43 & 1);

          *&v103 = v44;
          *(&v103 + 1) = v46;
          *v104 = v48 & 1;
          *&v104[8] = v50;
          memset(&v104[16], 0, 17);
          sub_DC40(&qword_116658);
          sub_15FB8(&qword_116660, &qword_116658);
          sub_D70B8();
LABEL_15:
          v80 = v108;
          v82 = v109;
          v68 = *v110;
          v69 = *&v110[8];
          v70 = v110[16];
          LOBYTE(v108) = v71 & 1;
          LOBYTE(v103) = 0;
          v83[0] = v110[16];

          sub_1F900(v76, v75, v71 & 1);

          sub_1F910(v80, *(&v80 + 1), v82.n128_i64[0], v82.n128_i64[1], v68, v69, v70);
          sub_1F980(v80, *(&v80 + 1), v82.n128_i64[0], v82.n128_i64[1], v68, v69, v70);
          sub_1F8F0(v76, v75, v71 & 1);

          *&v85 = v78;
          *(&v85 + 1) = v76;
          *&v86 = v75;
          BYTE8(v86) = v71 & 1;
          *(&v86 + 9) = v103;
          HIDWORD(v86) = *(&v103 + 3);
          *&v88[1] = *v83;
          *&v88[4] = *&v83[3];
          *&v87 = v77;
          *(&v87 + 1) = 0x402E000000000000;
          v88[0] = 0;
          *&v88[24] = v82;
          *&v88[8] = v80;
          *&v88[40] = v68;
          *&v88[48] = v69;
          v88[56] = v70;
          v89 = v78;
          v90 = v76;
          v91 = v75;
          v92 = v71 & 1;
          *&v93[3] = *(&v103 + 3);
          *v93 = v103;
          v94 = v77;
          v95 = 0x402E000000000000;
          v96 = 0;
          *&v97[3] = *&v83[3];
          *v97 = *v83;
          v98 = v80;
          v99 = v82;
          v100 = v68;
          v101 = v69;
          v102 = v70;
          sub_16054(&v85, &v108, &qword_1165B0);
          sub_160BC(&v89, &qword_1165B0);

          *&v84[55] = *v88;
          *&v84[71] = *&v88[16];
          *&v84[87] = *&v88[32];
          *&v84[7] = v85;
          *&v84[23] = v86;
          *&v84[39] = v87;
          v103 = v72;
          v104[0] = 1;
          *&v104[33] = *&v84[32];
          *&v104[17] = *&v84[16];
          *&v104[1] = *v84;
          *&v104[97] = *&v88[41];
          *&v104[81] = *&v84[80];
          *&v104[65] = *&v84[64];
          *&v104[49] = *&v84[48];
          nullsub_1(&v103);
          v113 = *&v104[80];
          v114 = *&v104[96];
          v115 = v104[112];
          *v110 = *&v104[16];
          *&v110[16] = *&v104[32];
          v111 = *&v104[48];
          v112 = *&v104[64];
          v108 = v103;
          v109 = *v104;
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  else
  {
  }

  sub_1EDC4(&v108);
LABEL_11:
  v33 = v114;
  *(a1 + 96) = v113;
  *(a1 + 112) = v33;
  *(a1 + 128) = v115;
  v34 = *&v110[16];
  *(a1 + 32) = *v110;
  *(a1 + 48) = v34;
  v35 = v112;
  *(a1 + 64) = v111;
  *(a1 + 80) = v35;
  result = v109;
  *a1 = v108;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1CD78()
{
  v1 = sub_DC40(&qword_1165B8);
  __chkstk_darwin(v1);
  v3 = &v20 - v2;
  v21 = sub_DC40(&qword_1165C0);
  __chkstk_darwin(v21);
  v5 = &v20 - v4;
  v6 = sub_D6F68();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v0 + 8);
  v11 = *v0;
  v24 = *v0;
  if (v25 == 1)
  {
    if ((v11 & 1) == 0)
    {
LABEL_3:
      sub_1C468(v22);
      v12 = v22[7];
      *(v3 + 6) = v22[6];
      *(v3 + 7) = v12;
      v3[128] = v23;
      v13 = v22[3];
      *(v3 + 2) = v22[2];
      *(v3 + 3) = v13;
      v14 = v22[5];
      *(v3 + 4) = v22[4];
      *(v3 + 5) = v14;
      v15 = v22[1];
      *v3 = v22[0];
      *(v3 + 1) = v15;
      swift_storeEnumTagMultiPayload();
      sub_DC40(&qword_1165D0);
      sub_15FB8(&qword_1165D8, &qword_1165C0);
      sub_1EDE0();
      return sub_D70B8();
    }
  }

  else
  {
    v20 = v8;

    sub_D7E28();
    v17 = sub_D71C8();
    sub_D6A08();

    sub_D6F58();
    swift_getAtKeyPath();
    sub_160BC(&v24, &qword_1165C8);
    (*(v7 + 8))(v10, v20);
    if (LOBYTE(v22[0]) != 1)
    {
      goto LABEL_3;
    }
  }

  *v5 = sub_D7078();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v18 = &v5[*(sub_DC40(&qword_116590) + 44)];
  *v18 = sub_D6FB8();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = sub_DC40(&qword_116598);
  sub_1B30C(v0, &v18[*(v19 + 44)]);
  sub_16054(v5, v3, &qword_1165C0);
  swift_storeEnumTagMultiPayload();
  sub_DC40(&qword_1165D0);
  sub_15FB8(&qword_1165D8, &qword_1165C0);
  sub_1EDE0();
  sub_D70B8();
  return sub_160BC(v5, &qword_1165C0);
}

unint64_t sub_1D2C8()
{
  result = qword_1165A0;
  if (!qword_1165A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1165A0);
  }

  return result;
}

unint64_t sub_1D31C()
{
  result = qword_1165A8;
  if (!qword_1165A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1165A8);
  }

  return result;
}

Swift::Int sub_1D370(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20F84(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1D520(v5);
  *a1 = v2;
  return result;
}

void *sub_1D3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_210CC();
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = v6;
  v8 = sub_1D49C(v6, 0);

  v9 = sub_20D7C(&v11, v8 + 2, v7, a1, a2, a3);

  if (v9 != v7)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v8;
}

void *sub_1D49C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_DC40(&qword_116750);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 31;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 6);
  return result;
}

Swift::Int sub_1D520(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_D80E8(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_DC40(&qword_116500);
        v5 = sub_D7D58();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D8E4(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D628(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D628(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v23 = *a4;
    v4 = (*a4 + (a3 << 6));
    v5 = result - a3 + 1;
LABEL_5:
    v22 = a3;
    v20 = v5;
    v37 = v5;
    v21 = v4;
    while (1)
    {
      v6 = *v4;
      v7 = v4[1];
      v8 = v4[2];
      *(v33 + 11) = *(v4 + 43);
      v32 = v7;
      v33[0] = v8;
      v31 = v6;
      v9 = *(v4 - 4);
      v10 = *(v4 - 3);
      v11 = *(v4 - 2);
      *(v36 + 11) = *(v4 - 21);
      v35 = v10;
      v36[0] = v11;
      v34 = v9;
      swift_getKeyPath();
      v28 = v31;
      v29 = v32;
      v30[0] = v33[0];
      *(v30 + 11) = *(v33 + 11);
      sub_16054(&v31, v26, &qword_116500);
      sub_16054(&v34, v26, &qword_116500);
      sub_DC40(&qword_116500);
      sub_D78D8();

      sub_DC40(&qword_116758);
      sub_D78B8();

      swift_getKeyPath();
      v26[0] = v34;
      v26[1] = v35;
      v27[0] = v36[0];
      *(v27 + 11) = *(v36 + 11);
      sub_D78D8();

      sub_D78B8();

      sub_160BC(&v34, &qword_116500);
      result = sub_160BC(&v31, &qword_116500);
      v12 = v37;
      if (v25 >= v24)
      {
LABEL_4:
        a3 = v22 + 1;
        v4 = v21 + 4;
        v5 = v20 - 1;
        if (v22 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v23)
      {
        break;
      }

      v13 = v4 - 4;
      v30[0] = v4[2];
      *(v30 + 11) = *(v4 + 43);
      v28 = *v4;
      v14 = v28;
      v29 = v4[1];
      v15 = v29;
      v16 = *(v4 - 3);
      *v4 = *(v4 - 4);
      v4[1] = v16;
      v17 = *(v4 - 1);
      v4[2] = *(v4 - 2);
      v4[3] = v17;
      *v13 = v14;
      *(v13 + 43) = *(v30 + 11);
      v18 = v30[0];
      v13[1] = v15;
      v13[2] = v18;
      if (!v12)
      {
        goto LABEL_4;
      }

      v37 = v12 + 1;
      v4 -= 4;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D8E4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v114 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_95:
    v9 = *v114;
    if (!*v114)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_97;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v9 = &unk_DCBD0;
  while (1)
  {
    v10 = v7;
    v11 = v7 + 1;
    v115 = v7;
    if (v7 + 1 < v6)
    {
      v116 = v6;
      v12 = *a3;
      v111 = v11;
      v13 = (*a3 + (v11 << 6));
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[2];
      *(v149 + 11) = *(v13 + 43);
      v148 = v15;
      v149[0] = v16;
      v147 = v14;
      v144 = *v13;
      v145 = v13[1];
      v146[0] = v13[2];
      *(v146 + 11) = *(v13 + 43);
      v17 = (v12 + (v10 << 6));
      v19 = v17[1];
      v18 = v17[2];
      v20 = *(v17 + 43);
      v150 = *v17;
      *(v152 + 11) = v20;
      v151 = v19;
      v152[0] = v18;
      v141 = *v17;
      v142 = v17[1];
      v143[0] = v17[2];
      *(v143 + 11) = *(v17 + 43);
      sub_16054(&v147, &v157, &qword_116500);
      sub_16054(&v150, &v157, &qword_116500);
      v157 = v144;
      v158 = v145;
      v159[0] = v146[0];
      *(v159 + 11) = *(v146 + 11);
      swift_getKeyPath();
      v160 = sub_DC40(&qword_116500);
      sub_D78D8();

      v135 = v138;
      *&v136 = v139;
      sub_DC40(&qword_116758);
      sub_D78B8();
      v120 = v131;

      swift_getKeyPath();
      v154 = v141;
      v155 = v142;
      v156[0] = v143[0];
      *(v156 + 11) = *(v143 + 11);
      sub_D78D8();

      v128 = v132;
      *&v129 = v133;
      sub_D78B8();
      v118 = v127;

      if (v5)
      {
        v154 = v141;
        v155 = v142;
        v156[0] = v143[0];
        *(v156 + 11) = *(v143 + 11);
        sub_160BC(&v154, &qword_116500);
        v157 = v144;
        v158 = v145;
        v159[0] = v146[0];
        *(v159 + 11) = *(v146 + 11);
        sub_160BC(&v157, &qword_116500);
      }

      v154 = v141;
      v155 = v142;
      v156[0] = v143[0];
      *(v156 + 11) = *(v143 + 11);
      sub_160BC(&v154, &qword_116500);
      v157 = v144;
      v158 = v145;
      v159[0] = v146[0];
      *(v159 + 11) = *(v146 + 11);
      result = sub_160BC(&v157, &qword_116500);
      v10 = v115;
      v21 = v115 + 2;
      v9 = &unk_DCBD0;
      if (v115 + 2 >= v116)
      {
        v11 = v115 + 2;
        v30 = v111;
      }

      else
      {
        v109 = v8;
        v22 = v17 + 8;
        while (1)
        {
          v23 = v21;
          LODWORD(v160) = v120 < v118;
          v24 = *v22;
          v25 = v22[1];
          v26 = v22[2];
          *(v137 + 11) = *(v22 + 43);
          v136 = v25;
          v137[0] = v26;
          v135 = v24;
          v27 = *(v22 - 4);
          v28 = *(v22 - 3);
          v29 = *(v22 - 2);
          *(v140 + 11) = *(v22 - 21);
          v139 = v28;
          v140[0] = v29;
          v138 = v27;
          swift_getKeyPath();
          v132 = v135;
          v133 = v136;
          v134[0] = v137[0];
          *(v134 + 11) = *(v137 + 11);
          sub_16054(&v135, &v128, &qword_116500);
          sub_16054(&v138, &v128, &qword_116500);
          sub_DC40(&qword_116500);
          sub_D78D8();

          v127 = v131;
          sub_DC40(&qword_116758);
          sub_D78B8();

          swift_getKeyPath();
          v128 = v138;
          v129 = v139;
          v130[0] = v140[0];
          *(v130 + 11) = *(v140 + 11);
          sub_D78D8();

          sub_D78B8();

          v9 = &unk_DCBD0;

          sub_160BC(&v138, &qword_116500);
          result = sub_160BC(&v135, &qword_116500);
          if (v160 == v126 >= v125)
          {
            break;
          }

          v21 = v23 + 1;
          v22 += 4;
          v11 = v116;
          if (v116 == v23 + 1)
          {
            v30 = v23;
            goto LABEL_13;
          }
        }

        v11 = v23;
        v30 = v23 - 1;
LABEL_13:
        v8 = v109;
        v10 = v115;
      }

      if (v120 < v118)
      {
        if (v11 < v10)
        {
          goto LABEL_128;
        }

        if (v10 <= v30)
        {
          v31 = v11;
          v32 = (v11 << 6) - 64;
          v33 = v10 << 6;
          do
          {
            if (v10 != --v31)
            {
              v37 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v38 = (v37 + v33);
              v39 = (v37 + v32);
              v138 = *v38;
              v139 = v38[1];
              v140[0] = v38[2];
              *(v140 + 11) = *(v38 + 43);
              if (v33 != v32 || v38 >= v39 + 4)
              {
                v34 = *v39;
                v35 = v39[1];
                v36 = v39[3];
                v38[2] = v39[2];
                v38[3] = v36;
                *v38 = v34;
                v38[1] = v35;
              }

              *v39 = v138;
              v39[1] = v139;
              v39[2] = v140[0];
              *(v39 + 43) = *(v140 + 11);
            }

            ++v10;
            v32 -= 64;
            v33 += 64;
          }

          while (v10 < v31);
          v10 = v115;
        }
      }
    }

    v40 = a3[1];
    v122 = v11;
    if (v11 < v40)
    {
      break;
    }

LABEL_44:
    if (v122 < v10)
    {
      goto LABEL_124;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1EC48(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v59 = *(v8 + 2);
    v58 = *(v8 + 3);
    v60 = v59 + 1;
    v61 = v115;
    if (v59 >= v58 >> 1)
    {
      result = sub_1EC48((v58 > 1), v59 + 1, 1, v8);
      v61 = v115;
      v8 = result;
    }

    *(v8 + 2) = v60;
    v62 = &v8[16 * v59];
    *(v62 + 4) = v61;
    *(v62 + 5) = v122;
    v9 = *v114;
    if (!*v114)
    {
      goto LABEL_134;
    }

    if (v59)
    {
      while (1)
      {
        v63 = v60 - 1;
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v64 = *(v8 + 4);
          v65 = *(v8 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_64:
          if (v67)
          {
            goto LABEL_113;
          }

          v80 = &v8[16 * v60];
          v82 = *v80;
          v81 = *(v80 + 1);
          v83 = __OFSUB__(v81, v82);
          v84 = v81 - v82;
          v85 = v83;
          if (v83)
          {
            goto LABEL_116;
          }

          v86 = &v8[16 * v63 + 32];
          v88 = *v86;
          v87 = *(v86 + 1);
          v74 = __OFSUB__(v87, v88);
          v89 = v87 - v88;
          if (v74)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v84, v89))
          {
            goto LABEL_120;
          }

          if (v84 + v89 >= v66)
          {
            if (v66 < v89)
            {
              v63 = v60 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        v90 = &v8[16 * v60];
        v92 = *v90;
        v91 = *(v90 + 1);
        v74 = __OFSUB__(v91, v92);
        v84 = v91 - v92;
        v85 = v74;
LABEL_78:
        if (v85)
        {
          goto LABEL_115;
        }

        v93 = &v8[16 * v63];
        v95 = *(v93 + 4);
        v94 = *(v93 + 5);
        v74 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v74)
        {
          goto LABEL_118;
        }

        if (v96 < v84)
        {
          goto LABEL_3;
        }

LABEL_85:
        v101 = v63 - 1;
        if (v63 - 1 >= v60)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v102 = *&v8[16 * v101 + 32];
        v103 = *&v8[16 * v63 + 40];
        sub_1E578((*a3 + (v102 << 6)), (*a3 + (*&v8[16 * v63 + 32] << 6)), (*a3 + (v103 << 6)), v9);
        if (v5)
        {
        }

        if (v103 < v102)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1EC34(v8);
        }

        if (v101 >= *(v8 + 2))
        {
          goto LABEL_110;
        }

        v104 = &v8[16 * v101];
        *(v104 + 4) = v102;
        *(v104 + 5) = v103;
        v153 = v8;
        result = sub_1EBA8(v63);
        v8 = v153;
        v60 = *(v153 + 2);
        if (v60 <= 1)
        {
          goto LABEL_3;
        }
      }

      v68 = &v8[16 * v60 + 32];
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_111;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_112;
      }

      v75 = &v8[16 * v60];
      v77 = *v75;
      v76 = *(v75 + 1);
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_114;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_117;
      }

      if (v79 >= v71)
      {
        v97 = &v8[16 * v63 + 32];
        v99 = *v97;
        v98 = *(v97 + 1);
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_121;
        }

        if (v66 < v100)
        {
          v63 = v60 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_64;
    }

LABEL_3:
    v7 = v122;
    v6 = a3[1];
    v9 = &unk_DCBD0;
    if (v122 >= v6)
    {
      goto LABEL_95;
    }
  }

  if (__OFSUB__(v11, v10))
  {
    goto LABEL_125;
  }

  if (v11 - v10 >= a4)
  {
    goto LABEL_43;
  }

  if (__OFADD__(v115, a4))
  {
    goto LABEL_126;
  }

  if (v115 + a4 < v40)
  {
    v40 = v115 + a4;
  }

  if (v40 < v115)
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    result = sub_1EC34(v8);
    v8 = result;
LABEL_97:
    v153 = v8;
    v105 = *(v8 + 2);
    if (v105 >= 2)
    {
      while (*a3)
      {
        v106 = *&v8[16 * v105];
        v107 = *&v8[16 * v105 + 24];
        sub_1E578((*a3 + (v106 << 6)), (*a3 + (*&v8[16 * v105 + 16] << 6)), (*a3 + (v107 << 6)), v9);
        if (v5)
        {
        }

        if (v107 < v106)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1EC34(v8);
        }

        if (v105 - 2 >= *(v8 + 2))
        {
          goto LABEL_123;
        }

        v108 = &v8[16 * v105];
        *v108 = v106;
        *(v108 + 1) = v107;
        v153 = v8;
        result = sub_1EBA8(v105 - 1);
        v8 = v153;
        v105 = *(v153 + 2);
        if (v105 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v41 = v11;
  if (v11 == v40)
  {
LABEL_43:
    v10 = v115;
    goto LABEL_44;
  }

  v117 = v40;
  v110 = v8;
  v112 = v5;
  v160 = *a3;
  v42 = (v160 + (v11 << 6));
  v43 = v115 - v11 + 1;
LABEL_37:
  v121 = v42;
  v123 = v41;
  v119 = v43;
  while (1)
  {
    v44 = *v42;
    v45 = v42[1];
    v46 = v42[2];
    *(v156 + 11) = *(v42 + 43);
    v155 = v45;
    v156[0] = v46;
    v154 = v44;
    v47 = *(v42 - 4);
    v48 = *(v42 - 3);
    v49 = *(v42 - 2);
    *(v159 + 11) = *(v42 - 21);
    v158 = v48;
    v159[0] = v49;
    v157 = v47;
    swift_getKeyPath();
    v150 = v154;
    v151 = v155;
    v152[0] = v156[0];
    *(v152 + 11) = *(v156 + 11);
    sub_16054(&v154, &v147, &qword_116500);
    sub_16054(&v157, &v147, &qword_116500);
    sub_DC40(&qword_116500);
    sub_D78D8();

    v141 = v144;
    *&v142 = v145;
    sub_DC40(&qword_116758);
    sub_D78B8();
    v50 = v132;

    swift_getKeyPath();
    v147 = v157;
    v148 = v158;
    v149[0] = v159[0];
    *(v149 + 11) = *(v159 + 11);
    sub_D78D8();

    v135 = v138;
    *&v136 = v139;
    sub_D78B8();
    v51 = v128;
    v9 = &unk_DCBD0;

    sub_160BC(&v157, &qword_116500);
    result = sub_160BC(&v154, &qword_116500);
    if (v50 >= v51)
    {
LABEL_36:
      v41 = v123 + 1;
      v42 = v121 + 4;
      v43 = v119 - 1;
      if (v123 + 1 != v117)
      {
        goto LABEL_37;
      }

      v122 = v117;
      v8 = v110;
      v5 = v112;
      goto LABEL_43;
    }

    if (!v160)
    {
      break;
    }

    v52 = v42 - 4;
    v152[0] = v42[2];
    *(v152 + 11) = *(v42 + 43);
    v150 = *v42;
    v53 = v150;
    v151 = v42[1];
    v54 = v151;
    v55 = *(v42 - 3);
    *v42 = *(v42 - 4);
    v42[1] = v55;
    v56 = *(v42 - 1);
    v42[2] = *(v42 - 2);
    v42[3] = v56;
    *v52 = v53;
    *(v52 + 43) = *(v152 + 11);
    v57 = v152[0];
    v52[1] = v54;
    v52[2] = v57;
    if (!v43)
    {
      goto LABEL_36;
    }

    ++v43;
    v42 -= 4;
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_1E578(char *__src, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 63;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 6;
  v11 = a3 - a2;
  v12 = a3 - a2 + 63;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 6;
  if (v10 >= v13)
  {
    v29 = v13 << 6;
    if (a4 != a2 || &a2[v29] <= a4)
    {
      memmove(a4, a2, v13 << 6);
      v6 = a2;
    }

    v16 = &v4[v29];
    if (v11 < 64 || v6 <= v7)
    {
      v28 = v6;
    }

    else
    {
      v55 = v4;
      v58 = v7;
      do
      {
        __dsta = v6;
        v31 = (v6 - 64);
        v32 = v5 - 64;
        v33 = v16;
        v57 = (v6 - 64);
        while (1)
        {
          v16 = v33;
          v75 = v32;
          v37 = v32 + 64;
          v38 = *(v33 - 4);
          v39 = *(v33 - 3);
          v40 = *(v33 - 2);
          *(v71 + 11) = *(v33 - 21);
          v70 = v39;
          v71[0] = v40;
          v69 = v38;
          v41 = v31[1];
          v72 = *v31;
          v73 = v41;
          v74[0] = v31[2];
          *(v74 + 11) = *(v31 + 43);
          swift_getKeyPath();
          v66 = v69;
          v67 = v70;
          v68[0] = v71[0];
          *(v68 + 11) = *(v71 + 11);
          sub_16054(&v69, &v63, &qword_116500);
          sub_16054(&v72, &v63, &qword_116500);
          sub_DC40(&qword_116500);
          sub_D78D8();

          sub_DC40(&qword_116758);
          sub_D78B8();

          swift_getKeyPath();
          v63 = v72;
          v64 = v73;
          v65[0] = v74[0];
          *(v65 + 11) = *(v74 + 11);
          sub_D78D8();

          sub_D78B8();

          sub_160BC(&v72, &qword_116500);
          sub_160BC(&v69, &qword_116500);
          if (v62 < v61)
          {
            break;
          }

          v33 = v16 - 64;
          v42 = v75;
          if (v37 < v16 || v75 >= v16)
          {
            v34 = *v33;
            v35 = *(v16 - 3);
            v36 = *(v16 - 1);
            *(v75 + 2) = *(v16 - 2);
            *(v42 + 3) = v36;
            *v42 = v34;
            *(v42 + 1) = v35;
            v4 = v55;
            v31 = v57;
          }

          else
          {
            v4 = v55;
            v31 = v57;
            if (v37 != v16)
            {
              v43 = *v33;
              v44 = *(v16 - 3);
              v45 = *(v16 - 1);
              *(v75 + 2) = *(v16 - 2);
              *(v42 + 3) = v45;
              *v42 = v43;
              *(v42 + 1) = v44;
            }
          }

          v32 = v42 - 64;
          if (v33 <= v4)
          {
            v16 -= 64;
            v28 = __dsta;
            goto LABEL_44;
          }
        }

        v5 = v75;
        if (v37 < __dsta || v75 >= __dsta)
        {
          v4 = v55;
          v28 = v57;
          v50 = *v57;
          v51 = v57[1];
          v52 = v57[3];
          *(v75 + 2) = v57[2];
          *(v5 + 3) = v52;
          *v5 = v50;
          *(v5 + 1) = v51;
          v46 = v58;
        }

        else
        {
          v4 = v55;
          v28 = v57;
          v46 = v58;
          if (v37 != __dsta)
          {
            v47 = *v57;
            v48 = v57[1];
            v49 = v57[3];
            *(v75 + 2) = v57[2];
            *(v5 + 3) = v49;
            *v5 = v47;
            *(v5 + 1) = v48;
          }
        }

        if (v16 <= v4)
        {
          break;
        }

        v6 = v28;
      }

      while (v28 > v46);
    }
  }

  else
  {
    v14 = v10 << 6;
    if (a4 != __src || &__src[v14] <= a4)
    {
      memmove(a4, __src, v14);
      v6 = a2;
    }

    v16 = &v4[v14];
    if (v8 >= 64 && v6 < v5)
    {
      v75 = v5;
      v56 = &v4[v14];
      while (1)
      {
        __dst = v6;
        v17 = *v6;
        v18 = *(v6 + 1);
        v19 = *(v6 + 2);
        *(v71 + 11) = *(v6 + 43);
        v70 = v18;
        v71[0] = v19;
        v69 = v17;
        v20 = *v4;
        v21 = *(v4 + 1);
        v22 = *(v4 + 2);
        *(v74 + 11) = *(v4 + 43);
        v73 = v21;
        v74[0] = v22;
        v72 = v20;
        swift_getKeyPath();
        v66 = v69;
        v67 = v70;
        v68[0] = v71[0];
        *(v68 + 11) = *(v71 + 11);
        sub_16054(&v69, &v63, &qword_116500);
        sub_16054(&v72, &v63, &qword_116500);
        sub_DC40(&qword_116500);
        sub_D78D8();

        sub_DC40(&qword_116758);
        sub_D78B8();

        swift_getKeyPath();
        v63 = v72;
        v64 = v73;
        v65[0] = v74[0];
        *(v65 + 11) = *(v74 + 11);
        sub_D78D8();

        sub_D78B8();

        sub_160BC(&v72, &qword_116500);
        sub_160BC(&v69, &qword_116500);
        if (v62 >= v61)
        {
          break;
        }

        v23 = __dst;
        v6 = __dst + 64;
        if (v7 != __dst)
        {
          goto LABEL_16;
        }

LABEL_17:
        v7 += 64;
        v16 = v56;
        if (v4 >= v56 || v6 >= v75)
        {
          goto LABEL_19;
        }
      }

      v23 = v4;
      v6 = __dst;
      v24 = v7 == v4;
      v4 += 64;
      if (v24)
      {
        goto LABEL_17;
      }

LABEL_16:
      v25 = *v23;
      v26 = *(v23 + 1);
      v27 = *(v23 + 3);
      *(v7 + 2) = *(v23 + 2);
      *(v7 + 3) = v27;
      *v7 = v25;
      *(v7 + 1) = v26;
      goto LABEL_17;
    }

LABEL_19:
    v28 = v7;
  }

LABEL_44:
  v53 = (v16 - v4 + (v16 - v4 < 0 ? 0x3FuLL : 0)) & 0xFFFFFFFFFFFFFFC0;
  if (v28 != v4 || v28 >= &v4[v53])
  {
    memmove(v28, v4, v53);
  }

  return 1;
}

uint64_t sub_1EBA8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1EC34(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1EC48(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_DC40(&qword_119140);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_1ED4C(uint64_t a1, uint64_t a2)
{
  sub_D8168();
  sub_D7C78();
  v4 = sub_D8198();

  return sub_1FA48(a1, a2, v4);
}

double sub_1EDC4(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_1EDE0()
{
  result = qword_1165E0;
  if (!qword_1165E0)
  {
    sub_EBC0(&qword_1165D0);
    sub_15FB8(&qword_1165E8, &qword_1165F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1165E0);
  }

  return result;
}

__n128 sub_1EF44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1EF68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1EFB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1F014(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1F028(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1F070(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1F0C4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1F0F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1F138(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1F1A4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1F1C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 75))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1F210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 74) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 75) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 75) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1F278(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1F294(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 59))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1F2DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 58) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 59) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 59) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1F340(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1F364(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1F3AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1F420()
{
  result = qword_1165F8;
  if (!qword_1165F8)
  {
    sub_EBC0(&qword_116600);
    sub_16BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1165F8);
  }

  return result;
}

uint64_t sub_1F4A4()
{
  sub_EBC0(&qword_116518);
  sub_D7148();
  sub_15FB8(&qword_116540, &qword_116518);
  sub_1AFF8(&qword_116548, &type metadata accessor for BorderlessButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1F610()
{
  result = qword_116628;
  if (!qword_116628)
  {
    sub_EBC0(&qword_116630);
    sub_15FB8(&qword_116638, &qword_116640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116628);
  }

  return result;
}

unint64_t sub_1F714()
{
  result = qword_116648;
  if (!qword_116648)
  {
    sub_EBC0(&qword_116650);
    sub_15FB8(&qword_1165D8, &qword_1165C0);
    sub_1EDE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116648);
  }

  return result;
}

uint64_t sub_1F7CC()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1F874()
{
  sub_16AA0(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1F8F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1F900(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1F910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if (a7)
  {

    sub_1F900(a3, a4, a5 & 1);
  }

  else
  {
    sub_1F900(a1, a2, a3 & 1);
  }
}

uint64_t sub_1F980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  if (a7)
  {

    sub_1F8F0(a3, a4, a5 & 1);
  }

  else
  {
    sub_1F8F0(a1, a2, a3 & 1);
  }
}

uint64_t sub_1F9F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D6E98();
  *a1 = result;
  return result;
}

unint64_t sub_1FA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_D8118())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1FB00()
{
  v1 = *(v0 + 16);
  v10 = *(v1 + 88);
  v11 = *(v1 + 104);
  sub_DC40(&qword_1164C8);
  sub_D78E8();
  *&v10 = sub_1D3DC(v12, v13, v14);
  sub_1D370(&v10);

  v12 = v10;
  v2 = swift_allocObject();
  v3 = *(v1 + 48);
  v5 = *v1;
  v4 = *(v1 + 16);
  v2[3] = *(v1 + 32);
  v2[4] = v3;
  v2[1] = v5;
  v2[2] = v4;
  v6 = *(v1 + 112);
  v8 = *(v1 + 64);
  v7 = *(v1 + 80);
  v2[7] = *(v1 + 96);
  v2[8] = v6;
  v2[5] = v8;
  v2[6] = v7;
  sub_1FDB0(v1, &v10);
  sub_DC40(&qword_116728);
  sub_DC40(&qword_1166D0);
  sub_15FB8(&qword_116730, &qword_116728);
  sub_15FB8(&qword_1166C8, &qword_1166D0);
  sub_16C2C();
  return sub_D7998();
}

unint64_t sub_1FCFC()
{
  result = qword_1166C0;
  if (!qword_1166C0)
  {
    sub_EBC0(&qword_1166B0);
    sub_15FB8(&qword_1166C8, &qword_1166D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1166C0);
  }

  return result;
}

double sub_1FDE8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v64 = sub_D6FB8();
  v69 = 1;
  v5 = [v2 sfSymbolsName];
  sub_D7C18();

  v62 = sub_D76F8();
  v6 = [v2 localizedName];
  v7 = sub_D7C18();
  v9 = v8;

  *v68 = v7;
  *&v68[8] = v9;
  sub_16000();
  v10 = sub_D73B8();
  v60 = v11;
  v61 = v12;
  LOBYTE(v6) = v13;
  KeyPath = swift_getKeyPath();
  v58 = v6 & 1;
  v68[0] = v6 & 1;
  v72[0] = 0;
  v14 = v3[2];
  *v68 = v3[1];
  *&v68[16] = v14;
  *&v68[32] = v3[3];
  *&v68[43] = *(v3 + 59);
  sub_DC40(&qword_116500);
  sub_D78B8();
  v16 = v89;
  v15 = v90;

  sub_1B09C(v88);
  v17 = v3[2];
  *v68 = v3[1];
  *&v68[16] = v17;
  *&v68[32] = v3[3];
  *&v68[43] = *(v3 + 59);
  sub_D78B8();
  v19 = v91[0];
  v18 = v91[1];

  sub_1B09C(v91);
  if (v16 == v19 && v15 == v18)
  {
  }

  else
  {
    v20 = sub_D8118();

    if ((v20 & 1) == 0)
    {
      v34 = [v4 sfSymbolsName];
      sub_D7C18();

      v56 = sub_D76F8();
      v57 = sub_D7198();
      v35 = [v4 localizedName];
      v36 = sub_D7C18() >> 32;
      v38 = v37;

      *&v68[4] = v36;
      *&v68[8] = v38;
      v39 = sub_D73B8();
      v41 = v40;
      LOBYTE(v38) = v42;
      *v68 = sub_D7198();
      v43 = sub_D7388();
      v45 = v44;
      v47 = v46;
      v49 = v48;
      sub_1F8F0(v39, v41, v38 & 1);

      v72[0] = v47 & 1;
      *&v78 = v43;
      *(&v78 + 1) = v45;
      LOBYTE(v79) = v47 & 1;
      *(&v79 + 1) = *v68;
      DWORD1(v79) = *&v68[3];
      *(&v79 + 1) = v49;
      *v80 = swift_getKeyPath();
      *&v80[8] = 2;
      v80[16] = 0;
      *&v80[17] = 256;
      *&v70[47] = *&v80[15];
      *&v70[16] = v79;
      *&v70[32] = *v80;
      *v70 = v78;
      *&v81[47] = *&v80[15];
      *&v81[16] = v79;
      *&v81[32] = *v80;
      *v81 = v78;
      *&v86[51] = *&v80[15];
      *&v86[36] = *v80;
      *&v86[20] = v79;
      *&v86[4] = v78;

      sub_16054(&v78, v68, &qword_1164A0);

      sub_16054(v81, v68, &qword_1164A0);
      sub_160BC(v70, &qword_1164A0);

      LOBYTE(v83) = 1;
      *v68 = v56;
      *&v68[8] = v57;
      *&v68[12] = *v86;
      *&v68[28] = *&v86[16];
      *&v68[44] = *&v86[32];
      *&v68[59] = *&v86[47];
      v68[67] = 1;
      sub_DC40(&qword_116710);
      sub_15FB8(&qword_116718, &qword_116710);
      sub_D70B8();
      sub_160BC(&v78, &qword_1164A0);

      *&v68[32] = *&v72[32];
      *&v68[48] = *&v72[48];
      *&v68[64] = *&v72[64];
      *v68 = *v72;
      *&v68[16] = *&v72[16];
      goto LABEL_7;
    }
  }

  *&v68[4] = sub_A9308(0xD000000000000011, 0x80000000000E4E70) >> 32;
  *&v68[8] = v21;
  v22 = sub_D73B8();
  v24 = v23;
  v26 = v25;
  *v68 = sub_D7198();
  v27 = sub_D7388();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_1F8F0(v22, v24, v26 & 1);

  LOBYTE(v78) = v31 & 1;
  v86[0] = 0;
  *v72 = v27;
  *&v72[8] = v29;
  v72[16] = v31 & 1;
  *&v72[17] = *v81;
  *&v72[20] = *&v81[3];
  *&v72[24] = v33;
  *&v72[32] = *v70;
  *&v72[48] = *&v70[16];
  *&v72[63] = *&v70[31];
  v72[67] = 0;
  sub_DC40(&qword_116710);
  sub_15FB8(&qword_116718, &qword_116710);
  sub_D70B8();
LABEL_7:
  *&v72[32] = *&v68[32];
  *&v72[48] = *&v68[48];
  *v72 = *v68;
  *&v72[16] = *&v68[16];
  *&v70[32] = *&v68[32];
  *&v70[48] = *&v68[48];
  *v70 = *v68;
  *&v70[16] = *&v68[16];
  *&v81[7] = *v68;
  *&v72[64] = *&v68[64];
  *&v83 = v10;
  *(&v83 + 1) = v60;
  LOBYTE(v84) = v58;
  *(&v84 + 1) = *v87;
  DWORD1(v84) = *&v87[3];
  *(&v84 + 1) = v61;
  *v85 = KeyPath;
  *&v85[8] = 2;
  *&v85[16] = 0;
  v85[18] = 1;
  v82 = 1;
  *v71 = *&v68[64];
  *&v81[71] = *&v68[64];
  *&v81[55] = *&v68[48];
  *&v81[39] = *&v68[32];
  *&v81[23] = *&v68[16];
  *&v67[15] = *&v85[15];
  v66 = v84;
  *v67 = *v85;
  v65 = v83;

  sub_16054(&v83, &v78, &qword_1164A0);
  sub_16054(v70, &v78, &qword_116720);
  sub_160BC(v72, &qword_116720);
  *&v78 = v10;
  *(&v78 + 1) = v60;
  LOBYTE(v79) = v58;
  *(&v79 + 1) = *v87;
  DWORD1(v79) = *&v87[3];
  *(&v79 + 1) = v61;
  *v80 = KeyPath;
  *&v80[8] = 2;
  *&v80[16] = 0;
  v80[18] = 1;
  sub_160BC(&v78, &qword_1164A0);

  *&v70[8] = v65;
  *&v70[24] = v66;
  *&v70[40] = *v67;
  *&v71[9] = *v81;
  *&v71[68] = *&v81[59];
  *&v71[57] = *&v81[48];
  *&v71[41] = *&v81[32];
  *&v71[25] = *&v81[16];
  *&v72[55] = *&v67[15];
  *&v72[40] = *v67;
  *&v72[24] = v66;
  *&v72[8] = v65;
  *v70 = v62;
  *&v70[55] = *&v67[15];
  v70[63] = BYTE4(v78);
  *&v70[59] = v78;
  *v71 = 0;
  v71[8] = 1;
  *v72 = v62;
  v72[63] = BYTE4(v78);
  *&v72[59] = v78;
  *&v72[64] = 0;
  v73 = 1;
  v74 = *v81;
  *(v77 + 11) = *&v81[59];
  v77[0] = *&v81[48];
  v76 = *&v81[32];
  v75 = *&v81[16];
  sub_16054(v70, v68, &qword_116708);
  sub_160BC(v72, &qword_116708);
  *&v68[55] = *&v70[48];
  *&v68[39] = *&v70[32];
  *&v68[103] = *&v71[32];
  *&v68[119] = *&v71[48];
  *&v68[135] = *&v71[64];
  *&v68[151] = *&v71[80];
  *&v68[71] = *v71;
  *&v68[87] = *&v71[16];
  *&v68[7] = *v70;
  *&v68[23] = *&v70[16];
  v50 = *&v68[112];
  *(a1 + 113) = *&v68[96];
  *(a1 + 129) = v50;
  *(a1 + 145) = *&v68[128];
  *(a1 + 156) = *&v68[139];
  v51 = *&v68[48];
  *(a1 + 49) = *&v68[32];
  *(a1 + 65) = v51;
  v52 = *&v68[80];
  *(a1 + 81) = *&v68[64];
  *(a1 + 97) = v52;
  result = *v68;
  v54 = *&v68[16];
  *(a1 + 17) = *v68;
  v55 = v69;
  *a1 = v64;
  *(a1 + 8) = 0;
  *(a1 + 16) = v55;
  *(a1 + 33) = v54;
  return result;
}

unint64_t sub_20700()
{
  result = qword_116700;
  if (!qword_116700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116700);
  }

  return result;
}

uint64_t sub_20784()
{
  sub_16AA0(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_20808@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = sub_D6FB8();
  v4 = *(v2 + 96);
  swift_getKeyPath();
  v5 = a1[1];
  v42 = *a1;
  v43 = v5;
  v44[0] = a1[2];
  *(v44 + 11) = *(a1 + 43);
  sub_DC40(&qword_116500);
  sub_D78D8();

  v41[8] = v41[12];
  v41[9] = v41[13];
  v41[10] = v41[14];
  v41[11] = v41[15];
  sub_DC40(&qword_116738);
  sub_D78B8();

  if (*(v4 + 16))
  {
    v6 = sub_1ED4C(v41[6], v41[7]);
    v8 = v7;

    if (v8)
    {
      v10 = *(*(v4 + 56) + 8 * v6);
      swift_getKeyPath();
      v39 = a1[1];
      v40 = a1[2];
      v11 = v10;
      sub_D78D8();

      sub_D78B8();

      sub_D78B8();
      v13 = v41[0];
      v12 = v41[1];

      sub_1B09C(v41);
      if (v36 == v13 && v37 == v12)
      {
      }

      else
      {
        v18 = sub_D8118();

        if ((v18 & 1) == 0)
        {
          v25 = [v11 sfSymbolsName];
          sub_D7C18();

          sub_D76F8();
          v26 = [v11 localizedName];
          v27 = sub_D7C18();
          v29 = v28;

          *&v38 = v27;
          *(&v38 + 1) = v29;
          sub_16000();
          v30 = sub_D73B8();
          v32 = v31;
          LOBYTE(v26) = v33;

          sub_1F900(v30, v32, v26 & 1);

          sub_1F900(v30, v32, v26 & 1);

          sub_1F8F0(v30, v32, v26 & 1);

          sub_1F900(v30, v32, v26 & 1);

          sub_DC40(&qword_116740);
          sub_15FB8(&qword_116748, &qword_116740);
          sub_D70B8();

          sub_1F8F0(v30, v32, v26 & 1);

          sub_1F8F0(v30, v32, v26 & 1);

          goto LABEL_11;
        }
      }

      *&v38 = sub_A9308(0xD000000000000011, 0x80000000000E4E70);
      *(&v38 + 1) = v19;
      sub_16000();
      v20 = sub_D73B8();
      v22 = v21;
      v24 = v23 & 1;
      sub_1F900(v20, v21, v23 & 1);

      sub_DC40(&qword_116740);
      sub_15FB8(&qword_116748, &qword_116740);
      sub_D70B8();

      sub_1F8F0(v20, v22, v24);
LABEL_11:

      v15 = v38;
      v17 = v39;
      v14 = v40;
      v16 = BYTE8(v40);
      goto LABEL_12;
    }
  }

  else
  {
  }

  v14 = 0;
  v15 = 0uLL;
  v16 = -1;
  v17 = 0uLL;
LABEL_12:
  *a2 = v34;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v15;
  *(a2 + 40) = v17;
  *(a2 + 56) = v14;
  *(a2 + 64) = v16;
  return result;
}

uint64_t sub_20D7C(void *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v31 = a4;
  *(&v31 + 1) = a5;
  *&v32 = a6;
  sub_DC40(&qword_1164C8);
  sub_15FB8(&qword_1164E0, &qword_1164D0);
  result = sub_D7918();
  v13 = v28;
  v34 = v28;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *a1 = a4;
    a1[1] = a5;
    a1[2] = a6;
    a1[3] = v13;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v19 = a1;
    v14 = 1;
    a1 = &unk_DCBD0;
    while (1)
    {
      *&v31 = a4;
      *(&v31 + 1) = a5;
      *&v32 = a6;
      sub_D7928();
      v13 = v28;
      if (v34 == v28)
      {
        a3 = v14 - 1;
        a1 = v19;
        goto LABEL_13;
      }

      v26 = a6;
      v27 = v34;
      v24 = a4;
      v25 = a5;
      sub_D7948();
      v28 = v21;
      v29 = v22;
      v30[0] = v23[0];
      *(v30 + 11) = *(v23 + 11);
      v31 = v21;
      v32 = v22;
      v33[0] = v23[0];
      *(v33 + 11) = *(v23 + 11);
      sub_16054(&v28, v20, &qword_116500);
      sub_160BC(&v31, &qword_116500);
      *&v21 = a4;
      *(&v21 + 1) = a5;
      *&v22 = a6;
      sub_D7938();
      v15 = v28;
      v16 = v29;
      v17 = v30[0];
      *(a2 + 43) = *(v30 + 11);
      a2[1] = v16;
      a2[2] = v17;
      *a2 = v15;
      v13 = a3;
      if (a3 == v14)
      {
        break;
      }

      a2 += 4;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v13 = v34;
    a1 = v19;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *sub_20F98(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_DC40(&qword_116750);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_DC40(&qword_116500);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_210CC()
{
  sub_DC40(&qword_1164C8);
  sub_15FB8(&qword_1164E0, &qword_1164D0);
  sub_D7918();
  sub_D7928();
  return 0;
}

uint64_t sub_2120C()
{
  sub_DC40(&qword_116788);
  sub_2148C();
  return sub_D7348();
}

uint64_t sub_21288()
{
  v1 = *(v0 + 16);
  v12 = *(v1 + 96);
  v13 = *(v1 + 112);
  sub_DC40(&qword_1164C8);
  sub_D78E8();
  *&v12 = sub_1D3DC(v14, v15, v16);
  sub_1D370(&v12);

  v14 = v12;
  v2 = swift_allocObject();
  v3 = *(v1 + 48);
  v5 = *v1;
  v4 = *(v1 + 16);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v3;
  *(v2 + 16) = v5;
  *(v2 + 32) = v4;
  v7 = *(v1 + 80);
  v6 = *(v1 + 96);
  v8 = *(v1 + 64);
  *(v2 + 128) = *(v1 + 112);
  *(v2 + 96) = v7;
  *(v2 + 112) = v6;
  *(v2 + 80) = v8;
  sub_216BC(v1, &v12);
  sub_DC40(&qword_116728);
  sub_DC40(&qword_1167C8);
  sub_15FB8(&qword_116730, &qword_116728);
  v9 = sub_EBC0(&qword_116798);
  v10 = sub_2154C();
  *&v12 = v9;
  *(&v12 + 1) = v10;
  swift_getOpaqueTypeConformance2();
  sub_16C2C();
  return sub_D7998();
}

unint64_t sub_2148C()
{
  result = qword_116790;
  if (!qword_116790)
  {
    sub_EBC0(&qword_116788);
    sub_EBC0(&qword_116798);
    sub_2154C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_116790);
  }

  return result;
}

unint64_t sub_2154C()
{
  result = qword_1167A0;
  if (!qword_1167A0)
  {
    sub_EBC0(&qword_116798);
    sub_15FB8(&qword_1167A8, &qword_1167B0);
    sub_15FB8(&qword_1167B8, &qword_1167C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1167A0);
  }

  return result;
}

uint64_t sub_21630()
{
  sub_16AA0(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 136, 7);
}

uint64_t sub_216F4()
{
  sub_16AA0(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 195, 7);
}

uint64_t sub_21798()
{
  swift_getKeyPath();
  sub_DC40(&qword_116500);
  sub_D78D8();

  sub_DC40(&qword_116738);
  sub_D78B8();

  v1 = v0[4];
  v6 = v0[3];
  v7 = v1;
  v8[0] = v0[5];
  *(v8 + 11) = *(v0 + 91);
  sub_16054(&v6, v9, &qword_116500);
  sub_D78B8();

  v3 = v6;
  v4 = v7;
  *v5 = v8[0];
  *&v5[11] = *(v8 + 11);
  sub_D78C8();
  v9[0] = v3;
  v9[1] = v4;
  v10[0] = *v5;
  *(v10 + 11) = *&v5[11];
  return sub_160BC(v9, &qword_116500);
}

uint64_t sub_21964(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  if (a6)
  {

    sub_1F900(a2, a3, a4 & 1);
  }

  else
  {
    sub_1F900(a1, a2, a3 & 1);
  }
}

uint64_t sub_219D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  if (a6)
  {

    sub_1F8F0(a2, a3, a4 & 1);
  }

  else
  {
    sub_1F8F0(a1, a2, a3 & 1);
  }
}

uint64_t sub_21A44(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_DC40(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_21AD8()
{
  v1 = *v0;
  if (*v0)
  {

    return v1;
  }

  else
  {
    type metadata accessor for GCSPreferencesStore();
    sub_25CA0(&qword_116448, type metadata accessor for GCSPreferencesStore);
    result = sub_D6DD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B64()
{
  type metadata accessor for GCSPreferencesStore();
  sub_25CA0(&qword_116448, type metadata accessor for GCSPreferencesStore);

  return sub_D6DC8();
}

uint64_t sub_21BEC()
{
  sub_DC40(&qword_1167F8);
  sub_D78B8();
  return v1;
}

void (*sub_21CA0(void *a1))(uint64_t *a1, char a2)
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
  v5 = v1[2];
  v6 = v1[3];
  v3[10] = v5;
  v3[11] = v6;
  v7 = v1[4];
  v3[12] = v7;
  v3[6] = v5;
  v3[7] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  sub_16444((v3 + 6), (v3 + 3));

  sub_16054((v4 + 7), (v4 + 3), &qword_116800);
  v4[13] = sub_DC40(&qword_1167F8);
  sub_D78B8();
  return sub_21D80;
}

void sub_21D80(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  *(v2 + 24) = *(*a1 + 80);
  v4 = *(v2 + 64);
  *(v2 + 72) = v4;
  v5 = *(v2 + 96);
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  if (a2)
  {
    v6 = v4;
    sub_D78C8();
    sub_164A0(v2 + 48);

    sub_160BC(v2 + 56, &qword_116800);
  }

  else
  {
    sub_D78C8();
    sub_164A0(v2 + 48);

    sub_160BC(v2 + 56, &qword_116800);
  }

  free(v2);
}

uint64_t sub_21E64()
{
  sub_DC40(&qword_1167F8);
  sub_D78E8();
  return v1;
}

uint64_t sub_21EC0()
{
  sub_DC40(&qword_116510);
  sub_D78B8();
  return v1;
}

void (*sub_21F74(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  v7 = *(v1 + 56);
  *(v3 + 19) = v7;
  *(v3 + 48) = v5;
  *v3 = v5;
  *(v3 + 8) = v6;
  *(v3 + 16) = v7;
  sub_16444(v3 + 48, v3 + 24);

  *(v4 + 72) = sub_DC40(&qword_116510);
  sub_D78B8();
  return sub_22030;
}

void sub_22030(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 64);
  *(*a1 + 24) = *(*a1 + 56);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  sub_D78C8();
  sub_164A0(v1 + 48);

  free(v1);
}

uint64_t sub_220A8()
{
  sub_DC40(&qword_116510);
  sub_D78E8();
  return v1;
}

uint64_t sub_22104@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = sub_DC40(&qword_116808);
  __chkstk_darwin(v3);
  v53 = &v41 - v4;
  v5 = sub_DC40(&qword_116810);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - v6;
  v8 = sub_DC40(&qword_116818);
  v52 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v11 = sub_DC40(&qword_116820);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - v13;
  v57 = *(v1 + 16);
  v58 = *(v1 + 32);
  sub_DC40(&qword_1167F8);
  sub_D78B8();
  countAndFlagsBits = v56._countAndFlagsBits;
  if (v56._countAndFlagsBits)
  {
    sub_D6B38();
    v16 = sub_D6B58();
    (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
    v17 = swift_allocObject();
    v18 = *(v1 + 48);
    v17[3] = *(v1 + 32);
    v17[4] = v18;
    v17[5] = *(v1 + 64);
    v19 = *(v1 + 16);
    v17[1] = *v1;
    v17[2] = v19;
    sub_228B8(v1, &v57);
    v51 = v10;
    sub_D7838();
    v49 = v14;
    sub_DC40(&qword_115F08);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_DCB80;
    v47 = countAndFlagsBits;
    v21 = [countAndFlagsBits name];
    v22 = sub_D7C18();
    v50 = v3;
    v23 = v22;
    v48 = v12;
    v25 = v24;

    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_14B60();
    *(v20 + 32) = v23;
    *(v20 + 40) = v25;
    v26 = String.localized(with:)(v20);
    object = v26._object;

    v56 = v26;
    v55 = *(v2 + 64);
    sub_DC40(&qword_1166E0);
    v27 = sub_D7808();
    v44 = &v41;
    v43 = v58;
    __chkstk_darwin(v27);
    v45 = v11;
    v28 = v53;
    v42 = sub_DC40(&qword_116828);
    v29 = sub_15FB8(&qword_116830, &qword_116818);
    v39 = sub_16000();
    v40 = sub_15FB8(&qword_116838, &qword_116828);
    v30 = v49;
    v31 = v51;
    sub_D74C8();

    (*(v52 + 8))(v31, v8);
    v32 = v48;
    v33 = v45;
    (*(v48 + 16))(v28, v30, v45);
    swift_storeEnumTagMultiPayload();
    *&v57 = v8;
    *(&v57 + 1) = &type metadata for String;
    v58 = v42;
    v59 = v29;
    v60 = v39;
    v61 = v40;
    swift_getOpaqueTypeConformance2();
    sub_D70B8();

    return (*(v32 + 8))(v30, v33);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v35 = sub_EBC0(&qword_116828);
    v36 = sub_15FB8(&qword_116830, &qword_116818);
    v37 = sub_16000();
    v38 = sub_15FB8(&qword_116838, &qword_116828);
    *&v57 = v8;
    *(&v57 + 1) = &type metadata for String;
    v58 = v35;
    v59 = v36;
    v60 = v37;
    v61 = v38;
    swift_getOpaqueTypeConformance2();
    return sub_D70B8();
  }
}

uint64_t sub_22840@<X0>(uint64_t a1@<X8>)
{
  sub_A9308(0x5F454C49464F5250, 0xEE004554454C4544);
  sub_16000();
  result = sub_D73B8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_228F0@<X0>(_OWORD *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v39 = a3;
  v5 = sub_DC40(&qword_116810);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = sub_DC40(&qword_116818);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v37 = &v36 - v12;
  __chkstk_darwin(v13);
  v36 = &v36 - v14;
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  sub_D6B38();
  v18 = sub_D6B58();
  v19 = *(*(v18 - 8) + 56);
  v19(v7, 0, 1, v18);
  v20 = swift_allocObject();
  v21 = a1[3];
  *(v20 + 48) = a1[2];
  *(v20 + 64) = v21;
  *(v20 + 80) = a1[4];
  v22 = a1[1];
  *(v20 + 16) = *a1;
  *(v20 + 32) = v22;
  *(v20 + 96) = a2;
  sub_228B8(a1, v40);
  v23 = a2;
  sub_D7838();
  sub_D6B48();
  v19(v7, 0, 1, v18);
  v24 = swift_allocObject();
  v25 = a1[3];
  v24[3] = a1[2];
  v24[4] = v25;
  v24[5] = a1[4];
  v26 = a1[1];
  v24[1] = *a1;
  v24[2] = v26;
  sub_228B8(a1, v40);
  v27 = v36;
  sub_D7838();
  v28 = *(v9 + 16);
  v29 = v37;
  v28(v37, v17, v8);
  v30 = v38;
  v31 = v27;
  v28(v38, v27, v8);
  v32 = v39;
  v28(v39, v29, v8);
  v33 = sub_DC40(&qword_1169C8);
  v28(&v32[*(v33 + 48)], v30, v8);
  v34 = *(v9 + 8);
  v34(v31, v8);
  v34(v17, v8);
  v34(v30, v8);
  return (v34)(v29, v8);
}

uint64_t sub_22CF4@<X0>(uint64_t a1@<X8>)
{
  sub_A9308(0xD000000000000022, 0x80000000000E4FC0);
  sub_16000();
  result = sub_D73B8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_22D64@<X0>(uint64_t a1@<X8>)
{
  sub_A9308(0xD000000000000022, 0x80000000000E4F90);
  sub_16000();
  result = sub_D73B8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_22DD4()
{
  type metadata accessor for GCSPreferencesStore();
  sub_25CA0(&qword_116448, type metadata accessor for GCSPreferencesStore);

  return sub_D6DF8();
}

uint64_t sub_22E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  result = sub_D77D8();
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = v19;
  *(a9 + 72) = v20;
  return result;
}

uint64_t sub_22F30()
{
  sub_DC40(&qword_116510);
  sub_D78B8();
  return v1;
}

void (*sub_22FE4(uint64_t *a1))(uint64_t *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  v7 = *(v1 + 32);
  *(v4 + 19) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  *(v4 + 64) = sub_DC40(&qword_116510);
  sub_D78B8();
  return sub_23098;
}

uint64_t sub_2309C()
{
  sub_DC40(&qword_116510);
  sub_D78E8();
  return v1;
}

uint64_t sub_230F8()
{
  sub_DC40(&qword_1167F8);
  sub_D78B8();
  return v1;
}

void (*sub_231AC(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1[5];
  v6 = v1[6];
  v3[8] = v5;
  v3[9] = v6;
  v7 = v1[7];
  v3[10] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  v8 = v7;

  v4[11] = sub_DC40(&qword_1167F8);
  sub_D78B8();
  return sub_23270;
}

void sub_23270(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  *(v2 + 24) = *(*a1 + 64);
  v4 = *(v2 + 48);
  *(v2 + 56) = v4;
  v5 = *(v2 + 80);
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  if (a2)
  {
    v6 = v4;
    sub_D78C8();
  }

  else
  {
    sub_D78C8();
  }

  free(v2);
}

uint64_t sub_23334()
{
  sub_DC40(&qword_1167F8);
  sub_D78E8();
  return v1;
}

uint64_t type metadata accessor for GCSProfileSheetView()
{
  result = qword_11A6C0;
  if (!qword_11A6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_233F4(uint64_t a1)
{
  v2 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GCSProfileSheetView();
  sub_27770(a1, v4, type metadata accessor for GCSProfileParams);
  sub_DC40(&qword_116840);
  sub_D78C8();
  return sub_277D8(a1, type metadata accessor for GCSProfileParams);
}

void (*sub_234D0(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(type metadata accessor for GCSProfileParams() - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *a1 = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v4 = malloc(v3);
  }

  a1[1] = v4;
  v5 = sub_DC40(&qword_116840);
  a1[2] = v5;
  v6 = *(*(v5 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  a1[3] = v7;
  v9 = type metadata accessor for GCSProfileSheetView();
  sub_16054(v1 + *(v9 + 28), v8, &qword_116840);
  sub_D78B8();
  return sub_23604;
}

void sub_23604(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    sub_27770(*(a1 + 8), v3, type metadata accessor for GCSProfileParams);
    sub_D78C8();
    sub_160BC(v2, &qword_116840);
    sub_277D8(v4, type metadata accessor for GCSProfileParams);
  }

  else
  {
    sub_D78C8();
    sub_160BC(v2, &qword_116840);
  }

  free(v2);
  free(v4);

  free(v3);
}

uint64_t sub_236F8(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for GCSProfileSheetView();
  v2 = sub_DC40(&qword_116840);
  return a1(v2);
}

__n128 sub_23754@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for GCSProfileSheetView();
  sub_DC40(&qword_116848);
  sub_D78B8();
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_23810()
{
  v1 = v0 + *(type metadata accessor for GCSProfileSheetView() + 32);
  v2 = *(v1 + 112);
  v3 = *(v1 + 80);
  v26 = *(v1 + 96);
  v27 = v2;
  v4 = *(v1 + 112);
  v28 = *(v1 + 128);
  v5 = *(v1 + 48);
  v6 = *(v1 + 16);
  v22 = *(v1 + 32);
  v23 = v5;
  v7 = *(v1 + 48);
  v8 = *(v1 + 80);
  v24 = *(v1 + 64);
  v25 = v8;
  v9 = *(v1 + 16);
  v21[0] = *v1;
  v21[1] = v9;
  v17 = v26;
  v18 = v4;
  v19 = *(v1 + 128);
  v13 = v22;
  v14 = v7;
  v15 = v24;
  v16 = v3;
  v29 = *(v1 + 144);
  v20 = *(v1 + 144);
  v11 = v21[0];
  v12 = v6;
  sub_16054(v21, v30, &qword_116848);
  sub_DC40(&qword_116848);
  sub_D78C8();
  v30[6] = v17;
  v30[7] = v18;
  v30[8] = v19;
  v31 = v20;
  v30[2] = v13;
  v30[3] = v14;
  v30[4] = v15;
  v30[5] = v16;
  v30[0] = v11;
  v30[1] = v12;
  return sub_160BC(v30, &qword_116848);
}

void (*sub_23958(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x510uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 152;
  v7 = (v2 + *(type metadata accessor for GCSProfileSheetView() + 32));
  v9 = v7[6];
  v8 = v7[7];
  v10 = v7[5];
  *(v5 + 96) = v9;
  *(v5 + 112) = v8;
  v11 = v7[7];
  *(v5 + 128) = v7[8];
  v13 = v7[2];
  v12 = v7[3];
  v14 = v7[1];
  *(v5 + 32) = v13;
  *(v5 + 48) = v12;
  v15 = v7[3];
  v17 = v7[4];
  v16 = v7[5];
  *(v5 + 64) = v17;
  *(v5 + 80) = v16;
  v18 = v7[1];
  v19 = *v7;
  *v5 = *v7;
  *(v5 + 16) = v18;
  *(v5 + 248) = v9;
  v20 = v7[8];
  *(v6 + 112) = v11;
  *(v6 + 128) = v20;
  *(v5 + 184) = v13;
  *(v5 + 200) = v15;
  *(v5 + 216) = v17;
  *(v5 + 232) = v10;
  *(v5 + 152) = v19;
  *(v5 + 144) = *(v7 + 18);
  *(v5 + 296) = *(v7 + 18);
  *(v5 + 168) = v14;
  sub_16054(v5, v5 + 304, &qword_116848);
  *(v5 + 1288) = sub_DC40(&qword_116848);
  sub_D78B8();
  return sub_23A8C;
}

void sub_23A8C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 456;
  v4 = *a1 + 608;
  v5 = *a1 + 744;
  if (a2)
  {
    v6 = *(*a1 + 688);
    v8 = *(*a1 + 704);
    v7 = *(*a1 + 720);
    v2[61] = v8;
    v2[62] = v7;
    v9 = *(v4 + 16);
    v11 = *(v4 + 32);
    v10 = *(v4 + 48);
    v2[57] = v11;
    v2[58] = v10;
    v12 = *(v4 + 48);
    v14 = *(v4 + 64);
    v13 = *(v4 + 80);
    v2[59] = v14;
    v2[60] = v13;
    v15 = *(v4 + 16);
    v16 = *v4;
    v2[55] = *v4;
    v2[56] = v15;
    v17 = v2[7];
    *(v3 + 96) = v2[6];
    *(v3 + 112) = v17;
    *(v3 + 128) = v2[8];
    v18 = v2[3];
    *(v3 + 32) = v2[2];
    *(v3 + 48) = v18;
    v19 = v2[5];
    *(v3 + 64) = v2[4];
    *(v3 + 80) = v19;
    v20 = v2[1];
    *v3 = *v2;
    *(v3 + 16) = v20;
    v21 = *(v4 + 112);
    *(v2 + 1112) = v8;
    *(v2 + 1128) = v21;
    *(v2 + 1048) = v11;
    *(v2 + 1064) = v12;
    *(v2 + 1080) = v14;
    *(v2 + 1096) = v6;
    *(v2 + 126) = *(v4 + 128);
    *(v3 + 144) = *(v2 + 18);
    *(v2 + 143) = *(v4 + 128);
    *(v2 + 1016) = v16;
    *(v2 + 1032) = v9;
    sub_23CAC((v2 + 55), (v2 + 72));
    sub_D78C8();
    v22 = *(v3 + 112);
    v2[25] = *(v3 + 96);
    v2[26] = v22;
    v2[27] = *(v3 + 128);
    *(v2 + 56) = *(v3 + 144);
    v23 = *(v3 + 48);
    v2[21] = *(v3 + 32);
    v2[22] = v23;
    v24 = *(v3 + 80);
    v2[23] = *(v3 + 64);
    v2[24] = v24;
    v25 = *(v3 + 16);
    v2[19] = *v3;
    v2[20] = v25;
    sub_160BC((v2 + 19), &qword_116848);
    v26 = *(v4 + 112);
    *(v5 + 96) = *(v4 + 96);
    *(v5 + 112) = v26;
    *(v5 + 128) = *(v4 + 128);
    v27 = *(v4 + 48);
    *(v5 + 32) = *(v4 + 32);
    *(v5 + 48) = v27;
    v28 = *(v4 + 80);
    *(v5 + 64) = *(v4 + 64);
    *(v5 + 80) = v28;
    v29 = *(v4 + 16);
    *v5 = *v4;
    *(v5 + 16) = v29;
    sub_23D08(v5);
  }

  else
  {
    v30 = *(*a1 + 720);
    *(*a1 + 840) = *(*a1 + 704);
    *(v5 + 112) = v30;
    *(v5 + 128) = *(v4 + 128);
    v31 = *(v4 + 48);
    *(v5 + 32) = *(v4 + 32);
    *(v5 + 48) = v31;
    v32 = *(v4 + 80);
    *(v5 + 64) = *(v4 + 64);
    *(v5 + 80) = v32;
    v33 = *(v4 + 16);
    *v5 = *v4;
    *(v5 + 16) = v33;
    v34 = v2[7];
    *(v3 + 96) = v2[6];
    *(v3 + 112) = v34;
    *(v3 + 128) = v2[8];
    *(v3 + 144) = *(v2 + 18);
    v35 = v2[3];
    *(v3 + 32) = v2[2];
    *(v3 + 48) = v35;
    v36 = v2[5];
    *(v3 + 64) = v2[4];
    *(v3 + 80) = v36;
    v37 = v2[1];
    *v3 = *v2;
    *(v3 + 16) = v37;
    sub_D78C8();
    v38 = *(v3 + 112);
    v2[25] = *(v3 + 96);
    v2[26] = v38;
    v2[27] = *(v3 + 128);
    *(v2 + 56) = *(v3 + 144);
    v39 = *(v3 + 48);
    v2[21] = *(v3 + 32);
    v2[22] = v39;
    v40 = *(v3 + 80);
    v2[23] = *(v3 + 64);
    v2[24] = v40;
    v41 = *(v3 + 16);
    v2[19] = *v3;
    v2[20] = v41;
    sub_160BC((v2 + 19), &qword_116848);
  }

  free(v2);
}

double sub_23D5C@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for GCSProfileSheetView();
  sub_DC40(&qword_116848);
  sub_D78E8();
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 144) = v12;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_23E20()
{
  type metadata accessor for GCSProfileSheetView();
  sub_DC40(&qword_116510);
  sub_D78B8();
  return v1;
}

uint64_t sub_23E88()
{
  type metadata accessor for GCSProfileSheetView();
  sub_DC40(&qword_116510);
  return sub_D78C8();
}

void (*sub_23EF8(uint64_t *a1))(uint64_t *)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for GCSProfileSheetView() + 36));
  v6 = *v5;
  v7 = v5[1];
  *(v4 + 48) = *v5;
  *(v4 + 56) = v7;
  LOBYTE(v5) = *(v5 + 16);
  *(v4 + 19) = v5;
  *v4 = v6;
  *(v4 + 8) = v7;
  *(v4 + 16) = v5;

  *(v4 + 64) = sub_DC40(&qword_116510);
  sub_D78B8();
  return sub_27AA0;
}

uint64_t sub_23FBC()
{
  type metadata accessor for GCSProfileSheetView();
  sub_DC40(&qword_116510);
  sub_D78E8();
  return v1;
}

void *sub_24064()
{
  v1 = v0;
  v80 = type metadata accessor for GCSProfileParams();
  __chkstk_darwin(v80);
  v83 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v82 = &v75 - v4;
  __chkstk_darwin(v5);
  v7 = &v75 - v6;
  v8 = type metadata accessor for GCSProfileSheetView();
  v9 = *(v8 + 28);
  v78 = sub_DC40(&qword_116840);
  v79 = v9;
  v81 = v7;
  sub_D78B8();
  v77 = v8;
  v10 = *(v8 + 32);
  v84 = v1;
  v11 = *(v1 + v10 + 112);
  v117 = *(v1 + v10 + 96);
  v118 = v11;
  v119 = *(v1 + v10 + 128);
  v120 = *(v1 + v10 + 144);
  v12 = *(v1 + v10 + 48);
  v113[1] = *(v1 + v10 + 32);
  v114 = v12;
  v13 = *(v1 + v10 + 80);
  v115 = *(v1 + v10 + 64);
  v116 = v13;
  v14 = *(v1 + v10);
  v15 = *(v1 + v10 + 16);
  v76 = v1 + v10;
  v112 = v14;
  v113[0] = v15;
  v75 = sub_DC40(&qword_116848);
  sub_D78B8();
  v16 = v122;

  result = sub_23D08(v121);
  v86 = *(v16 + 16);
  if (!v86)
  {

    v19 = _swiftEmptyArrayStorage;
LABEL_48:
    v59 = sub_CEE7C(v19);

    v60 = v84;
    v61 = v82;
    sub_D78B8();
    v62 = sub_D16B4(v59);

    sub_277D8(v61, type metadata accessor for GCSProfileParams);
    v63 = v80;
    v64 = v81;
    v65 = *(v80 + 44);

    *(v64 + v65) = v62;
    v66 = *(v76 + 112);
    v117 = *(v76 + 96);
    v118 = v66;
    v119 = *(v76 + 128);
    v120 = *(v76 + 144);
    v67 = *(v76 + 48);
    v113[1] = *(v76 + 32);
    v114 = v67;
    v68 = *(v76 + 80);
    v115 = *(v76 + 64);
    v116 = v68;
    v69 = *(v76 + 16);
    v112 = *v76;
    v113[0] = v69;
    sub_D78B8();
    v109 = v100;
    v110 = v101;
    v111 = v102;
    v105 = v96;
    v106 = v97;
    v107 = v98;
    v108 = v99;
    v103 = v94;
    v104 = v95;
    sub_23D08(&v103);
    *(v64 + *(v63 + 72)) = v104;
    v70 = v60 + *(v77 + 40);
    v71 = *v70;
    v72 = *(v70 + 16);
    v112 = v71;
    *&v113[0] = v72;
    sub_DC40(&qword_1169A8);
    sub_D77E8();
    v73 = v94;
    v74 = (v64 + *(v63 + 20));

    *v74 = v73;
    sub_27770(v64, v61, type metadata accessor for GCSProfileParams);
    sub_27770(v61, v83, type metadata accessor for GCSProfileParams);
    sub_D78C8();
    sub_277D8(v61, type metadata accessor for GCSProfileParams);
    return sub_277D8(v64, type metadata accessor for GCSProfileParams);
  }

  v18 = 0;
  v85 = v16 + 32;
  v19 = _swiftEmptyArrayStorage;
  v90 = v16;
  while (v18 < *(v16 + 16))
  {
    v91 = v18;
    v21 = v85 + (v18 << 6);
    v22 = *(v21 + 48);
    v23 = *(v21 + 56);
    v24 = *(v22 + 16);
    if (v24)
    {
      v88 = *(v21 + 56);
      v89 = v19;
      *&v103 = _swiftEmptyArrayStorage;

      sub_272B4(0, v24, 0);
      v25 = v103;
      v87 = v22;
      v26 = (v22 + 64);
      do
      {
        v27 = *(v26 - 4);
        v28 = *(v26 - 3);
        v29 = *(v26 - 2);
        v30 = *(v26 - 1);
        v92 = *v26;
        v93 = v29;
        *&v103 = v25;
        v31 = v25[2];
        v32 = v25[3];

        if (v31 >= v32 >> 1)
        {
          sub_272B4((v32 > 1), v31 + 1, 1);
          v25 = v103;
        }

        v26 += 5;
        *(&v113[0] + 1) = &type metadata for GCSElementMappingView;
        *&v113[1] = &off_10AC48;
        v33 = swift_allocObject();
        *&v112 = v33;
        v33[2] = v27;
        v33[3] = v28;
        v34 = v92;
        v33[4] = v93;
        v33[5] = v30;
        v33[6] = v34;
        v25[2] = v31 + 1;
        sub_272DC(&v112, &v25[5 * v31 + 4]);
        --v24;
      }

      while (v24);

      v19 = v89;
      v16 = v90;
      v23 = v88;
    }

    else
    {

      v25 = _swiftEmptyArrayStorage;
    }

    v35 = v25[2];
    v36 = v19[2];
    v37 = v36 + v35;
    if (__OFADD__(v36, v35))
    {
      goto LABEL_50;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v37 > v19[3] >> 1)
    {
      if (v36 <= v37)
      {
        v38 = v36 + v35;
      }

      else
      {
        v38 = v36;
      }

      result = sub_2716C(result, v38, 1, v19);
      v19 = result;
    }

    if (v25[2])
    {
      if ((v19[3] >> 1) - v19[2] < v35)
      {
        goto LABEL_54;
      }

      sub_DC40(&qword_1169A0);
      swift_arrayInitWithCopy();

      if (v35)
      {
        v39 = v19[2];
        v40 = __OFADD__(v39, v35);
        v41 = v39 + v35;
        if (v40)
        {
          goto LABEL_56;
        }

        v19[2] = v41;
      }
    }

    else
    {

      if (v35)
      {
        goto LABEL_51;
      }
    }

    v42 = *(v23 + 16);
    if (v42)
    {
      v43 = v19;
      *&v94 = _swiftEmptyArrayStorage;
      sub_272B4(0, v42, 0);
      v44 = v94;
      v45 = v42 - 1;
      for (i = 32; ; i += 48)
      {
        v47 = *(v23 + i);
        v48 = *(v23 + i + 16);
        *(v113 + 11) = *(v23 + i + 27);
        v112 = v47;
        v113[0] = v48;
        sub_1B040(&v112, &v103);
        *&v94 = v44;
        v50 = v44[2];
        v49 = v44[3];
        if (v50 >= v49 >> 1)
        {
          sub_272B4((v49 > 1), v50 + 1, 1);
          v44 = v94;
        }

        *(&v104 + 1) = &type metadata for GCSDirectionPadElementMappingView;
        *&v105 = &off_10AC98;
        v51 = swift_allocObject();
        *&v103 = v51;
        v52 = v113[0];
        v51[1] = v112;
        v51[2] = v52;
        *(v51 + 43) = *(v113 + 11);
        v44[2] = v50 + 1;
        sub_272DC(&v103, &v44[5 * v50 + 4]);
        if (!v45)
        {
          break;
        }

        --v45;
      }

      v19 = v43;
      v16 = v90;
    }

    else
    {

      v44 = _swiftEmptyArrayStorage;
    }

    v53 = v44[2];
    v54 = v19[2];
    v55 = v54 + v53;
    if (__OFADD__(v54, v53))
    {
      goto LABEL_52;
    }

    if (v55 > v19[3] >> 1)
    {
      if (v54 <= v55)
      {
        v58 = v54 + v53;
      }

      else
      {
        v58 = v19[2];
      }

      result = sub_2716C((&dword_0 + 1), v58, 1, v19);
      v19 = result;
      v54 = result[2];
      if (v44[2])
      {
LABEL_37:
        if (((v19[3] >> 1) - v54) < v53)
        {
          goto LABEL_55;
        }

        sub_DC40(&qword_1169A0);
        swift_arrayInitWithCopy();

        v20 = v91;
        if (v53)
        {
          v56 = v19[2];
          v40 = __OFADD__(v56, v53);
          v57 = v56 + v53;
          if (v40)
          {
            goto LABEL_57;
          }

          v19[2] = v57;
        }

        goto LABEL_4;
      }
    }

    else if (v53)
    {
      goto LABEL_37;
    }

    v20 = v91;
    if (v53)
    {
      goto LABEL_53;
    }

LABEL_4:
    v18 = v20 + 1;
    if (v18 == v86)
    {

      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}