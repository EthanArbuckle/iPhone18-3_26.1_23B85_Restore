Swift::Void __swiftcall CommunicationSafetySettings.viewDidLoad()()
{
  v1 = v0;
  v2 = (sub_1488(&qword_8118, &qword_1BB8) - 8);
  v3 = *(*v2 + 64);
  v4 = (__chkstk_darwin)();
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v27 - v7;
  v27.receiver = v0;
  v27.super_class = CommunicationSafetySettings;
  objc_msgSendSuper2(&v27, "viewDidLoad");
  sub_1988();
  sub_1978();
  v9 = sub_1968();
  sub_14D0();
  v10 = sub_1998();
  v11 = &v8[v2[11]];
  *v11 = v10;
  v11[1] = v9;
  sub_1528(v8, v6);
  v12 = objc_allocWithZone(sub_1488(&qword_8128, &qword_1BC0));
  v13 = sub_19A8();
  sub_1920(0, &qword_8130, NSBundle_ptr);
  v14 = sub_19D8();
  v15 = sub_19B8();
  v16 = [v14 localizedStringForKey:v15 value:0 table:0];

  if (!v16)
  {
    sub_19C8();
    v16 = sub_19B8();
  }

  [v1 setTitle:v16];

  v17 = [v13 view];
  if (v17)
  {
    v18 = v17;
    v19 = [v1 view];
    if (v19)
    {
      v20 = v19;
      [v19 addSubview:v18];

      v21 = [v1 view];
      if (v21)
      {
        v22 = v21;
        [v21 bounds];
        v24 = v23;
        v26 = v25;

        [v18 setFrame:{0.0, 0.0, v24, v26}];
        [v18 setAutoresizingMask:18];
        [v1 addChildViewController:v13];
        [v13 didMoveToParentViewController:v1];

        sub_1598(v8);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1598(v8);
  }
}

uint64_t sub_1488(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_14D0()
{
  result = qword_8120;
  if (!qword_8120)
  {
    sub_1978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8120);
  }

  return result;
}

uint64_t sub_1528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1488(&qword_8118, &qword_1BB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1598(uint64_t a1)
{
  v2 = sub_1488(&qword_8118, &qword_1BB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void __swiftcall CommunicationSafetySettings.init(nibName:bundle:)(CommunicationSafetySettings *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_19B8();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

id CommunicationSafetySettings.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_19B8();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = CommunicationSafetySettings;
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id CommunicationSafetySettings.init(coder:)(void *a1)
{
  v4.super_class = CommunicationSafetySettings;
  v2 = objc_msgSendSuper2(&v4, "initWithCoder:", a1);

  if (v2)
  {
  }

  return v2;
}

uint64_t sub_1920(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}